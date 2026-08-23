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

extern u8 D_8012E7C5[];

void func_8011E438(void);
void func_801BE79C_ovl7(struct GObj *);
void func_801A0880_ovl7(void);
void func_801D4440_ovl8(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray[];

// ovl1 extern
s32 play_music(s32, s32);
void auSetBGMVolume(s32, u32);
struct Sub800E1B50_Unk34 *func_800A8100(s32, s32, s32, struct DObj *);
void func_800A9760(u32);
void func_800B33F4(void);
void func_800B3520(void);
void func_800B72AC(struct GObj *);
void func_800B7560(struct GObj *);
void func_800B7790(struct GObj *);
void func_800B8020(struct GObj *);
void func_800B8208(struct GObj *);

// ovl2 extern
f32 vec3_abs_angle_diff(Vector *, Vector *);
void func_800F6C40(s32, s32);

// ovl7 extern
void func_8019BB58_ovl7(void);

// within this file
void func_801D307C_ovl8(struct GObj *);
void func_801D34C0_ovl8(struct GObj *);
void func_801D3B14_ovl8(struct GObj *);
void func_801D3DB4_ovl8(struct GObj *);
void func_801D4038_ovl8(struct GObj *);
void func_801D43B8_ovl8(struct GObj *);
void func_801D447C_ovl8();

void func_801D2B90_ovl8(void) {
    extern s32 D_800D6B54;

    extern s32 D_800BE500;
    extern u8 D_800D6BC0[];
    extern s32 D_800EA520[];
    extern FUNCLIST D_801DB020_ovl8;
    extern s32 D_801C9F2C;
    extern s32 D_801CA100;
    struct EnemyRecord *sp1C;
    struct DObj *sp18;

    sp1C = D_800E1B50[omCurrentObj->objId];
    sp18 = D_800DFBD0[omCurrentObj->objId][1];
    if (gGameState == 0x21) {
        func_801D447C_ovl8();
    }
    if (D_800E7880[omCurrentObj->objId] < 6) {
        auSetBGMVolume(0, 0x7800);
        if (D_800D6B54 == 0) {
            play_music(0, 0x18);
        }
    } else {
        play_sound(0x226);
    }
    if (D_800D6BC0[D_800BE500] != 0) {
        if (D_800E7B20[0] == 6.0f) {
            D_800EA520[omCurrentObj->objId] = 1;
        } else {
            D_800EA520[omCurrentObj->objId] = 2;
        }
    } else {
        D_800EA520[omCurrentObj->objId] = 0;
    }
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        sp1C->unk34 = func_800A8100(0, 2, 0x33, sp18);
        break;
    case 1:
        func_800A9760(0x100D1);
        sp1C->unk8C = &D_801C9F2C;
        break;
    case 2:
        func_800A9760(0x100C5);
        sp1C->unk8C = &D_801CA100;
        break;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 9, D_801DB020_ovl8);
}

void func_801D2DE0_ovl8(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    s32 pad2;
    Vector sp38;
    Vector sp2C;
    f32 sp28;

    D_800DF150[omCurrentObj->objId] = func_801D307C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B8208;
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 160.0f;
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    sp38.y = 0.0f;
    sp38.x = 0.0f;
    sp38.z = 2.0f;
    lbvector_Rotate(&sp38, 2, gEntitiesAngleYArray[omCurrentObj->objId]);
    sp2C.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    sp2C.y = 0.0f;
    sp2C.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    sp28 = vec3_abs_angle_diff(&sp38, &sp2C);
    lbvector_Normalize(&sp38);
    lbvector_Rotate(&sp38, 2, sp28);
    D_800E3050[omCurrentObj->objId] = 5.599999905f * sp38.x;
    D_800E33D0[omCurrentObj->objId] = 5.599999905f * sp38.z;
    D_800E3210[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 14.0f;
    curObjSleepForever();
}

void func_801D307C_ovl8(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] <
            (gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 180.0f)) {
            D_800E3750[omCurrentObj->objId] = 0.5f;
        }
        if (gEntitiesNextPosYArray[omCurrentObj->objId] <
            (gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 120.0f)) {
            D_800E3910[omCurrentObj->objId] = 0.0f;
            D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] =
                D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] =
                D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] =
                D_800E3E50[omCurrentObj->objId];
        }
    }
    if (D_800EB320[omCurrentObj->objId] <= 0.0f) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
        }
    }
}

void func_801D329C_ovl8(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801D34C0_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B8020;
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[0];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[0];
    D_800EB320[omCurrentObj->objId] = 1.0f;
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.25f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (0.0f < D_800EB320[omCurrentObj->objId]) {
        ohSleep(1);
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.0125f;
    }
    D_800EB320[omCurrentObj->objId] = 0.0f;
    curObjSleepForever();
}

void func_801D34C0_ovl8(GObj *arg0) {
    extern s32 D_800D7098;

    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800D7098] + 180.0f)) {
            D_800E3750[omCurrentObj->objId] = 0.25f;
        }
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800D7098] + 120.0f)) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
    }
    if (D_800EB320[omCurrentObj->objId] <= 0.0f) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
        }
    }
}

