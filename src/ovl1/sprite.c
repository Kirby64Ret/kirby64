#include <ultra64.h>

#include <PR/gbi.h>
#include <PR/gu.h>
#include <PR/gs2dex.h>
#include "common.h"
#include "GObj.h"
#include "SPObj.h"

void func_800AC5E0(SPObj *);
void func_800ACB7C(SPObj *);

extern SPObj *D_800DD6E0; // SPObj head
extern SPObj *D_800DD6E4;
extern SPObj *D_800DD6E8;
extern SPObj *D_800DD6EC;
extern SPObj *D_800DD6F0;
extern u8 D_800D4E60[];
extern s16 D_800D4E64;
extern s16 D_800D4E68;
extern s16 D_800D4E6C;
extern s16 D_800D4E70;
extern u8 D_800D4E74;
extern u32 sTextureImageCommand;
extern u32 sSetTileCommand;
extern s8 D_800DD70A;
// mainseg bss
extern Gfx *gDisplayListHeads[4];

struct C954Arg2 {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u16 width;
    /* 0x06 */ u16 height;
    /* 0x08 */ u32 unk8;
    /* 0x0C */ u32 unkC;
};

#define G_CC_PRIM_RGBA PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0

// 12/22: the target burns TWO virtual registers per s16 store (t7/t9/t1/t3/t5),
// this burns one. Swept casts, shifts, s16 args, 1 and 4 explicit temps: no move.
#ifdef NON_MATCHING
void func_800AB680(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u8 arg4) {
    D_800D4E64 = arg0 * 4;
    D_800D4E68 = arg1 * 4;
    D_800D4E6C = arg2 * 4;
    D_800D4E70 = arg3 * 4;
    if (arg4 != 0) {
        D_800D4E74 = 1;
        return;
    }
    D_800D4E74 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AB680.s")
#endif
void func_800AB6D8(Gfx **gp, u32 arg1, s16 arg2, s16 arg3) {
    (*gp)->words.w0 = sTextureImageCommand;
    (*gp)->words.w1 = arg1;
    (*gp)++;
    (*gp)->words.w0 = 0xE6000000;
    (*gp)++;
    (*gp)->words.w0 = 0xF4000000;
    if (D_800DD70A == 3) {
        (*gp)->words.w1 = ((arg3 - 1) << 16) | 0x07000000;
    } else {
        (*gp)->words.w1 = (((arg3 - 1) << 16) | 0x07000000) | ((arg2 * 4) - 1);
    }
    (*gp)++;
}

void func_800AB6D8(Gfx **gp, u32 arg1, s16 arg2, s16 arg3);

void func_800AB790(Gfx **gp, u32 arg1, s16 arg2, s16 arg3, s16 arg4) {
    (*gp)->words.w0 = 0xE8000000;
    (*gp)++;
    (*gp)->words.w0 = arg3 | sSetTileCommand;
    (*gp)->words.w1 = 0x07000000;
    (*gp)++;
    func_800AB6D8(gp, arg1, arg2, arg4);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AB804.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ABB4C.s")

SPObj *pop_spobj(void) {
    SPObj *ret;

    ret = D_800DD6E0;
    if (ret == NULL) {
        return NULL;
    }
    D_800DD6E0 = ret->next;
    return ret;
}

void func_800AC5E0(SPObj *spobj) {
    if (D_800DD6E8 == NULL) {
        D_800DD6E8 = spobj;
    }
    spobj->next = D_800DD6E4;
    D_800DD6E4 = spobj;
}

void func_800AC610(void) {
    if (D_800DD6EC != NULL) {
        D_800DD6F0->next = D_800DD6E0;
        D_800DD6E0 = D_800DD6EC;
        D_800DD6EC = D_800DD6F0 = NULL;
    }
    if (D_800DD6E4 != NULL) {
        D_800DD6EC = D_800DD6E4;
        D_800DD6F0 = D_800DD6E8;
        D_800DD6E8 = D_800DD6E4 = NULL;
    }
}

void func_800AC688(uObjBg *bg, struct C954Arg2 *arg1) {
    bg->b.imageX = bg->b.imageY = 0;
    bg->b.frameW = bg->b.imageW = arg1->width * 4;
    bg->b.frameH = bg->b.imageH = arg1->height * 4;
    bg->b.frameX = bg->b.frameY = 0;
    bg->b.imagePtr = (u64 *)arg1->unk8;
    bg->b.imageLoad = G_BGLT_LOADTILE;
    bg->b.imageFmt = arg1->unk0;
    bg->b.imageSiz = arg1->unk1;
    bg->b.imagePal = 0;
    bg->b.imageFlip = 0;
    guS2DInitBg(bg);
}

void func_800AC700(uObjBg *bg, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    bg->s.imageX = bg->s.imageY = 0;
    bg->s.frameW = arg1->width * 4;
    bg->s.imageW = tmemW * 4;
    bg->s.frameH = bg->s.imageH = arg1->height * 4;
    bg->s.frameX = bg->s.frameY = 0;
    bg->s.imagePtr = (u64 *) arg1->unk8;
    bg->s.imageLoad = G_BGLT_LOADTILE;
    bg->s.imageFmt = arg1->unk0;
    bg->s.imageSiz = arg1->unk1;
    bg->s.imagePal = 0;
    bg->s.imageFlip = 0;
    bg->s.scaleW = bg->s.scaleH = 0x400;
    bg->s.imageYorig = 0;
}

// Draft, 14/35: v0/v1 and the stores are right; IDO schedules the ~mask/and
// pair ten slots later than the ROM. Swept 90 statement permutations, both
// index forms and extra locals; its twin func_800AC700 closed on a store
// permutation but this one does not move.
#ifdef NON_MATCHING
void func_800AC794(uObjSprite *sp, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    sp->s.objX = sp->s.objY = 0;
    sp->s.scaleW = sp->s.scaleH = 0x400;
    sp->s.imageW = arg1->width * 0x20;
    sp->s.imageH = arg1->height * 0x20;
    sp->s.paddingY = 0;
    sp->s.paddingX = 0;
    sp->s.imageAdrs = 0;
    sp->s.imageStride = GS_PIX2TMEM(tmemW, arg1->unk1);
    sp->s.imageFmt = arg1->unk0;
    sp->s.imageSiz = arg1->unk1;
    sp->s.imagePal = 0;
    sp->s.imageFlags = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC794.s")
#endif
void func_800AC820(uObjTxtr *tx, struct C954Arg2 *arg1) {
    s32 tmemW = (arg1->width + D_800D4E60[arg1->unk1]) & ~D_800D4E60[arg1->unk1];

    tx->block.type = G_OBJLT_TXTRBLOCK;
    tx->block.image = (u64 *) arg1->unk8;
    tx->block.tmem = GS_PIX2TMEM(0, arg1->unk1);
    tx->block.tsize = GS_TB_TSIZE(arg1->height * tmemW, arg1->unk1);
    tx->block.tline = GS_TB_TLINE(tmemW, arg1->unk1);
    tx->block.sid = 0;
    tx->block.flag = arg1->unk8;
    tx->block.mask = -1;
}

void func_800AC8E0(struct SPObj_68 *arg0, struct C954Arg2 *arg1) {
    arg0->unk0 = 0x30;
    arg0->unk4 = arg1->unkC;
    arg0->unk8 = 0x100;
    arg0->unkA = (arg1->unk2 - 1) & 0xFF;
    arg0->unkC = 0;
    arg0->unkE = 0;
    arg0->unk10 = arg1->unkC;
    arg0->unk14 = -1;
}

void func_800AC924(uObjMtx *mtx) {
    mtx->m.A = mtx->m.D = FTOFIX32(1.0f);
    mtx->m.B = mtx->m.C = 0;
    mtx->m.X = mtx->m.Y = 0;
    mtx->m.BaseScaleX = mtx->m.BaseScaleY = FTOFIX16(1.0f);
}

#ifdef NON_MATCHING
SPObj* func_800AC954(GObj* gobj, u32 kind, struct C954Arg2 *arg2) {
    SPObj* sprite;
    void* var_a0;
    void* var_v1;
    SPObj* gobj_4C;

    sprite = pop_spobj();
    if (sprite == NULL) {
        return NULL;
    }
    gobj_4C = gobj->unk4C;
    if (gobj_4C != NULL) {
        SPObj *tail = gobj_4C; /* 800AC9A0..800AC9C0 walks to the LAST node */
        while (tail->unk8 != 0) {
            tail = (SPObj *) (uintptr_t) tail->unk8;
        }
        tail->unk8 = (u32) (uintptr_t) sprite;
        sprite->unkC = (u32) (uintptr_t) tail;
    } else {
        gobj->unk4C = sprite;
        sprite->unkC = 0;
    }
    sprite->unk8 = 0;
    /* offset 4: `sw $a3, 0x4($v0)` at 800AC9DC. u32, not a pointer --
   widening it would move every field after it under LP64. The port
   keeps all game objects in low memory, so the cast is lossless. */
    sprite->unk4 = (u32) (uintptr_t) gobj;
    sprite->unk10 = (u8) kind;
    sprite->unk11 = 0;
    sprite->unk12 = 0;
    sprite->renderFlags = 0;
    sprite->primColorRed =
    sprite->primColorGreen =
    sprite->primColorBlue =
    sprite->primColorAlpha = 0xFF;
    sprite->envColorRed =
    sprite->envColorGreen =
    sprite->envColorBlue =
    sprite->envColorAlpha = 0xFF;
    sprite->width = arg2->width;
    sprite->height = arg2->height;
    sprite->xOffset = sprite->yOffset = 0.0f;
    sprite->unk30 = sprite->unk34 = sprite->unk38 = 0.0f;
    sprite->xScale = sprite->yScale = 1.0f;
    switch (kind) {
        case 0:
            func_800AC688(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 1:
            func_800AC700(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 2:
            func_800AC794(&sprite->unk58, arg2);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            break;
        case 3:
        case 4:
            func_800AC794(&sprite->unk58, arg2);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            func_800AC924((uObjMtx* ) &sprite->unk88);
            break;
    }
    /* The ROM's tail (800ACB38..800ACB60) is DECODED now, and it is not the
     * pointer copy m2c produced. Two cursors start at the SPObj base and step
     * by 0xC; each pass reads +0x40/+0x44/+0x48 and writes +0xA0/+0xA4/+0xA8,
     * stopping when the first cursor reaches base+0x60. That is 8 passes x 0xC
     * = a straight 0x60-byte copy of the RSP command block at 0x40 to its
     * second copy at 0xA0 -- SPObj is double-buffered so the CPU never rewrites
     * the block the RSP is reading, and spobj->unk12 selects the copy.
     *
     * The port cannot host the second copy. SPObj.h names only the first one,
     * and under LP64 a 0x60-byte block anchored at unkA0 would run past the
     * 0x100 allocation stride func_800AE048 uses. func_800AD1A0 therefore
     * addresses the FIRST copy unconditionally (see its comment), so nothing
     * in the port ever reads bytes 0xA0..0x100 and seeding them is a no-op.
     *
     * The previous stand-in here ran `*sprite->unkA0 = *sprite->unk40;` under a
     * NULL guard. Those two members are not pointers -- 0x40 is the uObjBg this
     * function has just filled in -- so the guard passes on live data and the
     * copy dereferences image dimensions as an address. It has not fired yet
     * only because unkA0 happens to be zero in a fresh arena. Removed. */
    return sprite;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC954.s")
#endif

void func_800ACB7C(SPObj *sp) {
    GObj *gobj;
    SPObj *other;

    gobj = (GObj *) sp->unk4;
    if (sp == gobj->unk4C) {
        gobj->unk4C = (void *) sp->unk8;
    }
    other = (SPObj *) sp->unkC;
    if (other != NULL) {
        other->unk8 = sp->unk8;
    }
    other = (SPObj *) sp->unk8;
    if (other != NULL) {
        other->unkC = sp->unkC;
    }
    func_800AC5E0(sp);
}

void func_800ACBDC(GObj *gobj) {
    if (gobj == 0) {
        gobj = omCurrentObj;
    }
    while (gobj->unk4C != 0) {
        func_800ACB7C(gobj->unk4C);
    }
}

void func_800ACC30(s16 *arg0, s16 *arg1, SPObj *spobj) {
    *arg0 = spobj->xOffset * 4.0f;
    *arg1 = spobj->yOffset * 4.0f;
}

#ifdef NON_MATCHING
void func_800ACC68(s16 *arg0, s16 *arg1, SPObj *spobj) {
    f32 scale;
    f32 mag;
    scale = spobj->xScale;
    mag = (scale < 0.0f) ? -scale : scale;
    if (mag < 0.03125f) {
        *arg0 = 0x8000;
    } else {
        *arg0 = (u32) (1024.0f / scale);
    }
    scale = spobj->yScale;
    mag = (scale < 0.0f) ? -scale : scale;
    if (mag < 0.03125f) {
        *arg1 = 0x8000;
    } else {
        *arg1 = (u32) (1024.0f / scale);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ACC68.s")
#endif

s32 func_800ACE1C(u8 arg0, u16 *tlut) {
    if (arg0 == 2) {
        gDPSetTextureLUT(gDisplayListHeads[0]++, G_TT_RGBA16);
        gSPObjLoadTxtr(gDisplayListHeads[0]++, tlut);
        return 1;
    }
    return 0;
}

s32 func_800ACE88(SPObj *spobj, u8 colortype) {
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE);
    if (spobj->renderFlags & SPOBJ_RF_AA) { // antialias flag
        if (spobj->renderFlags & SPOBJ_RF_XLU) { // transparency flag
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_XLU_SPRITE, G_RM_AA_XLU_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_ANTIALIAS | G_OBJRM_BILERP)
        } else {
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_SPRITE, G_RM_AA_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_ANTIALIAS | G_OBJRM_BILERP);
        }
    } else if (spobj->renderFlags & SPOBJ_RF_XLU) {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_XLU_SPRITE, G_RM_XLU_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_BILERP);
    } else {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_SPRITE, G_RM_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_BILERP);
    }
    switch (colortype) {
        case SPOBJ_CT_PRIM_TEX_EDGE: // prim color, tex alpha
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
            break;
        case SPOBJ_CT_PRIM_ENV_TEX: // prim + env
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetEnvColor(gDisplayListHeads[0]++,
                            spobj->envColorRed,
                            spobj->envColorGreen,
                            spobj->envColorBlue,
                            spobj->envColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            break;
        case SPOBJ_CT_PRIM_TEX: // prim colored texture
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            spobj->primColorRed,
                            spobj->primColorGreen,
                            spobj->primColorBlue,
                            spobj->primColorAlpha
            );
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_PRIM_RGBA, G_CC_PRIM_RGBA);
            break;
        case SPOBJ_CT_NONE: // no color
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            break;
    }
}

// The RSP command block SPObj carries twice, at 0x40 and at 0xA0; spobj->unk12
// selects the copy so the CPU never rewrites the block the RSP is reading.
typedef union SPObjGfx {
    struct {
        /* 0x00 */ uObjBg bg;
        /* 0x28 */ uObjTxtr tlut;
    } b;
    struct {
        /* 0x00 */ uObjTxSprite ts;
        /* 0x30 */ uObjTxtr tlut;
        /* 0x48 */ uObjMtx mtx;
    } t;
} SPObjGfx;

typedef struct SPObjBufs {
    /* 0x00 */ u8 head[0x40];
    /* 0x40 */ SPObjGfx gfx[2];
} SPObjBufs;

#define SPOBJ_GFX(sp) (&((SPObjBufs *) (sp))->gfx[(sp)->unk12])

#define spDL(pkt, hi, lo)                                                      \
{                                                                              \
    Gfx *_g = (Gfx *) (pkt);                                                   \
                                                                               \
    _g->words.w0 = (hi);                                                       \
    _g->words.w1 = (lo);                                                       \
}

void func_800ACC68(s16 *, s16 *, SPObj *);
void func_800ABB4C(Gfx **, uObjBg *);
s32 lbreflect_Int16Sin(f32);
s32 lbreflect_Int16Cos(f32);

#ifdef NON_MATCHING
/* Draft of the model draw callback. Kept because Makefile.pc defines
 * NON_MATCHING, so this is the code the PC port executes. */
void func_800AD1A0(GObj *gobj) {
    SPObj *sp;
    uObjBg *bg;
    uObjBg *bg0;
    uObjSprite *obj;
    uObjMtx *mtx;
    SPObjGfx *gfx;
    s32 loadedTlut;
    f32 scale;
    f32 mag;
    f32 sn;
    f32 cs;

    loadedTlut = 0;
    sp = gobj->unk4C;
    if (sp == NULL) {
        return;
    }

    do {
        if (sp->unk11 != 2) {
            sp->unk12 ^= 1;
            switch (sp->unk10) {
                case 0:
                    bg0 = &SPOBJ_GFX(sp)->b.bg;
                    bg0->b.frameX = (s32) (sp->xOffset * 4.0f) & ~3;
                    bg0->b.frameY = (s32) (sp->yOffset * 4.0f) & ~3;
                    bg0->b.imageX = (u32) (sp->unk34 * 32.0f);
                    bg0->b.imageY = (u32) (sp->unk38 * 32.0f);
                    break;
                case 1:
                    bg = &SPOBJ_GFX(sp)->b.bg;
                    func_800ACC30(&bg->s.frameX, &bg->s.frameY, sp);
                    scale = sp->xScale;
                    mag = (scale < 0.0f) ? -scale : scale;
                    if (mag < 0.03125f) {
                        bg->s.scaleW = 0x8000;
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameW = 0;
                        }
                    } else {
                        bg->s.scaleW = (u32) (1024.0f / scale);
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameW = (u32) ((f32) sp->width * sp->xScale * 4.0f);
                        }
                    }
                    scale = sp->yScale;
                    mag = (scale < 0.0f) ? -scale : scale;
                    if (mag < 0.03125f) {
                        bg->s.scaleH = 0x8000;
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameH = 0;
                        }
                    } else {
                        bg->s.scaleH = (u32) (1024.0f / scale);
                        if (!(sp->renderFlags & 4)) {
                            bg->s.frameH = (u32) ((f32) sp->height * sp->yScale * 4.0f);
                        }
                    }
                    bg->s.imageX = (u32) (sp->unk34 * 32.0f);
                    bg->s.imageY = (u32) (sp->unk38 * 32.0f);
                    break;
                case 2:
                    obj = &SPOBJ_GFX(sp)->t.ts.sprite;
                    func_800ACC30(&obj->s.objX, &obj->s.objY, sp);
                    func_800ACC68((s16 *) &obj->s.scaleW, (s16 *) &obj->s.scaleH, sp);
                    break;
                case 3:
                    mtx = &SPOBJ_GFX(sp)->t.mtx;
                    func_800ACC30(&mtx->m.X, &mtx->m.Y, sp);
                    func_800ACC68((s16 *) &mtx->m.BaseScaleX, (s16 *) &mtx->m.BaseScaleY, sp);
                    break;
                case 4:
                    mtx = &SPOBJ_GFX(sp)->t.mtx;
                    func_800ACC30(&mtx->m.X, &mtx->m.Y, sp);
                    cs = (f32) (lbreflect_Int16Cos(sp->unk30) * 2);
                    sn = (f32) (lbreflect_Int16Sin(sp->unk30) * 2);
                    mtx->m.A = sp->xScale * cs;
                    mtx->m.B = sp->yScale * sn;
                    mtx->m.C = -sn * sp->xScale;
                    mtx->m.D = sp->yScale * cs;
                    break;
            }
            if (sp->unk11 == 1) {
                sp->unk11 = 2;
            }
        }

        if (!(sp->renderFlags & 8)) {
            spDL(gDisplayListHeads[0]++, 0xE7000000, 0);

            switch (sp->unk10) {
                case 0:
                    gfx = SPOBJ_GFX(sp);
                    spDL(gDisplayListHeads[0]++, 0xE200001C, 0);
                    spDL(gDisplayListHeads[0]++, 0xE3000A01, 0x00200000);
                    spDL(gDisplayListHeads[0]++, 0xFCFFFFFF, 0xFFFCF279);
                    loadedTlut = func_800ACE1C(gfx->b.bg.b.imageFmt, (u16 *) &SPOBJ_GFX(sp)->b.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0A000000, (u32) gfx);
                    break;
                case 1:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->b.bg.s.imageFmt);
                    loadedTlut = func_800ACE1C(gfx->b.bg.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->b.tlut);
                    if (gfx->b.bg.s.imageFmt == 0 && gfx->b.bg.s.imageSiz == 3) {
                        func_800ABB4C(gDisplayListHeads, &gfx->b.bg);
                    } else {
                        spDL(gDisplayListHeads[0]++, 0x09000000, (u32) gfx);
                    }
                    break;
                case 2:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0700002F, (u32) gfx);
                    break;
                case 3:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    spDL(gDisplayListHeads[0]++, 0xDC070002, (u32) &SPOBJ_GFX(sp)->t.mtx.m.X);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0800002F, (u32) gfx);
                    break;
                case 4:
                    gfx = SPOBJ_GFX(sp);
                    func_800ACE88(sp, gfx->t.ts.sprite.s.imageFmt);
                    spDL(gDisplayListHeads[0]++, 0xDC170000, (u32) &SPOBJ_GFX(sp)->t.mtx);
                    loadedTlut = func_800ACE1C(gfx->t.ts.sprite.s.imageFmt, (u16 *) &SPOBJ_GFX(sp)->t.tlut);
                    spDL(gDisplayListHeads[0]++, 0x0600002F, (u32) gfx);
                    break;
            }

            if (loadedTlut != 0) {
                spDL(gDisplayListHeads[0]++, 0xE3001001, 0);
            }
        }

        sp = (SPObj *) sp->unk8;
    } while (sp != NULL);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AD1A0.s")
