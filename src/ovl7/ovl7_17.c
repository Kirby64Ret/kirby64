#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

#include "main/object_helpers.h"
extern s32 D_800D7010[];
void func_800B74D8(GObj *);
void func_801BF390_ovl7(GObj *);
void func_800AECC0(f32);
void func_800AED20(f32);
void curObjSleepForever(void);

void func_800B3520(void);
void func_801A3E80_ovl7(GObj *);
/* K&R form is load-bearing here: see the long note at its NON_MATCHING/else
 * call site in func_801C1288_ovl7 below -- the ROM calls this void(void)
 * function with $a0 already loaded, and only a K&R declaration lets IDO
 * accept `func_801C0610_ovl7(arg0)` there. */
void func_801C0610_ovl7();
extern struct GObjProcess *gEntityGObjProcessArray[];

#include "Player.h"
/* K&R form is load-bearing here: its real signature is
 * void func_801C06C8_ovl7(GObj *), but its call site at line ~563 omits the
 * arg -- the ROM relies on whatever GObj* is already sitting in $a0. An ANSI
 * prototype breaks compilation with "too few arguments". */
void func_801C06C8_ovl7();
void func_800FD570(s32, s32, f32, f32, f32);
void play_sound(s32);
void func_800B19F4(s32, s32);
void func_8019BB58_ovl7(void);
void func_8019D958_ovl7(u16);
void func_801A7000_ovl7(GObj *);

extern s32 D_801CB0F8_ovl7[];
extern s32 D_800E8760[];
extern s32 D_801D0A38_ovl7[];
void func_801A3938(void *);
void func_801A36CC(void *);
void func_800A9EA4(s32);
void func_801A3864_ovl7(GObj *);
s32 func_801A0D74_ovl7(GObj *);
s32 func_801117BC(void *, u32);
void func_80111C4C(s32);
void func_801AC11C_ovl7(GObj *);

extern s32 D_800D7090;
extern u8 D_801CD914_ovl7[];
extern void *D_801CD930_ovl7[];
extern void *D_801CD8F0_ovl7[];
extern FUNCLIST D_801CD968_ovl7;
/* D_801CE6BC_ovl7 = -1e+04f : now emitted by this TU */
/* D_801CE6CC_ovl7 = 0.4f : now emitted by this TU */
extern s32 D_801CB044_ovl7[];
extern s32 D_801CA7FC_ovl7[];
extern s32 D_801D0A58_ovl7[];
void func_801AC33C_ovl7(GObj *);
void func_801A3864_ovl7(GObj *);
extern struct UnkStruct8004A7C4_3C *animModelTreeNextNode(struct UnkStruct8004A7C4_3C *);
void func_800B658C(GObj *);
extern f32 D_800EA6E0[];
extern void *D_801CD0B4_ovl7[], *D_801CD0D8_ovl7[], *D_801CD1B0_ovl7[], *D_801CD1D4_ovl7[];
/* D_801CE600_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE66C_ovl7 = -0.65f : now emitted by this TU */
void func_8019B164_ovl7(void);
extern f32 D_800E6A10[];
/* D_801CE660_ovl7 = -0.65f : now emitted by this TU */
extern f32 D_800EA6E0[];
extern void *D_801CB500_ovl7[];
extern f32 gameTicksPerDraw;
extern f32 D_800EC660[], D_800EC820[];
void func_801ABBA0_ovl7(void);
void func_801AAE60_ovl7(void);
void func_800AECC0(f32);
void func_800AED20(f32);
/* K&R form is load-bearing here: an ANSI `s32` prototype shifts register
 * allocation in this TU (measured via objdump A/B against the last
 * known-good build -- 60 lines of diff: $a0/$v0 renaming and an extra
 * `move $a0,$v0` where the ROM has a nop, across 3 unrelated callers). The
 * same edit also broke src/ovl7/ovl7_12.c the same way, even though
 * `void func_800AA018(s32);` already exists safely at file scope in dozens
 * of other TUs -- so this is NOT a general property of the prototype, just
 * these two files' particular register pressure at their call sites. */
