#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

extern s32 D_801C8158_ovl7[];
void func_800B3520(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_80199F58_ovl7(GObj *);
void func_800AA018(s32);
void func_800AA154(s32);
void func_800AA864(s32, u32);
s32 func_801A0D74_ovl7();

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];

extern s32 D_801C81A0_ovl7[];
extern s32 D_801C820C_ovl7[];
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(s32);

void func_800B6FD8(GObj *);
void func_800B7514(GObj *);

extern s32 D_801D0A98_ovl7;
extern s32 D_801C8278_ovl7[];
extern s32 D_801C3408_ovl7[];
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);
void func_800FD570(s32, s32, f32, f32, f32);
void func_80198880_ovl7(void *);
void func_801A3E80_ovl7(GObj *);

extern FUNCLIST D_801CD5D8_ovl7;
extern FUNCLIST D_801CD5EC_ovl7;
extern FUNCLIST D_801CD600_ovl7;
extern FUNCLIST D_801CD60C_ovl7;



#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B1E60_ovl7.s")

void func_801B1FD8_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801CD5D8_ovl7);
    }
}

void func_801B2058_ovl7(GObj *arg0) {
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0x28;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2094_ovl7(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801B20BC_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD5EC_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B2104_ovl7.s")

void func_801B2204_ovl7(GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E6F50[omCurrentObj->objId].originOffset < 120.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B1FD8_ovl7);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B22D0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B2588_ovl7.s")

void func_801B27D4_ovl7(GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E6F50[omCurrentObj->objId].originOffset < 160.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B1FD8_ovl7);
    }
    func_8019F3B0_ovl7();
}

void func_801B287C_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8158_ovl7;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_80199F58_ovl7(arg0);
    func_800AA018(0x1008E);
    func_800AA154(0x1008D);
    func_800AA018(0x1008C);
    func_800AA864(0x1008B, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B294C_ovl7.s")

void func_801B2A94_ovl7(GObj *arg0) {
    func_800FD570(0, 3, 0.0f, 0.0f, 0.0f);
    func_80198880_ovl7(D_801C3408_ovl7);
    func_801A3E80_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B2AE0_ovl7.s")

void func_801B2C78_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801CD600_ovl7);
    }
}

void func_801B2CF8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2D38_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2D90_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_801CD60C_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B2DD8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B2FB0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B3110_ovl7.s")

void func_801B338C_ovl7(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = 40.0f + gEntitiesNextPosYArray[omCurrentObj->objId];
}

void func_801B33E8_ovl7(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 40.0f;
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B3444_ovl7.s")

void func_801B3540_ovl7(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C81A0_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = D_801C820C_ovl7;
        func_8019F9D0_ovl7(0);
    }
}

void func_801B35CC_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    D_800E98E0[omCurrentObj->objId] = (s32) arg2;
}

void func_801B3600_ovl7(GObj *arg0) {
    if (D_801D0A98_ovl7 != 0) {
        func_80111C4C(func_80111A04(D_801C8278_ovl7, omCurrentObj->objId));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B3648_ovl7.s")

