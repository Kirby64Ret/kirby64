#include "common.h"
#include "track_arrays.h"

struct UnkEA20 {
    /* 0x00 */ char pad0[0xC];
    /* 0x0C */ Vector unkC;
    /* 0x18 */ s32 unk18;
};

s32 func_8010E8F0(Vector *, s32, Vector *, s32, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E5B0.s")

void func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E740.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_8/func_8010E8F0.s")

s32 func_8010EA20(struct UnkEA20 *arg0, struct UnkEA20 *arg1, s32 arg2) {
    return func_8010E8F0(&arg0->unkC, arg0->unk18, &arg1->unkC, arg1->unk18, arg2);
}

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
