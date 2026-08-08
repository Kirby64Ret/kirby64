#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl15.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB1E0_ovl15.s")

void func_801DB2F8_ovl15(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_801E647C_ovl15);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB378_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB400_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DB770_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DBE20_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DBEAC_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC0DC_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC10C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC13C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC310_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC594_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DC890_ovl15.s")

void func_801DCA3C_ovl15(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    D_800DF150[omCurrentObj->objId] = func_801DD7C0_ovl15;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    func_800A9864(0x100D9, 0x23, 0x10);
    func_800AA018(0x10618);
    func_800AA154(0x10617);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCB64_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DCDA8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD03C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD208_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD318_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD4EC_ovl15.s")

void func_801DD74C_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AA864(0x103CB, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DD7C0_ovl15(struct GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD7C8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DD950_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DDBA8_ovl15.s")

void func_801DDD74_ovl15(struct GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 7;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
    D_800EA1A0[omCurrentObj->objId] = 1;
    play_sound(0x1E7);
    func_800BB468(2, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] + 400.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800D7118.unk3C = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DDE90_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE234_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE5DC_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE71C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DE7C8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DEA10_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DEA98_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DEFB0_ovl15.s")

void func_801DF148_ovl15(struct GObj *arg0) {
    D_800D7098.unk14 = 1;
    D_800DDFD0[omCurrentObj->objId] = 5;
    func_800B33F4();
    if (-6000.0f < gEntitiesNextPosXArray[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
        D_800E3050[omCurrentObj->objId] = -2.0f;
        D_800E3590[omCurrentObj->objId] = 0.0f;
        func_800AA864(0x103D7, 4);
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
    D_800E3050[omCurrentObj->objId] = -2.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF260_ovl15.s")

void func_801DF410_ovl15(struct GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x10;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    D_800EBDA0[omCurrentObj->objId] = func_8019E0A4_ovl7(4, 2);
    D_800EA1A0[omCurrentObj->objId] = 1;
    play_sound(0x19E);
    func_800BB468(3, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId] + 200.0f, gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800D7118.unk3C = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF52C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF64C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DF790_ovl15.s")

void func_801DF9C8_ovl15(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 7;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    func_800AA018(0x103D1);
    D_800DF310[omCurrentObj->objId] = func_801DFC10_ovl15;
    func_800AF27C();
    func_800AA864(0x103D7, 4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DFA60_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DFC10_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DFCF4_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801DFF14_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E00C4_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E0380_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E05A8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E0F44_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1230_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E15B0_ovl15.s")

s32 func_801E173C_ovl15(void) {
    s32 temp_v0;

    temp_v0 = func_8019DD78_ovl7();
    if (temp_v0 != -1) {
        D_800E8E60[temp_v0] = 0;
    }
    return temp_v0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E177C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1868_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E19D0_ovl15.s")

void func_801E1B98_ovl15(s32 arg0, s32 arg1) {
    struct Unk80111C88 *temp_v0;
    struct UnkStruct800E1B50 *sp18;

    sp18 = D_800E1B50[omCurrentObj->objId];
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(sp18->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    func_80110150(arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1C20_ovl15.s")

void func_801E1E88_ovl15(struct GObj *arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E8920[omCurrentObj->objId] = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E1F34_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E27BC_ovl15.s")

void func_801E2F60_ovl15(struct GObj *arg0) {
    func_801A3280_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66B0_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801E66C0_ovl15);
    }
}

void func_801E2FF8_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3038_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3078_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E30B8_ovl15(struct GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E30F8_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E3404_ovl15.s")

void func_801E34FC_ovl15(struct GObj *arg0) {
    D_800E9560[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66D4_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E66E4_ovl15);
    }
}

void func_801E35B8_ovl15(struct GObj *arg0) {
    D_800E9560[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, D_801E66D4_ovl15);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801E66E4_ovl15);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E3678_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E3B58_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E3ED4_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E48E4_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E5080_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E531C_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E56CC_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E5C34_ovl15.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl15/ovl15/func_801E5D54_ovl15.s")
