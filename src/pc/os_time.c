/* Timers, interrupt mask, address translation, and process startup.
 *
 * THE CLOCK. The game's only notion of elapsed time is the R4300 count
 * register, read by osGetCount(), which ticks at OS_CPU_COUNTER = 46,875,000
 * Hz (the 62.5 MHz system clock times 3/4). <PR/os_convert.h> bakes that rate
 * into OS_CYCLES_TO_USEC and friends, and src/main/sched.c compares raw
 * osGetCount() deltas against constants derived from it, so the counter has to
 * be in those units and no other. CLOCK_MONOTONIC is scaled into them here.
 *
 * osGetCount() is 32 bits and wraps every ~91.6 seconds on real hardware. That
 * wrap is not an artefact to be smoothed away: game code does unsigned
 * subtraction of two counts and relies on the wraparound being modulo 2^32.
 * So pc_count64() keeps the full 64-bit value for osGetTime(), and osGetCount()
 * truncates -- which reproduces the hardware exactly.
 */
#include <ultra64.h>
#include <PR/os_convert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

/* ------------------------------------------------------------------ clock */

static struct timespec sEpoch;
static u64 sTimeBias;   /* added by osSetTime */
static int sClockReady;

static u64 raw_ticks(void) {
    struct timespec now;
    u64 sec, nsec;

    clock_gettime(CLOCK_MONOTONIC, &now);
    sec = (u64)(now.tv_sec - sEpoch.tv_sec);
    /* tv_nsec difference can go negative; borrow a second rather than
     * letting the unsigned subtraction wrap. */
    if (now.tv_nsec < sEpoch.tv_nsec) {
        sec--;
        nsec = (u64)(1000000000L + now.tv_nsec - sEpoch.tv_nsec);
    } else {
        nsec = (u64)(now.tv_nsec - sEpoch.tv_nsec);
    }
    /* ticks = sec*46875000 + nsec*46875000/1e9.  46875000/1e9 reduces to
     * 3/64, which is exact in 64-bit integers and avoids any float. */
    return sec * (u64)PC_COUNTER_HZ + (nsec * 3u) / 64u;
}

void pc_time_init(void) {
    if (sClockReady) {
        return;
    }
    clock_gettime(CLOCK_MONOTONIC, &sEpoch);
    sTimeBias = 0;
    sClockReady = 1;
}

u64 pc_count64(void) {
    if (!sClockReady) {
        pc_time_init();
    }
    return raw_ticks() + sTimeBias;
}

u32 osGetCount(void) {
    return (u32)pc_count64();
}

OSTime osGetTime(void) {
    return (OSTime)pc_count64();
}

void osSetTime(OSTime time) {
    /* osSetTime redefines "now" without disturbing the free-running counter,
     * which is what the hardware does: it writes __osCurrentTime and rebases
     * __osBaseCounter, leaving the count register alone. */
    if (!sClockReady) {
        pc_time_init();
    }
    sTimeBias = 0;
    sTimeBias = (u64)time - raw_ticks();
}

/* ------------------------------------------------------------ interrupts */

/* The cooperative scheduler (src/pc/os_thread.c) never preempts, so a mask is
 * not needed to keep a critical section atomic -- it already is. What the mask
 * still has to do is stop host events being delivered inside a section the
 * game believes is uninterruptible: src/main/libn_audio.c wraps synthesizer
 * list surgery in osSetIntMask(OS_IM_NONE) and would be corrupted if an AI or
 * VI event ran a callback in the middle of it.
 *
 * So the mask is real, and pc_pump_events() honours it. */
static OSIntMask sIntMask = OS_IM_ALL;

OSIntMask osGetIntMask(void) {
    return sIntMask;
}

OSIntMask osSetIntMask(OSIntMask mask) {
    OSIntMask old = sIntMask;
    sIntMask = mask;
    return old;
}

int pc_ints_enabled(void) {
    return sIntMask != OS_IM_NONE;
}

/* --------------------------------------------------- address translation */

