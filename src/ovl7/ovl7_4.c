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

void func_800A4B34(Vector *, struct DObj *);
#include "unk_structs/D_800DE350.h"

struct Ovl7Unk94 {
    u8 filler0[0xC];
    s32 unkC;
    s32 unk10;
    f32 unk14;
    s32 unk18;
    u32 unk1C;
};


void func_801A3CA8_ovl7(void);
void func_800AF408(void);
void func_800AED20(f32);
void func_800A9F98(s32, f32);
extern f32 D_800EC9E4;

void func_801A0B10_ovl7(void);
void func_800FD570(s32, s32, f32, f32, f32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
s32 func_801A0D74_ovl7(void);
extern u32 D_8012BCA0;
extern void *D_801CA28C_ovl7[], *D_801CA2B0_ovl7[], *D_801CA2F4_ovl7[], *D_801CA318_ovl7[];
extern f32 D_801CDFB4_ovl7, D_801CDFB8_ovl7, D_801CDFC0_ovl7;
void func_801A522C_ovl7(GObj *);
void func_801A6610_ovl7(void);
void func_801A4414_ovl7(GObj *);
void ohSleep(s32);
extern f32 D_800E6690[], D_800E64D0[], D_800E6850[];
extern f32 D_800E3910[], D_800E3750[], D_800E3590[], D_800E33D0[], D_800E3210[], D_800E3050[];
extern f32 D_800E3E50[], D_800E3C90[], D_800E3AD0[];
void func_801A42B8_ovl7(GObj *);
void func_800B19F4(s32, s32);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);
void ohSleep(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A3E80_ovl7.s")

void func_801A41D4_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk8C = &D_801CA28C_ovl7;
    ent->unk90 = &D_801CA2B0_ovl7;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800E7B20[omCurrentObj->objId] = D_801CDFB4_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801A42B8_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0x1B);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

void func_801A42B8_ovl7(GObj *arg0) {
    func_801A0B10_ovl7();
}

void func_801A42D8_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk8C = &D_801CA2F4_ovl7;
    ent->unk90 = &D_801CA318_ovl7;
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800E7B20[omCurrentObj->objId] = D_801CDFB8_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801A42B8_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(7);
    func_8019D958_ovl7((u16) omCurrentObj->objId);
}

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

#ifdef MIPS_TO_C
// 84/104 diffs: stores are right; $v0/$v1 swapped for omCurrentObj/objId and
// the D_801CDFC0 constant lands in $f0 instead of $f14.
void func_801A50B0_ovl7(GObj *arg0) {
    f32 c = D_801CDFC0_ovl7;

    D_800DF150[omCurrentObj->objId] = func_801A522C_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = c;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E33D0[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = c;
    D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_801A6610_ovl7();
    func_800AF408();
    ohSleep(0xA);
    func_801A4414_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A50B0_ovl7.s")
#endif

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

#ifdef MIPS_TO_C
void func_801A56C8_ovl7(void) {
    Vector sp20;

    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_800A4B34(&sp20, D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj->firstChild);
    D_800E2090[omCurrentObj->objId] = sp20.x;
    D_800E2250[omCurrentObj->objId] = sp20.y;
    D_800E2410[omCurrentObj->objId] = sp20.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A56C8_ovl7.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A57A8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5DE8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A5FF4_ovl7.s")

void func_801A630C_ovl7(void) {
    f32 x;
    f32 y;
    f32 z;

    x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    y = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    x = x / 10.0f;
    y = y / 10.0f;
    z = z / 10.0f;
    D_800E3050[omCurrentObj->objId] = x;
    D_800E3210[omCurrentObj->objId] = y;
    D_800E33D0[omCurrentObj->objId] = z;
}

void func_801A63BC_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    while (gKirbyState.abilityInUse != 0) {
        ohSleep(1);
    }
    func_801A6434_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_4/func_801A6434_ovl7.s")

void func_801A6610_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7Unk94 *p;

    func_801A3CA8_ovl7();
    p = (struct Ovl7Unk94 *) ent->unk94;
    if (p->unkC != -1) {
        func_800AECC0(p->unk14);
        func_800AED20(((struct Ovl7Unk94 *) ent->unk94)->unk14);
        func_800A9F98(((struct Ovl7Unk94 *) ent->unk94)->unkC, 1.0f);
        if (((struct Ovl7Unk94 *) ent->unk94)->unk10 != -1) {
            func_800A9F98(((struct Ovl7Unk94 *) ent->unk94)->unk10, 1.0f);
        }
    } else {
        func_800AF408();
    }
}

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

