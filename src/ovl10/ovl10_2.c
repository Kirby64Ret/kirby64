#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

void func_801A0D74_ovl7(void);
void func_801A03B4_ovl7(void);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_8019B9B0_ovl7(void);
extern FUNCLIST D_801F43F0_ovl10;
extern FUNCLIST D_801F43FC_ovl10;

void func_801E2D40_ovl10(s32 arg0) {
    func_8019B9B0_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801F43FC_ovl10);
}

void func_801E2DD8_ovl10(s32 arg0) {
    func_8019B9B0_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801F43FC_ovl10);
}

void func_801E2E78_ovl10(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2EF0_ovl10(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern f32 D_801F4A40_ovl10;
extern f32 D_801F4A44_ovl10;
extern f32 D_801F4A48_ovl10;
extern struct Sub800E1B50_Unk98 D_801F41B4_ovl10;
extern void func_800B6A2C(s32);
extern void func_801ACF84_ovl7(struct GObj *);
void func_801E3244_ovl10(void);

void func_801E2F68_ovl10(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801E3244_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F41B4_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(1);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = D_801F4A40_ovl10;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    ohSleep(3);
    D_800E98E0[omCurrentObj->objId] = 1;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = D_801F4A44_ovl10;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B33F4();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_801F4A48_ovl10;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_801E3244_ovl10(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E326C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E3450_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E3614_ovl10.s")

void func_801E3748_ovl10(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

