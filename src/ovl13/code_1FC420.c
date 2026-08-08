#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl13.h"
#include "ovl13_2.h"

void func_801E44A0_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B6E84;
    D_800DF150[omCurrentObj->objId] = func_801E47B0_ovl13;
    func_801A0D50_ovl7(&func_801E45B8_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5C00_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C04_ovl13);
    }
}

void func_801E45B8_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C04_ovl13);
    }
}

void func_801E4638_ovl13(GObj *arg0) {
    func_800B19F4(0x70, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    ohSleep(4);
    func_800B19F4(0x30, omCurrentObj->objId);
    func_800AFBB4(1, omCurrentObj);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 20.0f;
    func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                  D_800E6A10[omCurrentObj->objId] * 40.0f);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E47B0_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, D_801E5C08_ovl13);
}

void func_801E47F8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD20;
    func_800AECC0(gameTicksPerDraw * 4.0f);
    func_800AED20(gameTicksPerDraw * 4.0f);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800E98E0[omCurrentObj->objId] = 0;
    ((s32 *)D_800E9AA0)[omCurrentObj->objId] = 0xF0;
    func_800AA018(0x10158);
    func_800AA018(0x10159);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    ohSleep(8);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    ((s32 *)D_800E9AA0)[omCurrentObj->objId] -= 1;
    while (((s32 *)D_800E9AA0)[omCurrentObj->objId] > 0) {
        if (D_800E3750[omCurrentObj->objId] < 0) {
            if (D_800E3210[omCurrentObj->objId] < -8.0f) {
                D_800E3750[omCurrentObj->objId] = ABSF(D_800E3750[omCurrentObj->objId]);
            }
        } else if (D_800E3210[omCurrentObj->objId] > 8.0f) {
            D_800E3750[omCurrentObj->objId] = -ABSF(D_800E3750[omCurrentObj->objId]);
        }
        ohSleep(1);
        ((s32 *)D_800E9AA0)[omCurrentObj->objId] -= 1;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    func_801A3E80_ovl7(arg0);
}

void func_801E4B0C_ovl13(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] += 1;
    D_800E98E0[omCurrentObj->objId] %= 6;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][0]);
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.8f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    if (!(arg0->flags & 1)) {
        func_8019F3B0_ovl7();
    }
}

void func_801E4C50_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
}

void func_801E4CC4_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.8f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
}

void func_801E4D38_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B6E84;
    D_800DF150[omCurrentObj->objId] = func_801E5050_ovl13;
    func_801A0D50_ovl7(&func_801E4E58_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5C0C_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C10_ovl13);
    }
}

void func_801E4E58_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C10_ovl13);
    }
}

void func_801E4ED8_ovl13(GObj *arg0) {
    func_800B19F4(0x70, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    ohSleep(4);
    func_800B19F4(0x30, omCurrentObj->objId);
    func_800AFBB4(1, omCurrentObj);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 20.0f;
    func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                  D_800E6A10[omCurrentObj->objId] * 40.0f);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E5050_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, D_801E5C14_ovl13);
}

void func_801E5098_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD44;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0x168;
    func_800AA018(0x1055C);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    ohSleep(D_800E9AA0[omCurrentObj->objId]);
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    func_801A3E80_ovl7(arg0);
}

void func_801E51FC_ovl13(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] += 1;
    D_800E98E0[omCurrentObj->objId] %= 5;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][1]);
    }
    if (!(arg0->flags & 1)) {
        func_8019F3B0_ovl7();
    }
}

void func_801E52B4_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801E55D0_ovl13;
    func_801A0D50_ovl7(&func_801E53D8_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5C18_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C1C_ovl13);
    }
}

void func_801E53D8_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E5C1C_ovl13);
    }
}

void func_801E5458_ovl13(GObj *arg0) {
    func_800B19F4(0x70, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    ohSleep(4);
    func_800B19F4(0x30, omCurrentObj->objId);
    func_800AFBB4(1, omCurrentObj);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] - 20.0f;
    func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId],
                  D_800E6A10[omCurrentObj->objId] * 40.0f);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E55D0_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, D_801E5C20_ovl13);
}

void func_801E5618_ovl13(GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD68;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = 0x1E0;
    func_800AA018(0x1001F);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.5f;
    for (temp = 0.6f; temp < 1.0f; temp += 0.025f) {
        gEntitiesScaleZArray[omCurrentObj->objId] = temp;
        gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] =
            gEntitiesScaleZArray[omCurrentObj->objId];
        ohSleep(1);
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleXArray[omCurrentObj->objId] =
        gEntitiesScaleXArray[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.2f;
    D_800E3C90[omCurrentObj->objId] = 5.5f;
    ohSleep(D_800E9AA0[omCurrentObj->objId]);
    gEntityFuncListIDArray[omCurrentObj->objId] = -1;
    func_801A3E80_ovl7(arg0);
}

void func_801E58C4_ovl13(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] += 1;
    D_800E98E0[omCurrentObj->objId] %= 5;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][0]);
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 18.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 18.0f;
        D_800E3210[omCurrentObj->objId] = 5.5f;
        D_800E3750[omCurrentObj->objId] = -0.2f;
        D_800E3C90[omCurrentObj->objId] = 5.5f;
    }
    if (!(arg0->flags & 1)) {
        func_8019F3B0_ovl7();
    }
}

void func_801E5A04_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 5.5f;
    D_800E3750[omCurrentObj->objId] = -0.2f;
    D_800E3C90[omCurrentObj->objId] = 5.5f;
}
