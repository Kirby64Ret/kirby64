#include <PR/gbi.h>

#include "common.h"
#include "config.h"
#include "gtl.h"
#include "rdp_reset.h"
#include "vi.h"

Vp gViewport; // 0x8004A530

void (*gScissorCallback)(Gfx **) = NULL;

Mtx identityMatrix = {{
    {1 << 16,       0,     1,     0},
    {0      , 1 << 16,     0,     1},
    {0      ,       0,     0,     0},
    {0      ,       0,     0,     0},
}};

Gfx resetRDPDisplayList[] = {
    gsDPPipeSync(),
    gsSPViewport(&gViewport),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsSPClipRatio(FRUSTRATIO_1),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BACK | G_SHADING_SMOOTH),
    gsSPMatrix(&identityMatrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION),
    gsSPMatrix(&identityMatrix, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPPipelineMode(G_PM_NPRIMITIVE),
    gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTexturePersp(G_TP_PERSP),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetCombineKey(G_CK_NONE),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
    gsDPSetColorDither(G_CD_MAGICSQ),
    gsDPPipeSync(),
    gsSPEndDisplayList(),
};

#ifdef NON_MATCHING
// G_MAXZ needs to be loaded in later somehow
void func_80007C00(Vp *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    s16 constant = G_MAXZ / 2;

    arg0->vp.vscale[0] = ((arg3 - ((arg1 + arg3) / 2.0f)) * 4.0f);
    arg0->vp.vscale[1] = ((arg4 - ((arg2 + arg4) / 2.0f)) * 4.0f);
    arg0->vp.vtrans[0] = (((arg1 + arg3) / 2.0f) * 4.0f);
    arg0->vp.vtrans[1] = (((arg2 + arg4) / 2.0f) * 4.0f);
    arg0->vp.vscale[2] = arg0->vp.vtrans[2] = constant;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/rdp_reset/func_80007C00.s")
#endif

void setup_viewport(Vp *viewport) {
    viewport->vp.vscale[0] = viewport->vp.vtrans[0] = gCurrScreenWidth * 2;
    viewport->vp.vscale[1] = viewport->vp.vtrans[1] = gCurrScreenHeight * 2;
    viewport->vp.vscale[2] = viewport->vp.vtrans[2] = G_MAXZ / 2;
}

void set_scissor_callback(void (*callback)(Gfx**)) {
    gScissorCallback = callback;
}

void reset_rdp_settings(Gfx **dlist) {
    Gfx *dlHead = *dlist;

    gSPSegment(dlHead++, 0x00, 0x00000000);
    gtlSetSegment0F(&dlHead);
    gDPSetDepthImage(dlHead++, gZBuffer);
    setup_viewport(&gViewport);
    gSPDisplayList(dlHead++, resetRDPDisplayList);

    gDPSetScissor(dlHead++, G_SC_NON_INTERLACE,
        10.0f * (gCurrScreenWidth / SCREEN_WIDTH), 10.0f * (gCurrScreenHeight / SCREEN_HEIGHT),
        gCurrScreenWidth - 10.0f * (gCurrScreenWidth / SCREEN_WIDTH), gCurrScreenHeight - 10.0f * (gCurrScreenHeight / SCREEN_HEIGHT));
    if (gScissorCallback != NULL) {
        gScissorCallback(&dlHead);
    }

    *dlist = dlHead;
}
