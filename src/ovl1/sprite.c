#include <PR/gbi.h>
#include <PR/gs2dex.h>
#include "common.h"
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
    mtx->m.A = mtx->m.D = 0x10000;
    mtx->m.B = mtx->m.C = 0;
    mtx->m.X = mtx->m.Y = 0;
    mtx->m.BaseScaleX = mtx->m.BaseScaleY = 0x400;
}

#ifdef MIPS_TO_C

void *func_800AC954(void *arg0, u32 arg1, void *arg2) {
    void *temp_a1;
    void *temp_v0;
    void *var_a0;
    void *var_v1;

    temp_v0 = pop_spobj();
    if (temp_v0 == NULL) {
        return NULL;
    }
    temp_a1 = arg0->unk4C;
    if (temp_a1 != NULL) {
        var_v1 = temp_a1->unk8;
        var_a0 = temp_a1;
        if (var_v1 != NULL) {
            do {
                var_a0 = var_v1;
                var_v1 = var_v1->unk8;
            } while (var_v1 != NULL);
        }
        var_a0->unk8 = temp_v0;
        temp_v0->unkC = var_a0;
    } else {
        arg0->unk4C = temp_v0;
        temp_v0->unkC = NULL;
    }
    temp_v0->unk8 = 0;
    temp_v0->unk4 = arg0;
    temp_v0->unk10 = arg1;
    temp_v0->unk11 = 0;
    temp_v0->unk12 = 0;
    temp_v0->unk13 = 0;
    temp_v0->unk17 = 0xFF;
    temp_v0->unk16 = 0xFF;
    temp_v0->unk15 = 0xFF;
    temp_v0->unk14 = 0xFF;
    temp_v0->unk1B = 0;
    temp_v0->unk1A = 0;
    temp_v0->unk19 = 0;
    temp_v0->unk18 = 0;
    temp_v0->unk1C = arg2->unk4;
    temp_v0->unk20 = 0.0f;
    temp_v0->unk24 = 0.0f;
    temp_v0->unk30 = 0.0f;
    temp_v0->unk34 = 0.0f;
    temp_v0->unk38 = 0.0f;
    temp_v0->unk28 = 1.0f;
    temp_v0->unk2C = 1.0f;
    temp_v0->unk1E = arg2->unk6;
    switch (arg1) {
        case 0:
            func_800AC688(temp_v0 + 0x40, arg2, arg1, arg0);
            if (arg2->unk0 == 2) {
                func_800AC8E0(temp_v0 + 0x68, arg2);
            }
            break;
        case 1:
            func_800AC700(temp_v0 + 0x40, arg2, arg1, arg0);
            if (arg2->unk0 == 2) {
                func_800AC8E0(temp_v0 + 0x68, arg2);
            }
            break;
        case 2:
            func_800AC794(temp_v0 + 0x58, arg2, arg1, arg0);
            func_800AC820(temp_v0 + 0x40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(temp_v0 + 0x70, arg2);
            }
            break;
        case 3:
        case 4:
            func_800AC794(temp_v0 + 0x58, arg2, arg1, arg0);
            func_800AC820(temp_v0 + 0x40, arg2);
            if (arg2->unk0 == 2) {
                func_800AC8E0(temp_v0 + 0x70, arg2);
            }
            func_800AC924(temp_v0 + 0x88);
            break;
    }
    M2C_MEMCPY_ALIGNED(temp_v0 + 0xA0, temp_v0 + 0x40, 0x60);
    return temp_v0;
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
