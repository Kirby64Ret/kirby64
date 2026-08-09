/* RSP and RDP.
 *
 * =====================================================================
 * THESE ARE STUBS, DELIBERATELY. Read this before assuming otherwise.
 * =====================================================================
 *
 * The game hands osSpTaskLoad an OSTask describing a program for a
 * general-purpose vector coprocessor, together with its data. Two kinds
 * arrive:
 *
 *   M_GFXTASK  the F3DEX2 microcode, plus an F3DEX2 display list. The RSP
 *              transforms and lights vertices, clips them, and emits RDP
 *              primitives into an output FIFO; the RDP then rasterises.
 *   M_AUDTASK  the n_audio microcode, plus an audio command list. The RSP
 *              runs the DMEM mixer -- envelope, resample, reverb, mix.
 *
 * WHAT FINISHING THIS ACTUALLY REQUIRES, so the size of the hole is not
 * understated:
 *
 *   * An F3DEX2 command interpreter. Roughly 40 SP opcodes and 30 RDP ones,
 *     plus the segmented-address resolver every pointer in the list goes
 *     through, plus the matrix stack, the vertex cache, the light structures
 *     and the texture-tile state machine.
 *   * A rasteriser behind it. The RDP's combiner and blender are programmable
 *     and Kirby 64 uses that programmability; mapping the combine modes onto
 *     a modern pipeline is the bulk of the work in every N64 port that has
 *     done it.
 *   * For the audio task, either the same treatment of the n_audio ABI or a
 *     software mixer that consumes the command list directly. This one is
 *     considerably smaller: the ABI is ~15 commands and libreultra's
 *     src/libnaudio already documents each.
 *
 * docs/PC_PORT_SURFACE.md is explicit that this is a separate project and
 * that any estimate counting symbols rather than weighting these three will
 * be wrong. It is right. Nothing here pretends to do the work.
 *
 * WHAT THE STUBS DO INSTEAD, and why it is not nothing:
 *
 *   1. They complete the task. src/main/sched.c is a state machine driven by
 *      SP-done and DP-done messages -- it will not release a framebuffer, run
 *      a client callback, or accept the next task until it sees them. Signal
 *      nothing and the game stops on its first frame with everything after
 *      the renderer untested. Signalling completion keeps every OTHER part of
 *      the port -- scheduler, queues, VI pacing, DMA, controllers -- running
 *      and observable.
 *
 *   2. They TRACE the display list (src/pc/gfx_trace.c). Walking an F3DEX2
 *      list and decoding its commands is a strict subset of interpreting one,
 *      it is the part with no rendering decisions in it, and it is how you
 *      find out what this game's lists actually contain before committing to
 *      a renderer design. PC_TRACE=gfx turns it on.
 *
 * The completion is deferred to the next pump rather than posted inline. That
 * is not politeness: scHandleSPTaskDone can start the next task, and posting
 * from inside osSpTaskStartGo would recurse through the scheduler once per
 * queued task with no bound.
 */
#include <ultra64.h>
#include <stddef.h>
#include <string.h>

#include "pc/pc_platform.h"

static OSTask *sLoadedTask;
static int sSpDonePending;
static int sDpDonePending;
static int sYieldRequested;

void osSpTaskLoad(OSTask *task) {
    sLoadedTask = task;
    if (task == NULL) {
        return;
    }
    pc_trace(PC_TR_SP, "[sp] load type=%u flags=%08x data=%p size=%u\n",
             (unsigned)task->t.type, (unsigned)task->t.flags,
             (void *)task->t.data_ptr, (unsigned)task->t.data_size);
    PC_STUB_ONCE("osSpTaskLoad: no RSP. See the header of src/pc/os_sp.c for "
                 "what a real implementation needs.");
}

void osSpTaskStartGo(OSTask *task) {
    if (task == NULL) {
        task = sLoadedTask;
    }
    if (task == NULL) {
        return;
    }

    if (task->t.type == M_GFXTASK) {
        pc_gfx_trace_task(task);
        /* A graphics task produces RDP work, so both interrupts follow. */
        sSpDonePending = 1;
        sDpDonePending = 1;
    } else {
        sSpDonePending = 1;
    }
    /* The task is reported as fully consumed: yield state cleared, no output
     * left. osSpTaskYielded reads this back. */
    task->t.flags &= ~OS_TASK_YIELDED;
    sYieldRequested = 0;
}

/* Deliver deferred completions. Called from pc_pump_events(). */
void pc_sp_tick(void) {
    if (sSpDonePending) {
        sSpDonePending = 0;
        pc_event_fire(OS_EVENT_SP);
    }
    if (sDpDonePending) {
        sDpDonePending = 0;
        pc_event_fire(OS_EVENT_DP);
    }
}

void osSpTaskYield(void) {
    /* On hardware this sets SP_SET_SIG0, and the microcode notices at its
     * next yield point and writes its state to yield_data_ptr. With no RSP
     * there is no state and nothing to interrupt: the "task" already
     * finished. Recording the request keeps osSpTaskYielded consistent. */
    sYieldRequested = 1;
}

OSYieldResult osSpTaskYielded(OSTask *task) {
    /* Non-zero means "the task yielded and must be resumed"; zero means it
     * ran to completion. Completion is always the truthful answer here. */
    if (task != NULL) {
        task->t.flags &= ~OS_TASK_YIELDED;
    }
    sYieldRequested = 0;
    return 0;
}

u32 osDpGetStatus(void) {
    return 0;
}

void osDpSetStatus(u32 status) {
    (void)status;
}

void osDpGetCounters(u32 *counters) {
    if (counters != NULL) {
        memset(counters, 0, 4 * sizeof(u32));
    }
}

s32 osDpSetNextBuffer(void *addr, u64 size) {
    /* Hands the RDP a buffer of already-assembled RDP commands (the "XBUS" /
     * direct-DP path, used when the SP has written its output somewhere the
     * DP can read). Rasterising it is the same missing rasteriser as above.
     *
     * The DP-done interrupt is still raised, because the caller waits for it. */
    pc_trace(PC_TR_GFX, "[dp] buffer %p size %u\n", addr, (unsigned)size);
    PC_STUB_ONCE("osDpSetNextBuffer: no RDP rasteriser.");
    sDpDonePending = 1;
    return 0;
}
