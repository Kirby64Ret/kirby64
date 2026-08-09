#ifndef _ULTRA64_TYPES_H_
#define _ULTRA64_TYPES_H_

#ifndef NULL
#define NULL    (void *)0
#endif

#define TRUE 1
#define FALSE 0


#ifndef _LANGUAGE_ASSEMBLY
typedef signed char            s8;
typedef unsigned char          u8;
typedef signed short int       s16;
typedef unsigned short int     u16;
typedef signed int             s32;
typedef unsigned int           u32;
typedef signed long long int   s64;
typedef unsigned long long int u64;

typedef volatile u8   vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8   vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float  f32;
typedef double f64;

#ifdef TARGET_N64
typedef u32 size_t;
typedef s32 ssize_t;
#ifdef PORT
/* The whole LP64 problem for this port was this one typedef.
 *
 * gbi.h is already 64-bit aware -- Gwords holds two uintptr_t, so a display
 * list can carry a real pointer -- but with uintptr_t hardwired to u32 the
 * static display lists in rdp_reset.c and ovl4_1.c stopped compiling at -m64
 * with "initializer element is not constant": casting a 64-bit pointer to a
 * 32-bit integer is not something the linker can resolve, so it is not a
 * constant expression.
 *
 * Widening it here fixes those files with no change to their source, and the
 * N64 build never sees it: PORT is defined only by Makefile.pc, and on MIPS32
 * a pointer is 4 bytes so u32 was right there anyway.
 *
 * __UINTPTR_TYPE__ is provided by GCC and Clang; the fallback covers LP64
 * Unix, which is what this port targets.
 */
#ifdef __UINTPTR_TYPE__
typedef __UINTPTR_TYPE__ uintptr_t;
typedef __INTPTR_TYPE__ intptr_t;
typedef __PTRDIFF_TYPE__ ptrdiff_t;
#else
typedef unsigned long uintptr_t;
typedef long intptr_t;
typedef long ptrdiff_t;
#endif
#else
typedef u32 uintptr_t;
typedef s32 intptr_t;
typedef s32 ptrdiff_t;
#endif
#else
#include <stddef.h>
#endif

#endif // _LANGUAGE_ASSEMBLY

#endif