void func_801D3644_ovl8(GObj *arg0) {
    extern s32 D_800E8AE0[];
    extern f32 D_800EA6E0[];
    extern f32 D_800D70D8[];
    extern s32 D_800EA520[];
    f32 sp34;
    f32 sp30;

    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800DF150[omCurrentObj->objId] = func_801D3B14_ovl8;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 1;
    D_800E8AE0[omCurrentObj->objId] |= 1;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    while (M_TAU <= D_800E17D0[omCurrentObj->objId]) {
        D_800E17D0[omCurrentObj->objId] -= M_TAU;
    }
    while (D_800E17D0[omCurrentObj->objId] < 0.0f) {
        D_800E17D0[omCurrentObj->objId] += M_TAU;
    }
    sp34 = D_800E17D0[omCurrentObj->objId] + (M_PIF / 2);
    sp30 = -320.0f / cosf(sp34);
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] + sinf(sp34) * sp30;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId] + cosf(sp34) * sp30;
    gEntitiesNextPosYArray[omCurrentObj->objId] -= 160.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] - (M_PIF / 2);
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    D_800E3210[omCurrentObj->objId] = 20.0f;
    while (gEntitiesNextPosYArray[omCurrentObj->objId] < D_800D70D8[0]) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = -1.0f;
    ohSleep(0x14);
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800E5F90[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId];
    D_800E6BD0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_800B33F4();
    curObjSleepForever();
}

void func_801D3B14_ovl8(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] == 0.0f) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
        }
    }
}

void func_801D3BA8_ovl8(GObj *arg0) {
    extern s32 D_800EC120[];

    D_800DF150[omCurrentObj->objId] = func_801D3DB4_ovl8;
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EC120[omCurrentObj->objId] = D_800EC120[D_800E0D50[omCurrentObj->objId]];
    D_800E3210[omCurrentObj->objId] = 13.5f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E64D0[omCurrentObj->objId] =
        (gEntitiesNextPosXArray[D_800EC120[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId]) / 40.0f;
    ohSleep(0x28);
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800B3520();
    curObjSleepForever();
}

void func_801D3DB4_ovl8(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
        }
    }
}

void func_801D3E3C_ovl8(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D4038_ovl8;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    D_800E3050[omCurrentObj->objId] = -10.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.2f;
    ohSleep(0x55);
    func_800B33F4();
    curObjSleepForever();
}

void func_801D4038_ovl8(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] == 0.0f) {
        if (D_800E3050[omCurrentObj->objId] == 0.0f) {
            func_801A0880_ovl7();
            if (D_800E83E0[omCurrentObj->objId] == 1) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
            }
        }
    }
}

void func_801D40E8_ovl8(GObj *arg0) {
    extern s32 D_800EA520[];
    f32 s;

    D_800DEF90[omCurrentObj->objId] = func_800B7560;
    *(s32 *) &D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D43B8_ovl8;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    D_800E17D0[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
    D_800E98E0[omCurrentObj->objId] = 0;
    switch (D_800EA520[omCurrentObj->objId]) {
    case 0:
        func_800AA018(0x105F9);
        func_800AA018(0x105FA);
        for (s = 0.5f; s < 1.5f; s += 0.05f) {
            gEntitiesScaleXArray[omCurrentObj->objId] = s;
            gEntitiesScaleYArray[omCurrentObj->objId] = s;
            gEntitiesScaleZArray[omCurrentObj->objId] = s;
            ohSleep(1);
        }
        gEntitiesScaleXArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleYArray[omCurrentObj->objId] = 1.5f;
        gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
        break;
    case 1:
        func_800AA018(0x10601);
        break;
    case 2:
        func_800AA018(0x105EF);
        break;
    }
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    ohSleep(0x28);
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800B33F4();
    curObjSleepForever();
}

void func_801D43B8_ovl8(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4440_ovl8);
        }
    }
}

void func_801D4440_ovl8(struct GObj *arg0) {
    func_8011E438();
    D_8012E7C5[0xF] = 1;
    func_801BE79C_ovl7(arg0);
    curObjSleepForever();
}

void func_801D447C_ovl8(arg0)
struct GObj *arg0;
{
    extern s32 D_800D6B54;
    extern s32 D_800BE4F8;
    extern s32 D_800BE508;
    extern struct GObjProcess *gEntityGObjProcessArray5[];

    func_8019BB58_ovl7();
    D_800DEDD0[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800DEF90[omCurrentObj->objId] = NULL;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    if (D_800D6B54 == 0) {
        play_music(0, 0x99999999);
        auSetBGMVolume(0, 0x7800);
    }
    switch (D_800E7880[omCurrentObj->objId]) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            ohSleep(0x5A);
            if (D_800BE4F8 == 1) {
                func_800F6C40(D_800BE508 + 1, 0);
            }
            break;
    }
    curObjSleepForever();
}

