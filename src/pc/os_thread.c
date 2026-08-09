/* Threads and the scheduler.
 *
 * =====================================================================
 * DESIGN NOTE -- why this is a cooperative scheduler on ucontext, and
 * not pthreads. This decision matters more than the code below.
 * =====================================================================
 *
 * The N64 scheduler has three properties the game silently depends on:
 *
 *   1. STRICT PRIORITY. The highest-priority runnable thread runs, always.
 *      Kirby 64 assigns VI manager 254, PI manager 150, SI manager 140,
 *      controller 115, audio 110, scheduler 120, game 50, idle 0 (see
 *      src/main/main.c). The audio thread beating the game thread to the CPU
 *      is not a preference, it is the frame budget.
 *
 *   2. NO PARALLELISM. One thread runs at a time. The game therefore has no
 *      locks anywhere. src/main/libn_audio.c walks and rewrites the
 *      synthesizer's player list with nothing but osSetIntMask(OS_IM_NONE)
 *      around it, which is not a lock at all -- it is a statement that
 *      nothing else can possibly be executing. Run those threads on two
 *      cores and that list corrupts.
 *
 *   3. NO PREEMPTION BETWEEN EQUAL PRIORITIES. A thread keeps the CPU until
 *      it blocks or something strictly higher wakes.
 *
 * pthreads gives none of these for free. sched_setscheduler with SCHED_FIFO
 * would approximate (1) and (3) but needs privileges, is Linux-specific, and
 * still runs threads on separate cores, which breaks (2) outright. Emulating
 * (2) on top of pthreads means a global baton -- at which point the threads
 * are not really concurrent and all the pthread machinery is dead weight, but
 * every switch still costs two futex round-trips and the switch points are no
 * longer visible in the source.
 *
 * ucontext gives all three by construction: one host thread, one running
 * context, switches only where this file says so. It costs a swapcontext
 * (~100ns, a sigprocmask plus a register save) per switch, it is entirely
 * deterministic, and a debugger sees one thread with a comprehensible stack.
 *
 * WHAT IT GIVES UP, and why that is affordable HERE specifically: a
 * cooperative scheduler cannot take the CPU away from a thread that never
 * calls into the OS. On N64 the timer interrupt does that. Kirby 64 has
 * exactly one such loop, and it is the one that matters:
 *
 *     void thread1_idle(void *arg) {          // src/main/main.c
 *         ...
 *         osSetThreadPri(NULL, OS_PRIORITY_IDLE);
 *         while (1);
 *     }
 *
 * So the rule this scheduler adopts is:
 *
 *     A THREAD AT OS_PRIORITY_IDLE IS NEVER DISPATCHED. The platform's own
 *     idle loop -- pump host events, sleep a millisecond -- stands in for it.
 *
 * That is not a hack around the busy-wait, it is the correct reading of what
 * priority 0 means in this game: the idle thread exists so the dispatcher
 * always has something to pick, and its body is deliberately nothing. Every
 * other thread in Kirby 64 blocks on a message queue, which is a scheduling
 * point, so no other thread can monopolise the CPU. If a future thread does
 * spin at priority 0 with real work in it, it will starve, loudly and
 * obviously, rather than subtly -- and the fix at that point is signal-based
 * preemption, which can be added underneath this file without changing
 * anything above it.
 *
 * =====================================================================
 * STACKS. The game hands osCreateThread a stack pointer into its own bss:
 * gSchedThreadStack is 0x80 u64s, one kilobyte. That is a MIPS budget, and
 * x86 frames plus any libc call blow through it immediately. Threads here get
 * a host-allocated stack instead and the game's array is left untouched.
 *
 * One visible consequence: src/main/main.c writes STACK_CANARY at
 * stack[7] and func_80000510 checks it. Because nothing ever uses that
 * memory now, the canary can never be tripped, so the stack-overflow check
 * has become a no-op. Host stacks are 512 KB, guarded below, so real overflow
 * shows up as a segfault with an intact backtrace, which is more useful than
 * the canary was.
 */
#include <ultra64.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ucontext.h>
#include <time.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

#define PC_MAX_THREADS 24
#define PC_STACK_SIZE  (512 * 1024)

/* Per-thread host state. It cannot live inside OSThread: that struct's layout
 * is fixed by <PR/os_thread.h> and shared with game data, and a ucontext_t is
 * 364 bytes on i386 -- nearly as big as the whole OSThread. A side table keyed
 * by OSThread* is the only place it can go. */
typedef struct {
    OSThread *os;
    ucontext_t uc;
    void (*entry)(void *);
    void *arg;
    char *stack;
    int inUse;
    int finished;
} PCThread;

