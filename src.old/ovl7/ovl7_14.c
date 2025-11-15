#include <ultra64.h>
#include <macros.h>
#include "unk_structs/D_800E1B50.h"
#include "omCurrentObj.h"
#include "sounds.h"

extern f32 D_800E6A10[];
extern f32 gameTicksPerDraw;
extern s32 D_800E8920[];
extern void (*D_800DF150[])(s32);

extern f32 D_800EC660[];
extern f32 gEntitiesNextPosZArray[];
extern f32 gEntitiesNextPosXArray[];
extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);

extern f32 D_800EC820[];
extern f32 D_800E64D0[];
extern f32 D_800E6690[];
extern f32 D_800E6850[];
extern f32 D_800E3750[];
extern f32 D_800E3210[];
extern f32 D_800E3C90[];
extern f32 D_800E9020[];
extern void *(func_801AC840_ovl7)(void);
extern s32 *D_801CB4DC;
extern f32 D_801CE490;

extern s32 D_800E0D50[];
extern f32 D_801CE494;
extern void *D_801CB56C[];
extern void func_8010C274(void);
extern void func_800AECC0(f32, struct UnkStruct800E1B50 *);
extern void func_800AED20(f32);
void func_801BBE1C_ovl7(s32 arg0);

extern void *(D_801AC908_ovl7)(s32);

void func_801BB9D0(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp_v0;

    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        temp_v0 = func_801ACCA0_ovl7(2, 0, 0, 20.0f);
        if (temp_v0 != 0) {
            D_800EC660[temp_v0] = 0.0f;
            gEntitiesNextPosZArray[temp_v0] = 0.0f;
            gEntitiesNextPosXArray[temp_v0] = 0.0f;
        }
        play_sound(SOUND_ENESHOT2);
    }
}

void func_801BBA54_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801AC840_ovl7;
    sp1C->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x100A2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

void func_801BBBF4_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *temp_a1 = D_800E1B50[omCurrentObj->objId];
    struct SubSub800E1B50_Unk88_UnkC *temp_a2 = temp_a1->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp1C = temp_a2->unk4;

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801BBE1C_ovl7;
    temp_a1->unk48 = &func_8010C274;
    temp_a1->unk98 = &D_801CB56C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw, temp_a1);
    func_800AED20(gameTicksPerDraw);
    if (sp1C->unk4 != -1) {
        func_800AA018(sp1C->unk4);
    }
    if (sp1C->unk8 != -1) {
        func_800AA018(sp1C->unk8);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (ABSF(D_800E64D0[D_800E0D50[omCurrentObj->objId]]) + 14.0f);
    
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801AC364_ovl7(arg0);
}

void func_801BBE1C_ovl7(s32 arg0) {
    func_801AB008_ovl7();
    func_801AC908_ovl7(arg0);
}
