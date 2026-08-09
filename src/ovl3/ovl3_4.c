#include <ultra64.h>
#include <macros.h>
#include "common.h"

extern s32 D_8012E944;

extern void func_800FF200(s32);
extern void func_800AA018(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/util.h"

extern u8 D_801CA980;
extern FUNCLIST D_80196910_ovl3;

extern void func_801A32EC(u8 *);
extern void func_801A3938(s32);
extern f32 D_80197278_ovl3;

extern void func_8016BD24_ovl3(s32);
extern void func_801696F0_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169430_ovl3.s")

void func_80169694_ovl3(s32 arg0) {
    func_801A32EC(&D_801CA980);
    func_801A3938(0);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_80196910_ovl3);
}

void func_801696F0_ovl3(s32 arg0) {
    func_800FF200(D_8012E944);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169718_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169A98_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169C10_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A144_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A308_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A934_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016AAA4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B410_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B74C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B9D4_ovl3.s")

void func_8016BB40_ovl3(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            break;
        case 1:
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_80197278_ovl3;
            func_8016BD24_ovl3(0);
            break;
    }
    func_801696F0_ovl3(arg0);
}

void func_8016BBD0_ovl3(void) {
    func_800AA018(0x20027);
    func_800AA018(0x20028);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BC00_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BD24_ovl3.s")

