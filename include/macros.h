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

#define ABSF(x) ((x) < 0.0f ? -(x) : (x))
#define ABSFR(x) (-(x) < 0.0f ? (x) : -(x))
#define ABS(x) ((x) < 0 ? -(x) : (x))
#define ABSR(x) (-(x) < 0 ? (x) : -(x))

#define HW_REG(reg, type) *(volatile type *)(uintptr_t)(reg | 0xa0000000)

#define ALIGN16(x) (((x) + 0xF) & -0x10)
#define ALIGN8(x) (((x) + 7) & -8)
#define ALIGN4(x) (((x) + 3) & -4)

// makes it easier to move all the prototypes and externs to the top of the file
#define IN_FILE

#endif
