#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"

extern s32 D_8012E860;

extern void func_800B1900(s32);
extern void func_80111C4C(s32);
extern s32 func_80168408_ovl3(s32, s32, f32);
#include "Player.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015AC90_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ADF8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B060_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B190_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015BBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C7F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CC84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CF9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E43C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E754_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E8E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ED2C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015F950_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160378_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160A50_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160D84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161058_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161CE0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161D94_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161EC0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162000_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162150_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801625B8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016264C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801632B8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801634D4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801636A4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163AC0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163C48_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163D84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163ED0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164058_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164130_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801644EC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801646A4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164890_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164914_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164EA8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801651FC_ovl3.s")

void func_801653AC_ovl3(s32 arg0) {
    if ((gKirbyState.unk30 != 0) || (gKirbyState.action != 0xE)) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801653F4_ovl3.s")

void func_801654CC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165504_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801657BC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016593C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165CD8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801660F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166210_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166588_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166BB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166E2C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016714C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167290_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167330_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167578_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016769C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167800_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167974_ovl3.s")

void func_80167B48_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167B80_ovl3.s")

void func_80167CCC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167D04_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80168408_ovl3.s")

s32 func_8016854C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp = func_80168408_ovl3(arg0, arg1, arg2);

    if (temp != 0) {
        func_80111C4C(temp);
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016858C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801693C4_ovl3.s")