/* On N64 this strips the KSEG0/KSEG1 base so the result can be handed to an
 * RCP register. On PC there is no separate RCP address space: the "physical"
 * address a caller would program into the VI origin register is just the host
 * pointer, and src/pc/os_vi.c reads it back as a pointer. Identity is
 * therefore the correct mapping, not a shortcut -- the two spaces are the
 * same space.
 *
 * LP64 UPDATE. The old note here said this holds "only while the port stays
 * 32-bit", because the return type was effectively u32 and a host pointer no
 * longer fits. That is now resolved, and it is worth saying how, because the
 * obvious fix -- a handle table mapping 32-bit tokens to pointers -- was not
 * needed:
 *
 *   * the return type is uintptr_t, which include/PR/ultratypes.h widens to
 *     64 bits under PORT, and include/PR/os_convert.h declares it in the same
 *     terms so the two agree. Nothing truncates on the way out;
 *   * every game-visible address fits in 32 bits anyway, because the port
 *     links -no-pie and loads at 0x400000. That is what makes the places game
 *     code DOES truncate (src/main/dma.c casts a void* to u32 before calling
 *     osEPiStartDma) lossless rather than fatal. See tools/pc/link.sh.
 *
 * So identity remains correct at both widths, and the constraint moved from
 * "the port must be 32-bit" to "game-visible memory must live below 4 GiB",
 * which is a linker flag rather than an architecture. */
uintptr_t osVirtualToPhysical(void *addr) {
    return (uintptr_t)addr;
}

void *osPhysicalToVirtual(uintptr_t addr) {
    return (void *)addr;
}

/* ---------------------------------------------------------------- tv type */

/* OS_TV_PAL 0, OS_TV_NTSC 1, OS_TV_MPAL 2. src/main/sched.c switches on this
 * to pick the VI mode and the frame pacing, and src/ovl1/game.c uses it for
 * gameplay timing, so the US ROM's value is the only correct default here.
 * Overridable for testing PAL paths. */
u32 osTvType = 1;

/* --------------------------------------------------------------- tracing */

unsigned pc_trace_mask;

void pc_trace(unsigned bit, const char *fmt, ...) {
    va_list ap;

    if (!(pc_trace_mask & bit)) {
        return;
    }
    va_start(ap, fmt);
    vfprintf(stderr, fmt, ap);
    va_end(ap);
}

void pc_stub_notice(const char *file, int line, const char *what) {
    fprintf(stderr, "[pc] STUB %s:%d -- %s\n", file, line, what);
}

static void trace_from_env(void) {
    static const struct {
        const char *name;
        unsigned bit;
    } kNames[] = {
        { "dma", PC_TR_DMA },   { "vi", PC_TR_VI },
        { "sp", PC_TR_SP },     { "gfx", PC_TR_GFX },
        { "cont", PC_TR_CONT }, { "ai", PC_TR_AI },
        { "sched", PC_TR_SCHED },
    };
    const char *s = getenv("PC_TRACE");
    int i;

    if (s == NULL) {
        return;
    }
    if (strcmp(s, "all") == 0) {
        pc_trace_mask = ~0u;
        return;
    }
    for (i = 0; i < (int)(sizeof(kNames) / sizeof(kNames[0])); i++) {
        if (strstr(s, kNames[i].name) != NULL) {
            pc_trace_mask |= kNames[i].bit;
        }
    }
}

/* ----------------------------------------------------------- osInitialize */

/* On N64 this is called from EntryPoint before anything else exists: it sets
 * up the exception vectors, the timer services, the PI and SI managers'
 * shared state and the active thread queue. The PC equivalent is the same
 * idea -- bring every subsystem up in dependency order -- with the vectors
 * replaced by the host backend. */
void osInitialize(void) {
    static int done;

    if (done) {
        return;
    }
    done = 1;

    trace_from_env();
    pc_check_low_memory();
    pc_time_init();
    pc_mmio_map();
    pc_sched_init();
    pc_pi_init();
    pc_vi_init();
    pc_cont_init();
    pc_ai_init();
}

/* --------------------------------------------------------- osAfterPreNMI */

/* Real libultra implements this as __osSpSetPc(0): after a pre-NMI the RSP is
 * halted and this both proves it and re-points it, returning 0 on success and
 * -1 if the SP is still busy. src/main/sched.c stores the result in
 * scPreNMIState and only treats -1 as "not settled yet".
 *
 * A PC port has no reset button wired to an NMI, so the pre-NMI sequence never
 * begins; returning 0 ("settled") is the state the game would otherwise reach
 * and keeps scPreNMIState out of its retry loop. */
s32 osAfterPreNMI(void) {
    return 0;
}
