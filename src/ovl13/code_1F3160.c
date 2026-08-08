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

void func_801DB1E0_ovl13(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801DB358_ovl13;
    func_801A0D50_ovl7(&func_801DB2D8_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E5A80_ovl13), D_801E5A80_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB2D8_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB358_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E5AD8_ovl13), D_801E5AD8_ovl13);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DB3A0_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DB870_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DC788_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DC8CC_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DCA40_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DCB28_ovl13.s")

void func_801DCC7C_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    temp_v0->unk80->unk10 = 60.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DCDA8_ovl13(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(3);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DCE9C_ovl13.s")

void func_801DD148_ovl13(void) {
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DD184_ovl13.s")

void func_801DD3A8_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DD46C_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    func_800AA154(0x10427);
    func_800AA154(0x10429);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DD550_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DD614_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DD888_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DDADC_ovl13.s")

s32 func_801DDC18_ovl13(void) {
    s32 track;

    track = func_8019DD78_ovl7();
    if (track != -1) {
        D_800E8E60[track] = 0;
    }
    return track;
}

void func_801DDC58_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.1f;
    D_800E3750[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * -0.1f;
    ohSleep(0xA);
    func_800B33F4();
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801DDD90_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DDE54_ovl13.s")

void func_801DE084_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0[23], temp_v0[4], temp_v0[6]);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DE148_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DF294_ovl13.s")

void func_801DF588_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32)arg2 == 1)) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DF5D0_ovl13.s")

void func_801E0928_ovl13(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->pos.v.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E0A90_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E11D0_ovl13.s")

void func_801E135C_ovl13(GObj *arg0) {
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10426);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 3) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E15DC_ovl13(GObj *arg0) {
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801E1680_ovl13(GObj *arg0) {
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E185C_ovl13(GObj *arg0) {
    s32 i;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x10426);
    for (i = 60; i; i--) {
        ohSleep(1);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 11;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E19AC_ovl13.s")

void func_801E1ED8_ovl13(GObj *arg0) {
    f32 *temp_v1;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1 = &D_800E64D0[omCurrentObj->objId];
    *temp_v1 = -*temp_v1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E1F1C_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2034_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2630_ovl13.s")

void func_801E28A8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x1041E);
    D_800DF310[omCurrentObj->objId] = func_801E2F0C_ovl13;
    func_800AEFFC(3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E29E0_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2F0C_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3028_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E35F4_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E36D8_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3778_ovl13.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E37E8_ovl13.s")

void func_801E3958_ovl13(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] += 1;
    D_800E9C60[omCurrentObj->objId] %= 6;
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][12]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][14]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][16]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][8]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3A84_ovl13.s")
