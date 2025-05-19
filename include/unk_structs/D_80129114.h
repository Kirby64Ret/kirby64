struct Unk80129114_4_4_8 {
    u32 unk0;
    f32 unk4;
    u32 unk8;
}; // size: 0xC

struct Unk80129114_4_4 {
    u8 unk0;
    s16 unk2;
    u32 unk4;
    struct Unk80129114_4_4_8 *unk8;
    f32 unkC;
};

struct Unk80129114_4_0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    s16 unkC;
};

struct Unk80129114_4 {
    struct Unk80129114_4_0 *unk0;
    struct Unk80129114_4_4 *unk4;
    u32 unk8;
    u8 unkC;
    u8 unkD;
    s16 unkE;
};

struct UnkStruct80129114 {
    u32 unk0;
    struct Unk80129114_4 *unk4;
};
extern struct UnkStruct80129114 *D_80129114;