void func_800AA018();
void func_801C2264_ovl7(GObj *);
void func_801C2478_ovl7(GObj *);
void func_801C26BC_ovl7(GObj *);
/* D_801CE648_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE6B8_ovl7 = -0.65f : now emitted by this TU */
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[];
extern u32 D_8012BCA0;
/* D_801CE64C_ovl7 = -1e+04f : now emitted by this TU */
extern FUNCLIST D_801CD904_ovl7, D_801CD948_ovl7;
s32 func_801C0588_ovl7(void);
void func_801C02D0_ovl7(void);
void func_801C1BB8_ovl7(void);
void eneTurnCommon(s32);
/* D_801CE614_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE680_ovl7 = -0.65f : now emitted by this TU */
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[];

extern s32 D_801CD120_ovl7[];
extern s32 D_801CD18C_ovl7[];
/* D_801CE630_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE6A0_ovl7 = -0.65f : now emitted by this TU */
void curObjSleepForever(void);

void func_801A0D50_ovl7(void *);
void func_801BF598_ovl7(GObj *);
void func_801C08E8_ovl7(GObj *);
void func_801C1698_ovl7(GObj *);
void func_801C2020_ovl7(GObj *);
void func_801BF618_ovl7(GObj *);
void func_801C0958_ovl7(GObj *);
void func_801C1718_ovl7(GObj *);
void func_801C2098_ovl7(GObj *);

extern FUNCLIST D_801CD8F4_ovl7;
extern FUNCLIST D_801CD938_ovl7;
extern FUNCLIST D_801CD958_ovl7;
extern FUNCLIST D_801CDA58_ovl7;
extern FUNCLIST D_801CDA5C_ovl7;
extern FUNCLIST D_801CDA60_ovl7;
void func_800AF9B8(s32, s32);
void func_800B6684(GObj *);


void func_800AF9B8(s32, s32);
void func_800B6684(GObj *);

void func_801BF220_ovl7(GObj *arg0) {
    D_800E0650[omCurrentObj->objId] = &D_800D7010[18];
    D_800DEF90[omCurrentObj->objId] = &func_800B74D8;
    D_800DF150[omCurrentObj->objId] = &func_801BF390_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E7B20[omCurrentObj->objId] = 0.0f;
    D_800E7EA0[omCurrentObj->objId] = 0;
    D_800E7CE0[omCurrentObj->objId] = D_800E7EA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8AE0[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId];
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    gEntitiesScaleXArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 1.0f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.0f;
    curObjSleepForever();
}

void func_801BF390_ovl7(GObj *arg0) {
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    if (D_800E8220[omCurrentObj->objId] == 0) {
        gKirbyState.numberInhaling += 1;
    }
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
    }
}

void func_801BF448_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B658C;
    D_800E9AA0[omCurrentObj->objId] = D_800E77A0[omCurrentObj->objId];
    D_800E9E20[omCurrentObj->objId] = 0x3C;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801CD8F0_ovl7);
}

void func_801BF528_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BF618_ovl7;
    func_801A0D50_ovl7(func_801BF598_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801BF598_ovl7(arg0);
}

void func_801BF598_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD8F4_ovl7);
    }
}

void func_801BF618_ovl7(GObj *arg0) {
    s32 sp1C;

    if (func_801C0588_ovl7() != 0) {
        return;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < -1e+04f) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C0610_ovl7);
        return;
    }
    sp1C = func_801A0D74_ovl7(arg0);
    eneTurnCommon(1);
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (((D_8012BCA0 >> 0x13) & 0x1FF) != 0) {
            play_sound(0x119);
        }
    }
    if (sp1C == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_801CD904_ovl7);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] < 0x33) {
        func_801C02D0_ovl7();
    }
}

void func_801BF770_ovl7(GObj *arg0) {
    extern s32 D_800DDFD0[];
    extern s32 D_800E8920[], D_800E8AE0[];
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
/* D_801CE5EC_ovl7 = 0.8f : now emitted by this TU */
    extern void *D_801CD090_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CD090_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0x119);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10606);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (D_800EA6E0[omCurrentObj->objId] * 4.0f);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
        D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.5f;
    }
    D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.8f;
    curObjSleepForever();
}

void func_801BF99C_ovl7(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BF598_ovl7);
    }
    if (D_800EA6E0[omCurrentObj->objId] <= 0.4f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BF598_ovl7);
    }
    if (D_800E3210[omCurrentObj->objId] < -1.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BF598_ovl7);
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
        }
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            func_800B3520();
        }
    }
}

