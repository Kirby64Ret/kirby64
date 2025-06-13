#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"

#include "ovl1/ovl1_6.h"

extern const f32 D_801CE04C;
extern FUNCLIST D_801C29B0;

extern void func_800AECC0(f32);
extern void func_800AED20(f32);

void func_801A7000(struct GObj *arg0) {
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800AF408();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    utilFuncTableJump(D_800E8220[omCurrentObj->objId], 2, &D_801C29B0);
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A7104_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A7524_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A8BAC_ovl7.s")


#ifdef NON_MATCHING
void func_801A8FFC_ovl7(s32 arg0);
extern void func_800B4D70(void);
extern const f32 D_801CE08C;
extern s32 D_8012E86C;
void func_801A8CDC_ovl7(void *arg0) {
    f32 temp_f2, temp_f12, temp_f0, temp_f14;

    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];


    D_800DEF90[omCurrentObj->objId] = func_800B4D70;
    D_800DF150[omCurrentObj->objId] = func_801A8FFC_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    func_800AFBB4(0);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    if (tmp->unk34 != 0) {
        func_800A22D4(tmp->unk34);
    }
    func_800A2300(arg0);
    tmp->unk34 = 0;
    D_800E2090[omCurrentObj->objId] = 0.0f;
    D_800E2250[omCurrentObj->objId] = 0.0f;
    D_800E2410[omCurrentObj->objId] = 0.0f;
    D_800E4E10[omCurrentObj->objId] = 0.0f;
    D_800E4C50[omCurrentObj->objId] = D_800E4E10[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = tmp->unk88->unkC->unk0->unk10;
    temp_f2 = D_800EA6E0[omCurrentObj->objId];
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f2;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f2;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f2;
    D_800E5350[omCurrentObj->objId] = 1.0f;
    temp_f12 = D_800E5350[omCurrentObj->objId];
    D_800E5190[omCurrentObj->objId] = temp_f12;
    D_800E4FD0[omCurrentObj->objId] = temp_f12;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3910[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = temp_f0;
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3E50[omCurrentObj->objId] = D_801CE08C;
    temp_f14 = D_800E3E50[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp_f14;
    D_800E3AD0[omCurrentObj->objId] = temp_f14;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E8220[omCurrentObj->objId] = 0;
    D_8012E86C = 0;
    func_800AF408();
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A8CDC_ovl7.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A8FFC_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A9268_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A94D8_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A9610_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A9618_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A96C4_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A9930_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801A9FC4_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA190_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA1D4_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA33C_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA344_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA600_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA690_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA720_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA78C_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA850_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AA914_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AAAF8_ovl7.s")

extern const f32 D_801CE124;
extern const f32 D_801CE128;
void func_801AAE60_ovl7(void) {
    if ((D_800E8AE0[D_800E0D50[omCurrentObj->objId]] & 6) != 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 7.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_801CE124;
        ohSleep(0x78);
        return;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE128;
    ohSleep(0x3C);
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AB008_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AB174_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AB2F4_ovl7.s")

#ifdef NON_MATCHING
void func_801AB884_ovl7(s32 arg0);

extern s32 D_801CB4DC;

extern const f32 D_801CE150, D_801CE154, D_801CE158;

void func_801AB5A4_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *temp_a1 = D_800E1B50[omCurrentObj->objId];

    struct SubSub800E1B50_Unk88_UnkC *temp_a3 = temp_a1->unk88->unkC;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *temp_a2 = temp_a3->unk4;

    D_800EC660[omCurrentObj->objId] = 0.0f;
    D_800EC820[omCurrentObj->objId] = 25.0f;
    func_801ABBA0_ovl7(temp_a1, temp_a2, temp_a3);
    D_800DF150[omCurrentObj->objId] = func_801AB884_ovl7;
    temp_a1->unk48 = 0;
    temp_a1->unk98 = &D_801CB4DC;
    temp_a1->unk42 = 1;
    temp_a1->unk38 = -1;
    temp_a1->unk39 = -1;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = D_801CE150;
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    func_801AC6D0_ovl7(temp_a2, temp_a1);
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_a2->unk10;
    if ((D_800E8AE0[D_800E0D50[omCurrentObj->objId]] & 6) != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801CE154;
        D_800E3210[omCurrentObj->objId] = 7.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
        ohSleep(0x3C);
    } else {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801CE158;
        D_800E3210[omCurrentObj->objId] = 14.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
        ohSleep(0x1E);
    }
    func_801AC11C_ovl7(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AB5A4_ovl7.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AB884_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ABBA0_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC11C_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC1F4_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC2D8_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC33C_ovl7.s")

void func_801AC364_ovl7(s32 arg0) {
    s32 idx;

    func_801AC1F4_ovl7();
    idx = func_801693C4_ovl7(5);
    if (idx != -1) {
        gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_800EA6E0[idx] = D_800E17D0[omCurrentObj->objId];
        D_800EC2E0[idx].as_s32 = 0;
        D_800E0D50[idx] = -1;
    }
    play_sound(0xE);
    func_801AC2D8_ovl7(arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC448_ovl7.s")

void func_801AC4EC_ovl7(struct GObj *arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_80199568_ovl7();
    if (D_800E7730[omCurrentObj->objId] == 4) {
        if (D_800E77A0[omCurrentObj->objId] == 1) {
            func_800A9864(0x10087, 0x23, 0x10);
        }
        if (D_800E77A0[omCurrentObj->objId] == 0x13) {
            func_800A9864(0x10094, 0x23, 0x10);
        }
    }
    func_8019BB58_ovl7();
    switch (D_800E8220[omCurrentObj->objId]) {
        case 0: func_801A8CDC_ovl7(arg0); break;
        case 1: D_801A96C4_ovl7(arg0); break;
    }
    print_error_stub("JL_CatchOver: No CatchInfo Address ID:%x\n", D_800E8060[omCurrentObj->objId]);
    while (1);
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC6D0_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC840_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801AC908_ovl7.s")

extern const char D_801CE160[], D_801CE17C[];
s32 func_801AC9D0_ovl7(s32 arg0, s32 arg1) {
    s32 idx;
    f32 temp_f0;

    idx = request_track_general(0x1A, 0xE, 0x1E);
    if (idx == -1) {
        print_error_stub(&D_801CE160);
        return 0;
    }
    if (idx >= 0x1E) {
        print_error_stub(&D_801CE17C);
        func_800B1900((u16) idx);
        return 0;
    }
    gEntityFuncListIDArray[idx] = arg0;
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 4;
    D_800E77A0[idx] = arg0 & 0xFF;
    D_800E7880[idx] = arg1;
    D_800E78F0[idx] = D_800E78F0[omCurrentObj->objId];
    D_800E5F90[idx] =
    D_800E6150[idx] =
        D_800E5F90[omCurrentObj->objId];
    temp_f0 = D_800E6BD0[omCurrentObj->objId];
    D_800E6D90[idx] = temp_f0;
    D_800E6BD0[idx] = temp_f0;
    D_800E6A10[idx] = D_800E6A10[omCurrentObj->objId];
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[idx] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[idx] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[idx] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E8E60[idx] = 0;
    D_800E8AE0[idx] = D_800E8AE0[omCurrentObj->objId];
    return idx;
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACC34_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACCA0_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACD48_ovl7.s")

s32 func_801ACD90_ovl7(s32 arg0, s32 arg1, Vector *arg2) {
    s32 idx;

    idx = func_801ACC34_ovl7(arg0, arg1);
    if (idx == 0) {
        return 0;
    }
    D_800E8E60[idx] = 1;
    gEntitiesNextPosXArray[idx] += arg2->x;
    gEntitiesNextPosYArray[idx] += arg2->y;
    gEntitiesNextPosZArray[idx] += arg2->z;
    gEntitiesPosXArray[idx] = gEntitiesNextPosXArray[idx];
    gEntitiesPosYArray[idx] = gEntitiesNextPosYArray[idx];
    gEntitiesPosZArray[idx] = gEntitiesNextPosZArray[idx];
    return idx;
}

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACE60_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACF30_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACF5C_ovl7.s")

GLOBAL_ASM("asm/non_matchings/ovl7/ovl7_5/func_801ACF84_ovl7.s")
