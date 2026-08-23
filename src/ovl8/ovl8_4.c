#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "main/math.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "track_arrays.h"

// ovl1 extern
s32 change_kirby_hp(f32);
struct Sub800E1B50_Unk34 *func_800A8100(s32, s32, s32, struct DObj *);
void func_800A9760(u32);
void func_800B33F4(void);
void func_800B4924(struct GObj *);
void func_800B4954(struct GObj *);
/* ovl1_8.c's definition spells the parameter `s32`, but every call site in
 * this file (and the ten others in the tree) hands it the GObj *; the s32 is
 * m2c residue in a still-unmatched draft, so the pointer spelling stays. */
void func_800B531C(struct GObj *);
void func_800BB468(s32, s32);

// ovl2 extern
f32 func_800F9828(s32, s32);
s32 func_800F98EC(s32, f32);
void func_800FA414(s32);
s32 func_800FB914(s32);
void func_800FBE1C(void);

// ovl3 extern
/* Same as func_800B531C: ovl3_4.c defines it `(s32)` but ignores the
 * argument, and all six declarations in the tree pass a GObj *. */
void func_801696F0_ovl3(struct GObj *);
void func_8016BBD0_ovl3(void);
void func_8016BC00_ovl3(void);
void func_8016BD24_ovl3(s32);

// ovl7 extern
/* ovl7_3.c takes struct Ovl7TrackParams *, which no header exports; this TU
 * hands them &D_801CA980, so void * is the spelling that needs no cast. */
void func_801A32EC(void *);
void func_801A33B8(void *);

// within this file
void func_801D4778_ovl8(struct GObj *);
void func_801D4C1C_ovl8(struct GObj *);
void func_801D59F0_ovl8(struct GObj *);
void func_801D5E90_ovl8(struct GObj *);
void func_801D6534_ovl8(struct GObj *);
void func_801D6B20_ovl8(struct GObj *);
void func_801D6F1C_ovl8(struct GObj *);
void func_801D75A8_ovl8(struct GObj *);

/* The FP slot rotation this used to sit at (13/114) closes on three source
 * shapes, all load-bearing: the sum gets its OWN named local, the call is
 * INLINE as the second operand of that sum with the multiply first, and the
 * first bracket is `Y[0] + 20.0f` while the second stays `30.0f + Y[...]`. */
void func_801D45B0_ovl8(struct GObj *arg0) {
    f32 sum;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D4C1C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800BB468(0, 0);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    sum = (D_800E6A10[D_800E0D50[omCurrentObj->objId]] * 40.0f) +
        func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] = sum * 0.1f;
    D_800E3210[omCurrentObj->objId] =
        ((gEntitiesNextPosYArray[0] + 20.0f) -
         (30.0f + gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]])) * -0.1f;
    ohSleep(0xA);
    func_800B33F4();
    func_801D4778_ovl8(arg0);
}
void func_801D4778_ovl8(struct GObj *arg0) {
    extern s32 D_801CA980;

    D_800E98E0[omCurrentObj->objId] = 1;
    arg0->flags |= 1;
    func_800B33F4();
    func_800FBE1C();
    func_800FA414(5);
    while (D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_s32 == 0) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    arg0->flags ^= 1;
    func_800FA414(3);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] =
        D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 10.0f;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesPosXArray[omCurrentObj->objId] =
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId] =
        gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = 15.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = -15.0f;
    }
    func_8016BC00_ovl3();
    func_801A32EC(&D_801CA980);
    while (D_800E98E0[omCurrentObj->objId] == 2) {
        ohSleep(1);
    }
    func_800BB468(0, 0);
    play_sound(0x1E9);
    D_800E98E0[omCurrentObj->objId] = 3;
    func_800B33F4();
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = -3.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = 3.0f;
    }
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E98E0[omCurrentObj->objId] == 3) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 4;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 5;
    curObjSleepForever();
}

