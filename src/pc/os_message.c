/* Message queues and the event table.
 *
 * These are the synchronisation backbone: every other subsystem here signals
 * completion by posting to a queue, and the game's threads spend nearly all
 * their time blocked in osRecvMesg. src/main/sched.c's whole main loop is one
 * osRecvMesg on scTaskMQ demultiplexing VI retrace (1), SP done (2), DP done
 * (3) and pre-NMI (99), so if these semantics are wrong nothing else can be
 * right.
 *
 * The implementation is deliberately a direct transcription of libultra's,
 * because the game depends on details that a "reasonable" queue would get
 * differently:
 *
 *   * OSMesgQueue is the GAME's memory, statically allocated in its bss, and
 *     its layout is fixed by <PR/os_message.h>. There is no room for a host
 *     mutex or condvar in it, and no place to put a side table keyed by queue
 *     address that would survive the game memset-ing its own bss. Everything
 *     must live in the six fields that are already there.
 *   * The ring is (first, validCount) over a caller-supplied msg[] of
 *     msgCount entries. MQ_IS_EMPTY/MQ_IS_FULL in the header read those
 *     fields directly, and game code uses them, so they have to stay accurate
 *     at every point where game code can observe them.
 *   * Blocked threads are queued IN THE OSMesgQueue, through mtqueue and
 *     fullqueue, linked by OSThread::next. That is why the thread type is
 *     visible from this header at all.
 *
 * There is no locking because there is no preemption -- see the design note
 * at the top of src/pc/os_thread.c.
 */
#include <ultra64.h>
#include <stddef.h>

#include "pc/pc_platform.h"

/* ------------------------------------------------------------------ queues */

void osCreateMesgQueue(OSMesgQueue *mq, OSMesg *msgBuf, s32 count) {
    mq->mtqueue = (OSThread *)&__osThreadTail;
    mq->fullqueue = (OSThread *)&__osThreadTail;
    mq->validCount = 0;
    mq->first = 0;
    mq->msgCount = count;
    mq->msg = msgBuf;
}

s32 osSendMesg(OSMesgQueue *mq, OSMesg msg, s32 flag) {
    s32 slot;

    pc_pump_events();

    while (MQ_IS_FULL(mq)) {
        if (flag == OS_MESG_NOBLOCK) {
            return -1;
        }
        /* A full queue is rare in this game -- every queue it creates is
         * sized for its worst case -- but osSendMesg(OS_MESG_BLOCK) on a full
         * queue must park the sender rather than drop the message. */
        pc_block_on(&mq->fullqueue);
    }

    slot = (mq->first + mq->validCount) % mq->msgCount;
    mq->msg[slot] = msg;
    mq->validCount++;

    /* Wake exactly one receiver, and hand it the CPU if it outranks us. On
     * N64 this is __osEnqueueThread + a conditional __osDispatchThread; the
     * conditional matters, because a lower-priority receiver must NOT run
     * until the sender blocks. */
    if (mq->mtqueue != (OSThread *)&__osThreadTail) {
        OSThread *t = __osPopThread(&mq->mtqueue);
        pc_make_runnable(t);
        if (!pc_in_event_delivery) {
            pc_yield();
        }
    }
    return 0;
}

s32 osJamMesg(OSMesgQueue *mq, OSMesg msg, s32 flag) {
    /* Same as osSendMesg but pushes onto the FRONT. Unused by Kirby 64 today;
     * provided because the header declares it and omitting it would leave a
     * silent hole if a later decompiled function starts calling it. */
    pc_pump_events();

    while (MQ_IS_FULL(mq)) {
        if (flag == OS_MESG_NOBLOCK) {
            return -1;
        }
        pc_block_on(&mq->fullqueue);
    }

    mq->first = (mq->first + mq->msgCount - 1) % mq->msgCount;
    mq->msg[mq->first] = msg;
    mq->validCount++;

    if (mq->mtqueue != (OSThread *)&__osThreadTail) {
        OSThread *t = __osPopThread(&mq->mtqueue);
        pc_make_runnable(t);
        if (!pc_in_event_delivery) {
            pc_yield();
        }
    }
    return 0;
}

s32 osRecvMesg(OSMesgQueue *mq, OSMesg *msg, s32 flag) {
    pc_pump_events();

    while (MQ_IS_EMPTY(mq)) {
        if (flag == OS_MESG_NOBLOCK) {
            return -1;
        }
        pc_block_on(&mq->mtqueue);
    }

    if (msg != NULL) {
        *msg = mq->msg[mq->first];
    }
    mq->first = (mq->first + 1) % mq->msgCount;
    mq->validCount--;

    if (mq->fullqueue != (OSThread *)&__osThreadTail) {
        OSThread *t = __osPopThread(&mq->fullqueue);
        pc_make_runnable(t);
        if (!pc_in_event_delivery) {
            pc_yield();
        }
    }
    return 0;
}

/* ------------------------------------------------------------------ events */

/* One mailbox per hardware event. The RCP interrupt handlers on N64 post here;
 * on PC the corresponding subsystem in src/pc/ does, at the point where the
 * work it stands in for would have completed. */
typedef struct {
    OSMesgQueue *mq;
    OSMesg msg;
} PCEventSlot;

static PCEventSlot sEvents[OS_NUM_EVENTS];

void osSetEventMesg(OSEvent e, OSMesgQueue *mq, OSMesg msg) {
    if ((u32)e >= OS_NUM_EVENTS) {
        return;
    }
    sEvents[e].mq = mq;
    sEvents[e].msg = msg;
}

/* Post an event's message if anyone registered for it.
 *
 * Always OS_MESG_NOBLOCK: this stands in for an interrupt handler, and an
 * interrupt handler cannot block. Dropping the message when the queue is full
 * is exactly what the hardware path does, and the game is written to tolerate
 * it -- a missed retrace message costs a frame, it does not deadlock. */
void pc_event_fire(OSEvent e) {
    int saved;

    if ((u32)e >= OS_NUM_EVENTS || sEvents[e].mq == NULL) {
        return;
    }
    saved = pc_in_event_delivery;
    pc_in_event_delivery = 1;
    osSendMesg(sEvents[e].mq, sEvents[e].msg, OS_MESG_NOBLOCK);
    pc_in_event_delivery = saved;
}
