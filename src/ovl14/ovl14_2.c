#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#define D_800E9FE0_PTR
#include "ovl1/ovl1_6.h"
#include "GObj.h"

#include "buffers.h"
#include "ovl14.h"
#include "ovl14_2.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "ovl2/ovl2_8.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern FUNCLIST D_801E2F3C_ovl14;

/* func_801DFD90_ovl14 is ovl14.c's trailing alignment padding -- see ovl14.c */

extern void func_800B4924(GObj *);
void func_801DFDA0_ovl14(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] =
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] + gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]] + 800.0f;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, D_801E2F30_ovl14);
}

extern void func_800A9864(s32, s32, s32);
extern void func_801A0D50_ovl7(void *);
void func_801DFEA4_ovl14(GObj *arg0) {
    func_800A9864(0x1006D, 0x23, 0x10);
    D_800DF150[omCurrentObj->objId] = func_801E0058_ovl14;
    func_801A0D50_ovl7(func_801DFFD8_ovl14);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] - 260.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_801DFFD8_ovl14(arg0);
}

void func_801DFFD8_ovl14(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E2F3C_ovl14);
    }
}









void func_801E0058_ovl14(GObj *arg0) {
    s32 temp;

    if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        return;
    }
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 6) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DFFD8_ovl14);
        return;
    }
    temp = D_800E7CE0[D_800E0D50[omCurrentObj->objId]];
    if (temp != 0) {
        D_800E7CE0[omCurrentObj->objId] = temp;
        if (((D_800E7CE0[omCurrentObj->objId] % 4) < 2) ||
            (D_800E7CE0[D_800E0D50[omCurrentObj->objId]] <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0.0);
        } else {
            func_801DE548_ovl14(arg0, 1.0);
        }
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_801E2F48_ovl14);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (func_801E1CE8_ovl14() != 0) {
            D_800EC660[D_800E0D50[omCurrentObj->objId]] =
                (6.0f - D_800E7B20[omCurrentObj->objId]) + D_800EC660[D_800E0D50[omCurrentObj->objId]];
            D_800E7B20[omCurrentObj->objId] = 6.0f;
        }
    }
}

extern void func_801A3E80_ovl7(GObj *);
extern void func_801AE7E0_ovl7(s32);
extern void func_800AA018(s32);
void func_801E025C_ovl14(GObj *arg0) {
/* D_801E30C0_ovl14 = 65535.0f : now emitted by this TU */
    struct EnemyRecord *sp24 = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800FD570(0, sp24->unk94->unk18, 0.0f, 120.0f, 0.0f);
    play_sound(sp24->unk94->unk1C);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = -7.0f;
    D_800E9C60[omCurrentObj->objId] = 0x10639;
    ohSleep(0x3C);
    sp24->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801E03E0_ovl14(GObj *arg0) {

}

void func_801E03E8_ovl14(GObj *arg0) {
    f32 c;
    f32 z;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x1045C);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId] - 1.5707964f;
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId] + 1.5707964f;
    }
    play_sound(0x18C);
    if (D_800EC4A0[omCurrentObj->objId] != 0) {
        ohSleep(0x1E);
    }
    func_800AA018(0x1045B);
    func_800AECC0(1.0f);
    c = 65535.0f;
    z = 0.0f;
    D_800E3590[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = c;
    D_800E3210[omCurrentObj->objId] = 8.666667f;
    D_800E33D0[omCurrentObj->objId] = z;
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E98E0[omCurrentObj->objId] = 1;
    func_801AE7E0_ovl7(0xF);
    D_800E9C60[omCurrentObj->objId] = 0x10634;
    ohSleep(0x1E);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E0610_ovl14(GObj *arg0) {

}

/* D_801E30D4_ovl14 = 65535.0f : now emitted by this TU */
/* D_801E30D8_ovl14 = -8.666667f : now emitted by this TU */
void func_801E0618_ovl14(GObj *arg0) {
    struct EnemyRecord *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    ohSleep(0x1E);
    func_800AA018(0x1045A);
    D_800E9C60[omCurrentObj->objId] = 0x10633;
    play_sound(0x18F);
    ohSleep(0x1E);
    D_800E3210[omCurrentObj->objId] = -8.666667f;
    D_800E9C60[omCurrentObj->objId] = 0x10639;
    play_sound(0x1EF);
    ohSleep(0x1E);
    sp1C->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801E07E8_ovl14(GObj *arg0) {

}

void func_801E07F0_ovl14(GObj *arg0) {
    func_800A9864(0x1006E, 0x23, 0x10);
    D_800DF150[omCurrentObj->objId] = func_801E09D8_ovl14;
    func_801A0D50_ovl7(func_801E0958_ovl14);
    gEntitiesPosXArray[omCurrentObj->objId] =
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] + gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] - 160.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId] + 40.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_801E0958_ovl14(arg0);
}

