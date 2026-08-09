#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_801F44B4_ovl10;
extern FUNCLIST D_801F4510_ovl10;
extern FUNCLIST D_801F4528_ovl10;
extern FUNCLIST D_801F4540_ovl10;
extern FUNCLIST D_801F4558_ovl10;
extern FUNCLIST D_801F4570_ovl10;
extern FUNCLIST D_801F4588_ovl10;
extern FUNCLIST D_801F45B8_ovl10;

s32 func_801A0D74_ovl7(void);
void func_8019B424_ovl7(void);
void eneTurnCommon(s32);
void func_8019D4D0_ovl7(f32, s32);
void func_80199F1C_ovl7(void);
void func_800AECC0(f32);
void func_801ACCA0_ovl7(s32, s32, f32, f32);
void play_sound(s32);
void func_801A0D50_ovl7(void *);
void func_801EC3C8_ovl10(GObj *);
extern s32 random_soft_s32_range(s32);
void func_801E6030_ovl10(void);
extern FUNCLIST D_801F451C_ovl10;
extern FUNCLIST D_801F4534_ovl10;
extern FUNCLIST D_801F454C_ovl10;
extern FUNCLIST D_801F4564_ovl10;
extern FUNCLIST D_801F457C_ovl10;
void func_801E6D08_ovl10(struct GObj *);
void func_801E8008_ovl10(struct GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3770_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3874_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3A64_ovl10.s")

void func_801E3BE4_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, &D_801F44B4_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3C2C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3E04_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E3F7C_ovl10.s")

void func_801E3BE4_ovl10(struct GObj *);

void func_801E4030_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E3BE4_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E409C_ovl10.s")

void func_801E4284_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 1) {
        D_800EA520[omCurrentObj->objId] = 1;
        func_800AECC0(0.0f);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E42E4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4518_ovl10.s")

void func_801E46FC_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 2) {
        func_800AECC0(0.0f);
        D_800E9E20[omCurrentObj->objId] = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4764_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E48C8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E499C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4A74_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4BC8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4C7C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E4D6C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E50A4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5184_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5278_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5364_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5468_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E552C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E56C4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5754_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E589C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5B08_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5C4C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5CF0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5D98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5DC8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E5F60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6030_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6298_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E63E4_ovl10.s")

void func_801E63FC_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4510_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6444_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6564_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6614_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E66E0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E679C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6AB4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6BA8_ovl10.s")

void func_801E6CAC_ovl10(void) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6310[omCurrentObj->objId] != 0 && temp->unk3C == 0) {
        func_80199F1C_ovl7();
    }
}

void func_801E6D08_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4528_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6D50_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6E84_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E6F34_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7000_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E70BC_ovl10.s")

void func_801E7248_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E6D08_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E72B8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7424_ovl10.s")

void func_801E75E4_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4540_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E762C_ovl10.s")

void func_801E7760_ovl10(void) {
    s32 temp = 0;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        temp = func_801A0D74_ovl7();
    }
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801F454C_ovl10);
    }
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_801E6030_ovl10();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7808_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E78D4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7990_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7C38_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7CC0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E7ED4_ovl10.s")

void func_801E8008_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4558_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8050_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8184_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8234_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8300_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E83BC_ovl10.s")

void func_801E8548_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8008_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E85B8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E871C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E88E4_ovl10.s")

void func_801E8988_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801F4570_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E89D0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8AF8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8BA8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8C68_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8D24_ovl10.s")

void func_801E8988_ovl10(struct GObj *);

void func_801E8F24_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E8988_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E8F90_ovl10.s")

void func_801E90CC_ovl10(void) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    if (D_800E6310[omCurrentObj->objId] != 0 && temp->unk3C == 0) {
        func_80199F1C_ovl7();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9128_ovl10.s")

void func_801E91B0_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801F4588_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E91F8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E932C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E93F8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E94C4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E95C4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9770_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E980C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9A10_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9ACC_ovl10.s")

void func_801E9B7C_ovl10(GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && (s32) arg2 == 1) {
        func_801ACCA0_ovl7(0x1A, 0, 0.0f, 0.0f);
        play_sound(0x1D4);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9BDC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9DCC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801E9ECC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA048_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA1E4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA364_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA4C0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA630_ovl10.s")

void func_801E91B0_ovl10(struct GObj *);

void func_801EA718_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E91B0_ovl10);
    }
}

void func_801EA784_ovl10(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801F45B8_ovl10);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA7CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA900_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EA9CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAA98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAB98_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EAF3C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB018_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB0C0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB1A4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB20C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB2C4_ovl10.s")

void func_801EA784_ovl10(struct GObj *);

void func_801EB39C_ovl10(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EA784_ovl10);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB408_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB744_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB84C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EB9DC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBA74_ovl10.s")

void func_801EBC28_ovl10(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBC60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBDE8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBF2C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EBFDC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC120_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC2A0_ovl10.s")

void func_801EC37C_ovl10(GObj *arg0) {
    func_801A0D50_ovl7(func_801EC3C8_ovl10);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801EC3C8_ovl10(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC3C8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC4CC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC6D8_ovl10.s")

void func_801EC928_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EC930_ovl10.s")

void func_801ECA0C_ovl10(void) {
    func_8019B424_ovl7();
    eneTurnCommon(1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECA34_ovl10.s")

void func_801ECCE4_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECCEC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECE90_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ECF48_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED208_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED2CC_ovl10.s")

void func_801ED6B8_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED6E4_ovl10.s")

void func_801ED7C8_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED7D0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801ED930_ovl10.s")

void func_801EDA98_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDAA0_ovl10.s")

void func_801EDD1C_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDD24_ovl10.s")

void func_801EDF58_ovl10(GObj *arg0) {
    func_8019D4D0_ovl7(15.0f, 8);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EDF84_ovl10.s")

void func_801EE048_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE050_ovl10.s")

void func_801EE244_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE24C_ovl10.s")

void func_801EE408_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE410_ovl10.s")

void func_801EE5A8_ovl10(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE5B0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EE990_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEB30_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEE44_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEED4_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEF4C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EEFCC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EF0F0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EF15C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_3/func_801EF218_ovl10.s")

