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
        SPObj *next = gobj_4C->unk8;
        while (next != NULL) {
            next = next->unk8;
        }
        next->unk8 = sprite;
        sprite->unkC = next;
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
    /* PORT STAND-IN, NOT A DECOMPILATION.
     *
     * m2c rendered the tail as `*sprite->unkA0 = *sprite->unk40;`, a struct
     * copy through two pointers. The ROM does something else: a LOOP that
     * strides both cursors by 0xC and copies 0x38/0x3C/0x40 into 0x94/0x98/
     * 0x9C (800ACB40..800ACB60), i.e. an in-struct block copy, not a
     * dereference of the two pointer members.
     *
     * Taken literally the m2c form dereferences unkA0, which this `kind` never
     * initialises, and the port segfaulted here immediately after
     * func_800AC954 stopped being a stub. Guarded so the port runs; the block
     * copy itself is NOT reproduced, so anything that reads the 0x94..0x9C
     * region will see uninitialised data. Decompiling this loop properly is
     * the fix -- this only stops it crashing. */
    if (sprite->unkA0 != NULL && sprite->unk40 != NULL) {
        *sprite->unkA0 = *sprite->unk40;
    }
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ACC68.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AD1A0.s")

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

// Draft, 2/39: only the loop's `sltu $at` vs `sw $v0, 0($v1)` pair-swap is left.
// Hoisting `i = 0;` ABOVE the zero-trip `if` was worth 2 diffs: it gives IDO a
// delay-slot filler so the D_800DD6E0 store stays before the beqz. NOT the wave-9
// volatile family -- there is no unrolled loop here. Swept: for(), chained store,
// temp local, volatile store, condition-in-a-local, ptr arith, u32/s32 compare
// casts, guard as `count != 1`, decl order -- all 2 or worse.
#ifdef NON_MATCHING
void func_800AE048(u32 count) {
    SPObj *p;
    u32 i;

    if (count == 0) {
        D_800DD6E0 = NULL;
    } else {
        p = gtlMalloc(count * 0x100, 8);
        D_800DD6E0 = p;
        i = 0;
        if (count - 1 != 0) {
            do {
                i++;
                p->next = (SPObj *) ((u8 *) p + 0x100);
                p = p->next;
            } while (i < count - 1);
        }
        p->next = NULL;
    }
    D_800DD6E4 = D_800DD6E8 = D_800DD6EC = D_800DD6F0 = NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AE048.s")
#endif