void func_801D4C1C_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;

    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        if (D_800E6310[omCurrentObj->objId] != 0) {
            D_800E98E0[omCurrentObj->objId] = 3;
        } else {
            func_801A33B8(&D_801CA980);
            if (((D_8012BCA0 >> 0x13) & 0xFFF) != 0) {
                D_800E98E0[omCurrentObj->objId] = 3;
            }
        }
        break;
    case 3:
        func_801A33B8(&D_801CA980);
        if (((D_8012BCA0 >> 0x13) & 0xE00) != 0) {
            D_800E98E0[omCurrentObj->objId] = 4;
        }
        break;
    case 4:
        break;
    case 5:
        play_sound(0x110);
        change_kirby_hp(-1.0f);
        if (0.0f < gKirbyHp) {
            play_sound(0xD9);
        }
        func_8016BD24_ovl3(1);
        break;
    }
    func_801696F0_ovl3(arg0);
}


void func_801D4D88_ovl8(struct GObj *arg0) {
    f32 sum;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D4C1C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800BB468(0, 0);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    sum = (D_800E6A10[D_800E0D50[omCurrentObj->objId]] * 40.0f) +
        func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] =
        sum * 0.25f;
    D_800E3210[omCurrentObj->objId] =
        ((gEntitiesNextPosYArray[0] + 20.0f) -
         (30.0f + gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]])) * -0.25f;
    ohSleep(4);
    func_800B33F4();
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 40.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_801D4778_ovl8(arg0);
}

void func_801D5024_ovl8(void);

void func_801D4FA4_ovl8(void) {
    D_800EAA60[omCurrentObj->objId] = 1.0f;
    func_801D5024_ovl8();
}


void func_801D4FE4_ovl8(void) {
    D_800EAA60[omCurrentObj->objId] = -1.0f;
    func_801D5024_ovl8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5024_ovl8.s")

void func_801D560C_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        change_kirby_hp(-1.0f);
        if (0.0f < gKirbyHp) {
            play_sound(0xD9);
        }
        func_8016BD24_ovl3(1);
        break;
    }
    func_801696F0_ovl3(arg0);
}

/* K&R form is load-bearing on every repeat of this declaration in this file
 * (4x): its real signature is void func_801D57E0_ovl8(struct GObj *) (see
 * its definition below), but every call site above passes 0 args -- the
 * ROM relies on whatever GObj* is already sitting in $a0. An ANSI prototype
 * breaks compilation with "too few arguments". */
void func_801D57E0_ovl8();

void func_801D56E0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -14.0f;
    func_801D57E0_ovl8();
}


void func_801D5720_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -12.0f;
    func_801D57E0_ovl8();
}


void func_801D5760_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -16.0f;
    func_801D57E0_ovl8();
}


void func_801D57A0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -10.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8(struct GObj *arg0) {

    play_sound(0x1E9);
    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D59F0_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800E64D0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    func_8016BC00_ovl3();
    while (D_800E98E0[omCurrentObj->objId] == 2) {
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_800B33F4();
    curObjSleepForever();
}

void func_801D59F0_ovl8(struct GObj *arg0) {
    extern s32 D_800D7098;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;

    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        if (D_800E6310[omCurrentObj->objId] != 0) {
            D_800E98E0[omCurrentObj->objId] = 3;
        } else {
            func_801A33B8(&D_801CA980);
            if (((D_8012BCA0 >> 0x13) & 0xE3F) != 0) {
                D_800E98E0[omCurrentObj->objId] = 3;
            }
        }
        break;
    case 3:
        if (0.0f < D_800E7B20[(&D_800D7098)[12]]) {
            change_kirby_hp(-1.0f);
            play_sound(0xD9);
        }
        func_8016BD24_ovl3(1);
        break;
    }
    func_801696F0_ovl3(arg0);
}

void func_801D5B20_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D5E90_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId];
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    change_kirby_hp(-1.0f);
    if (0.0f < gKirbyHp) {
        play_sound(0xD9);
        func_800BB468(0, 0);
    }
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 4) {
        gEntitiesScaleYArray[omCurrentObj->objId] =
            (D_800EA6E0[omCurrentObj->objId] * (4.0f - (f32) D_800E9560[omCurrentObj->objId])) * 0.25f;
        ohSleep(1);
        D_800E9560[omCurrentObj->objId]++;
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.1f;
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 0xA) {
        gEntitiesScaleYArray[omCurrentObj->objId] =
            (D_800EA6E0[omCurrentObj->objId] * ((f32) D_800E9560[omCurrentObj->objId] + 1.0f)) / 10.0f;
        ohSleep(1);
        D_800E9560[omCurrentObj->objId]++;
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    curObjSleepForever();
}

