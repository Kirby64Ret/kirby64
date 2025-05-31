#ifndef SPOBJ_H
#define SPOBJ_H

#include <PR/gs2dex.h>

struct SPObj_68 {
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u16 unkA;
    u16 unkC;
    u16 unkE;
    u32 unk10;
    u32 unk14;
};

// SPObj_RenderFlags
#define SPOBJ_RF_AA  0x1
#define SPOBJ_RF_XLU 0x2

enum SPObj_ColorType {
    SPOBJ_CT_NONE = 0,
    SPOBJ_CT_1,
    SPOBJ_CT_PRIM_TEX,
    SPOBJ_CT_PRIM_ENV_TEX,
    SPOBJ_CT_PRIM_TEX_EDGE,
};

struct SPObj_40_A0 {
    u32 _000[0x60];
};

// spobj? according to debug string
typedef struct SPObj {
    struct SPObj *next;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 renderFlags;
// 0x14
    u8 primColorRed;
    u8 primColorGreen;
    u8 primColorBlue;
    u8 primColorAlpha;
// 0x18
    u8 envColorRed;
    u8 envColorGreen;
    u8 envColorBlue;
    u8 envColorAlpha;
// 0x1C
    u16 width;
    u16 height;
// 0x20
    f32 xOffset;
    f32 yOffset;
    f32 unk28;
    f32 unk2C;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u32 unk3C;
    struct SPObj_40_A0 *unk40; // 0x60 bytes long
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    u16 unk58;
    u16 unk5A; // flag1
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    struct SPObj_68 *unk68;
    u32 unk6C;
    void *unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
    u32 unk84;
    uObjMtx *unk88;
    u32 unk8C;
    u32 unk90[4];
    struct SPObj_40_A0 *unkA0; // same struct as unk40
    u32 unkA4;
    u32 unkA8;
    u32 unkAC;
    u32 unkB0[2];
    u16 unkB8;
    u16 unkBA; // flag2
} SPObj;

#endif // SPOBJ_H
