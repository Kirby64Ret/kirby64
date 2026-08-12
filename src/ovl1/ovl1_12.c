#include "common.h"

struct UnkStruct800ED4E0 {
    /* 0x00 */ u32 unk0;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u32 unk14;
    /* 0x18 */ u32 unk18;
    /* 0x1C */ u32 unk1C;
    /* 0x20 */ u32 unk20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ u32 unk28;
    /* 0x2C */ u32 unk2C;
    /* 0x30 */ u32 unk30;
    /* 0x34 */ u32 unk34;
    /* 0x38 */ u32 unk38;
    /* 0x3C */ u32 unk3C;
    /* 0x40 */ u8 unk40[16];
};

extern struct UnkStruct800ED4E0 *D_800ED4E0[];
extern struct UnkStruct800ED4E0 D_8022B7C0;
extern struct UnkStruct800ED4E0 D_8022AED8;
extern struct UnkStruct800ED4E0 D_8022B428;
extern s32 D_800D6F3C;
extern s32 D_800ED4EC;
extern s32 gKirbyLives;
extern s32 gKirbyStars;
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
extern u32 D_800D6F38;
extern u32 D_800D6E54;
extern u32 D_800D6E64;
extern u32 saveHUDTheme;

void set_hard_rng_seed(u32);
void set_soft_rng_seed(u32);
void func_800BB440(void);
void func_800BBC6C(void);
void func_800BBDC4(void);

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
    saveHUDTheme = D_800ED4E0[0]->unk34;
    set_soft_rng_seed(D_800ED4E0[0]->unk38);

    for (i = 0; i < 16; i++) {
        D_800D6E20[i] = D_800ED4E0[0]->unk40[i];
    }

    D_800D6F38 = D_800ED4E0[0]->unk3C;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_12/func_800BBDC4.s")

// last function in this translation unit: its listing carries the
// TU's trailing alignment padding, which C does not emit
#ifdef NON_MATCHING
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_12/func_800BBF60.s")
#endif