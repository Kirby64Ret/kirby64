#ifndef _MACROS_H_
#define _MACROS_H_


#if !defined(__sgi) || defined(__CTX__)
#define GLOBAL_ASM(...)
#endif

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAYLEN(arr) (s32)(sizeof(arr) / sizeof(arr[0]))

#define GLUE(a, b) a ## b
#define GLUE2(a, b) GLUE(a, b)

// Avoid compiler warnings for unused variables
#ifdef __GNUC__
#define UNUSED __attribute__((unused))
#define Unused __attribute__((unused))
#else
#define UNUSED
#define Unused
#endif

// Avoid undefined behaviour for non-returning functions
#ifdef __GNUC__
#define NORETURN __attribute__((noreturn))
#else
#define NORETURN
#endif

// Static assertions
#ifdef __GNUC__
#define STATIC_ASSERT(cond, msg) _Static_assert(cond, msg)
#else
#define STATIC_ASSERT(cond, msg) typedef char GLUE2(static_assertion_failed, __LINE__)[(cond) ? 1 : -1]
#endif

// Align to 8-byte boundary for DMA requirements
#ifdef __GNUC__
#define ALIGNED8 __attribute__((aligned(8)))
#else
#define ALIGNED8
#endif

// Align to 16-byte boundary for audio lib requirements
#ifdef __GNUC__
#define ALIGNED16 __attribute__((aligned(16)))
#else
#define ALIGNED16
#endif

// convert a virtual address to physical.
#define VIRTUAL_TO_PHYSICAL(addr)   ((uintptr_t)(addr) & 0x1FFFFFFF)

// convert a physical address to virtual.
#define PHYSICAL_TO_VIRTUAL(addr)   ((uintptr_t)(addr) | 0x80000000)

// another way of converting virtual to physical
#define VIRTUAL_TO_PHYSICAL2(addr)  ((u8 *)(addr) - 0x80000000U)

#define true TRUE
#define false FALSE

#define SQ(x) ((x) * (x))

#define ABSF(x) ((x) < 0.0f ? -(x) : (x))
#define ABSFR(x) (-(x) < 0.0f ? (x) : -(x))
#define ABS(x) ((x) < 0 ? -(x) : (x))
#define ABSR(x) (-(x) < 0 ? (x) : -(x))

#define HW_REG(reg, type) *(volatile type *)(uintptr_t)(reg | 0xa0000000)

#define ALIGN16(x) (((x) + 0xF) & -0x10)
#define ALIGN8(x) (((x) + 7) & -8)
#define ALIGN4(x) (((x) + 3) & -4)

#define FLOAT_MAX 3.4028234e38f
// #define FLOAT_NEG_MAX -FLOAT_MAX

// makes it easier to move all the prototypes and externs to the top of the file
#define IN_FILE

/* PC_SPIN_YIELD -- make a busy-wait yield, in the port only.
 *
 * The game has several loops of the form
 *
 *     do { } while (func_80020EB4() != 0);      // ovl1_2_2.c
 *
 * that poll a flag another thread clears and CALL NOTHING ELSE. On the N64
 * that is fine: the audio thread is preempted in, clears the flag, and the
 * spin ends. The port runs every N64 thread as a ucontext on one host thread,
 * so a loop that never re-enters the OS never lets anything else run -- no
 * pump, therefore no VI retrace, therefore no other thread, therefore the flag
 * is never cleared. One non-yielding spin freezes the entire port.
 *
 * It presents as a hang with nothing obviously wrong: no missing symbol, no
 * crash, gGameState stuck at its initial value and gtlDrawnFrameCounter at 0.
 * The only way in is a backtrace of the live process.
 *
 * Expands to NOTHING outside the port, so the matching build is untouched.
 * Inside it, pump first and then yield: the pump is what fires the retrace
 * that makes another thread runnable, and yielding without it would just
 * re-dispatch this same thread.
 *
 * This is only correct at a point where the N64 would also have switched --
 * which a busy-wait is, by construction. Do not scatter it into loops that do
 * real work.
 */
#define PC_SPIN_YIELD()

/* OS_RECV_INDEX -- osRecvMesg into a 4-byte local, safely at LP64.
 *
 * osRecvMesg writes a full OSMesg through the pointer it is handed. On the N64
 * OSMesg is a 32-bit void*, so receiving into an s32 and casting the address
 * is exactly right, and the game does it. In the native port OSMesg is 8 bytes
 * and the same code is an 8-byte store into a 4-byte object: it smashes the
 * neighbouring stack slot and reads back only the low half. The port hit this
 * as an immediate segfault in scAddTask on a truncated task pointer.
 *
 * The non-PORT branch expands to the original expression, so the matching
 * build is unaffected. The PORT branch receives into a full-width OSMesg and
 * narrows afterwards.
 *
 * NARROWING IS ONLY SAFE ON A QUEUE THAT CARRIES SMALL INTEGERS. Both current
 * users qualify and it is checked at each: gtlSwitchContext's queue carries
 * context indices, and contpad's D_80048E10 is posted only as `(OSMesg)i` for
 * i in 0..3. For a queue that carries POINTERS -- scTaskMQ, for one -- do not
 * use this; widen the local to OSMesg instead, as scThreadMain does.
 */
#define OS_RECV_INDEX(mq, var, blk) osRecvMesg((mq), (OSMesg*) &(var), (blk))

#endif
