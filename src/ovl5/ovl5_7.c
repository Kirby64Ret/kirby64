#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "ovl1/game.h"
#include "unk_structs/D_800D7178.h"

extern s32 D_800D6B24;
extern u8 D_8018ED00_ovl5;
extern s32 D_8018ED3C_ovl5;
extern s32 D_801891E4_ovl5[][4];
extern Gfx D_80188958_ovl5[];
void func_8015CCA8_ovl5(s32);
void func_8017C938_ovl5(void);
extern u8 D_8018ED38_ovl5;
extern u8 D_8018ED39_ovl5;
extern u8 D_8018ED3A_ovl5;
extern u8 D_8018ED3B_ovl5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_80179E00_ovl5.s")

s32 func_80179F20_ovl5(void) {
    if (D_8018ED38_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED39_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED3A_ovl5 == 1) {
        return 1;
    }
    if (D_8018ED3B_ovl5 == 1) {
        return 1;
    }
    return 0;
}

void func_80179F90_ovl5(void) {
    gGameState = D_800D7178.unk44;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_80179FA4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A070_ovl5.s")

void func_8017A120_ovl5(void) {
}

s32 func_8017A128_ovl5(s32 arg0) {
    switch (arg0) {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 3;
    case 3:
        return 2;
    }
}

s32 func_8017A174_ovl5(s32 arg0, s32 arg1) {
    switch (arg0) {
    case 0:
        return arg1 == 2;
    case 1:
        return arg1 == 0;
    case 2:
        return arg1 == 3;
    case 3:
        return arg1 == 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A1CC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A360_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A3E4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A588_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A670_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017A71C_ovl5.s")

void func_8017AB80_ovl5(void) {
    func_8015CCA8_ovl5(D_800D7178.unk44);
}

void func_8017ABA4_ovl5(void) {
    func_8015CCA8_ovl5(D_800D7178.unk44);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017ABC8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AD54_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017AEE8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B018_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B230_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B35C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B560_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B6B4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017B848_ovl5.s")

struct DObj *func_8017B9F4_ovl5(s32 arg0, s32 arg1) {
    return D_800DFBD0[D_8018ED3C_ovl5][D_801891E4_ovl5[arg0][arg1]];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BA34_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017BED8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C084_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C1FC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C34C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C4CC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C61C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C6C8_ovl5.s")

void func_8017C7D8_ovl5(void) {
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 0xB;
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 0xC;
}

void func_8017C834_ovl5(void) {
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 7;
    D_800E98E0[request_track_3(0xA, 0, 0x70)] = 8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C890_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017C938_ovl5.s")

extern s32 D_800D6B24;
extern u8 D_8018ED00_ovl5;
void func_8017C938_ovl5(void);

void func_8017CA90_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018ED00_ovl5 != 0) {
        func_8017C938_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017CAD0_ovl5.s")

void func_8017CC18_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80188958_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017CC3C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017CCE0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_7/func_8017D6F8_ovl5.s")

