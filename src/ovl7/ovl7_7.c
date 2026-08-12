#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

/* D_801CE274_ovl7 = 0.3f : now emitted by this TU */
void func_800B6474(GObj *);
extern FUNCLIST D_801CD590_ovl7;
s32 func_800A8234(s32, s32, s32);
extern s32 D_800E9720[];
void func_800A77E8(s32, s32 *, u16 *);
extern s32 D_801CA35C_ovl7[], D_801CA380_ovl7[];
extern void *D_801CB388_ovl7;
extern f32 D_800EA6E0[];
extern s32 D_800E0D50[], D_800E98E0[], D_800E9C60[];
extern s32 D_8012E860;
void func_801A3938(void *);
void func_800A22D4(void *);
void func_800A7870(void *, void *);
void func_800BB468(s32, s32);
void func_800B19F4(s32, u32);
void func_800A7F74(u32, u32, u16, f32, f32, f32);
void func_8019D958_ovl7(u16);
void play_sound(s32);
void ohSleep(s32);
void func_801B0258_ovl7(GObj *);

void func_800B3520(void);
void func_801A0D50_ovl7(void *);
void func_801AF398_ovl7(GObj *);
void func_801AF314_ovl7(GObj *);

extern FUNCLIST D_801CD594_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD384_ovl7;
void curObjSleepForever(void);
/* D_801CE268_ovl7 = -0.65f : now emitted by this TU */
extern struct Sub800E1B50_Unk98 D_801CD360_ovl7;
extern s32 D_800DDFD0[];
extern s32 D_800E8AE0[], D_800E8920[], D_800E93A0[];
extern f32 D_800E3750[], D_800E3C90[];
void func_800A9760(s32);
void func_800AA018(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
extern f32 gameTicksPerDraw;
struct Ovl7_7_CD530 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
};

extern struct Ovl7_7_CD530 D_801CD530_ovl7[];

struct Ovl7AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_80111550(void *);
extern s32 D_800E83E0[];
void *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110150(void *);
/* D_801CE260_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE270_ovl7 = -0.65f : now emitted by this TU */



#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEA20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEE04_ovl7.s")

void func_801AEFC0_ovl7(GObj *arg0) {
    func_800B3520();
    D_800E9C60[omCurrentObj->objId] = 1;
}

s32 func_801AEFFC_ovl7(void) {
    s32 ret = 0;

    func_800A9760(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk0);
    if (D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk4 != 0) {
        func_800AA018(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk4);
        func_800AECC0(gameTicksPerDraw);
        ret = 1;
    }
    if (D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk8 != 0) {
        func_800AA018(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk8);
        func_800AED20(gameTicksPerDraw);
    }
    return ret;
}

void func_801AF104_ovl7(GObj *arg0) {
    s32 sp2C;
    u16 sp2A;


    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_800A9864(0x20031, 0x23, 0x10);
    D_800DDA90[omCurrentObj->objId] = 0x23;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800E9720[omCurrentObj->objId] = 4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A77E8(0x1F, &sp2C, &sp2A);
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = sp2C;
    D_800E9C60[omCurrentObj->objId] = sp2A;
    D_800E98E0[omCurrentObj->objId] = func_800A8234(1, 1, 0xC);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801CD590_ovl7);
}

void func_801AF2A4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801AF398_ovl7;
    func_801A0D50_ovl7(func_801AF314_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801AF314_ovl7(arg0);
}

void func_801AF314_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD594_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF398_ovl7.s")

void func_801AF814_ovl7(GObj *arg0) {
/* D_801CE248_ovl7 = -0.65f : now emitted by this TU */
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x2027F);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 2.0f;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
        D_800E3210[omCurrentObj->objId] = 10.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    curObjSleepForever();
}

void func_801AF9F8_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFAB0_ovl7(GObj *arg0) {
    void func_8019B164_ovl7(void);
/* D_801CE258_ovl7 = -0.65f : now emitted by this TU */
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_8019B164_ovl7();
    play_sound(0x22);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 2.0f;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
        D_800E3210[omCurrentObj->objId] = 10.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[0]) {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
    curObjSleepForever();
}

