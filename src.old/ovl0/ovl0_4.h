#ifndef _MAIN_4_H_
#define _MAIN_4_H_

struct UnkStruct8004A7F8 {
	u8 unk0;
	u8 filler[3];
	Gfx **unk4;
	Gfx **unk8;
	Gfx **unkC;
	Gfx **unk10;
};

struct unkAddr8004A7C8_2 {
    u8 filler[0x3C];
    f32 x;
    f32 y;
    f32 z;
};

struct unkAddr8004A7C8 {
    u8 filler[0x2C];
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    struct unkAddr8004A7C8_2* unk3C;
};

// extern struct unkAddr8004A7C8* D_8004A7C8;
struct UnkStruct80014264 {
    struct UnkStruct80014264 *unk0;
    struct UnkStruct80014264 *unk4;
    struct UnkStruct80014264 *unk8;
    u32 unkC;
    struct UnkStruct80014264 *unk10;
    u32 unk14;
    u32 *unk18;
    u32 unk1C;
    f32 unk20;
    u32 unk24;
    u32 *unk28;
    void (*unk2C)(void);
};
// 00000000
// 00000000
// 00000000
// 801D32A0
// 3E4CCCCD
// 3E4CCCCD
// 3E4CCCCD
// 00000000
// 00000000
// 00000100
// 801D32A0
// 00000000
// 00000000
// 00000000
// 00000000
// 00000000
// 00000000
// FF7FFFFF
// 40000000
// 00000000
// 00000000
// 00000000

#endif // _MAIN_4_H_