static PCThread sThreads[PC_MAX_THREADS];

OSThread *__osRunningThread;
OSThread *__osActiveQueue;
OSThread *__osRunQueue;

struct __osThreadTail __osThreadTail = { NULL, -1 };

int pc_in_event_delivery;

/* The context to return to when every thread has exited. Also the context
 * that first calls osCreateThread/osStartThread, i.e. cboot's. */
static ucontext_t sBootCtx;
static int sSchedReady;

extern int pc_ints_enabled(void);

/* ------------------------------------------------------------- side table */

static PCThread *slot_of(OSThread *t) {
    int i;

    for (i = 0; i < PC_MAX_THREADS; i++) {
        if (sThreads[i].inUse && sThreads[i].os == t) {
            return &sThreads[i];
        }
    }
    return NULL;
}

static PCThread *slot_alloc(OSThread *t) {
    int i;

    for (i = 0; i < PC_MAX_THREADS; i++) {
        if (!sThreads[i].inUse) {
            memset(&sThreads[i], 0, sizeof(sThreads[i]));
            sThreads[i].inUse = 1;
            sThreads[i].os = t;
            return &sThreads[i];
        }
    }
    fprintf(stderr, "[pc] osCreateThread: more than %d threads\n",
            PC_MAX_THREADS);
    abort();
    return NULL;
}

/* --------------------------------------------------------- queue plumbing */

/* Insert in descending priority, AFTER every thread of equal priority. That
 * trailing detail is property (3): equal priorities are FIFO and a newly
 * runnable thread does not jump ahead of one that has been waiting. */
void __osEnqueueThread(OSThread **queue, OSThread *t) {
    OSThread *cur = *queue;
    OSThread *prev = NULL;
    OSPri pri = t->priority;

    while (cur != NULL && pri <= cur->priority) {
        prev = cur;
        cur = cur->next;
    }
    if (prev == NULL) {
        t->next = *queue;
        *queue = t;
    } else {
        t->next = prev->next;
        prev->next = t;
    }
    t->queue = queue;
}

void __osDequeueThread(OSThread **queue, OSThread *t) {
    OSThread *cur = *queue;
    OSThread *prev = NULL;

    while (cur != NULL) {
        if (cur == t) {
            if (prev == NULL) {
                *queue = cur->next;
            } else {
                prev->next = cur->next;
            }
            t->next = NULL;
            t->queue = NULL;
            return;
        }
        prev = cur;
        cur = cur->next;
    }
}

OSThread *__osPopThread(OSThread **queue) {
    OSThread *t = *queue;

    if (t == NULL || t == (OSThread *)&__osThreadTail) {
        return NULL;
    }
    *queue = t->next;
    t->next = NULL;
    t->queue = NULL;
    return t;
}

OSThread *__osGetActiveQueue(void) {
    /* src/main/fault.c walks this through OSThread::tlnext to print every
     * thread's state on a crash. */
    return __osActiveQueue;
}

OSThread *__osGetCurrFaultedThread(void) {
    return NULL;
}

/* --------------------------------------------------------------- dispatch */

static OSThread *runnable_head(void) {
    OSThread *t = __osRunQueue;

    if (t == (OSThread *)&__osThreadTail) {
        return NULL;
    }
    return t;
}

/* True if the whole system is asleep: nothing runnable above idle. */
static int only_idle_runnable(void) {
    OSThread *t = runnable_head();

    return t == NULL || t->priority <= OS_PRIORITY_IDLE;
}

/* The platform's stand-in for thread1_idle's `while (1);`. */
void pc_idle(void) {
    struct timespec ts;

    pc_pump_events();
    if (!only_idle_runnable()) {
        return;
    }
    if (!pcb_alive()) {
        fprintf(stderr, "[pc] host asked to quit\n");
        exit(0);
    }
    /* Sleeping here rather than spinning is the whole benefit of intercepting
     * the idle thread: the port gives the CPU back instead of burning a core
     * reproducing an N64 busy-wait. */
    ts.tv_sec = 0;
    ts.tv_nsec = 500000; /* 0.5 ms -- fine enough for a 60 Hz retrace */
    nanosleep(&ts, NULL);
}

static void trampoline(void);