void func_801BFB68_ovl7(GObj *arg0) {
    extern s32 D_800DDFD0[], D_800E8920[], D_800E9E20[];
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    f32 vel;

    *(u32 *) &D_800DDFD0[omCurrentObj->objId] = 1;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 < 2) {
        ent->unk98 = &D_801CD0B4_ovl7;
    } else {
        ent->unk98 = &D_801CD0D8_ovl7;
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0x119);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = D_800E9FE0[omCurrentObj->objId].as_s32 + 1;
    func_8019B164_ovl7();
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    vel = D_800E64D0[0];
    if (ABSF(vel) >= 5.0f) {
        D_800EA6E0[omCurrentObj->objId] = 0.85f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 0.7f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ((D_800EA6E0[omCurrentObj->objId] * 4.0f) * 2.0f);
    D_800E6690[omCurrentObj->objId] = 0.0;
    D_800E6850[omCurrentObj->objId] = 8.0f;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    D_800E9E20[omCurrentObj->objId] = 0x3C;
    curObjSleepForever();
}

void func_801BFDF0_ovl7(GObj *arg0) {
    f32 vel;

    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        vel = D_800E64D0[omCurrentObj->objId];
        if (ABSF(vel) > 0.5f) {
            D_800E64D0[omCurrentObj->objId] = vel * 0.95f;
        } else {
            D_800E6690[omCurrentObj->objId] = 0.0;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
        }
        D_800E3750[omCurrentObj->objId] = -0.065f;
        D_800E3C90[omCurrentObj->objId] = 1.2f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 12.0f;
    }
}

void func_801BFF30_ovl7(GObj *arg0) {
    extern void *D_801CD0FC_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD0FC_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    play_sound(0x119);
    func_800B3520();
    switch (D_800E9C60[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 2:
        ohSleep(0x3C);
        break;
    case 3:
        ohSleep(0x32);
        break;
    case 4:
        ohSleep(0x28);
        break;
    case 5:
        ohSleep(0x1E);
        break;
    default:
        ohSleep(0x1E);
        break;
    }
    func_801C0610_ovl7(arg0);
}

void func_801C0040_ovl7(GObj *arg0) {
}

void func_801C0048_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CD120_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    curObjSleepForever();
}

void func_801C010C_ovl7(GObj *arg0) {
    f32 vel;

    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        vel = D_800E64D0[omCurrentObj->objId];
        if (ABSF(vel) > 0.5f) {
            D_800E64D0[omCurrentObj->objId] = vel * 0.8f;
            D_800E6690[omCurrentObj->objId] = 0.0;
        } else {
            D_800E6690[omCurrentObj->objId] = 0.0;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
        }
        vel = D_800E3210[omCurrentObj->objId];
        if (ABSF(vel) > 2.0f) {
            D_800E3210[omCurrentObj->objId] = vel * 0.8f;
            D_800E3750[omCurrentObj->objId] = 0.0;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.065f;
            D_800E3C90[omCurrentObj->objId] = 1.2f;
        }
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 12.0f;
    }
}

/* FACTORY: 14/174, whole-function callee-saved permutation.  The ROM saves
   TWO s-registers -- $s1 = &omCurrentObj, $s0 = ent -- while our IDO saves
   only $s0 (= &omCurrentObj) and keeps ent in a temp; that one decision
   renames most of the body and drops the info struct from the ROM's
   sp+0x38 to sp+0x30.  Re-adding the `u32 id` local restores the ROM's
   frame size (0x58) but not the register split; trailing pads only grow
   the frame (0x60).  Structure, control flow and the four-way event
   dispatch are otherwise the ROM's.
   N64 spellings: the switch is on (u32) D_800E83E0[omCurrentObj->objId]
   and objId is re-read INLINE at each use after the first (the PORT arm's
   cached `id` reload pattern is a PC artefact); the listing returns $v0=0
   on the no-anim path, so this is an s32 function on N64 while the
   file-scope declaration says void -- do NOT retype that declaration at
   file scope (two call sites depend on it); the permuter should retype it
   only inside its own copy. */
