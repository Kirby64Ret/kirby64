#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "main/object_helpers.h"
#include "main/rdp_reset.h"
#include "main/vi.h"
#include "main/gtl.h"

extern Gfx D_80123E90[];
void gameSetUpdateRate(f32);

extern s32 D_800DD710[];
extern s32 D_800DD84C;
extern u32 D_800DDA90[];
extern s32 D_800BE544;
extern s32 D_800D7B68;
void func_801114E0(void);
void func_800F7578(void);
void func_8000A498(GObj *, u8, s32);
#ifdef PORT
/* PORT support for the in-level scene's postInit/update (arms below).
 * object_manager.h supplies the host Camera/OMMtx layouts the real bodies
 * poke; everything else is the usual local-extern set. Cross-symbol N64
 * arithmetic that survives on this build:
 *   - D_800D6B18 is a 12-byte block (PC bss 24); its +8 slot holds the scene
 *     camera GObj*, written/read only by the two arms below, so it is stored
 *     as a full host pointer at the same byte offset (bytes 8..15);
 *   - D_800D6F3C's +4/+6/+8 u16s are written at their N64 byte offsets --
 *     the compiled reader (func_800F62A4's D_800D6F42) reaches the same
 *     bytes through the linker defsym D_800D6F42=D_800D6F3C+0x6;
 *   - D_800D6B6C's +4 slot is read exactly the way the compiled
 *     func_800F6AD4 writes it.
 * D_800EC2E0 is a MultiType array (8-byte cells on LP64), so the N64's
 * byte-offset store becomes a real index. */
#include "main/object_manager.h"

extern u16 D_800D6B30;
extern u8 D_800D6B18[];
extern s32 D_800BE500, D_800BE504, D_800BE508, D_800BE534, D_800BE4FC;
extern u8 D_800D6E20[];
extern s32 D_800D6B48;
extern s32 D_800D6B6C;
extern f32 gKirbyHp;
extern s32 D_800BE4EC;
extern u32 D_800D478C[];
extern f32 D_800D6ED0[4][4];
extern Controller_800D6FE8 gPlayerControllers[];
union PcMulti { u32 as_u32; s32 as_s32; void *as_ptr; };
extern union PcMulti D_800EC2E0[];

struct UnkStruct801290D8_pc {
    u8 filler[0xA];
    u16 bgColor;  /* 0x0A */
    u32 musicId;  /* 0x0C */
};
extern struct UnkStruct801290D8_pc *D_801290D8;

void func_800AE048(u32);
void func_800AE0F0(void);
void func_800A6E64(void);
void func_800A78D0(s32);
s32 func_800A8724(s32);
void func_800F8274(void);
s32 func_800F8560(void); /* same prototype as the one below */
void func_80114CCC(void);
void func_8010DCDC(void);
void func_800FF2C8(void);
void func_8011C838(void);
void func_800BE098(void);
void func_800A6BC0(s32);
s32 func_800B9DF8(s32);  /* takes ONE arg (save_file.c); the ROM's caller
                          * leaves the music id in $a1, which it ignores */
s32 play_music(s32, s32);
void func_800BBF60(void);
void func_800BB3F0(void);
s32 func_800AEA64(s32, s32, s32);
void guLookAtF(f32 mf[4][4], f32, f32, f32, f32, f32, f32, f32, f32, f32);
void HS64_PerspectiveF(f32 mf[4][4], u16 *, f32, f32, f32, f32, f32);
void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 r[4][4]);
void utilPauseAllGObjs(void);
void utilResumeAllGObjs(void);
#endif /* PORT */

