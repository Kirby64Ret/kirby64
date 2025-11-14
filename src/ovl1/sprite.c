#include <ultra64.h>

#include <PR/gbi.h>
#include <PR/gu.h>
#include <PR/gs2dex.h>
#include "common.h"
#include "GObj.h"
#include "SPObj.h"

extern SPObj *D_800DD6E0; // SPObj head
extern u32 sTextureImageCommand;
extern u32 sSetTileCommand;
// mainseg bss
extern Gfx *gDisplayListHeads[4];

#define G_CC_PRIM_RGBA PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AB680.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC688.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC700.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800AC8E0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ACB7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ACBDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/sprite/func_800ACC30.s")

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