void func_801D5E90_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0xE) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (gKirbyHp <= 0.0f) {
            func_8016BD24_ovl3(0);
        }
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        func_8016BD24_ovl3(0);
        break;
    }
    func_801696F0_ovl3(arg0);
}

void func_801D5F88_ovl8(struct GObj *arg0) {
    extern s32 D_801CA980;
    f32 temp;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D6534_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] = 1.5707964f;
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] = -1.5707964f;
    }
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800FBE1C();
    func_800FA414(5);
    ohSleep(0xE);
    D_800E98E0[omCurrentObj->objId] = 1;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] = 1.5707964f;
    } else {
        gEntitiesAngleYArray[omCurrentObj->objId] = -1.5707964f;
    }
    while (1) {
        if (D_800EC2E0[omCurrentObj->objId].as_s32 == 2) {
            break;
        }
        if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] != 9) {
            break;
        }
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    temp = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E6D90[omCurrentObj->objId] = temp;
    D_800E6BD0[omCurrentObj->objId] = temp;
    func_800F98EC(omCurrentObj->objId,
                  D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj->pos.v.x - arg0->data.dobj->pos.v.x);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_801A32EC(&D_801CA980);
    func_800FA414(3);
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = 12.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 20.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = -12.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 20.0f;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_8016BC00_ovl3();
    curObjSleepForever();
}


/* 5/235: residue is one CSE register -- the ROM parks D_800E0D50[objId] in
 * $a2 (also func_800B2340's 3rd argument register) and coalesces; IDO parks
 * it in $a3 and shuffles with a `move $a2,$a3` on the default edge.
 * Swept: named index local (before and after `d`), named funclist local,
 * explicit `default:`, declaration order, hoisting `d` below the test. */
#ifdef NON_MATCHING
void func_801D6534_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    struct DObj *d;
    Vector sp38;
    Vector sp2C;

    d = D_800DFBD0[D_800E0D50[omCurrentObj->objId]][15];
    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0xE) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
    case 1:
        func_800B2340(&sp38, d, D_800E0D50[omCurrentObj->objId]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp38.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp38.y - 20.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp38.z;
        func_800B26D8(&sp2C, d, D_800E0D50[omCurrentObj->objId]);
        gEntitiesAngleYArray[omCurrentObj->objId] = sp2C.y;
        break;
    case 2:
        func_801A33B8(&D_801CA980);
        if ((((D_8012BCA0 >> 0x13) & 0x3F) != 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
            D_800E98E0[omCurrentObj->objId] = 3;
            D_800E8920[omCurrentObj->objId] = 0;
            if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
                D_800E64D0[omCurrentObj->objId] = -3.0f;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = 5.0f;
            } else {
                D_800E64D0[omCurrentObj->objId] = 3.0f;
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E6850[omCurrentObj->objId] = 5.0f;
            }
            D_800E3210[omCurrentObj->objId] = 12.0f;
            D_800E3750[omCurrentObj->objId] = -0.9806650281f;
            D_800E3C90[omCurrentObj->objId] = 12.0f;
            change_kirby_hp(-1.0f);
            if (0.0f < gKirbyHp) {
                play_sound(0x1E9);
                func_800FB914(2);
                func_800BB468(0, 0);
            } else {
                func_8016BD24_ovl3(0);
            }
        }
        break;
    case 3:
        func_801A33B8(&D_801CA980);
        if (((D_8012BCA0 >> 0x13) & 0xE00) != 0) {
            play_sound(0x110);
            func_8016BD24_ovl3(0);
        }
        break;
    default:
        break;
    }
    func_801696F0_ovl3(arg0);
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6534_ovl8.s")
#endif

void func_801D68E0_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern s32 D_801CA980;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D6B20_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = -4.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = 4.0f;
    }
    D_800E3210[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = -0.7845320106f;
    D_800E3C90[omCurrentObj->objId] = 14.0f;
    change_kirby_hp(-1.0f);
    if (0.0f < gKirbyHp) {
        play_sound(0xD9);
        func_800BB468(0, 0);
    }
    ohSleep(1);
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_801A32EC(&D_801CA980);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_801D6B20_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    extern s32 D_800E6150[], D_800E5F90[];
    extern f32 D_800E6D90[], D_800E6BD0[], gEntitiesPosYArray[];

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 0xE) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (gKirbyHp <= 0.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
            D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            func_8016BD24_ovl3(0);
        }
        break;
    case 1:
        func_801A33B8(&D_801CA980);
        if (((D_8012BCA0 >> 0x13) & 0xE00) != 0) {
            play_sound(0x110);
            func_8016BD24_ovl3(0);
        }
        break;
    }
    func_801696F0_ovl3(arg0);
}

