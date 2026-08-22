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

void func_801E025C_ovl14(GObj *arg0) {
    extern void func_801A3E80_ovl7(GObj *);
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
    extern void func_801AE7E0_ovl7(s32);
    extern void func_800AA018(s32);
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
    extern void func_801A3E80_ovl7(GObj *);
    extern void func_800AA018(s32);
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
extern void func_801AE7E0_ovl7(s32);
extern void func_800AA018(s32);
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
    extern void func_801A3E80_ovl7(GObj *);
    extern void func_800AA018(s32);
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
    extern void func_801AE7E0_ovl7(s32);
    extern void func_800AA018(s32);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1728_ovl14.s")

void func_801E1CE0_ovl14(GObj *arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14_2/func_801E1CE8_ovl14.s")

void func_801E2028_ovl14(void) {
    s32 temp;

    temp = (&D_800D7098.unk0)[D_800EC2E0[omCurrentObj->objId].as_s32];
    if (temp != 0) {
        D_800E98E0[temp] = 1;
    }
    func_800FB914(1);
}

void func_801E208C_ovl14(GObj *arg0) {
    extern void func_801ACF84_ovl7(GObj *);
    extern void func_800AA018(s32);
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
extern void func_801A3E80_ovl7(GObj *);
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
    extern void func_801ACF84_ovl7(GObj *);
    extern void func_800AA018(s32);
    extern void func_8019B9B0_ovl7(void);
    extern void func_800B78AC(GObj *);
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
/* 10/103: the parameter is homed where the ROM homes nothing, and IDO
   materialises %hi(gEntityGObjProcessArray) above the branch where the ROM
   materialises %hi(func_801A3E80_ovl7). */
extern u32 D_8012BCA0;
extern s32 D_801CA738_ovl7;
extern s32 func_801117BC(s32 *, u32);
extern void func_80111C4C(s32);

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