void func_801E0958_ovl14(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E2F54_ovl14);
    }
}

void func_801E09D8_ovl14(GObj *arg0) {
    s32 temp;

    if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        return;
    }
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 6) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0958_ovl14);
        return;
    }
    temp = D_800E7CE0[D_800E0D50[omCurrentObj->objId]];
    if (temp != 0) {
        D_800E7CE0[omCurrentObj->objId] = temp;
        if (((D_800E7CE0[omCurrentObj->objId] % 4) < 2) ||
            (D_800E7CE0[D_800E0D50[omCurrentObj->objId]] <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0.0);
        } else {
            func_801DE548_ovl14(arg0, 1.0);
        }
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_801E2F60_ovl14);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (func_801E1CE8_ovl14() != 0) {
            D_800EC660[D_800E0D50[omCurrentObj->objId]] =
                (6.0f - D_800E7B20[omCurrentObj->objId]) + D_800EC660[D_800E0D50[omCurrentObj->objId]];
            D_800E7B20[omCurrentObj->objId] = 6.0f;
        }
    }
}

/* D_801E30DC_ovl14 = 65535.0f : now emitted by this TU */
/* D_801E30E0_ovl14 = 1.6f : now emitted by this TU */
extern s32 D_801DA9B8;
void func_801E0BDC_ovl14(GObj *arg0) {
    struct EnemyRecord *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10460);
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 1.6f;
    D_800E33D0[omCurrentObj->objId] =
        (D_800EA8A0[omCurrentObj->objId] - gEntitiesNextPosZArray[omCurrentObj->objId]) / 100.0f;
    func_801AE7E0_ovl7(0xF);
    D_800E9C60[omCurrentObj->objId] = 0x10635;
    ohSleep(0x50);
    sp1C->unk8C = &D_801DA9B8;
    D_800E98E0[omCurrentObj->objId] = 2;
    ohSleep(0x14);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E0D70_ovl14(GObj *arg0) {

}

/* D_801E30E4_ovl14 = 65535.0f : now emitted by this TU */
/* D_801E30E8_ovl14 = 65535.0f : now emitted by this TU */
/* D_801E30EC_ovl14 = -3.5555556f : now emitted by this TU */
void func_801E0D78_ovl14(GObj *arg0) {
    struct EnemyRecord *sp1C;

    sp1C = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_800AA018(0x10461);
    ohSleep(0x14);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = -3.5555556f;
    D_800E9C60[omCurrentObj->objId] = 0x1063A;
    ohSleep(0x2D);
    sp1C->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_801E0FA8_ovl14(GObj *arg0) {

}

void func_801E0FB0_ovl14(GObj *arg0) {
    func_800A9864(0x1006E, 0x23, 0x10);
    D_800DF150[omCurrentObj->objId] = func_801E1198_ovl14;
    func_801A0D50_ovl7(func_801E1118_ovl14);
    gEntitiesPosXArray[omCurrentObj->objId] =
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] + gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] - 160.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId] + 120.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_801E1118_ovl14(arg0);
}

void func_801E1118_ovl14(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E2F6C_ovl14);
    }
}

void func_801E1198_ovl14(GObj *arg0) {
    s32 temp;

    if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        return;
    }
    if (D_800E9AA0[omCurrentObj->objId] == 0) {
        if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 6) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E1118_ovl14);
            return;
        }
    }
    temp = D_800E7CE0[D_800E0D50[omCurrentObj->objId]];
    if (temp != 0) {
        D_800E7CE0[omCurrentObj->objId] = temp;
        if (((D_800E7CE0[omCurrentObj->objId] % 4) < 2) ||
            (D_800E7CE0[D_800E0D50[omCurrentObj->objId]] <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0.0);
        } else {
            func_801DE548_ovl14(arg0, 1.0);
        }
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_801E2F78_ovl14);
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (func_801E1CE8_ovl14() != 0) {
            D_800EC660[D_800E0D50[omCurrentObj->objId]] =
                (6.0f - D_800E7B20[omCurrentObj->objId]) + D_800EC660[D_800E0D50[omCurrentObj->objId]];
            D_800E7B20[omCurrentObj->objId] = 6.0f;
        }
    }
}

