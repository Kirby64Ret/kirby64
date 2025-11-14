// based on debug print, JL.cc?
// prefix: JL_
#include "common.h"
#include "buffers.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "enelib.h"

// ovl7_3
extern void func_801A3864_ovl7(GObj *);

// weird structs
extern void *D_801CB044_ovl7;
extern void *D_801CA738_ovl7;


// 168A20 - 168A30 is ovl7_5 .data
extern FUNCLIST D_801C29B0_ovl7;

// ovl1 bss
extern f32 D_800D6B10;

// ovl7_5.h
void func_801A7524_ovl7(GObj *);

void func_801A7000_ovl7(GObj *gobj) {
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800AF408();
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    utilFuncTableJump(D_800E8220[omCurrentObj->objId], 2, &D_801C29B0_ovl7);
}

#ifdef MIPS_TO_C

void func_801A7104_ovl7(s32 arg0) {
    s32 sp3C;
    struct SubSub800E1B50_Unk88_UnkC *sp34;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *sp30;
    f32 sp2C;
    s32 sp28;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    struct Sub800E1B50_Unk34 *temp_a1_2;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_a3;
    struct UnkStruct800E1B50 *ent;
    u32 temp_a1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;

    ent = D_800E1B50[omCurrentObj->objId];
    sp34 = ent->unk88->unkC;
    func_800B19F4(0x30, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = func_800B4EBC;
    D_800DF150[omCurrentObj->objId] = func_801A7524_ovl7;
    ent->unk48 = 0;
    ent->unk98 = &D_801CB590_ovl7;
    ent->unk42 = 1;
    ent->unk38 = -1;
    ent->unk39 = -1;
    D_800E8920[omCurrentObj->objId] = 0;
    temp_a3 = sp34->unk0;
    D_800E2090[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    temp_v0_2 = omCurrentObj->objId;
    temp_f14 = *gEntitiesNextPosYArray + 20.0f;
    D_800E2250[temp_v0_2] = gEntitiesNextPosYArray[temp_v0_2] - temp_f14;
    temp_v0_3 = omCurrentObj->objId;
    temp_f18 = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    D_800E2410[temp_v0_3] = gEntitiesNextPosZArray[temp_v0_3] - temp_f18;
    temp_v0_4 = omCurrentObj->objId;
    D_800E4C50[temp_v0_4] = gEntitiesAngleYArray[temp_v0_4];
    temp_v0_5 = omCurrentObj->objId;
    D_800E4E10[temp_v0_5] = gEntitiesAngleZArray[temp_v0_5];
    D_800E3050[omCurrentObj->objId] =
    D_800E3210[omCurrentObj->objId] =
    D_800E33D0[omCurrentObj->objId] = 0.0f;

    D_800EB6A0[omCurrentObj->objId] = 0x2D;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = temp_a3->unk10;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    temp_f2 = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    sp20 = gEntitiesNextPosZArray[omCurrentObj->objId] - temp_f18;
    temp_f16 = gEntitiesNextPosYArray[omCurrentObj->objId] - temp_f14;
    sp28 = sp3C * 4;
    sp30 = temp_a3;
    D_800EAA60[omCurrentObj->objId] = sqrtf((sp20 * sp20) + ((temp_f2 * temp_f2) + (temp_f16 * temp_f16)));
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800EB4E0[omCurrentObj->objId] = func_801AC6D0_ovl7(sp30);
    D_800DF310[omCurrentObj->objId] = NULL;
    if (ent->unk34 != NULL) {
        func_800A22D4(ent->unk34, ent->unk34);
    }
    func_800A2300(arg0);
    ent->unk34 = NULL;
    D_800E7B20[omCurrentObj->objId] = 0.0f;
    func_8019B7D8_ovl7(arg0);
    D_800E83E0[omCurrentObj->objId] = 0;
loop_3:
    if (func_801A8BAC_ovl7() == 0) {
        ohSleep(1);
        goto loop_3;
    }
    if (D_800E8060[D_800E0D50[omCurrentObj->objId]] == -1) {
        ohSleep(1);
    }
    func_801A9268_ovl7();
    *(&D_8012E860 + 0x1A) = 0;
    func_801A8CDC_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A7104_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A7524_ovl7(s32 arg0) {
    s32 spB4;
    s32 spB0;
    f32 spA8;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    struct UnkStruct800E1B50 *sp88;
    struct Sub800E1B50_Unk84 *sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s32 sp3C;
    GObj *temp_a2;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_4;
    f32 *temp_v1_4;
    f32 *temp_v1_5;
    f32 *temp_v1_6;
    f32 *var_a0;
    f32 *var_a1;
    f32 *var_at;
    f32 *var_v1;
    f32 *var_v1_2;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_11;
    f32 temp_f0_12;
    f32 temp_f0_13;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f12_8;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f2_9;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f4_3;
    f32 temp_f6;
    f32 temp_f6_2;
    f32 temp_f8;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f14;
    f32 var_f14_2;
    f32 var_f14_3;
    f32 var_f14_4;
    f32 var_f16;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f2_5;
    f32 var_f2_6;
    f32 var_f2_7;
    f32 var_f2_8;
    s32 *temp_v1_2;
    s32 *temp_v1_8;
    s32 *temp_v1_9;
    s32 *var_v1_3;
    s32 *var_v1_4;
    s32 temp_a3;
    s32 temp_v0_18;
    s32 temp_v1_7;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    struct UnkStruct800E1B50 *temp_t8;
    u16 temp_v0;
    u32 temp_a0_3;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_13;
    u32 temp_v0_14;
    u32 temp_v0_15;
    u32 temp_v0_16;
    u32 temp_v0_17;
    u32 temp_v0_19;
    u32 temp_v0_20;
    u32 temp_v0_21;
    u32 temp_v0_22;
    u32 temp_v0_23;
    u32 temp_v0_24;
    u32 temp_v0_25;
    u32 temp_v0_26;
    u32 temp_v0_27;
    u32 temp_v0_28;
    u32 temp_v0_29;
    u32 temp_v0_2;
    u32 temp_v0_30;
    u32 temp_v0_31;
    u32 temp_v0_32;
    u32 temp_v0_33;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;
    u32 temp_v1;
    u32 temp_v1_3;
    u32 var_a3;

    temp_v1 = omCurrentObj->objId;
    temp_t8 = D_800E1B50[temp_v1];
    temp_a3 = D_800E0D50[temp_v1];
    spB0 = 0;
    sp88 = temp_t8;
    sp84 = temp_t8->unk84;
    if (D_800E7730[temp_v1] == 6) {
        temp_v0 = D_800E77A0[temp_v1];
        if ((temp_v0 > 0) && (temp_v0 < 0x2C)) {
            spB4 = temp_a3;
            if (func_801C05E0_ovl7(D_800E0D50, temp_a3) != 0) {
                spB0 = 1;
                gKirbyState.numberInhaling -= 1;
            }
        }
    }
    temp_v1_2 = &D_800EB6A0[omCurrentObj->objId];
    *temp_v1_2 -= 1;
    temp_v0_2 = omCurrentObj->objId;
    var_v0 = temp_v0_2 * 4;
    if (D_800EB6A0[temp_v0_2] < 0) {
        spB0 = 1;
        gKirbyState.numberInhaling -= 1;
        var_v0 = omCurrentObj->objId * 4;
    }
    if (D_800E8060[temp_a3] == -1) {
        spB0 = 1;
    }
    *(D_800E6A10 + var_v0) = D_800E6A10[*(D_800E0D50 + var_v0)];
    temp_v0_3 = omCurrentObj->objId;
    if (D_800E6A10[temp_v0_3] == 1.0f) {
        D_800E17D0[temp_v0_3] = D_800E17D0[D_800E0D50[temp_v0_3]];
    } else {
        D_800E17D0[temp_v0_3] = D_800E17D0[D_800E0D50[temp_v0_3]] + 3.1415927f;
    }
    sp3C = temp_a3 * 4;
    if ((sinf(D_800E17D0[omCurrentObj->objId]) * 4.0f) < 0.0f) {
        spA8 = -(sinf(D_800E17D0[omCurrentObj->objId]) * 4.0f);
    } else {
        spA8 = sinf(D_800E17D0[omCurrentObj->objId]) * 4.0f;
    }
    if ((cosf(D_800E17D0[omCurrentObj->objId]) * 4.0f) < 0.0f) {
        var_f16 = -(cosf(D_800E17D0[omCurrentObj->objId]) * 4.0f);
    } else {
        var_f16 = cosf(D_800E17D0[omCurrentObj->objId]) * 4.0f;
    }
    temp_v1_3 = omCurrentObj->objId;
    temp_a0 = &D_800E4FD0[temp_v1_3];
    temp_f12 = D_800EA6E0[temp_v1_3];
    if (temp_f12 < *temp_a0) {
        temp_f0 = (*(&D_800E6F50->originOffset + (temp_v1_3 * 0x10)) - 26.0f) / (D_800EAA60[temp_v1_3] - 26.0f);
        if (temp_f0 < 0.0f) {
            var_f2 = -temp_f0;
        } else {
            var_f2 = temp_f0;
        }
        *temp_a0 = temp_f12 + (var_f2 * (sp88->unk18 - temp_f12));
    } else {
        *temp_a0 = temp_f12;
    }
    temp_v0_4 = omCurrentObj->objId;
    var_v0_2 = temp_v0_4 * 4;
    temp_a0_2 = &D_800E4FD0[temp_v0_4];
    var_f2_2 = *temp_a0_2;
    if (var_f2_2 > 1.0f) {
        *temp_a0_2 = 1.0f;
        temp_v0_5 = omCurrentObj->objId;
        var_v0_2 = temp_v0_5 * 4;
        var_f2_2 = D_800E4FD0[temp_v0_5];
    }
    *(D_800E5350 + var_v0_2) = var_f2_2;
    D_800E5190[omCurrentObj->objId] = var_f2_2;
    gEntitiesScaleZArray[omCurrentObj->objId] = var_f2_2;
    gEntitiesScaleYArray[omCurrentObj->objId] = var_f2_2;
    gEntitiesScaleXArray[omCurrentObj->objId] = var_f2_2;
    temp_v0_6 = omCurrentObj->objId;
    temp_f12_2 = D_800E2250[temp_v0_6];
    if ((temp_f12_2 > 6.0f) || (temp_f12_2 < 10.0f)) {
        var_v1 = &D_800D71E8 + 0x50;
        var_a0 = &D_800D71E8 + 0x54;
        *var_v1 = ((*gEntitiesNextPosYArray + 20.0f + 8.0f) - gEntitiesNextPosYArray[temp_v0_6]) * 0.4f;
        var_f2_3 = *var_v1;
        if (var_f2_3 > 12.0f) {
            *var_v1 = 12.0f;
            goto block_32;
        }
        if (var_f2_3 < -12.0f) {
            *var_v1 = -12.0f;
block_32:
            var_f2_3 = *var_v1;
        }
        if (var_f2_3 < 0.0f) {
            var_a0 = &D_800D71E8 + 0x54;
            *var_a0 = -var_f2_3;
        } else {
            *var_a0 = var_f2_3;
        }
        var_f0 = *var_a0;
    } else {
        var_a0 = &D_800D71E8 + 0x54;
        *var_a0 = 0.0f;
        var_f0 = *var_a0;
        var_v1 = &D_800D71E8 + 0x50;
        *var_v1 = var_f0;
        var_f2_3 = *var_v1;
    }
    D_800E3750[omCurrentObj->objId] = var_f2_3 * 0.3f;
    if (var_f0 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -var_f0;
    } else {
        D_800E3C90[omCurrentObj->objId] = var_f0;
    }
    temp_v0_7 = omCurrentObj->objId;
    temp_f0_2 = D_800E2090[temp_v0_7];
    if (temp_f0_2 < 0.0f) {
        var_f2_4 = -temp_f0_2;
    } else {
        var_f2_4 = temp_f0_2;
    }
    if (spA8 < var_f2_4) {
        *var_v1 = (*(sp3C + gEntitiesNextPosXArray) - gEntitiesNextPosXArray[temp_v0_7]) * 0.4f;
        temp_f2 = *var_v1;
        if (temp_f2 > 10.0f) {
            *var_v1 = 10.0f;
        } else if (temp_f2 < -10.0f) {
            *var_v1 = -10.0f;
        }
        if (*var_v1 < 0.0f) {
            *var_a0 = -*var_v1;
        } else {
            *var_a0 = *var_v1;
        }
    } else {
        *var_a0 = 0.0f;
        *var_v1 = *var_a0;
    }
    D_800E3590[omCurrentObj->objId] = *var_v1 * 0.25f;
    if (*var_a0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -*var_a0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = *var_a0;
    }
    temp_v0_8 = omCurrentObj->objId;
    temp_f0_3 = D_800E2410[temp_v0_8];
    if (temp_f0_3 < 0.0f) {
        var_f2_5 = -temp_f0_3;
    } else {
        var_f2_5 = temp_f0_3;
    }
    if (var_f16 < var_f2_5) {
        *var_v1 = (*(gEntitiesNextPosZArray + sp3C) - gEntitiesNextPosZArray[temp_v0_8]) * 0.4f;
        temp_f2_2 = *var_v1;
        if (temp_f2_2 > 10.0f) {
            *var_v1 = 10.0f;
        } else if (temp_f2_2 < -10.0f) {
            *var_v1 = -10.0f;
        }
        if (*var_v1 < 0.0f) {
            *var_a0 = -*var_v1;
        } else {
            *var_a0 = *var_v1;
        }
        var_f0_2 = *(&D_800D71E8 + 0x54);
    } else {
        *var_a0 = 0.0f;
        var_f0_2 = *var_a0;
        *var_v1 = var_f0_2;
    }
    D_800E3910[omCurrentObj->objId] = *var_v1 * 0.25f;
    if (var_f0_2 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -var_f0_2;
    } else {
        D_800E3E50[omCurrentObj->objId] = var_f0_2;
    }
    temp_v1_4 = &D_800E4C50[omCurrentObj->objId];
    *temp_v1_4 -= 0.34906587f;
    temp_v0_9 = omCurrentObj->objId;
    var_v0_3 = temp_v0_9 * 4;
    temp_v1_5 = &D_800E4C50[temp_v0_9];
    temp_f0_4 = *temp_v1_5;
    if (temp_f0_4 < 0.0f) {
        *temp_v1_5 = temp_f0_4 + 6.2831855f;
        var_v0_3 = omCurrentObj->objId * 4;
    }
    var_v1_2 = D_800E4E10 + var_v0_3;
    var_f0_3 = *var_v1_2;
    if ((var_f0_3 > 0.69813174f) && (var_f0_3 < 1.5707964f)) {
        *(D_800EA8A0 + var_v0_3) = -0.06981317f;
        temp_v0_10 = omCurrentObj->objId;
        var_v0_3 = temp_v0_10 * 4;
        var_v1_2 = &D_800E4E10[temp_v0_10];
        goto block_83;
    }
    if ((var_f0_3 < 5.585054f) && (var_f0_3 > 1.5707964f)) {
        *(D_800EA8A0 + var_v0_3) = 0.06981317f;
        temp_v0_11 = omCurrentObj->objId;
        var_v0_3 = temp_v0_11 * 4;
        var_v1_2 = &D_800E4E10[temp_v0_11];
block_83:
        var_f0_3 = *var_v1_2;
    }
    *var_v1_2 = var_f0_3 + *(D_800EA8A0 + var_v0_3);
    temp_v0_12 = omCurrentObj->objId;
    gEntitiesAngleYArray[temp_v0_12] = D_800E4C50[temp_v0_12];
    temp_v0_13 = omCurrentObj->objId;
    gEntitiesAngleZArray[temp_v0_13] = D_800E4E10[temp_v0_13];
    temp_a0_3 = sp88->unk88->unk10;
    if ((temp_a0_3 != 0) && (sp84 != NULL)) {
        sp84->unk14 = (bitwise u32) (D_800E4FD0[omCurrentObj->objId] * 0.9f * temp_a0_3->unk4);
        sp84->unk18 = (bitwise u32) (D_800E4FD0[omCurrentObj->objId] * 0.9f * sp88->unk88->unk10->unk8);
        sp84->unk1C = D_800E4FD0[omCurrentObj->objId] * 0.8f * sp88->unk88->unk10->unkC;
        sp84->unk20 = D_800E4FD0[omCurrentObj->objId] * 0.8f * sp88->unk88->unk10->unk10;
    }
    temp_v0_14 = omCurrentObj->objId;
    temp_f0_5 = gEntitiesNextPosXArray[temp_v0_14];
    temp_f2_3 = gEntitiesNextPosYArray[temp_v0_14];
    temp_f12_3 = gEntitiesNextPosZArray[temp_v0_14];
    if (sp84 != NULL) {
        sp8C = temp_f0_5;
        sp90 = temp_f2_3;
        sp94 = temp_f12_3;
        func_801A0D74_ovl7(temp_f12_3, 0.0f, arg0, D_800E4C50, omCurrentObj, D_800E4E10);
    }
    var_a3 = D_8012BCA0 >> 0x13;
    if (((var_a3 & 7) && (var_a3 & 0x38)) || ((var_a3 & 0x1C0) && (var_a3 & 0xE00))) {
        spB0 = 1;
        gKirbyState.numberInhaling -= 1;
    }
    var_a1 = NULL;
    if (spB0 == 1) {
        D_80198820_ovl3 = 0.0f;
        func_800FD570(temp_f12_3, 0.0f, 0, 0, 0.0f, 0.0f, 0.0f);
        play_sound(0x158);
        func_8019D958_ovl7(omCurrentObj->unk2);
        return;
    }
    temp_a2 = omCurrentObj;
    temp_v0_15 = temp_a2->objId;
    var_v0_4 = temp_v0_15 * 4;
    if (var_a3 & 0xFFF) {
        temp_a0_4 = &D_800E2090[temp_v0_15];
        *temp_a0_4 -= temp_f0_5 - gEntitiesNextPosXArray[temp_v0_15];
        temp_v0_16 = temp_a2->objId;
        temp_v1_6 = &D_800E2250[temp_v0_16];
        *temp_v1_6 -= temp_f2_3 - gEntitiesNextPosYArray[temp_v0_16];
        temp_v0_17 = temp_a2->objId;
        var_a1 = &D_800E2410[temp_v0_17];
        *var_a1 -= temp_f12_3 - gEntitiesNextPosZArray[temp_v0_17];
        var_v0_4 = temp_a2->objId * 4;
    }
    var_v1_3 = D_800E9C60 + var_v0_4;
    if (*(D_800EB6A0 + var_v0_4) < 0x2A) {
        var_a0_2 = *var_v1_3;
        if (var_a0_2 == 0) {
            temp_f0_6 = *(gEntitiesPosXArray + var_v0_4);
            temp_f12_4 = *(gEntitiesNextPosXArray + var_v0_4);
            if (temp_f12_4 < temp_f0_6) {
                var_f2_6 = -(temp_f12_4 - temp_f0_6);
            } else {
                var_f2_6 = temp_f12_4 - temp_f0_6;
            }
            if (var_f2_6 < 0.5f) {
                temp_f0_7 = *(gEntitiesNextPosYArray + var_v0_4);
                temp_f2_4 = (var_v0_4 + 0x800E0000)->unk2CD0;
                if (temp_f0_7 < temp_f2_4) {
                    var_f14 = -(temp_f0_7 - temp_f2_4);
                } else {
                    var_f14 = temp_f0_7 - temp_f2_4;
                }
                if (var_f14 < 0.5f) {
                    temp_f0_8 = *(gEntitiesNextPosZArray + var_v0_4);
                    temp_f2_5 = (var_v0_4 + 0x800E0000)->unk2E90;
                    if (temp_f0_8 < temp_f2_5) {
                        var_f14_2 = -(temp_f0_8 - temp_f2_5);
                    } else {
                        var_f14_2 = temp_f0_8 - temp_f2_5;
                    }
                    if ((var_f14_2 < 0.5f) && (var_a3 & 0x3F)) {
                        sp78 = temp_f12_4;
                        temp_f8 = gEntitiesNextPosYArray[temp_a2->objId];
                        sp7C = temp_f8;
                        temp_f4 = gEntitiesNextPosZArray[temp_a2->objId];
                        sp80 = temp_f4;
                        temp_f12_5 = gEntitiesNextPosXArray[temp_a2->objId];
                        temp_f4_2 = ((*(gEntitiesNextPosXArray + sp3C) - temp_f12_5) * 0.5f) + temp_f12_5;
                        sp6C = temp_f4_2;
                        sp70 = gEntitiesNextPosYArray[temp_a2->objId];
                        temp_f0_9 = gEntitiesNextPosZArray[temp_a2->objId];
                        temp_f6 = ((*(gEntitiesNextPosZArray + sp3C) - temp_f0_9) * 0.5f) + temp_f0_9;
                        sp74 = temp_f6;
                        sp60 = temp_f4_2 - sp78;
                        sp64 = sp70 - temp_f8;
                        sp68 = temp_f6 - temp_f4;
                        lbvector_Normalize(temp_f12_5, var_f14_2, &sp60, var_a1, temp_a2, var_a3);
                        temp_f4_3 = gEntitiesNextPosYArray[omCurrentObj->objId] + (bitwise f32) sp84->unk14;
                        sp70 = temp_f4_3;
                        sp7C = temp_f4_3;
                        if (func_8010423C(&sp78, &sp6C, &sp60, 0, 0, 0, 0, 0) != 0) {
                            D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x12) * 8) | (D_8012BCA0 & 7);
                        }
                        temp_f6_2 = gEntitiesNextPosYArray[omCurrentObj->objId] + (bitwise f32) sp84->unk18;
                        sp70 = temp_f6_2;
                        sp7C = temp_f6_2;
                        if (func_8010423C(&sp78, &sp6C, &sp60, 0, 0, 0, 0, 0) != 0) {
                            D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x24) * 8) | (D_8012BCA0 & 7);
                        }
                        var_a3 = D_8012BCA0 >> 0x13;
                        temp_v0_18 = var_a3 & 2;
                        if (((temp_v0_18 != 0) && !(var_a3 & 4)) || ((temp_v1_7 = var_a3 & 0x10, (temp_v1_7 != 0)) && !(var_a3 & 0x20))) {
                            D_800E9C60[omCurrentObj->objId] = 0xE;
                            D_800EAC20[omCurrentObj->objId] = -1.0f;
                            temp_v0_19 = omCurrentObj->objId;
                            var_v0_4 = temp_v0_19 * 4;
                            var_v1_3 = &D_800E9C60[temp_v0_19];
                        } else if (((temp_v0_18 == 0) && (var_a3 & 4)) || ((temp_v1_7 == 0) && (var_a3 & 0x20))) {
                            D_800E9C60[omCurrentObj->objId] = 0xE;
                            D_800EAC20[omCurrentObj->objId] = 1.0f;
                            temp_v0_20 = omCurrentObj->objId;
                            var_v0_4 = temp_v0_20 * 4;
                            var_v1_3 = &D_800E9C60[temp_v0_20];
                        } else {
                            temp_v0_21 = omCurrentObj->objId;
                            if (gEntitiesNextPosYArray[temp_v0_21] < (*gEntitiesNextPosYArray + 20.0f + 8.0f)) {
                                D_800E9C60[temp_v0_21] = 0xE;
                                D_800EAC20[omCurrentObj->objId] = 1.0f;
                                temp_v0_22 = omCurrentObj->objId;
                                var_v0_4 = temp_v0_22 * 4;
                                var_v1_3 = &D_800E9C60[temp_v0_22];
                            } else {
                                D_800E9C60[temp_v0_21] = 0xE;
                                D_800EAC20[omCurrentObj->objId] = -1.0f;
                                temp_v0_23 = omCurrentObj->objId;
                                var_v0_4 = temp_v0_23 * 4;
                                var_v1_3 = &D_800E9C60[temp_v0_23];
                            }
                        }
                        var_a0_2 = *var_v1_3;
                    }
                }
            }
        }
        if (var_a0_2 > 0) {
            if (var_a3 & 0x3F) {
                if (var_a0_2 > 7.0f) {
                    *(D_800E3210 + var_v0_4) = *(D_800EAC20 + var_v0_4) * (0x10 - var_a0_2);
                    temp_v0_24 = temp_a2->objId;
                    D_800E3C90[temp_v0_24] = 0x10 - D_800E9C60[temp_v0_24];
                } else {
                    *(D_800E3210 + var_v0_4) = *(D_800EAC20 + var_v0_4) * (var_a0_2 + 2);
                    temp_v0_25 = temp_a2->objId;
                    D_800E3C90[temp_v0_25] = D_800E9C60[temp_v0_25] + 2;
                }
                temp_v1_8 = &D_800E9C60[temp_a2->objId];
                *temp_v1_8 -= 1;
            } else {
                *var_v1_3 = 0;
            }
            var_v0_4 = temp_a2->objId * 4;
        }
        var_v1_4 = var_v0_4 + D_800E9E20;
        var_a0_3 = *var_v1_4;
        if (var_a0_3 == 0) {
            temp_f12_6 = *(gEntitiesNextPosXArray + var_v0_4);
            temp_f0_10 = *(gEntitiesPosXArray + var_v0_4);
            temp_f14 = temp_f12_6 - temp_f0_10;
            if (temp_f12_6 < temp_f0_10) {
                var_f2_7 = -temp_f14;
            } else {
                var_f2_7 = temp_f14;
            }
            if (var_f2_7 < 0.5f) {
                temp_f0_11 = *(gEntitiesNextPosYArray + var_v0_4);
                temp_f2_6 = *(gEntitiesPosYArray + var_v0_4);
                temp_f12_7 = temp_f0_11 - temp_f2_6;
                if (temp_f0_11 < temp_f2_6) {
                    var_f14_3 = -temp_f12_7;
                } else {
                    var_f14_3 = temp_f12_7;
                }
                if (var_f14_3 < 0.5f) {
                    temp_f0_12 = *(gEntitiesNextPosZArray + var_v0_4);
                    temp_f2_7 = *(gEntitiesPosZArray + var_v0_4);
                    temp_f12_8 = temp_f0_12 - temp_f2_7;
                    if (temp_f0_12 < temp_f2_7) {
                        var_f14_4 = -temp_f12_8;
                    } else {
                        var_f14_4 = temp_f12_8;
                    }
                    if ((var_f14_4 < 0.5f) && (var_a3 & 0xFC0)) {
                        *var_v1_4 = 4;
                        temp_v0_26 = temp_a2->objId;
                        var_v0_4 = temp_v0_26 * 4;
                        var_v1_4 = &D_800E9E20[temp_v0_26];
                        var_a0_3 = *var_v1_4;
                    }
                }
            }
        }
        if (var_a0_3 > 0) {
            if (var_a3 & 0xFC0) {
                temp_f0_13 = var_a0_3;
                if (temp_f0_13 > 2.0f) {
                    sp5C = -*(D_800E6A10 + var_v0_4) * (2.0f * (5 - var_a0_3));
                    D_800E3050[omCurrentObj->objId] = sinf(*(D_800E17D0 + var_v0_4)) * sp5C;
                    temp_v0_27 = omCurrentObj->objId;
                    temp_f2_8 = D_800E3050[temp_v0_27];
                    if (temp_f2_8 < 0.0f) {
                        D_800E3AD0[temp_v0_27] = -temp_f2_8;
                    } else {
                        D_800E3AD0[temp_v0_27] = temp_f2_8;
                    }
                    D_800E33D0[omCurrentObj->objId] = cosf(D_800E17D0[omCurrentObj->objId]) * sp5C;
                    temp_v0_28 = omCurrentObj->objId;
                    var_f2_8 = D_800E33D0[temp_v0_28];
                    var_at = &D_800E3E50[temp_v0_28];
                    if (var_f2_8 < 0.0f) {
                        D_800E3E50[temp_v0_28] = -var_f2_8;
                    } else {
                        goto block_168;
                    }
                } else {
                    sp5C = *(D_800E6A10 + var_v0_4) * (2.0f * temp_f0_13);
                    D_800E3050[omCurrentObj->objId] = sinf(*(D_800E17D0 + var_v0_4)) * sp5C;
                    temp_v0_29 = omCurrentObj->objId;
                    temp_f2_9 = D_800E3050[temp_v0_29];
                    if (temp_f2_9 < 0.0f) {
                        D_800E3AD0[temp_v0_29] = -temp_f2_9;
                    } else {
                        D_800E3AD0[temp_v0_29] = temp_f2_9;
                    }
                    D_800E33D0[omCurrentObj->objId] = cosf(D_800E17D0[omCurrentObj->objId]) * sp5C;
                    temp_v0_30 = omCurrentObj->objId;
                    var_f2_8 = D_800E33D0[temp_v0_30];
                    var_at = &D_800E3E50[temp_v0_30];
                    if (var_f2_8 < 0.0f) {
                        D_800E3E50[temp_v0_30] = -var_f2_8;
                    } else {
block_168:
                        *var_at = var_f2_8;
                    }
                }
                temp_v1_9 = &D_800E9E20[omCurrentObj->objId];
                *temp_v1_9 -= 1;
                temp_v0_31 = omCurrentObj->objId;
                if (D_800E9E20[temp_v0_31] == 0) {
                    gEntitiesPosXArray[temp_v0_31] = gEntitiesNextPosXArray[temp_v0_31];
                    temp_v0_32 = omCurrentObj->objId;
                    gEntitiesPosYArray[temp_v0_32] = gEntitiesNextPosYArray[temp_v0_32];
                    temp_v0_33 = omCurrentObj->objId;
                    gEntitiesPosZArray[temp_v0_33] = gEntitiesNextPosZArray[temp_v0_33];
                }
            } else {
                *var_v1_4 = 0;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A7524_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801A8BAC_ovl7(void) {
    s32 sp1C;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f2;
    s32 temp_a0;
    s32 var_v0;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_f2 = *(&D_800E6F50->originOffset + (temp_v0 * 0x10));
    temp_a0 = D_800E0D50[temp_v0];
    if (var_f2 < 50.0f) {
        temp_f0 = gEntitiesNextPosZArray[temp_v0] - gEntitiesNextPosZArray[temp_a0];
        sp1C = temp_a0 * 4;
        temp_f2 = gEntitiesNextPosXArray[temp_v0] - gEntitiesNextPosXArray[temp_a0];
        D_80198820_ovl3 = -func_800A52F0(gEntitiesNextPosYArray[omCurrentObj->objId] - (gEntitiesNextPosYArray[temp_a0] + 28.0f), sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2)));
        var_f2 = *(&D_800E6F50->originOffset + (omCurrentObj->objId * 0x10));
    }
    var_v0 = 0;
    if (var_f2 < 26.0f) {
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A8BAC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A8CDC_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp2C;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *sp24;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    struct Sub800E1B50_Unk34 *temp_v0_2;
    struct UnkStruct800E1B50 *temp_a2;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0];
    D_800DEF90[temp_v0] = func_800B4D70;
    sp24 = temp_a2->unk88->unkC->unk0;
    D_800DF150[omCurrentObj->objId] = func_801A8FFC_ovl7;
    sp2C = temp_a2;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    temp_v0_2 = sp2C->unk34;
    if (temp_v0_2 != NULL) {
        func_800A22D4(temp_v0_2);
    }
    func_800A2300(arg0);
    sp2C->unk34 = NULL;
    D_800E2090[omCurrentObj->objId] = 0.0f;
    D_800E2250[omCurrentObj->objId] = 0.0f;
    D_800E2410[omCurrentObj->objId] = 0.0f;
    D_800E4E10[omCurrentObj->objId] = 0.0f;
    temp_v0_3 = omCurrentObj->objId;
    D_800E4C50[temp_v0_3] = D_800E4E10[temp_v0_3];
    D_800EA6E0[omCurrentObj->objId] = sp24->unk10;
    temp_v0_4 = omCurrentObj->objId;
    temp_f2 = D_800EA6E0[temp_v0_4];
    gEntitiesScaleZArray[temp_v0_4] = temp_f2;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f2;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f2;
    D_800E5350[omCurrentObj->objId] = 1.0f;
    temp_v0_5 = omCurrentObj->objId;
    temp_f12 = D_800E5350[temp_v0_5];
    D_800E5190[temp_v0_5] = temp_f12;
    D_800E4FD0[omCurrentObj->objId] = temp_f12;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp_v0_6 = omCurrentObj->objId;
    temp_f0 = D_800E3910[temp_v0_6];
    D_800E3750[temp_v0_6] = temp_f0;
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3210[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    temp_v0_7 = omCurrentObj->objId;
    temp_f14 = D_800E3E50[temp_v0_7];
    D_800E3C90[temp_v0_7] = temp_f14;
    D_800E3AD0[omCurrentObj->objId] = temp_f14;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E8220[omCurrentObj->objId] = 0;
    *(&D_8012E860 + 0xC) = 0;
    func_800AF408(temp_f12, temp_f14, D_800EA6E0, omCurrentObj, D_800E5350, D_800E3910);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A8CDC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A8FFC_ovl7(s32 arg0) {
    f32 temp_f0;
    s32 temp_a3_2;
    s32 var_a0;
    struct SubSub800E1B50_Unk88_UnkC *temp_v0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_a1;
    u16 temp_v0_2;
    u16 temp_v0_3;
    u32 temp_a3;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_a3 = omCurrentObj->objId;
    temp_a3_2 = temp_a3 * 4;
    temp_v0 = D_800E1B50[temp_a3]->unk88->unkC;
    temp_a1 = temp_v0->unk0;
    switch (gKirbyState.unkD) {
        case 6:
            var_a0 = 1;
            break;
        case 7:
            var_a0 = 2;
            break;
        case 1:
        case 2:
            D_800EA6E0[temp_a3] = temp_v0->unk4->unk10;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801A96C4_ovl7, omCurrentObj, temp_a3_2);
            return;
        case -3:
            var_a0 = 3;
            break;
        default:
            temp_f0 = temp_a1->unk10;
            D_800EA6E0[temp_a3] = temp_f0;
            var_a0 = 0;
            gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
            gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
            gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
            break;
    }

    if ((gKirbyState.numberInhaled >= 2) && ((temp_v1 = omCurrentObj->objId, (D_800E7730[temp_v1] != 6)) || (temp_v0_2 = D_800E77A0[temp_v1], ((temp_v0_2 < 8) != 0)) || (temp_v0_2 >= 0x2C) || (temp_v1 != D_800D7090))) {
        var_a0 = 2;
    }
    if (var_a0 == 1) {
        temp_v1_2 = omCurrentObj->objId;
        if (D_800E7730[temp_v1_2] == 6) {
            temp_v0_3 = D_800E77A0[temp_v1_2];
            if ((temp_v0_3 >= 8) && (temp_v0_3 < 0x2C)) {
                gKirbyState.numberInhaled = 0;
                if (gKirbyState.unk8 == 0) {
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AA914_ovl7, omCurrentObj, temp_a3_2);
                    return;
                }
            }
        }
        if (gKirbyState.numberInhaled < 2) {
            gKirbyState.numberInhaled = 0;
            if (gKirbyState.unk8 == 0) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AA914_ovl7, omCurrentObj, temp_a3_2);
                return;
            }
        }
    } else {
        if (var_a0 == 2) {
            func_8019D958_ovl7(omCurrentObj->unk2, temp_a1, omCurrentObj, temp_a3_2);
        }
        else if (var_a0 == 3) {
            func_8019D958_ovl7(omCurrentObj->unk2, temp_a1, omCurrentObj, temp_a3_2);
        }
    }
    break;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A8FFC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A9268_ovl7(void) {
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *sp18;
    struct SubSub800E1B50_Unk88_UnkC *temp_a1;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_a2;
    struct UnkStruct800E1B50 *var_a0;
    u32 temp_t2;
    u32 temp_t7;
    u32 temp_t9;
    u32 temp_v0;
    u8 *temp_v1;
    u8 *var_a0_2;
    u8 temp_a1_2;

    var_a0 = D_800E1B50[omCurrentObj->objId];
    temp_a1 = var_a0->unk88->unkC;
    temp_a2 = temp_a1->unk0;
    gKirbyState.numberInhaled += 1;
    if (temp_a2 != NULL) {
        var_a0 = temp_a2->unk1C;
        if ((bitwise s32) var_a0->unk0 != 0) {
            gKirbyState.unk8 += 1;
        }
    }
    if (gKirbyState.numberInhaled == 1) {
        gKirbyState.isHoldingEntity = 0;
        temp_t7 = D_800E76C0[omCurrentObj->objId] << 0x18;
        gKirbyState.inhaledEntityData = temp_t7;
        temp_t2 = temp_t7 | (D_800E7730[omCurrentObj->objId] << 0x10);
        gKirbyState.inhaledEntityData = temp_t2;
        temp_t9 = temp_t2 | (D_800E77A0[omCurrentObj->objId] << 8);
        gKirbyState.inhaledEntityData = temp_t9;
        gKirbyState.inhaledEntityData = temp_t9 | D_800E7880[omCurrentObj->objId];
    }
    if (gKirbyState.firstInhale == 0) {
        gKirbyState.firstInhale = temp_a2->unk1C->unk4;
    } else if (gKirbyState.secondInhale == 0) {
        gKirbyState.secondInhale = temp_a2->unk1C->unk4;
    } else if (gKirbyState.firstInhale < 8) {
        temp_v0 = temp_a2->unk1C->unk4;
        if (temp_v0 >= 8) {
            gKirbyState.firstInhale = temp_v0;
        }
    }
    sp18 = temp_a2;
    func_801A94D8_ovl7(var_a0, temp_a1, temp_a2);
    if (gKirbyState.numberInhaling != gKirbyState.numberInhaled) {
        D_80198820_ovl3 = 0.0f;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_a2->unk10;
    var_a0_2 = &D_800E76C0[omCurrentObj->objId];
    temp_a1_2 = *var_a0_2;
    if (temp_a1_2 < 0x40) {
        temp_v1 = temp_a1_2 + (&D_800D6C68 + 0x28);
        if ((D_801290E0 + (temp_a1_2 * 0x2C))->unk5 & 1) {
            *temp_v1 &= 0x80;
            var_a0_2 = &D_800E76C0[omCurrentObj->objId];
        }
    }
    *var_a0_2 = 0xFF;
    func_8019BB58_ovl7(var_a0_2, temp_a1_2, temp_a2);
    func_800A2300(*(&D_800DE350 + (omCurrentObj->objId * 4)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A9268_ovl7.s")
#endif

#ifdef MIPS_TO_C
s32 func_801A94D8_ovl7(void) {
    f32 temp_f0;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *temp_a2;
    u32 temp_v0;
    u8 temp_v1;

    temp_v0 = omCurrentObj->objId;
    temp_a2 = D_800E1B50[temp_v0]->unk88->unkC->unk0->unk1C;
    if (temp_a2 != NULL) {
        temp_f0 = temp_a2->unk8;
        if (temp_f0 != 0.0f) {
            gKirbyState.unk84 = (bitwise u32) ((bitwise f32) gKirbyState.unk84 + temp_f0);
            return 1;
        }
    }
    temp_v1 = D_800E7730[temp_v0];
    if ((temp_v1 == 3) && (D_800E77A0[temp_v0] == 5)) {
        gKirbyState.unk8C |= 1;
        return 1;
    }
    if ((temp_v1 == 3) && (D_800E77A0[temp_v0] == 9)) {
        gKirbyState.unk88 += 1;
        return 1;
    }
    if ((temp_v1 == 3) && (D_800E77A0[temp_v0] == 7)) {
        gKirbyState.unk8C |= 2;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A94D8_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A9610_ovl7(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A9610_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A9618_ovl7(s32 arg0) {
    u32 temp_t0;
    u32 temp_t3;
    u32 temp_t8;

    func_80199568_ovl7();
    func_8019BB58_ovl7();
    temp_t8 = D_800E76C0[omCurrentObj->objId] << 0x18;
    gKirbyState.inhaledEntityData = temp_t8;
    temp_t3 = temp_t8 | (D_800E7730[omCurrentObj->objId] << 0x10);
    gKirbyState.inhaledEntityData = temp_t3;
    temp_t0 = temp_t3 | (D_800E77A0[omCurrentObj->objId] << 8);
    gKirbyState.inhaledEntityData = temp_t0;
    gKirbyState.inhaledEntityData = temp_t0 | D_800E7880[omCurrentObj->objId];
    func_801A8CDC_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A9618_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A96C4_ovl7(s32 arg0) {
    s32 sp44;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u8 temp_t2;
    void *temp_a1;

    temp_v0 = omCurrentObj->objId;
    temp_a1 = D_800E1B50[temp_v0]->unk88->unkC->unk4->unk1C;
    D_800DF150[temp_v0] = func_801A9930_ovl7;
    sp44 = temp_a1->unk14;
    func_801AA344_ovl7(temp_a1);
    temp_t2 = *(&D_8012E860 + 0x18);
    switch (temp_t2) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 9:
            break;
        case 5:
        case 6:
        case 7:
        case 8:
            func_801A9FC4_ovl7(arg0);
            break;
    }
    func_801AA850_ovl7(sp44);
loop_4:
    if (sp44 != 0) {
        func_801AA78C_ovl7(sp44);
    }
    temp_v0_2 = omCurrentObj->objId;
    D_800E9C60[temp_v0_2] = D_800E8920[D_800E0D50[temp_v0_2]];
    temp_v0_3 = omCurrentObj->objId;
    D_800E9E20[temp_v0_3] = D_800E8AE0[D_800E0D50[temp_v0_3]] & 6;
    var_v1 = D_800E0D50[omCurrentObj->objId];
    do {
        if (func_800AA8E4(var_v1, 0x20007) != 0) {
            D_800E0F10[omCurrentObj->objId] = 0xE;
        } else {
            D_800E0F10[omCurrentObj->objId] = 0x10;
        }
        ohSleep(1);
        var_v1_2 = 0;
        temp_v0_4 = omCurrentObj->objId;
        if ((D_800DD8D0[temp_v0_4] >> 0x1E) != 0) {
            var_v1_2 = 1;
        }
        if (var_v1_2 != 0) {
            goto loop_4;
        }
        var_v1 = D_800E0D50[temp_v0_4];
        if (D_800E9C60[temp_v0_4] != D_800E8920[var_v1]) {
            goto loop_4;
        }
    } while (D_800E9E20[temp_v0_4] == (D_800E8AE0[var_v1] & 6));
    goto loop_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A96C4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A9930_ovl7(s32 arg0) {
    struct SubSub800E1B50_Unk88_UnkC *sp30;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *sp2C;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp28;
    void *sp20;
    struct Sub800E1B50_Unk84 *sp1C;
    ? (*temp_v0_9)(s32, s32 *, s32 *, f32 *);
    ? *temp_a1;
    GObj *temp_t0;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f2;
    s32 *temp_v1_4;
    s32 temp_t8;
    s32 var_v0;
    s8 temp_a0;
    struct SubSub800E1B50_Unk88_UnkC *temp_a2;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_t2;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *temp_t1;
    struct UnkStruct800E1B50 *temp_v1;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    void *temp_a3;
    void *temp_t3;

    temp_t0 = omCurrentObj;
    temp_v0 = temp_t0->objId;
    temp_v1 = D_800E1B50[temp_v0];
    temp_a2 = temp_v1->unk88->unkC;
    temp_t1 = temp_a2->unk4;
    temp_t2 = temp_a2->unk0;
    temp_a3 = temp_t1->unk1C;
    temp_t3 = temp_a3->unk14;
    sp1C = temp_v1->unk84;
    if (D_800E83E0[temp_v0] != 0) {
        gKirbyState.unkD = -2;
        temp_v0_2 = temp_t0->objId;
        if (D_800E83E0[temp_v0_2] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0_2], &func_801AC33C_ovl7, temp_a2, temp_a3);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0_2], &func_801AC448_ovl7, temp_a2, temp_a3);
        return;
    }
    temp_a0 = gKirbyState.unkD;
    switch (temp_a0) {
        case 4:
            D_800EA6E0[temp_v0] = temp_t1->unk10;
block_17:
            if (temp_a0 == 2) {
                temp_t8 = D_801D0AA4_ovl7 - 1;
                if (D_801D0AA4_ovl7 != -1) {
                    D_801D0AA4_ovl7 = temp_t8;
                    if (temp_t8 <= 0) {
                        gKirbyState.unkD = -2;
                        temp_a1 = temp_t3->unk44;
                        if (temp_a1 == NULL) {
                            assign_new_process_entry(gEntityGObjProcessArray[temp_t0->objId], &func_801AC448_ovl7);
                            return;
                        }
                        assign_new_process_entry(gEntityGObjProcessArray[temp_t0->objId], temp_a1);
                        return;
                    }
                }
            }
            temp_v0_3 = temp_t0->objId;
            gEntitiesAngleYArray[temp_v0_3] = gEntitiesAngleYArray[D_800E0D50[temp_v0_3]];
            temp_v0_4 = temp_t0->objId;
            D_800E5F90[temp_v0_4] = D_800E5F90[D_800E0D50[temp_v0_4]];
            temp_v0_5 = temp_t0->objId;
            D_800E6BD0[temp_v0_5] = D_800E6BD0[D_800E0D50[temp_v0_5]];
            if (temp_a0 == 3) {
                temp_v0_6 = temp_t0->objId;
                temp_v1_2 = &gEntitiesScaleXArray[temp_v0_6];
                temp_f2 = *temp_v1_2;
                if ((D_800EA6E0[temp_v0_6] - 0.001f) < temp_f2) {
                    *temp_v1_2 = temp_f2 - ((temp_t1->unk10 - temp_t2->unk10) / 5.0f);
                }
            }
            temp_v0_7 = temp_t0->objId;
            var_v0 = temp_v0_7 * 4;
            temp_v1_3 = &gEntitiesScaleXArray[temp_v0_7];
            var_f2 = *temp_v1_3;
            if ((temp_a0 == 1) && (var_f2 < (D_800EA6E0[temp_v0_7] + 0.001f))) {
                *temp_v1_3 = var_f2 + ((temp_t1->unk10 - temp_t2->unk10) / 5.0f);
                temp_v0_8 = temp_t0->objId;
                var_v0 = temp_v0_8 * 4;
                var_f2 = gEntitiesScaleXArray[temp_v0_8];
            }
            *(gEntitiesScaleZArray + var_v0) = var_f2;
            gEntitiesScaleYArray[temp_t0->objId] = var_f2;
            if (temp_t3 != NULL) {
                temp_v0_9 = temp_t3->unk3C;
                if (temp_v0_9 != NULL) {
                    temp_v0_9(arg0, D_800E0D50, D_800E5F90, D_800E6BD0);
                }
            }
            temp_v0_10 = temp_t0->objId;
            D_800E6A10[temp_v0_10] = D_800E6A10[D_800E0D50[temp_v0_10]];
            temp_v0_11 = temp_t0->objId;
            if (D_800E6A10[temp_v0_11] == 1.0f) {
                D_800E17D0[temp_v0_11] = D_800E17D0[D_800E0D50[temp_v0_11]];
            } else {
                D_800E17D0[temp_v0_11] = D_800E17D0[D_800E0D50[temp_v0_11]] + 3.1415927f;
            }
            if ((temp_a0 == 2) && ((gKirbyState.action != 0x1D) || (gKirbyState.unkB != 1)) && (gKirbyState.unkB != 2)) {
                if (func_801A0D74_ovl7(arg0, D_800E0D50) != 0) {
                    func_801A3938(&D_801CAFCC_ovl7);
                    func_801A36CC(&func_801A3864_ovl7);
                }
                temp_v1_4 = &D_800E8920[omCurrentObj->objId];
                if (*temp_v1_4 == 1) {
                    *temp_v1_4 = 0;
                }
                func_80111C4C(func_801117BC(&D_801D0A78_ovl7, omCurrentObj->objId));
                return;
            }
            if (sp1C != NULL) {
                sp1C->unk4 = gEntitiesNextPosXArray[temp_t0->objId];
                sp1C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
                sp1C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
                func_801051AC(sp1C, D_800E0D50);
            }
            return;
        case 5:
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AA1D4_ovl7, temp_a2, temp_a3);
            return;
        case 3:
            if (temp_t1->unk10 == gEntitiesScaleXArray[temp_v0]) {
                D_800EA6E0[temp_v0] = temp_t2->unk10;
            }
            goto block_17;
        case -1:
            sp30 = temp_a2;
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801A8CDC_ovl7, temp_a2, temp_a3);
            gKirbyState.currentInhale = temp_a2->unk0->unk1C->unk4;
            return;
        case 8:
            sp28 = temp_t1;
            sp2C = temp_t2;
            sp20 = temp_t3;
            if (func_801AA190_ovl7(temp_a0, temp_a2, temp_a3) == 0) {
                goto block_17;
            }
            break;
        case -3:
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AC448_ovl7, temp_a2, temp_a3);
            return;
        case 1:
            if (temp_t2->unk10 == gEntitiesScaleXArray[temp_v0]) {
                D_800EA6E0[temp_v0] = temp_t1->unk10;
            }
            goto block_17;
        default:
            temp_f0 = temp_t1->unk10;
            D_800EA6E0[temp_v0] = temp_f0;
            gEntitiesScaleZArray[temp_t0->objId] = temp_f0;
            gEntitiesScaleYArray[temp_t0->objId] = temp_f0;
            gEntitiesScaleXArray[temp_t0->objId] = temp_f0;
            goto block_17;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A9930_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A9FC4_ovl7(s32 arg0) {
    s32 temp_s4;
    s32 temp_s5;

    temp_s4 = D_800E1B50[omCurrentObj->objId]->unk88->unkC->unk4->unk1C->unk14;
    func_800AF408();
    func_800A9D64(omCurrentObj->objId);
    temp_s5 = temp_s4 + 0x20;
    func_801AA690_ovl7(temp_s5);
loop_1:
    if (func_800AA8E4(D_800E0D50[omCurrentObj->objId], 0x20007) != 0) {
        D_800E0F10[omCurrentObj->objId] = 0xE;
    } else {
        D_800E0F10[omCurrentObj->objId] = 0x10;
    }
    switch (gKirbyState.unkB8) {                    /* irregular */
        case 5:
            if (gKirbyState.action == 0x14) {
                func_801AA600_ovl7(temp_s4 + 0x2C);
            } else {
                func_801AA600_ovl7(temp_s5);
            }
            break;
        case 6:
        case 7:
        case 8:
            if (gKirbyState.action == 0x14) {
                func_801AA600_ovl7(temp_s4 + 0x14);
            } else {
                func_801AA600_ovl7(temp_s5);
            }
            break;
    }
    ohSleep(1);
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801A9FC4_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801AA190_ovl7(void) {
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AB5A4_ovl7);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA190_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA1D4_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp2C;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp24;
    void *sp1C;
    ? (*temp_v0_3)(s32, struct SubSub800E1B50_Unk88_UnkC_Unk4 *, void *);
    struct Sub800E1B50_Unk34 *temp_v0_2;
    struct SubSub800E1B50_Unk88_UnkC *temp_v1;
    struct UnkStruct800E1B50 *temp_a3;
    u32 temp_v0;
    void *temp_a2;

    temp_v0 = omCurrentObj->objId;
    temp_a3 = D_800E1B50[temp_v0];
    temp_v1 = temp_a3->unk88->unkC;
    sp24 = temp_v1->unk4;
    temp_a2 = temp_v1->unk4->unk1C;
    D_800DF150[temp_v0] = func_801AA33C_ovl7;
    sp2C = temp_a3;
    sp1C = temp_a2->unk14;
    func_800AF408(temp_a2, temp_a3);
    D_800DF310[omCurrentObj->objId] = NULL;
    temp_v0_2 = sp2C->unk34;
    if (temp_v0_2 != NULL) {
        func_800A22D4(temp_v0_2);
    }
    func_800A2300(arg0);
    D_801D0AA0_ovl7 = 0;
    D_801D0A9C_ovl7 = 0;
    D_801D0A98_ovl7 = 0;
    D_801D0AA8_ovl7 = 0;
    sp2C->unk34 = NULL;
    *(&D_8012E860 + 0x18) = 0;
    gEntitiesScaleXArray[omCurrentObj->objId] = sp24->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = sp24->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = sp24->unk10;
    if (sp1C != NULL) {
        temp_v0_3 = sp1C->unk40;
        if (temp_v0_3 != NULL) {
            temp_v0_3(arg0, sp24, sp1C);
            return;
        }
    }
    func_801AB174_ovl7(arg0, sp24, sp1C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA1D4_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801AA33C_ovl7(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA33C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA344_ovl7(s32 arg0) {
    struct SubSub800E1B50_Unk88_UnkC *sp2C;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp28;
    s32 temp_v0_2;
    struct SubSub800E1B50_Unk88_UnkC *temp_v1;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *temp_a1;
    struct UnkStruct800E1B50 *temp_s1;
    u32 temp_v0;
    void *temp_s0;
    void *temp_s2;
    void *temp_t3;

    temp_v0 = omCurrentObj->objId;
    temp_s1 = D_800E1B50[temp_v0];
    temp_v1 = temp_s1->unk88->unkC;
    temp_a1 = temp_v1->unk4;
    temp_s2 = temp_a1->unk1C;
    temp_s0 = temp_s2->unk14;
    D_800DEF90[temp_v0] = func_800B799C;
    sp2C = temp_v1;
    sp28 = temp_a1;
    func_801A2558_ovl7(temp_s2->unk10, temp_a1);
    temp_s1->unk98 = &D_801CD240_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8E60[omCurrentObj->objId] = 1;
    func_800AFBB4(1, omCurrentObj);
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800DDA90[omCurrentObj->objId] = 0x23;
    D_800E0D50[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = sp28->unk10;
    temp_s1->unk40 = 0;
    temp_s1->unk38 = -1;
    temp_s1->unk39 = -1;
    D_800E2250[omCurrentObj->objId] = temp_s2->unk4;
    func_801AC6D0_ovl7(sp28, omCurrentObj);
    D_800E0F10[omCurrentObj->objId] = 0xE;
    D_801D0AA0_ovl7 = 0;
    D_801D0A9C_ovl7 = 0;
    D_801D0A98_ovl7 = 0;
    D_801D0AA8_ovl7 = 0;
    temp_s1->unk34 = NULL;
    D_801D0AA4_ovl7 = temp_s2->unk0;
    temp_t3 = temp_s2->unkC;
    D_801D0A78_ovl7.unk0 = temp_t3->unk0;
    D_801D0A78_ovl7.unk4 = temp_t3->unk4;
    D_801D0A78_ovl7.unk8 = temp_t3->unk8;
    D_801D0A78_ovl7.unkC = temp_t3->unkC;
    D_801D0A78_ovl7.unk10 = temp_t3->unk10;
    D_801D0A78_ovl7.unk14 = temp_t3->unk14;
    D_801D0A78_ovl7.unk18 = temp_t3->unk18;
    D_801D0A78_ovl7.unk1C = temp_t3->unk1C;
    temp_v0_2 = sp2C->unk0->unk1C->unk4;
    if (temp_v0_2 != 0) {
        D_801D0A78_ovl7.unk1C = temp_v0_2;
    }
    if (temp_s0 != NULL) {
        gKirbyState.unkB8 = temp_s0->unk0;
        gKirbyState.unkBC = temp_s0->unk4;
        gKirbyState.unkC0 = temp_s0->unk8;
        gKirbyState.unkC4 = temp_s0->unkC;
        gKirbyState.unkC8 = temp_s0->unk10;
        gKirbyState.unkB9 = temp_s0->unk1;
    } else {
        gKirbyState.unkB8 = 0;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    gKirbyState.numberInhaled = 1;
    D_800E8220[omCurrentObj->objId] = 1;
    gKirbyState.isHoldingEntity = 1;
    gKirbyState.unkE = temp_s2->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA344_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA600_ovl7(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;

    temp_a1 = arg0->unk0;
    if (temp_a1 != -1) {
        func_800A9EA4(temp_a1, temp_a1);
        func_800AECC0(arg0->unk8);
        temp_a0 = arg0->unk4;
        if (temp_a0 != -1) {
            func_800A9EA4(temp_a0);
            func_800AED20(arg0->unk8);
        }
    } else {
        func_800AFA54(*(&D_800DFA10 + (omCurrentObj->objId * 4)), temp_a1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA600_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA690_ovl7(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;

    temp_a1 = arg0->unk0;
    if (temp_a1 != -1) {
        func_800AA018(temp_a1, temp_a1);
        func_800AECC0(arg0->unk8);
        temp_a0 = arg0->unk4;
        if (temp_a0 != -1) {
            func_800AA018(temp_a0);
            func_800AED20(arg0->unk8);
        }
    } else {
        func_800AFA54(*(&D_800DFA10 + (omCurrentObj->objId * 4)), temp_a1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA690_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA720_ovl7(void) {
    s32 var_v0;

    var_v0 = 0;
    if ((D_800DD8D0[omCurrentObj->objId] >> 0x1E) != 0) {
        var_v0 = 1;
    }
    if (var_v0 != 0) {
        func_801AA690_ovl7();
        return;
    }
    func_801AA600_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA720_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA78C_ovl7(void *arg0) {
    s32 temp_v0;
    void (*temp_v0_2)(s32, s32, f32);

    if (arg0 != NULL) {
        temp_v0 = D_800E0D50[omCurrentObj->objId];
        if (D_800E8AE0[temp_v0] & 6) {
            func_801AA720_ovl7(arg0 + 0x2C);
        } else if (D_800E8920[temp_v0] == 0) {
            func_801AA720_ovl7(arg0 + 0x14);
        } else {
            func_801AA720_ovl7(arg0 + 0x20);
        }
        temp_v0_2 = arg0->unk38;
        if (temp_v0_2 != NULL) {
            D_800DF310[omCurrentObj->objId] = temp_v0_2;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA78C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA850_ovl7(void *arg0) {
    s32 temp_v0;
    void (*temp_v0_2)(s32, s32, f32);

    if (arg0 != NULL) {
        temp_v0 = D_800E0D50[omCurrentObj->objId];
        if (D_800E8AE0[temp_v0] & 6) {
            func_801AA690_ovl7(arg0 + 0x2C);
        } else if (D_800E8920[temp_v0] == 0) {
            func_801AA690_ovl7(arg0 + 0x14);
        } else {
            func_801AA690_ovl7(arg0 + 0x20);
        }
        temp_v0_2 = arg0->unk38;
        if (temp_v0_2 != NULL) {
            D_800DF310[omCurrentObj->objId] = temp_v0_2;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA850_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AA914_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp24;
    struct SubSub800E1B50_Unk88_UnkC *temp_a2;
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *temp_s0;
    struct UnkStruct800E1B50 *temp_v1;
    u16 temp_v1_2;
    u32 temp_a1;
    u32 temp_v0;

    temp_a1 = omCurrentObj->objId;
    temp_v1 = D_800E1B50[temp_a1];
    temp_a2 = temp_v1->unk88->unkC;
    temp_s0 = temp_a2->unk0;
    sp24 = temp_v1;
    func_800B19F4(0, temp_a1, temp_a2);
    D_800EC660[omCurrentObj->objId] = 0.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7(arg0, omCurrentObj);
    D_800DF150[omCurrentObj->objId] = func_801AAAF8_ovl7;
    temp_v1->unk48 = 0;
    temp_v1->unk98 = &D_801CB500_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.06981317f;
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    temp_v0 = omCurrentObj->objId;
    if ((D_800E7730[temp_v0] == 6) && (temp_v1_2 = D_800E77A0[temp_v0], ((temp_v1_2 < 8) == 0)) && (temp_v1_2 < 0x2C)) {
        play_sound(0x11B, omCurrentObj, &omCurrentObj);
    } else {
        play_sound(0xE1, omCurrentObj, &omCurrentObj);
    }
    func_801AC6D0_ovl7(temp_s0);
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_s0->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_s0->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_s0->unk10;
    func_800AFBB4(1, omCurrentObj);
    func_801AAE60_ovl7();
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AA914_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AAAF8_ovl7(s32 arg0) {
    f32 *var_at;
    f32 var_f0;
    s32 *temp_v0_4;
    s32 temp_v1_2;
    u16 temp_v1;
    u16 temp_v1_3;
    u16 temp_v1_4;
    u16 temp_v1_5;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_v0;
    u32 temp_v0_2;
    u8 temp_v0_3;

    temp_a2 = omCurrentObj->objId;
    if ((D_800E7730[temp_a2] != 6) || (temp_v1 = D_800E77A0[temp_a2], (temp_v1 <= 0)) || (temp_v1 >= 0x2C) || (func_801C0588_ovl7(temp_a2) == 0)) {
        temp_v0 = omCurrentObj->objId;
        temp_v1_2 = D_800E83E0[temp_v0];
        if ((temp_v1_2 != 0) || (D_800E8760[temp_v0] != 0)) {
            if (temp_v1_2 == 0x12) {
                assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AC33C_ovl7);
                return;
            }
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AC11C_ovl7);
            return;
        }
        func_801AB008_ovl7();
        temp_v0_2 = omCurrentObj->objId;
        if (D_800E8AE0[temp_v0_2] & 1) {
            var_f0 = 7.0f;
            D_800E64D0[temp_v0_2] = D_800E6A10[temp_v0_2] * 7.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E6850[omCurrentObj->objId];
        } else {
            var_f0 = 14.0f;
            D_800E64D0[temp_v0_2] = D_800E6A10[temp_v0_2] * 14.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E6850[omCurrentObj->objId];
        }
        *var_at = var_f0;
        temp_a2_2 = omCurrentObj->objId;
        temp_v0_3 = D_800E7730[temp_a2_2];
        if ((temp_v0_3 == 6) && (temp_v1_3 = D_800E77A0[temp_a2_2], ((temp_v1_3 < 8) == 0)) && (temp_v1_3 < 0x2C)) {
            func_801A3938(&D_801CB0F8_ovl7);
            func_801A36CC(&func_801A3864_ovl7);
            func_801A0D74_ovl7(arg0);
            temp_a2_3 = omCurrentObj->objId;
            temp_v1_4 = D_800E77A0[temp_a2_3];
            if ((temp_v1_4 >= 8) && (temp_v1_4 < 0x24)) {
                func_80111C4C(func_801117BC(&D_801D0A38_ovl7, temp_a2_3, temp_a2_3));
            } else {
                func_80111C4C(func_801117BC(&D_801CA7DC_ovl7, temp_a2_3, temp_a2_3));
            }
        } else if ((temp_v0_3 == 6) && (temp_v1_5 = D_800E77A0[temp_a2_2], (temp_v1_5 > 0)) && (temp_v1_5 < 8)) {
            if (func_801A0D74_ovl7(arg0) != 0) {
                func_801A3938(&D_801CB008_ovl7);
                func_801A36CC(&func_801A3864_ovl7);
            }
            func_80111C4C(func_801117BC(&D_801D0A58_ovl7, omCurrentObj->objId));
        } else {
            if (func_801A0D74_ovl7(arg0) != 0) {
                func_801A3938(&D_801CB008_ovl7);
                func_801A36CC(&func_801A3864_ovl7);
            }
            func_80111C4C(func_801117BC(&D_801CA6F4_ovl7, omCurrentObj->objId));
        }
        temp_v0_4 = &D_800E8920[omCurrentObj->objId];
        if (*temp_v0_4 == 1) {
            *temp_v0_4 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AAAF8_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801AAE60_ovl7(void) {
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    temp_v1 = omCurrentObj->objId;
    if (D_800E8AE0[D_800E0D50[temp_v1]] & 6) {
        D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * 7.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 7.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        temp_v1_2 = omCurrentObj->objId;
        D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        ohSleep(0x78);
        return;
    }
    D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_3 = omCurrentObj->objId;
    D_800E3210[temp_v1_3] = D_800E3750[temp_v1_3];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AAE60_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801AB008_ovl7(void) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *var_a0;
    f32 var_f0;
    f32 var_f2;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;

    temp_a0 = &D_800E4C50[omCurrentObj->objId];
    *temp_a0 += 0.34906587f;
    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_a0_2 = &D_800E4C50[temp_v1];
    var_f0 = *temp_a0_2;
    if (var_f0 >= 6.2831855f) {
        *temp_a0_2 = var_f0 - 6.2831855f;
        temp_v1_2 = omCurrentObj->objId;
        var_v1 = temp_v1_2 * 4;
        var_f0 = D_800E4C50[temp_v1_2];
    }
    *(gEntitiesAngleYArray + var_v1) = var_f0;
    temp_v1_3 = omCurrentObj->objId;
    var_v1_2 = temp_v1_3 * 4;
    var_a0 = &gEntitiesAngleZArray[temp_v1_3];
    var_f2 = *var_a0;
    if ((var_f2 > 0.69813174f) && (var_f2 < 1.5707964f)) {
        D_800EA6E0[temp_v1_3] = -0.06981317f;
        temp_v1_4 = omCurrentObj->objId;
        var_v1_2 = temp_v1_4 * 4;
        var_a0 = &gEntitiesAngleZArray[temp_v1_4];
        goto block_8;
    }
    if ((var_f2 < 5.585054f) && (var_f2 > 1.5707964f)) {
        D_800EA6E0[temp_v1_3] = 0.06981317f;
        temp_v1_5 = omCurrentObj->objId;
        var_v1_2 = temp_v1_5 * 4;
        var_a0 = &gEntitiesAngleZArray[temp_v1_5];
block_8:
        var_f2 = *var_a0;
    }
    *var_a0 = var_f2 + *(D_800EA6E0 + var_v1_2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AB008_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AB174_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp24;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp1C;
    struct SubSub800E1B50_Unk88_UnkC *temp_a3;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *temp_a2;
    struct UnkStruct800E1B50 *temp_v1;
    u32 temp_a1;

    temp_a1 = omCurrentObj->objId;
    temp_v1 = D_800E1B50[temp_a1];
    temp_a3 = temp_v1->unk88->unkC;
    temp_a2 = temp_a3->unk4;
    D_800EC660[temp_a1] = 40.0f;
    sp24 = temp_v1;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    sp1C = temp_a2;
    func_801ABBA0_ovl7(temp_a1 * 4, temp_a2, temp_a3);
    D_800DF150[omCurrentObj->objId] = func_801AB2F4_ovl7;
    temp_v1->unk48 = 0;
    temp_v1->unk98 = &D_801CB500_ovl7;
    temp_v1->unk42 = 1;
    temp_v1->unk38 = -1;
    temp_v1->unk39 = -1;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.06981317f;
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    func_801AC6D0_ovl7(sp1C, -1);
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_a2->unk10;
    func_801AAE60_ovl7();
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AB174_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AB2F4_ovl7(s32 arg0) {
    f32 *var_at;
    f32 var_f0;
    s32 *temp_v0_5;
    s32 temp_v1_2;
    u16 temp_v1;
    u16 temp_v1_3;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;

    temp_v0 = omCurrentObj->objId;
    if ((D_800E7730[temp_v0] != 6) || (temp_v1 = D_800E77A0[temp_v0], (temp_v1 <= 0)) || (temp_v1 >= 0x2C) || (func_801C0588_ovl7() == 0)) {
        temp_v0_2 = omCurrentObj->objId;
        temp_v1_2 = D_800E83E0[temp_v0_2];
        if ((temp_v1_2 != 0) || (D_800E8760[temp_v0_2] != 0)) {
            if (temp_v1_2 == 0x12) {
                assign_new_process_entry(gEntityGObjProcessArray[temp_v0_2], &func_801AC33C_ovl7);
                return;
            }
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0_2], &func_801AC11C_ovl7);
            return;
        }
        func_801AB008_ovl7();
        temp_v0_3 = omCurrentObj->objId;
        if (D_800E8AE0[temp_v0_3] & 1) {
            var_f0 = 7.0f;
            D_800E64D0[temp_v0_3] = D_800E6A10[temp_v0_3] * 7.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E6850[omCurrentObj->objId];
        } else {
            var_f0 = 14.0f;
            D_800E64D0[temp_v0_3] = D_800E6A10[temp_v0_3] * 14.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E6850[omCurrentObj->objId];
        }
        *var_at = var_f0;
        temp_v0_4 = omCurrentObj->objId;
        if ((D_800E7730[temp_v0_4] == 6) && (temp_v1_3 = D_800E77A0[temp_v0_4], ((temp_v1_3 < 8) == 0)) && (temp_v1_3 < 0x2C)) {
            func_801A3938(&D_801CB134_ovl7);
            func_801A36CC(&func_801A3864_ovl7);
            func_801A0D74_ovl7(arg0);
            func_80111C4C(func_801117BC(&D_801CA7DC_ovl7, omCurrentObj->objId));
        } else {
            if (func_801A0D74_ovl7(arg0) != 0) {
                func_801A3938(&D_801CB044_ovl7);
                func_801A36CC(&func_801A3864_ovl7);
            }
            func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
        }
        temp_v0_5 = &D_800E8920[omCurrentObj->objId];
        if (*temp_v0_5 == 1) {
            *temp_v0_5 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AB2F4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AB5A4_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp24;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *sp1C;
    struct SubSub800E1B50_Unk88_UnkC *temp_a3;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *temp_a2;
    struct UnkStruct800E1B50 *temp_a1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;

    temp_v1 = omCurrentObj->objId;
    temp_a1 = D_800E1B50[temp_v1];
    temp_a3 = temp_a1->unk88->unkC;
    temp_a2 = temp_a3->unk4;
    D_800EC660[temp_v1] = 0.0f;
    sp24 = temp_a1;
    sp1C = temp_a2;
    D_800EC820[omCurrentObj->objId] = 25.0f;
    func_801ABBA0_ovl7(temp_a1, temp_a2, temp_a3);
    D_800DF150[omCurrentObj->objId] = func_801AB884_ovl7;
    temp_a1->unk48 = 0;
    temp_a1->unk98 = &D_801CB4DC_ovl7;
    temp_a1->unk42 = 1;
    temp_a1->unk38 = -1;
    temp_a1->unk39 = -1;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.06981317f;
    D_800E4C50[omCurrentObj->objId] = 0.0f;
    func_801AC6D0_ovl7(sp1C, temp_a1);
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_a2->unk10;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_a2->unk10;
    temp_v1_2 = omCurrentObj->objId;
    if (D_800E8AE0[D_800E0D50[temp_v1_2]] & 6) {
        D_800E6690[temp_v1_2] = 0.0f;
        temp_v1_3 = omCurrentObj->objId;
        D_800E64D0[temp_v1_3] = D_800E6690[temp_v1_3];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3210[omCurrentObj->objId] = 7.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
        ohSleep(0x3C);
    } else {
        D_800E6690[temp_v1_2] = 0.0f;
        temp_v1_4 = omCurrentObj->objId;
        D_800E64D0[temp_v1_4] = D_800E6690[temp_v1_4];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3210[omCurrentObj->objId] = 14.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
        ohSleep(0x1E);
    }
    func_801AC11C_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AB5A4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AB884_ovl7(s32 arg0) {
    f32 *var_at;
    f32 var_f0;
    s32 temp_v0;
    u16 temp_v1;
    u16 temp_v1_4;
    u16 temp_v1_5;
    u16 temp_v1_6;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u8 temp_a0;

    temp_a2 = omCurrentObj->objId;
    if ((D_800E7730[temp_a2] != 6) || (temp_v1 = D_800E77A0[temp_a2], (temp_v1 <= 0)) || (temp_v1 >= 0x2C) || (func_801C0588_ovl7(temp_a2) == 0)) {
        temp_v1_2 = omCurrentObj->objId;
        temp_v0 = D_800E83E0[temp_v1_2];
        if ((temp_v0 != 0) || (D_800E8760[temp_v1_2] != 0)) {
            if (temp_v0 == 0x12) {
                assign_new_process_entry(gEntityGObjProcessArray[temp_v1_2], &func_801AC33C_ovl7);
                return;
            }
            assign_new_process_entry(gEntityGObjProcessArray[temp_v1_2], &func_801AC11C_ovl7);
            return;
        }
        func_801AB008_ovl7();
        temp_v1_3 = omCurrentObj->objId;
        if (D_800E8AE0[temp_v1_3] & 1) {
            var_f0 = 7.0f;
            D_800E3210[temp_v1_3] = 7.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E3C90[omCurrentObj->objId];
        } else {
            var_f0 = 14.0f;
            D_800E3210[temp_v1_3] = 14.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            var_at = &D_800E3C90[omCurrentObj->objId];
        }
        *var_at = var_f0;
        temp_a2_2 = omCurrentObj->objId;
        temp_a0 = D_800E7730[temp_a2_2];
        if (temp_a0 == 6) {
            temp_v1_4 = D_800E77A0[temp_a2_2];
            if ((temp_v1_4 >= 8) && (temp_v1_4 < 0x2C)) {
                func_801A3938(&D_801CB170_ovl7);
                func_801A36CC(&func_801A3864_ovl7);
                func_801A0D74_ovl7(arg0);
                temp_a2_3 = omCurrentObj->objId;
                temp_v1_5 = D_800E77A0[temp_a2_3];
                if ((temp_v1_5 >= 8) && (temp_v1_5 < 0x24)) {
                    func_80111C4C(func_801117BC(&D_801D0A38_ovl7, temp_a2_3, temp_a2_3));
                    return;
                }
                func_80111C4C(func_801117BC(&D_801CA7DC_ovl7, temp_a2_3, temp_a2_3));
                return;
            }
        }
        if (temp_a0 == 6) {
            temp_v1_6 = D_800E77A0[temp_a2_2];
            if ((temp_v1_6 > 0) && (temp_v1_6 < 8)) {
                if (func_801A0D74_ovl7(arg0) != 0) {
                    func_801A3938(&D_801CB080_ovl7);
                    func_801A36CC(&func_801A3864_ovl7);
                }
                func_80111C4C(func_801117BC(&D_801D0A58_ovl7, omCurrentObj->objId));
                return;
            }
        }
        if (func_801A0D74_ovl7(arg0) != 0) {
            func_801A3938(&D_801CB080_ovl7);
            func_801A36CC(&func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AB884_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801ABBA0_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp24;
    void *sp1C;
    GObj *temp_v1;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0_11;
    s32 var_v0;
    struct Sub800E1B50_Unk34 *temp_v0_9;
    struct Sub800E1B50_Unk84 *temp_a0_3;
    struct UnkStruct800E1B50 *temp_t6;
    u16 temp_a1;
    u16 temp_a1_2;
    u16 temp_a1_3;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v0_12;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 var_a2;
    u8 temp_v0_10;

    temp_v0 = omCurrentObj->objId;
    temp_t6 = D_800E1B50[temp_v0];
    sp24 = temp_t6;
    D_800DEF90[temp_v0] = func_800B4954;
    sp1C = temp_t6->unk88->unkC->unk4->unk1C;
    temp_v0_2 = omCurrentObj->objId;
    gEntitiesNextPosXArray[temp_v0_2] = gEntitiesNextPosXArray[D_800E0D50[temp_v0_2]];
    temp_v0_3 = omCurrentObj->objId;
    gEntitiesNextPosYArray[temp_v0_3] = (D_800EC820[temp_v0_3] * 0.5f) + (*gEntitiesNextPosYArray + 20.0f);
    temp_v0_4 = omCurrentObj->objId;
    gEntitiesNextPosZArray[temp_v0_4] = gEntitiesNextPosZArray[D_800E0D50[temp_v0_4]];
    temp_v0_5 = omCurrentObj->objId;
    D_800E6A10[temp_v0_5] = D_800E6A10[D_800E0D50[temp_v0_5]];
    temp_v0_6 = omCurrentObj->objId;
    D_800E5F90[temp_v0_6] = D_800E5F90[D_800E0D50[temp_v0_6]];
    temp_v0_7 = omCurrentObj->objId;
    D_800E6BD0[temp_v0_7] = D_800E6BD0[D_800E0D50[temp_v0_7]];
    temp_v0_8 = omCurrentObj->objId;
    if (D_800E6A10[temp_v0_8] == 1.0f) {
        D_800E17D0[temp_v0_8] = D_800E17D0[D_800E0D50[temp_v0_8]];
    } else {
        D_800E17D0[temp_v0_8] = D_800E17D0[D_800E0D50[temp_v0_8]] + 3.1415927f;
    }
    D_800E8E60[omCurrentObj->objId] = 0;
    D_800DF310[omCurrentObj->objId] = NULL;
    temp_v0_9 = sp24->unk34;
    if (temp_v0_9 != NULL) {
        func_800A22D4(temp_v0_9, D_800E0D50, D_800E5F90, D_800E6BD0);
    }
    func_800A2300(arg0);
    sp24->unk34 = NULL;
    var_a2 = omCurrentObj->objId;
    temp_v0_10 = D_800E7730[var_a2];
    if (temp_v0_10 == 6) {
        temp_a1 = D_800E77A0[var_a2];
        if ((temp_a1 > 0) && (temp_a1 < 8)) {
            func_801BC1AC_ovl7(temp_a1, temp_a1, var_a2);
            D_800D7090 = omCurrentObj->objId;
            goto block_17;
        }
    }
    if (temp_v0_10 == 6) {
        temp_a1_2 = D_800E77A0[var_a2];
        if ((temp_a1_2 >= 8) && (temp_a1_2 < 0x24)) {
            func_801BC44C_ovl7(temp_a1_2, temp_a1_2, var_a2);
            D_800D7090 = omCurrentObj->objId;
            goto block_17;
        }
    }
    if (temp_v0_10 == 6) {
        temp_a1_3 = D_800E77A0[var_a2];
        if ((temp_a1_3 >= 0x24) && (temp_a1_3 < 0x2C)) {
            func_801BC72C_ovl7(temp_a1_3 - 0x24, temp_a1_3, var_a2);
            D_800D7090 = omCurrentObj->objId;
block_17:
            var_a2 = omCurrentObj->objId;
        }
    }
    temp_v0_11 = D_800E8220[var_a2];
    switch (temp_v0_11) {                           /* irregular */
        case 0:
            func_801A2558_ovl7(&D_801CAF28_ovl7);
            break;
        case 1:
            func_801A2558_ovl7(&D_801CAF3C_ovl7);
            break;
    }
    func_80161CE0_ovl3(arg0);
    temp_a2 = omCurrentObj->objId;
    temp_f0 = D_800EC660[temp_a2];
    if ((temp_f0 != 0.0f) && (func_800F98EC(temp_a2, D_800E6A10[temp_a2] * temp_f0, temp_a2) != 0)) {
        func_801AC11C_ovl7(arg0);
    }
    temp_v1 = omCurrentObj;
    gEntitiesNextPosYArray[temp_v1->objId] = *gEntitiesNextPosYArray + 20.0f;
    temp_v0_12 = temp_v1->objId;
    var_v0 = temp_v0_12 * 4;
    if (D_800E8220[temp_v0_12] == 1) {
        temp_a0 = &gEntitiesNextPosYArray[temp_v0_12];
        if (sp1C->unk8 == 1) {
            *temp_a0 += 30.0f;
            var_v0 = temp_v1->objId * 4;
        }
    }
    temp_f0_2 = *(D_800EC820 + var_v0);
    temp_a0_2 = gEntitiesNextPosYArray + var_v0;
    if (temp_f0_2 != 0.0f) {
        *temp_a0_2 += temp_f0_2;
        var_v0 = temp_v1->objId * 4;
    }
    *(D_800E2090 + var_v0) = 0.0f;
    D_800E2250[temp_v1->objId] = 0.0f;
    D_800E2410[temp_v1->objId] = 0.0f;
    temp_a0_3 = sp24->unk84;
    if (temp_a0_3 != NULL) {
        temp_a0_3->unk4 = gEntitiesNextPosXArray[temp_v1->objId];
        temp_a0_3->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        temp_a0_3->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        func_801051AC(temp_a0_3, gEntitiesNextPosYArray);
    }
    gEntityFuncListIDArray[temp_v1->objId] = 0;
    func_8019BB58_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801ABBA0_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC11C_ovl7(s32 arg0) {
    struct Sub800E1B50_Unk94 *temp_v0;
    struct UnkStruct800E1B50 *temp_s0;
    u32 temp_a0;
    u32 var_v1;

    temp_s0 = D_800E1B50[omCurrentObj->objId];
    func_801AC1F4_ovl7();
    if (temp_s0->unk40 != 1) {
        temp_a0 = temp_s0->unk94->unk1C;
        if (temp_a0 != 0x80000000) {
            play_sound(temp_a0);
        }
        func_800FD570(0, temp_s0->unk94->unk18, 0, 0, 0.0f);
        temp_v0 = temp_s0->unk94;
        if (temp_v0 != NULL) {
            var_v1 = temp_v0->unk18;
            if (var_v1 == 6) {
                func_801A41D4_ovl7(arg0);
                var_v1 = temp_s0->unk94->unk18;
            }
            if (var_v1 == 7) {
                func_801A42D8_ovl7(arg0);
            }
        }
    }
    func_801AC2D8_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC11C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC1F4_ovl7(void *arg0) {
    struct UnkStruct800E1B50 *sp1C;
    struct Sub800E1B50_Unk34 *temp_v0;
    struct UnkStruct800E1B50 *temp_t9;

    temp_t9 = D_800E1B50[omCurrentObj->objId];
    sp1C = temp_t9;
    func_800AF408();
    D_800DF150[omCurrentObj->objId] = NULL;
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    func_800B33F4();
    arg0->unk48 = 0;
    D_800DF310[omCurrentObj->objId] = NULL;
    temp_v0 = temp_t9->unk34;
    if (temp_v0 != NULL) {
        func_800A22D4(temp_v0);
    }
    func_800A2300(arg0);
    sp1C->unk34 = NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC1F4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC2D8_ovl7(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_8019BB58_ovl7();
    ohSleep(0xF);
    func_8019D958_ovl7(omCurrentObj->unk2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC2D8_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801AC33C_ovl7(s32 arg0) {
    func_801AC1F4_ovl7();
    func_801AC2D8_ovl7(arg0);
}
#else
void func_801AC33C_ovl7(GObj *);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC33C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC364_ovl7(s32 arg0) {
    s32 temp_v0;

    func_801AC1F4_ovl7();
    temp_v0 = func_801693C4(5);
    if (temp_v0 != -1) {
        gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_800EA6E0[temp_v0] = D_800E17D0[omCurrentObj->objId];
        D_800EC2E0[temp_v0].as_u32 = 0;
        D_800E0D50[temp_v0] = -1;
    }
    play_sound(0xE);
    func_801AC2D8_ovl7(arg0);
}
#else
void func_801AC364_ovl7(GObj *);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC364_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC448_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp24;

    sp24 = D_800E1B50[omCurrentObj->objId];
    func_801AC1F4_ovl7();
    D_801D0AA0_ovl7 = 0;
    D_801D0A9C_ovl7 = 0;
    D_801D0A98_ovl7 = 0;
    D_801D0AA8_ovl7 = 0;
    sp24->unk34 = NULL;
    *(&D_8012E860 + 0x18) = 0;
    func_800FD570(0, 0, 0, 0, 0.0f);
    play_sound(0x158);
    func_801AC2D8_ovl7(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC448_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC4EC_ovl7(GObj *arg0) {
    s32 temp_v1_2;
    s32 var_v0_2;
    u16 var_v0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v1;
    u32 var_v0_3;

    temp_v0 = omCurrentObj->objId;
    gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[D_800E0D50[temp_v0]];
    temp_v0_2 = omCurrentObj->objId;
    gEntitiesNextPosYArray[temp_v0_2] = gEntitiesNextPosYArray[D_800E0D50[temp_v0_2]];
    temp_v0_3 = omCurrentObj->objId;
    gEntitiesNextPosZArray[temp_v0_3] = gEntitiesNextPosZArray[D_800E0D50[temp_v0_3]];
    func_80199568_ovl7(D_800E0D50, gEntitiesNextPosXArray, gEntitiesNextPosYArray);
    temp_v1 = omCurrentObj->objId;
    if (D_800E7730[temp_v1] == 4) {
        var_v0 = D_800E77A0[temp_v1];
        if (var_v0 == 1) {
            func_800A9864(0x10087, 0x23, 0x10);
            var_v0 = D_800E77A0[omCurrentObj->objId];
        }
        if (var_v0 == 0x13) {
            func_800A9864(0x10094, 0x23, 0x10);
        }
    }
    func_8019BB58_ovl7();
    temp_v0_4 = omCurrentObj->objId;
    var_v0_2 = temp_v0_4 * 4;
    temp_v1_2 = D_800E8220[temp_v0_4];
    switch (temp_v1_2) {                            /* irregular */
        case 0:
            func_801A8CDC_ovl7(arg0);
            var_v0_3 = omCurrentObj->objId;
block_10:
            var_v0_2 = var_v0_3 * 4;
            break;
        case 1:
            func_801A96C4_ovl7(arg0);
            var_v0_3 = omCurrentObj->objId;
            goto block_10;
    }
    utilPrintf("JL_CatchOver: No CatchInfo Address ID:%x\n", *(D_800E8060 + var_v0_2));
loop_12:
    goto loop_12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC4EC_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801AC6D0_ovl7(void *arg0) {
    s32 sp1C;
    s32 temp_a0;
    s32 temp_a0_2;
    u16 var_v0;
    u32 temp_v1;
    u32 temp_v1_2;

    sp1C = 0;
    D_800DF310[omCurrentObj->objId] = NULL;
    temp_v1 = omCurrentObj->objId;
    if ((D_800DD710[temp_v1] == 0x1A) && (D_800E77A0[temp_v1] == 0x39)) {
        return func_801AEFFC_ovl7();
    }
    func_800A9760(arg0->unk0);
    temp_v1_2 = omCurrentObj->objId;
    if (D_800E7730[temp_v1_2] == 6) {
        var_v0 = D_800E77A0[temp_v1_2];
        if ((var_v0 > 0) && (var_v0 < 8)) {
            func_801C06FC_ovl7();
            var_v0 = D_800E77A0[omCurrentObj->objId];
        }
        if ((var_v0 >= 8) && (var_v0 < 0x24)) {
            func_801C1E08_ovl7();
        }
    }
    temp_a0 = arg0->unk4;
    if (temp_a0 != -1) {
        func_800A9F98(temp_a0, 0x3F800000);
        func_800AECC0(arg0->unkC);
        sp1C = 1;
    }
    temp_a0_2 = arg0->unk8;
    if (temp_a0_2 != -1) {
        func_800A9F98(temp_a0_2, 0x3F800000);
        func_800AED20(arg0->unkC);
    }
    return sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC6D0_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801AC840_ovl7(void) {
    s32 temp_v1;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800E83E0[temp_v0];
    if (temp_v1 != 0) {
        if (temp_v1 == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AC33C_ovl7);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[temp_v0], &func_801AC11C_ovl7);
        return;
    }
    if (func_801A0D74_ovl7() != 0) {
        func_801A3938(&D_801CB044_ovl7);
        func_801A36CC(&func_801A3864_ovl7);
    }
    func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_5/func_801AC840_ovl7.s")
#endif

void func_801AC908_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801AC364_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(&D_801CB044_ovl7);
            func_801A36CC(&func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(&D_801CA738_ovl7, omCurrentObj->objId));
    }
}