#ifdef MIPS_TO_C
void func_801C02D0_ovl7(void) {
    void func_80111550(u32);
    void *func_80111C88(void *, u32);
    void func_80111ECC(void *);
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    struct Ovl7_17_AnimInfoA {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0x10];
    };
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    struct Ovl7_17_AnimInfoA info;

    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(id);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else {
        if (func_80110150(&info) != 0) {
            D_800E83E0[omCurrentObj->objId] = info.unk2;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
        }
        ent->unk43 = 0;
    }
    switch ((u32) D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (info.unkC == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BF598_ovl7);
            return;
        }
        if (func_801A0244_ovl7(info.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = NULL;
            ent->unk40 = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], (void (*)(GObj *)) func_801C0610_ovl7);
        return;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return;
    }
}
#elif defined(PORT)
/* Boss/miniboss anim-event pump, grabbable phase (ported from m2c): step
 * the anim script and drain the pending event into D_800E83E0/unk43;
 * event 1 with a zero payload re-enters state 1 via func_801BF598_ovl7,
 * with a payload it attempts the power steal (func_801A0244_ovl7 takes
 * just the payload -- m2c's extra args were leftover registers), else
 * falls back to the idle driver func_801C0610_ovl7; event 3 is the
 * inhale handoff. */
void func_801C02D0_ovl7(void) {
    void func_80111550(u32);
    void *func_80111C88(void *, u32);
    void func_80111ECC(void *);
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    s32 func_801A0244_ovl7(s32);
    struct PcAnimInfo17A {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0x10];
    };
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    struct PcAnimInfo17A info;

    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(id);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else {
        if (func_80110150(&info) != 0) {
            D_800E83E0[omCurrentObj->objId] = info.unk2;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
        }
        ent->unk43 = 0;
    }
    id = omCurrentObj->objId;
    switch (D_800E83E0[id]) {
    case 1:
        if (info.unkC == 0) {
            gEntityFuncListIDArray[id] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BF598_ovl7);
            return;
        }
        if (func_801A0244_ovl7(info.unkC) != -1) {
            D_800E83E0[omCurrentObj->objId] = 0x12;
            play_sound(0xF4);
            ent->unk94 = NULL;
            ent->unk40 = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], (void (*)(GObj *)) func_801C0610_ovl7);
        return;
    case 3:
        D_800E8220[id] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C02D0_ovl7.s")
#endif

s32 func_801C0588_ovl7(void) {
    if (D_800D7090 != omCurrentObj->objId) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C0610_ovl7);
        return 1;
    }
    return 0;
}

s32 func_801C05E0_ovl7(void) {
    if (D_800D7090 != omCurrentObj->objId) {
        return 1;
    }
    return 0;
}

void func_801C0610_ovl7(void) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_801C06C8_ovl7();
    func_800FD570(0, ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    play_sound(ent->unk94->unk1C);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0xF);
    func_8019D958_ovl7(omCurrentObj->objId);
}

void func_801C06C8_ovl7(GObj *arg0) {
    if (D_800D7090 == omCurrentObj->objId) {
        D_800D7090 = -1;
    }
}

void func_801C06FC_ovl7(void) {
    struct UnkStruct8004A7C4_3C_80 *obj;
    struct UnkStruct8004A7C4_3C *node = D_800DE350[omCurrentObj->objId]->data.ptr;
    u8 *p = &D_801CD914_ovl7[(D_800E77A0[omCurrentObj->objId] * 4) - 4];

    while (node != 0) {
        obj = node->unk80;
        while (obj != 0) {
            obj->unk58 = p[0];
            obj->unk59 = p[1];
            obj->unk5A = p[2];
            obj = obj->unk0;
        }
        node = animModelTreeNextNode(node);
    }
}

void func_801C07A8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B658C;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0x3C;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD930_ovl7);
}

void func_801C0878_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C0958_ovl7;
    func_801A0D50_ovl7(func_801C08E8_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C08E8_ovl7(arg0);
}

void func_801C08E8_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD938_ovl7);
    }
}

void func_801C0958_ovl7(GObj *arg0) {
    s32 sp1C;

    if (func_801C0588_ovl7() != 0) {
        return;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < -1e+04f) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C0610_ovl7);
        return;
    }
    sp1C = func_801A0D74_ovl7(arg0);
    eneTurnCommon(1);
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (((D_8012BCA0 >> 0x13) & 0x1FF) != 0) {
            play_sound(0x119);
        }
    }
    if (sp1C == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_801CD948_ovl7);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] < 0x33) {
        func_801C1BB8_ovl7();
    }
}

