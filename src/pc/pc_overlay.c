/* Overlay residency: the nine bounds symbols, and the registry that lets
 * src/pc/os_pi.c tell an overlay load from an asset read.
 *
 * BACKGROUND, from docs/PC_PORT_SURFACE.md. Kirby 64 is twenty overlays
 * sharing VRAM ranges. src/main/main.c builds one descriptor from linker
 * symbols --
 *
 *     struct Overlay ovl1Def = OVERLAY(ovl1);
 *
 * which expands (include/segments.h) to the nine symbols defined below. The
 * N64 link supplies them from kirby.ld; a native link has no such script, and
 * they were showing up as the "overlay segment bounds" bucket in
 * `make -f Makefile.pc gap`.
 *
 * WHY THEY CANNOT SIMPLY BE ZEROED. src/main/dma.c's dma_overlay_load()
 * computes four sizes from them and does real work with each:
 *
 *     osInvalICache(textStart, textEnd - textStart)
 *     osInvalDCache(dataStart, dataEnd - dataStart)
 *     dma_copy(rom, startAddr, RAMStart, endAddr - startAddr)
 *     bzero(bssStart, bssEnd - bssStart)          <-- writes memory
 *
 * A zeroed set makes every size 0 and the whole function a no-op, which is
 * tempting and wrong: the surface doc's requirement is that the bounds be
 * *self-consistent*, because game code compares addresses against them. A
 * degenerate range answers "no" to every such comparison, and the failure
 * would show up far from here.
 *
 * WHAT THEY ARE INSTEAD. ovl1 gets a resident RAM span of exactly the size
 * the N64 gives it, laid out with the same internal offsets, so every
 * difference between two bounds equals the true N64 value:
 *
 *     N64                      size      role
 *     8009B540  VRAM           0x10      segment pad
 *     8009B550  TEXT_START     0x22E90   MIPS code -- never written here
 *     800BE3E0  TEXT_END = DATA_START
 *     800BE3E0  DATA_START     0x185E0   data + rodata
 *     800D69C0  RODATA_END = BSS_START
 *     800D69C0  BSS_START      0x1F7E0   zeroed by dma_overlay_load
 *     800F61A0  BSS_END
 *
 * (from kirby64.yaml: ovl1 start 0x43790, vram 0x8009B540, bss at 0x800D69C0
 * size 0x1F7E0, next overlay starts at 0x7EC10.)
 *
 * The span is real .bss, so bzero() of the bss part is a legitimate write to
 * memory that belongs to us, and the DATA range is a legitimate destination.
 * Only the TEXT range must never receive cartridge bytes, and it never does:
 * src/pc/os_pi.c refuses the whole overlay span through the registry below.
 *
 * ROM_START and ROM_END are cartridge FILE OFFSETS, not addresses -- dma.c
 * passes ovl->startAddr straight to osEPiStartDma as devAddr. They are
 * emitted as absolute symbols with the ROM's real values, which is exactly
 * what kirby.ld does on the N64 side.
 *
 * ONLY ovl1 IS HERE, and that is a measurement rather than laziness: it is
 * the only overlay whose descriptor is built from linker symbols. The other
 * nineteen live in assembly data that is not decompiled yet, so their bounds
 * cannot be known from C at all today. src/pc/os_pi.c's second test -- refuse
 * any DMA landing in the binary's own text -- is what covers them in the
 * meantime, and it needs no table.
 */
#include <ultra64.h>
#include <stddef.h>

#include "types.h"

#include "pc/pc_platform.h"

/* The nine bounds. Emitted as assembly because C cannot place several
 * separately-named objects at chosen offsets within one allocation, and the
 * offsets are the entire point -- ovl1_TEXT_END and ovl1_DATA_START must be
 * the same address, as they are on N64. */
