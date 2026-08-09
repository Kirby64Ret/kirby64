#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

s32 func_800F98EC(s32, f32);

s32 func_801AC9D0_ovl7(void);
s32 func_801ACC34_ovl7(void);
void func_800B1900(u16);
s32 func_801A0D74_ovl7(void);
void func_801A03B4_ovl7(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5_2/func_801AC9D0_ovl7.s")

s32 func_801ACC34_ovl7(void) {
    s32 temp;

    temp = func_801AC9D0_ovl7();
    if (temp == 0) {
        return 0;
    }
    if (D_800E0D50[D_800E0D50[temp]] == 0) {
        D_800DDA90[temp] = 0x23;
    }
    return temp;
}

#ifdef MIPS_TO_C
s32 func_801ACCA0_ovl7(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 idx;
    f32 *p;

    idx = func_801ACC34_ovl7();
    if (idx == 0) {
        return 0;
    }
    p = &gEntitiesNextPosYArray[idx];
    *p = *p + arg3;
    if (func_800F98EC(idx, D_800E6A10[omCurrentObj->objId] * arg2) != 0) {
        func_800B1900(idx & 0xFFFF);
        return 0;
    }
    return idx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5_2/func_801ACCA0_ovl7.s")
#endif

s32 func_801ACD48_ovl7(void) {
    s32 temp;

    temp = func_801ACC34_ovl7();
    if (temp == 0) {
        return 0;
    }
    D_800E8E60[temp] = 1;
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5_2/func_801ACD90_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5_2/func_801ACE60_ovl7.s")

void func_801ACF30_ovl7(GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_801ACF5C_ovl7(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5_2/func_801ACF84_ovl7.s")