// The `- 40` integer literal IS load-bearing: it forks the second 40.0f the
// ROM materialises separately from the two divisions' shared one.
void func_801E13C0_ovl14(GObj *arg0) {
    f32 c;
    f32 z;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10460);
    c = 65535.0f;
    z = 0.0f;
    D_800E3590[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = c;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E33D0[omCurrentObj->objId] = z;
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3E50[omCurrentObj->objId] = c;
    play_sound(0x18C);
    func_801AE7E0_ovl7(0xF);
    D_800E9C60[omCurrentObj->objId] = 0x10636;
    ohSleep(0x14);
    D_800E3050[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] - gEntitiesNextPosXArray[omCurrentObj->objId]) / 40.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E33D0[omCurrentObj->objId] = ((D_800EA8A0[omCurrentObj->objId] - 40) - gEntitiesNextPosZArray[omCurrentObj->objId]) / 40.0f;
    play_sound(0x18A);
    ohSleep(0x14);
    D_800E3210[omCurrentObj->objId] = -8.0f;
    D_800E9C60[omCurrentObj->objId] = 0x1063B;
    ohSleep(0x14);
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    ohSleep(5);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801E1720_ovl14(GObj *arg0) {

}

extern void func_800A9760(s32);
extern void func_800A9EA4(s32);
extern void func_800BB468(s32, s32);
extern void func_800FB914(s32);
extern s32 D_801DAA48;
/* FACTORY: 268/366 measured; the ROM is 370 words, so this draft is FOUR
   words short and the residue is register allocation on top of that.
   What is solid: every statement, both `c`/`z` hoisted-literal locals (the
   file's own idiom, see the matched func_801E13C0_ovl14 above), the three
   chained position assignments, and func_800A9EA4's ARGUMENT -- the ROM
   materialises 0x10463 into $a0 for it, so it is `func_800A9EA4(0x10463)`,
   not the `(void)` call m2c-style drafts assume (worth 38 words: 307 -> 269).
   What is missing: the ROM re-reads `omCurrentObj->objId` for BOTH halves of
   the `gEntitiesPosYArray[i] += ...` / `gEntitiesNextPosYArray[i] = ...` pair
   (lw+sll twice = the four words) where IDO reuses the $s0 it already holds
   from the gEntitiesPosXArray statement above; and the ROM's frame is 0x50
   against IDO's 0x48 because the ROM hoists three array bases (&D_800E3910,
   &D_800E3590, &D_800E3E50) into $s2/$s3/$s4 and IDO picks a different set.
   Swept and rejected: `z = 0.0f` hoisted next to `c` (no change), two
   unreferenced scalar pads and an unreferenced `s32 pad[2]` (neither reserves
   a slot -- lever 30's leaf case), and `a[i] = a[i] + x` vs `a[i] += x`
   (one word, kept the `+=`). */
#if defined(MIPS_TO_C) || defined(PORT)
/* The PORT arm is this same body: nothing here is N64-only -- every array is
   indexed through its declared type, the only pointer written is
   EnemyRecord.unk8C (a real `s32 *`), and D_800D7098 is read through its
   struct.  One arm rather than two duplicated copies. */
