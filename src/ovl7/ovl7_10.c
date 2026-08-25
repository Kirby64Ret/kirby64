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
/* D_801CE31C_ovl7 = 6.2831855f, D_801CE320_ovl7 = 0.34906587f: literals now */
void func_801AC840_ovl7(GObj *);
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
void func_801ABBA0_ovl7();
/* 65535.0f = 65535.0f : now emitted by this TU */
extern s32 D_800E0D50[];
void func_80198880_ovl7(void *);
extern s32 D_801C424C_ovl7[];
void func_800B0F28(struct DObj *, s32, f32);
void func_801B41BC_ovl7(GObj *);
extern struct EnemyEventTable D_801CB500_ovl7;
extern f32 D_801CE330_ovl7; extern f32 D_801CE328_ovl7; /* D_801CE328 stays in asm: 2-word float, forced */
void func_800AA864(s32, u32);
void func_800B6FD8(GObj *);
extern f32 D_800E9020[];
void func_801B3C54_ovl7(GObj *);
void func_800AFBB4(s32, struct GObj *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_801A3E80_ovl7(GObj *);
extern f32 D_800EA8A0[];
void func_801AC840_ovl7(GObj *);
void func_801ACCA0_ovl7(s32, s32, f32, f32);
void func_801A3938(void *);
void func_801A374C_ovl7(void *);
void func_801A3864_ovl7(GObj *);
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);

void func_801B3670_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    D_800E6850[omCurrentObj->objId] = 11.2f;
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

// Spin the first child DObj about X by 0.34906587 (2*PI/18) per tick, wrap at
// 2*PI, then hand the object on to func_801AC840_ovl7.
//
// Closed by LEVER 58, and the last four diffs were the lever's own signature:
// the omCurrentObj base landed in $a0 where the ROM has $a1. The previous note
// had tried the `GObj *` parameter and measured it WORSE (38/40) because an
// UNUSED parameter is homed -- and it was unused only because
// func_801AC840_ovl7 was declared (void) here, so there was nothing to pass it
// to. That declaration was the actual defect: func_801AC840_ovl7 is stored in
// D_800DF150 (`void (*[])(struct GObj *)`) at nine sites across ovl7_10,
// ovl7_12 and ovl7_14, and its own body hands $a0 straight to
// func_801A0D74_ovl7, which is `s32 (GObj *)`. Retyping the definition in
// ovl7_5.c and the declarations in all three files is byte-inert (objdump
// A/B on .text for each object), and with a real argument to pass, the
// parameter stops being homed and this function matches.
void func_801B3C54_ovl7(GObj *arg0) {
    f32 thr = 6.2831855f;
    struct DObj *d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;

    d->angle.v.x += 0.34906587f;
    d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    if (thr <= d->angle.v.x) {
        d->angle.v.x -= thr;
    }
    func_801AC840_ovl7(arg0);
}

void func_801B3CF4_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

#ifdef NON_MATCHING
/* 138/189 -> 71/189, 2026-08-25, by passing the parameter to the call that
   already receives it: `func_801ABBA0_ovl7(arg0)`. LEVERS 58/67 -- the ROM
   sinks the `sw $a0, 0x28($sp)` home store next to `jal func_801ABBA0_ovl7`
   (801B3F4C, three words before the jal at 801B3F58) because $a0 has to stay
   live until the call; the draft, which never used arg0, homed it in the
   prologue instead and rotated every temp below it. func_801ABBA0_ovl7 is NOT
   the `(void)` proc this file declared it to be: its definition in ovl7_5.c
   heads `(GObj *arg0)`, its listing opens `sw $a0, 0x28($sp)`, ovl15.h
   prototypes it `(struct EnemyRecord *)`, and ovl7_5.c:2006 already calls it
   with an argument. The declaration at the top of this file is now K&R `()`
   -- the honest form while two headers disagree about the parameter's type,
   and it leaves the eight already-matched bare call sites in this file
   untouched (full rebuild, sha1 6cea2d46, 5615 byte-exact, 0 real defects).
   What is LEFT (71) is a scheduling divergence around the D_801CE328_ovl7
   late_rodata load, which the ROM hoists about five words earlier than IDO
   does here. */
void func_801B3EC8_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    arg0->onAnimate = func_800B0F28;
    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 1;
    func_801ABBA0_ovl7(arg0);
    D_800DF150[omCurrentObj->objId] = func_801B41BC_ovl7;
    ent->unk48 = NULL;
    ent->unk98 = &D_801CB500_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x100B2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (f32) 0;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = D_801CE328_ovl7;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE330_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_801CE330_ovl7;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    func_800AA864(0x100AC, 1);
    ent->unk40 = 1;
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B3EC8_ovl7.s")
#endif
void func_801B41BC_ovl7(GObj *arg0) {
    if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
        func_801AC840_ovl7(arg0);
    }
}

void func_801B4200_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
/* -1.5707964f = -1.5707964f : now emitted by this TU */
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
    D_800E17D0[omCurrentObj->objId] = 1.5707964f;
    func_801A3938(D_801CB45C_ovl7);
    func_801A37B8_ovl7(func_801A3864_ovl7, sp2C);
    D_800E17D0[omCurrentObj->objId] = -1.5707964f;
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

/* 144/159 -> 108/159, 2026-08-25. The old note had the diagnosis exactly right
   and stopped one step short of the cause: "IDO emits the parameter home store
   `sw $a0, 0x38($sp)` in the prologue while the ROM sinks it into the delay
   slot of `jal func_801ABBA0_ovl7`, so the positional diff is shifted by one
   from instruction 8 onward. Swept: initializer vs statement form for a/b,
   their declaration order, and `i` as an initializer." The reason the ROM can
   sink that store into THAT delay slot is that $a0 is the call's argument --
   LEVERS 58/67. Writing `func_801ABBA0_ovl7(arg0)` puts the store where the ROM
   has it and the first diff moves from 8 to 46.
   What is left (108) is a real scheduling divergence: the ROM materialises the
   `D_801CE33C_ovl7` late_rodata float at words 46-47, before the D_800DEF90
   store, and reloads `ent` out of its 0x34 home slot into $a0 at word 56; IDO
   here keeps ent in $a1 and does not load the float until word 76. */
#ifdef NON_MATCHING
void func_801B46C4_ovl7(GObj *arg0) {
    void func_801A2558_ovl7(void *);
    void func_801B4938_ovl7();
    extern void *D_801CAF50_ovl7[];
    extern struct EnemyEventTable D_801CD2F4_ovl7;
    extern f32 D_801CE33C_ovl7;
    extern s32 D_800E8920[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct DObj *a = arg0->data.dobj->firstChild;
    struct DObj *b = D_800DFBD0[omCurrentObj->objId][5];
    s32 i;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    i = 0x3C;
    func_801ABBA0_ovl7(arg0);
    func_801A2558_ovl7(D_801CAF50_ovl7);
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801B4938_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CD2F4_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    a->angle.v.z = -D_800E6A10[omCurrentObj->objId] * D_801CE33C_ovl7;
    b->angle.v.z = -D_800E6A10[omCurrentObj->objId] * D_801CE33C_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10107);
    func_800AA018(0x10106);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    while ((D_800EC2E0[omCurrentObj->objId].as_s32 == 0) && (i != 0)) {
        ohSleep(1);
        i--;
    }
    if (i != 0) {
        ohSleep(0xF);
    }
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_10/func_801B46C4_ovl7.s")
#endif

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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

