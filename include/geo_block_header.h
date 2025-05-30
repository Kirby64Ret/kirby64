#include "ultra64.h"
#include "types.h"

struct EntryPoint {
	u32 marker;
	Gfx *dl;
};

struct EntryPoint_1C {
    Gfx *dl0;
    Gfx *dl1;
    Gfx *dl2;
    u32 unkC;
    u32 unk10;
    u32 unk14;
};

struct DisplayListPair {
	Gfx *dl1;
	Gfx *dl2;
};

struct Layout {
	u16 flag;
	u16 command;
	struct EntryPoint *entry;
	Vec3f translation;
	Vec3f rotation;
	Vec3f scale;
};

struct GeoBlockHeader {
   void *entriesOrLayoutsOrDL;
   struct TextureScroll ***texScrollHeader;
   u32 renderMode;
   Gfx **imgRefs;
   Gfx **vtxRefs;
   u32 animCount;
   u32 *anims;
   u32 layoutCount;
};


struct TextureScroll {
    // start of a texture scroll struct?
    /* 0x08 */ u16 h_8;
    /* 0x0A */ s8 fmt1;
    /* 0x0B */ s8 siz1;
    /* 0x0C */ u32 *textures;
    /* 0x10 */ u16 stretch;
    /* 0x12 */ u16 sharedOffset;
    /* 0x14 */ u16 t0w;
    /* 0x16 */ u16 t0h;
    /* 0x18 */ s32 halve;
    /* 0x1C */ f32 xFrac0;
    /* 0x20 */ f32 yFrac0;
    /* 0x24 */ f32 xScale;
    /* 0x28 */ f32 yScale;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ u32 *palettes;
    /* 0x38 */ u16 flags;
    /* 0x3A */ s8 fmt2;
    /* 0x3B */ s8 siz2;
    /* 0x3C */ u16 w2;
    /* 0x3E */ u16 h2;
    /* 0x40 */ u16 t1w;
    /* 0x42 */ u16 t1h;
    /* 0x44 */ f32 xFrac1;
    /* 0x48 */ f32 yFrac1;
    /* 0x4C */ f32 unk_4C;
    /* 0x50 */ s32 unk_50;
    /* 0x54 */ s32 unk_54;
    /* 0x58 */ ColorPack primColor;

    /* 0x5C */ u8 unk_5C;
    /* 0x5D */ s8 minLOD;
    /* 0x5E */ u8 unk_5E;
    /* 0x5F */ u8 unk_5F;

    /* 0x60 */ ColorPack envColor;
    /* 0x64 */ ColorPack blendColor;
    /* 0x68 */ ColorPack lightColor1;
    /* 0x6C */ ColorPack lightColor2;
    /* 0x70 */ u32 unk70;
    /* 0x74 */ u32 unk74;
    /* 0x78 */ u32 unk78;
    /* 0x7C */ u32 unk7C;
};