void func_801E1728_ovl14(GObj *arg0) {
    struct EnemyRecord *rec;
    f32 c;
    f32 z;
    s32 other;

    rec = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9760(0x1006F);
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 420.0f;
    rec->unk8C = &D_801DAA48;
    D_800E98E0[omCurrentObj->objId] = 3;
    D_800E9AA0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x10463);
    c = 65535.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId] =
        D_800EA6E0[omCurrentObj->objId];
    other = (&D_800D7098.unk0)[D_800EC2E0[omCurrentObj->objId].as_s32];
    z = 0.0f;
    gEntitiesPosYArray[omCurrentObj->objId] += 20.0f + (gEntitiesNextPosYArray[other] - D_800EA6E0[other]);
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId] =
        D_800EA8A0[omCurrentObj->objId];
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801E2028_ovl14();
    ohSleep(1);
    D_800E3590[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = c;
    D_800E3210[omCurrentObj->objId] = 2.133333445f * 16.0f;
    D_800E3750[omCurrentObj->objId] = -2.133333445f;
    D_800E33D0[omCurrentObj->objId] = z;
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3E50[omCurrentObj->objId] = c;
    play_sound(0x192);
    func_800BB468(0, 0);
    D_800E9C60[omCurrentObj->objId] = 0x10636;
    ohSleep(0xF);
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    ohSleep(1);
    D_800E3590[omCurrentObj->objId] = z;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = c;
    D_800E3210[omCurrentObj->objId] = z;
    D_800E3750[omCurrentObj->objId] = -0.991735518f;
    D_800E33D0[omCurrentObj->objId] = z;
    D_800E3910[omCurrentObj->objId] = z;
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E9C60[omCurrentObj->objId] = 0x1063B;
    ohSleep(0x16);
    func_800FB914(1);
    ohSleep(3);
    rec->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1728_ovl14.s")
#endif

void func_801E1CE0_ovl14(GObj *arg0) {

}

struct Ovl14CollShape {
    u8 unk0;
    u8 pad1[3];
    s32 unk4;
    s32 unk8;
    u8 padC[0x1C];
};

struct Ovl14CollSlot {
    void *unk0;
    s32 unk4[6];
    struct Ovl14CollShape *unk1C;
    s32 unk20;
    struct Ovl14CollShape *unk24;
};

struct Ovl14AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_80111550(s32);
struct Ovl14CollSlot *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110B00(struct Ovl14AnimInfo *);
s32 func_80110FD4(struct Ovl14AnimInfo *);
s32 func_80110150(struct Ovl14AnimInfo *);

#ifdef MIPS_TO_C
/* FACTORY: 207/207 measured, but INSTRUCTION COUNT and FRAME (0x50) are both
   EXACT and the statement order lines up 1:1 -- the entire residue is one
   register-allocation strategy.  The ROM uses NO callee-saved register at all:
   it re-materialises &omCurrentObj with lui/addiu after every call and keeps
   `rec` in the stack slot at 0x44, reloading it at each of its six uses.  IDO
   instead parks &omCurrentObj in $s0 and `rec` in $s1, which renames every
   word.  Swept: all three declaration orders of {rec, sp24, slot} -- identical
   output each time.  This is the whole-function callee-saved permutation floor
   in LEVERS' "guard on the second variant" list; the permuter is the right
   tool.
   Struct evidence (kept, it is the real point of this derivation): the
   func_80111C88 result is ovl2_9.c's `struct CollSlot`, and its +0x24 field is
   an ARRAY of 0x28-byte `Shape28` records -- the ROM's 0x30/0x58/0x80/0xA8/
   0xD0/0xF8/0x120/0x148 stores are elements 1..8 of that array at field +0x8,
   not eight unrelated offsets.  Spelling it as an array is what makes the two
   cases read as "copy N DObj slots into consecutive collision shapes". */
s32 func_801E1CE8_ovl14(void) {
    struct EnemyRecord *rec;
    struct Ovl14AnimInfo sp24;
    struct Ovl14CollSlot *slot;

    rec = D_800E1B50[omCurrentObj->objId];
    if (rec->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    slot = func_80111C88(rec->unk8C, omCurrentObj->objId);
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 1:
        slot->unk24[1].unk8 = D_800DFBD0[omCurrentObj->objId][3];
        slot->unk24[2].unk8 = D_800DFBD0[omCurrentObj->objId][4];
        slot->unk24[3].unk8 = D_800DFBD0[omCurrentObj->objId][5];
        slot->unk24[4].unk8 = D_800DFBD0[omCurrentObj->objId][6];
        slot->unk24[5].unk8 = D_800DFBD0[omCurrentObj->objId][7];
        slot->unk24[6].unk8 = D_800DFBD0[omCurrentObj->objId][8];
        slot->unk24[7].unk8 = D_800DFBD0[omCurrentObj->objId][9];
        slot->unk24[8].unk8 = D_800DFBD0[omCurrentObj->objId][10];
        break;
    case 2:
        slot->unk24[1].unk8 = D_800DFBD0[omCurrentObj->objId][2];
        slot->unk24[2].unk8 = D_800DFBD0[omCurrentObj->objId][3];
        slot->unk24[3].unk8 = D_800DFBD0[omCurrentObj->objId][4];
        break;
    case 3:
        break;
    }
    func_80111ECC(slot);
    if (func_80110B00(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else if (func_80110FD4(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else if (func_80110150(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        rec->unk43 = 0;
    }
    if ((D_800E83E0[omCurrentObj->objId] == 1) || (D_800E83E0[omCurrentObj->objId] == 2)) {
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* PORT: identical logic.  The only divergence is the store of a host
   `struct DObj *` into Shape28's 4-byte s32 field, which needs the tree's
   explicit truncated sub-4GiB pointer cast (all game-visible memory is below
   4 GiB -- see pc_mmio.c). */
s32 func_801E1CE8_ovl14(void) {
    struct EnemyRecord *rec;
    struct Ovl14AnimInfo sp24;
    struct Ovl14CollSlot *slot;

    rec = D_800E1B50[omCurrentObj->objId];
    if (rec->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    slot = func_80111C88(rec->unk8C, omCurrentObj->objId);
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 1:
        slot->unk24[1].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][3];
        slot->unk24[2].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][4];
        slot->unk24[3].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][5];
        slot->unk24[4].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][6];
        slot->unk24[5].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][7];
        slot->unk24[6].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][8];
        slot->unk24[7].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][9];
        slot->unk24[8].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][10];
        break;
    case 2:
        slot->unk24[1].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][2];
        slot->unk24[2].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][3];
        slot->unk24[3].unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][4];
        break;
    case 3:
        break;
    }
    func_80111ECC(slot);
    if (func_80110B00(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else if (func_80110FD4(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else if (func_80110150(&sp24) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp24.unk2;
        rec->unk43 = sp24.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        rec->unk43 = 0;
    }
    if ((D_800E83E0[omCurrentObj->objId] == 1) || (D_800E83E0[omCurrentObj->objId] == 2)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1CE8_ovl14.s")
#endif

void func_801E2028_ovl14(void) {
    s32 temp;

    temp = (&D_800D7098.unk0)[D_800EC2E0[omCurrentObj->objId].as_s32];
    if (temp != 0) {
        D_800E98E0[temp] = 1;
    }
    func_800FB914(1);
}

extern void func_801ACF84_ovl7(GObj *);
extern void func_8019B9B0_ovl7(void);
extern void func_800B78AC(GObj *);
void func_801E208C_ovl14(GObj *arg0) {
    extern struct EnemyEventTable D_801CB4DC_ovl7;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801E2378_ovl14;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A2, 0x23, 0x10);
    D_800E6A10[omCurrentObj->objId] = D_800EC660[omCurrentObj->objId];
    func_800AA018(0x10560);
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.25f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 7.25f;
            D_800E3210[omCurrentObj->objId] = 9.6f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
            break;
        case 1:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 5.0f;
            D_800E3210[omCurrentObj->objId] = 12.0f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
            break;
        case 2:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.25f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 3.25f;
            D_800E3210[omCurrentObj->objId] = 14.400001f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 14.400001f;
            break;
    }
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

extern void func_801ACF5C_ovl7(GObj *);
void func_801E2378_ovl14(GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        tmp->unk43 = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
    } else {
        func_801ACF5C_ovl7(arg0);
    }
}

void func_801E2410_ovl14(GObj *arg0) {
    extern struct EnemyEventTable D_801CB4DC_ovl7;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800DEF90[omCurrentObj->objId] = func_800B78AC;
    D_800DF150[omCurrentObj->objId] = func_801E2378_ovl14;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A8, 0x23, 0x10);
    func_8019B9B0_ovl7();
    func_800AA018(0x10567);
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 5.25f;
            break;
        case 1:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
            break;
        case 2:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 8.75f;
            break;
    }
    ohSleep(0x5A);
    func_801ACF84_ovl7(arg0);
}

#ifdef NON_MATCHING
/* 9/137: exact except $f12/$f14 are swapped between the shared 0.0f and 6.0f
 * constants; IDO allocates them in first-assignment order and the ROM does not. */
extern void func_801ABBA0_ovl7(void);
extern void func_80199F58_ovl7(void *);
extern f32 D_801E312C_ovl14;
extern struct EnemyEventTable D_801CB470_ovl7;
/* barrier_sweep.py (LEVER 71) 2026-08-25: all 12 statement placements tried, none beats the base 9/137. */
void func_801E2610_ovl14(GObj *arg0) {
    extern void func_801A3E80_ovl7(GObj *);
    extern void func_800AA018(s32);
    s32 sp1C;
    struct EnemyRecord *sp18;

    sp1C = D_800E0D50[omCurrentObj->objId];
    sp18 = D_800E1B50[omCurrentObj->objId];
    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801E2834_ovl14;
    sp18->unk98 = &D_801CB470_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_80199F58_ovl7(arg0);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10567);
    D_800E64D0[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    D_800E64D0[omCurrentObj->objId] =
        (ABSF(D_800E64D0[sp1C]) + 6.0f) * D_800E6A10[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = D_801E312C_ovl14;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    ohSleep(0x78);
    func_801A3E80_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2610_ovl14.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 10/103, re-measured 2026-08-24. The listing has NO `sw $a0` at
   all, so the ROM's definition takes no parameter -- src/ovl14/ovl14_2.h's
   `void func_801E2834_ovl14(GObj *arg0);` is a wrong prototype, not just a
   matching detail. Measured both ways: keeping the parameter is 10/103 (the
   home store at word 4 displaces the ROM's `nop` at word 12, so the counts
   still agree and the two streams re-sync at word 13); changing the header to
   `void func_801E2834_ovl14();` and the definition to `(void)` drops the home
   store but comes out 102 words and 93 diffs, because IDO then materialises
   %hi(gEntityGObjProcessArray) above the branch where the ROM materialises
   %hi(func_801A3E80_ovl7). So the prototype fix is necessary but not
   sufficient; whoever finishes this needs the argument-evaluation order of
   `assign_new_process_entry(gEntityGObjProcessArray[objId],
   func_801A3E80_ovl7)` to put the SECOND argument's %hi first, and the header
   change must then be A/B'd across every TU that includes ovl14_2.h. */
extern u32 D_8012BCA0;
extern s32 D_801CA738_ovl7;
extern s32 func_801117BC(s32 *, u32);
extern void func_80111C4C(s32);

/* barrier_sweep.py (LEVER 71) 2026-08-25: all 11 statement placements tried, none beats the base 10/103. */
void func_801E2834_ovl14(GObj *arg0) {
    u32 temp;

    if (D_800E83E0[omCurrentObj->objId] != 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return;
    }
    func_801A0D74_ovl7();
    temp = D_8012BCA0 >> 19;
    if (temp != 0) {
        if ((temp & 0xE00) != 0) {
            func_800FB914(1);
            play_sound(0x98);
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
        return;
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3C90[omCurrentObj->objId] = 5.0f;
        if (0.0f < D_800E3210[omCurrentObj->objId]) {
            D_800E3750[omCurrentObj->objId] = -0.4875f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.975f;
        }
    } else {
        D_800E3750[omCurrentObj->objId] = -0.975f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2834_ovl14.s")
#endif

void func_801E29D0_ovl14(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801E2AD8_ovl14;
    func_801A0D50_ovl7(func_801E2A54_ovl14);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_801E2A54_ovl14(arg0);
}

void func_801E2A54_ovl14(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801E2F84_ovl14);
    }
}

void func_801E2AD8_ovl14(GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        tmp->unk43 = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
    } else {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_801E2F90_ovl14);
    }
}

#ifdef NON_MATCHING
/* FACTORY: 178/181, whole-function callee-saved permutation. Every statement
   DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 178 of 181 words differ (98%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand.

 * is right; IDO promotes one base pointer more than the ROM (s0-s7 vs the
 * ROM's s0-s6) and so renames every saved register, shifting the prologue.
 * The `f32 s; f32 t;` loop-constant locals ARE load-bearing -- without them
 * IDO keeps 0.6f/-0.4f out of $f20/$f22 entirely and the loop grows. */
void func_801E2B84_ovl14(GObj *arg0) {
    extern void func_800AA018(s32);
    extern struct EnemyEventTable D_801CCB80_ovl7;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];
    f32 s;
    f32 t;

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCB80_ovl7;
    func_800AA018(0x1012B);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    D_800E98E0[omCurrentObj->objId] = random_soft_s32_range(3) + 2;
    D_800E9AA0[omCurrentObj->objId] = 0;
    ohSleep(5);
    t = -0.4f;
    s = 0.6f;
    do {
        if (D_800E98E0[omCurrentObj->objId] == 1) {
            D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * s;
            D_800E3750[omCurrentObj->objId] = t;
        }
        ohSleep(0xA);
        D_800E98E0[omCurrentObj->objId] -= 1;
        D_800E9AA0[omCurrentObj->objId] = 1;
    } while (D_800E98E0[omCurrentObj->objId] > 0);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E2B84_ovl14.s")
#endif

void func_801E2E4C_ovl14(void) {
    if (D_800E9AA0[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7();
    }
    func_8019F3B0_ovl7();
}
