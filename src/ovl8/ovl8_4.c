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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D4778_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D4C1C_ovl8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5024_ovl8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5B20_ovl8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5F88_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6534_ovl8.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6C8C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6F1C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D7240_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D75A8_ovl8.s")
