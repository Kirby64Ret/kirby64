#include <PR/gbi.h>
#include "common.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "main/gtl.h"
#include "main/anim.h"
#include "unk_structs/D_800D79D8.h"

// All the filesystem loading magic happens here
extern u32 **D_800D00C4[];

// not in this file?
extern u32 D_800DFA10[];
extern u32 *D_800DFD90[];


// In this file
void func_800B1FD0(DObj *, u32, f32, u32, f32);
s32 func_800A9B48(s32);
void func_800AA49C(DObj *, s32, f32, u32, f32);
void func_800AACC8(s32 *, s32, s32, f32);
void func_800AA96C(s32 *, u32, s32, f32, f32);
void func_800AAF34(s32, s32, f32);
void func_800AA608(DObj *, s32, f32, u32, f32);
struct CacheLine *func_800A840C(u32, s32);
void func_800A8D64(u32, s32);
u32 *func_800A9250(u32, s32);
void *func_800A9648(u32 *);
void func_800A99E4(s32);
void func_800A9A2C(s32);
void func_800A9D64(s32);

// ovl1_7
void func_800AEE20(struct GObj *, f32);
void func_800AEEB4(struct GObj *, f32);
void func_800AEF0C(struct GObj *, f32, struct GObj *);
void func_800AEFA4(struct GObj *, f32, struct GObj *);
void func_800AEFFC(u16);
void func_800AF09C(u16);
void func_800AF27C(void);
void func_800AF9B8(u16, u8);
void func_800B21FC(AnimCmd ***, f32);
void func_800B2288(AnimCmd ***, f32);
void ohSleep(s32);

extern GObj *D_800DE350[];

// A node in the dynamic-buffer free-list allocator (see func_800A82C0 / func_800A8358).
#ifdef PORT
/* The asset cache's 0x10-byte IN-ARENA block header: { prev, next, size,
 * refcount }. It must stay EXACTLY 16 bytes -- every function here reaches
 * it as `data - 0x10`, and the allocator carves blocks with raw byte
 * arithmetic. With native pointer members the LP64 struct grew to 24 bytes
 * and unk8/unkC landed at +16/+20, i.e. INSIDE the cached data: every
 * allocation stomped the blob's first 8 bytes and every refcount bump
 * (func_800A8564) corrupted blob word +4 (measured: geo header texScroll
 * 0x0156d3bc -> 0x0156d3bd on the ovl6 movie's cached-model rebind). The
 * links are 32-bit slots holding host pointers -- the whole game arena
 * lives below 4 GiB -- and CL() widens them back. */
struct CacheLine {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};
#define CL(x) ((struct CacheLine *)(uintptr_t)(x))
#else
struct CacheLine {
    struct CacheLine *unk0;
    struct CacheLine *unk4;
    u32 unk8;
    u32 unkC;
};
#endif

extern u32 D_800D7BB0;
extern u32 D_800D7BB4;
extern u32 D_800D7BB8;
extern struct CacheLine *D_800D7BBC;
extern u32 D_800D7C10;

extern struct CacheLine *D_800D7BC0[4];
extern struct CacheLine *D_800D7BD0[4];
extern u32 D_800D7BE0[4];
extern s32 D_800D7BF0[];
extern s32 D_800D7C00[];

s32 func_800A86C8(s32, s32 *, s32 *);

extern u32 D_800D00E4[];
extern u32 D_800D0124[];
extern struct BGHeader **D_800D0104[];
extern u32 D_800D0144;

struct CacheEntry800C4654 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};
extern struct CacheEntry800C4654 D_800C4654[];
extern u8 D_800C4640[];

extern u32 D_800D6E68;
extern u32 D_800D6E6C;
extern u32 D_800D6E70;
extern u32 D_800D6E74;
extern u32 D_800D6E78;
extern u32 D_800D6E7C;
extern u32 D_800D6E80;
extern u32 D_800D6E84;

extern struct BankHeader *D_800D0184[];

extern struct UnkStruct800D79D8 *D_800D79D8[];
extern u32 D_800D7A00[];

// Result of func_800A94F4: a DMA'd-in animation block with a small
// relocation table (unk8 entries starting at unkC) that gets fixed up
// to point inside the block itself.
struct AnimBlock {
    void *unk0;
    u32 unk4;
    s32 unk8;
    void *unkC[1];
};

void animSetModelAnimation(void *, void *, f32);
void animSetTextureAnimation(void *, s32, f32);

void func_800A82C0(void) {
    D_800D7BB0 = D_800D7BB4 = ((u32)gDynamicBuffer2.top + 0xFF) & ~0xFF;
    D_800D7BB8 = (u32)gDynamicBuffer2.poolEnd - D_800D7BB0;
    D_800D7C10 = 0x80400000;
}

s32 func_800A8310(s32 arg0) {
    arg0 = arg0 & ~0xF;
    D_800D7BB8 -= arg0;
    if ((s32)D_800D7BB8 < 0) {
        return 0;
    }
    D_800D7BB4 += arg0;
    return D_800D7BB4 - arg0;
}

/* FACTORY: 33/45 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
#ifndef PORT
// Correct structure; remaining diff is register allocation only (compiler
// caches &D_800D7BD0[temp_v1] in a2, target keeps base + recomputes index).
void *func_800A8358(s32 arg0) {
    s32 temp_v1;
    struct CacheLine *var_a1;
    u32 lim;
    struct CacheLine *found;
    struct CacheLine *temp_a2;

    temp_v1 = arg0 & 3;
    arg0 = ((arg0 - temp_v1) + 0xC) & ~0xF;
    var_a1 = D_800D7BD0[temp_v1];
    lim = arg0 + 0x10;
loop_1:
    if (var_a1->unkC != 0) {
        goto advance;
    }
    if (var_a1->unk8 >= lim) {
        goto block_found;
    }
advance:
    var_a1 = var_a1->unk4;
    goto loop_1;
block_found:
    found = (struct CacheLine *)((u8 *)var_a1 + arg0);
    temp_a2 = found + 1;
    temp_a2->unk0 = var_a1;
    temp_a2->unk4 = var_a1->unk4;
    temp_a2->unkC = 0;
    temp_a2->unk8 = (var_a1->unk8 - arg0) - 0x10;
    var_a1->unk4 = temp_a2;
    temp_a2->unk4->unk0 = temp_a2;
    D_800D7BD0[temp_v1] = temp_a2->unk4->unk0;
    D_800D7BBC = var_a1;
    var_a1->unk8 = arg0;
    var_a1->unkC = 1;
    return (u8 *)var_a1 + 0x10;
}
#else
/* Same function through the 16-byte PORT header (CL() widens the 32-bit
 * link slots; pointer stores narrow with a cast). */
void *func_800A8358(s32 arg0) {
    s32 temp_v1;
    struct CacheLine *var_a1;
    u32 lim;
    struct CacheLine *found;
    struct CacheLine *temp_a2;

    temp_v1 = arg0 & 3;
    arg0 = ((arg0 - temp_v1) + 0xC) & ~0xF;
    var_a1 = D_800D7BD0[temp_v1];
    lim = arg0 + 0x10;
loop_1:
    if (var_a1->unkC != 0) {
        goto advance;
    }
    if (var_a1->unk8 >= lim) {
        goto block_found;
    }
advance:
    var_a1 = CL(var_a1->unk4);
    goto loop_1;
block_found:
    found = (struct CacheLine *)((u8 *)var_a1 + arg0);
    temp_a2 = (struct CacheLine *)((u8 *)found + 0x10);
    temp_a2->unk0 = (u32)(uintptr_t)var_a1;
    temp_a2->unk4 = var_a1->unk4;
    temp_a2->unkC = 0;
    temp_a2->unk8 = (var_a1->unk8 - arg0) - 0x10;
    var_a1->unk4 = (u32)(uintptr_t)temp_a2;
    CL(temp_a2->unk4)->unk0 = (u32)(uintptr_t)temp_a2;
    D_800D7BD0[temp_v1] = CL(CL(temp_a2->unk4)->unk0);
    D_800D7BBC = var_a1;
    var_a1->unk8 = arg0;
    var_a1->unkC = 1;
    return (u8 *)var_a1 + 0x10;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8358.s")
#endif
#ifdef PORT
/* Region init through the 16-byte PORT header (see struct CacheLine): the
 * `-= 2` is two 0x10 headers, and the link fields hold 32-bit arena
 * pointers. */
struct CacheLine *func_800A840C(u32 arg0, s32 arg1) {
    struct CacheLine *sp1C;
    struct CacheLine *temp_a3;
    struct CacheLine *temp_v0_2;

    if (D_800D7BD0[arg1 & 3] != NULL) {
        return NULL;
    }
    if (arg0 < 0x40) {
        return NULL;
    }
    sp1C = (struct CacheLine *)(uintptr_t)func_800A8310(arg0);
    if (sp1C == NULL) {
        return NULL;
    }
    D_800D7BD0[arg1] = sp1C;
    temp_v0_2 = (struct CacheLine *)((u8 *)sp1C + arg0 - 0x20);
    sp1C->unk0 = (u32)(uintptr_t)temp_v0_2;
    sp1C->unk4 = (u32)(uintptr_t)temp_v0_2;
    sp1C->unk8 = arg0 - 0x30;
    sp1C->unkC = 0;
    temp_v0_2->unk4 = (u32)(uintptr_t)sp1C;
    temp_a3 = CL(sp1C->unk4);
    temp_a3->unk0 = temp_a3->unk4;
    CL(sp1C->unk4)->unk8 = 0x10;
    CL(sp1C->unk4)->unkC = 0xFF000000;
    memcpy((u8 *)CL(sp1C->unk4) + 0x10, D_800C4640, 0x10);
    return sp1C;
}
#else
struct CacheLine *func_800A840C(u32 arg0, s32 arg1) {
    struct CacheLine *sp1C;
    struct CacheLine *temp_a3;
    struct CacheLine *temp_v0_2;

    if (D_800D7BD0[arg1 & 3] != NULL) {
        return NULL;
    }
    if (arg0 < 0x40) {
        return NULL;
    }
    sp1C = (struct CacheLine *)func_800A8310(arg0);
    if (sp1C == NULL) {
        return NULL;
    }
    D_800D7BD0[arg1] = sp1C;
    temp_v0_2 = (struct CacheLine *)((u8 *)sp1C + arg0);
    temp_v0_2 -= 2;
    sp1C->unk0 = temp_v0_2;
    sp1C->unk4 = temp_v0_2;
    sp1C->unk8 = arg0 - 0x30;
    sp1C->unkC = 0;
    temp_v0_2->unk4 = sp1C;
    temp_a3 = sp1C->unk4;
    temp_a3->unk0 = temp_a3->unk4;
    sp1C->unk4->unk8 = 0x10;
    sp1C->unk4->unkC = 0xFF000000;
    memcpy((u8 *)sp1C->unk4 + 0x10, D_800C4640, 0x10);
    return sp1C;
}
#endif

#ifdef NON_MATCHING
// 4/10, one-slot temp rotation (t7/t8/t9 vs t6/t7/t8). Swept: 24 source forms
// (temps, decl order/count, K&R, 2 params, void ret, ptr local, mask spelling).
// Re-confirmed 2026-08-23: diff is purely register naming across the whole
// addiu/and/addu/sw chain (t6/t7/t8 vs ROM's t7/t8/t9), a whole-body temp
// rotation -- LEVERS.md "GUARD ON THE SECOND VARIANT" floor class. Left
// guarded.
// Re-confirmed 2026-08-25. The ROM burns $t6 before this chain starts and
// nothing in the body does; six more spellings all reproduce t6/t7/t8 exactly:
// a `u32 *heap = &D_800D7C10` pointer local, the size folded inline into the
// store, computing `size` before the load, a `void *` return with casts on
// both sides, and mutating `arg0` as the scratch (5/10, worse -- it moves the
// `ori $at` too). A second unused parameter does not even compile: the call at
// func_800A89E0 passes one argument and IDO rejects the arity mismatch.
// 2026-08-25, and this one narrows where the missing temp has to come from.
// Reading the global TWICE (`D_800D7C10 = D_800D7C10 + size;` in place of
// `temp_v0 + size`) DOES burn an extra register -- but the wrong one. It costs
// 7/10, because the CSE temp is created before the ADDRESS is materialised and
// the whole thing shifts one register up together: $a1 becomes $a2 and the
// t6/t7/t8 chain does not move at all. So the extra value the ROM holds is
// created AFTER the `lw $v0` and BEFORE the `addiu $t7,$a0,0xF` -- a
// two-instruction window with no source statement in it. Note also that this
// function has NO FRAME (there is no `addiu $sp`), so a declaration buys a
// register rather than a home slot, and lever 60's question -- which of the
// ROM's values is a temp and not a local -- is asked here against the register
// NUMBERING rather than against spill offsets.
// FACTORY: 4/10, re-measured 2026-08-25 by the coordinator, and eight further
// spellings all reproduce the same 4 -- so the source-shape search space here
// is now large and empty:
//   a third declaration, before or after the two real ones (a declaration in a
//     frameless function buys a register, so this was the direct test of the
//     "one more value" theory, and IDO simply does not allocate for it);
//   `size` folded inline into the store expression;
//   `size` computed before the load;
//   `u32 arg0` instead of `s32`;
//   `s32 size` instead of `u32`;
//   an explicit `(u32)` cast on the addend.
// Measured WORSE: `& ~0xF` in place of `& 0xFFFFF0` is 7/10 -- IDO builds the
// mask differently, so the literal is confirmed by measurement rather than
// assumed.
// Ten instructions, four of them a contiguous one-slot temp rotation, no
// frame, no calls. That is the smallest and best-conditioned permuter target
// in ovl1 and it is now in priority_queue.py's TARGETS.
u32 func_800A84F0(s32 arg0) {
    u32 temp_v0;
    u32 size;

    temp_v0 = D_800D7C10;
    size = (arg0 + 0xF) & 0xFFFFF0;
    D_800D7C10 = temp_v0 + size;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A84F0.s")
#endif
void *func_800A8518(struct CacheLine *arg0) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC &= 0xFFFFFF;
    arg0->unkC |= 0x99000000;
    return arg0;
}

void *func_800A8540(struct CacheLine *arg0) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC &= 0xFFFFFF;
    return arg0;
}

void func_800A855C(void *arg0, s32 arg1) {
    ((s32 *)arg0)[-1] = arg1;
}

void *func_800A8564(struct CacheLine *arg0, s32 arg1) {
    arg0 = (struct CacheLine *)((u8 *)arg0 - 0x10);
    arg0->unkC += arg1;
    return arg0;
}

/* FACTORY: 24/52 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
#ifndef PORT
// Nearly matching (28/52 insns identical incl. all structure); remaining diff
// is a one-slot temp-register rotation in the free path (t8/t9/t0.. vs t7/t8/t9..).
// K&R definition needed, MEASURED: rewriting the head as
// `u32 func_800A8578(s32 arg0)` fails the build with "too many arguments to
// function" at six live call sites in this file -- ovl1_3.c:2705, :2716,
// :2743, :2749, :2762, :2766 -- which pass the second and third argument
// purely to leave the values sitting in $a1/$a2. The K&R form stays.
u32 func_800A8578(arg0)
s32 arg0;
{
    struct CacheLine *temp_v1;
    struct CacheLine *var_v0;
    struct CacheLine *prev;
    struct CacheLine *var_v1;
    struct CacheLine **slot;
    u32 temp_a1;
    u32 temp_v0;

    temp_v1 = (struct CacheLine *)((arg0 - 0x10) & ~3);
    temp_a1 = temp_v1->unkC;
    var_v0 = temp_v1;
    if ((temp_a1 & 0xFF000000) == 0x99000000) {
        return 0x99000000;
    }
    if (temp_a1 >= 2) {
        temp_v0 = temp_a1 - 1;
        temp_v1->unkC = temp_v0;
        return temp_v0;
    }
    prev = temp_v1->unk0;
    temp_v1->unkC = 0;
    if (prev->unkC == 0) {
        var_v0 = prev;
    }
    var_v1 = var_v0->unk4;
    slot = &D_800D7BD0[arg0 & 3];
    if (var_v1->unkC == 0) {
        do {
            if (var_v1 == *slot) {
                *slot = var_v0;
                var_v1 = var_v0->unk4;
            }
            var_v0->unk8 = var_v0->unk8 + var_v1->unk8 + 0x10;
            var_v1->unk4->unk0 = var_v0;
            var_v1 = var_v0->unk4->unk4;
            var_v0->unk4 = var_v1;
        } while (var_v1->unkC == 0);
    }
    return 0;
}
#else
/* Free/deref through the 16-byte PORT header; arena pointers fit the u32
 * link slots, so only the derefs widen (CL). Semantics identical to the
 * NON_MATCHING body above. K&R definition for the same measured reason as
 * that body: six live call sites (ovl1_3.c:2705, :2716, :2743, :2749, :2762,
 * :2766) pass extra arguments, and an ANSI one-parameter head fails the PC
 * build with "too many arguments to function 'func_800A8578'" at all six. */
