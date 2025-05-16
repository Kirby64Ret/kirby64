// mglib?
// todo: is this file mglib, or is ovl5?
// handles something called an spobj?

#include <ultra64.h>
#include <macros.h>
#include "ovl1_5.h"
#include "omCurrentObj.h"

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AB680.s")

extern u32 sTextureImageCommand;
extern u32 sSetTileCommand;

#define gDPSetTextureImageDynamic(pkt, ptr)\
    {\
        Gfx *_g = (pkt);\
        _g->words.w0 = sTextureImageCommand;\
        _g->words.w1 = ptr;\
    }


extern s8 D_800DD70A;
void func_800AB6D8(Gfx **dlist, u64 *texptr, s16 arg2, s16 arg3);
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AB6D8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AB790.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AB804.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800ABB4C.s")

extern struct UnkStruct800AC954 *D_800DD6E0;

struct UnkStruct800AC954 *pop_spobj(void) {
    struct UnkStruct800AC954 *tmp;

    tmp = D_800DD6E0;
    if (tmp == NULL) {
        return NULL;
    }
    D_800DD6E0 = tmp->unk0;
    return tmp;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC5E0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC610.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC688.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC700.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC794.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC820.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC8E0.s")

void func_800AC924(uObjMtx *mtx) {
    mtx->m.A = mtx->m.D = 0x10000;
    mtx->m.B = mtx->m.C = 0;
    mtx->m.X = mtx->m.Y = 0;
    mtx->m.BaseScaleX = mtx->m.BaseScaleY = 0x400;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AC954.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800ACB7C.s")

void func_800ACBDC(struct GObj *arg0) {
    if (arg0 == 0) {
        arg0 = omCurrentObj;
    }
    while (arg0->unk4C != 0) {
        func_800ACB7C(arg0->unk4C);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800ACC30.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800ACC68.s")

extern Gfx *gDisplayListHeads[4];

s32 func_800ACE1C(u8 arg0, u16 *tlut) {
    if (arg0 == 2) {
        gDPSetTextureLUT(gDisplayListHeads[0]++, G_TT_RGBA16);
        gSPObjLoadTxtr(gDisplayListHeads[0]++, tlut);
        return 1;
    }
    return 0;
}


#define G_CC_PRIM_RGBA PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, TEXEL0, 0

s32 func_800ACE88(struct UnkStruct800AC954 *arg0, u8 arg1) {
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE);
    if ((arg0->renderFlags & 1) != 0) {
        if ((arg0->renderFlags & 2) != 0) {
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_XLU_SPRITE, G_RM_AA_XLU_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_ANTIALIAS | G_OBJRM_BILERP)
        } else {
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_SPRITE, G_RM_AA_SPRITE2);
            gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_ANTIALIAS | G_OBJRM_BILERP);
        }
    } else if ((arg0->renderFlags & 2) != 0) {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_XLU_SPRITE, G_RM_XLU_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_XLU | G_OBJRM_BILERP);
    } else {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_SPRITE, G_RM_SPRITE2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_BILERP);
    }
    switch (arg1) {
        case 4:
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
            return;
        case 3:
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha
            );
            gDPSetEnvColor(gDisplayListHeads[0]++,
                            arg0->envColorRed,
                            arg0->envColorGreen,
                            arg0->envColorBlue,
                            arg0->envColorAlpha
            );
            gDPSetCombineLERP(gDisplayListHeads[0]++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            return;
        case 2:
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha
            );
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_PRIM_RGBA, G_CC_PRIM_RGBA);
            return;
        case 0:
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_DECALRGBA, G_CC_DECALRGBA);
            return;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AD1A0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800ADD14.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_5/func_800AE048.s")
