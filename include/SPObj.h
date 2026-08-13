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

#ifdef PORT
/* PORT (LP64) shape of the SPObj.
 *
 * On the N64 the struct embeds one 0x60-byte RSP command block twice, at
 * 0x40 and 0xA0 (unk12 selects which copy the CPU rewrites while the RSP
 * reads the other), and the named fields unk40..unkBA are aliased views
 * into those blocks (`&sprite->unk40` IS the block base). Under LP64 the
 * pointer-typed alias fields inflate and 8-align, shearing every alias off
 * the bytes the readers (SPOBJ_GFX in src/ovl1/sprite.c) actually read.
 *
 * So under PORT the two blocks are embedded directly, with their real GBI
 * types (SPObjGfx below), and the alias fields are gone: all block access
 * goes through ->gfx[i]. The only aliases other files use, unk5A/unkBA
 * ("flag1"/"flag2" = block+0x1A = uObjBg imageFlip of buffer 0/1), are kept
 * as anonymous-union overlays pinned to the LP64 position of imageFlip so
 * the ovl4/ovl5 writers keep compiling and land on the right bytes.
 *
 * N64 block map (block+off)          typed member (per kind)
 *   +0x00 uObjBg        (kind 0/1)   gfx[i].b.bg
 *   +0x00 uObjTxtr txtr (kind 2/3/4) gfx[i].t.ts.txtr
 *   +0x18 uObjSprite    (kind 2/3/4) gfx[i].t.ts.sprite
 *   +0x28 uObjTxtr tlut (kind 0/1)   gfx[i].b.tlut
 *   +0x30 uObjTxtr tlut (kind 2/3/4) gfx[i].t.tlut
 *   +0x48 uObjMtx       (kind 3/4)   gfx[i].t.mtx
 */
/* With gs2dex.h's PORT wire-format image words (u32, not u64*), every member
 * offset below matches the N64 block exactly and the whole union is the true
 * 0x60-byte RSP command block. */
typedef union SPObjGfx {
    struct {
        uObjBg bg;        /* +0x00 */
        uObjTxtr tlut;    /* +0x28 */
    } b;
    struct {
        uObjTxSprite ts;  /* txtr +0x00, sprite +0x18 */
        uObjTxtr tlut;    /* +0x30 */
        uObjMtx mtx;      /* +0x48 */
    } t;
} SPObjGfx;

typedef struct SPObj {
    struct SPObj *next;
    u32 unk4;   /* owning GObj, stored 32-bit (the port keeps game RAM low) */
    u32 unk8;
    u32 unkC;
    u8 unk10;   /* kind */
    u8 unk11;
    u8 unk12;   /* which gfx[] copy the CPU currently rewrites */
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
    f32 xScale;
    f32 yScale;
    f32 unk30;
    f32 unk34;
    f32 unk38;
    u32 unk3C;
    union {
        SPObjGfx gfx[2]; /* double-buffered RSP command blocks */
        struct {
            u8 pad5A_[__builtin_offsetof(uObjBg, s.imageFlip)];
            u16 unk5A; /* flag1: gfx[0] bg imageFlip (block+0x1A on N64) */
            u8 padBA_[sizeof(SPObjGfx) - sizeof(u16)];
            u16 unkBA; /* flag2: gfx[1] bg imageFlip */
        };
    };
} SPObj;

/* Writers and readers must agree on the block layout, and the aliases must
 * land on the bytes the block writers write. */
_Static_assert(sizeof(SPObjGfx) == 0x60, "SPObjGfx wire size");
_Static_assert(__builtin_offsetof(SPObj, gfx) == 0x48, "gfx[0] offset");
_Static_assert(__builtin_offsetof(SPObj, unk5A) ==
               __builtin_offsetof(SPObj, gfx[0].b.bg.s.imageFlip), "unk5A alias");
_Static_assert(__builtin_offsetof(SPObj, unkBA) ==
               __builtin_offsetof(SPObj, gfx[1].b.bg.s.imageFlip), "unkBA alias");
_Static_assert(sizeof(SPObj) % 8 == 0, "SPObj pool stride alignment");

#else

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
    f32 xScale;
    f32 yScale;
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

#endif /* PORT */

#endif // SPOBJ_H