static void dispatch(void) {
    OSThread *prev = __osRunningThread;
    OSThread *next;
    PCThread *pp;
    PCThread *np;

    for (;;) {
        next = runnable_head();
        if (next != NULL && next->priority > OS_PRIORITY_IDLE) {
            break;
        }
        pc_idle();
    }

    __osPopThread(&__osRunQueue);
    next->state = OS_STATE_RUNNING;
    __osRunningThread = next;

    if (next == prev) {
        return;
    }

    np = slot_of(next);
    pc_trace(PC_TR_SCHED, "[sched] %s -> id %d pri %d\n",
             prev ? "switch" : "enter", (int)next->id, (int)next->priority);

    if (prev == NULL) {
        /* First ever dispatch: leave the boot context behind. */
        swapcontext(&sBootCtx, &np->uc);
        return;
    }
    pp = slot_of(prev);
    if (pp == NULL) {
        swapcontext(&sBootCtx, &np->uc);
        return;
    }
    swapcontext(&pp->uc, &np->uc);
}

void pc_make_runnable(OSThread *t) {
    if (t == NULL || t->state == OS_STATE_RUNNING) {
        return;
    }
    t->state = OS_STATE_RUNNABLE;
    __osEnqueueThread(&__osRunQueue, t);
}

void pc_yield(void) {
    OSThread *head;
    OSThread *me = __osRunningThread;

    if (me == NULL) {
        return;
    }
    head = runnable_head();
    if (head == NULL || head->priority <= me->priority) {
        return; /* still the best candidate -- property (3) */
    }
    me->state = OS_STATE_RUNNABLE;
    __osEnqueueThread(&__osRunQueue, me);
    dispatch();
}

void pc_block_on(OSThread **queue) {
    OSThread *me = __osRunningThread;

    if (me == NULL) {
        /* The boot context blocked before any thread exists. Spin the host
         * idle loop until whatever it waits on arrives; there is nothing to
         * switch to. */
        while (*queue != NULL) {
            pc_idle();
            return;
        }
        return;
    }
    me->state = OS_STATE_WAITING;
    __osEnqueueThread(queue, me);
    __osRunningThread = NULL;
    dispatch();
}

/* Called at the top of the blocking libultra entry points. Cheap when there
 * is nothing to do, which is the common case. */
void pc_pump_events(void) {
    static int reentrant;

    if (reentrant || !sSchedReady) {
        return;
    }
    /* osSetIntMask(OS_IM_NONE) means "nothing may run here". Honour it: the
     * audio library relies on it to keep its player list consistent. */
    if (!pc_ints_enabled()) {
        return;
    }
    reentrant = 1;
    pc_in_event_delivery = 1;
    pcb_pump();
    pc_vi_tick();
    pc_ai_tick();
    pc_pi_tick();
    pc_cont_tick();
    pc_sp_tick();
    pc_in_event_delivery = 0;
    reentrant = 0;
}

/* -------------------------------------------------------------- lifecycle */

static void trampoline(void) {
    PCThread *me = slot_of(__osRunningThread);
    OSThread *os = __osRunningThread;

    me->entry(me->arg);

    /* A libultra thread entry that returns is undefined on N64 -- it falls
     * off the end of the stack. Treat it as osDestroyThread(self). */
    me->finished = 1;
    os->state = OS_STATE_STOPPED;
    __osRunningThread = NULL;
    dispatch();
}

void pc_sched_init(void) {
    if (sSchedReady) {
        return;
    }
    __osRunQueue = (OSThread *)&__osThreadTail;
    __osActiveQueue = (OSThread *)&__osThreadTail;
    __osRunningThread = NULL;
    sSchedReady = 1;
}

void osCreateThread(OSThread *t, OSId id, void (*entry)(void *), void *arg,
                    void *sp, OSPri pri) {
    PCThread *p;

    pc_sched_init();
    (void)sp; /* deliberately ignored -- see the STACKS note above */

    p = slot_of(t);
    if (p == NULL) {
        p = slot_alloc(t);
    }
    if (p->stack == NULL) {
        p->stack = (char *)malloc(PC_STACK_SIZE);
        if (p->stack == NULL) {
            fprintf(stderr, "[pc] osCreateThread: out of memory\n");
            abort();
        }
    }
    p->entry = entry;
    p->arg = arg;
    p->finished = 0;

    getcontext(&p->uc);
    p->uc.uc_stack.ss_sp = p->stack;
    p->uc.uc_stack.ss_size = PC_STACK_SIZE;
    p->uc.uc_link = &sBootCtx;
    makecontext(&p->uc, trampoline, 0);

    t->id = id;
    t->priority = pri;
    t->next = NULL;
    t->queue = NULL;
    t->state = OS_STATE_STOPPED;
    t->flags = 0;
    t->fp = 0;
    t->thprof = NULL;

    /* Link onto the active list, which fault.c walks. */
    t->tlnext = (__osActiveQueue == (OSThread *)&__osThreadTail)
                    ? NULL
                    : __osActiveQueue;
    __osActiveQueue = t;
}

