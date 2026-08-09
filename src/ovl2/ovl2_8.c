#include "common.h"
#include "track_arrays.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E5B0.s")

void func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EA20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EA68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EE24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EEE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010EFA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F140.s")

void func_8010F964(f32 *arg0, f32 *arg1) {
    arg0[0] = (arg1[6] + arg1[3]) * 0.5f;
    arg0[1] = (arg1[7] + arg1[4]) * 0.5f;
    arg0[2] = (arg1[8] + arg1[5]) * 0.5f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010F9AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010FC30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_80110014.s")

void func_80110130(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_80110138.s")
