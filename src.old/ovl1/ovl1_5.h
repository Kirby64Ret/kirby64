#include <PR/gs2dex.h>

#ifndef OVL1_5_H
#define OVL1_5_H

struct UnkStruct800AC954_68 {
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u32 unk10;
    u32 unk14;
};

// spobj? according to debug string
struct UnkStruct800AC954 {
    struct UnkStruct800AC954 *unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 renderFlags;

    u8 primColorRed;
    u8 primColorGreen;
    u8 primColorBlue;
    u8 primColorAlpha;

    u8 envColorRed;
    u8 envColorGreen;
    u8 envColorBlue;
    u8 envColorAlpha;

    u16 width;
    u16 height;
    f32 xOffset;
    f32 yOffset;
    f32 unk28;
    f32 unk2C;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u32 unk3C;
    struct UnkStruct800AC954_40 *unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    struct UnkStruct800AC954_58 *unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    struct UnkStruct800AC954_68 *unk68;
    u32 unk6C;
    struct UnkStruct800AC954_68 *unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
    u32 unk84;
    uObjMtx *unk88;
};

void func_800AD1A0(void *);


#endif
