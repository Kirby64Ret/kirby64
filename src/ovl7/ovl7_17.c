#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

#include "main/object_helpers.h"
void func_800B3520(void);
void func_801A3E80_ovl7(GObj *);
void func_801C0610_ovl7(GObj *);
extern struct GObjProcess *gEntityGObjProcessArray[];

extern s32 D_800D7090;

void func_801A0D50_ovl7(void *);
void func_801BF598_ovl7(GObj *);
void func_801C08E8_ovl7(GObj *);
void func_801C1698_ovl7(GObj *);
void func_801C2020_ovl7(GObj *);
void func_801BF618_ovl7(GObj *);
void func_801C0958_ovl7(GObj *);
void func_801C1718_ovl7(GObj *);
void func_801C2098_ovl7(GObj *);

extern FUNCLIST D_801CD8F4_ovl7;
extern FUNCLIST D_801CD938_ovl7;
extern FUNCLIST D_801CD958_ovl7;
extern FUNCLIST D_801CDA58_ovl7;
extern FUNCLIST D_801CDA5C_ovl7;
extern FUNCLIST D_801CDA60_ovl7;
void func_800AF9B8(s32, s32);
void func_800B6684(GObj *);


void func_800AF9B8(s32, s32);
void func_800B6684(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF220_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF390_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF448_ovl7.s")

void func_801BF528_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BF618_ovl7;
    func_801A0D50_ovl7(func_801BF598_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801BF598_ovl7(arg0);
}

void func_801BF598_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD8F4_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF618_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF770_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BF99C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BFB68_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BFDF0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801BFF30_ovl7.s")

void func_801C0040_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0048_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C010C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C02D0_ovl7.s")

s32 func_801C0588_ovl7(void) {
    if (D_800D7090 != omCurrentObj->objId) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C0610_ovl7);
        return 1;
    }
    return 0;
}

s32 func_801C05E0_ovl7(void) {
    if (D_800D7090 != omCurrentObj->objId) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0610_ovl7.s")

void func_801C06C8_ovl7(GObj *arg0) {
    if (D_800D7090 == omCurrentObj->objId) {
        D_800D7090 = -1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C06FC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C07A8_ovl7.s")

void func_801C0878_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C0958_ovl7;
    func_801A0D50_ovl7(func_801C08E8_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C08E8_ovl7(arg0);
}

void func_801C08E8_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD938_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0958_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0AB0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0CF4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C0EC0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1148_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1288_ovl7.s")

void func_801C1398_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C13A0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1464_ovl7.s")

void func_801C1628_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C1718_ovl7;
    func_801A0D50_ovl7(func_801C1698_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C1698_ovl7(arg0);
}

void func_801C1698_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD958_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1718_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1830_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1A90_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1BB8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1E08_ovl7.s")

void func_801C1F44_ovl7(GObj *arg0) {
    func_800AF9B8(0x2B, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B6684;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801CDA58_ovl7);
}

void func_801C1FB0_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C2098_ovl7;
    func_801A0D50_ovl7(func_801C2020_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C2020_ovl7(arg0);
}

void func_801C2020_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801CDA5C_ovl7);
    }
}

void func_801C2098_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_801CDA60_ovl7);
}

void func_801C20E0_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B3520();
    ohSleep(0x78);
    func_801A3E80_ovl7(arg0);
}

void func_801C212C_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C2134_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C2264_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C2348_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C2478_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C258C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C26BC_ovl7.s")

