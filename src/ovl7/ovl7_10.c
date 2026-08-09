#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern s32 D_801D0A98_ovl7;
extern s32 D_801CB3D0_ovl7[];
extern s32 D_801C8E64_ovl7[];
void play_sound(s32);
void func_801AC840_ovl7(void);
void func_801ACCA0_ovl7(s32, s32, f32, f32);
void func_801A3938(void *);
void func_801A374C_ovl7(void *);
void func_801A3864_ovl7(GObj *);
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3670_ovl7.s")

void func_801B3888_ovl7(GObj *arg0) {
    if (D_800E8920[0] == 0) {
        if (D_801D0A98_ovl7 == 0) {
            D_801D0A98_ovl7 = 1;
        }
    } else {
        D_801D0A98_ovl7 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B38CC_ovl7.s")

void func_801B3A74_ovl7(GObj *arg0) {
    if (D_800E8920[0] == 0) {
        if (D_801D0A98_ovl7 == 0) {
            play_sound(0x162);
            D_801D0A98_ovl7 = 1;
        }
    } else {
        D_801D0A98_ovl7 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3ACC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3C54_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3CF4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3EC8_ovl7.s")

void func_801B41BC_ovl7(void) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
        func_801AC840_ovl7();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B4200_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B4328_ovl7.s")

void func_801B44A8_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACCA0_ovl7(0x13, 1, 20.0f, 0.0f);
        play_sound(0xA9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B44FC_ovl7.s")

void func_801B4604_ovl7(GObj *arg0) {
    if (D_801D0A98_ovl7 != 0) {
        func_801A3938(D_801CB3D0_ovl7);
        func_801A374C_ovl7(func_801A3864_ovl7);
        func_80111C4C(func_80111A04(D_801C8E64_ovl7, omCurrentObj->objId));
    }
}

void func_801B4664_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if (D_801D0A98_ovl7 == 0) {
        if ((s32) arg2 != 0) {
            play_sound(0x93);
        }
    }
    D_801D0A98_ovl7 = (s32) arg2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B46C4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B4938_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B4A00_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B4C20_ovl7.s")

