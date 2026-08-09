/* Internal interfaces of the PC platform layer.
 *
 * Nothing in the game includes this file. It exists so the pieces of the
 * libultra replacement under src/pc/ can talk to each other and to the host
 * backend without exporting anything the game could accidentally depend on.
 *
 * Layering:
 *
 *     game code  ->  libultra API (os*)  ->  pc_* internals  ->  backend
 *
 * The backend is the only part that knows about SDL. See pc_backend.h.
 */
#ifndef PC_PLATFORM_H
#define PC_PLATFORM_H

#include <ultra64.h>

/* -------------------------------------------------------------------------
 * Clock
 *
 * The N64 count register ticks at OS_CPU_COUNTER = 46,875,000 Hz (the 62.5 MHz
 * system clock * 3/4). osGetCount/osGetTime are the game's only notion of time,
 * and OS_CYCLES_TO_USEC in <PR/os_convert.h> assumes exactly that rate, so the
 * host monotonic clock is scaled into it rather than the other way round.
 * ------------------------------------------------------------------------- */
#define PC_COUNTER_HZ 46875000u

/* Free-running 64-bit count since osInitialize, in count-register units. */
u64 pc_count64(void);

/* -------------------------------------------------------------------------
 * Scheduler
 * ------------------------------------------------------------------------- */

/* libultra's own internal names, kept because src/main/fault.c already
 * declares __osGetActiveQueue() and walks the list through OSThread::tlnext. */
extern OSThread *__osRunningThread;
extern OSThread *__osActiveQueue;
extern OSThread *__osRunQueue;

/* Sentinel terminating every thread queue, priority -1 so an ordered insert
 * always finds a stopping point without a NULL test. Same trick, same name and
 * same layout as libultra's, because OSMesgQueue::mtqueue is compared against
 * it in src/pc/os_message.c and the two must agree. */
extern struct __osThreadTail {
    OSThread *next;
    OSPri priority;
} __osThreadTail;

void __osEnqueueThread(OSThread **queue, OSThread *t);
void __osDequeueThread(OSThread **queue, OSThread *t);
OSThread *__osPopThread(OSThread **queue);

/* Block the running thread on *queue and give the CPU up. Returns when the
 * thread is made runnable again. */
void pc_block_on(OSThread **queue);

/* Give the CPU to the highest-priority runnable thread, keeping the caller
 * runnable. No-op if the caller is still the highest priority. */
void pc_yield(void);

/* Make a waiting thread runnable. Does not switch; the caller decides. */
void pc_make_runnable(OSThread *t);

/* True while the platform layer is running host-event delivery, i.e. the
 * cooperative stand-in for "in an interrupt handler". Sends from here must
 * never context-switch, exactly as on N64 where the dispatch happens on the
 * way out of the exception handler rather than inside it. */
extern int pc_in_event_delivery;

/* Called from the idle path when nothing is runnable: pumps host events and
 * delivers any that are due. Must eventually make something runnable or the
 * process is wedged, which is the same property the N64 idle thread has. */
void pc_idle(void);

/* Called at the top of every blocking libultra entry point. Cheap. */
void pc_pump_events(void);

/* -------------------------------------------------------------------------
 * Event table (osSetEventMesg)
 * ------------------------------------------------------------------------- */
void pc_event_fire(OSEvent e);

/* -------------------------------------------------------------------------
 * Subsystem init, called in order from osInitialize().
 * ------------------------------------------------------------------------- */
void pc_time_init(void);
void pc_sched_init(void);
void pc_vi_init(void);
void pc_cont_init(void);
void pc_pi_init(void);
void pc_ai_init(void);

/* Per-subsystem host pumping, called from pc_pump_events(). */
void pc_vi_tick(void);
void pc_ai_tick(void);
void pc_pi_tick(void);
void pc_cont_tick(void);

/* -------------------------------------------------------------------------
 * Diagnostics. PC_TRACE=<subsystem list> in the environment turns these on.
 * ------------------------------------------------------------------------- */
extern unsigned pc_trace_mask;
#define PC_TR_DMA  0x01
#define PC_TR_VI   0x02
#define PC_TR_SP   0x04
#define PC_TR_GFX  0x08
#define PC_TR_CONT 0x10
#define PC_TR_AI   0x20
#define PC_TR_SCHED 0x40

void pc_trace(unsigned bit, const char *fmt, ...);

/* One-time "this is a stub" notice, so a stub can never be mistaken for a
 * working implementation at runtime. Prints once per call site. */
#define PC_STUB_ONCE(msg)                                                     \
    do {                                                                      \
        static int said_;                                                     \
        if (!said_) {                                                         \
            said_ = 1;                                                        \
            pc_stub_notice(__FILE__, __LINE__, msg);                          \
        }                                                                     \
    } while (0)

void pc_stub_notice(const char *file, int line, const char *what);

/* -------------------------------------------------------------------------
 * Display list tracing (src/pc/gfx_trace.c)
 * ------------------------------------------------------------------------- */
void pc_gfx_trace_task(OSTask *task);

/* -------------------------------------------------------------------------
 * Cartridge / overlay interception (src/pc/os_pi.c, src/pc/pc_overlay.c)
 * ------------------------------------------------------------------------- */

/* Open baserom.us.z64 (or $KIRBY_ROM). Returns 0 on success. */
int pc_rom_open(void);

/* Read from the cartridge image. Returns bytes read, 0 if no ROM is loaded. */
u32 pc_rom_read(u32 romOffset, void *dst, u32 size);

/* Base pointer of the mapped cartridge image, or NULL. Byte order is exactly
 * the file's, i.e. big-endian; callers wanting scalars must swap. */
const u8 *pc_rom_base(u32 *sizeOut);

/* True if [ram, ram+size) lands inside a resident overlay's code/data image.
 * A DMA into such a range is a MIPS overlay load and must not be performed --
 * see docs/PC_PORT_SURFACE.md, "Overlays cannot be emulated, only
 * intercepted". Returns the overlay index, or -1. */
int pc_overlay_covering(const void *ram, u32 size);

#endif /* PC_PLATFORM_H */
