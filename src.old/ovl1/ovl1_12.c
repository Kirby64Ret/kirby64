#include <ultra64.h>
#include <macros.h>

#include "ovl1_12.h"
extern struct UnkStruct800ED4E0 *D_8022B7C0, *D_8022AED8, *D_8022B428;
extern s32 D_800D6F3C;
extern s32 D_800ED4EC;
void func_800BBC6C(void);

void func_800BBBA0(void) {
    if ((D_800D6F3C < 0) || (D_800D6F3C >= 7)) {
        D_800D6F3C = 0;
    }
    switch (D_800D6F3C) {
        case 0:
            D_800ED4EC = 0;
            break;
        case 3:
        case 4:
            D_800ED4E0[0] = &D_8022B7C0;
            func_800BBC6C();
            func_800BB440();
            break;
        case 5:
            D_800ED4E0[0] = &D_8022AED8;
            func_800BBC6C();
            func_800BB440();
            break;
        case 6:
            D_800ED4E0[0] = &D_8022B428;
            func_800BBC6C();
            func_800BB440();
        default:
            break;
    }
}

extern s32 gKirbyLives, gKirbyStars;
extern f32 gKirbyHp;

extern u32 D_800BE4EC;
extern u32 D_800BE52C;
extern u32 D_800BE500;
extern u32 D_800BE530;
extern u32 D_800BE504;
extern u32 D_800BE534;
extern u32 D_800BE508;
extern u32 D_800BE538;
extern u32 D_800BE50C;
extern u32 D_800BE4FC;

extern u32 D_800ED4F4;

extern u8 D_800D6E20[];
extern u32 D_800D6E30;
extern u32 D_800D6F38;

extern u32 D_800D6E54;
extern u32 D_800D6E64;
extern u32 gHudDisplayMode;

void func_800BBC6C(void) {
    u32 i;

    D_800ED4EC = 0;
    D_800ED4F4 = 0;
    set_hard_rng_seed(D_800ED4E0[0]->unk0);
    D_800BE4EC = D_800ED4E0[0]->unk4;
    D_800BE500 = D_800BE52C = D_800ED4E0[0]->unk8;
    D_800BE504 = D_800BE530 = D_800ED4E0[0]->unkC;
    D_800BE508 = D_800BE534 = D_800ED4E0[0]->unk10;
    D_800BE50C = D_800BE538 = D_800ED4E0[0]->unk14;
    D_800BE4FC = D_800ED4E0[0]->unk1C;
    gKirbyLives = D_800ED4E0[0]->unk20;
    gKirbyHp = D_800ED4E0[0]->unk24;
    D_800D6E54 = D_800ED4E0[0]->unk28;
    gKirbyStars = D_800ED4E0[0]->unk2C;
    D_800D6E64 = D_800ED4E0[0]->unk30;
    gHudDisplayMode = D_800ED4E0[0]->unk34;
    set_soft_rng_seed(D_800ED4E0[0]->unk38);

    for (i = 0; i < 16; i++) {
        D_800D6E20[i] = D_800ED4E0[0]->unk40[i];
    }

    D_800D6F38 = D_800ED4E0[0]->unk3C;
}

#include "ovl0/ovl0_2.h"
extern u32 D_800BE4F8;


GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_12/func_800BBDC4.s")

void func_800BBF60(void) {
    switch (D_800D6F3C) {
        case 3:
        case 4:
            func_800BBDC4();
            return;
        case 5:
            func_800BBDC4();
            return;
        case 6:
            func_800BBDC4();
            break;
        case 0:
        default:
            break;
    }
}
