#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

#include "Player.h"
#include "main/object_helpers.h"
void func_801A6434_ovl7(void);

extern f32 D_800EC9E4;

void func_801A0B10_ovl7(void);
void func_800FD570(s32, s32, f32, f32, f32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_801A0D74_ovl7(void);
extern u32 D_8012BCA0;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A3E80_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A41D4_ovl7.s")

void func_801A42B8_ovl7(GObj *arg0) {
    func_801A0B10_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A42D8_ovl7.s")

void func_801A43BC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A4414_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x77, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801A447C_ovl7(GObj *arg0) {
    func_800A7F74(3, 2, 0x64, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A44E4_ovl7.s")

void func_801A470C_ovl7(void) {
    func_801A0D74_ovl7();
    D_800EC2E0[omCurrentObj->objId].as_s32 = (D_8012BCA0 >> 19) & 0xFFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4754_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4C0C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4DFC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A4F70_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A50B0_ovl7.s")

void func_801A522C_ovl7(GObj *arg0) {
    if (D_800EC9E4 != 0.0f) {
        D_800E3210[omCurrentObj->objId] = -D_800EC9E4;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5274_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A557C_ovl7.s")

void func_801A56A0_ovl7(GObj *arg0) {
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A56C8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A57A8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5DE8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5FF4_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A630C_ovl7.s")

void func_801A63BC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    while (gKirbyState.abilityInUse != 0) {
        ohSleep(1);
    }
    func_801A6434_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6434_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6610_ovl7.s")

s32 func_801A66B4_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 temp = ent->unk94->unk18;

    if ((temp == 6) || (temp == 7)) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A66FC_ovl7.s")

void func_801A6850_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A68A8_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6900_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

void func_801A6958_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A69B0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6C10_ovl7.s")

void func_801A6DD0_ovl7(void) {
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6DF0_ovl7.s")