void func_800F61A0(void) {
    s32 *p;
    s32 i;
    u32 *q;
    GObj **g;
    u32 v;

    func_801114E0();
    if (D_800BE544 <= 0) {
        utilSetPlayerContPad();
        if (D_800D7B68 != 0) {
            func_800F7578();
        }
#ifdef PORT
        /* The matching loop is a byte-offset walk with two cross-symbol
         * assumptions that do not survive this build: the bound
         * `p == &D_800DD84C` compares against an interior label of
         * D_800DD710's block ((0x800DD84C-0x800DD710)/4 = 79 slots) that is
         * a SEPARATE weak stub here, so the walk would never terminate; and
         * D_800DE350 is an array of host GObj pointers (8-byte slots -- see
         * utilResumeAllGObjs), so `(u8 *)D_800DE350 + i` with i advancing 4
         * per slot reads half-pointers. Same iteration, spelled with
         * indices. */
        {
            s32 slot;
            GObj *go;
            for (slot = 0; slot < 79; slot++) {
                if (D_800DD710[slot] != -1) {
                    v = D_800DDA90[slot];
                    if (v & 0x38) {
                        go = D_800DE350[slot];
                        func_8000A498(go, v & 7, go->pri);
                        D_800DDA90[slot] = go->link;
                    }
                }
            }
        }
#else
        for (i = 0, p = D_800DD710; ; ) {
            q = (u32 *)((u8 *)D_800DDA90 + i);
            if (*p != -1) {
                v = *q;
                g = (GObj **)((u8 *)D_800DE350 + i);
                if (v & 0x38) {
                    func_8000A498(*g, v & 7, (*g)->pri);
                    *q = (*g)->link;
                }
            }
            p++;
            i += 4;
            if (p == &D_800DD84C) {
                break;
            }
        }
#endif
    }
}

void func_800F629C(void) {
}

extern s32 D_800BE4F8;
extern s32 D_800D6B24;
extern s32 D_800D6F3C;
extern s32 D_800D6F38;
extern s32 D_800D6B58;
extern u16 D_800D6F42;
void auFunc80020C88(void);
s32 func_800F8560(void);
void func_800BB98C(s32, s32);
void func_8011CFE0(void);
void func_800A74D8(void);

