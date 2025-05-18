#ifndef D_800E1B50_H
#define D_800E1B50_H

// TODO: are any of these sub-structs supposed to be more well-known types?

struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C {
    u8 filler0[8];
    f32 unk8;
};

struct SubSub800E1B50_Unk88_UnkC_Unk0 {
    u8 filler0[0x10];
    f32 unk10;
    s32 unk14;
    s32 unk18;
    struct SubSub800E1B50_Unk88_UnkC_Unk0_Unk1C *unk1C;
};

struct SubSub800E1B50_Unk88_UnkC_Unk4 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
};

struct SubSub800E1B50_Unk88_UnkC {
    struct SubSub800E1B50_Unk88_UnkC_Unk0 *unk0;
    struct SubSub800E1B50_Unk88_UnkC_Unk4 *unk4;
};

struct Sub800E1B50_Unk88 {
    f32 unk0;
    u32 unk4;
    u32 unk8;
    struct SubSub800E1B50_Unk88_UnkC *unkC;
    u32 unk10;
};

struct Sub800E1B50_Unk94 {
    u32 pad[4];
    u32 unk10;
    u32 unk14;
    u32 unk18;
    // sound
    u32 unk1C;
};

struct Sub800E1B50 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    f32 unk10;
    u32 unk14;
    f32 unk18;
    u32 unk1C;
    u8 unk20;
};

struct Sub800E1B50_34_4C {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
};

struct Sub800E1B50_Unk34 {
    u8 pad[0x4C];
    struct Sub800E1B50_34_4C *unk4C;
};
struct Sub800E1B50_Unk84 {
    u32 unk0;
    // xyz?
    f32 unk4;
    f32 unk8;
    f32 unkC;

    u32 unk10;
    u32 unk14;
    u32 unk18;

    f32 unk1C;
    f32 unk20;
    f32 unk24;

    u32 unk28;
    u32 unk2C;

    u8 fill[0x20];
    u8 unk50;
};

struct Sub800E1B50_Unk98 {
    s8 unk0[7]; // same number of bytes as the number of functions in the struct :think:
    void (*func8)(GObj *);
    void (*funcC)(GObj *);
    void (*func10)(GObj *);
    void (*func14)(GObj *);
    void (*func18)(GObj *);
    void (*func1C)(GObj *);
    void (*func20)(GObj *);
};

struct UnkStruct800E1B50 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    f32 unk18;
    f32 unk1C;
    u32 unk20;
    u32 unk24;
    f32 unk28; // for fire enemy, ~0.29 when moving left, ~0.36 when moving right
    u32 unk2C;
    u32 unk30;
    struct Sub800E1B50_Unk34 *unk34;
    u8 unk38;
    s8 unk39;
    u8 unk3A;
    u8 unk3B;
    u8 unk3C; // used as a turnaround timer?
    u8 unk3D;
    u8 unk3E;
    u8 unk3F;
    u8 unk40;
    u8 unk41;
    u8 unk42;
    u8 unk43;
    u32 unk44;
    int (*unk48)(struct Sub800E1B50_Unk84*);
    u8 pad2 [0x14];
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    struct Sub800E1B50 *unk80;
    struct Sub800E1B50_Unk84 *unk84;
    struct Sub800E1B50_Unk88 *unk88;
    s32 *unk8C;
    u32 unk90;
    struct Sub800E1B50_Unk94 *unk94;
    struct Sub800E1B50_Unk98 *unk98;
    void (*unk9C)(GObj *); // educated guess at arguments
};

extern struct UnkStruct800E1B50 *D_800E1B50[];

#endif
