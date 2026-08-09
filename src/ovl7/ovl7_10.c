#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801A0D74_ovl7(void);
void func_801A36CC(void *);
s32 func_801117BC(void *, u32);
void func_801AC33C_ovl7(GObj *);
void func_801AC11C_ovl7(GObj *);
extern s32 D_801CB0BC_ovl7[];
extern s32 D_801CA738_ovl7[];

extern s32 D_801D0A98_ovl7;
extern f32 D_801CE31C_ovl7, D_801CE320_ovl7;
void func_801AC840_ovl7(void);
extern s32 D_801CB3D0_ovl7[];
extern s32 D_801C8E64_ovl7[];
void play_sound(s32);
extern s32 *D_801CB4DC_ovl7;
void func_8010C274(void);
extern f32 gameTicksPerDraw;
extern f32 D_800EC660[], D_800EC820[], D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void ohSleep(s32);
void func_801ABBA0_ovl7(void);
extern f32 D_801CE314_ovl7, D_801CE318_ovl7, D_801CE324_ovl7, D_801CE310_ovl7;
extern s32 D_800E0D50[];
void func_80198880_ovl7(void *);
extern s32 D_801C424C_ovl7[];
void func_800B6FD8(GObj *);
extern f32 D_800E9020[];
void func_801B3C54_ovl7(void);
void func_800AFBB4(s32, struct GObj *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_801A3E80_ovl7(GObj *);
extern f32 D_800EA8A0[];
void func_801AC840_ovl7(void);
void func_801ACCA0_ovl7(s32, s32, f32, f32);
void func_801A3938(void *);
void func_801A374C_ovl7(void *);
void func_801A3864_ovl7(GObj *);
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);

void func_801B3670_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10011);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (ABSF(D_800E64D0[D_800E0D50[omCurrentObj->objId]]) + 3.5f);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    D_800E6850[omCurrentObj->objId] = D_801CE310_ovl7;
    ohSleep(0xA);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 1.0f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    ohSleep(0x32);
    func_801AC11C_ovl7(arg0);
}

void func_801B3888_ovl7(GObj *arg0) {
    if (D_800E8920[0] == 0) {
        if (D_801D0A98_ovl7 == 0) {
            D_801D0A98_ovl7 = 1;
        }
    } else {
        D_801D0A98_ovl7 = 0;
    }
}

void func_801B38CC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1022B);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE314_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

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

void func_801B3ACC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801B3C54_ovl7;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE318_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

#ifdef MIPS_TO_C
// 8 diffs: instruction sequence is right; the omCurrentObj base lands in $a0
// instead of $a1 and thr/angle get $f0/$f2 instead of $f2/$f0.
void func_801B3C54_ovl7(void) {
    f32 thr = D_801CE31C_ovl7;
    struct DObj *d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    d->angle.v.x += D_801CE320_ovl7;
    d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    if (thr <= d->angle.v.x) {
        d->angle.v.x -= thr;
    }
    func_801AC840_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3C54_ovl7.s")
#endif

void func_801B3CF4_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800AA018(0x10223);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE324_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3EC8_ovl7.s")

void func_801B41BC_ovl7(void) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
        func_801AC840_ovl7();
    }
}

void func_801B4200_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800B3520();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    ent->unk40 = 1;
    func_800AFBB4(0, omCurrentObj);
    func_800A7F74(3, 2, 0xF7, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x159);
    func_801A3E80_ovl7(arg0);
}

void func_801B4328_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10155);
    func_800AA018(0x10154);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

void func_801B44A8_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACCA0_ovl7(0x13, 1, 20.0f, 0.0f);
        play_sound(0xA9);
    }
}

struct Ovl7AnimSub {
    u8 filler0[8];
    struct DObj *unk8;
    u8 fillerC[0x24];
    struct DObj *unk30;
};

struct Ovl7AnimObj {
    u8 filler0[0x20];
    struct Ovl7AnimSub *unk20;
};

s32 func_801A37B8_ovl7(void *, struct DObj *);
extern f32 D_801CE334_ovl7, D_801CE338_ovl7;
extern s32 D_801CB45C_ovl7[];
extern s32 D_801C8BE0_ovl7[];
void func_801B44FC_ovl7(GObj *arg0) {
    struct DObj *sp2C;
    struct DObj *sp28;
    struct Ovl7AnimObj *temp;
    s32 dead0;
    f32 sp1C;

    sp2C = D_800DFBD0[omCurrentObj->objId][4];
    sp28 = D_800DFBD0[omCurrentObj->objId][14];
    sp1C = D_800E17D0[omCurrentObj->objId];
    D_800E17D0[omCurrentObj->objId] = D_801CE334_ovl7;
    func_801A3938(D_801CB45C_ovl7);
    func_801A37B8_ovl7(func_801A3864_ovl7, sp2C);
    D_800E17D0[omCurrentObj->objId] = D_801CE338_ovl7;
    func_801A37B8_ovl7(func_801A3864_ovl7, sp28);
    D_800E17D0[omCurrentObj->objId] = sp1C;
    temp = (struct Ovl7AnimObj *) func_80111A04(D_801C8BE0_ovl7, omCurrentObj->objId);
    temp->unk20->unk8 = sp28;
    temp->unk20->unk30 = sp2C;
    func_80111C4C((s32) temp);
}

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

void func_801B4938_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB0BC_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA738_ovl7, omCurrentObj->objId));
    }
}

void func_801B4A00_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    func_80198880_ovl7(D_801C424C_ovl7);
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10205);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    while (0.0f < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_801AC11C_ovl7(arg0);
}

void func_801B4C20_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800B3520();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    ent->unk40 = 1;
    func_800AFBB4(0, omCurrentObj);
    func_800A7F74(3, 2, 0xF4, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x159);
    func_801A3E80_ovl7(arg0);
}

