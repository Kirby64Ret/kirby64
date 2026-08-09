#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void func_800B3520(void);
void func_801A0D50_ovl7(void *);
void func_801AF398_ovl7(GObj *);
void func_801AF314_ovl7(GObj *);

extern FUNCLIST D_801CD594_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD384_ovl7;
void curObjSleepForever(void);
extern f32 D_801CE24C_ovl7, D_801CE250_ovl7, D_801CE25C_ovl7, D_801CE260_ovl7;
extern f32 D_801CE26C_ovl7, D_801CE270_ovl7;



#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEA20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEE04_ovl7.s")

void func_801AEFC0_ovl7(GObj *arg0) {
    func_800B3520();
    D_800E9C60[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEFFC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF104_ovl7.s")

void func_801AF2A4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801AF398_ovl7;
    func_801A0D50_ovl7(func_801AF314_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801AF314_ovl7(arg0);
}

void func_801AF314_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD594_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF398_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF814_ovl7.s")

void func_801AF9F8_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = D_801CE24C_ovl7;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = D_801CE250_ovl7;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFAB0_ovl7.s")

void func_801AFD28_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = D_801CE25C_ovl7;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = D_801CE260_ovl7;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFDE0_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD384_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B3520();
    curObjSleepForever();
}

void func_801AFE60_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFE68_ovl7.s")

void func_801AFF64_ovl7(GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = D_801CE26C_ovl7;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = D_801CE270_ovl7;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFFFC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B00BC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B0258_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B03FC_ovl7.s")