void func_801C0AB0_ovl7(GObj *arg0) {
    extern s32 D_800DDFD0[];
    extern s32 D_800E8920[], D_800E8AE0[], D_800E98E0[];
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
/* D_801CE658_ovl7 = 0.8f : now emitted by this TU */
    extern void *D_801CD144_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CD144_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0x119);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x10609);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (D_800EA6E0[omCurrentObj->objId] * 4.0f);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
        D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.5f;
    }
    D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.8f;
    curObjSleepForever();
}

void func_801C0CF4_ovl7(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C08E8_ovl7);
    }
    if (D_800EA6E0[omCurrentObj->objId] <= 0.4f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C08E8_ovl7);
    }
    if (D_800E3210[omCurrentObj->objId] < -1.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C08E8_ovl7);
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
        }
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            func_800B3520();
        }
    }
}

void func_801C0EC0_ovl7(GObj *arg0) {
    extern s32 D_800DDFD0[], D_800E8920[], D_800E9E20[];
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    f32 vel;

    *(u32 *) &D_800DDFD0[omCurrentObj->objId] = 1;
    if (D_800E9FE0[omCurrentObj->objId].as_s32 < 2) {
        ent->unk98 = &D_801CD1B0_ovl7;
    } else {
        ent->unk98 = &D_801CD1D4_ovl7;
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0x119);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = D_800E9FE0[omCurrentObj->objId].as_s32 + 1;
    func_8019B164_ovl7();
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    vel = D_800E64D0[0];
    if (ABSF(vel) >= 5.0f) {
        D_800EA6E0[omCurrentObj->objId] = 0.85f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 0.7f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * ((D_800EA6E0[omCurrentObj->objId] * 4.0f) * 2.0f);
    D_800E6690[omCurrentObj->objId] = 0.0;
    D_800E6850[omCurrentObj->objId] = 8.0f;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    D_800E9E20[omCurrentObj->objId] = 0x3C;
    curObjSleepForever();
}

void func_801C1148_ovl7(GObj *arg0) {
    f32 vel;

    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        vel = D_800E64D0[omCurrentObj->objId];
        if (ABSF(vel) > 0.5f) {
            D_800E64D0[omCurrentObj->objId] = vel * 0.95f;
        } else {
            D_800E6690[omCurrentObj->objId] = 0.0;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
        }
        D_800E3750[omCurrentObj->objId] = -0.065f;
        D_800E3C90[omCurrentObj->objId] = 1.2f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 12.0f;
    }
}

void func_801C1288_ovl7(GObj *arg0) {
    /* NOT hoistable: this K&R redeclaration must stay in this block. It
     * shadows the (void) DEFINITION of func_801C0610_ovl7 above, which is
     * what lets the call at the end of this function pass arg0. Removing it
     * fails the build with "Type GObj * of this argument is incompatible
     * with type void of function prototype description". */
    extern void func_801C0610_ovl7();
    extern void *D_801CD168_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD168_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    play_sound(0x119);
    func_800B3520();
    switch (D_800E9C60[omCurrentObj->objId]) {
    case 0:
    case 1:
    case 2:
        ohSleep(0x3C);
        break;
    case 3:
        ohSleep(0x32);
        break;
    case 4:
        ohSleep(0x28);
        break;
    case 5:
    case 6:
        ohSleep(0x1E);
        break;
    default:
        ohSleep(0x1E);
        break;
    }
    /* THE ARGUMENT IS FOR IDO AND THE GUARD IS FOR CC_CHECK.
     *
     * func_801C0610_ovl7 is defined at file scope as (void), and the ROM
     * calls it here with $a0 already loaded -- passing arg0 is what makes IDO
     * emit that, and it is why this function matches. K&R C allows it and the
     * block-scope `extern void func_801C0610_ovl7();` above is the usual way
     * of saying so.
     *
     * gcc does not accept it, and a block-scope declaration cannot override a
     * definition gcc has already seen: CC_CHECK fails the whole build with
     * "too many arguments to function". The same call earlier in this file
     * compiles only because it precedes the definition.
     *
     * NON_MATCHING is defined by CC_CHECK and by Makefile.pc, and by neither
     * the ROM build -- so gcc sees the prototype-correct call, IDO sees the
     * one that matches, and the port calls a no-argument function with no
     * arguments, which is also correct. */
#ifdef NON_MATCHING
    func_801C0610_ovl7();
#else
    func_801C0610_ovl7(arg0);
#endif
}

