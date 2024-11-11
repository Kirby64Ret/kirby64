#include "common.h"
#include "buffers.h"
#include "main/object_manager.h"
#include "GObj.h"
#include "ovl1/ovl1_1.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_5.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl2/ovl2_8.h"

extern u8 D_8018A12C_ovl5[];
extern s32 D_8018EDEC_ovl5; // track
extern UnkStruct800AC954 *D_80189DE8_ovl5;
extern UnkStruct800AC954 *D_80189E08_ovl5;
extern UnkStruct800AC954 *D_80189E28_ovl5;
extern UnkStruct800AC954 *D_80189E48_ovl5;
extern UnkStruct800AC954 *D_80189E68_ovl5;
extern UnkStruct800AC954 *D_80189E88_ovl5;
extern UnkStruct800AC954 *D_8018A0C0_ovl5;
extern u32 sKirbyHeadphoneModel; // model ptr
extern u32 D_8018A118_ovl5; // model ptr
extern u32 D_8018A0F0_ovl5; // model ptr
extern Gfx D_80189D10_ovl5[];
extern f32 D_8018A0E0_ovl5[][2];
extern u8 D_8018EDE1_ovl5;

void func_80180510_ovl5(s32 arg0);
void func_80180468_ovl5(s32 arg0);
void func_80180AE0_ovl5(s32 arg0);
void func_80181E58_ovl5(s32 arg0);
void func_80181DF8_ovl5(s32 arg0);
void func_80181D00_ovl5(GObj *arg0);
void func_801813FC_ovl5(GObj *arg0);

void func_80180360_ovl5(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            func_80180468_ovl5(arg0);
            return;
        case 1:
            func_80180AE0_ovl5(arg0);
            return;
        case 2:
            func_80180C08_ovl5(arg0);
            return;
        case 3:
            func_8018124C_ovl5(arg0);
            return;
        case 4:
            func_801813FC_ovl5(arg0);
            return;
        case 5:
            func_80181AEC_ovl5(arg0);
            return;
        case 6:
            func_80181C00_ovl5(arg0);
            return;
        case 7:
            func_80181D00_ovl5(arg0);
            return;
        case 8:
            func_80181DF8_ovl5(arg0);
            /* fallthrough */
        default:
            return;
    }
}

void func_8018043C_ovl5(s32 arg0) {
    D_800E9C60[D_8018EDEC_ovl5] = D_8018A12C_ovl5[arg0 * 8];
}

void func_80180468_ovl5(s32 arg0) {
    D_800E98E0[omCurrentObj->objId] = 10;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80180510_ovl5;
    while (1) {
        ohSleep(1);
    }
}

// Sound test controller update
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80180510_ovl5.s")

