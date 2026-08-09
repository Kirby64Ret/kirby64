#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"

extern Gfx D_801874A0_ovl5[];
extern u8 D_8018EA00_ovl5[];
extern Vector2 D_8018ECB8_ovl5[];
extern f32 D_8018EB48_ovl5[];
void play_music(s32, s32);
void func_800BB3F0(void);
extern f32 D_80187C94_ovl5[];
extern s32 D_8018E998_ovl5[];
extern u8 D_8018EB58_ovl5[];

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8016FB80_ovl5.s")

void func_8016FD54_ovl5(void) {
    play_music(0, 0x3E);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8016FD78_ovl5.s")

Vector2 *func_8016FF60_ovl5(Vector2 *arg0, s32 arg1) {
    *arg0 = D_8018ECB8_ovl5[arg1];
    return arg0;
}

s32 func_8016FF88_ovl5(s32 arg0) {
    if (arg0 == 0xF || arg0 == 0x10 || arg0 == 0x11 || arg0 == 0x12 || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

s32 func_8016FFC4_ovl5(s32 arg0) {
    if (arg0 == 0xA || arg0 == 0x13) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8016FFE8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170098_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170464_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170584_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017068C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801707B0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170820_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80170884_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017113C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171538_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801716E0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171768_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171868_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171950_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80171E6C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801720D8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801721CC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017232C_ovl5.s")

u8 func_80172B10_ovl5(s32 arg0, s32 arg1) {
    return D_8018EA00_ovl5[arg0 * 82 + arg1];
}

Vector *func_80172B38_ovl5(Vector *arg0, s32 arg1, s32 arg2) {
    Vector sp4;

    sp4.x = D_80187C94_ovl5[arg1];
    sp4.y = 0.0f;
    sp4.z = arg2 * 450.0f;
    *arg0 = sp4;
    return arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80172B98_ovl5.s")

s32 func_80172C50_ovl5(s32 arg0) {
    if (arg0 == 0x14 || arg0 == 0x28 || arg0 == 0x3C) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80172C7C_ovl5.s")

void func_80173564_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E9C60[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801735A4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173778_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173A38_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80173EBC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174044_ovl5.s")

void func_80174328_ovl5(GObj *arg0) {
    D_800E2410[omCurrentObj->objId] = D_8018EB48_ovl5[D_800E98E0[omCurrentObj->objId]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174368_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017462C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017485C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174900_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80174AE0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175518_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017559C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175808_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801758AC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175A28_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175AD0_ovl5.s")

s32 func_80175B70_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_80175B8C_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_80175BB0_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175BD4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175DBC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175E98_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80175F50_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176108_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176170_ovl5.s")

void func_801764F0_ovl5(void) {
    func_800BB3F0();
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176530_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801765EC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017685C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801769D8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176A80_ovl5.s")

void func_80176EC8_ovl5(u8 *arg0, u16 *arg1) {
    arg0[0x14] = arg1[0];
    arg0[0x15] = arg1[1];
    arg0[0x16] = arg1[2];
    arg0[0x18] = arg1[3];
    arg0[0x19] = arg1[4];
    arg0[0x1A] = arg1[5];
}

void func_80176EFC_ovl5(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80176F04_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017712C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_801773C4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177524_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_8017783C_ovl5.s")

void func_80177A0C_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_801874A0_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_5/func_80177A30_ovl5.s")