void func_801C1398_ovl7(GObj *arg0) {
}

void func_801C13A0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CD18C_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    curObjSleepForever();
}

void func_801C1464_ovl7(GObj *arg0) {
    f32 vel;

    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        vel = D_800E64D0[omCurrentObj->objId];
        if (ABSF(vel) > 0.5f) {
            D_800E64D0[omCurrentObj->objId] = vel * 0.8f;
            D_800E6690[omCurrentObj->objId] = 0.0;
        } else {
            D_800E6690[omCurrentObj->objId] = 0.0;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
        }
        vel = D_800E3210[omCurrentObj->objId];
        if (ABSF(vel) > 2.0f) {
            D_800E3210[omCurrentObj->objId] = vel * 0.8f;
            D_800E3750[omCurrentObj->objId] = 0.0;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.065f;
            D_800E3C90[omCurrentObj->objId] = 1.2f;
        }
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 12.0f;
    }
}

void func_801C1628_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C1718_ovl7;
    func_801A0D50_ovl7(func_801C1698_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C1698_ovl7(arg0);
}

void func_801C1698_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD958_ovl7);
    }
}

void func_801C1718_ovl7(GObj *arg0) {
    s32 sp1C;

    if (func_801C0588_ovl7() != 0) {
        return;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < -1e+04f) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C0610_ovl7);
        return;
    }
    sp1C = func_801A0D74_ovl7(arg0);
    eneTurnCommon(1);
    if (sp1C == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_801CD968_ovl7);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] < 0x3B) {
        func_801C1BB8_ovl7();
    }
}

void func_801C1830_ovl7(GObj *arg0) {
    extern s32 D_800DDFD0[];
    extern s32 D_800E8920[], D_800E8AE0[], D_800E98E0[];
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
/* D_801CE6C8_ovl7 = 0.8f : now emitted by this TU */
    extern void *D_801CD1F8_ovl7[];
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CD1F8_ovl7;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        play_sound(0x119);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 1;
    if (D_800EA6E0[omCurrentObj->objId] < 1.0f) {
        play_sound(0x119);
    }
    func_800A9EA4(0x10609);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] * 0.5f;
        D_800E3C90[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] * 0.5f;
    }
    D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.8f;
    curObjSleepForever();
}

void func_801C1A90_ovl7(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C1698_ovl7);
    }
    if (D_800EA6E0[omCurrentObj->objId] <= 0.4f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C1698_ovl7);
    }
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        }
    }
}

/* FACTORY: 4/147 structurally, one register transposition.  Frame (0x50),
   info struct at 0x30, ent spill at 0x28, all four event arms, the u32
   switch and both dispatch tails are the ROM's -- `u32 id` must be a real
   local here (the ROM materialises objId in $v0 and copies `or $a0,$v0`
   for func_80111550; inlining it loads straight into $a0 and costs the
   frame 8 bytes).  Residue: the ROM holds id in $v0 and ent in $v1; ours
   holds id in $a0 and ent in $v0, which renames most of the body.
   Same family as func_801C02D0_ovl7 above -- note the OPPOSITE lever
   applies there (inline objId, no `id` local), so do not unify them. */
#ifdef MIPS_TO_C
void func_801C1BB8_ovl7(void) {
    void func_80111550(u32);
    void *func_80111C88(void *, u32);
    void func_80111ECC(void *);
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    struct Ovl7_17_AnimInfoB {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0x10];
    };
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    struct Ovl7_17_AnimInfoB info;

    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(id);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110150(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = 0;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    switch ((u32) D_800E83E0[omCurrentObj->objId]) {
    case 1:
        if (info.unkC == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C08E8_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], (void (*)(GObj *)) func_801C0610_ovl7);
        return;
    case 3:
        D_800E8220[omCurrentObj->objId] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return;
    }
}
#elif defined(PORT)
/* Second boss anim-event pump (ported from m2c): same drain as
 * func_801C02D0_ovl7 but the 0150 branch keeps the event id, event 1 with
 * zero payload re-enters state 1 via func_801C08E8_ovl7, a nonzero
 * payload just falls back to the idle driver (no power steal), and
 * event 3 hands off to the inhale. */