// instruction reordering/sameline memes
#ifdef NON_MATCHING
void func_80180AE0_ovl5(s32 arg0) {
    struct UnkStruct800AC954 *spobj;

    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B1434);
    func_8000A5FC(arg0, &func_800AD1A0, 0x12, 0x80000000, 0x12);
    func_8015C740_ovl5(arg0, &D_80189DE8_ovl5);
    spobj = func_8015C740_ovl5(arg0, &D_80189DE8_ovl5);
    spobj->unk5A |= 1;
    spobj->unkBA |= 1;
    spobj->xOffset = 160.0f;
    spobj->yOffset = 10.0f;
    func_8015C740_ovl5(arg0, &D_80189E08_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E28_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E48_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E68_ovl5);
    func_8015C740_ovl5(arg0, &D_80189E88_ovl5);
    func_800AFA14();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80180AE0_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_80180C08_ovl5(s32 arg0) {
    ? sp70;
    s32 *temp_v1_3;
    s32 temp_v1_2;
    s32 temp_v1_4;
    s32 var_s3;
    s32 var_v0;
    struct EntityThing800E9AA0 *var_s6;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u8 temp_v1;

    sp70.unk0 = D_80189CE0_ovl5.unk0;
    sp70[1] = D_80189CE0_ovl5.unk4;
    D_8018EDEC_ovl5 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    temp_v0 = omCurrentObj->objId;
    var_s6 = D_800E9AA0[temp_v0];
    D_800E9C60[temp_v0] = 0;
    temp_v0_2 = omCurrentObj->objId;
    var_s3 = D_800E9C60[temp_v0_2];
    D_800DF150[temp_v0_2] = func_80180FF8_ovl5;
    func_800A9864(D_8018A0F4_ovl5, 0x1869F, 0x10, omCurrentObj);
    func_800AA018(*(&D_8018A0F8_ovl5 + (D_800E9AA0[omCurrentObj->objId] * 4)));
    temp_v1 = D_8018EDE1_ovl5;
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0f;
    if (temp_v1 == 0) {
        D_800EA6E0[omCurrentObj->objId] = -45.0f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 45.0f;
    }
    temp_v0_3 = omCurrentObj->objId;
    gEntitiesAngleYArray[temp_v0_3] = (D_800EA6E0[temp_v0_3] * 3.1415927f) / 180.0f;
loop_4:
    if ((temp_v1 == 0) && (temp_v0_4 = omCurrentObj->objId, var_v0 = temp_v0_4 * 4, (D_800E9AA0[temp_v0_4] == 1))) {
        temp_v1_2 = D_800E9C60[temp_v0_4];
        if (var_s3 != temp_v1_2) {
            func_800A9F98(D_8018A100_ovl5, temp_v1_2);
            if (D_800E9C60[omCurrentObj->objId] == 0) {
                func_8000E324(arg0);
            }
            func_8000C0AC(arg0);
            temp_v0_5 = omCurrentObj->objId;
            var_v0 = temp_v0_5 * 4;
            var_s3 = D_800E9C60[temp_v0_5];
        }
    } else {
        temp_v0_6 = omCurrentObj->objId;
        var_v0 = temp_v0_6 * 4;
        temp_v1_3 = &D_800E9C60[temp_v0_6];
        if (*temp_v1_3 != 0) {
            *temp_v1_3 = 0;
            func_800A9F98(D_8018A100_ovl5, D_800E9C60[omCurrentObj->objId]);
            if (D_800E9C60[omCurrentObj->objId] == 0) {
                func_8000E324(arg0);
            }
            func_8000C0AC(arg0);
            temp_v0_7 = omCurrentObj->objId;
            var_v0 = temp_v0_7 * 4;
            var_s3 = D_800E9C60[temp_v0_7];
        }
    }
    temp_v1_4 = *(D_800E9AA0 + var_v0);
    if (var_s6 != temp_v1_4) {
        func_800AA608((*(&D_800DE350 + var_v0))->unk3C->unk10, *(&D_8018A0F8_ovl5 + (temp_v1_4 * 4)), 0, D_8018A0F4_ovl5, 6.0f);
        func_800AA018(*(&D_8018A0F8_ovl5 + (D_800E9AA0[omCurrentObj->objId] * 4)));
        var_s6 = D_800E9AA0[omCurrentObj->objId];
    }
    ohSleep(1);
    goto loop_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80180C08_ovl5.s")
#endif

void func_80180FF8_ovl5(s32 arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (D_8018EDE1_ovl5 == 0) {
            if (D_800EA6E0[omCurrentObj->objId] > -45.0f) {
                D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
                gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
                D_800EA8A0[omCurrentObj->objId] += (D_800EA6E0[omCurrentObj->objId] > 0.0f) ? -0.8f : 0.8f;
            } else {
                D_800EA6E0[omCurrentObj->objId] = -45.0f;
                gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
                D_800E98E0[omCurrentObj->objId] = 0;
            }
        } else if (D_800EA6E0[omCurrentObj->objId] < 45.0f) {
            D_800EA6E0[omCurrentObj->objId] += D_800EA8A0[omCurrentObj->objId];
            gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
            D_800EA8A0[omCurrentObj->objId] += (D_800EA6E0[omCurrentObj->objId] < 0.0f) ? 0.8f : -0.8f;
        } else {
            D_800EA6E0[omCurrentObj->objId] = 45.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = (D_800EA6E0[omCurrentObj->objId] * 3.1415927f) / 180.0f;
            D_800E98E0[omCurrentObj->objId] = 0;
        }
    }
}

#ifdef MIPS_TO_C

void func_8018124C_ovl5(s32 arg0) {
    struct EntityThing800E9AA0 *temp_v0;

    func_800A9864(D_8018A108_ovl5, 0x1869F, 0x10);
loop_1:
    if (D_8018EDE1_ovl5 == 1) {
        temp_v0 = D_800E9AA0[D_8018EDEC_ovl5];
        if (temp_v0 == NULL) {
            if ((func_800AA934(D_8018A10C_ovl5.unk0) == 0) && (func_800AA934(D_8018A10C_ovl5.unk4) == 0)) {
                func_800AECC0(2.0f);
                func_800AED20(2.0f);
                func_800AA018(D_8018A10C_ovl5.unk0);
            } else if (func_800AA934(D_8018A10C_ovl5.unk4) == 1) {
                func_800AECC0(0.0f);
                func_800AED20(0.0f);
            }
        } else if ((temp_v0 == 1) && ((D_800E09D0[omCurrentObj->objId] == 0.0f) || (func_800AA934(D_8018A10C_ovl5.unk4) == 0))) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            func_800AA018(D_8018A10C_ovl5.unk4);
        }
    } else if ((func_800AA934(D_8018A10C_ovl5.unk0) == 1) || (func_800AA934(D_8018A10C_ovl5.unk4) == 1)) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        func_800AA018(D_8018A10C_ovl5.unk8);
    }
    ohSleep(1);
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_8018124C_ovl5.s")
#endif

