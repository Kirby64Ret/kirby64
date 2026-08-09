#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

#include "main/object_helpers.h"
#include "unk_structs/D_800E1B50.h"
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct Sub800E1B50_Unk98 D_801CC064_ovl7;
extern struct Sub800E1B50_Unk98 D_801CC0AC_ovl7;
extern struct Sub800E1B50_Unk98 D_801CC0F4_ovl7;
s32 func_8019A7E8_ovl7(f32);
void func_800AA018(s32);
void func_801B57A0_ovl7(GObj *);
void func_801B4DB0_ovl7(GObj *);
void func_801B5A84_ovl7(GObj *, s32, f32);

void func_80199628_ovl7(void);
void func_800A9EA4(s32);
void func_801B51F0_ovl7(void);
void curObjSleepForever(void);

extern FUNCLIST D_801CD620_ovl7;
extern FUNCLIST D_801CD628_ovl7;
extern FUNCLIST D_801CD6A8_ovl7;
extern FUNCLIST D_801CD6B8_ovl7;
extern FUNCLIST D_801CD6E8_ovl7;
extern FUNCLIST D_801CD6F4_ovl7;
extern FUNCLIST D_801CD700_ovl7;
extern FUNCLIST D_801CD70C_ovl7;
extern FUNCLIST D_801CD718_ovl7;
extern FUNCLIST D_801CD71C_ovl7;
void func_800AECC0(f32);
s32 func_801A0D74_ovl7(void);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
void func_8019D2FC_ovl7(f32, s32);
void func_8019B424_ovl7(GObj *);
void func_800B6B8C(GObj *);


void func_800AECC0(f32);
s32 func_801A0D74_ovl7(void);
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
void func_8019D2FC_ovl7(f32, s32);
void func_8019B424_ovl7(GObj *);
void func_800B6B8C(GObj *);

void func_801B4D50_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD620_ovl7);
}

void func_801B4DB0_ovl7(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_801CD628_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B4DF8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B4F60_ovl7.s")

void func_801B50B8_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10205);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801B514C_ovl7(GObj *arg0) {
    s32 *p = &D_800E9720[omCurrentObj->objId];

    if (*p == 0) {
        if (func_8019A7E8_ovl7(200.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B4DB0_ovl7);
        }
    } else {
        *p = *p - 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B51F0_ovl7.s")

void func_801B5294_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10201);
    func_801B51F0_ovl7();
    curObjSleepForever();
}

void func_801B5314_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B531C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B5408_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B554C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B5638_ovl7.s")

void func_801B575C_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_801CD6A8_ovl7);
}

void func_801B57A0_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_801CD6B8_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B57F4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B58A8_ovl7.s")

void func_801B5940_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC064_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

void func_801B59EC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (func_8019A7E8_ovl7(240.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
        }
    }
}

void func_801B5A84_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E3210[omCurrentObj->objId] = 13.0f;
        D_800E3750[omCurrentObj->objId] = -0.5f;
        D_800E3C90[omCurrentObj->objId] = 13.0f;
    }
}

void func_801B5B04_ovl7(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x100BF);
    D_800DF310[omCurrentObj->objId] = func_801B5A84_ovl7;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B5BB0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B5C7C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B5DEC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6020_ovl7.s")

void func_801B6130_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk3C == 0) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B57A0_ovl7);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B61B0_ovl7.s")

void func_801B62A8_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B62B0_ovl7.s")

void func_801B6374_ovl7(GObj *arg0) {
}

void func_801B637C_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B63E4_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD6E8_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6438_ovl7.s")

void func_801B6588_ovl7(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD6F4_ovl7);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801B65E8_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC0AC_ovl7;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6678_ovl7.s")

void func_801B6810_ovl7(GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 2;
    D_800EA520[omCurrentObj->objId] = -1;
    D_800DDFD0[omCurrentObj->objId] = 1;
    ohSleep(8);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B68BC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6A14_ovl7.s")

void func_801B6B18_ovl7(GObj *arg0) {
}

void func_801B6B20_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B6B88_ovl7(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD700_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6BDC_ovl7.s")

void func_801B6E28_ovl7(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD70C_ovl7);
    }
    func_8019D2FC_ovl7(30.0f, 6);
}

void func_801B6E88_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC0F4_ovl7;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B6F18_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B71AC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B726C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B73C0_ovl7.s")

void func_801B7590_ovl7(GObj *arg0) {
}

void func_801B7598_ovl7(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80199628_ovl7();
}

void func_801B7600_ovl7(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801CD718_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B7648_ovl7.s")

void func_801B76CC_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_801CD71C_ovl7);
    func_8019B424_ovl7(arg0);
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_801B772C_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100C4);
    curObjSleepForever();
}

void func_801B7778_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B7780_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_11/func_801B793C_ovl7.s")