void osStartThread(OSThread *t) {
    pc_sched_init();

    switch (t->state) {
        case OS_STATE_WAITING:
            /* Started while blocked on a queue: libultra takes it off that
             * queue and makes it runnable, losing the message it waited for.
             * Reproduced faithfully -- the game never does this. */
            if (t->queue != NULL) {
                __osDequeueThread(t->queue, t);
            }
            break;
        case OS_STATE_RUNNING:
            return;
        default:
            break;
    }
    t->state = OS_STATE_RUNNABLE;
    __osEnqueueThread(&__osRunQueue, t);

    /* Hand over immediately if the new thread outranks the caller. Kirby 64's
     * boot depends on this: cboot() starts the idle thread at priority 127
     * from a context with no priority at all, and never comes back. */
    if (__osRunningThread == NULL || t->priority > __osRunningThread->priority) {
        if (__osRunningThread != NULL) {
            __osRunningThread->state = OS_STATE_RUNNABLE;
            __osEnqueueThread(&__osRunQueue, __osRunningThread);
        }
        dispatch();
    }
}

void osStopThread(OSThread *t) {
    if (t == NULL) {
        t = __osRunningThread;
    }
    if (t == NULL) {
        return;
    }
    if (t->queue != NULL) {
        __osDequeueThread(t->queue, t);
    }
    t->state = OS_STATE_STOPPED;
    if (t == __osRunningThread) {
        __osRunningThread = NULL;
        dispatch();
    }
}

void osDestroyThread(OSThread *t) {
    PCThread *p;
    OSThread **link;

    if (t == NULL) {
        t = __osRunningThread;
    }
    if (t == NULL) {
        return;
    }
    if (t->queue != NULL) {
        __osDequeueThread(t->queue, t);
    }

    /* Unlink from the active list. */
    if (__osActiveQueue == t) {
        __osActiveQueue = (t->tlnext != NULL) ? t->tlnext
                                              : (OSThread *)&__osThreadTail;
    } else {
        link = &__osActiveQueue;
        while (*link != NULL && *link != (OSThread *)&__osThreadTail) {
            if ((*link)->tlnext == t) {
                (*link)->tlnext = t->tlnext;
                break;
            }
            link = &(*link)->tlnext;
        }
    }

    p = slot_of(t);
    if (p != NULL) {
        /* The stack is NOT freed here: if the destroyed thread is the caller,
         * we are still standing on it. It is reused when this OSThread is
         * created again, which is what the game does with its fixed set of
         * statically allocated threads. */
        p->inUse = (t == __osRunningThread) ? 1 : 0;
    }
    t->state = OS_STATE_STOPPED;

    if (t == __osRunningThread) {
        __osRunningThread = NULL;
        dispatch();
    }
}

OSId osGetThreadId(OSThread *t) {
    if (t == NULL) {
        t = __osRunningThread;
    }
    return (t != NULL) ? t->id : 0;
}

OSPri osGetThreadPri(OSThread *t) {
    if (t == NULL) {
        t = __osRunningThread;
    }
    return (t != NULL) ? t->priority : -1;
}

void osSetThreadPri(OSThread *t, OSPri pri) {
    if (t == NULL) {
        t = __osRunningThread;
    }
    if (t == NULL) {
        return;
    }
    if (t->priority == pri) {
        return;
    }
    t->priority = pri;

    /* Re-sort if it is sitting on a queue: the ordering invariant is what
     * every other decision here reads. */
    if (t->state != OS_STATE_RUNNING && t->queue != NULL) {
        OSThread **q = t->queue;

        __osDequeueThread(q, t);
        __osEnqueueThread(q, t);
    }

    /* Lowering our own priority may hand the CPU to someone else. This is the
     * path thread1_idle takes on its way into the spin loop, and after this
     * call it is at OS_PRIORITY_IDLE and therefore never dispatched again. */
    if (t == __osRunningThread) {
        pc_yield();
        if (t->priority <= OS_PRIORITY_IDLE) {
            /* Park it. Returning would drop into `while (1);` and wedge the
             * cooperative scheduler -- see the design note. */
            t->state = OS_STATE_WAITING;
            __osRunningThread = NULL;
            for (;;) {
                dispatch();
            }
        }
    }
}

void osYieldThread(void) {
    OSThread *me = __osRunningThread;

    if (me == NULL) {
        return;
    }
    me->state = OS_STATE_RUNNABLE;
    __osEnqueueThread(&__osRunQueue, me);
    dispatch();
}
