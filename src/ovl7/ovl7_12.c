#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void func_801BA240_ovl7(void);
void func_8020FC68_ovl9(void);
void func_801AC908_ovl7(GObj *);

extern FUNCLIST D_801CD720_ovl7;
void func_800B6FD8(GObj *);


void func_800B6FD8(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B79B0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B7C30_ovl7.s")

void func_801B7E80_ovl7(GObj *arg0) {
    func_801BA240_ovl7();
    func_801AC908_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B7EA8_ovl7.s")

void func_801B8068_ovl7(GObj *arg0) {
    func_8020FC68_ovl9();
    func_801AC908_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8090_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8238_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8300_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B84B4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B857C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B865C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8714_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B87DC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B89AC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8AD4_ovl7.s")

void func_801B8C00_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD720_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8C60_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8DB8_ovl7.s")

