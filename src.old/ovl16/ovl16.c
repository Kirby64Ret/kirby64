#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "buffers.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_8.h"

extern void (*D_801EF4C0_ovl16[])(struct GObj *);
void func_801DB338_ovl16(s32 arg0);
void func_801DB3B8_ovl16(s32 arg0);

extern f32 D_801EFDF0_ovl16, D_801EFDF4_ovl16, D_801EFDF8_ovl16, D_801EFDFC_ovl16;

/*

const f32 D_801EFDF0_ovl16 = 4.712f;
const f32 D_801EFDF4_ovl16 = 9999.0f;
const f32 D_801EFDF8_ovl16 = 0.09f;
const f32 D_801EFDFC_ovl16 = 9.9999f;

*/

void func_801DB1E0_ovl16(s32 arg0) {
    u32 t = -1;

    D_800E1B50[omCurrentObj->objId]->unk39 = t;
    D_800DF150[omCurrentObj->objId] = &func_801DB3B8_ovl16;
    func_801A0D50(&func_801DB338_ovl16);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E17D0[omCurrentObj->objId] = D_801EFDF0_ovl16;
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_801A3280_ovl16();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 9, &D_801EF4C0_ovl16[0]);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x23, &D_801EF4C0_ovl16[9]);
}

void func_801DB338_ovl16(s32 arg0) {
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x23, &D_801EF4C0_ovl16[9]);
}

void func_801DB3B8_ovl16(s32 arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0x1C, &D_801EF4C0_ovl16[44]);
}

u32 func_801DB400_ovl16(void) {
    u32 phi_v1 = 0;

    if (D_800E3050[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosXArray[omCurrentObj->objId] < -260.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = -260.0f;
            phi_v1 = 1;
        }
    } else {
        if (gEntitiesNextPosXArray[omCurrentObj->objId] > 260.0f) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = 260.0f;
            phi_v1 = 1;
        }
    }
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] < 20.0f) {
            gEntitiesNextPosYArray[omCurrentObj->objId] = 20.0f;
            phi_v1 = 1;
        }
    } else if (260.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 260.0f;
        phi_v1 = 1;
    }
    return phi_v1;
}