void func_801C1BB8_ovl7(void) {
    void func_80111550(u32);
    void *func_80111C88(void *, u32);
    void func_80111ECC(void *);
    s32 func_80110B00(void *);
    s32 func_80110FD4(void *);
    s32 func_80110150(void *);
    struct PcAnimInfo17B {
        u8 unk0;
        u8 unk1;
        u8 unk2;
        u8 unk3;
        u8 filler4[8];
        s32 unkC;
        u8 filler10[0x10];
    };
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    struct PcAnimInfo17B info;

    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(id);
    func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
    if (func_80110B00(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110FD4(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = info.unk3;
    } else if (func_80110150(&info) != 0) {
        D_800E83E0[omCurrentObj->objId] = info.unk2;
        ent->unk43 = 0;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    id = omCurrentObj->objId;
    switch (D_800E83E0[id]) {
    case 1:
        if (info.unkC == 0) {
            gEntityFuncListIDArray[id] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801C08E8_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[id], (void (*)(GObj *)) func_801C0610_ovl7);
        return;
    case 3:
        D_800E8220[id] = 0;
        if (info.unkC != -1) {
            D_800E0D50[omCurrentObj->objId] = info.unkC;
        }
        gKirbyState.numberInhaling += 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A7000_ovl7);
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1BB8_ovl7.s")
#endif

/* 63/79: the instruction SEQUENCE is right end to end (including the folded
 * -0x40/-0x3C displacements, which need the `q[-8]` spelling -- `[idx - 8]`
 * materialises `addiu -64` instead) and the residue is a whole-function
 * register rotation: ROM t0/t2/t4 for &omCurrentObj/&D_800DFBD0/&D_801CD978
 * and a0/a2/a3 for the q base, the DObj and the MObj, IDO a3/t0/t2 and
 * v0/t6/a0. The function contains no call, so the callee-return-type lever
 * does not apply. Swept: obj/q/pa/i2 declaration presence, an explicit DObj
 * local (63, best), inlining q (68), and pa/pb inline vs local. */
#ifdef NON_MATCHING
struct Unk801CD938 {
    s32 unk0;
    s32 unk4;
};

void func_801C1E08_ovl7(void) {
    extern struct Unk801CD938 D_801CD978_ovl7[];
    struct UnkStruct8004A7C4_3C_80 *obj;
    struct DObj *dobj;
    struct Unk801CD938 *q;
    u8 *pa;
    s32 i2;

    q = &D_801CD978_ovl7[D_800E77A0[omCurrentObj->objId]];
    dobj = D_800DFBD0[omCurrentObj->objId][3];
    obj = (struct UnkStruct8004A7C4_3C_80 *) dobj->mobjList;
    pa = &D_801CD914_ovl7[q[-8].unk0 * 4];
    i2 = q[-8].unk4;
    if (obj != NULL) {
        obj->unk58 = pa[0];
        obj->unk59 = pa[1];
        obj->unk5A = pa[2];
        obj = obj->unk0;
        if (obj != NULL) {
            obj->unk58 = D_801CD914_ovl7[i2 * 4];
            obj->unk59 = D_801CD914_ovl7[(i2 * 4) + 1];
            obj->unk5A = D_801CD914_ovl7[(i2 * 4) + 2];
        }
    }
    dobj = D_800DFBD0[omCurrentObj->objId][1];
    obj = (struct UnkStruct8004A7C4_3C_80 *) dobj->mobjList;
    if (obj != NULL) {
        obj->unk58 = pa[0];
        obj->unk59 = pa[1];
        obj->unk5A = pa[2];
    }
    dobj = D_800DFBD0[omCurrentObj->objId][2];
    obj = (struct UnkStruct8004A7C4_3C_80 *) dobj->mobjList;
    if (obj != NULL) {
        obj->unk58 = D_801CD914_ovl7[i2 * 4];
        obj->unk59 = D_801CD914_ovl7[(i2 * 4) + 1];
        obj->unk5A = D_801CD914_ovl7[(i2 * 4) + 2];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_17/func_801C1E08_ovl7.s")
#endif

void func_801C1F44_ovl7(GObj *arg0) {
    func_800AF9B8(0x2B, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B6684;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801CDA58_ovl7);
}

void func_801C1FB0_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801C2098_ovl7;
    func_801A0D50_ovl7(func_801C2020_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801C2020_ovl7(arg0);
}

void func_801C2020_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, D_801CDA5C_ovl7);
    }
}

void func_801C2098_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_801CDA60_ovl7);
}

void func_801C20E0_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B3520();
    ohSleep(0x78);
    func_801A3E80_ovl7(arg0);
}

