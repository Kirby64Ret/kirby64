/* LP64 replacement for libreultra's <PR/ultratypes.h>. PC build only.
 *
 * =====================================================================
 * THE BUG THIS FIXES, because it is invisible and it corrupts data.
 * =====================================================================
 *
 * libreultra/include/2.0I/PR/ultratypes.h says
 *
 *     typedef unsigned long   u32;
 *
 * which is correct on MIPS (ILP32) and correct at -m32, and WRONG at -m64,
 * where unsigned long is eight bytes. Every struct libreultra compiles then
 * has doubled fields, and because the game's own headers say
 * `typedef unsigned int u32` the two disagree about the layout of everything
 * they share.
 *
 * It does not fail to compile. It produces data the rest of the build reads
 * at the wrong offsets. The one that surfaced:
 *
 *     osViModeNtscLan1 in libreultra/src/io/vimodentsclan1.c
 *
 *     raw bytes:  02 00 00 00 | 00 00 00 00 | 1E 31 00 00 | 00 00 00 00
 *                 ^ type        ^ padding     ^ ctrl        ^ high half
 *
 *     read through include/PR/os_vi.h: ctrl = 0, width = 0x311E
 *
 * so src/pc/os_vi.c reported the display as 12574 pixels wide and every VI
 * register the port might program was one field out. That is a silent,
 * plausible-looking wrong answer of exactly the kind a port cannot afford.
 *
 * WHY IT IS FIXED HERE AND NOT THERE. libreultra is a git submodule; a change
 * inside it does not travel with this repository, and the file is also read by
 * the MATCHING build, where `unsigned long` is right and must stay. This
 * header is force-included ahead of it by Makefile.pc's libreultra rules and
 * claims its include guard, so libreultra's own typedefs never run -- for the
 * PC build only, and with no edit to a shared or submodule file.
 */
#ifndef _ULTRATYPES_H_
#define _ULTRATYPES_H_

#if defined(_LANGUAGE_C) || defined(_LANGUAGE_C_PLUS_PLUS)

/* The only change from libreultra's list: u32/s32 and their volatile forms
 * are int rather than long, which is what 32 bits means on LP64. Everything
 * else is byte-for-byte the same set. */
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef short s16;
typedef int s32;
typedef long long s64;

typedef volatile unsigned char vu8;
typedef volatile unsigned short vu16;
typedef volatile unsigned int vu32;
typedef volatile unsigned long long vu64;

typedef volatile signed char vs8;
typedef volatile short vs16;
typedef volatile int vs32;
typedef volatile long long vs64;

typedef float f32;
typedef double f64;

/* size_t must be the HOST's here: these translation units include the host's
 * <string.h> and <stdlib.h>, and a narrower one is a hard type conflict. This
 * is the same reasoning as the PORT branch in include/PR/ultratypes.h. */
#if !defined(_SIZE_T) && !defined(_SIZE_T_) && !defined(_SIZE_T_DEF)
#define _SIZE_T
#define _SIZE_T_DEF
#ifdef __SIZE_TYPE__
typedef __SIZE_TYPE__ size_t;
#else
typedef unsigned long size_t;
#endif
#endif

#endif /* _LANGUAGE_C */

#ifndef TRUE
#define TRUE 1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#ifndef NULL
#define NULL 0
#endif

#endif /* _ULTRATYPES_H_ */