// Constant folding on the 1
#ifdef NON_MATCHING
extern u32 D_8018A11C_ovl5[];
void func_801813FC_ovl5(GObj *arg0) {
    func_800A9864(D_8018A118_ovl5, 0x1869F, 0x10);
    while (1) {
        if (D_8018EDE1_ovl5 == 0) {
            if (D_800E9AA0[D_8018EDEC_ovl5] == 0) {
                if ((func_800AA934(D_8018A11C_ovl5[0]) == 0) && (func_800AA934(D_8018A11C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A11C_ovl5[0]);
                } else if (func_800AA934(D_8018A11C_ovl5[1]) == 1) {
                    func_800AECC0(0.0f);
                    func_800AED20(0.0f);
                }
            } else if (((u32)D_800E9AA0[D_8018EDEC_ovl5] == 1)) {
                if ((D_800E09D0[omCurrentObj->objId] == 0.0f) || (func_800AA934(D_8018A11C_ovl5[1]) == 0)) {
                    func_800AECC0(2.0f);
                    func_800AED20(2.0f);
                    func_800AA018(D_8018A11C_ovl5[1]);
                }
            }
        } else if ((func_800AA934(D_8018A11C_ovl5[0]) == 1) || (func_800AA934(D_8018A11C_ovl5[1]) == 1)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            func_800AA018(D_8018A11C_ovl5[2]);
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_801813FC_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_801815BC_ovl5(s32 arg1, f32 arg2, f32 arg3) {
    void *temp_v0;

    M2C_MEMCPY_ALIGNED(&sp20[0], &D_80189CE8_ovl5, 0x24);
    *(&sp20[0] + 0x24) = *(&D_80189CE8_ovl5 + 0x24);
    temp_v0 = func_8015C740_ovl5((&sp20[0])[arg1], arg1);
    temp_v0->unk20 = arg2;
    temp_v0->unk24 = arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_801815BC_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_80181644_ovl5(void *arg0, u8 arg1, s32 arg2, s32 idx) {
    ? *var_v0;

    if (arg1) {
        if (arg2 != 0) {
            var_v0 = (idx * 0x18) + &D_8018A018_ovl5;
        } else {
            var_v0 = (idx * 0x18) + &D_8018A060_ovl5;
        }
    } else {
        var_v0 = &D_8018A0A8_ovl5;
    }
    arg0->unk14 = var_v0->unk0;
    arg0->unk15 = var_v0->unk4;
    arg0->unk16 = var_v0->unk8;
    arg0->unk18 = var_v0->unkC;
    arg0->unk19 = var_v0->unk10;
    arg0->unk1A = var_v0->unk14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80181644_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_801819C8_ovl5(s32 arg0, u8 arg1, s32 arg2) {
    void *temp_s0;

    temp_s0 = (arg1 * 0x18) + &D_80189FE8_ovl5;
    func_80181644_ovl5(
        func_801815BC_ovl5(
            arg2 / 100,
            temp_s0->unk0,
            temp_s0->unk4
        ),
        (D_8018EDE1_ovl5 == arg1) & 0xFF,
        arg1 == 0,
        0
    );
    func_80181644_ovl5(func_801815BC_ovl5(arg0, (arg2 % 100) / 10, temp_s0->unk8, temp_s0->unkC), (D_8018EDE1_ovl5 == arg1) & 0xFF, arg1 == 0, 1);
    func_80181644_ovl5(func_801815BC_ovl5(arg0, arg2 % 10, temp_s0->unk10, temp_s0->unk14), (D_8018EDE1_ovl5 == arg1) & 0xFF, arg1 == 0, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_801819C8_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_80181AEC_ovl5(s32 arg0) {
    s32 temp_v0;
    s32 var_s0;
    u8 var_s1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(*(&gEntityGObjProcessArray5 + (omCurrentObj->objId * 4)), func_800B1434);
    func_8000A5FC(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    temp_v0 = D_8018EDE4_ovl5;
    var_s1 = D_8018EDE1_ovl5;
    var_s0 = temp_v0 + 1;
loop_1:
    if ((var_s0 != temp_v0) || (var_s1 != D_8018EDE1_ovl5)) {
        func_800ACBDC(arg0);
        var_s0 = D_8018EDE4_ovl5;
        var_s1 = D_8018EDE1_ovl5;
        func_801819C8_ovl5(arg0, 0, var_s0 + 1);
    }
    ohSleep(1);
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80181AEC_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_80181C00_ovl5(s32 arg0) {
    s32 temp_v0;
    s32 var_s0;
    u8 var_s1;

    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(*(&gEntityGObjProcessArray5 + (omCurrentObj->objId * 4)), func_800B1434);
    func_8000A5FC(arg0, &func_800AD1A0, 0xA, 0x80000000, 0xA);
    temp_v0 = D_8018EDE8_ovl5;
    var_s1 = D_8018EDE1_ovl5;
    var_s0 = temp_v0 + 1;
loop_1:
    if ((var_s0 != temp_v0) || (var_s1 != D_8018EDE1_ovl5)) {
        func_800ACBDC(arg0);
        var_s0 = D_8018EDE8_ovl5;
        var_s1 = D_8018EDE1_ovl5;
        func_801819C8_ovl5(arg0, 1, var_s0 + 1);
    }
    ohSleep(1);
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80181C00_ovl5.s")
#endif

#ifdef NON_MATCHING
void func_80181D00_ovl5(GObj *arg0) {
    u32 i;
    UnkStruct800AC954 *spobj;
    f32 *pos2D;

    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B1434);
    func_8000A5FC(arg0, &func_800AD1A0, 10, 0x80000000, 10);
    spobj = func_8015C740_ovl5(arg0, &D_8018A0C0_ovl5);
    i = D_8018EDE1_ovl5 + 1;
    while (1) {
        if (i != D_8018EDE1_ovl5) {
            pos2D = D_8018A0E0_ovl5[D_8018EDE1_ovl5];
            i = D_8018EDE1_ovl5;
            spobj->xOffset = pos2D[0];
            spobj->yOffset = pos2D[1];
        }
        ohSleep(1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80181D00_ovl5.s")
#endif

void func_80181DF8_ovl5(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = func_80181E58_ovl5;
    func_800A9864(sKirbyHeadphoneModel, 0x1869F, 0x10);
    func_800AFA14();
}

void func_80181E58_ovl5(s32 arg0) {
    Vector pos;
    Vector angle;
    Vector scale;

    func_800B2340(&pos.x, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = pos.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
    func_800B26D8(&angle, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesAngleXArray[omCurrentObj->objId] = angle.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = angle.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = angle.z;
    func_800B2928(&scale, D_800DFBD0[D_8018EDEC_ovl5][9], D_8018EDEC_ovl5);
    gEntitiesScaleXArray[omCurrentObj->objId] = scale.x;
    gEntitiesScaleYArray[omCurrentObj->objId] = scale.y;
    gEntitiesScaleZArray[omCurrentObj->objId] = scale.z;
}

#ifdef MIPS_TO_C
void func_80181FD8_ovl5(void) {
    D_8018EDE0_ovl5 = 0;
    D_8018EDE4_ovl5 = 0;
    D_8018EDE8_ovl5 = 0;
    D_8018EDE1_ovl5 = 0;
    D_8018EDF4_ovl5 = 0x1869F;
    D_8018EDF8_ovl5 = 0x1869F;
    D_8018EDFC_ovl5 = sSoundCount;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80181FD8_ovl5.s")
#endif

#ifdef MIPS_TO_C
void func_80182024_ovl5(void) {
    func_800A5744(0, 0, 0);
    func_800A5A14(0, 0x10, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_80182024_ovl5.s")
#endif

#ifdef MIPS_TO_C
void func_8018205C_ovl5(s32 arg0) {
    if ((D_800D6B24 == 0) && (D_8018EDE0_ovl5 != 0)) {
        func_80182024_ovl5();
    }
}
#else
void func_8018205C_ovl5(s32 arg0);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_8018205C_ovl5.s")
#endif

void func_8018209C_ovl5(void) {
    func_800A41B0(2.0f);
    func_8000BDF0(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A8724(0);
    func_800A6BC0(0xA);
    func_800AAF34(0x10, D_8018A0F0_ovl5, 0);
    func_800A71A0(0x10);
    func_80181FD8_ovl5();
    D_800E98E0[func_800AEC70(0xB, 0, 0x70)] = 0;
    D_800E98E0[func_800AEC70(0xB, 0, 0x70)] = 1;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 2;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 8;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 3;
    D_800E98E0[request_track_general(0xB, 0, 0x70)] = 4;
    D_800E98E0[func_800AEC70(0xB, 0, 0x70)] = 5;
    D_800E98E0[func_800AEC70(0xB, 0, 0x70)] = 6;
    D_800E98E0[func_800AEC70(0xB, 0, 0x70)] = 7;
    HS64_omMakeGObj(0, &func_8018205C_ovl5, 0x1A, 0x80000000);
    func_800A5744(0, 0, 0);
    func_800A5A14(0xFF, -0x10, 0);
}

void func_80182288_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189D10_ovl5);
}

// this fb clearing function again
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_11/func_801822AC_ovl5.s")
