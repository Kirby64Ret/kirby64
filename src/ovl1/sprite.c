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

// Nearly matching (10/22): only a one-slot temp-register rotation - the target
// burns two virtual registers per s16 store, this shape only burns one.
#ifdef MIPS_TO_C
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AB6D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AB790.s")

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

#ifdef MIPS_TO_C
// Structure is right; IDO puts the alignment mask in v0 (target: v1) and keeps
// the aligned width in a temp instead of v0, rotating the rest of the temps.
void func_800AC700(uObjBg *bg, struct C954Arg2 *arg1) {
    u8 mask = D_800D4E60[arg1->unk1];

    bg->s.imageX = bg->s.imageY = 0;
    bg->s.imageW = ((arg1->width + mask) & ~mask) * 4;
    bg->s.frameW = arg1->width * 4;
    bg->s.frameH = bg->s.imageH = arg1->height * 4;
    bg->s.frameX = bg->s.frameY = 0;
    bg->s.imagePtr = (u64 *)arg1->unk8;
    bg->s.imageLoad = G_BGLT_LOADTILE;
    bg->s.imageFmt = arg1->unk0;
    bg->s.imageSiz = arg1->unk1;
    bg->s.imagePal = 0;
    bg->s.imageFlip = 0;
    bg->s.scaleW = 0x400;
    bg->s.scaleH = 0x400;
    bg->s.imageYorig = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC700.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC820.s")

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

#ifdef MIPS_TO_C
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
    sprite->gobj = gobj;
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
    sprite->unk28 = sprite->unk2C = 1.0f;
    switch (kind) {
        case 0:
            func_800AC688(&sprite->unk40, arg2, kind, gobj);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 1:
            func_800AC700(&sprite->unk40, arg2, kind, gobj);
            if (arg2->unk0 == 2) {
                func_800AC8E0(&sprite->unk68, arg2);
            }
            break;
        case 2:
            func_800AC794(&sprite->unk58, arg2, kind, gobj);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            break;
        case 3:
        case 4:
            func_800AC794(&sprite->unk58, arg2, kind, gobj);
            func_800AC820(&sprite->unk40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0((struct SPObj_68** ) &sprite->unk70, arg2);
            }
            func_800AC924((uObjMtx* ) &sprite->unk88);
            break;
    }
    *sprite->unkA0 = *sprite->unk40;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ADD14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AE048.s")
