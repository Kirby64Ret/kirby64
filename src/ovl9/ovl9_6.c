#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"

extern FUNCLIST D_8021C098_ovl9;
extern FUNCLIST D_8021C114_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EABC0_ovl9.s")

extern FUNCLIST D_8021C080_ovl9;

void func_801EACB8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021C080_ovl9);
    }
}

void func_801EAD38_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern f32 D_8021D1C0_ovl9;

void func_801EAD84_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_8021D1C0_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801EADD4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C098_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EAE1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EAF10_ovl9.s")

void func_8019F410_ovl7(struct DObj *);

void func_801EB158_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB198_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB4B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB6BC_ovl9.s")

void func_8019F410_ovl7(struct DObj *);

void func_801EB874_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB8E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB98C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBB28_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBBC8_ovl9.s")

extern FUNCLIST D_8021C0B0_ovl9;

void func_801EBD38_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C0B0_ovl9);
    }
}

void func_801EBDB8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 2;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

extern FUNCLIST D_8021C0C4_ovl9;
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EBE1C_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C0C4_ovl9);
    func_801A0D74_ovl7(arg0);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBE74_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBFE8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC0E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC314_ovl9.s")

void func_801EC4A0_ovl9(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC4A8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC598_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC800_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC9E0_ovl9.s")

extern FUNCLIST D_8021C104_ovl9;

void func_801ECAD8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C104_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ECB58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ECEB4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED018_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED150_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED208_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED648_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED9AC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EDBEC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE064_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE2E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE728_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EEC28_ovl9.s")

void func_801EF07C_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C114_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF0C4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF354_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF524_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EFDAC_ovl9(void) {
    if (D_800E7880[omCurrentObj->objId] != 0xA) {
        func_801A0D74_ovl7();
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_8019F3B0_ovl7();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EFE1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EFF24_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EFFCC_ovl9.s")