void func_800F62A4(UNUSED s32 arg0) {
    s32 mask;

    switch (D_800BE4F8) {
        case 2:
            if (D_800D6B24 == 0) {
                auFunc80020C88();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
            }
            break;
        case 3:
        case 4:
            if (D_800D6B24 == 0) {
                if (func_800F8560() == 2) {
                    func_800BB98C(3, 2);
                } else {
                    func_800BB98C(1, 2);
                }
            }
            break;
        case 7:
            if (D_800D6B24 == 0) {
                if (gGameState == 0x21) {
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 1, 2);
                } else {
                    utilSetRectColorFullScreen(0xFF, 0xFF, 0xFF);
                    utilSpawnRect(0, 1, 2);
                }
            }
            break;
        case 6:
            if (--D_800D6B58 == 0) {
                func_8011CFE0();
                func_800A74D8();
                utilSetRectColorFullScreen(0, 0, 0);
                utilSpawnRect(0, 0x10, 2);
            }
            break;
        case 1:
            if (D_800D6F3C >= 2) {
                if (D_800D6F3C == 4) {
                    mask = 0x1000;
                } else {
                    mask = 0x9000;
                }
                if ((D_800D6F42 & mask) && (D_800D6B24 == 0)) {
                    D_800BE4F8 = 0;
                    utilSetRectColorFullScreen(0, 0, 0);
                    utilSpawnRect(0, 0x40, 2);
                    D_800D6F38 = 0;
                }
            }
            break;
        case 0:
            D_800D6F38 = 0;
            break;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 3/224 words DIFFER (was 23/224), measured 2026-08-25.
 * Two independent causes were found, neither of them the "three register-name
 * swaps with no source spelling behind them" the old note claimed:
 *
 * 1. LEVER 61 barrier, found by tools/decomp/barrier_sweep.py, not by reading.
 *    An empty `do { } while (0);` immediately before the big
 *    D_800BE500/D_800BE504/D_800BE534 dispatch is worth 23 -> 13. It emits
 *    nothing; it stops IDO hoisting the dispatch's constant materialisations
 *    up past the func_800A78D0 call, which is what rotated $v0/$v1 for the
 *    rest of the body. The sweep tried 49 placements and this is the only one
 *    that pays; a second sweep over the improved draft found none.
 *
 * 2. LEVER 62, worth 13 -> 3. The do-loop's `var_a0` is NOT a byte offset in
 *    the source. Written as `var_a0 += 4` against `!= 8` it is a declared
 *    local and takes $a0 before the loop-invariant `&D_800D799C` hoist, so
 *    base and index land in each other's registers for all ten words of the
 *    loop. Written as a COUNTER -- `var_a0 * 4` in the subscript, `+= 1`,
 *    `!= 2` -- the byte offset becomes IDO's own strength-reduced induction
 *    variable, it is created after the hoist, and the ROM's
 *    $a1 = &D_800D799C / $a0 = offset assignment falls out. The ROM still
 *    compares against 8, which is what makes the counter form invisible in
 *    the listing.
 *
 * Remaining 3, and the spellings that do NOT move them: the
 * `*(u8 **)(u32)(D_800D6B18 + 8)` address temp lands in $t7 where the ROM
 * uses $v1 (the register next to the ohCreateCameraWrapper result it is
 * about to store). Measured: `&D_800D6B18[8]` inside the cast, and
 * `((u32)D_800D6B18 + 8)`, are both byte-identical at 3/224; storing the call
 * expression directly instead of through var_v0 is 216/232, far worse. The
 * LEVER 35 (u32) cast is load-bearing and must stay.
 *
 * DECIDED 2026-08-25, and the residue is a MISSING SYMBOL, not a spelling.
 * The three words are
 *     ROM   lui $v1,%hi(D_800D6B18+0x8) / addiu $v1,$v1,%lo(D_800D6B18+0x8)
 *           / sw $v0,0x0($v1)
 *     ours  lui $t7,%hi(D_800D6B18)     / addiu $t7,$t7,8 / sw $v0,0x0($t7)
 * i.e. the ROM's +8 is inside the RELOCATION and ours is an integer add. IDO
 * puts the offset in the reloc only when the source names an object at that
 * address; every spelling that keeps the (u32) cast does integer arithmetic
 * instead, and every spelling that drops the cast lets IDO fold the whole
 * thing to the two-word `lui $at,%hi(SYM)` / `sw $v0,8($at)` form -- MEASURED
 * 2026-08-25, `*(u8 **)(D_800D6B18 + 8) = var_v0;` (no cast) and a named
 * `u8 **slot = (u8 **)&D_800D6B18[8];` local are BOTH 210/223, one word short
 * and everything after it shifted. So the cast is not a stylistic wart: it is
 * what buys the third word, and there is no third spelling between the two.
 * What the original source had is a NAMED GLOBAL at 0x800D6B20; with
 * `SYM(D_800D6B20, 0x800D6B20);` in unnamed_syms.txt and
 * `*(u8 **)(u32)D_800D6B20 = var_v0;` here, IDO emits %hi/%lo of that symbol
 * and the assembled words are identical to the ROM's (the listing only spells
 * it `D_800D6B18 + 0x8` because no symbol exists there yet). unnamed_syms.txt
 * feeds the LINKER SCRIPT (Makefile:251) and adding an absolute symbol emits
 * no bytes, but it is a shared file -- coordinator task, same class as LEVER
 * 80's `struct GObj;` header line. The remaining register ($v1 vs $t7) is not
 * separately measurable until that lands. */