__asm__(
    "   .section .bss\n"
    "   .balign 16\n"
    "   .globl ovl1_VRAM\n"
    "ovl1_VRAM:\n"
    "   .space 0x10\n"          /* segment pad, 0x43790..0x437A0 */
    "   .globl ovl1_TEXT_START\n"
    "ovl1_TEXT_START:\n"
    "   .space 0x22E90\n"       /* 0x437A0..0x66630 */
    "   .globl ovl1_TEXT_END\n"
    "ovl1_TEXT_END:\n"
    "   .globl ovl1_DATA_START\n"
    "ovl1_DATA_START:\n"
    "   .space 0x185E0\n"       /* 0x66630..0x7EC10, data + rodata */
    "   .globl ovl1_RODATA_END\n"
    "ovl1_RODATA_END:\n"
    "   .globl ovl1_BSS_START\n"
    "ovl1_BSS_START:\n"
    "   .space 0x1F7E0\n"       /* bss_size from kirby64.yaml */
    "   .globl ovl1_BSS_END\n"
    "ovl1_BSS_END:\n"
    "   .space 4\n"
    "   .text\n"
    /* Cartridge file offsets, absolute, exactly as kirby.ld defines them. */
    "   .globl ovl1_ROM_START\n"
    "   .set   ovl1_ROM_START, 0x43790\n"
    "   .globl ovl1_ROM_END\n"
    "   .set   ovl1_ROM_END,   0x7EC10\n");

extern u8 ovl1_VRAM[];
extern u8 ovl1_BSS_END[];
extern u8 ovl1_TEXT_START[];
extern u8 ovl1_TEXT_END[];

/* ------------------------------------------------------------- registry */

typedef struct {
    const u8 *lo;
    const u8 *hi;
    const char *name;
} PCOverlaySpan;

/* Room for all twenty as they are decompiled; only ovl1 can be filled in
 * today. Kept as a table rather than a single test so that adding an overlay
 * later is a data change. */
static PCOverlaySpan sSpans[20];
static int sSpanCount;

static void register_span(const u8 *lo, const u8 *hi, const char *name) {
    if (sSpanCount >= (int)(sizeof(sSpans) / sizeof(sSpans[0]))) {
        return;
    }
    sSpans[sSpanCount].lo = lo;
    sSpans[sSpanCount].hi = hi;
    sSpans[sSpanCount].name = name;
    sSpanCount++;
}

static void ensure_registry(void) {
    if (sSpanCount != 0) {
        return;
    }
    /* The whole ovl1 span, not just its text: a cartridge copy of the data
     * and rodata sections is just as wrong as one of the code. Those bytes
     * are big-endian MIPS-relocated images of tables the native build has
     * already translated into build/pc/data. */
    register_span(ovl1_VRAM, ovl1_BSS_END, "ovl1");
}

/* --------------------------------------------------- the load interception
 *
 * src/main/dma.c's dma_overlay_load() calls this first under #ifdef PORT and
 * returns immediately when it answers 1, which it always does.
 *
 * WHY THE WHOLE FUNCTION AND NOT JUST THE DMA. os_pi.c already refuses the
 * cartridge copy, and that covers three of dma_overlay_load's four steps. The
 * fourth is `bzero(bssStart, bssEnd - bssStart)`, which never goes near the PI
 * -- and it is the one that killed the port. gOverlayTable[1]'s descriptor
 * carries bssStart = &D_801290D0, a genuine port .bss address, and bssEnd =
 * 0x8012eaf0, an N64 VRAM address that nothing relocated because no symbol
 * covers it. Their difference is about 2 GB.
 *
 * Repairing the bounds would not help, because the bzero is not wanted either:
 * an overlay's "bss" in this build is not scratch space, it is converted data
 * that build/pc/data already initialised. Only ovl1 has a dedicated dummy span
 * (above) where zeroing would be harmless, and skipping it there costs
 * nothing.
 *
 * ONE DIVERGENCE, RECORDED. On the N64 reloading an overlay re-zeroes its bss,
 * so an overlay's statics are fresh every time it is swapped in. Here every
 * overlay is resident and keeps its state across loads. Nothing has needed
 * that reset yet; if some overlay turns out to depend on it, this is the
 * function that has to learn which spans are genuinely scratch. */
int pc_overlay_intercept_load(struct Overlay *ovl) {
    if (ovl == NULL) {
        return 1;
    }
    pc_trace(PC_TR_DMA,
             "[dma] SKIP overlay load: rom %p..%p -> ram %p, bss %p..%p\n",
             ovl->startAddr, ovl->endAddr, ovl->RAMStart, ovl->bssStart,
             ovl->bssEnd);
    return 1;
}

int pc_overlay_covering(const void *ram, u32 size) {
    const u8 *a = (const u8 *)ram;
    const u8 *b = a + size;
    int i;

    ensure_registry();
    for (i = 0; i < sSpanCount; i++) {
        if (b > sSpans[i].lo && a < sSpans[i].hi) {
            return i;
        }
    }
    return -1;
}
