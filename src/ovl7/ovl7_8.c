#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

extern s32 D_8012E7FC;

void func_801AC840_ovl7(void);

extern FUNCLIST D_801CD5C0_ovl7;
void func_800B6FD8(GObj *);


void func_800B6FD8(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0550_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B069C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0880_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0A20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0C20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0E20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0FCC_ovl7.s")

void func_801B10EC_ovl7(void) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_801AC840_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1130_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1300_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B152C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B15F4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1784_ovl7.s")

void func_801B184C_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((s32) arg2 != 0) {
        D_8012E7FC = (s32) arg2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B187C_ovl7.s")

void func_801B19F8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801CD5C0_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1A58_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1BB0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1D08_ovl7.s")

