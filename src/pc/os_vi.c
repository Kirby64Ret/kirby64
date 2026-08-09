/* Video interface: a mode, a framebuffer pointer, and a vertical retrace.
 *
 * The VI on N64 is a scanout engine, not a renderer. It owns one register
 * (VI_ORIGIN) pointing at the framebuffer the CRT beam is currently reading,
 * and it raises an interrupt once per field. Everything the game does with it
 * goes through three ideas:
 *
 *   osViSwapBuffer(p)   arm p as the NEXT origin. It is not live yet.
 *   retrace             the arm takes effect; next becomes current.
 *   osViSetEvent(...)   post a message every Nth retrace.
 *
 * src/main/sched.c is built entirely around that. scCheckGfxTaskDefault picks
 * a free framebuffer by asking which two are current and next and taking a
 * third, so osViGetCurrentFramebuffer and osViGetNextFramebuffer have to be
 * genuinely different values at the right times or the scheduler will hand
 * the RDP the buffer being displayed.
 *
 * PACING. The retrace is generated from the same monotonic clock as
 * osGetCount, at 60 Hz for NTSC/MPAL and 50 Hz for PAL, and it is generated
 * in whole frames -- if the host stalls for 100 ms the port fires the retraces
 * it owes rather than trying to catch up in a burst. A burst would let
 * sched.c hand out framebuffers faster than the "renderer" retires them.
 *
 * The mode tables (osViModeNtscLan1, osViModeMpalLan1, osViModeFpalLan1) are
 * NOT defined here: libreultra/src/io/vimode*.c already has the exact
 * register values and Makefile.pc compiles those three files directly. They
 * are pure data and rewriting them by hand would only be a chance to get a
 * burst value wrong.
 */
#include <ultra64.h>
#include <stddef.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

/* VI_CTRL_TYPE field: 0 blank, 2 = RGBA5551, 3 = RGBA8888. */
#define VI_CTRL_TYPE_MASK 0x3

static OSViMode *sMode;
static void *sCurrentFb;
static void *sNextFb;
static u32 sFeatures;
static f32 sYScale = 1.0f;
static u8 sBlack;
static u16 sRetraceCount;

static OSMesgQueue *sEventMq;
static OSMesg sEventMsg;
static u32 sEventInterval = 1;
static u32 sEventCountdown = 1;

static u64 sNextRetraceAt;
static int sViStarted;

static int mode_width(void) {
    if (sMode == NULL) {
        return 320;
    }
    return (int)(sMode->comRegs.width ? sMode->comRegs.width : 320);
}

static int mode_height(void) {
    /* The VI derives the visible line count from vStart; 0x2501FF is the
     * NTSC LAN1 value and yields 240. Rather than decode the register for
     * every mode, take the standard height for the type and let yScale
     * adjust it, which is how the game varies it (sched.c calls
     * osViSetYScale(0.833f) for the PAL letterbox). */
    int h = 240;

    if (sMode != NULL && sMode->type >= OS_VI_PAL_LPN1) {
        h = 288;
    }
    if (sYScale > 0.0f && sYScale < 1.0f) {
        h = (int)(h * sYScale);
    }
    return h;
}

static int mode_bpp(void) {
    if (sMode == NULL) {
        return 16;
    }
    return ((sMode->comRegs.ctrl & VI_CTRL_TYPE_MASK) == 3) ? 32 : 16;
}

static u64 retrace_period(void) {
    /* osTvType: 0 PAL, 1 NTSC, 2 MPAL. */
    return (osTvType == 0) ? (u64)(PC_COUNTER_HZ / 50)
                           : (u64)(PC_COUNTER_HZ / 60);
}

void pc_vi_init(void) {
    if (sViStarted) {
        return;
    }
    sViStarted = 1;
    sNextRetraceAt = pc_count64() + retrace_period();
    pcb_video_init(320, 240);
}

/* One field boundary. Everything the VI does that the game can observe
 * happens here and nowhere else. */
