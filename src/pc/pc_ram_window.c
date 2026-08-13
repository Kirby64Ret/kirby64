/* Real backing for the game's framebuffers, and a real arena for its heap.
 *
 * These are two halves of one problem: Kirby 64 does arithmetic BETWEEN
 * addresses in high RDRAM, and the native link does not preserve the distances
 * that arithmetic depends on.
 *
 * =====================================================================
 * PART 1 -- THE RAM WINDOW
 * =====================================================================
 *
 * Five symbols in the 0x8012xxxx / 0x803Dxxxx range are the framebuffers, the
 * z-buffer and the heap-top marker. Until now every one of them was a 1024-byte
 * WEAK DATA STUB from tools/pc/gen_stubs.py, because nothing in the tree
 * defines them -- on the N64 they are not objects at all, they are addresses in
 * the linker script.
 *
 * The clear loops that ovl2 and ovl5 have already decompiled write 0x25800
 * bytes through each of them:
 *
 *     do {                                            (src/ovl2/ovl2.c:306)
 *         ((vu16 *) gFrameBuffer)[i] = 1;
 *         ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
 *         i++;
 *     } while (i != 320 * 240);
 *
 * so each pass wrote 150 KB past the end of a 1 KB stub, over whatever .bss
 * followed it, without a fault -- .bss is writable, so the damage is silent and
 * turns up later as impossible-looking corruption somewhere else. That is the
 * same failure the gtl heap had, and it is why this file exists.
 *
 * SIZES ARE NOT ENOUGH; THE DISTANCES ARE THE POINT. Three separate pieces of
 * game code read the gaps between these addresses:
 *
 *     D_80123EC0.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900)
 *     ((vu16 *) D_803D6900)[i + 0x1F80]     -- i.e. D_803D6900 + 0x3F00,
 *                                              which IS D_803DA800
 *     heap = (u8 *) gFrameBuffer - (u8 *) &D_8022FB50
 *
 * Five independently sized .bss objects would satisfy none of those, and the
 * third can even come out NEGATIVE depending on link order. So this is one
 * block laid out at the ROM's own offsets, with each symbol placed where the
 * N64 linker script puts it. Every difference between any two of them is then
 * exactly the hardware value, and code that walks from one to another stays
 * inside memory that belongs to us.
 *
 *     N64 address   offset in block   symbol
 *     8012C000      0x000000          (window base, chosen for alignment)
 *     8012EB00      0x002B00          D_8012EB00   z-buffer + 0x1900
 *     8022FB50      0x103B50          D_8022FB50   heap-top marker
 *     803B6900      0x28A900          gFrameBuffer
 *     803D6900      0x2AA900          D_803D6900
 *     803DA800      0x2AE800          D_803DA800   == D_803D6900 + 0x3F00
 *     80400000      0x2D4000          (end of RDRAM, and of this block)
 *
 * The block ends exactly where 4 MB of RDRAM ends, which is not decoration:
 * the D_803DA800 clear runs to 0x80400000 to the byte, so the last framebuffer
 * fits with nothing to spare, exactly as on hardware.
 *
 * Assembly rather than C for the same reason as the overlay bounds in
 * src/pc/pc_overlay.c: C cannot place several separately-named objects at
 * chosen offsets inside one allocation, and the offsets are the whole point.
 * These override the weak stubs; once they are defined here gen_stubs.py stops
 * emitting stubs for them at all, since it only stubs what nothing defines.
 *
 * WHAT THIS IS NOT. It is not an emulation of RDRAM. Only these five symbols
 * live in the window; every other 0x80xxxxxx address in the game resolves to
 * wherever the native link put its object. Anything else that turns out to do
 * arithmetic across two high-RAM addresses has to be added here, deliberately,
 * with its offset written down.
 */
#include <ultra64.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#include "pc/pc_platform.h"

__asm__(
    "   .section .bss\n"
    "   .balign 64\n"
    "pc_ram_window_base:\n"
    "   .space 0x002B00\n" /* 8012C000 .. 8012EB00 */
    "   .globl D_8012EB00\n"
    "D_8012EB00:\n"
    "   .space 0x101050\n" /* 8012EB00 .. 8022FB50 */
    "   .globl D_8022FB50\n"
    "D_8022FB50:\n"
    "   .space 0x186DB0\n" /* 8022FB50 .. 803B6900 */
    "   .globl gFrameBuffer\n"
    "gFrameBuffer:\n"
    "   .space 0x020000\n" /* 803B6900 .. 803D6900 */
    "   .globl D_803D6900\n"
    "D_803D6900:\n"
    "   .space 0x003F00\n" /* 803D6900 .. 803DA800 */
    "   .globl D_803DA800\n"
    "D_803DA800:\n"
    "   .space 0x025800\n" /* 803DA800 .. 80400000, one full framebuffer */
    "   .globl pc_ram_window_end\n"
    "pc_ram_window_end:\n"
    "   .space 4\n"
    "   .text\n");

/* =====================================================================
 * PART 2 -- THE gtl ARENA
 * =====================================================================
 *
 * src/main/gtl.c's gtlSetupHeap() calls in here under #ifdef PORT. The full
 * reasoning is in the comment at that call site; the short version is that the
 * game derives its dynamic heap from
 *
 *     heapBase = &D_8018EE60
 *     heapSize = (u8 *) gFrameBuffer - heapBase
 *
 * which on N64 is ~2.26 MB of RDRAM sitting on top of the VRAM of overlays
 * that are not currently resident. In this build D_8018EE60 resolves into a
 * live .bss object and every overlay is permanently resident, so both the base
 * and the size are wrong, and mlSetup's first act is to bzero the lot.
 *
 * The substitute is bigger than the N64's heap ON PURPOSE. mlAlloc's overflow
 * path is fatal_printf followed by `while (1);` -- on hardware that is a
 * visible hang with a message, but under a cooperative scheduler it is a loop
 * with no OS call in it, which wedges every other thread too and looks exactly
 * like the bug this whole investigation started from. Making the arena
 * comfortably larger than anything that fits on hardware means that path
 * cannot be reached by a game that ran on a real console.
 *
 * One arena, reused by every scene, because that is what the game does: each
 * gtlCreateScene calls gtlSetupHeap again and starts allocating from the top.
 */
/* 8 MB was the N64-sized guess and it is too small: gtlCreateScene asks for a
 * single 10.5 MB block during ovl6's intro, mlAlloc reports "ml : alloc
 * overflow #65536", and fatal_printf hands control to the crash screen --
 * which then sits in faultWaitButton forever with cfb == NULL, i.e. a black
 * window and a process at 70% CPU. That is exactly what this port did before
 * this line changed.
 *
 * A host port has no reason to be bounded by the console's RAM budget, so give
 * the arena room for the largest scene rather than the console's. 64 MB is
 * still trivial on any machine that can run the renderer. */
#define PC_GTL_ARENA_SIZE (64u * 1024u * 1024u)

static u8 sGtlArena[PC_GTL_ARENA_SIZE];

void pc_gtl_arena(void **startInOut, u32 *sizeInOut) {
    pc_trace(PC_TR_DMA, "[heap] gtl arena: game asked %p+%u, given %p+%u\n",
             *startInOut, (unsigned)*sizeInOut, (void *)sGtlArena,
             (unsigned)PC_GTL_ARENA_SIZE);
    *startInOut = sGtlArena;
    *sizeInOut = PC_GTL_ARENA_SIZE;
}