void func_800F64B0(void) {
    extern u16 D_800D6B30;
    extern u8 D_800D6B18[];
    extern s32 D_800BE500;
    extern s32 D_800BE504;
    extern s32 D_800BE508;
    extern s32 D_800BE534;
    extern s32 D_800BE4FC;
    extern u8 D_800D6E20[];
    extern s32 D_800D6B48;
    extern s32 D_800D6B6C;
    extern void *D_801290D8;
    u8 *var_v0;
    s32 var_a0;

    D_800D6B30 = 0;
    var_v0 = (u8 *) ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    *(u8 **) (u32) (D_800D6B18 + 8) = var_v0;
    func_80007C00((Vp *) (*(u8 **) (var_v0 + 0x3C) + 8), 10.0f, 10.0f, 310.0f, 182.0f);
    HS64_omMakeGObj(0, func_800F62A4, 0x1A, 0x80000000);
    func_800AE048(0x40);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    do { } while (0);
    if (((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2))
        || ((D_800BE500 == 5) && (D_800BE504 == 3))) {
        func_800A8724(2);
    } else if ((D_800BE500 == 4) && (D_800BE504 == 3) && (D_800BE534 == 3)
               && (D_800BE508 != 0)) {
        func_800A8724(3);
    } else {
        func_800A8724(0);
    }
    func_800F8274();
    if (func_800F8560() != 9) {
        func_80114CCC();
        func_8010DCDC();
        func_800FF2C8();
    }
    func_8011C838();
    func_800BE098();
    func_800A6BC0(5);
    var_a0 = 0;
    do {
        var_v0 = *(u8 **) ((u8 *) D_800D799C->data.ptr + var_a0 * 4 + 0x64);
        if (var_v0[4] == 6) {
            var_v0[4] = 0xC;
            var_v0 = *(u8 **) ((u8 *) D_800D799C->data.ptr + var_a0 * 4 + 0x64);
        }
        var_a0 += 1;
        if (var_v0[4] == 7) {
            var_v0[4] = 0xD;
        }
    } while (var_a0 != 2);
    var_a0 = *(s32 *) ((u8 *) D_801290D8 + 0xC);
    switch (var_a0) {
        case 0x27:
            if (func_800B9DF8(2) != 0) {
                var_a0 = 0xD;
            }
            break;
        case 0x28:
            if (func_800B9DF8(2) != 0) {
                var_a0 = 0x12;
            }
            break;
        case 0x29:
            if (func_800B9DF8(2) != 0) {
                var_a0 = 8;
            }
            break;
        case 0x22:
            if (D_800D6E20[D_800BE508] != 0) {
                var_a0 = D_800D6B48;
            }
            break;
    }
    D_800D6B48 = var_a0;
    if (*(s32 *) ((u8 *) &D_800D6B6C + 4) == 1) {
        var_a0 = *(s32 *) ((u8 *) D_801290D8 + 0xC);
    }
    if ((D_800D6F3C >= 3) && (D_800D6F3C != 4)) {
        var_a0 = 0;
    }
    play_music(0, var_a0);
    if (func_800F8560() == 2) {
        func_800BB98C(2, 0);
        return;
    }
    if ((D_800BE508 == 0) && (D_800BE4FC == 0)) {
        func_800BB98C(0, 0);
        return;
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}
#elif defined(PORT)
/* PORT: the in-level/demo scene's postInit, from asm/nonmatchings/ovl2/ovl2/
 * func_800F64B0.s (the m2c sketch above misdecodes the camera accesses and
 * the func_800B9DF8 arity). Camera pokes go through the host Camera/OMMtx
 * structs instead of the N64 byte offsets (+8 viewport, +0x64/+0x68
 * matrices, byte +4 kind); the scene camera GObj lives in the D_800D6B18
 * block's +8 slot as a host pointer (see the PORT note at the top of this
 * file). func_800F8274 -> func_800F78E4 (ovl2_2.c PORT arm) fills
 * D_801290D8 before the music read. */
void func_800F64B0(void) {
    GObj *g;
    Camera *cam;
    s32 i;
    s32 mus;

    D_800D6B30 = 0;
    g = ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 3, 0xFF);
    *(GObj **)(D_800D6B18 + 8) = g;
    func_80007C00(&g->data.cam->viewport, 10.0f, 10.0f, 310.0f, 182.0f);
    HS64_omMakeGObj(0, (void (*)(GObj *))func_800F62A4, 0x1A, 0x80000000);
    func_800AE048(0x40);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    if (((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2)) ||
        ((D_800BE500 == 5) && (D_800BE504 == 3))) {
        func_800A8724(2);
    } else if ((D_800BE500 == 4) && (D_800BE504 == 3) && (D_800BE534 == 3) &&
               (D_800BE508 != 0)) {
        func_800A8724(3);
    } else {
        func_800A8724(0);
    }
    func_800F8274();
    if (func_800F8560() != 9) {
        func_80114CCC();
        func_8010DCDC();
        func_800FF2C8();
    }
    func_8011C838();
    func_800BE098();
    func_800A6BC0(5);
    cam = D_800D799C->data.cam;
    for (i = 0; i < 2; i++) {
        OMMtx *m = cam->matrices[i];
        if (m->kind == 6) {
            m->kind = 12;
            m = cam->matrices[i];
        }
        if (m->kind == 7) {
            m->kind = 13;
        }
    }
    mus = (s32)D_801290D8->musicId;
    switch (mus) {
        case 0x27:
            if (func_800B9DF8(2) != 0) {
                mus = 0xD;
            }
            break;
        case 0x28:
            if (func_800B9DF8(2) != 0) {
                mus = 0x12;
            }
            break;
        case 0x29:
            if (func_800B9DF8(2) != 0) {
                mus = 8;
            }
            break;
        case 0x22:
            if (D_800D6E20[D_800BE508] != 0) {
                mus = D_800D6B48;
            }
            break;
    }
    D_800D6B48 = mus;
    if (*(s32 *)((u8 *)&D_800D6B6C + 4) == 1) {
        mus = (s32)D_801290D8->musicId;
    }
    if ((D_800D6F3C >= 3) && (D_800D6F3C != 4)) {
        mus = 0;
    }
    play_music(0, mus);
    if (func_800F8560() == 2) {
        func_800BB98C(2, 0);
        return;
    }
    if ((D_800BE508 == 0) && (D_800BE4FC == 0)) {
        func_800BB98C(0, 0);
        return;
    }
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F64B0.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 98/160 instructions match (62 diffs); exact instruction
 * count, frame (0x80), stack-slot layout, every branch and every
 * call. Residue is an integer temp-register rotation (the
 * &D_800BE544 address lands in $a3 where the ROM uses $v1, rotating
 * $v0/$v1 and the $t-pool through the rest of the body) plus the
 * scheduling of the three-byte colour OR chain, whose source
 * association already matches the ROM.
 * NOTE for the factory: the three u16 stores at D_800D6F3C+4/+6/+8
 * must each come from a DIFFERENT base symbol or IDO CSEs the
 * address into one register (9 diffs); D_800D6F38+8, D_800D6F42 and
 * D_800D6F3C+8 are the three spellings that reproduce the ROM's
 * three independent $at pairs. The real source almost certainly had
 * three named symbols there. */
void func_800F6830(void) {
    extern u16 gPlayerControllers[];
    extern u8 D_800D478C[];
    extern u8 D_800D6B18[];
    extern s32 D_800BE4EC;
    extern f32 gKirbyHp;
    extern f32 D_800D6ED0[4][4];
    extern u32 D_800EC2E0[];
    extern void *D_801290D8;
    void guLookAtF(f32 [4][4], f32, f32, f32, f32, f32, f32, f32, f32, f32);
    void guMtxCatF(f32 [4][4], f32 [4][4], f32 [4][4]);
    void HS64_PerspectiveF(f32 [4][4], u16 *, f32, f32, f32, f32, f32);
    void utilPauseAllGObjs(void);
    void utilResumeAllGObjs(void);
    s32 func_800AEA64(s32, s32, s32);
    f32 sp40[4][4];
    u8 *sp3C;
    u16 sp3A;
    u8 *temp_v1;

    *(u16 *) ((u8 *) &D_800D6F38 + 8) = gPlayerControllers[0];
    D_800D6F42 = gPlayerControllers[1];
    *(u16 *) ((u8 *) &D_800D6F3C + 8) = gPlayerControllers[2];
    if (D_800D7B68 != 0) {
        sp3C = (u8 *) D_800D799C->data.ptr;
        guLookAtF(sp40,
                  *(f32 *) (sp3C + 0x3C), *(f32 *) (sp3C + 0x40), *(f32 *) (sp3C + 0x44),
                  *(f32 *) (sp3C + 0x48), *(f32 *) (sp3C + 0x4C), *(f32 *) (sp3C + 0x50),
                  *(f32 *) (sp3C + 0x54), *(f32 *) (sp3C + 0x58), *(f32 *) (sp3C + 0x5C));
        HS64_PerspectiveF(D_800D6ED0, &sp3A,
                          *(f32 *) (sp3C + 0x20), *(f32 *) (sp3C + 0x24),
                          *(f32 *) (sp3C + 0x28), *(f32 *) (sp3C + 0x2C),
                          *(f32 *) (sp3C + 0x30));
        guMtxCatF(sp40, D_800D6ED0, D_800D6ED0);
    }
    temp_v1 = &D_800D478C[*(u16 *) ((u8 *) D_801290D8 + 0xA) * 12];
    *(u32 *) ((u8 *) (*(GObj **) (D_800D6B18 + 8))->data.ptr + 0x84) =
        (temp_v1[2] << 8) | (temp_v1[0] << 24) | (temp_v1[1] << 16) | 0xFF;
    D_800BE4EC += 1;
    func_800BBF60(&D_800BE4EC);
    if ((D_800BE544 >= 0) && (D_800BE4F8 == 1) && (gKirbyHp != 0.0f)) {
        if (func_800F8560() != 3) {
            if (D_800BE544 == 0) {
                if (gPlayerControllers[1] & 0x1000) {
                    func_800BB3F0();
                    utilPauseAllGObjs();
                    D_800BE544 = func_800AEA64(0x27, 0x4A, 0x70);
                    D_800EC2E0[D_800BE544] = 0;
                }
            } else if (D_800BE544 & 0x8000) {
                D_800BE544 = 0;
                utilResumeAllGObjs();
            }
        }
    } else if (D_800BE544 == -9999.0f) {
        D_800BE544 = -0x270F;
    } else if (D_800BE544 < 0) {
        D_800BE544 += 1;
    }
    func_800F61A0();
    omUpdateAll();
    func_800F629C();
}
#elif defined(PORT)
/* PORT: per-frame update of the in-level/demo scene, from asm/nonmatchings/
 * ovl2/ovl2/func_800F6830.s. The N64 byte pokes become their host struct
 * accesses: the controller mirror u16s go to D_800D6F3C's +4/+6/+8 bytes
 * (the defsym'd family func_800F62A4 reads back), the camera reads use the
 * Camera struct, the scene camera GObj comes from D_800D6B18+8, and the
 * bg-color bytes are re-derived from D_800D478C's value-preserving u32
 * words ((w>>24)/(w>>16)/(w>>8) are the N64's byte 0/1/2 reads). The
 * matrix D_800D6ED0 is the view*proj product func_800F7578's frustum test
 * consumes later this same tick. */
void func_800F6830(void) {
    f32 look[4][4];
    u16 perspNorm;
    Camera *cam;
    GObj *sceneCam;
    u32 w;
    u32 color;
    s32 v;

    *(u16 *)((u8 *)&D_800D6F3C + 4) = gPlayerControllers[0].buttonHeld;
    *(u16 *)((u8 *)&D_800D6F3C + 6) = gPlayerControllers[0].buttonPressed;
    *(u16 *)((u8 *)&D_800D6F3C + 8) = gPlayerControllers[0].buttonHeldLong;
    if (D_800D7B68 != 0) {
        cam = D_800D799C->data.cam;
        guLookAtF(look,
                  cam->viewMtx.lookAt.eye.x, cam->viewMtx.lookAt.eye.y,
                  cam->viewMtx.lookAt.eye.z, cam->viewMtx.lookAt.at.x,
                  cam->viewMtx.lookAt.at.y, cam->viewMtx.lookAt.at.z,
                  cam->viewMtx.lookAt.up.x, cam->viewMtx.lookAt.up.y,
                  cam->viewMtx.lookAt.up.z);
        HS64_PerspectiveF(D_800D6ED0, &perspNorm,
                          cam->perspMtx.persp.fovy, cam->perspMtx.persp.aspect,
                          cam->perspMtx.persp.near, cam->perspMtx.persp.far,
                          cam->perspMtx.persp.scale);
        guMtxCatF(look, D_800D6ED0, D_800D6ED0);
    }
    w = D_800D478C[D_801290D8->bgColor * 3];
    color = (((w >> 24) & 0xFF) << 24) | (((w >> 16) & 0xFF) << 16) |
            (((w >> 8) & 0xFF) << 8) | 0xFF;
    sceneCam = *(GObj **)(D_800D6B18 + 8);
    sceneCam->data.cam->bgcolor = color;
    D_800BE4EC += 1;
    func_800BBF60();
    v = D_800BE544;
    if (v >= 0 && D_800BE4F8 == 1 && gKirbyHp != 0.0f) {
        if (func_800F8560() != 3) {
            if (v == 0) {
                if (gPlayerControllers[0].buttonPressed & 0x1000) {
                    func_800BB3F0();
                    utilPauseAllGObjs();
                    v = func_800AEA64(0x27, 0x4A, 0x70);
                    D_800BE544 = v;
                    D_800EC2E0[v].as_s32 = 0;
                }
            } else if (v & 0x8000) {
                D_800BE544 = 0;
                utilResumeAllGObjs();
            }
        }
    } else if ((f32)v == -9999.0f) {
        D_800BE544 = -9999;
    } else if (v < 0) {
        D_800BE544 = v + 1;
    }
    func_800F61A0();
    omUpdateAll();
    func_800F629C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2/func_800F6830.s")
#endif

void func_800F6AB0(Gfx **glistp) {
    gSPDisplayList((*glistp)++, D_80123E90);
}

// The vu16 casts in the clear loop are load-bearing: without volatile IDO
// hoists the D_803D6900 induction bump to the top of the 4x-unrolled body,
// where the ROM keeps it before the last store (see ovl5_7 func_8017CC3C_ovl5).
// The chained store into D_80123EEC / heapSize is load-bearing too: two plain
// statements fold the struct base into the store displacement instead of
// materialising it into $v0.
// verify.py reports 1 reloc false positive on the loop bound: IDO emits
// %hi(D_803D6900)+2 / %lo+0x5800, which links to 0x803FC100 exactly.
void func_800F6AD4(s32 arg0, s32 arg1) {
    extern u16 gFrameBuffer[][320];
    extern u16 D_8012EB00[][320];
    extern u16 D_803D6900[];
    extern void *D_8022FB50;
    extern ScreenSettings D_80123EC0;
    extern SceneSetup D_80123F68;
    extern SceneSetup D_80123EDC;
    extern s32 D_80123EEC;
    extern s32 D_800D6B6C;
    extern s32 D_800D6FA8;
    extern s32 D_800D6FAC;
    extern s32 D_8012D920;
    extern s32 D_800D7B78;
    extern s32 D_800D7B7C;
    extern s32 D_800D7B80;
    extern s32 D_800BE500;
    extern s32 D_800BE504;
    extern s32 D_800BE508;
    extern s32 D_800BE534;
    s32 i;
    s32 heap;

    *(s32 *) ((u8 *) &D_800D6B6C + 4) = arg0;
    D_80123EC0.zBuffer = (u16 *) ((u32) D_8012EB00 - 0x1900);
    viApplyScreenSettings(&D_80123EC0);
    i = 0;
    do {
        ((vu16 *) gFrameBuffer)[i] = 1;
        ((vu16 *) D_803D6900)[i + 0x1F80] = 1;
        i++;
    } while (i != 320 * 240);
    heap = (u8 *) gFrameBuffer - (u8 *) &D_8022FB50;
    D_80123EEC = D_80123F68.gtlSetup.heapSize = heap;
    D_800D6FA8 = 0;
    D_8012D920 = 0;
    D_800D6FAC = 0;
    D_800D7B78 = D_800D7B7C = D_800D7B80 = 0;
    gameSetUpdateRate(2.0f);
    if ((D_800BE500 == 6) && (D_800BE504 == 0) && (D_800BE534 == 2)) {
        gtlCreateScene(&D_80123F68);
    } else {
        gtlCreateScene(&D_80123EDC);
    }
    func_800F7484(D_800BE508);
    func_800BB3F0();
}