#endif

// Camera payload of the GObj this draw callback is registered on. sprite.c does
// not include main/object_manager.h, so only the two fields this function reads
// are spelled out; the offsets are the real Camera's.
struct SpriteDrawCamera {
    /* 0x00 */ u8 unk00[0x8];
    /* 0x08 */ Vp viewport;
    /* 0x18 */ u8 unk18[0x68];
    /* 0x80 */ u32 flags;
};

extern Gfx D_800D4E98[];
extern u16 D_8004A444;
extern s32 viCFBFmt;
extern s32 gCurrScreenWidth;
extern s32 gCurrScreenHeight;

void gtlLoadUcode(Gfx **, u32);
void func_80017E84(GObj *, s32);

void func_800ADD14(GObj *camObj) {
    struct SpriteDrawCamera *cam;
    u32 savedUcode;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;

    cam = camObj->data.ptr;
    savedUcode = D_8004A444;
    gtlLoadUcode(gDisplayListHeads, 0xA);
    gSPDisplayList(gDisplayListHeads[0]++, D_800D4E98);

    ulx = cam->viewport.vp.vtrans[0] / 4 - cam->viewport.vp.vscale[0] / 4;
    uly = cam->viewport.vp.vtrans[1] / 4 - cam->viewport.vp.vscale[1] / 4;
    lrx = cam->viewport.vp.vtrans[0] / 4 + cam->viewport.vp.vscale[0] / 4;
    lry = cam->viewport.vp.vtrans[1] / 4 + cam->viewport.vp.vscale[1] / 4;

    if (ulx < 10.0f * (gCurrScreenWidth / 320)) {
        ulx = 10.0f * (gCurrScreenWidth / 320);
    }
    if (uly < 10.0f * (gCurrScreenHeight / 240)) {
        uly = 10.0f * (gCurrScreenHeight / 240);
    }
    if (gCurrScreenWidth - 10.0f * (gCurrScreenWidth / 320) < lrx) {
        lrx = gCurrScreenWidth - 10.0f * (gCurrScreenWidth / 320);
    }
    if (gCurrScreenHeight - 10.0f * (gCurrScreenHeight / 240) < lry) {
        lry = gCurrScreenHeight - 10.0f * (gCurrScreenHeight / 240);
    }

    gDPSetScissor(gDisplayListHeads[0]++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    func_800AB680(ulx, uly, lrx, lry, 1);
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetColorImage(gDisplayListHeads[0]++, G_IM_FMT_RGBA, viCFBFmt, gCurrScreenWidth, 0x0F000000);
    func_80017E84(camObj, (cam->flags & 8) ? 1 : 0);
    gtlLoadUcode(gDisplayListHeads, savedUcode);
}

// The `q` pointer local and the `n ^ 0` are LOAD-BEARING (permuter result,
// applied verbatim): `q` forks the extra source-level temp IDO needs to keep
// the loop's `sltu` ahead of the `sw`, and the xor keeps the compare on `n`
// from being folded back into the induction variable.
void func_800AE048(u32 count) {
    SPObj *p;
    u32 i;
    u32 n;
    u8 *q;

    if (count == 0) {
        D_800DD6E0 = NULL;
    } else {
        p = gtlMalloc(count * 0x100, 8);
        D_800DD6E0 = p;
        n = count - 1;
        for (i = 0; i < (n ^ 0); i++) {
            q = (u8 *) p;
            p->next = (SPObj *) (q + 0x100);
            p = p->next;
        }
        p->next = NULL;
    }
    D_800DD6E4 = D_800DD6E8 = D_800DD6EC = D_800DD6F0 = NULL;
}
