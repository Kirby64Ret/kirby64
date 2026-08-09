#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern f32 D_800EC660[];
s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
void play_sound(s32);

void func_801BB9D0_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        temp = func_801ACCA0_ovl7(2, 0, 0, 20.0f);
        if (temp != 0) {
            D_800EC660[temp] = 0.0f;
            gEntitiesNextPosZArray[temp] = 0.0f;
            gEntitiesNextPosXArray[temp] = 0.0f;
        }
        play_sound(0xA7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_14/func_801BBA54_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_14/func_801BBBF4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_14/func_801BBE1C_ovl7.s")