void func_801C212C_ovl7(GObj *arg0) {
}

void func_801C2134_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *tmp = ent->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sub = tmp->unk4;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801C2264_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB500_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    if (sub->unk4 != -1) {
        func_800AA018(sub->unk4);
    }
    if (sub->unk8 != -1) {
        func_800AA018(sub->unk8);
    }
    func_801AAE60_ovl7();
    func_801AC11C_ovl7(arg0);
}

void func_801C2264_ovl7(GObj *arg0) {
    s32 *p;
    GObj *obj;
    s32 id;

    if (func_801C0588_ovl7() == 0) {
        if ((D_800E83E0[omCurrentObj->objId] != 0) || (D_800E8760[omCurrentObj->objId] != 0)) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        } else {
            func_801A3938(D_801CB0F8_ovl7);
            func_801A36CC(func_801A3864_ovl7);
            func_801A0D74_ovl7(arg0);
            obj = omCurrentObj;
            p = &D_800E8920[obj->objId];
            if (*p == 1) {
                *p = 0;
            }
            func_80111C4C(func_801117BC(D_801D0A38_ovl7, id = obj->objId));
        }
    }
}
void func_801C2348_ovl7(GObj *arg0) {
    s32 pad; // load-bearing: the ROM leaves 4 bytes at the top of the local block
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *tmp = ent->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sub = tmp->unk4;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801C2478_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB500_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    if (sub->unk4 != -1) {
        func_800AA018(sub->unk4);
    }
    if (sub->unk8 != -1) {
        func_800AA018(sub->unk8);
    }
    func_801AAE60_ovl7();
    func_801AC11C_ovl7(arg0);
}

void func_801C2478_ovl7(GObj *arg0) {
    s32 *p;
    GObj *obj;
    s32 id;

    if (func_801C0588_ovl7() == 0) {
        if ((D_800E83E0[omCurrentObj->objId] != 0) || (D_800E8760[omCurrentObj->objId] != 0)) {
            if (D_800E83E0[omCurrentObj->objId] == 0x12) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
            } else {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
            }
        } else {
            if (func_801A0D74_ovl7(arg0) != 0) {
                func_801A3938(D_801CB044_ovl7);
                func_801A36CC(func_801A3864_ovl7);
            }
            obj = omCurrentObj;
            p = &D_800E8920[obj->objId];
            if (*p == 1) {
                *p = 0;
            }
            func_80111C4C(func_801117BC(D_801D0A58_ovl7, id = obj->objId));
        }
    }
}
void func_801C258C_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *tmp = ent->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sub = tmp->unk4;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801C26BC_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB500_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    if (sub->unk4 != -1) {
        func_800AA018(sub->unk4);
    }
    if (sub->unk8 != -1) {
        func_800AA018(sub->unk8);
    }
    func_801AAE60_ovl7();
    func_801AC11C_ovl7(arg0);
}

void func_801C26BC_ovl7(GObj *arg0) {
    s32 *p;
    GObj *obj;
    s32 id;

    if (func_801C0588_ovl7() == 0) {
        if ((D_800E83E0[omCurrentObj->objId] != 0) || (D_800E8760[omCurrentObj->objId] != 0)) {
            if (D_800E83E0[omCurrentObj->objId] == 0x12) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
            } else {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
            }
        } else {
            func_801A3938(D_801CB0F8_ovl7);
            func_801A36CC(func_801A3864_ovl7);
            func_801A0D74_ovl7(arg0);
            obj = omCurrentObj;
            p = &D_800E8920[obj->objId];
            if (*p == 1) {
                *p = 0;
            }
            func_80111C4C(func_801117BC(D_801CA7FC_ovl7, id = obj->objId));
        }
    }
}

