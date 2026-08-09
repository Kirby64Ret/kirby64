#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

void func_801A0D74_ovl7(void);
void func_801A03B4_ovl7(void);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E2D40_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E2DD8_ovl10.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E2F68_ovl10.s")

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

