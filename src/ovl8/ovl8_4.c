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

/* The FP slot rotation this used to sit at (13/114) closes on three source
 * shapes, all load-bearing: the sum gets its OWN named local, the call is
 * INLINE as the second operand of that sum with the multiply first, and the
 * first bracket is `Y[0] + 20.0f` while the second stays `30.0f + Y[...]`. */
void func_801D45B0_ovl8(struct GObj *arg0) {
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800BB468(s32, s32);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800B33F4(void);
    extern f32 func_800F9828(s32, s32);
    extern void func_801D4C1C_ovl8(struct GObj *);
    extern void func_801D4778_ovl8(struct GObj *);
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
    extern void func_800B33F4(void);
    extern void func_800FBE1C(void);
    extern void func_800FA414(s32);
    extern void func_800BB468(s32, s32);
    extern void func_8016BC00_ovl3(void);
    extern void func_801A32EC(void *);
    extern void func_800B531C(struct GObj *);
    extern void play_sound(s32);
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
    extern void func_801A33B8(void *);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);

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
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800BB468(s32, s32);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800B33F4(void);
    extern f32 func_800F9828(s32, s32);
    extern void func_801D4C1C_ovl8(struct GObj *);
    extern void func_801D4778_ovl8(struct GObj *);
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

void func_801D5024_ovl8(void);

void func_801D4FE4_ovl8(void) {
    D_800EAA60[omCurrentObj->objId] = -1.0f;
    func_801D5024_ovl8();
}

#ifdef PORT
/* PORT: boss-grab ride coroutine, from asm/nonmatchings/ovl8/ovl8_4/
 * func_801D5024_ovl8.s. Entered via the two D_800EAA60 side-selecting
 * shims above. Installs func_801D560C_ovl8 as the hit handler, tracks a
 * parent DObj node (index picked from D_801DB050_ovl8 = {0xB, 0x11} by
 * side, X offset from D_801DB058_ovl8 = {20, -20}) until the parent's
 * track position D_800EAC20 reaches 124, then latches onto the parent's
 * word-list node 11 (N64 word offset 0x2C), eases down onto it over 4
 * ticks, waits for the parent's phase D_800E9FE0 >= 2, copies the parent's
 * grandparent track state, gets tossed (vertVel 12, gravity -0.5), and
 * parks. The D_800DFBD0 word-lists are the native DObj** tables on PC. */
void func_801D5024_ovl8(void) {
    extern void func_800A9760(s32);
    extern void func_800B4924(struct GObj *);
    extern void func_800B4954(struct GObj *);
    extern void func_800B531C(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800B33F4(void);
    extern void func_800AECC0(f32);
    extern void func_800AED20(f32);
    extern void func_800B2340(Vector *, struct DObj *, u32);
    extern void func_800FBE1C(void);
    extern void func_800FA414(s32);
    extern void func_800BB468(s32, s32);
    extern void play_sound(s32);
    extern void func_801D560C_ovl8(struct GObj *);
    extern u32 D_801DB050_ovl8[];
    extern f32 D_801DB058_ovl8[];
    Vector sp70;
    s32 side;
    s32 parent;
    s32 i;
    f32 lift;
    f32 step;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D560C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    if (D_800EAA60[omCurrentObj->objId] == 1.0f) {
        side = 1;
    } else {
        side = 0;
    }
    while (D_800EAC20[D_800E0D50[omCurrentObj->objId]] < 124.0f) {
        parent = D_800E0D50[omCurrentObj->objId];
        func_800B2340(&sp70, D_800DFBD0[parent][D_801DB050_ovl8[side]], parent);
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_801DB058_ovl8[side] + sp70.x;
        ohSleep(1);
    }
    play_sound(0x1A3);
    func_800BB468(0, 0);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E5F90[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    D_800E6BD0[omCurrentObj->objId] =
        D_800E6BD0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    func_800FBE1C();
    func_800FA414(5);
    parent = D_800E0D50[omCurrentObj->objId];
    func_800B2340(&sp70, D_800DFBD0[parent][11], parent);
    lift = (gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f) - sp70.y;
    step = lift * 0.25f;
    for (i = 0; i != 4; i++) {
        parent = D_800E0D50[omCurrentObj->objId];
        func_800B2340(&sp70, D_800DFBD0[parent][11], parent);
        gEntitiesNextPosYArray[omCurrentObj->objId] = (sp70.y - 20.0f) + lift;
        ohSleep(1);
        lift -= step;
    }
    while (D_800E9FE0[D_800E0D50[omCurrentObj->objId]].as_s32 < 2) {
        parent = D_800E0D50[omCurrentObj->objId];
        func_800B2340(&sp70, D_800DFBD0[parent][11], parent);
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp70.y - 20.0f;
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800FA414(3);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] =
        D_800E6BD0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]];
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    ohSleep(0x14);
    D_800E98E0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    func_800B33F4();
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5024_ovl8.s")
#endif

void func_801D560C_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);

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

void func_801D57E0_ovl8();

void func_801D56E0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -14.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8();

void func_801D5720_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -12.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8();

void func_801D5760_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -16.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8();

