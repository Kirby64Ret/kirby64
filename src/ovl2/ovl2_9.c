#include "common.h"
#include "Player.h"
#include "track_arrays.h"

void func_80110138(s32, s32, s32, s32);

extern s32 D_8012D580;
extern s32 D_8012D190;
extern s32 D_801249B0;
extern s32 D_8012D0C0;
extern s32 D_8012CF28;
extern s32 D_8012D0C4;
extern s32 D_801249A0;
extern s32 D_8012D584;
extern s32 D_8012D588;
extern s32 D_8012D58C;
extern s32 D_8012D918;
extern u32 D_8012D924;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110150.s")

s32 func_801103C4(s32 arg0) {
    if ((arg0 != -1) && (arg0 < 4)) {
        if ((D_800E7CE0[arg0] != 0) || (gKirbyState.action == 0x16) || (gKirbyState.unk68 == 1) ||
            (gKirbyState.unk68 == 2)) {
            return 1;
        }
        return 0;
    }
    return -1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801105E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110B00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110CCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80110FD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111184.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_8011145C.s")

void func_801114E0(void) {
    D_8012D580 = D_8012D0C0 = 0x50;
    D_8012D584 = D_8012D588 = D_8012D58C = 0;
    D_8012D918 = 0;
    D_8012D924 = 0xFF800080;
}

void func_80111534(s32 arg0) {
    D_8012D580 = arg0;
    D_8012D190 = 0;
    D_801249B0 = 0;
}

void func_80111550(s32 arg0) {
    D_8012D0C0 = arg0;
    D_8012CF28 = 0;
    D_8012D0C4 = 0;
    D_801249A0 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_801117BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111A04.s")

void func_80111C4C(s32 *arg0) {
    if (arg0 != NULL) {
        func_80110138(arg0[0], arg0[6], arg0[7], arg0[8]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_9/func_80111ECC.s")