static void retrace(void) {
    sRetraceCount++;

    /* The arm takes effect. Doing this BEFORE presenting matters: the buffer
     * that becomes current is the one the beam will now read. */
    if (sNextFb != NULL) {
        sCurrentFb = sNextFb;
        sNextFb = NULL;
    }

    if (!sBlack) {
        pcb_video_present(sCurrentFb, mode_width(), mode_height(), mode_bpp());
    } else {
        pcb_video_present(NULL, mode_width(), mode_height(), mode_bpp());
    }

    /* osViSetEvent's own mailbox, then the generic OS_EVENT_VI slot. The game
     * uses the former (sched.c: osViSetEvent(&scTaskMQ, (OSMesg)1, 1)); the
     * latter exists because osSetEventMesg(OS_EVENT_VI, ...) is legal and a
     * later-decompiled function may use it. */
    if (sEventMq != NULL) {
        if (--sEventCountdown == 0) {
            int saved = pc_in_event_delivery;

            sEventCountdown = sEventInterval;
            pc_in_event_delivery = 1;
            osSendMesg(sEventMq, sEventMsg, OS_MESG_NOBLOCK);
            pc_in_event_delivery = saved;
        }
    }
    pc_event_fire(OS_EVENT_VI);
}

void pc_vi_tick(void) {
    u64 now;
    int guard = 4;

    if (!sViStarted) {
        return;
    }
    now = pc_count64();
    /* Fire at most a few frames' worth per pump. A host hiccup should cost
     * dropped frames, not a burst that outruns the frame pipeline. */
    while (now >= sNextRetraceAt && guard-- > 0) {
        sNextRetraceAt += retrace_period();
        retrace();
    }
    if (now >= sNextRetraceAt) {
        sNextRetraceAt = now + retrace_period();
    }
}

/* --------------------------------------------------------------- the API */

/* On N64 this spawns a priority-254 thread that owns the VI and timer
 * interrupts. Here the retrace is generated inside pc_pump_events() on
 * whatever thread happens to call into the OS, which removes a context switch
 * per frame and one more thread from the scheduler. The observable behaviour
 * -- a message arriving on the registered queue once per field -- is the
 * same, and that is all the game can see. */
void osCreateViManager(OSPri pri) {
    (void)pri;
    pc_vi_init();
}

void osViSetMode(OSViMode *mode) {
    sMode = mode;
    if (mode != NULL) {
        pc_trace(PC_TR_VI, "[vi] mode type=%d width=%d ctrl=%08x\n",
                 (int)mode->type, (int)mode->comRegs.width,
                 (unsigned)mode->comRegs.ctrl);
    }
}

void osViSetEvent(OSMesgQueue *mq, OSMesg msg, u32 retraceCount) {
    sEventMq = mq;
    sEventMsg = msg;
    sEventInterval = retraceCount ? retraceCount : 1;
    sEventCountdown = sEventInterval;
}

void osViSwapBuffer(void *vaddr) {
    sNextFb = vaddr;
}

void osViBlack(u8 active) {
    sBlack = active;
}

void osViSetYScale(f32 scale) {
    sYScale = scale;
}

void osViSetXScale(f32 scale) {
    (void)scale;
}

void osViSetSpecialFeatures(u32 func) {
    /* Gamma, dither, divot, antialias. All of these are properties of the
     * N64's video filter, which sits after the framebuffer the port is
     * presenting; there is nothing to apply them to until a renderer exists.
     * Recorded so a renderer can read them back. */
    sFeatures = func;
}

void *osViGetCurrentFramebuffer(void) {
    return sCurrentFb;
}

void *osViGetNextFramebuffer(void) {
    /* Before the first swap both are NULL, which is what the hardware reports
     * too, and sched.c handles it (it tests each candidate against both). */
    return (sNextFb != NULL) ? sNextFb : sCurrentFb;
}

u32 osViGetCurrentMode(void) {
    return (sMode != NULL) ? sMode->type : 0;
}

u32 osViGetCurrentLine(void) {
    /* Which scanline the beam is on. Derived from where we are between
     * retraces, so code that polls it to avoid tearing sees it advance. */
    u64 per = retrace_period();
    u64 left = (sNextRetraceAt > pc_count64()) ? sNextRetraceAt - pc_count64()
                                               : 0;
    u32 h = (u32)mode_height();

    if (per == 0) {
        return 0;
    }
    return (u32)(h - (left * h) / per);
}

u32 osViGetCurrentField(void) {
    return (u32)(sRetraceCount & 1);
}