u32 func_800A8578(arg0)
s32 arg0;
{
    struct CacheLine *temp_v1;
    struct CacheLine *var_v0;
    struct CacheLine *prev;
    struct CacheLine *var_v1;
    struct CacheLine **slot;
    u32 temp_a1;
    u32 temp_v0;

    temp_v1 = (struct CacheLine *)(uintptr_t)(((u32)arg0 - 0x10) & ~3u);
    temp_a1 = temp_v1->unkC;
    var_v0 = temp_v1;
    if ((temp_a1 & 0xFF000000) == 0x99000000) {
        return 0x99000000;
    }
    if (temp_a1 >= 2) {
        temp_v0 = temp_a1 - 1;
        temp_v1->unkC = temp_v0;
        return temp_v0;
    }
    prev = CL(temp_v1->unk0);
    temp_v1->unkC = 0;
    if (prev->unkC == 0) {
        var_v0 = prev;
    }
    var_v1 = CL(var_v0->unk4);
    slot = &D_800D7BD0[arg0 & 3];
    if (var_v1->unkC == 0) {
        do {
            if (var_v1 == *slot) {
                *slot = var_v0;
                var_v1 = CL(var_v0->unk4);
            }
            var_v0->unk8 = var_v0->unk8 + var_v1->unk8 + 0x10;
            CL(var_v1->unk4)->unk0 = (u32)(uintptr_t)var_v0;
            var_v1 = CL(CL(var_v0->unk4)->unk4);
            var_v0->unk4 = (u32)(uintptr_t)var_v1;
        } while (var_v1->unkC == 0);
    }
    return 0;
}
#endif
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8578.s")
#endif
s32 func_800A8648(void) {
    s32 ret;
    s32 i;

    ret = 0;
    for (i = 0; i < 4; i++) {
        ret += func_800A86C8(i, &D_800D7BF0[i], &D_800D7C00[i]);
    }
    return ret;
}

s32 func_800A86C8(s32 arg0, s32 *arg1, s32 *arg2) {
    struct CacheLine *start;
    struct CacheLine *cur;
    s32 count;
    s32 total;
    s32 size;

    start = D_800D7BC0[arg0 & 3];
    count = 0;
    total = 0x30;
    cur = start;
    do {
        if (cur->unkC & 0xFF) {
            size = cur->unk8;
            count++;
            total = total + size + 0x10;
        }
#ifdef PORT
        cur = CL(cur->unk4); /* 32-bit link slot, see struct CacheLine */
#else
        cur = cur->unk4;
#endif
    } while (cur != start);
    *arg1 = total;
    *arg2 = count;
    return total;
}

/* NON_MATCHING draft at 130/134. It was left UNGUARDED, which put the ROM
 * at b3dcd30e and drifted ovl1_3 by +8 -- the exact failure verify.py --all
 * reports as "1 diff" while check_tu_size stays silent.
 *
 * Guarded NON_MATCHING rather than MIPS_TO_C on purpose: it compiles, so the
 * PC port executes it, and this function is the port boot path's current
 * blocking stub. The ROM assembles the pragma below. */
/* FACTORY: 130/134 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
s32 func_800A8724(s32 arg0) {
    /* D_800D6E68 is declared `u32 []` at file scope for the indexed read in
     * func_800A8DE4; the ROM writes a single word here, so this function
     * needs the scalar view. Block scope keeps it off every other user. */
    extern u32 D_800D6E68;
    s32 count;
    s32 i;
    s32 j;
    u32 k;
    u32 before;
    u32 *sizes;

    count = 0;
#ifdef PORT
    /* One-time repack of bank 3's image block table. The data generator
     * emitted D_800C96D8 as a POINTER array (its entry 57 got symbolized as
     * &D_3C3B0), which on LP64 gives it 8-byte slots -- but every reader
     * (func_800A8B0C/func_800A8934/func_800A89E0) indexes it as dense u32
     * ROM offsets. Reading half-slots produced a garbage 15 MB size and the
     * cache allocator's free-list walk span forever (the measured "menu
     * scene freezes with a black fade overlay" hang: main thread parked in
     * func_800A8358 under func_80151338_ovl4). Compact the low halves in
     * place (every table value is below 4 GiB) and restore entry 57 to its
     * real ROM offset, which the symbolization destroyed. */
    {
        static int repacked = 0;
        extern void *D_800C96D8[];
        if (!repacked) {
            u32 *dst = (u32 *)D_800C96D8;
            u32 n = D_800D0124[3] + 1; /* entries = image count + 1 */
            u32 t;
            repacked = 1;
            for (t = 0; t < n; t++) {
                dst[t] = (u32)(uintptr_t)D_800C96D8[t];
            }
            dst[57] = 0x0003C3B0;
        }
    }
#endif
    func_800A82C0();
    for (i = 0; i < 8; i++) {
        for (j = 0; j < D_800D00E4[i]; j++) {
            D_800D00C4[i][j] = NULL;
        }
        for (j = 0; j < D_800D0124[i]; j++) {
            D_800D0104[i][j] = NULL;
        }
    }
    sizes = (u32 *)&D_800C4654[arg0];
    for (k = 0; k < 4; k++) {
        before = D_800D7BB8;
        D_800D7BD0[k] = NULL;
        if (sizes[k] != 0) {
            if (sizes[k] == -1) {
                D_800D7BD0[k] = func_800A840C(D_800D7BB8, k);
            } else {
                D_800D7BD0[k] = func_800A840C(sizes[k], k);
            }
            if (D_800D7BD0[k] == NULL) {
                count++;
            }
        }
        D_800D7BE0[k] = before - D_800D7BB8;
        D_800D7BC0[k] = D_800D7BD0[k];
    }
    D_800D6E78 = 0;
    D_800D6E68 = 0;
    D_800D6E7C = 0;
    D_800D6E6C = 0;
    D_800D6E80 = 0;
    D_800D6E70 = 0;
    D_800D6E84 = 0;
    D_800D6E74 = 0;
    return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8724.s")
#endif

s32 func_800A8934(u32 arg0, s32 arg1, s32 arg2, void *arg3) {
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    if (arg2 == 0) {
        arg2 = entry[1] - entry[0];
        arg2 += 3;
        arg2 &= 0xFFFFFC;
        arg2 -= arg1;
        if (arg2 < 0x10) {
            return -1;
        }
    } else {
        arg2 = (arg2 + 3) & 0xFFFFFC;
    }
    dma_read(entry[0] + (u32)rom + arg1, arg3, arg2);
    return arg2;
}

// Reusing `arg0` as the scratch for the masked index is load-bearing: a
// declared local (in any position) puts the index in $t9 and rotates every
// later temp one slot, where the ROM keeps it in the free argument register.
void *func_800A89E0(u32 arg0) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A84F0(size);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}
struct BGHeader *func_800A8A7C(u32 arg0) {
    struct BGHeader ***temp_v1;
    s32 idx;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_v1)[idx] != NULL) {
        func_800A8564((struct CacheLine *)(*temp_v1)[idx], 1);
    } else {
        (*temp_v1)[idx] = (struct BGHeader *)func_800A89E0(arg0);
    }
    return (*temp_v1)[idx];
}

// `arg0 &= 0xFFFF;` as the scratch is load-bearing -- see func_800A89E0.
void *func_800A8B0C(u32 arg0, s32 arg1) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;

    entry = D_800D0184[arg0 >> 16]->imageBlockTable;
    rom = D_800D0184[arg0 >> 16]->imageROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A8358(size | arg1);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}

struct BGHeader *func_800A8BAC(u32 arg0) {
    struct BGHeader ***temp_v1;
    s32 idx;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_v1)[idx] != NULL) {
        func_800A8564((struct CacheLine *)(*temp_v1)[idx], 1);
    } else {
        (*temp_v1)[idx] = (struct BGHeader *)func_800A8B0C(arg0, 3);
    }
    return (*temp_v1)[idx];
}

#ifdef PORT
/* The dma'd image blob is raw big-endian ROM data on the host. The N64 body
 * relocates imgOffset/palOffset with native word reads, which on the host adds
 * the base to a byte-swapped offset and hands the S2DEX bg path a wild image
 * pointer (measured: strncmp fault inside the renderer's signature probe).
 * Decode the multi-byte header fields once at load; the u8 fields (fmt, siz,
 * unk2) are single bytes and already correct. Texel/palette payload stays raw
 * -- N64 texture formats are byte streams and the renderer expects them. */
struct BGHeader *func_800A8C40(u32 arg0) {
    struct BGHeader ***temp_a2;
    s32 idx;
    u8 *raw;
    struct BGHeader *h;

    temp_a2 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_a2)[idx] == NULL) {
        (*temp_a2)[idx] = (struct BGHeader *)func_800A8B0C(arg0, 3);
        h = (*temp_a2)[idx];
        raw = (u8 *)h;
        /* BGHeader (ovl1_3.h) is opaque in this TU; the layout is
         * fmt/siz/unk2 u8 at 0..2, width u16 at 4, height u16 at 6,
         * imgOffset u32 at 8, palOffset u32 at 12. */
        (void)h;
        *(u16 *)(raw + 4) = (u16)((raw[4] << 8) | raw[5]);
        *(u16 *)(raw + 6) = (u16)((raw[6] << 8) | raw[7]);
        *(u32 *)(raw + 8) = (((u32)raw[8] << 24) | ((u32)raw[9] << 16) | ((u32)raw[10] << 8) | raw[11])
                            + (u32)(uintptr_t)raw;
        *(u32 *)(raw + 12) = (((u32)raw[12] << 24) | ((u32)raw[13] << 16) | ((u32)raw[14] << 8) | raw[15])
                             + (u32)(uintptr_t)raw;
        {
            extern void pc_bgload_debug(u32 id, const void *raw, const void *img, const void *pal);
            pc_bgload_debug(arg0, raw, (void *)(uintptr_t)*(u32 *)(raw + 8),
                            (void *)(uintptr_t)*(u32 *)(raw + 12));
        }
    }
    return (*temp_a2)[idx];
}
#else
struct BGHeader *func_800A8C40(u32 arg0) {
    struct BGHeader ***temp_a2;
    s32 idx;
    u32 *temp_v1;

    temp_a2 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    if ((*temp_a2)[idx] == NULL) {
        (*temp_a2)[idx] = (struct BGHeader *)func_800A8B0C(arg0, 3);
        temp_v1 = (u32 *)(*temp_a2)[idx];
        temp_v1[2] = temp_v1[2] + (u32)temp_v1;
        temp_v1[3] = temp_v1[3] + (u32)temp_v1;
    }
    return (*temp_a2)[idx];
}
#endif /* PORT */

/* MATCHED. Two things had to be true at once, and every earlier sweep had one
 * of them.
 *
 * THE REGISTERS. The ROM loads the block table into $v0 and writes the element
 * pointer to $v1; a draft that ADVANCES one pointer (`entry += arg0`) gives
 * IDO one value to keep and it reuses $v1 for both (`lw $v1` / `addu
 * $v1,$v1,$t9`). Keeping the base live and subscripting it -- `base[arg0]`,
 * `base[arg0 + 1]` -- gives IDO two live values and the ROM's register pair
 * falls out. The old note had found this ("an explicit `base` DOES fix the
 * ROM's `lw $v0`") and rejected it, because with the base declared the
 * remaining spill lands one word low.
 *
 * THE FRAME (LEVERS 54/57). frame = align8(0x18 + 4*ndecl + 4*ntemp), and
 * declarations lay out top-down so the LAST one takes the LOWEST address. The
 * ROM's slots are 0x1C, 0x20 and 0x2C in a 0x30 frame, which is FOUR
 * declarations plus ONE compiler temp -- not five declarations, which is what
 * every entry in the old table below has. The advanced pointer is that temp,
 * so it must NOT be a declared local:
 *
 *     size(0x2C)  pad0(0x28)  base(0x24)  buf(0x20)   + temp(0x1C)
 *
 * The old sweep never reached this because it kept `entry` as a variable in
 * all 120 permutations and only varied where `base` went among them; dropping
 * `entry` entirely is a different declaration COUNT, not another ordering.
 *
 * Also recorded, from the same sweep and still true: `entry = base + arg0` and
 * `arg0 + base` are byte-identical (pointer arithmetic is canonicalised);
 * folding the whole address into one expression collapses the ROM's two `sll`s
 * into one `sll 3` (25/32); and reusing `buf` as the base scratch is 9/33.
 *
 * LEVER 55 CHECKED AND DISPROVED HERE, and worth keeping. This TU really does
 * call `dma_read` and `func_800A8358` with NO declaration in scope, so both
 * are implicit `int f()` in the matching build. Declaring them at file scope
 * is completely INERT: .text comes back byte-identical (cmp clean). In-body
 * copies cannot be used at all -- the implicit declarations earlier in the
 * file come first and IDO rejects the later real one (lever 49). */
void *func_800A8CE0(u32 arg0, s32 arg1) {
    s32 size;
    s32 pad0;
    u32 *base;
    void *buf;

    base = D_800D0184[arg0 >> 16]->geoBlockTable;
    arg0 &= 0xFFFF;
    arg0 *= 2;
    size = (base[arg0 + 1] - base[arg0]) | arg1;
    buf = (void *)func_800A8358(size);
    dma_read(base[arg0], buf, size & 0xFFFFFC);
    return buf;
}
// Draft, 60/62: shape and frame are right; the residue is that the ROM keeps
// `slot` (&D_800D00C4[arg0>>16]) in $s0 across the func_800A8578 call and
// reuses $s0 for `p` afterwards, where IDO leaves it in $v1 and spills it.
// Swept: idx as a variable vs inline, block-scoped inner locals.
/* FACTORY: 60/62 -- MEASURED 2026-08-25. No change to the number; the body was
   re-derived from the listing anyway, because the previous shape was a guess
   that happened to score the same and the listing is unambiguous about three
   things it got wrong.

   READ OFF asm/nonmatchings/ovl1/ovl1_3/func_800A8D64.s:
     - the loop advances with `id = p[1]; p++`, not `while ((id = *p) != 0)`.
       The ROM proves it: `lw $v1, 0x4($s0)` appears in BOTH branch-likely
       delay slots (800A8DF8 and 800A8E08) and again at the join (800A8E30),
       with `addiu $s0, $s0, 0x4` after -- that triple is what the p[1]
       spelling costs and what a `*p` spelling cannot produce.
     - `(arg0 & 0xFFFF)` is a LIVE VARIABLE, not a re-computed subscript: the
       ROM computes `$v1 = idx * 4` once, SPILLS it to 0x20($sp) in the call's
       delay slot, and reloads it afterwards to store the NULL.
     - the second call's argument is `entry | 3` (`ori $a0, $a1, 0x3`), and the
       first is `obj | arg1` (`or $a0, $s1, $a1`).
   The frame already matches at 0x48.

   THE RESIDUE IS REGISTER CLASS, and it starts at instruction 0. The ROM keeps
   `&D_800D00C4[arg0 >> 16]` in $s0 -- a SAVED register, assigned before the
   frame setup, which is why `addiu $sp, -0x48` is the ROM's first word and the
   draft's seventh -- and later REUSES $s0 for `p` and $s1 for D_800D0104's
   base once their first ranges die. The draft puts the slot pointer in $v1 and
   never claims a saved register that early. Everything after index 0 follows
   from that, which is why 60 of 62 differ over an otherwise faithful body.

   Measured and byte-identical at 60/62: the early-return form (`if (obj ==
   NULL) return;` plus a flat `if` instead of the nested pair), matching the
   ROM's two `beqz`/`bnez` jumps to the epilogue.
   Per LEVERS 69 -- diff 0 is the prologue, so no body-level lever can be
   scored through it. The next attempt has to start from the saved-register
   claim, not from the loop. */