void func_801D57A0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -10.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8(struct GObj *arg0) {
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_8016BC00_ovl3(void);
    extern void func_800B33F4(void);
    extern void func_800B531C(struct GObj *);
    void func_801D59F0_ovl8(struct GObj *);

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
    extern void func_801A33B8(void *);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);

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
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800B531C(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800B33F4(void);
    extern void func_800BB468(s32, s32);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    void func_801D5E90_ovl8(struct GObj *);

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
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);

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
    extern void func_800A9760(s32);
    extern void func_800B4924(struct GObj *);
    extern void func_800B4954(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_8016BC00_ovl3(void);
    extern void func_800FBE1C(void);
    extern void func_800FA414(s32);
    extern void func_800F98EC(s32, f32);
    extern void func_801A32EC(void *);
    extern s32 D_801CA980;
void func_801D6534_ovl8(struct GObj *);
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
    extern void func_801A33B8(void *);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    extern void func_800FB914(s32);
    extern void func_800BB468(s32, s32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);
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
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800B531C(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800BB468(s32, s32);
    extern void func_801A32EC(void *);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    void func_801D6B20_ovl8(struct GObj *);

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
    extern void func_801A33B8(void *);
    extern void play_sound(s32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);
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
    extern void func_800A9760(s32);
    extern void func_800A8100(s32, s32, s32, struct DObj *);
    extern void func_800B4954(struct GObj *);
    extern void func_800B531C(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800BB468(s32, s32);
    extern void func_801A32EC(void *);
    extern s32 change_kirby_hp(f32);
    extern void play_sound(s32);
    void func_801D6F1C_ovl8(struct GObj *);
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

#ifdef PORT
/* PORT: hit handler installed by func_801D6C8C above, from
 * asm/nonmatchings/ovl8/ovl8_4/func_801D6F1C_ovl8.s. While the parent runs
 * func-list 5 it just reports grounded/airborne to the ovl3 sequencer.
 * Otherwise, in state 0 (still riding) a dead Kirby freezes the entity on
 * its committed position; in state 1 (tossed) it runs the shared ovl7 probe
 * (func_801A33B8 + trigger scan func_801128A4), commits the resolved
 * position, folds vetoed-face class bits (7/0x38/0x1C0) back into the
 * D_8012BCA0 flags word with the ROM's halfword idiom (top-u16 on PC, see
 * ovl2_7.c), then on a ceiling-class contact (0xE00) bails out with a thud,
 * or on a wall contact (0x3F) bounces velocity. func_800F8728 is the
 * 3-arg (id, dx, dz) platform-delta reporter; func_8016BD24_ovl3 takes one
 * arg (m2c's extra args are register leftovers). */
struct PortColFlags8 {
    union {
        u32 w;
        struct {
            u16 hwpad_;
            u16 hw;
        };
    } flags;
};

void func_801D6F1C_ovl8(struct GObj *arg0) {
    extern f32 gKirbyHp;
    extern s32 D_801CA980;
    extern u8 D_8012BCA0[];
    extern struct Sub800E1B50_Unk84 D_801CE6D0_ovl7;
    extern void func_801A33B8(void *);
    extern s32 func_801128A4(void *);
    extern f32 func_800F8728(s32, f32, f32);
    extern void func_8016BD24_ovl3(s32);
    extern void func_801696F0_ovl3(struct GObj *);
    extern void play_sound(s32);
    struct PortColFlags8 *cb = (struct PortColFlags8 *) D_8012BCA0;
    u32 id = omCurrentObj->objId;
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;

    if (gEntityFuncListIDArray[D_800E0D50[id]] == 5) {
        if (D_800E8920[id] == 0) {
            func_8016BD24_ovl3(1);
        } else {
            func_8016BD24_ovl3(0);
        }
        return;
    }
    switch (D_800E98E0[id]) {
    case 0:
        if (gKirbyHp <= 0.0f) {
            gEntitiesNextPosYArray[id] = gEntitiesPosYArray[id];
            D_800E5F90[id] = D_800E6150[id];
            D_800E6BD0[id] = D_800E6D90[id];
            func_8016BD24_ovl3(0);
        }
        break;
    case 1:
        func_801A33B8(&D_801CA980);
        hits = func_801128A4(&D_801CE6D0_ovl7);
        dx = D_801CE6D0_ovl7.unk4 - gEntitiesNextPosXArray[id];
        dz = D_801CE6D0_ovl7.unkC - gEntitiesNextPosZArray[id];
        if (dx != 0.0f || dz != 0.0f) {
            func_800F8728(id, dx, dz);
            gEntitiesNextPosXArray[id] = D_801CE6D0_ovl7.unk4;
            gEntitiesNextPosZArray[id] = D_801CE6D0_ovl7.unkC;
        }
        gEntitiesNextPosYArray[id] = D_801CE6D0_ovl7.unk8;
        if (hits != 0) {
            if (hits & 1) {
                cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 7) * 8) | (cb->flags.hw & 7));
            }
            if (hits & 2) {
                cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x38) * 8) | (cb->flags.hw & 7));
            }
            if (hits & 4) {
                cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x1C0) * 8) | (cb->flags.hw & 7));
            }
        }
        f = cb->flags.w >> 0x13;
        if (f & 0xE00) {
            play_sound(0x110);
            func_8016BD24_ovl3(0);
        } else if (f & 0x3F) {
            D_800E64D0[id] *= -0.5f;
            D_800E3210[id] = 0.0f;
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
    extern void func_800A9760(s32);
    extern void func_800A8100(s32, s32, s32, struct DObj *);
    extern s32 func_800F9888(struct Ovl8TrackPosition *, f32);
    extern void func_800B4954(struct GObj *);
    extern void func_800B531C(struct GObj *);
    extern void func_8016BBD0_ovl3(void);
    extern void func_801A32EC(void *);
    extern void play_sound(s32);
    void func_801D75A8_ovl8(struct GObj *);
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D75A8_ovl8.s")