void func_801AFD28_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFDE0_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD384_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B3520();
    curObjSleepForever();
}

void func_801AFE60_ovl7(GObj *arg0) {
}

void func_801AFE68_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
    curObjSleepForever();
}

void func_801AFF64_ovl7(GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
}

#ifdef NON_MATCHING
// 2 diffs: the Ovl7AnimInfo local lands at 0x30($sp), the ROM has it at 0x28.
// The ROM reserves 8 bytes above it that no combination of dead locals or
// struct resizing reproduces (they grow the frame instead).
void func_801AFFFC_ovl7(void) {
    struct Ovl7AnimInfo sp28;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk8C != NULL) {
        func_80111550((void *) omCurrentObj->objId);
        func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
        if (func_80110150(&sp28) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp28.unk2;
            ent->unk43 = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFFFC_ovl7.s")
#endif
void func_801B00BC_ovl7(GObj *arg0) {
    s32 sp34;
    s16 sp32;
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    temp->unk8C = &D_801CA35C_ovl7;
    temp->unk90 = (u32) &D_801CA380_ovl7;
    func_801A3938(&D_801CB388_ovl7);
    func_800A22D4((void *) D_800E98E0[omCurrentObj->objId]);
    sp34 = (s32) D_800E9AA0[omCurrentObj->objId];
    sp32 = D_800E9C60[omCurrentObj->objId];
    func_800A7870(&sp34, &sp32);
    func_800BB468(6, 0x10);
    play_sound(0x20);
    D_800EA6E0[omCurrentObj->objId] = 0.3f;
    func_800A7F74(1, 1, 0x44, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800DF150[omCurrentObj->objId] = func_801B0258_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    ohSleep(0xE);
    D_8012E860 = 0;
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

struct Ovl7_7_AnimSub {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl7_7_AnimObj {
    u8 filler0[0x20];
    struct Ovl7_7_AnimSub *unk20;
};

void func_801B0258_ovl7(GObj *arg0) {
    void func_801B03FC_ovl7(void);
    s32 func_801A36CC(void *);
    struct Ovl7_7_AnimObj *func_80111A04(void *, s32);
    void func_80111C4C(struct Ovl7_7_AnimObj *);
    extern u8 D_8012E7C5;
    extern f32 D_801CB208_ovl7[][4], D_801D0AB0_ovl7[][4];
/* D_801CE278_ovl7 = 0.1f : now emitted by this TU */
    struct Ovl7_7_AnimObj *p;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    u8 i;

    if (D_8012E7C5 != 0xE) {
        func_801B03FC_ovl7();
    }
    p = func_80111A04(ent->unk90, omCurrentObj->objId);
    p->unk20->unk18 *= D_800EA6E0[omCurrentObj->objId];
    func_80111C4C(p);
    for (i = 0; i < 0x18; i++) {
        D_801D0AB0_ovl7[i][0] = D_801CB208_ovl7[i][0] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][1] = D_801CB208_ovl7[i][1] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][2] = D_801CB208_ovl7[i][2] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][3] = D_801CB208_ovl7[i][3] * D_800EA6E0[omCurrentObj->objId];
    }
    func_801A36CC(0);
    if (D_800EA6E0[omCurrentObj->objId] < 1.0f) {
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + 0.1f;
    }
}

struct Ovl7_7_AnimSub2 {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl7_7_AnimObj2 {
    u8 filler0[0x24];
    struct Ovl7_7_AnimSub2 *unk24;
};

void func_801B03FC_ovl7(void) {
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_7_AnimObj2 *p;
    struct Ovl7AnimInfo sp28;

    func_80111550((void *) omCurrentObj->objId);
    p = (struct Ovl7_7_AnimObj2 *) func_80111C88(ent->unk8C, omCurrentObj->objId);
    p->unk24->unk18 *= D_800EA6E0[omCurrentObj->objId];
    func_80111ECC(p);
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else if (func_80110FD4(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else if (func_80110150(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
}