void func_801D6C8C_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern s32 D_801CA980;
    struct DObj *sp1C;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
        sp1C = D_800DFBD0[omCurrentObj->objId][2];
    }
    D_800DF150[omCurrentObj->objId] = func_801D6F1C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800A8100(0, 1, 0x20, sp1C);
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = -9.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = 9.0f;
    }
    D_800E3210[omCurrentObj->objId] = 20.0f;
    D_800E3750[omCurrentObj->objId] = -1.2f;
    D_800E3C90[omCurrentObj->objId] = 20.0f;
    change_kirby_hp(-1.0f);
    if (0.0f < gKirbyHp) {
        play_sound(0xD9);
        func_800BB468(0, 0);
    }
    ohSleep(7);
    D_800E64D0[omCurrentObj->objId] *= 0.6f;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_801A32EC(&D_801CA980);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

/* Per-frame main for the boss's grab, sibling of func_801D75A8_ovl8 below --
 * same head (bail to ovl3 once the parent track's func-list id is 5) and the
 * same ovl7 probe/reposition block, but two different outcomes:
 *   state 0  once Kirby is out of HP, snap him back to gEntitiesPosYArray and
 *            restore the track slot and offset he had before the grab.
 *   state 1  run the probe, move him to it, fold its three hit bits into the
 *            collision result word D_8012BCA0, then read that word once: the
 *            0xE00 group (a wall) ends the grab with a bump, and failing that
 *            the 0x3F group (floor/ceiling) just halves and reverses his X
 *            velocity and kills the Y term. */
#ifdef MIPS_TO_C
/* FACTORY: 131/201 words DIFFER -- 70 already match, instruction count exact
 * but for ONE extra `move $a0,$t0`. The ROM loads omCurrentObj->objId
 * straight into $a0 (the outgoing first argument of func_800F8728) and
 * indexes off it; IDO CSEs the same expression into $t0 and moves it into
 * place at the call. Everything else in the residue is FP/integer register
 * rotation hanging off that ($f16/$f18 vs $f10/$f16 on the two subs,
 * $t1 vs $t2 on the D_800E6150 copy).
 *
 * Fixed on the way down (151 -> 131): the state dispatch is a SWITCH, not an
 * if/else-if chain -- the ROM branches INTO each arm (`beql $v0,$zero,STATE0`
 * / `beq $v0,$at,STATE1` / `b DEFAULT`), which is IDO's sparse-switch
 * lowering; the if/else form branches away and costs 20 words.
 * Swept with no effect: giving objId a named local (that ADDS an instruction,
 * 202), `!(dx == 0 && dz == 0)` for the delta test (131, identical), and
 * declaration order for the four locals (133, worse). */
