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

void func_80007C00(Vp *viewport, f32 ulx, f32 uly, f32 lrx, f32 lry) {
    f32 h = (ulx + lrx) / 2.0F;
    f32 v = (uly + lry) / 2.0F;

    viewport->vp.vscale[0] = ((s32) ((lrx - h) * 4.0F)) & 0xFFFF;
    viewport->vp.vscale[1] = ((s32) ((lry - v) * 4.0F)) & 0xFFFF;
    viewport->vp.vtrans[0] = ((s32) (h * 4.0F)) & 0xFFFF;
    viewport->vp.vtrans[1] = ((s32) (v * 4.0F)) & 0xFFFF;

    viewport->vp.vscale[2] = viewport->vp.vtrans[2] = G_MAXZ / 2;
}

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