extern void func_801A3E80(void);
extern s32 D_800DD748[];
#ifdef NON_MATCHING
void func_801DB528_ovl16(s32 arg0) {
    int i,j;

    for (i = 14, j = 0x38; i < 0x3C; i++, j++) {
        if (D_800DD748[i] != -1) {
            if ((D_800E7730[i] == 0) || (D_800E7730[i] == 4)) {
                if ((D_800E77A0[i] != 0x39) && (D_800E77A0[i] != 0x3A)) {
                    if ((D_801EFDF8_ovl16 < D_800E7B20[j]) && (D_800E7B20[j] < D_801EFDF4_ovl16) && (D_800E83E0[j] != 1) && (D_800E0D50[j] != 0)) {
                        gEntityFuncListIDArray[j] = -1;
                        assign_new_process_entry(gEntityGObjProcessArray[j], func_801A3E80);
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DB528_ovl16.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DB698_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DBA54_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DBA98_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DBBCC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DC314_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DC6E4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DC83C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DC8E4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DC990_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DCA84_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DCBF8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DCDC8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD25C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD484_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD4B4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD4E4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD4F8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DD50C_ovl16.s")

void func_801DD9FC_ovl16(s32 arg0) {
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
}

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DDA98_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DDE54_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DDEB0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE030_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE524_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE55C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE670_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE840_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DE8DC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DEA94_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DEAE0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DECF4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DED40_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DF314_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DF62C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFAA0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFC4C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFD48_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFDCC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFE44_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFEC8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801DFF40_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E03EC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E0628_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E06AC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E0724_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E07A8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E0820_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E0CC8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E0F04_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E141C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E16F8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E17E0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E18BC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E1C1C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E1E84_ovl16.s")

u32 func_801E1F40_ovl16(void);
GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E1F40_ovl16.s")

extern const f32 D_801EFF10_ovl16;
extern const f32 D_801EFF14_ovl16;
extern const f32 D_801EFF18_ovl16;
extern const f32 D_801EFF1C_ovl16;
extern const f32 D_801EFF20_ovl16;
extern const f32 D_801EFF24_ovl16;
extern const f32 D_801EFF28_ovl16;
extern const f32 D_801EFF2C_ovl16;
extern const f32 D_801EFF30_ovl16;
extern const f32 D_801EFF34_ovl16;
extern const f32 D_801EFF38_ovl16;
extern const f32 D_801EFF3C_ovl16;
extern const f32 D_801EFF40_ovl16;
extern const f32 D_801EFF44_ovl16;
extern const f32 D_801EFF48_ovl16;
extern const f32 D_801EFF4C_ovl16;


// it's not like i WANTED to match this function or anything :'(
#ifdef NON_MATCHING
void func_801E20D8_ovl16(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 8;
    func_800AA018(0x104E0);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = D_801EFF10_ovl16;
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF14_ovl16;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = D_801EFF18_ovl16;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF1C_ovl16;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = 2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = D_801EFF20_ovl16;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF24_ovl16;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = D_801EFF28_ovl16;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF2C_ovl16;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = D_801EFF30_ovl16;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF34_ovl16;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = D_801EFF38_ovl16;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF3C_ovl16;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = 2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 2.5f;
    D_800EA8A0[omCurrentObj->objId] = D_801EFF40_ovl16;
    D_800E3050[omCurrentObj->objId] = 4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF44_ovl16;
    ohSleep(0x23);
    D_800E3750[omCurrentObj->objId] = D_801EFF48_ovl16;
    ohSleep(5);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = -4.0f;
    D_800E3590[omCurrentObj->objId] = D_801EFF4C_ovl16;
    ohSleep(5);
    D_800E3210[omCurrentObj->objId] = -2.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    ohSleep(0x23);
    if (func_801E1F40_ovl16() != 0) {
        play_sound(0x1B9);
    }
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800DFBD0[omCurrentObj->objId][4]->scale.x = D_800EA6E0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][4]->scale.z = D_800EA6E0[omCurrentObj->objId];
    func_800B33F4();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xB;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E20D8_ovl16.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2820_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2960_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2A28_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2B08_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2C8C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2D88_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E2E44_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E31A4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E3284_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E32CC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E33AC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E34A0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E3518_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E35D4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E3CF0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E4024_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E406C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E4148_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E4350_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E4698_ovl16.s")


#include "unk_structs/D_800D7098.h"

extern f32 D_801EF9C0_ovl16[];
extern f32 D_801EF9C8_ovl16[];
extern f32 D_801EF9D0_ovl16[];

extern f32 D_801EFF88_ovl16;
extern f32 D_801EFF8C_ovl16;
extern f32 D_801EFF90_ovl16;
extern f32 D_801EFF94_ovl16;
extern f32 D_801EFF98_ovl16;
extern f32 D_801EFF9C_ovl16;
extern f32 D_801EFFA0_ovl16;
extern f32 D_801EFFA4_ovl16;
extern f32 D_801EFFA8_ovl16;
extern f32 D_801EFFAC_ovl16;

void func_800FB914(f32);

// good luck :)
#ifdef NON_MATCHING
void func_801E4754_ovl16(s32 arg0) {
    int phi_s0;
    f32 phi_f2;
    f32 temp_f12;
    s32 temp_v0_4;
    f32 phi_f2_3;
    f32 phi_f2_4;
    f32 phi_f2_5;
    f32 phi_f12;

    D_800DDFD0[omCurrentObj->objId] = 0x11;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 1;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E3AD0[omCurrentObj->objId] = 4.0f;
    for (phi_s0 = 0; phi_s0 < 60; phi_s0++) {
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
    }
    for (phi_s0 = 0; phi_s0 < 60; phi_s0++) {
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    play_sound(0x1B3);
    func_800AA018(0x104C4);
    for (phi_s0 = 0; phi_s0 < 4; phi_s0++) {
        temp_v0_4 = func_801ACC34_ovl16(0x34, 0);
        if (temp_v0_4 != 0) {
            D_800E8E60[temp_v0_4] = 1;
            D_800E98E0[temp_v0_4] = phi_s0;
        }
    }
    func_800AF27C();
    D_800D7098.unk10++;
    ohSleep(0x10);
    for (phi_s0 = 0; phi_s0 < 14; phi_s0++) {    
        if (gEntitiesNextPosXArray[0] < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            D_800E3590[omCurrentObj->objId] = -0.5f;
        } else {
            D_800E3590[omCurrentObj->objId] = 0.5f;
        }
        ohSleep(1);
    }
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_801EFF88_ovl16;
    func_800AA154(0x104C2);
    D_800D7098.unk10++;
    ohSleep(1);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_801EFF8C_ovl16;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (gEntitiesNextPosYArray[omCurrentObj->objId] > 35.0f) {
        ohSleep(1);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_f12 = D_800E3750[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f12;
    D_800E3210[omCurrentObj->objId] = temp_f12;
    D_800E3050[omCurrentObj->objId] = temp_f12;
    D_800E3C90[omCurrentObj->objId] = D_801EFF90_ovl16;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = 35.0f;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_800FB914(temp_f12);//, 2, D_800E3C90);
    func_800AA018(0x104C6);
    ohSleep(0x1E);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    play_sound(0x1B4);
    // ternary?
    if (gEntitiesNextPosXArray[omCurrentObj->objId] < 0.0f) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = D_801EF9C0_ovl16[D_800EA1A0[omCurrentObj->objId]];
    phi_f2 = ABSF(gEntitiesNextPosXArray[omCurrentObj->objId]);
    D_800EA8A0[omCurrentObj->objId] = (phi_f2 + 200.0f) / 12.0f;
    D_800EA8A0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * 2.0f;
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = D_801EFF94_ovl16;
    }
    D_800E3590[omCurrentObj->objId] = D_801EF9C8_ovl16[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    // if (D_800EA8A0[omCurrentObj->objId] >= 2) {
    for (phi_s0 = 1; phi_s0 < (s32) D_800EA8A0[omCurrentObj->objId]; phi_s0++) {
        if (ABSF(gEntitiesNextPosXArray[omCurrentObj->objId]) <= 200.0f) {
            break;
        } else {
            ohSleep(1);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_801EF9D0_ovl16[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_801EFF98_ovl16;
    play_sound(0x1B4);
    // ternary?
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = D_801EF9C0_ovl16[D_800EA1A0[omCurrentObj->objId]];
    D_800EA8A0[omCurrentObj->objId] = D_801EFF9C_ovl16;
    D_800EA8A0[omCurrentObj->objId] = 2.0f * D_800EA8A0[omCurrentObj->objId];
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = D_801EFFA0_ovl16;
    }
    D_800E3590[omCurrentObj->objId] = D_801EF9C8_ovl16[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    for (phi_s0 = 1; phi_s0 < (s32) D_800EA8A0[omCurrentObj->objId]; phi_s0++) {
    // if (D_800EA8A0[omCurrentObj->objId] >= 2) {
        phi_f2_3 = ABSF(gEntitiesNextPosXArray[omCurrentObj->objId]);
        if (phi_f2_3 <= 200.0f) {
            break;
        } else {
            ohSleep(1);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_801EF9D0_ovl16[D_800EA1A0[omCurrentObj->objId]];
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_801EFFA4_ovl16;
    play_sound(0x1B4);
    // ternary?
    if (D_800EA1A0[omCurrentObj->objId] != 0) {
        D_800EA1A0[omCurrentObj->objId] = 0;
    } else {
        D_800EA1A0[omCurrentObj->objId] = 1;
    }
    D_800E3050[omCurrentObj->objId] = D_801EF9C0_ovl16[D_800EA1A0[omCurrentObj->objId]];
    phi_f2_4 = ABSF(gEntitiesNextPosXArray[omCurrentObj->objId]);
    D_800EA8A0[omCurrentObj->objId] = phi_f2_4 / 12.0f;
    D_800EA8A0[omCurrentObj->objId] = 2.0f * D_800EA8A0[omCurrentObj->objId];
    if (D_800EA8A0[omCurrentObj->objId] == 0.0f) {
        D_800EA8A0[omCurrentObj->objId] = D_801EFFA8_ovl16;
    }
    D_800E3590[omCurrentObj->objId] = D_801EF9C8_ovl16[D_800EA1A0[omCurrentObj->objId]] / D_800EA8A0[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] -= D_800E3590[omCurrentObj->objId];
    ohSleep(1);
    // if (D_800EA8A0[omCurrentObj->objId] >= 2) {
    for (phi_s0 = 1; phi_s0 < (s32) D_800EA8A0[omCurrentObj->objId]; phi_s0++) {
        phi_f12 = ABSF(D_800E3590[omCurrentObj->objId] + (gEntitiesNextPosXArray[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]));
        phi_f2_5 = ABSF(gEntitiesNextPosXArray[omCurrentObj->objId]);
        if (!(phi_f2_5 < phi_f12)) {
            break;
        } else {
            ohSleep(1);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = D_801EFFAC_ovl16;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0x17;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E4754_ovl16.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E538C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E5734_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E57FC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E58D8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E59B4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E5A28_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E5AE4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E62C0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E68E0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E69A8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E6A84_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E6B60_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E6BD4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E6C90_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E6E0C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E7054_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E72C4_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E730C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E74E8_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E75DC_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E7650_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E788C_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E7A38_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E7BD0_ovl16.s")

GLOBAL_ASM("asm/non_matchings/ovl16/ovl16/func_801E7EE0_ovl16.s")
 