void func_801D6F1C_ovl8(struct GObj *arg0) {
    extern struct EnemyProbe D_801CE6D0_ovl7;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    extern f32 gKirbyHp;
    s32 func_801128A4(void *);
    f32 func_800F8728(s32, f32, f32);
    s32 hits;
    u32 flags;
    f32 dx;
    f32 dz;

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (gKirbyHp <= 0.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
            D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            func_8016BD24_ovl3(0);
        }
        break;
    case 1:
        func_801A33B8(&D_801CA980);
        hits = func_801128A4(&D_801CE6D0_ovl7);
        dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[omCurrentObj->objId];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(omCurrentObj->objId, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posX;
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posZ;
        }
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posY;
        if (hits != 0) {
            if (hits & 1) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 7) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 2) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x38) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 4) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x1C0) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
        }
        flags = D_8012BCA0 >> 0x13;
        if ((flags & 0xE00) != 0) {
            play_sound(0x110);
            func_8016BD24_ovl3(0);
        } else if ((flags & 0x3F) != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.5f;
            D_800E3210[omCurrentObj->objId] = 0.0f;
        }
        break;
    }
    func_801696F0_ovl3(arg0);
}
#elif defined(PORT)
void func_801D6F1C_ovl8(struct GObj *arg0) {
    extern struct EnemyProbe D_801CE6D0_ovl7;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    extern f32 gKirbyHp;
    s32 func_801128A4(void *);
    f32 func_800F8728(s32, f32, f32);
    s32 hits;
    u32 flags;
    f32 dx;
    f32 dz;

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (gKirbyHp <= 0.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId];
            D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            func_8016BD24_ovl3(0);
        }
        break;
    case 1:
        func_801A33B8(&D_801CA980);
        hits = func_801128A4(&D_801CE6D0_ovl7);
        dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[omCurrentObj->objId];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(omCurrentObj->objId, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posX;
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posZ;
        }
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posY;
        if (hits != 0) {
            if (hits & 1) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 7) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 2) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x38) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 4) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x1C0) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
        }
        flags = D_8012BCA0 >> 0x13;
        if ((flags & 0xE00) != 0) {
            play_sound(0x110);
            func_8016BD24_ovl3(0);
        } else if ((flags & 0x3F) != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.5f;
            D_800E3210[omCurrentObj->objId] = 0.0f;
        }
        break;
    }
    func_801696F0_ovl3(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6F1C_ovl8.s")
#endif

#ifdef NON_MATCHING
/* Structurally exact (218/218 instructions, identical stack layout); the
 * remaining 64 diffs are a single one-slot rotation of three integer temps:
 * the ROM holds omCurrentObj in $v1, objId*4 in $a2 and the array base in
 * $v0, where IDO gives $v0/$v1/$a2. Swept: local declaration order and a
 * dead pad slot (fixed the frame), an explicit result local, and s32-vs-void
 * on func_800A8100. The original source has one more temporary than this. */
struct Ovl8TrackPosition {
    s32 unk0;
    f32 unk4;
    s32 unk8;
};

void func_801D7240_ovl8(struct GObj *arg0) {
    extern s32 D_801CA980;
    extern s32 func_800F9888(struct Ovl8TrackPosition *, f32);
    struct Ovl8TrackPosition sp3C;
    Vector sp30;
    struct DObj *sp2C;
    struct DObj *sp28;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
        sp2C = D_800DFBD0[omCurrentObj->objId][2];
        sp28 = D_800DFBD0[D_800E0D50[omCurrentObj->objId]][7];
    }
    D_800DF150[omCurrentObj->objId] = func_801D75A8_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EC2E0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800A8100(0, 1, 0x20, sp2C);
    func_800B2340(&sp30, sp28, D_800E0D50[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 60.0f;
    sp3C.unk0 = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    sp3C.unk4 = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    if (func_800F9888(&sp3C, D_800E6A10[D_800E0D50[omCurrentObj->objId]] * 100.0f) == 0) {
        D_800E6150[omCurrentObj->objId] = sp3C.unk0;
        D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
        D_800E6D90[omCurrentObj->objId] = sp3C.unk4;
        D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    }
    if (D_800E6A10[D_800E0D50[omCurrentObj->objId]] == 1.0f) {
        D_800E64D0[omCurrentObj->objId] = 20.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = -20.0f;
    }
    play_sound(0x1E9);
    ohSleep(1);
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_801A32EC(&D_801CA980);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D7240_ovl8.s")
#endif

/* Per-frame main for the boss's carried-Kirby state.
 *
 * If the parent track's func-list id is 5 the boss is already gone: just tell
 * ovl3 whether a hit landed (D_800E8920) and leave. Otherwise, in state 1,
 * re-run ovl7's probe (func_801A33B8 on D_801CA980, then func_801128A4 on the
 * shared EnemyProbe D_801CE6D0_ovl7), move Kirby to whatever the probe
 * resolved -- pushing him through func_800F8728 first when the probe actually
 * displaced him -- then fold the probe's three hit bits into the collision
 * result word D_8012BCA0 and, if anything is set there, halve and reverse his
 * X velocity, take a point of damage and clear the two gKirbyState fields the
 * grab used. */
#ifdef MIPS_TO_C
/* FACTORY: 97/179 words DIFFER -- 82 already match, and the instruction count
 * is EXACT. Residue is a frame-size divergence and the cascade it causes: the
 * ROM builds a 0x30 frame and spills the objId to 0x18(sp) and the
 * func_801128A4 result to 0x2C(sp) across the func_800F8728 call, while IDO
 * keeps both in registers and builds 0x20. Everything sp-relative and every
 * later register name follows from that.
 *
 * Swept with no effect: pad locals in every position (IDO drops them -- they
 * are unused, so lever 13 has nothing to push), `!(dx == 0 && dz == 0)` in
 * place of `dx != 0 || dz != 0` (the ROM shares one `mtc1 $zero,$f12` between
 * the two compares; IDO materialises two, and neither spelling changes it).
 * Fixed on the way down (136 -> 97): testing the EQUAL case first on
 * D_800E8920 (LEVERS lever 5), and giving the objId and the probe result
 * named locals.
 *
 * NOTE this function is PADDING-TRAPPED regardless: it is the last function
 * in its TU and its listing carries three trailing nops past `.size`, so
 * un-guarding it would shrink ovl8_4.o by 12 bytes even on a MATCH. Closing
 * it needs a `pad` subsegment in kirby64.yaml and the matching kirby.ld edit.
 * The PORT arm below is what the native link actually needs. */
#include "Player.h"
void func_801D75A8_ovl8(struct GObj *arg0) {
    extern struct EnemyProbe D_801CE6D0_ovl7;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    extern f32 gKirbyHp;
    s32 func_801128A4(void *);
    f32 func_800F8728(s32, f32, f32);
    s32 hits;
    f32 dx;
    f32 dz;
    s32 id;

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    if (D_800E98E0[omCurrentObj->objId] == 0) {
    } else if (D_800E98E0[omCurrentObj->objId] == 1) {
        func_801A33B8(&D_801CA980);
        hits = func_801128A4(&D_801CE6D0_ovl7);
        id = omCurrentObj->objId;
        dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[id];
        dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[id];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(id, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posX;
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posZ;
            id = omCurrentObj->objId;
        }
        gEntitiesNextPosYArray[id] = D_801CE6D0_ovl7.posY;
        if (hits != 0) {
            if (hits & 1) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 7) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 2) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x38) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 4) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x1C0) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
        }
        if (((D_8012BCA0 >> 0x13) & 0xFFF) != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.5f;
            change_kirby_hp(-1.0f);
            if (0.0f < gKirbyHp) {
                play_sound(0xD9);
                func_800FB914(2);
                func_800BB468(0, 0);
            }
            *(u32 *) ((u8 *) &gKirbyState + 0x24) = 0;
            *(u16 *) ((u8 *) &gKirbyState + 0x68) = 0;
            func_8016BD24_ovl3(1);
        }
    }
    func_801696F0_ovl3(arg0);
}
#elif defined(PORT)
#include "Player.h"
void func_801D75A8_ovl8(struct GObj *arg0) {
    extern struct EnemyProbe D_801CE6D0_ovl7;
    extern u32 D_8012BCA0;
    extern s32 D_801CA980;
    extern f32 gKirbyHp;
    s32 func_801128A4(void *);
    f32 func_800F8728(s32, f32, f32);
    s32 hits;
    f32 dx;
    f32 dz;
    s32 id;

    if (gEntityFuncListIDArray[D_800E0D50[omCurrentObj->objId]] == 5) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    if (D_800E98E0[omCurrentObj->objId] == 0) {
    } else if (D_800E98E0[omCurrentObj->objId] == 1) {
        func_801A33B8(&D_801CA980);
        hits = func_801128A4(&D_801CE6D0_ovl7);
        id = omCurrentObj->objId;
        dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[id];
        dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[id];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(id, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posX;
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posZ;
            id = omCurrentObj->objId;
        }
        gEntitiesNextPosYArray[id] = D_801CE6D0_ovl7.posY;
        if (hits != 0) {
            if (hits & 1) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 7) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 2) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x38) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
            if (hits & 4) {
                *(u16 *) &D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x1C0) << 3) | (*(u16 *) &D_8012BCA0 & 7);
            }
        }
        if (((D_8012BCA0 >> 0x13) & 0xFFF) != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.5f;
            change_kirby_hp(-1.0f);
            if (0.0f < gKirbyHp) {
                play_sound(0xD9);
                func_800FB914(2);
                func_800BB468(0, 0);
            }
            *(u32 *) ((u8 *) &gKirbyState + 0x24) = 0;
            *(u16 *) ((u8 *) &gKirbyState + 0x68) = 0;
            func_8016BD24_ovl3(1);
        }
    }
    func_801696F0_ovl3(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D75A8_ovl8.s")
#endif