#ifdef NON_MATCHING
void func_800A8D64(u32 arg0, s32 arg1) {
    u32 ***slot;
    s32 idx;
    u32 *obj;
    u32 *p;
    u32 id;
    u32 id2;
    struct BGHeader *entry;

    slot = &D_800D00C4[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    obj = (*slot)[idx];
    if (obj != NULL) {
        if (func_800A8578((s32)obj | arg1) == 0) {
            (*slot)[idx] = NULL;
            p = (u32 *)obj[3];
            id = *p;
            while (id != 0) {
                entry = D_800D0104[id >> 16][id & 0xFFFF];
                if (entry != NULL) {
                    if (func_800A8578((s32)entry | 3) == 0) {
                        id2 = *p;
                        D_800D0104[id2 >> 16][id2 & 0xFFFF] = NULL;
                    }
                }
                id = p[1];
                p++;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8D64.s")
#endif

void func_800A8E54(u32 arg0, s32 arg1) {
    struct BGHeader ***temp_v1;
    s32 idx;
    struct BGHeader *tmp;
    s32 ret;

    temp_v1 = &D_800D0104[arg0 >> 16];
    idx = arg0 & 0xFFFF;
    tmp = (*temp_v1)[idx];
    if (tmp != NULL) {
        ret = func_800A8578((s32)tmp | arg1);
        if (ret == 0) {
            (*temp_v1)[idx] = NULL;
        }
    }
}

// Draft, 95/113: behaviourally complete and the instruction count matches.
// Residue is a frame 0x10 short of the ROM's 0x30 plus a systematic v0/v1
// swap in both leading loops (the ROM puts the walking pointer in $v0 and the
// counter in $v1). m2c-shaped do/while loops with an explicit pointer local
// are worse (111).
/* FACTORY: 92/113 -- MEASURED 2026-08-25, was 95/113. The frame was four slots
   short, 0x20 against the ROM's 0x30, so every stack displacement and the
   whole prologue order were wrong before anything in the body could be
   scored (LEVERS 69/74/79). Four reserved slots ahead of the named locals fix
   it exactly; see the comment on them.

   The 92 that remain are register class and prologue order: the ROM materialises
   &D_800D6E68 into $v0 and holds the loop's running index in $v1, while the
   draft uses $v1 and $a3 and orders the `lui`/`sw $ra`/`or` differently. Body
   structure, loop bounds and every offset are already right. */
#ifdef NON_MATCHING
void func_800A8EC0(u32 arg0) {
    /* LEVER 78: four reserved slots, and their POSITION is what makes them
       count. Declared here, ahead of every named local, they put the frame on
       the ROM's 0x30 (the draft was 0x20, four slots short) and take the score
       95/113 -> 92/113. The same four interleaved between the named locals are
       dropped whole and score 95 -- so these are standing in for four values
       the ROM's source had and this draft has not identified, not for padding.
       Whoever names them should delete these in the same edit. */
    s32 pad0;
    s32 pad1;
    s32 pad2;
    s32 pad3;
    u32 **slot;
    u32 *ptr;
    u32 *r;
    s32 found;
    s32 i;
    s32 j;
    s32 k;

    found = -1;
    for (i = 0; i < 3; i++) {
        if (arg0 == (&D_800D6E68)[i]) {
            found = i;
        }
    }
    if (found != -1) {
        j = 2;
        for (k = 2; k >= 0; k--) {
            if (found != k) {
                (&D_800D6E68)[j] = (&D_800D6E68)[k];
                j--;
            }
        }
    } else {
        if ((&D_800D6E68)[2] != 0) {
            func_800A8D64((&D_800D6E68)[2], 3);
        }
        r = &(&D_800D6E68)[1];
        do {
            r[1] = *r;
            r--;
        } while (r >= &D_800D6E68);
    }
    D_800D6E68 = arg0;
    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = *slot;
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(gSegment4StartArray[omCurrentObj->objId]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A8EC0.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 76/114. Frame (0x38), prologue order, all three MRU blocks,
 * both descending loops and the whole call tail match; the residue is which
 * register receives the first `lui` -- the ROM builds the scan pointer in
 * $v0 and zeroes the counter into $v1, IDO does the reverse -- and the
 * cascade of temp names that follows. Measured, and worth recording: the ROM
 * materializes &D_800D6E78 TWICE (once for the scan loop, once for the two
 * shift blocks). Writing the scan pointer as `&D_800D6E78` lets IDO CSE the
 * two into one hoisted base ABOVE the frame setup and costs 35 diffs;
 * spelling it `&D_800D6E7C - 1` (the same address, different symbol) keeps
 * them apart -- 111 -> 92 -- and dropping the shared `ids` local for direct
 * `(&D_800D6E78)[...]` subscripts took it to 76 and fixed the frame.
 * Solved semantics: 3-entry MRU over D_800D6E78; on a hit the entries above
 * the hit shift down, on a miss the oldest is released with
 * func_800A8D64(ids[2], 3) and the list shifts up; the bank then loads
 * through the D_800D00C4 cache into gSegment4StartArray, and the sound bank
 * id is the HALFWORD at data+0xA (lhu), not a widened word. */
void func_800A9088(u32 arg0) {
    u32 **slot;
    u32 *data;
    s32 k;
    s32 i;
    u32 *p;
    u32 tmp;
    s32 dst;
    GObj *obj;

    k = -1;
    p = &D_800D6E7C - 1;
    i = 0;
    do {
        if (arg0 == *p) {
            k = i;
        }
        i += 1;
        p += 1;
    } while (i < 3);
    if (k != -1) {
        dst = 2;
        i = 2;
        do {
            if (k != i) {
                (&D_800D6E78)[dst] = (&D_800D6E78)[i];
                dst -= 1;
            }
            i -= 1;
        } while (i >= 0);
    } else {
        if ((&D_800D6E78)[2] != 0) {
            func_800A8D64((&D_800D6E78)[2], 3);
        }
        p = &D_800D6E7C;
        do {
            tmp = *p;
            p -= 1;
            p[2] = tmp;
        } while (p >= &D_800D6E78);
    }
    (&D_800D6E78)[0] = arg0;
    obj = omCurrentObj;
    D_800E02D0[obj->objId] = arg0;
    slot = D_800D00C4[arg0 >> 0x10] + (arg0 & 0xFFFF);
    if (*slot != NULL) {
        data = *slot;
        gSegment4StartArray[obj->objId] = data;
    } else {
        data = func_800A9250(arg0, 3);
        *slot = data;
        gSegment4StartArray[omCurrentObj->objId] = data;
    }
    func_800A9D64(obj->objId);
    func_800AF9B8(*(u16 *) ((u8 *) data + 0xA), 0x10);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(data);
}
#elif defined(PORT)
/* Bind animation bank arg0 with a 3-slot MRU (draft above, asm-verified):
 * a re-referenced id is pulled to the front; a miss evicts the oldest
 * (func_800A8D64 type 3) and shifts. The bank loads through the
 * D_800D00C4 cache into gSegment4StartArray, then the sound bank in the
 * header's halfword (low half of native word +8, N64 lhu +0xA) loads and
 * the track anim starts. */
void func_800A9088(u32 arg0) {
    u32 *ids = (u32 *) &D_800D6E78;
    u32 **slot;
    u32 *data;
    u32 objId;
    s32 k = -1;
    s32 i;

    for (i = 0; i < 3; i++) {
        if (ids[i] == arg0) {
            k = i;
        }
    }
    if (k != -1) {
        s32 dst = 2;

        for (i = 2; i >= 0; i--) {
            if (i != k) {
                ids[dst--] = ids[i];
            }
        }
    } else {
        if (ids[2] != 0) {
            func_800A8D64(ids[2], 3);
        }
        ids[2] = ids[1];
        ids[1] = ids[0];
    }
    ids[0] = arg0;
    objId = omCurrentObj->objId;
    D_800E02D0[objId] = arg0;
    slot = &D_800D00C4[arg0 >> 0x10][arg0 & 0xFFFF];
    if (*slot != NULL) {
        data = *slot;
        gSegment4StartArray[objId] = data;
    } else {
        data = func_800A9250(arg0, 3);
        *slot = data;
        gSegment4StartArray[omCurrentObj->objId] = data;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800AF9B8(*(u32 *) ((u8 *) data + 8) & 0xFFFF, 0x10);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(data);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9088.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 132/169, all of it downstream of ONE extra callee-saved
 * register. The ROM runs on s0-s5 (frame 0x30); IDO needs s0-s6 (frame 0x38)
 * for the same values, so every save, every restore and every temp name
 * lands one register off even though the four nested relocation loops, the
 * two func_800A8BAC fix-ups, the 0x99999999 terminator tests, the tail
 * switch and the return path are instruction-for-instruction the ROM's.
 * Measured on the way down: sinking the 0xFFFFFF / 0x99999999 constants to
 * their first use was worth 23 (155 -> 132); splitting the entry index as
 * `idx = (arg0 & 0xFFFF) * 2; table + idx` reproduces the ROM's
 * `sll 1` + `sll 2` pair instead of a single `sll 3`; reusing the dead
 * `size` local to hold the terminator and dropping the `layout` local did
 * not free the seventh register. Solved semantics, all N64: geoBlockTable
 * entries are PAIRS (stride 8 bytes = idx*2 words), every relocated field is
 * `(word & 0xFFFFFF) + blk` IN PLACE -- offsets +0x0 (layout), +0x4 (the
 * three-level texScroll walk), +0xC (imgRefs), +0x18 (guarded by +0x14) --
 * the image references are re-resolved through func_800A8BAC, the inner
 * lists terminate on 0x99999999, and the layoutMode switch at +0x8 walks the
 * 0x2C-byte layout records (q[11], stride 0x2C) fixing q[1] for modes 0x18
 * and 0x1A-0x1E only, with the same empty 0x1F / 0x3E7 arms the sibling
 * func_800A9648 needs to reproduce the 15-entry jump table. */
u32 *func_800A9250(u32 arg0, s32 arg1) {
    s32 idx;
    u32 *entry;
    s32 size;
    u8 *blk;
    s32 mask;
    s32 *p;
    s32 *q;
    s32 *r;
    s32 *t;
    s32 *layout;
    s32 v;
    s32 w;
    s32 x;

    idx = (arg0 & 0xFFFF) * 2;
    entry = D_800D0184[arg0 >> 0x10]->geoBlockTable + idx;
    size = (entry[1] - entry[0]) | arg1;
    blk = (u8 *) func_800A8358(size);
    dma_read(entry[0], blk, size & 0xFFFFFC);
    mask = 0xFFFFFF;
    v = *(s32 *) (blk + 0xC) & mask;
    p = (s32 *) (v + (s32) blk);
    if (v != 0) {
        *(s32 *) (blk + 0xC) = (s32) p;
        v = *p;
        if (v != 0) {
            do {
                q = (s32 *) ((v & mask) + (s32) blk);
                *p = q[1];
                q += 1;
                *q = (s32) func_800A8BAC(*q);
                v = p[1];
                p += 1;
            } while (v != 0);
        }
    }
    v = *(s32 *) (blk + 4) & mask;
    p = (s32 *) (v + (s32) blk);
    if (v != 0) {
        *(s32 *) (blk + 4) = (s32) p;
        v = *p;
        size = 0x99999999;
        if (v != size) {
            do {
                if (v != 0) {
                    q = (s32 *) ((v & mask) + (s32) blk);
                    *p = (s32) q;
                    w = *q;
                    if (w != size) {
                        do {
                            if (w != 0) {
                                r = (s32 *) ((w & mask) + (s32) blk);
                                *q = (s32) r;
                                x = r[1] & mask;
                                t = (s32 *) (x + (s32) blk);
                                if (x != 0) {
                                    r[1] = (s32) t;
                                    x = *t;
                                    if (x != size) {
                                        do {
                                            if (x != 0) {
                                                *t = (s32) func_800A8BAC(x);
                                            }
                                            x = t[1];
                                            t += 1;
                                        } while (x != size);
                                    }
                                }
                                r = (s32 *) *q;
                                x = r[11] & mask;
                                t = (s32 *) (x + (s32) blk);
                                if (x != 0) {
                                    r[11] = (s32) t;
                                    x = *t;
                                    if (x != size) {
                                        do {
                                            if (x != 0) {
                                                *t = (s32) func_800A8BAC(x);
                                            }
                                            x = t[1];
                                            t += 1;
                                        } while (x != size);
                                    }
                                }
                            }
                            w = q[1];
                            q += 1;
                        } while (w != size);
                    }
                }
                v = p[1];
                p += 1;
            } while (v != size);
        }
    }
    q = (s32 *) ((s32) blk + (*(s32 *) blk & mask));
    *(s32 *) blk = (s32) q;
    if (*(s32 *) (blk + 0x14) != 0) {
        v = *(s32 *) (blk + 0x18);
        if (v != 0) {
            *(s32 *) (blk + 0x18) = (s32) blk + (v & mask);
        }
    }
    switch (*(u32 *) (blk + 8)) {
    case 0x18:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
        layout = q;
        if (*layout != 0x12) {
            do {
                v = layout[1];
                if (v != 0) {
                    layout[1] = v & mask;
                    layout[1] = (v & mask) + (s32) blk;
                }
                w = layout[11];
                layout += 11;
            } while (w != 0x12);
        }
        break;
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x19:
    case 0x1F:
        break;
    case 0x3E7:
        break;
    }
    return (u32 *) blk;
}
#elif defined(PORT)
/* PORT: the geo/model bank entry loader + relocator, rewritten for the host
 * from asm/nonmatchings/ovl1/ovl1_3/func_800A9250.s in the style of
 * func_8009B768's PORT arm (ovl1.c).
 *
 * D_800D0184[bank] and its geoBlockTable are native host data on the PC
 * build (regenerated as C initializers), so the table reads at the top are
 * plain loads, exactly like the compiled func_800A8B0C. The blob dma_read()
 * pulls in, however, is raw BIG-ENDIAN ROM data. Beyond the N64 asm's
 * pointer relocation, this arm makes the blob FULLY consumable by native
 * game code and by the Fast3D interpreter:
 *
 * Native after this returns:
 *   - header +0x00 (layout ptr), +0x04 (texScroll ptr), +0x0C (imgRefs ptr,
 *     when nonzero), +0x18 (anim refs ptr, when +0x14 and the word are both
 *     nonzero): native host pointers, exactly like the N64 asm's relocation
 *     (all game-visible allocations sit below 4 GiB, see pc_mmio.c, so a
 *     u32 slot holds one);
 *   - header +0x08 (layoutMode), +0x14 (numAnimations), +0x1C (lenLayout):
 *     byte-swapped scalars, so the many compiled read sites
 *     (func_800A9648/func_800A9864/func_800A9A2C below, func_800AB0F4,
 *     func_800AF7A0, func_800F716C, ...) read them natively;
 *   - for layoutModes 0x17..0x1E, the whole 0x2C-stride layout node array
 *     through its 0x12-type terminator (struct UnkE4E4Arg, see
 *     src/main/anim.h: s32 type/flags, u32 data ptr, 9 f32s), consumed
 *     natively by anim.c's func_8000F980/func_8000FB10 walkers;
 *   - every TextureScroll node the texScroll graph reaches (field-wise:
 *     u16s/u32s/f32s swapped; ColorPacks and other byte fields untouched --
 *     canonical byte order for colors is memory order r,g,b,a, and the two
 *     .pack readers in render.c re-pack under PORT);
 *   - the display lists (and the Vtx runs and G_MTX matrices they
 *     reference) reachable from the per-mode payloads, walked conservatively
 *     (validated first, one-shot via a visited bitmap, bounded, seg-4
 *     references only). Gfx words become native u32 pairs, which is what
 *     the Fast3D fork consumes; texel data referenced by G_SETTIMG stays in
 *     N64 byte order, which is also what Fast3D expects.
 *
 * Still big-endian: header +0x10 (vtxRefs, no compiled consumer yet), the
 * anim payload sections (+0x18's targets; the anim BLOCK loader
 * func_800A94F4 and its consumers are a separate task), layout data of
 * modes 0x11/0x12/0x16 (no compiled consumer / CPU-pointer-bearing TypeG
 * data that cannot exist in raw ROM), and anything a validation pass
 * rejected.
 *
 * Payload-per-mode map (derived from gDrawFuncList[mode] defaults plus
 * func_800BB6B0's mode switch in ovl1_11.c, which agree):
 *   0x13/0x15      display list directly at the layout pointer
 *   0x14/0x16      DObjPayloadTypeC {s32 dlistID; Gfx *dl;} pairs at the
 *                  layout pointer, terminated by dlistID == 4
 *   0x17/0x19      per layout node: word +4 IS a segment-4 DL address
 *                  (this is why the N64 asm does not relocate +4 for them)
 *   0x18/0x1A      per layout node: word +4 -> TypeC pair array
 *   0x1B/0x1D      per layout node: word +4 -> Gfx *[2] (before/after DLs)
 *   0x1C/0x1E      per layout node: word +4 -> DObjPayloadTypeI
 *                  {s32 dlistID; Gfx *before; Gfx *after;} triples,
 *                  terminated by dlistID == 4
 * Mode 0x15 is validated as a DL first and as a TypeE
 * {f32 dist; Gfx *dl;} array second (the two dispatch tables disagree for
 * it); whichever validates is swapped.
 *
 * Return type is u32 * rather than void *: the block-scope declarations the
 * callers in this file compile (func_800A8EC0/func_800A9760/func_800A9864/
 * func_800AA608) all say u32 *, and a void * definition is a conflicting
 * type to GCC. */

#include <stdlib.h>

static inline u32 pc_be32(u32 v) { return __builtin_bswap32(v); }

/* Decoded read of the big-endian blob word at p. */
static inline u32 geo_rd(const void *p) { return pc_be32(*(const u32 *)p); }
/* In-place rewrite of a blob word with a native value/pointer. */
static inline void geo_wr(void *p, u32 v) { *(u32 *)p = v; }

/* ---- swap-once machinery -------------------------------------------------
 * One bit per 4-byte blob word: "this word already holds a native value".
 * Set by the pointer-relocation writes and by every swap helper, so shared
 * subtrees (a DL called from two nodes, a payload shared by two modes, the
 * G_SETTIMG words the imgRefs pass already turned into BGHeader pointers)
 * are never swapped twice and never mistaken for raw segment addresses.
 * If the bitmap allocation ever failed, the helpers report everything as
 * already-native and swap nothing: the blob stays BE (a deterministic wrong
 * draw instead of silent corruption). */
#define GSW_MAX_ENT 1024

struct GeoSwap {
    u8 *blob;
    u32 size; /* usable payload bytes */
    u8 *bm;
    u8 *bmh;  /* second bitmap: "this word holds a rewritten HOST pointer" */
    /* display-list entry points collected by the payload pass: the blob
     * offset of the u32 slot the game reads (node word +4, payload dlist
     * word, or header +0) and the blob offset of the packed DL it refers
     * to. The widening pass rewrites each slot with a native widened-DL
     * pointer. */
    u32 ent_slot[GSW_MAX_ENT];
    u32 ent_dl[GSW_MAX_ENT];
    int ent_n;
    int ent_overflow;
};

static int gsw_marked(struct GeoSwap *g, u32 off) {
    if (g->bm == NULL) {
        return 1;
    }
    return (g->bm[off >> 5] >> ((off >> 2) & 7)) & 1;
}
static void gsw_mark(struct GeoSwap *g, u32 off) {
    if (g->bm != NULL) {
        g->bm[off >> 5] |= (u8)(1u << ((off >> 2) & 7));
    }
}
/* Native value of the word at off, whichever state it is in. */
static u32 gsw_rd(struct GeoSwap *g, u32 off) {
    u32 w = *(u32 *)(g->blob + off);
    return gsw_marked(g, off) ? w : pc_be32(w);
}
/* Store a native value (the pointer-relocation writes). */
static void gsw_put(struct GeoSwap *g, u32 off, u32 v) {
    geo_wr(g->blob + off, v);
    gsw_mark(g, off);
    if (g->bmh != NULL) {
        g->bmh[off >> 5] |= (u8)(1u << ((off >> 2) & 7));
    }
}
/* Was this word rewritten to a host pointer (vs raw/byte-swapped data)? */
static int gsw_hostptr(struct GeoSwap *g, u32 off) {
    if (g->bmh == NULL) {
        return 0;
    }
    return (g->bmh[off >> 5] >> ((off >> 2) & 7)) & 1;
}
/* Record a DL entry point for the widening pass. */
static void gsw_entry(struct GeoSwap *g, u32 slot_off, u32 dl_off) {
    if (g->ent_n >= GSW_MAX_ENT) {
        g->ent_overflow = 1;
        return;
    }
    g->ent_slot[g->ent_n] = slot_off;
    g->ent_dl[g->ent_n] = dl_off;
    g->ent_n++;
}
/* Byte-swap the whole word once; returns 1 when this call did the swap
 * (i.e. the word really was raw big-endian data until now). */
static int gsw_w32(struct GeoSwap *g, u32 off) {
    if (gsw_marked(g, off)) {
        return 0;
    }
    geo_wr(g->blob + off, pc_be32(*(u32 *)(g->blob + off)));
    gsw_mark(g, off);
    return 1;
}
/* Swap the two u16 halves of the word independently. */
static int gsw_w16p(struct GeoSwap *g, u32 off) {
    u8 *p;
    u8 t;
    if (gsw_marked(g, off)) {
        return 0;
    }
    p = g->blob + off;
    t = p[0]; p[0] = p[1]; p[1] = t;
    t = p[2]; p[2] = p[3]; p[3] = t;
    gsw_mark(g, off);
    return 1;
}
/* Swap only the u16 in the first half; the trailing two bytes stay bytes. */
static int gsw_w16hi(struct GeoSwap *g, u32 off) {
    u8 *p;
    u8 t;
    if (gsw_marked(g, off)) {
        return 0;
    }
    p = g->blob + off;
    t = p[0]; p[0] = p[1]; p[1] = t;
    gsw_mark(g, off);
    return 1;
}

static int gsw_seg4(struct GeoSwap *g, u32 w, u32 need) {
    return (w >> 24) == 4 && (w & 0xFFFFFF) + need <= g->size;
}

/* Field-wise swap of one TextureScroll node (0x78 bytes; the layout matches
 * the PORT TextureScroll in include/geo_block_header.h). Words +0x04
 * (textures) and +0x2C (palettes) were already turned into native pointers
 * by the texScroll relocation walk, so the swap-once test skips them.
 * primColor/envColor/blendColor/lightColor1/lightColor2 and the byte fields
 * around minLOD keep memory byte order (r,g,b,a) -- byte readers all over
 * the tree (renderLoadTextures, ovl6) depend on it; they are only marked so
 * no later walk touches them. */
static void gsw_texscroll(struct GeoSwap *g, u32 off) {
    /* 0=mark only, 1=u32, 2=two u16s, 3=leading u16 only */
    static const u8 kind[0x1E] = {
        3, 0, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 3, 2, 2,
        1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1,
    };
    u32 i;

    if (off + 0x78 > g->size) {
        return;
    }
    for (i = 0; i < 0x1E; i++, off += 4) {
        switch (kind[i]) {
        case 1: gsw_w32(g, off); break;
        case 2: gsw_w16p(g, off); break;
        case 3: gsw_w16hi(g, off); break;
        default: gsw_mark(g, off); break;
        }
    }
}

/* Read-only validation that a plausible F3DEX2 display list starts at off:
 * every command byte must be one the ucode knows (0x00..0x0A or
 * 0xD7..0xFF), ending at G_ENDDL or a no-push G_DL. Reads are
 * bitmap-aware, so a partially processed list still validates. */
static int gsw_dl_ok(struct GeoSwap *g, u32 off) {
    u32 n;

    if (off & 7) {
        return 0;
    }
    if (gsw_marked(g, off)) {
        return 1; /* an earlier walk already processed this list */
    }
    for (n = 0; n < 0x20000; n++) {
        u32 w0, op;
        if (off + 8 > g->size) {
            return 0;
        }
        w0 = gsw_rd(g, off);
        op = w0 >> 24;
        if (op == 0xDF) {
            return 1;
        }
        if (op == 0xDE && ((w0 >> 16) & 0xFF) != 0) {
            return 1; /* branch list: this list ends here */
        }
        if (op > 0x0A && op < 0xD7) {
            return 0;
        }
        off += 8;
    }
    return 0;
}

/* Vtx runs referenced by G_VTX: 16 bytes each -- three words of s16 pairs
 * (ob[3], flag, tc[2]) and one word of u8 colors/normals that stays. */
static void gsw_vtx(struct GeoSwap *g, u32 off, u32 n) {
    while (n--) {
        if (off + 0x10 > g->size) {
            return;
        }
        gsw_w16p(g, off);
        gsw_w16p(g, off + 4);
        gsw_w16p(g, off + 8);
        gsw_mark(g, off + 12);
        off += 0x10;
    }
}

/* Swap one display list in place: every Gfx becomes two native u32 words.
 * Follows G_DL calls/branches and G_BRANCH_Z, swaps referenced Vtx runs and
 * G_MTX matrices. Only words THIS pass swapped are interpreted as segment
 * addresses (a previously rewritten word -- e.g. a G_SETTIMG whose w1 the
 * imgRefs pass replaced with a BGHeader pointer -- is skipped by the
 * swap-once test, which matters because host bss crosses 0x04000000 and a
 * native pointer can look like a segment-4 address). */
static void gsw_dl_walk(struct GeoSwap *g, u32 off, int depth) {
    u32 half1 = 0;

    if (depth > 24 || (off & 7)) {
        return;
    }
    for (;;) {
        u32 w0, w1, op;
        int raw1;

        if (off + 8 > g->size) {
            return;
        }
        if (gsw_marked(g, off)) {
            return; /* the rest of this list was already walked */
        }
        gsw_w32(g, off);
        raw1 = gsw_w32(g, off + 4);
        w0 = *(u32 *)(g->blob + off);
        w1 = *(u32 *)(g->blob + off + 4);
        op = w0 >> 24;
        if (op == 0xDF) { /* G_ENDDL */
            return;
        }
        if (op == 0xDE) { /* G_DL */
            if (raw1 && gsw_seg4(g, w1, 8) && gsw_dl_ok(g, w1 & 0xFFFFFF)) {
                gsw_dl_walk(g, w1 & 0xFFFFFF, depth + 1);
            }
            if (((w0 >> 16) & 0xFF) != 0) {
                return; /* branch, not call */
            }
        } else if (op == 0x01) { /* G_VTX */
            if (raw1 && gsw_seg4(g, w1, 0x10)) {
                gsw_vtx(g, w1 & 0xFFFFFF, (w0 >> 12) & 0xFF);
            }
        } else if (op == 0xDA) { /* G_MTX: 64-byte fixed-point matrix */
            if (raw1 && gsw_seg4(g, w1, 0x40)) {
                u32 m = w1 & 0xFFFFFF;
                u32 i;
                for (i = 0; i < 0x40; i += 4) {
                    gsw_w32(g, m + i);
                }
            }
        } else if (op == 0xE1) { /* G_RDPHALF: may carry the next 0x04's DL target */
            half1 = w1;
        } else if (op == 0x04) { /* G_SELECT_DL (S2DEX pair) / G_BRANCH_Z */
            if (gsw_seg4(g, half1, 8) && gsw_dl_ok(g, half1 & 0xFFFFFF)) {
                gsw_dl_walk(g, half1 & 0xFFFFFF, depth + 1);
            }
        }
        off += 8;
    }
}

/* DObjPayloadTypeC pair array: {s32 dlistID; Gfx *dl;} until dlistID == 4.
 * dlistID is CPU-read (renderDrawDObj_TypeC/_TypeD), dl goes to the
 * interpreter as a segment-4 address. */
static int gsw_typec_ok(struct GeoSwap *g, u32 off) {
    u32 n;
    for (n = 0; n < 512; n++) {
        u32 id;
        if (off + 4 > g->size) {
            return 0;
        }
        id = gsw_rd(g, off);
        if (id == 4) {
            return 1;
        }
        if (id > 4) {
            return 0;
        }
        if (off + 8 > g->size) {
            return 0;
        }
        off += 8;
    }
    return 0;
}
static void gsw_typec(struct GeoSwap *g, u32 off, int depth) {
    if (!gsw_typec_ok(g, off)) {
        return;
    }
    for (;;) {
        u32 id, w;
        gsw_w32(g, off);
        id = *(u32 *)(g->blob + off);
        if (id >= 4) {
            return;
        }
        if (gsw_w32(g, off + 4)) {
            w = *(u32 *)(g->blob + off + 4);
            if (gsw_seg4(g, w, 8) && gsw_dl_ok(g, w & 0xFFFFFF)) {
                gsw_dl_walk(g, w & 0xFFFFFF, depth);
                gsw_entry(g, off + 4, w & 0xFFFFFF);
            }
        }
        off += 8;
    }
}

/* DObjPayloadTypeI triple array: {s32 dlistID; Gfx *before; Gfx *after;}
 * until dlistID == 4 (func_8001588C). */
static int gsw_typei_ok(struct GeoSwap *g, u32 off) {
    u32 n;
    for (n = 0; n < 512; n++) {
        u32 id;
        if (off + 4 > g->size) {
            return 0;
        }
        id = gsw_rd(g, off);
        if (id == 4) {
            return 1;
        }
        if (id > 4) {
            return 0;
        }
        if (off + 12 > g->size) {
            return 0;
        }
        off += 12;
    }
    return 0;
}
static void gsw_typei(struct GeoSwap *g, u32 off, int depth) {
    u32 j;
    if (!gsw_typei_ok(g, off)) {
        return;
    }
    for (;;) {
        u32 id, w;
        gsw_w32(g, off);
        id = *(u32 *)(g->blob + off);
        if (id >= 4) {
            return;
        }
        for (j = 4; j <= 8; j += 4) {
            if (gsw_w32(g, off + j)) {
                w = *(u32 *)(g->blob + off + j);
                if (w != 0 && gsw_seg4(g, w, 8) && gsw_dl_ok(g, w & 0xFFFFFF)) {
                    gsw_dl_walk(g, w & 0xFFFFFF, depth);
                    gsw_entry(g, off + j, w & 0xFFFFFF);
                }
            }
        }
        off += 12;
    }
}

/* Gfx *[2] payload (func_800156C4): two words, each 0 or a segment-4 DL. */
static void gsw_dlpair(struct GeoSwap *g, u32 off, int depth) {
    u32 i, w;
    if (off + 8 > g->size) {
        return;
    }
    for (i = 0; i < 2; i++) {
        w = gsw_rd(g, off + i * 4);
        if (w != 0 && !gsw_seg4(g, w, 8)) {
            return;
        }
    }
    for (i = 0; i < 2; i++) {
        if (gsw_w32(g, off + i * 4)) {
            w = *(u32 *)(g->blob + off + i * 4);
            if (w != 0 && gsw_dl_ok(g, w & 0xFFFFFF)) {
                gsw_dl_walk(g, w & 0xFFFFFF, depth);
                gsw_entry(g, off + i * 4, w & 0xFFFFFF);
            }
        }
    }
}

/* DObjPayloadTypeE array: {f32 drawDistance; Gfx *dl;}, last entry has
 * drawDistance == 0 (the consumer loops while drawDistance > dist^2). */
static void gsw_typee(struct GeoSwap *g, u32 off, int depth) {
    u32 o = off;
    u32 n;
    for (n = 0; n < 64; n++) {
        u32 dd, dl;
        if (o + 8 > g->size) {
            return;
        }
        dd = gsw_rd(g, o);
        dl = gsw_rd(g, o + 4);
        if (dl != 0 && !gsw_seg4(g, dl, 8)) {
            return;
        }
        if (dd == 0) {
            break;
        }
        /* must look like a positive, sanely sized f32 */
        if ((dd >> 31) != 0 || (dd >> 23) < 0x60 || (dd >> 23) > 0x9F) {
            return;
        }
        o += 8;
    }
    if (n >= 64) {
        return;
    }
    for (;;) {
        u32 dd, dl;
        gsw_w32(g, off);
        dd = *(u32 *)(g->blob + off);
        if (gsw_w32(g, off + 4)) {
            dl = *(u32 *)(g->blob + off + 4);
            if (dl != 0 && gsw_dl_ok(g, dl & 0xFFFFFF)) {
                gsw_dl_walk(g, dl & 0xFFFFFF, depth);
                gsw_entry(g, off + 4, dl & 0xFFFFFF);
            }
        }
        if (dd == 0) {
            return;
        }
        off += 8;
    }
}

/* ---- display-list widening ------------------------------------------------
 * The Fast3D fork executes NATIVE F3DGfx commands: two uintptr_t words (16
 * bytes on this LP64 host), while the blob stores packed 8-byte N64
 * commands. The fork's packed-DL normalizer only fires for registered
 * "reloc files" (pc_reloc_stubs.c registers none), so every packed DL the
 * payload pass found is rebuilt here at load time into a native widened
 * copy, and the u32 slot the game reads (layout node word +4, payload
 * dlist word, or header +0) is rewritten to point at it:
 *   - commands widen 1:1 (w0/w1 zero-extended), G_DL targets rewired to
 *     their widened copies;
 *   - G_VTX vertex runs and texture loads (G_SETTIMG + LOADBLOCK/LOADTILE/
 *     LOADTLUT) are COPIED into memory above 4 GiB and the widened w1
 *     rewritten to the copy, because the fork's low-VA guards
 *     (gfx_vtx_addr_is_unresolved and the SETTIMG guard, interpreter.cpp)
 *     treat every pointer below 4 GiB (vertices) / 256 MiB (textures) that
 *     is not in a dlopen'd module as an unresolved N64 leftover and skip
 *     the load -- and this port keeps ALL game-visible memory below 4 GiB;
 *   - the widened command buffer itself is MAP_32BIT so the game's u32
 *     slots can hold its address, which also lands it at 0x40000000+ where
 *     no N64 segment number (all < 0x10) can mangle it in SegAddr.
 * On any failure the entry slots are zeroed instead: a NULL glist makes
 * every draw path skip the model -- a safe no-draw, never corruption. The
 * buffers intentionally leak if the game's cache later evicts the blob
 * (bounded by unique model loads; a reclamation hook can come later). */

#include <sys/mman.h>

#define GW_MAX_DLS 512
#define GW_TEX_CAP 0x100000u

struct GeoWiden {
    struct GeoSwap *g;
    u32 memo_off[GW_MAX_DLS];
    uintptr_t memo_ptr[GW_MAX_DLS];
    int memo_n;
    int fail;
    u32 cmds;      /* measured commands, incl. one safety terminator per DL */
    u32 databytes; /* measured vertex + texel copy bytes */
    u8 *cmdbuf;
    u32 cmdcur;
    u32 cmdmax; /* in 16-byte commands */
    u8 *datbuf;
    u32 datcur;
    u32 datmax; /* bytes */
};

static int gw_memo_find(struct GeoWiden *w, u32 off, uintptr_t *out) {
    int i;
    for (i = 0; i < w->memo_n; i++) {
        if (w->memo_off[i] == off) {
            *out = w->memo_ptr[i];
            return 1;
        }
    }
    return 0;
}
static void gw_memo_add(struct GeoWiden *w, u32 off, uintptr_t p) {
    if (w->memo_n >= GW_MAX_DLS) {
        w->fail = 1;
        return;
    }
    w->memo_off[w->memo_n] = off;
    w->memo_ptr[w->memo_n] = p;
    w->memo_n++;
}

/* Post-swap native read of a blob word. */
static u32 gw_rd32(struct GeoSwap *g, u32 off) {
    return *(u32 *)(g->blob + off);
}

/* One DL's own linear length in commands, up to and including its
 * terminator (G_ENDDL or a no-push G_DL). abnormal = ran off the end. */
static u32 gw_linear_len(struct GeoSwap *g, u32 off, int *abnormal) {
    u32 n = 0;
    *abnormal = 1;
    while (off + 8 <= g->size && n < 0x20000) {
        u32 w0 = gw_rd32(g, off);
        u32 op = w0 >> 24;
        n++;
        if (op == 0xDF || (op == 0xDE && ((w0 >> 16) & 0xFF) != 0)) {
            *abnormal = 0;
            break;
        }
        off += 8;
    }
    return n;
}

/* Texel bytes moved by a LOADTLUT (0xF0) / LOADBLOCK (0xF3) / LOADTILE
 * (0xF4) command, given the pending SETTIMG's siz. */
static u32 gw_texbytes(u32 op, u32 w0, u32 w1, u32 siz) {
    u32 t;
    if (op == 0xF0) {
        return (((w1 >> 14) & 0x3FF) + 1) * 2;
    }
    if (op == 0xF3) {
        t = ((w1 >> 12) & 0xFFF) + 1;
    } else {
        u32 tw = (((w1 >> 12) & 0xFFF) >> 2) - (((w0 >> 12) & 0xFFF) >> 2) + 1;
        u32 th = ((w1 & 0xFFF) >> 2) - ((w0 & 0xFFF) >> 2) + 1;
        t = tw * th;
    }
    switch (siz) {
    case 0: return (t + 1) >> 1;
    case 1: return t;
    case 2: return t * 2;
    default: return t * 4;
    }
}

/* Resolve the texel source behind a (post-swap) SETTIMG w1: either an
 * imgRefs-patched host pointer (image bank block, low game arena --
 * contiguous, trusted for len) or an in-blob segment-4 offset. */
static const u8 *gw_timg_src(struct GeoSwap *g, u32 w1off, u32 w1, u32 len) {
    if (gsw_hostptr(g, w1off)) {
        return (const u8 *)(uintptr_t)w1;
    }
    if ((w1 >> 24) == 4 && (w1 & 0xFFFFFF) + len <= g->size) {
        return g->blob + (w1 & 0xFFFFFF);
    }
    return NULL;
}

static void gw_measure(struct GeoWiden *w, u32 off, int depth) {
    struct GeoSwap *g = w->g;
    uintptr_t dummy;
    int abnormal;
    u32 len, i;
    u32 pend_w1off = 0, pend_w1 = 0, pend_siz = 0;
    int pend = 0;

    if (w->fail || depth > 24) {
        w->fail = 1;
        return;
    }
    if (gw_memo_find(w, off, &dummy)) {
        return;
    }
    gw_memo_add(w, off, 1);
    len = gw_linear_len(g, off, &abnormal);
    w->cmds += len + 1;
    for (i = 0; i < len; i++) {
        u32 w0 = gw_rd32(g, off + i * 8);
        u32 w1 = gw_rd32(g, off + i * 8 + 4);
        u32 op = w0 >> 24;
        if (op == 0xDE) {
            if (gsw_seg4(g, w1, 8) && gsw_dl_ok(g, w1 & 0xFFFFFF)) {
                gw_measure(w, w1 & 0xFFFFFF, depth + 1);
            }
        } else if (op == 0xE1) {
            /* S2DEX gSPSelectDL pair: G_RDPHALF_0 (0xE1) carries a seg-4 DL
             * target and the following G_SELECT_DL (0x04) branches to it
             * (the fork's handlers take the branch unconditionally). Treat
             * it exactly like a G_DL reference. An 0xE1 not followed by
             * 0x04 is a texrect half and stays a plain copy. */
            if (i + 1 < len && (gw_rd32(g, off + (i + 1) * 8) >> 24) == 0x04 &&
                gsw_seg4(g, w1, 8) && gsw_dl_ok(g, w1 & 0xFFFFFF)) {
                gw_measure(w, w1 & 0xFFFFFF, depth + 1);
            }
        } else if (op == 0x01) {
            u32 nv = (w0 >> 12) & 0xFF;
            if (gsw_seg4(g, w1, nv * 0x10)) {
                w->databytes += nv * 0x10;
            }
        } else if (op == 0xFD) {
            pend = 1;
            pend_siz = (w0 >> 19) & 3;
            pend_w1off = off + i * 8 + 4;
            pend_w1 = w1;
        } else if (op == 0xF0 || op == 0xF3 || op == 0xF4) {
            if (pend) {
                u32 bytes = gw_texbytes(op, w0, w1, pend_siz);
                if (bytes <= GW_TEX_CAP && gw_timg_src(g, pend_w1off, pend_w1, bytes) != NULL) {
                    w->databytes += bytes;
                }
                pend = 0;
            }
        }
    }
}

static uintptr_t gw_emit(struct GeoWiden *w, u32 off, int depth) {
    struct GeoSwap *g = w->g;
    uintptr_t found;
    int abnormal;
    u32 len, i, base_idx;
    u8 *base;
    u64 *pend_slot = NULL;
    u32 pend_w1off = 0, pend_w1 = 0, pend_siz = 0;
    int kill_next_04 = 0;

    if (w->fail || depth > 24) {
        w->fail = 1;
        return 0;
    }
    if (gw_memo_find(w, off, &found)) {
        return found;
    }
    len = gw_linear_len(g, off, &abnormal);
    if (w->cmdcur + len + 1 > w->cmdmax) {
        w->fail = 1;
        return 0;
    }
    base_idx = w->cmdcur;
    w->cmdcur += len + 1;
    base = w->cmdbuf + (uintptr_t)base_idx * 16;
    gw_memo_add(w, off, (uintptr_t)base);

    for (i = 0; i < len; i++) {
        u32 w0 = gw_rd32(g, off + i * 8);
        u32 w1 = gw_rd32(g, off + i * 8 + 4);
        u32 op = w0 >> 24;
        u64 w0v = w0;
        u64 w1v = w1;
        u64 *slot = (u64 *)(base + (uintptr_t)i * 16);

        if (op == 0xDE) {
            uintptr_t child = 0;
            if (gsw_seg4(g, w1, 8) && gsw_dl_ok(g, w1 & 0xFFFFFF)) {
                child = gw_emit(w, w1 & 0xFFFFFF, depth + 1);
            }
            if (child != 0) {
                w1v = child;
            } else if (((w0 >> 16) & 0xFF) == 0) {
                w0v = 0; /* G_SPNOOP */
                w1v = 0;
            } else {
                w0v = 0xDF000000u; /* branch with no target: end here */
                w1v = 0;
            }
        } else if (op == 0xE1) {
            /* S2DEX gSPSelectDL pair (see gw_measure): the fork's handler
             * stashes this w1 verbatim and calls it when the following
             * G_SELECT_DL (0x04) executes, so it must become the widened
             * copy's host address. If the target cannot be widened, the
             * whole pair is neutralized (E1 w1 = 0 and the 0x04 becomes a
             * G_SPNOOP) so the interpreter never branches into raw packed
             * data. An 0xE1 not followed by 0x04 (texrect half) copies
             * through untouched. */
            if (i + 1 < len && (gw_rd32(g, off + (i + 1) * 8) >> 24) == 0x04) {
                uintptr_t child = 0;
                if (gsw_seg4(g, w1, 8) && gsw_dl_ok(g, w1 & 0xFFFFFF)) {
                    child = gw_emit(w, w1 & 0xFFFFFF, depth + 1);
                }
                if (child != 0) {
                    w1v = child;
                } else {
                    w1v = 0;
                    kill_next_04 = 1;
                }
            }
        } else if (op == 0x04) {
            if (kill_next_04) {
                w0v = 0; /* G_SPNOOP */
                w1v = 0;
                kill_next_04 = 0;
            }
        } else if (op == 0x01) {
            u32 nv = (w0 >> 12) & 0xFF;
            if (gsw_seg4(g, w1, nv * 0x10) && w->datcur + nv * 0x10 <= w->datmax) {
                __builtin_memcpy(w->datbuf + w->datcur, g->blob + (w1 & 0xFFFFFF), nv * 0x10);
                w1v = (uintptr_t)(w->datbuf + w->datcur);
                w->datcur += nv * 0x10;
            }
        } else if (op == 0xFD) {
            pend_slot = slot;
            pend_siz = (w0 >> 19) & 3;
            pend_w1off = off + i * 8 + 4;
            pend_w1 = w1;
        } else if (op == 0xF0 || op == 0xF3 || op == 0xF4) {
            if (pend_slot != NULL) {
                u32 bytes = gw_texbytes(op, w0, w1, pend_siz);
                const u8 *src = (bytes <= GW_TEX_CAP) ? gw_timg_src(g, pend_w1off, pend_w1, bytes) : NULL;
                if (src != NULL && w->datcur + bytes <= w->datmax) {
                    __builtin_memcpy(w->datbuf + w->datcur, src, bytes);
                    pend_slot[1] = (uintptr_t)(w->datbuf + w->datcur);
                    w->datcur += bytes;
                }
                pend_slot = NULL;
            }
        }
        slot[0] = w0v;
        slot[1] = w1v;
    }
    /* Safety terminator: reached even when the source list ran off the
     * blob without a G_ENDDL. */
    {
        u64 *slot = (u64 *)(base + (uintptr_t)len * 16);
        slot[0] = 0xDF000000u;
        slot[1] = 0;
    }
    return (uintptr_t)base;
}

static void gsw_widen_all(struct GeoSwap *g) {
    struct GeoWiden w;
    u32 cmdbytes, datbytes;
    int i;

    if (g->ent_n == 0) {
        return;
    }
    if (g->bm == NULL || g->ent_overflow) {
        goto fail;
    }
    w.g = g;
    w.memo_n = 0;
    w.fail = 0;
    w.cmds = 0;
    w.databytes = 0;
    w.cmdbuf = NULL;
    w.datbuf = NULL;
    for (i = 0; i < g->ent_n; i++) {
        gw_measure(&w, g->ent_dl[i], 0);
    }
    if (w.fail || w.cmds == 0) {
        goto fail;
    }
    cmdbytes = (w.cmds * 16 + 0xFFFu) & ~0xFFFu;
    w.cmdbuf = mmap(NULL, cmdbytes, PROT_READ | PROT_WRITE,
                    MAP_PRIVATE | MAP_ANONYMOUS | MAP_32BIT, -1, 0);
    if (w.cmdbuf == MAP_FAILED || (uintptr_t)w.cmdbuf + cmdbytes > 0xFFFFFFFFull) {
        goto fail;
    }
    datbytes = (w.databytes + 0xFFFu) & ~0xFFFu;
    if (datbytes != 0) {
        /* must land ABOVE 4 GiB to pass the fork's low-VA guards */
        w.datbuf = mmap((void *)(uintptr_t)0x200000000ull, datbytes,
                        PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (w.datbuf == MAP_FAILED || (uintptr_t)w.datbuf < 0x100000000ull) {
            if (w.datbuf != MAP_FAILED) {
                munmap(w.datbuf, datbytes);
            }
            munmap(w.cmdbuf, cmdbytes);
            goto fail;
        }
    }
    w.cmdcur = 0;
    w.cmdmax = w.cmds;
    w.datcur = 0;
    w.datmax = w.databytes;
    w.memo_n = 0;
    for (i = 0; i < g->ent_n; i++) {
        uintptr_t p = gw_emit(&w, g->ent_dl[i], 0);
        *(u32 *)(g->blob + g->ent_slot[i]) = w.fail ? 0 : (u32)p;
    }
    if (w.fail) {
        goto fail;
    }
    return;
fail:
    for (i = 0; i < g->ent_n; i++) {
        *(u32 *)(g->blob + g->ent_slot[i]) = 0;
    }
}

u32 *func_800A9250(u32 arg0, s32 arg1) {
    u32 *entry;
    u8 *blob;
    u8 *list;
    u8 *mid;
    u8 *node;
    u8 *sub;
    u8 *n;
    s32 size;
    u32 w;
    u32 mw;
    u32 sw;
    u32 off;
    u32 bank;
    u32 mode;
    struct GeoSwap g;

    entry = D_800D0184[arg0 >> 16]->geoBlockTable;
    entry += (arg0 & 0xFFFF) * 2;
    size = (entry[1] - entry[0]) | arg1;
    blob = func_800A8358(size);
    dma_read(entry[0], blob, size & 0xFFFFFC);

    g.blob = blob;
    g.size = (u32)(entry[1] - entry[0]) & 0xFFFFFC;
    g.bm = calloc((g.size >> 5) + 2, 1);
    g.bmh = calloc((g.size >> 5) + 2, 1);
    g.ent_n = 0;
    g.ent_overflow = 0;

    /* +0xC: G_SETTIMG reference list -- stride 4, 0-terminated. Each slot
     * holds a 24-bit offset to a node; the node's word +4 holds an image
     * bank id. The slot is rewritten with that (decoded) bank id -- which is
     * what func_800A8D64's compiled walk reads natively -- and the node's
     * word +4 with the BGHeader pointer func_800A8BAC resolves it to. */
    off = geo_rd(blob + 0xC) & 0xFFFFFF;
    if (off != 0) {
        list = blob + off;
        gsw_put(&g, 0xC, (u32)(uintptr_t)list);
        while ((w = geo_rd(list)) != 0) {
            node = blob + (w & 0xFFFFFF);
            bank = geo_rd(node + 4);
            gsw_put(&g, (u32)(list - blob), bank);
            gsw_put(&g, (u32)(node + 4 - blob), (u32)(uintptr_t)func_800A8BAC(bank));
            list += 4;
        }
    }

    /* +0x4: texture scroll section -- lists nested two deep, each stride 4,
     * terminated by 0x99999999, with 0 slots skipped (but still stepped
     * over). Outer and middle slots become native pointers into the blob;
     * each level-3 node is a TextureScroll whose scalar fields are swapped
     * in place (gsw_texscroll) and whose two bank-id lists at words +0x4 /
     * +0x2C become native pointers to the lists, each nonzero list slot
     * becoming a native BGHeader pointer from func_800A8BAC (called with
     * the full decoded bank-id word). */
    off = geo_rd(blob + 4) & 0xFFFFFF;
    if (off != 0) {
        list = blob + off;
        gsw_put(&g, 4, (u32)(uintptr_t)list);
        while ((w = geo_rd(list)) != 0x99999999U) {
            if (w != 0) {
                mid = blob + (w & 0xFFFFFF);
                gsw_put(&g, (u32)(list - blob), (u32)(uintptr_t)mid);
                while ((mw = geo_rd(mid)) != 0x99999999U) {
                    if (mw != 0) {
                        node = blob + (mw & 0xFFFFFF);
                        gsw_put(&g, (u32)(mid - blob), (u32)(uintptr_t)node);
                        off = geo_rd(node + 4) & 0xFFFFFF;
                        if (off != 0) {
                            sub = blob + off;
                            gsw_put(&g, (u32)(node + 4 - blob), (u32)(uintptr_t)sub);
                            while ((sw = geo_rd(sub)) != 0x99999999U) {
                                if (sw != 0) {
                                    gsw_put(&g, (u32)(sub - blob),
                                            (u32)(uintptr_t)func_800A8BAC(sw));
                                } else {
                                    gsw_mark(&g, (u32)(sub - blob));
                                }
                                sub += 4;
                            }
                        }
                        off = geo_rd(node + 0x2C) & 0xFFFFFF;
                        if (off != 0) {
                            sub = blob + off;
                            gsw_put(&g, (u32)(node + 0x2C - blob), (u32)(uintptr_t)sub);
                            while ((sw = geo_rd(sub)) != 0x99999999U) {
                                if (sw != 0) {
                                    gsw_put(&g, (u32)(sub - blob),
                                            (u32)(uintptr_t)func_800A8BAC(sw));
                                } else {
                                    gsw_mark(&g, (u32)(sub - blob));
                                }
                                sub += 4;
                            }
                        }
                        gsw_texscroll(&g, (u32)(node - blob));
                    }
                    mid += 4;
                }
            }
            list += 4;
        }
    }

    /* +0x0: layout section pointer. The asm relocates it unconditionally,
     * so a 0 offset yields the blob base itself. */
    w = geo_rd(blob + 0x0);
    n = blob + (w & 0xFFFFFF);
    gsw_put(&g, 0, (u32)(uintptr_t)n);

    /* +0x18: animation refs pointer -- only when the count at +0x14 and the
     * word itself are both nonzero. PORT extra: the section it points at is
     * an array of numAnimations u32 anim-block ids, and its compiled
     * consumers read it natively (func_800F6E30 walks all of them,
     * func_800F72B0 reads [0]/[1] through seg[6]), so byte-swap the ids in
     * place. gsw_w32 is bitmap-guarded, so nothing that another walk
     * already made native can be double-swapped. */
    if (geo_rd(blob + 0x14) != 0) {
        w = geo_rd(blob + 0x18);
        if (w != 0) {
            u32 acnt = geo_rd(blob + 0x14);
            u32 aoff = w & 0xFFFFFF;
            gsw_put(&g, 0x18, (u32)(uintptr_t)(blob + aoff));
            while (acnt != 0 && aoff + 4 <= g.size) {
                gsw_w32(&g, aoff);
                aoff += 4;
                acnt--;
            }
        }
    }

    mode = geo_rd(blob + 8);

    /* +0x8: layout mode. For modes 0x18 and 0x1A..0x1E the layout section
     * is an array of 0x2C-byte nodes ending at a node whose type word (+0)
     * is 0x12: word +4 of every node before the terminator becomes a native
     * pointer into the blob (0 stays 0), exactly like the N64 asm. */
    switch (mode) {
    case 0x18:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
        if (geo_rd(n) != 0x12) {
            u8 *nn = n;
            for (;;) {
                w = geo_rd(nn + 4);
                if (w != 0) {
                    gsw_put(&g, (u32)(nn + 4 - blob), (u32)(uintptr_t)(blob + (w & 0xFFFFFF)));
                }
                w = geo_rd(nn + 0x2C);
                nn += 0x2C;
                if (w == 0x12) {
                    break;
                }
            }
        }
        break;
    }

    /* PORT extra 1: byte-swap the layout node array itself for the modes
     * whose consumers (func_800AF4BC -> func_8000F980/func_8000FB10) walk
     * it natively as struct UnkE4E4Arg. Word +4 is skipped automatically by
     * the swap-once test where the walk above already made it a pointer;
     * for 0x17/0x19 it is swapped like any scalar (it holds a segment-4 DL
     * address the DObj hands straight to the interpreter). Only the type
     * word of the 0x12 terminator is touched -- the bytes after it belong
     * to other sections. */
    if (g.bm != NULL && mode >= 0x17 && mode <= 0x1E) {
        off = (u32)(n - blob);
        for (;;) {
            u32 t;
            u32 i;
            if (off + 4 > g.size) {
                break;
            }
            gsw_w32(&g, off);
            t = *(u32 *)(blob + off);
            if (t == 0x12) {
                break;
            }
            if (off + 0x2C > g.size) {
                break;
            }
            gsw_w32(&g, off + 4);
            for (i = 8; i < 0x2C; i += 4) {
                gsw_w32(&g, off + i);
            }
            off += 0x2C;
        }
    }

    /* PORT extra 2: swap the draw payloads and display lists (map above). */
    if (g.bm != NULL) {
        switch (mode) {
        case 0x13:
        case 0x15:
            off = (u32)(n - blob);
            if (off < g.size && gsw_dl_ok(&g, off)) {
                gsw_dl_walk(&g, off, 0);
                gsw_entry(&g, 0, off); /* header +0 doubles as the DL slot */
            } else if (mode == 0x15) {
                gsw_typee(&g, off, 0);
            }
            break;
        case 0x14:
        case 0x16:
            gsw_typec(&g, (u32)(n - blob), 0);
            break;
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
        case 0x1C:
        case 0x1D:
        case 0x1E:
            off = (u32)(n - blob);
            for (;;) {
                u32 t;
                if (off + 4 > g.size) {
                    break;
                }
                t = *(u32 *)(blob + off); /* native since extra 1 */
                if (t == 0x12) {
                    break;
                }
                if (off + 0x2C > g.size) {
                    break;
                }
                w = *(u32 *)(blob + off + 4);
                if (mode == 0x17 || mode == 0x19) {
                    /* word +4 is itself a segment-4 DL address */
                    if (gsw_seg4(&g, w, 8) && gsw_dl_ok(&g, w & 0xFFFFFF)) {
                        gsw_dl_walk(&g, w & 0xFFFFFF, 0);
                        gsw_entry(&g, off + 4, w & 0xFFFFFF);
                    }
                } else if (w != 0) {
                    /* word +4 is a native pointer to an in-blob payload */
                    u8 *p = (u8 *)(uintptr_t)w;
                    if (p > blob && p < blob + g.size) {
                        u32 poff = (u32)(p - blob);
                        if (mode == 0x18 || mode == 0x1A) {
                            gsw_typec(&g, poff, 0);
                        } else if (mode == 0x1B || mode == 0x1D) {
                            gsw_dlpair(&g, poff, 0);
                        } else {
                            gsw_typei(&g, poff, 0);
                        }
                    }
                }
                off += 0x2C;
            }
            break;
        }

        /* PORT extra 2b: widen every collected packed DL into native
         * F3DGfx and rewire the slots the game reads (comment block above
         * gsw_widen_all). */
        gsw_widen_all(&g);
    }

    /* PORT extra 3: make the header scalars native for their compiled
     * readers (layoutMode, numAnimations, lenLayout). +0x10 (vtxRefs) has
     * no compiled consumer and stays BE. Unconditional (not via the
     * swap-once helpers) so the read sites below stay correct even if the
     * bitmap allocation failed and the deep swaps were skipped. */
    geo_wr(blob + 0x8, mode);
    geo_wr(blob + 0x14, geo_rd(blob + 0x14));
    geo_wr(blob + 0x1C, geo_rd(blob + 0x1C));
    gsw_mark(&g, 0x8);
    gsw_mark(&g, 0x14);
    gsw_mark(&g, 0x1C);

    {
        extern void pc_geoload_debug(u32 id, u32 mode, u32 size, const void *blob, u32 layoutOff);
        pc_geoload_debug(arg0, mode, g.size, blob, (u32)(n - blob));
    }

    free(g.bm);
    free(g.bmh);
    return (u32 *)blob;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9250.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 54/85. Instruction-for-instruction the same function --
 * including IDO's automatic unroll-by-4 of the relocation loop with its
 * `-(n & 3)` remainder pre-loop, which the plain `while (n != 0)` written
 * here reproduces exactly. The residue is entirely (a) compiler-temp SLOT
 * placement: the ROM spills base/entry/size/buf to 0x18/0x1C/0x2C/0x24 with
 * gaps at 0x20 and 0x28 (frame 0x30), IDO packs them at 0x20/0x18/0x24/0x1C
 * (frame 0x28), and (b) the one-off scratch-register numbering that follows.
 * Pad locals do not move it (unused locals are dropped before slot
 * assignment); reordering the declaration list moved it 57 -> 54. Modelled
 * on the MATCHED clone func_800A8CE0 above, which needed two pads for the
 * same 0x30 frame -- the difference here is that this function's four spills
 * are compiler temps, not user locals. Solved semantics: bank entry is
 * D_800D0184[arg0 >> 16]->animBlockTable[arg0 & 0xFFFF] with N64 stride 4
 * (NOT the PORT arm's widened 8), the DMA source is entry[0] + animROMOffset,
 * size is (entry[1] - entry[0]) | 2 masked with 0xFFFFFC for the transfer,
 * and the relocation is IN PLACE: buf[0] += buf, then for each of buf[2]
 * entries starting at buf+0xC, *p += buf and **p += buf. */
void *func_800A94F4(s32 arg0) {
    s32 size;
    void *buf;
    u32 *entry;
    s32 base;
    s32 *p;
    s32 n;
    s32 *q;

    entry = D_800D0184[arg0 >> 16]->animBlockTable;
    base = (s32) D_800D0184[arg0 >> 16]->animROMOffset;
    entry += arg0 & 0xFFFF;
    size = (entry[1] - entry[0]) | 2;
    buf = (void *) func_800A8358(size);
    dma_read(entry[0] + base, buf, size & 0xFFFFFC);
    n = ((s32 *) buf)[2];
    p = (s32 *) buf + 3;
    ((s32 *) buf)[0] = ((s32 *) buf)[0] + (s32) buf;
    while (n != 0) {
        q = (s32 *) (*p + (s32) buf);
        *p = (s32) q;
        *q = *q + (s32) buf;
        p++;
        n--;
    }
    return buf;
}
#elif defined(PORT)
/* PORT: the ANIM BLOCK loader/relocator, written from
 * asm/nonmatchings/ovl1/ovl1_3/func_800A94F4.s in the style of
 * func_800A9250's PORT arm above (be32 reads of the raw ROM bytes, native
 * pointer writes).
 *
 * The N64 function DMAs bank D_800D0184[id>>16]'s anim block (id&0xFFFF)
 * in -- table at bank +0x10, one u32 ROM offset per entry, [i+1]-[i] is the
 * size, dma source is entry + bank->animROMOffset -- and then walks the
 * small relocation table in the header:
 *   +0x00  offset -> becomes a pointer into the block (unconditionally)
 *   +0x04  block kind (0 = model anims, 1 = texture anims, 2 = camera)
 *   +0x08  relocation count N
 *   +0x0C  N u32 slots; each slot holds an offset X. The slot is rewritten
 *          to (base + X), and the word AT X is itself an offset that is
 *          rewritten to a pointer the same way.
 * Everything the reloc table does not touch is AnimCmd stream data: u32
 * command words and f32 values, consumed via `union AnimCmd { u32 w; f32 f;
 * void *ptr; }` -- including the jump/goto targets inside the streams,
 * which the table DOES touch (raw ROM cannot hold a VA, so every ->ptr a
 * consumer reads must appear in the table).
 *
 * The LP64 wrinkle: every consumer walks this data through AnimCmd (8
 * bytes on the host: `ptr` is 64-bit and w/f alias its low half) and
 * through AnimCmd** and AnimCmd*** pointer arrays (8-byte stride). So instead
 * of relocating in place, this arm WIDENS the block: every 4-byte word of
 * the original becomes one 8-byte cell (original offset X lives at 2*X),
 * scalar words byte-swapped into the low half with a zero high half --
 * which is exactly the u32 w / f32 f view little-endian AnimCmd expects --
 * and every reloc-table word rewritten as a full native pointer to the
 * widened offset of its target. All consumers then work unmodified:
 *   - animSetModelTreeAnimation / func_800B21FC / func_800B2288 /
 *     animGetTotalDuration walk AnimCmd** and AnimCmd*** arrays with host
 *     stride, and the cells ARE host-stride;
 *   - animProcessModelAnimation's `animList->w/.f` reads the low halves,
 *     `animList->ptr` (ANIM_CMD_SET_ANIMATION/JUMP/13) reads relocated
 *     cells that hold real host pointers;
 *   - `*(u32 *)block` / `*(GObj **)block` header reads (func_800AAF34,
 *     func_800A9DE4 and friends, plylib's DestructAnimBank) both see the
 *     +0x00 pointer, because the whole game arena sits below 4 GiB;
 *   - struct AnimBlock->unk4 reads land on byte +8 on LP64, which is where
 *     the widened kind word lives (func_800A9C78 works unchanged;
 *     func_800A9B48 indexes with a u32* and gets a one-line PORT fix).
 * The doubled allocation comes from the same cache the N64 block used. */

/* The in-repo libc shims (include/libc) don't declare these. */
extern void *malloc(size_t);
extern void *memset(void *, int, size_t);
extern void pc_animload_debug(u32 id, u32 bytes, u32 kind, u32 relocs, const void *blk);

u32 *func_800A94F4(s32 arg0) {
    struct BankHeader *bank;
    u32 *entry;
    u32 rom;
    u32 nbytes; /* packed payload bytes, as the N64 DMA'd them */
    u32 nwords;
    u8 *raw;    /* temporary big-endian copy straight off the cartridge */
    u32 *cells; /* the widened block handed to the game */
    u32 i;
    u32 count;

    bank = D_800D0184[(u32)arg0 >> 16];
    entry = bank->animBlockTable + (arg0 & 0xFFFF);
    rom = (u32)(uintptr_t)bank->animROMOffset;
    nbytes = (entry[1] - entry[0]) & 0xFFFFFC;
    nwords = nbytes >> 2;

    cells = (u32 *)func_800A8358((s32)((nbytes * 2) | 2));
    raw = malloc(nbytes < 0x10 ? 0x10 : nbytes);
    if (raw == NULL) {
        /* Cannot happen in practice; a zeroed header at least makes every
         * consumer see "no anims" instead of reading junk. */
        memset(cells, 0, nbytes * 2);
        return cells;
    }
    dma_read(entry[0] + rom, raw, nbytes);

    /* widen: cell i = native value of word i, high half zero */
    for (i = 0; i < nwords; i++) {
        cells[i * 2] = geo_rd(raw + i * 4);
        cells[i * 2 + 1] = 0;
    }

    /* +0x00: unconditionally an offset -> pointer */
    if (nwords != 0) {
        u32 off = geo_rd(raw + 0);
        if ((off & 3) == 0 && off < nbytes) {
            *(u64 *)&cells[0] = (u64)(uintptr_t)((u8 *)cells + off * 2);
        }
    }

    /* reloc table: N slots at +0x0C; slot -> pointer, *target -> pointer.
     * Targets decode from the pristine BE copy, so a duplicated table
     * entry stays idempotent instead of double-relocating. */
    count = (nwords > 2) ? geo_rd(raw + 8) : 0;
    for (i = 0; i < count; i++) {
        u32 slot = 0xC + i * 4;
        u32 off;
        u32 tgt;
        if (slot + 4 > nbytes) {
            break;
        }
        off = geo_rd(raw + slot);
        if ((off & 3) != 0 || off + 4 > nbytes) {
            continue;
        }
        *(u64 *)&cells[slot / 2] = (u64)(uintptr_t)((u8 *)cells + off * 2);
        tgt = geo_rd(raw + off);
        if ((tgt & 3) == 0 && tgt < nbytes) {
            *(u64 *)&cells[off / 2] = (u64)(uintptr_t)((u8 *)cells + tgt * 2);
        }
    }

    pc_animload_debug((u32)arg0, nbytes, nwords > 1 ? cells[2] : 0, count, cells);

    free(raw);
    return cells;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A94F4.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: DIFF 69/70, but the switch itself is EXACT and that was the whole
 * puzzle: the ROM's dispatch is `sltiu 0x20` / `beq 0x3E7` in front of a
 * 15-entry jump table at 0x11, which only appears if the switch also carries
 * an EMPTY `case 0x1F` and an EMPTY `case 0x3E7` -- without those two arms
 * IDO emits a 14-entry table and no 0x3E7 test (that was 67/70 -> the right
 * shape). Remaining residue: the ROM parks arg0 in $s0 across the call
 * (frame 0x20, `sw s0`/`or s0,a0`), IDO instead moves it to $a3 and spills
 * that around the jal (frame 0x18), which shifts every later instruction one
 * slot. Unmoved by a local pointer copy, by early returns from each arm, or
 * by using the copy in the switch expression. Solved semantics: layout is
 * arg0[0] -> D_800DFA10[objId], texScroll is arg0[1] -> D_800DFD90[objId],
 * both handed with D_800DFBD0[objId] to func_800AF618 (modes 0x11-0x16) or
 * func_800AF4BC (0x17-0x1E), and the function returns arg0. */
void *func_800A9648(u32 *arg0) {
    /* Kept in-body, and deliberately NOT the same spelling as the PORT arm
     * below: this draft carries the layout/texScroll pair as u32 words (the
     * shape the listing has), the PORT arm carries them as host pointers.
     * The two arms are mutually exclusive and neither is compiled by the N64
     * build. ovl1_7.c's real signature is
     * (UnkE4E4Arg *, TextureScroll ***, DObj **); reconciling all three needs
     * those types exported from a header, which is a coordinator job. */
    void func_800AF4BC(u32, u32, void *);
    void func_800AF618(u32, u32, void *);
    u32 *p;
    u32 layout;
    u32 texScroll;

    p = arg0;
    switch (p[2]) {
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
        layout = p[0];
        D_800DFA10[omCurrentObj->objId] = layout;
        texScroll = p[1];
        D_800DFD90[omCurrentObj->objId] = (u32 *) texScroll;
        func_800AF618(layout, texScroll, D_800DFBD0[omCurrentObj->objId]);
        break;
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
        layout = p[0];
        D_800DFA10[omCurrentObj->objId] = layout;
        texScroll = p[1];
        D_800DFD90[omCurrentObj->objId] = (u32 *) texScroll;
        func_800AF4BC(layout, texScroll, D_800DFBD0[omCurrentObj->objId]);
        break;
    case 0x1F:
        break;
    case 0x3E7:
        break;
    }
    return p;
}
#elif defined(PORT)
/* PORT: still assembly on the matching build; the m2c sketch above is not
 * compilable. Dispatch on the geo blob's layoutMode: store the layout
 * pointer (header +0x00) and texScroll pointer (+0x04) -- both already
 * native host pointers after func_800A9250's PORT relocation -- and hand
 * them to the per-family setup. layoutMode (+0x08) is byte-swapped in
 * place by the relocator, so it is a plain native read here. */
void *func_800A9648(u32 *arg0) {
    void func_800AF4BC(void *, void *, void *);
    void func_800AF618(void *, void *, void *);
    u32 mode;
    void *layout;
    void *texScroll;

    mode = arg0[2];
    layout = (void *)(uintptr_t)arg0[0];
    texScroll = (void *)(uintptr_t)arg0[1];
    if (mode >= 0x11 && mode <= 0x16) {
        D_800DFA10[omCurrentObj->objId] = layout;
        D_800DFD90[omCurrentObj->objId] = texScroll;
        func_800AF618(layout, texScroll, D_800DFBD0[omCurrentObj->objId]);
    } else if (mode >= 0x17 && mode <= 0x1E) {
        D_800DFA10[omCurrentObj->objId] = layout;
        D_800DFD90[omCurrentObj->objId] = texScroll;
        func_800AF4BC(layout, texScroll, D_800DFBD0[omCurrentObj->objId]);
    }
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9648.s")
#endif

void func_800A9760(u32 arg0) {
    u32 **slot;
    u32 *ptr;

    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = *slot;
        func_800A8564((struct CacheLine *)*slot, 1);
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(gSegment4StartArray[omCurrentObj->objId]);
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 35/96, register naming only. The frame (0x20, no saved
 * registers), both parameter homes at 0x24/0x28, the ptr/slot spills at
 * 0x1C/0x18 and the whole sentinel sequence match; what is left is that the
 * ROM keeps the slot pointer in $a3 and the cached value in $t0 while IDO
 * swaps the two, plus the one-slot scheduling that follows. Measured, and
 * the big lever here: writing the hit arm as `ptr = *slot;` BEFORE the
 * gSegment4StartArray store puts ptr in a callee-saved register (frame 0x28,
 * 80/96); storing to gSegment4StartArray first and assigning ptr second
 * reproduces the ROM's stack home -- 80 -> 35. Introducing a named local for
 * the tested value costs 18 (53/96); the ROM's test value and the call's
 * operand are two separate loads of *slot. Solved semantics: arg1/arg2 are
 * u32 and the 99999 sentinel is compared AS A FLOAT (`arg1 == 99999.0f`,
 * which is what emits the mtc1/cvt.s.w/bgez unsigned-conversion sequence
 * against the D_800D5DD8 literal), the arg1 default is ptr[2] and arg2's is
 * 0x10, and func_800AF9B8 takes (u16, u8) -- hence the lhu 0x26/lbu 0x2B
 * reads out of the parameter homes. */
void func_800A9864(u32 arg0, u32 arg1, u32 arg2) {
    u32 *ptr;
    u32 **slot;

    D_800E02D0[omCurrentObj->objId] = arg0;
    slot = D_800D00C4[arg0 >> 0x10] + (arg0 & 0xFFFF);
    if (*slot != NULL) {
        gSegment4StartArray[omCurrentObj->objId] = *slot;
        ptr = *slot;
        func_800A8564((struct CacheLine *) *slot, 1);
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    if (arg1 == 99999.0f) {
        arg1 = ptr[2];
    }
    if (arg2 == 99999.0f) {
        arg2 = 0x10;
    }
    func_800AF9B8(arg1, arg2);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(ptr);
}
#elif defined(PORT)
/* PORT: behavioral port from the asm listing, modeled on the matched sibling
 * func_800A9760 above -- identical bank-slot bind plus two sentinel-defaulted
 * animation args handed to func_800AF9B8. 99999 (D_800D5DD8) means "use the
 * default": arg1 falls back to the entry's word at +8 (layoutMode, made
 * native in place by func_800A9250's PORT relocator), arg2 to 0x10. */
void func_800A9864(u32 arg0, s32 arg1, s32 arg2) {
    u32 **slot;
    u32 *ptr;

    slot = &D_800D00C4[arg0 >> 16][arg0 & 0xFFFF];
    D_800E02D0[omCurrentObj->objId] = arg0;
    if (*slot != NULL) {
        ptr = *slot;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
        func_800A8564((struct CacheLine *)ptr, 1);
    } else {
        ptr = func_800A9250(arg0, 3);
        *slot = ptr;
        gSegment4StartArray[omCurrentObj->objId] = ptr;
    }
    func_800A9D64(omCurrentObj->objId);
    if ((u32)arg1 == 99999) {
        arg1 = (s32)ptr[2];
    }
    if ((u32)arg2 == 99999) {
        arg2 = 0x10;
    }
    func_800AF9B8((u16)arg1, (u8)arg2);
    func_800A99E4(omCurrentObj->objId);
    func_800A9A2C(omCurrentObj->objId);
    func_800A9648(ptr);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9864.s")
#endif

void func_800A99E4(s32 track) {
    if ((u32)D_800DFBD0[track] != -1) {
        func_800A8578((u32)D_800DFBD0[track] | 1);
    }
    D_800DFBD0[track] = (struct DObj**)-1;
}

void func_800A9A2C(s32 arg0) {
    u32 *temp_v0;
    s32 temp_v1;

    temp_v0 = gSegment4StartArray[arg0];
    /* Word +0x1C of the geo blob (lenLayout / DObj-table count) is
     * byte-swapped in place by func_800A9250's PORT relocator, so the
     * native read below is right on the host too. (It used to be left
     * big-endian: read natively it was ~0x2000000; *4 asked the cache
     * allocator for 128MB and its eviction loop spun forever -- the
     * measured "game stalls after 8 frames" hang.) */
    temp_v1 = temp_v0[7];
    if (temp_v1 == 0) {
        D_800DFBD0[omCurrentObj->objId] = (struct DObj **)-1;
        return;
    }
#ifdef PORT
    /* This table is filled as DObj* entries (func_8000F980/func_8000FB10's
     * `*arg2++ = dobj`), which are 8 bytes on the LP64 host: sizing it at
     * count*4 made every model bind overflow its cache block by count*4
     * bytes and shred the neighboring free-list headers (measured: DObj
     * pointers 0x14a8xxx sitting in a bin-1 CacheLine's size field). */
    D_800DFBD0[omCurrentObj->objId] =
        (struct DObj **)func_800A8358((s32)((temp_v1 * sizeof(struct DObj *)) | 1));
#else
    D_800DFBD0[omCurrentObj->objId] = (struct DObj **)func_800A8358((temp_v1 * 4) | 1);
#endif
}

// `arg0 &= 0xFFFF;` as the scratch is load-bearing -- see func_800A89E0.
void *func_800A9AA8(u32 arg0, s32 arg1) {
    s32 size;
    void *buf;
    u32 *entry;
    u32 *rom;
    struct BankHeader *bank;

    bank = D_800D0184[arg0 >> 16];
    entry = bank->miscBlockTable;
    rom = bank->miscROMOffset;
    arg0 &= 0xFFFF;
    entry += arg0;
    size = ((entry[1] - entry[0]) + 3) & 0xFFFFFC;
    buf = (void *)func_800A8358(size | arg1);
    dma_read(entry[0] + (u32)rom, buf, size & 0xFFFFFC);
    return buf;
}

/* FACTORY: 37/76 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
s32 func_800A9B48(s32 arg0) {
    u32 *temp_v0;
    GObj *temp_v1;
    s32 temp_a2;
    u32 *var_a0;
    u32 temp_v0_2;

    temp_v0 = func_800A94F4(arg0);
#ifdef PORT
    /* The PORT loader returns a WIDENED block (8-byte cells, see the
     * func_800A94F4 PORT arm): the kind word that lived at byte +4 lives at
     * byte +8 (low half of cell 1). */
    temp_a2 = temp_v0[2];
#else
    temp_a2 = temp_v0[1];
#endif
    if (temp_a2 != 0) {
        temp_v1 = omCurrentObj;
        var_a0 = &D_800DF850[temp_v1->objId];
        temp_v0_2 = *var_a0;
        if (temp_v0_2 != -1) {
            func_800A8578(temp_v0_2 | 2, temp_v0, temp_a2);
            temp_v1 = omCurrentObj;
            var_a0 = &D_800DF850[temp_v1->objId];
        }
        *var_a0 = (u32)temp_v0;
        D_800E0110[temp_v1->objId] = arg0;
    } else {
        temp_v1 = omCurrentObj;
        var_a0 = (u32 *)&D_800DF690[temp_v1->objId];
        temp_v0_2 = *var_a0;
        if (temp_v0_2 != -1) {
            func_800A8578(temp_v0_2 | 2, temp_v0, temp_a2);
            temp_v1 = omCurrentObj;
            var_a0 = (u32 *)&D_800DF690[temp_v1->objId];
        }
        *var_a0 = (u32)temp_v0;
        D_800DFF50[temp_v1->objId] = arg0;
    }
    return temp_a2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9B48.s")
#endif
// Draft, 30/59: structure, frame (the two pads are load-bearing) and every
// spill slot layout are right. Residue is the one-slot register rotation --
// the ROM reuses $v0 for the loaded table entry and keeps the block pointer
// in $a2/flag in $a3, where IDO reserves $v0 and shifts to $a3/$t0.
/* FACTORY: 30/59 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
s32 func_800A9C78(s32 arg0, s32 arg1) {
    s32 pad0;
    struct AnimBlock *temp_v0;
    s32 pad1;
    s32 temp_a3;

    temp_v0 = (struct AnimBlock *)func_800A94F4(arg0);
    temp_a3 = temp_v0->unk4;
    if (temp_a3 != 0) {
        if (D_800DF850[arg1] != -1) {
            func_800A8578(D_800DF850[arg1] | 2, D_800DF850[arg1]);
        }
        D_800DF850[arg1] = (u32)temp_v0;
        D_800E0110[arg1] = arg0;
    } else {
        if (D_800DF690[arg1].as_u32 != -1) {
            func_800A8578(D_800DF690[arg1].as_u32 | 2, D_800DF690[arg1].as_u32);
        }
        D_800DF690[arg1].as_u32 = (u32)temp_v0;
        D_800DFF50[arg1] = arg0;
    }
    return temp_a3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800A9C78.s")
#endif

void func_800A9D64(s32 track) {
    if (D_800DF690[track].as_u32 != -1) {
        func_800A8578(D_800DF690[track].as_u32 | 2, D_800DF690[track].as_u32);
        D_800DF690[track].as_u32 = -1;
    }
    if (D_800DF850[track] != -1) {
        func_800A8578(D_800DF850[track] | 2, D_800DF850[track]);
        D_800DF850[track] = -1;
    }
}

void func_800A9DE4(s32 arg0, f32 arg1) {
    if ((arg0 != D_800DFF50[omCurrentObj->objId]) && (arg0 != D_800E0110[omCurrentObj->objId])) {
        if (func_800A9B48(arg0) != 0) {
            func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
            return;
        }
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
    }
}

void func_800A9EA4(s32 arg0) {
    func_800A9DE4(arg0, 0.0f);
}

void func_800A9EC4(s32 arg0, f32 arg1, u16 arg2) {
    if ((arg0 != D_800DFF50[omCurrentObj->objId]) && (arg0 != D_800E0110[omCurrentObj->objId])) {
        if (func_800A9B48(arg0) != 0) {
            func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
            func_800AF09C(arg2);
            return;
        }
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
        func_800AEFFC(arg2);
    }
}

void func_800A9F98(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
}

void func_800AA018(s32 arg0) {
    func_800A9F98(arg0, 0.0f);
}

void func_800AA038(s32 arg0, f32 arg1, s32 arg2) {
    if (func_800A9C78(arg0, arg2) != 0) {
        func_800AEFA4(*(struct GObj **)D_800DF850[arg2], arg1, D_800DE350[arg2]);
        return;
    }
    func_800AEF0C((struct GObj *)*D_800DF690[arg2].as_u32p, arg1, D_800DE350[arg2]);
}

void func_800AA0C4(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C(1);
    } else {
        func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
        func_800AF27C();
    }
}

void func_800AA154(s32 arg0) {
    func_800AA0C4(arg0, 0.0f);
}

void func_800AA174(void) {
    omCurrentObj->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    omCurrentObj->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
}

void func_800AA2A0(u32 arg0) {
    func_800A9760(arg0);
    func_800AA174();
}

void func_800AA2C8(u32 arg0, s32 arg1, s32 arg2) {
    func_800A9864(arg0, arg1, arg2);
    func_800AA174();
}

void func_800AA2F0(s32 arg0, f32 arg1) {
    if (func_800A9B48(arg0) != 0) {
        func_800B2288((AnimCmd ***)D_800DF850[omCurrentObj->objId], arg1);
        return;
    }
    func_800B21FC((AnimCmd ***)D_800DF690[omCurrentObj->objId].as_u32, arg1);
}

s32 func_800AA368(DObj *arg0) {
    u32 *temp_v1;

    if (arg0->timeRemaining == -3.4028235e38f) {
        temp_v1 = (u32 *)D_800DFA10[omCurrentObj->objId];
        gSegment4StartArray[omCurrentObj->objId] = temp_v1;
        D_800DFA10[omCurrentObj->objId] = temp_v1[0];
        D_800DFD90[omCurrentObj->objId] = (u32 *)temp_v1[1];
        return 1;
    }
    return 0;
}

void func_800AA3F0(DObj *arg0) {
    u32 *temp_v0;

    while (1) {
        if (arg0->timeRemaining == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
    temp_v0 = (u32 *)D_800DFA10[omCurrentObj->objId];
    gSegment4StartArray[omCurrentObj->objId] = temp_v0;
    D_800DFA10[omCurrentObj->objId] = temp_v0[0];
    D_800DFD90[omCurrentObj->objId] = (u32 *)temp_v0[1];
}

#ifndef PORT
/* FACTORY: DIFF 24/74, pure one-slot temp-register rotation. From the
 * D_800D00C4 lookup onward IDO numbers every scratch register one higher
 * than the ROM (t4/t0/t1/t5/t2 vs t5/t1/t2/t6/t3); the instruction stream,
 * scheduling, branch shape, frame (0x28) and argument homes are identical.
 * Measured: removing the `cached` temp, inlining the *slot test and splitting
 * the slot computation into two statements all leave it at 24; moving the
 * slot computation between the two stores is what took it from 26 to 24.
 * Solved semantics: the cache slot is &D_800D00C4[id >> 16][id & 0xFFFF],
 * func_800A8564 takes 2 args and RE-READS *slot for its first (the ROM
 * loads 0(v1) twice), func_800A9250 takes 2 args, and the tail passes
 * *D_800DF690[objId] and *(u32 *)D_800DFA10[objId] -- both dereferenced
 * once, not the array cells themselves.
 * MATCHED 2026-08-26: the "genuine temp-rotation floor" was the m2c
 * `id = omCurrentObj->objId` cache for the tail call (LEVER 4/97, found by
 * objid_inline_sweep). Spelling the field at both tail uses is 24 -> 0:
 * the re-read is what makes IDO number the scratch registers the ROM's way. */
void func_800AA49C(DObj *arg0, s32 arg1, f32 arg2, u32 arg3, f32 arg4) {
    u32 *slot;
    u32 loaded;

    D_800E02D0[omCurrentObj->objId] = arg3;
    slot = (u32 *) (D_800D00C4[arg3 >> 0x10] + (arg3 & 0xFFFF));
    D_800DFD90[omCurrentObj->objId] = (u32 *) arg0;
    if (*slot != 0) {
        D_800DFA10[omCurrentObj->objId] = *slot;
        func_800A8564((struct CacheLine *) *slot, 1);
    } else {
        loaded = (u32) func_800A9250(arg3, 3);
        *slot = loaded;
        D_800DFA10[omCurrentObj->objId] = loaded;
    }
    func_800A9B48(arg1);
    func_800B1FD0(arg0, *D_800DF690[omCurrentObj->objId].as_u32p, arg2,
                  *(u32 *) D_800DFA10[omCurrentObj->objId], arg4);
}
#else
/* Bind animation bank arg3 to the current object (draft above, completed):
 * record the id and root DObj, fetch-or-load the bank through the
 * D_800D00C4 cache (func_800A8564 ref / func_800A9250 load), then start
 * the anim via the subtree walker. The u32 cells hold host addresses
 * (below-4GB contract, same convention as the compiled reader above). */
void func_800AA49C(DObj *arg0, s32 arg1, f32 arg2, u32 arg3, f32 arg4) {
    u32 objId = omCurrentObj->objId;
    u32 **slot;

    D_800E02D0[objId] = arg3;
    D_800DFD90[objId] = (u32 *) arg0;
    slot = &D_800D00C4[arg3 >> 0x10][arg3 & 0xFFFF];
    if (*slot != NULL) {
        D_800DFA10[objId] = (u32) (uintptr_t) *slot;
        func_800A8564((struct CacheLine *) *slot, 1);
    } else {
        u32 *loaded = func_800A9250(arg3, 3);

        *slot = loaded;
        D_800DFA10[objId] = (u32) (uintptr_t) loaded;
    }
    func_800A9B48(arg1);
    func_800B1FD0(arg0, *(u32 *) (uintptr_t) D_800DF690[objId].as_u32, arg2,
                  *(u32 *) (uintptr_t) D_800DFA10[objId], arg4);
}
#endif

void func_800AA5C4(s32 arg0, u32 arg1, f32 arg2) {
    func_800AA49C(omCurrentObj->data.dobj->firstChild, arg0, 0.0f, arg1, arg2);
}

/* FACTORY: 65/98 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
// https://decomp.me/scratch/fS0Iu
void func_800AA608(DObj *dobj, s32 arg1, f32 arg2, u32 model, f32 arg4) {
    /* K&R, not a prototype: func_800A9250 is called with three arguments at
     * line ~607 and FOUR at ~680, which no single prototype accepts. The
     * file-scope declaration lives inside func_800A8DE4, so it is invisible
     * here. */
    u32 *tmpPtr;
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    D_800E02D0[omCurrentObj->objId] = model;
    if (*modelPtr != NULL) {
        u32 *tmp = *modelPtr;
        gSegment4StartArray[omCurrentObj->objId] = tmp;
        func_800A8564(*modelPtr, 1);
        tmpPtr = *modelPtr;
    } else {
        u32 *result = func_800A9250(model, 3);
        *modelPtr = result;
        gSegment4StartArray[omCurrentObj->objId] = result;
        tmpPtr = result;
    }
    D_800DFA10[omCurrentObj->objId] = tmpPtr[0];
    D_800DFD90[omCurrentObj->objId] = tmpPtr[1];
    func_800A9B48(arg1);
    func_800B1FD0(
        dobj,
        *D_800DF690[omCurrentObj->objId].as_u32p,
        arg2,
        D_800DFA10[omCurrentObj->objId],
        arg4
    );

sleep_loop:
    if (dobj->timeRemaining != -FLOAT_MAX) {
        ohSleep(1);
        goto sleep_loop;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA608.s")
#endif

void func_800AA78C(s32 arg0, u32 arg1, f32 arg2) {
    func_800AA608(omCurrentObj->data.dobj->firstChild, arg0, 0.0f, arg1, arg2);
}

void func_800AA7D0(s32 arg0, f32 arg1, u32 arg2) {
    if (func_800A9B48(arg0) != 0) {
        func_800AEEB4(*(struct GObj **)D_800DF850[omCurrentObj->objId], arg1);
        func_800AF09C((u16)arg2);
        return;
    }
    func_800AEE20((struct GObj *)*D_800DF690[omCurrentObj->objId].as_u32p, arg1);
    func_800AEFFC((u16)arg2);
}

void func_800AA864(s32 arg0, u32 arg1) {
    func_800AA7D0(arg0, 0.0f, arg1);
}

// Is current obj's model loaded?
s32 func_800AA888(u32 model) {
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    if (gSegment4StartArray[omCurrentObj->objId] == *modelPtr) {
        return 1;
    } else {
        return 0;
    }
}

// Match History: https://decomp.me/scratch/wW3bP
s32 func_800AA8E4(s32 track, u32 model) {
    u32 **modelPtr = &D_800D00C4[model >> 16][model & 0xFFFF];

    if (gSegment4StartArray[track] == *modelPtr) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_800AA934(s32 arg0) {
    if (arg0 == D_800DFF50[omCurrentObj->objId]) {
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 13/116 -- one saved-register naming choice and the two
 * instructions it drags. The ROM parks arg2 in $s2 and the &D_800DFA10 base
 * in $s1 (then re-uses $s1 for the list walker once the base dies); IDO here
 * picks $s1 for arg2 and $s6 for the base, so those three lui/addiu/addu and
 * the two `or` copies read one register off. Everything else -- frame 0x68,
 * all eight saved registers, the f20/f22/f24 assignment, the multu by 0x2C,
 * the nine-argument call and the bnel loop tail -- is identical. Saved
 * register permutation, the LEVERS floor. Solved semantics: stride 4 for the
 * script table (idx * 4 + *D_800DF690[objId]) and 0x2C for the parameter
 * records, DObj comes from D_800DFBD0[objId][idx] with objId RE-READ inside
 * the loop, and the list is walked `idx = list[1]; list += 1;`.
 * Re-confirmed 2026-08-23 via verify.py in-place: still exactly 13/116, all
 * 13 words are the $s1/$s2/$s6 saved-register permutation described above
 * (LEVERS.md "Whole-function callee-saved permutation" floor, first entry
 * in the unclosable list). Left guarded. */
/* FACTORY: 13/116 -- MEASURED 2026-08-25, the first measurement this draft has
 * had. Structure, count, frame and the whole prologue are exact: the first
 * disagreement is at index 33 and every saved register and FP pair is stored
 * at the ROM's offset.
 *
 * The 13 are one saved-register ASSIGNMENT difference and the schedule that
 * follows it. The ROM puts arg2's copy in $s2 and uses $s1 as the scratch it
 * re-materialises `&D_800DFA10` into -- twice, at 800AA9F4 and 800AAA24, so
 * that is not a held base but a saved register being spent as a temp. The
 * draft puts arg2's copy in $s1 and the address in $s6. Same registers saved,
 * same count, opposite assignment, and the `lwc1 $f22, 0x78($sp)` / `or $s1,
 * $s5, $zero` pair at indices 65 and 71 swaps with it.
 *
 * Allocation order is what decides this -- IDO hands out $s1 before $s2 to
 * whichever value becomes live first -- and no statement order in the body
 * changes which of the two that is, because the address is re-materialised at
 * its point of use rather than held. Permuter fuel; queued in
 * priority_queue.py's TARGETS. */
void func_800AA96C(s32 *arg0, u32 arg1, s32 arg2, f32 arg3, f32 arg4) {
    /* Kept in-body: the PORT arm of this same function below spells
     * func_8000EC98 with host pointer/variadic arguments, and the two arms
     * are mutually exclusive (neither is compiled by the N64 build). The
     * spelling here is the one the rest of the tree uses and the one the
     * listing's nine-argument call needs. */
    f32 func_8000EC98(DObj *, s32, f32, s32, s32, f32, f32, f32, f32);
    s32 *list;
    s32 idx;
    s32 scripts;
    s32 params;
    u32 *slot;
    u32 loaded;
    u32 id;

    D_800E02D0[omCurrentObj->objId] = arg1;
    slot = (u32 *) (D_800D00C4[arg1 >> 0x10] + (arg1 & 0xFFFF));
    if (*slot != 0) {
        D_800DFA10[omCurrentObj->objId] = *slot;
        func_800A8564((struct CacheLine *) *slot, 1);
    } else {
        loaded = (u32) func_800A9250(arg1, 3);
        *slot = loaded;
        D_800DFA10[omCurrentObj->objId] = loaded;
    }
    func_800A9B48(arg2);
    id = omCurrentObj->objId;
    list = arg0;
    idx = *arg0;
    scripts = *D_800DF690[id].as_u32p;
    params = *(s32 *) D_800DFA10[id];
    if (idx != -1) {
        do {
            func_8000EC98(D_800DFBD0[omCurrentObj->objId][idx], (idx * 4) + scripts, arg3,
                          (idx * 0x2C) + params, 0, arg4, 0.0f, 0.0f, 0.0f);
            idx = list[1];
            list += 1;
        } while (idx != -1);
    }
}
#elif defined(PORT)
/* Selective anim start (draft above): bind bank arg1 through the
 * D_800D00C4 cache exactly as func_800AA49C does, then start the anim only
 * on the DObjs named by the -1-terminated index list arg0. Each index
 * selects the node's DObj from D_800DFBD0, its cell of the anim-script
 * table (widened 8-byte cells on PC, N64 stride 4) and its 0x2C-byte
 * parameter record (native layout, stride unchanged). */
void func_800AA96C(s32 *arg0, u32 arg1, s32 arg2, f32 arg3, f32 arg4) {
    f32 func_8000EC98(DObj *, AnimCmd **, f32, UnkE4E4Arg *, s32, f32, ...);
    u32 objId = omCurrentObj->objId;
    u32 **slot;
    uintptr_t scriptBase;
    uintptr_t paramsBase;
    s32 *list;
    s32 idx;

    D_800E02D0[objId] = arg1;
    slot = &D_800D00C4[arg1 >> 0x10][arg1 & 0xFFFF];
    if (*slot != NULL) {
        D_800DFA10[objId] = (u32) (uintptr_t) *slot;
        func_800A8564((struct CacheLine *) *slot, 1);
    } else {
        u32 *loaded = func_800A9250(arg1, 3);

        *slot = loaded;
        D_800DFA10[objId] = (u32) (uintptr_t) loaded;
    }
    func_800A9B48(arg2);
    scriptBase = *(u32 *) (uintptr_t) D_800DF690[objId].as_u32;
    paramsBase = *(u32 *) (uintptr_t) D_800DFA10[objId];
    for (list = arg0, idx = *list; idx != -1; idx = *++list) {
        func_8000EC98(D_800DFBD0[objId][idx],
                      (AnimCmd **) (scriptBase + idx * 8), arg3,
                      (UnkE4E4Arg *) (paramsBase + idx * 0x2C), 0, arg4,
                      0.0f, 0.0f, 0.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AA96C.s")
#endif

void func_800AAB3C(s32 *arg0, u32 arg1, s32 arg2, f32 arg3, f32 arg4) {
    struct DObj *temp_s0;

    func_800AA96C(arg0, arg1, arg2, arg3, arg4);
    temp_s0 = D_800DFBD0[omCurrentObj->objId][*arg0];
    while (1) {
        if (temp_s0->timeRemaining == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AABD4(s32 *arg0, f32 arg1, f32 arg2)
{
  s32 *var_a1;
  s32 var_v1;
  DObj *dobj;
  MObj *mobj;
  unsigned int new_var;
  if ((arg1 != 65535.0f) ^ 0)
  {
    var_v1 = (new_var = *arg0);
    var_a1 = arg0;
    if (var_v1 != (-1))
    {
      do
      {
        var_a1++;
        dobj = D_800DFBD0[omCurrentObj->objId][var_v1];
        dobj->animSpeed = arg1;
        var_v1 = *var_a1;
      }
      while (var_v1 != (-1));
    }
  }
  if (arg2 != 65535.0f)
  {
    var_a1 = arg0;
    var_v1 = *arg0;
    if (var_v1 != (-1))
    {
      do
      {
        dobj = D_800DFBD0[omCurrentObj->objId][var_v1];
        mobj = dobj->mobjList;
        if (mobj != ((void *) 0))
        {
          do
          {
            mobj->animSpeed = arg2;
            mobj = mobj->next;
          }
          while (mobj != ((void *) 0));
        }
        var_v1 = var_a1[1];
        var_a1++;
      }
      while (var_v1 != (-1));
    }
  }
}

#ifdef MIPS_TO_C
/* FACTORY: DIFF 83/143. The control flow, both loops, the branch-likely
 * shapes and all nine saved registers match; the residue is a saved-register
 * PERMUTATION plus one spill. The ROM caches arg2/arg0/arg1 in s0/s1/s3 and
 * the tree cursor in s2, and hoists two loop-invariant array bases into held
 * registers ($s7 = &D_800DFBD0, $fp = &D_800DF310), which is what lets it
 * run with zero stack locals (frame 0x50). IDO here gives the cursor s0 and
 * pushes the argument caches up one, does not hoist the two bases, and
 * therefore spills one scratch register at 0x50 (frame 0x70). Measured: no
 * effect from trimming the `off`/`cmd` temporaries (that WAS worth 116->83),
 * from natural array indexing vs pointer arithmetic, or from reordering the
 * declaration list. Solved semantics: texTable is *(s32 **)D_800DF850[objId]
 * (NULL when arg2 == -1), the per-node script cell is ((s32 *)scripts)[idx]
 * with N64 stride 4, the texture cell list walks stride 4 in lockstep with
 * dobj->mobjList (MObj.next is at offset 0), `first` (the animCBReceiver
 * flag) is 1 only for the first node that actually gets an animation, and
 * the empty-anim arm writes timeRemaining = -3.4028235e38f, which the ROM
 * loads from the rodata literal D_800D5DF0 hoisted into $f22. */
void func_800AACC8(s32 *arg0, s32 arg1, s32 arg2, f32 arg3) {
    s32 *texTable;
    s32 *list;
    DObj *node;
    DObj *dobj;
    struct MObj *mobj;
    s32 *cell;
    s32 *p;
    s32 scripts;
    s32 anim;
    s32 idx;
    s8 first;

    node = omCurrentObj->data.dobj;
    first = 1;
    if (node != NULL) {
        do {
            node->animCBReceiver = 0;
            node = animModelTreeNextNode(node);
        } while (node != NULL);
    }
    texTable = NULL;
    if (arg2 != -1) {
        func_800A9B48(arg2);
        texTable = *(s32 **) D_800DF850[omCurrentObj->objId];
    }
    func_800A9B48(arg1);
    idx = *arg0;
    list = arg0;
    scripts = *D_800DF690[omCurrentObj->objId].as_u32p;
    if (idx != -1) {
        do {
            cell = (texTable != NULL) ? &texTable[idx] : NULL;
            anim = ((s32 *) scripts)[idx];
            dobj = D_800DFBD0[omCurrentObj->objId][idx];
            if (anim != 0) {
                animSetModelAnimation(dobj, (void *) anim, arg3);
                dobj->animCBReceiver = first;
                dobj->gobj->animTimer = arg3;
                D_800DF310[omCurrentObj->objId] = NULL;
                first = 0;
                D_800DD8D0[omCurrentObj->objId] &= 0x3FFFFFFF;
            } else {
                dobj->timeRemaining = -3.4028235e38f;
                dobj->animCBReceiver = 0;
            }
            if (cell != NULL) {
                p = (s32 *) *cell;
                if (p != NULL) {
                    mobj = dobj->mobjList;
                    if (mobj != NULL) {
                        do {
                            if (*p != 0) {
                                animSetTextureAnimation(mobj, *p, arg3);
                            }
                            mobj = mobj->next;
                            p += 1;
                        } while (mobj != NULL);
                    }
                }
            }
            idx = list[1];
            list += 1;
        } while (idx != -1);
    }
}
#elif defined(PORT)
/* Selective model+texture anim start (draft above): clear every node's
 * animCBReceiver, optionally bind texture bank arg2 and model bank arg1,
 * then for each node index in the -1-terminated list arg0 hard-set that
 * node's model anim (first anim'd node becomes the callback receiver) and
 * its per-MObj texture anims. Both banks are func_800A94F4-widened blocks:
 * the per-node tables step 8 bytes per N64 word, and each node's texture
 * list holds one widened cell per MObj in the node's chain. */
void func_800AACC8(s32 *arg0, s32 arg1, s32 arg2, f32 arg3) {
    u32 objId = omCurrentObj->objId;
    DObj *node;
    u8 *texTable = NULL;
    uintptr_t scriptBase;
    s32 *list;
    s32 idx;
    s8 first = 1;

    for (node = omCurrentObj->data.dobj; node != NULL; node = animModelTreeNextNode(node)) {
        node->animCBReceiver = 0;
    }
    if (arg2 != -1) {
        func_800A9B48(arg2);
        texTable = (u8 *) (uintptr_t) *(u32 *) (uintptr_t) D_800DF850[objId];
    }
    func_800A9B48(arg1);
    scriptBase = *(u32 *) (uintptr_t) D_800DF690[objId].as_u32;
    for (list = arg0, idx = *list; idx != -1; idx = *++list) {
        DObj *dobj = D_800DFBD0[objId][idx];
        AnimCmd *anim = *(AnimCmd **) (scriptBase + idx * 8);

        if (anim != NULL) {
            animSetModelAnimation(dobj, anim, arg3);
            dobj->animCBReceiver = first;
            dobj->gobj->animTimer = arg3;
            D_800DF310[objId] = NULL;
            first = 0;
            D_800DD8D0[objId] &= 0x3FFFFFFF;
        } else {
            dobj->timeRemaining = -3.4028235e38f;
            dobj->animCBReceiver = 0;
        }
        if (texTable != NULL) {
            u8 *cell = (u8 *) *(void **) (texTable + idx * 8);

            if (cell != NULL) {
                struct MObj *mobj = dobj->mobjList;

                while (mobj != NULL) {
                    s32 cmd = *(s32 *) cell; /* low half of the widened cell */

                    if (cmd != 0) {
                        animSetTextureAnimation(mobj, cmd, arg3);
                    }
                    mobj = mobj->next;
                    cell += 8;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_3/func_800AACC8.s")
#endif

void func_800AAF04(s32 *arg0, s32 arg1, s32 arg2, f32 arg3) {
    func_800AACC8(arg0, arg1, arg2, arg3);
    func_800AF27C();
}

void func_800AAF34(s32 arg0, s32 arg1, f32 arg2) {
    u32 *slot;

    slot = &D_800D7A00[(arg0 - 0xA) >> 1];
    if (*slot != 0) {
        func_800A8578(*slot | 2);
        *slot = 0;
    }
    *slot = (u32)func_800A94F4(arg1);
    animSetCameraAnimation((Camera *)D_800D79D8[(arg0 - 0xA) >> 1], (AnimCmd *)*(u32 *)*slot, arg2);
}

void func_800AAFC4(s32 arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800D79D8 *temp_s0;

    func_800AAF34(arg0, arg1, arg2);
    temp_s0 = D_800D79D8[(arg0 - 0xA) >> 1];
    while (1) {
        if (temp_s0->unk74 == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AB040(s32 arg0) {
    struct UnkStruct800D79D8 *temp_s0 = D_800D79D8[(arg0 - 0xA) >> 1];

    while (1) {
        if (temp_s0->unk74 == -3.4028235e38f) {
            break;
        }
        ohSleep(1);
    }
}

void func_800AB0A8(s32 arg0, f32 arg1) {
    struct UnkStruct800D79D8 *new_var = D_800D79D8[(arg0 - 0xA) >> 1];

    new_var->unk78 = arg1;
}

void func_800AB0CC(s32 arg0) {
    s32 tmp;
    struct UnkStruct800D79D8 *tmp2;

    tmp = (arg0 - 0xA) >> 1;
    tmp2 = D_800D79D8[tmp];
    tmp2->unk74 = -3.4028235e38f;
}

/* Returns the object's DRAW KIND: the third word of its segment-4 block, which
 * func_800BB6B0 (ovl1_11.c) and func_8017CCE0_ovl5 switch on for values 19..30.
 * src/ovl2/ovl2_2.c reads the same word as `gSegment4StartArray[objId][2]` and
 * uses it to index gDrawFuncList.
 *
 * `u32 *`, NOT `u32 **`, AND THE DIFFERENCE IS ONLY VISIBLE OFF THE N64.
 * gSegment4StartArray is `u32 *[]`, so an element is a `u32 *`; the double
 * star was inert on hardware because both spellings put `buf[2]` eight bytes
 * in when a pointer is four bytes wide. On the LP64 port a `u32 **` element is
 * eight bytes and `buf[2]` reads SIXTEEN bytes in, which is a different word
 * of the block entirely. Measured: in world 1-1 this returned -603586556, no
 * case in func_800BB6B0's switch matched, that switch has no default, and the
 * object was silently not drawn -- the level rendered around a player who was
 * never emitted. The ROM is unchanged; a 4-byte pointer makes both spellings
 * the same `lw` at +8. */
s32 func_800AB0F4(GObj *g) {
    u32 *buf = gSegment4StartArray[g->objId];

    return buf[2];
}

void func_800AB110(GObj *g) {

}

void func_800AB118(GObj *g) {

}

void func_800AB120(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawGObjList0(g);
}

void func_800AB174(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeC(g);
}

void func_800AB1F0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawGObjWithDObjTypeE(g);
}

void func_800AB244(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeG(g);
}

void func_800AB2C0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    renderDrawDObjFromGObj(g);
}

void func_800AB314(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    renderDrawObject_TypeD(g);
}

void func_800AB390(GObj *g) {

}

void func_800AB398(GObj *g) {

}

void func_800AB3A0(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    func_8001585C(g);
}

void func_800AB3F4(GObj *g) {
    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
    gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
    func_80015BCC(g);
}

void func_800AB470(GObj *g) {

}

void func_800AB478(GObj *g) {

}

void func_800AB480(GObj *g) {

}
