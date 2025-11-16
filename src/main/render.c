#include "common.h"

#include "GObj.h"
#include "DObj.h"

#include "gtl.h"
#include "render.h"
#include "object_manager.h"
#include "lbmatrix.h"

void renderSetCameraScissors(s32 top, s32 bottom, s32 left, s32 right) {
    renderCameraScissorTop = top;
    renderCameraScissorBottom = bottom;
    renderCameraScissorLeft = left;
    renderCameraScissorRight = right;
}

void renderSetMatrixHandler(MatrixHandler *handler) {
    renderMatrixHandler = handler;
}

void func_80010B50(void) {

}

void func_80010B58(Mtx *outputMtx, DObj *dobj, s32 setpos) {
    Mat4 mtx;
    f32 x, y, z;

    Camera *cam;
    f32 res;

    cam = omCurrentCamera->data.cam;
    x = dobj->pos.v.x - cam->viewMtx.lookAt.eye.x;
    y = dobj->pos.v.y - cam->viewMtx.lookAt.eye.y;
    z = dobj->pos.v.z - cam->viewMtx.lookAt.eye.z;
    res = 1.0f / sqrtf(SQ(x) + SQ(y) + SQ(z));
    x *= res;
    y *= res;
    z *= res;

    res = sqrtf(SQ(x) + SQ(y));

    mtx[0][3] = mtx[1][3] = mtx[2][3] = mtx[1][2] = 0.0f;
    mtx[3][3] = 1.0f;

    if (res != 0.0f) {
        f32 invrt = (1.0f / res);

        mtx[0][0] = -x;
        mtx[1][0] = y * invrt;
        mtx[2][0] = -x * z * invrt;

        mtx[0][1] = -y;
        mtx[1][1] = -x * invrt;
        mtx[2][1] = -y * z * invrt;

        mtx[0][2] = -z;
        mtx[2][2] = res;
    } else {
        mtx[1][0] = mtx[2][0] = mtx[0][1] = mtx[2][1] = mtx[0][2] = 0.0f;
        mtx[0][0] = mtx[1][1] = mtx[2][2] = 1.0f;
    }

    if (setpos) {
        mtx[3][0] = dobj->pos.v.x;
        mtx[3][1] = dobj->pos.v.y;
        mtx[3][2] = dobj->pos.v.z;
    } else {
        mtx[3][0] = mtx[3][1] = mtx[3][2] = 0.0f;
    }

    HS64_MtxF2L43(mtx, outputMtx);
}

void func_80010D28(Mtx* arg0, DObj* arg1, s32 arg2) {
    Mat4 sp48;
    f32 x, y, z;

    Camera* cam;
    f32 res;

    cam = omCurrentCamera->data.cam;
    x = arg1->pos.v.x - cam->viewMtx.lookAt.eye.x;
    y = arg1->pos.v.y - cam->viewMtx.lookAt.eye.y;
    z = arg1->pos.v.z - cam->viewMtx.lookAt.eye.z;
    res = 1.0f / sqrtf(SQ(x) + SQ(y) + SQ(z));
    x *= res;
    y *= res;
    z *= res;

    res = sqrtf(SQ(x) + SQ(z));

    sp48[0][3] = sp48[1][3] = sp48[2][3] = sp48[0][1] = 0.0f;
    sp48[3][3] = 1.0f;

    if (res != 0.0f) {
        f32 invrt = (1.0f / res);

        sp48[0][0] = -z * invrt;
        sp48[1][0] = -y * x * invrt;
        sp48[2][0] = -x;

        sp48[1][1] = res;
        sp48[2][1] = -y;

        sp48[0][2] = x * invrt;
        sp48[1][2] = -y * z * invrt;
        sp48[2][2] = -z;
    } else {
        sp48[1][0] = sp48[2][0] = sp48[2][1] = sp48[0][2] = sp48[1][2] = 0.0f;
        sp48[0][0] = sp48[1][1] = sp48[2][2] = 1.0f;
    }

    if (arg2) {
        sp48[3][0] = arg1->pos.v.x;
        sp48[3][1] = arg1->pos.v.y;
        sp48[3][2] = arg1->pos.v.z;
    } else {
        sp48[3][0] = sp48[3][1] = sp48[3][2] = 0.0f;
    }

    HS64_MtxF2L43(sp48, arg0);
}

void func_80010EF8(Mtx* arg0, DObj* arg1, s32 arg2) {
    Mat4 sp48;
    f32 x;
    f32 y;

    Camera* cam;
    f32 res;

    cam = omCurrentCamera->data.cam;
    x = arg1->pos.v.x - cam->viewMtx.lookAt.eye.x;
    y = arg1->pos.v.y - cam->viewMtx.lookAt.eye.y;
    res = sqrtf(SQ(x) + SQ(y));

    sp48[0][3] = sp48[1][3] = sp48[2][3] = sp48[2][0] = sp48[2][1] = sp48[0][2] = sp48[1][2] = 0.0f;
    sp48[2][2] = sp48[3][3] = 1.0f;

    if (res != 0.0f) {
        f32 invrt = (1.0f / res);

        x *= invrt;
        y *= invrt;

        sp48[0][0] = -x;
        sp48[0][1] = -y;
        sp48[1][0] = y;
        sp48[1][1] = -x;
    } else {
        sp48[1][0] = sp48[0][1] = 0.0f;
        sp48[0][0] = sp48[1][1] = 1.0f;
    }

    if (arg2) {
        sp48[3][0] = arg1->pos.v.x;
        sp48[3][1] = arg1->pos.v.y;
        sp48[3][2] = arg1->pos.v.z;
    } else {
        sp48[3][0] = sp48[3][1] = sp48[3][2] = 0;
    }

    HS64_MtxF2L43(sp48, arg0);
}

void func_8001103C(Mtx* arg0, DObj* arg1, s32 arg2) {
    Mat4 sp48;
    f32 x;
    f32 z;

    Camera* cam;
    f32 res;

    cam = omCurrentCamera->data.cam;
    x = arg1->pos.v.x - cam->viewMtx.lookAt.eye.x;
    z = arg1->pos.v.z - cam->viewMtx.lookAt.eye.z;
    res = sqrtf(SQ(x) + SQ(z));

    sp48[0][3] = sp48[1][3] = sp48[2][3] = sp48[1][0] = sp48[0][1] = sp48[1][2] = sp48[2][1] = 0.0f;
    sp48[1][1] = sp48[3][3] = 1.0f;

    if (res != 0.0f) {
        f32 invrt = (1.0f / res);

        x *= invrt;
        z *= invrt;

        sp48[0][2] = x;
        sp48[2][0] = -x;
        sp48[0][0] = -z;
        sp48[2][2] = -z;
    } else {
        sp48[2][0] = sp48[0][2] = 0.0f;
        sp48[0][0] = sp48[2][2] = 1.0f;
    }

    if (arg2) {
        sp48[3][0] = arg1->pos.v.x;
        sp48[3][1] = arg1->pos.v.y;
        sp48[3][2] = arg1->pos.v.z;
    } else {
        sp48[3][0] = sp48[3][1] = sp48[3][2] = 0;
    }

    HS64_MtxF2L43(sp48, arg0);
}

#ifdef NON_MATCHING
s32 func_80011180(Gfx** gfxPtr, DObj* dobj) {
    Gfx* sp2DC;
    uintptr_t csr;
    s32 sp2D4;
    s32 i;
    f32 f12;
    union Mtx3fi* sp2C8;
    OMMtxFloat4* sp2C4;
    OMMtxFloat3* sp2C0;
    f32 f0;
    s32 sp2B8;
    s32 (*func)(Mtx*, void*, Gfx**);

    sp2DC = *gfxPtr;
    sp2D4 = 0;

    if (dobj->unk4C != NULL) {
        csr = (uintptr_t) dobj->unk4C->data;
        for (i = 0; i < 3; i++) {
            switch (dobj->unk4C->kinds[i]) {
                case 0:
                    break;
                case 1:
                    sp2C8 = (void*) csr;
                    csr += sizeof(union Mtx3fi);
                    break;
                case 2:
                    sp2C4 = (void*) csr;
                    csr += sizeof(OMMtxFloat4);
                    break;
                case 3:
                    sp2C0 = (void*) csr;
                    csr += sizeof(OMMtxFloat3);
                    break;
            }
        }
    }

    for (i = 0; i < dobj->numMatrices; i++) {
        OMMtx* ommtx = dobj->matrices[i];
        if (ommtx != NULL) {
            Mtx** unk;
            Mtx* mtx;

            unk = (Mtx**) &ommtx->unk08;
            mtx = &ommtx->unk08;

            if (ommtx->unk05 != 2) {
                if (ommtx->unk05 == 4) {
                    if (dobj->gobj->lastDrawFrame != (u8) gtlDrawnFrameCounter) {
                        *unk = gDynamicBuffer1.top;
                        mtx = gDynamicBuffer1.top;
                        gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                    } else {
                        switch (ommtx->kind) {
                            case MTX_TYPE_33:
                            case MTX_TYPE_34:
                            case MTX_TYPE_35:
                            case MTX_TYPE_36:
                            case MTX_TYPE_37:
                            case MTX_TYPE_38:
                            case MTX_TYPE_39:
                            case MTX_TYPE_40:
                            case MTX_TYPE_41:
                            case MTX_TYPE_42:
                            case MTX_TYPE_43:
                            case MTX_TYPE_44:
                            case MTX_TYPE_45:
                            case MTX_TYPE_46:
                            case MTX_TYPE_47:
                            case MTX_TYPE_48:
                            case MTX_TYPE_49:
                            case MTX_TYPE_50:
                                mtx = gDynamicBuffer1.top;
                                gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                break;
                            default:
                                if (ommtx->kind >= MTX_TYPE_66) {
                                    mtx = gDynamicBuffer1.top;
                                    gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                } else {
                                    mtx = *unk;
                                    goto END2;
                                }
                                break;
                        }
                    }
                } else {
                    if (gtlCurrentContextID > 0) {
                        mtx = gDynamicBuffer1.top;
                        gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                    } else if (dobj->gobj->lastDrawFrame == (u8) gtlDrawnFrameCounter) {
                        switch (ommtx->kind) {
                            case MTX_TYPE_33:
                            case MTX_TYPE_34:
                            case MTX_TYPE_35:
                            case MTX_TYPE_36:
                            case MTX_TYPE_37:
                            case MTX_TYPE_38:
                            case MTX_TYPE_39:
                            case MTX_TYPE_40:
                            case MTX_TYPE_41:
                            case MTX_TYPE_42:
                            case MTX_TYPE_43:
                            case MTX_TYPE_44:
                            case MTX_TYPE_45:
                            case MTX_TYPE_46:
                            case MTX_TYPE_47:
                            case MTX_TYPE_48:
                            case MTX_TYPE_49:
                            case MTX_TYPE_50:
                                mtx = gDynamicBuffer1.top;
                                gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                break;
                            default:
                                if (ommtx->kind >= MTX_TYPE_66) {
                                    mtx = gDynamicBuffer1.top;
                                    gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                } else {
                                    if (ommtx->unk05 != 3) {
                                        goto END2;
                                    }
                                    mtx = gDynamicBuffer1.top;
                                    gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                }
                                break;
                        }
                    }
                }

                sp2B8 = 0;
                switch (ommtx->kind) {
                    case MTX_TYPE_1:
                        break;
                    case MTX_TYPE_2:
                        break;
                    case MTX_TYPE_TRANSLATE:
                        HS64_Translate(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z);
                        break;
                    case MTX_TYPE_ROTATE_DEG:
                        HS64_MtxRotateDegrees(mtx, dobj->angle.a, dobj->angle.v.x, dobj->angle.v.y,
                                       dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_DEG_TRANSLATE:
                        HS64_MtxRotateTranslateDegrees(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                 dobj->angle.a, dobj->angle.v.x, dobj->angle.v.y,
                                                 dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_RPY_DEG:
                        HS64_MtxRotateRPYDegrees(mtx, dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_RPY_TRANSLATE_DEG:
                        HS64_MtxRotateRPYTranslateDegrees(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                     dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE:
                        HS64_MtxRotate(mtx, dobj->angle.a, dobj->angle.v.x, dobj->angle.v.y,
                                   dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_TRANSLATE:
                        HS64_MtxRotateTranslate(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                             dobj->angle.a, dobj->angle.v.x, dobj->angle.v.y,
                                             dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_TRANSLATE_SCALE:
                        HS64_MtxTransformRTS(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                   dobj->angle.a, dobj->angle.v.x, dobj->angle.v.y,
                                                   dobj->angle.v.z, dobj->scale.v.x, dobj->scale.v.y,
                                                   dobj->scale.v.z);
                        renderScaleX *= dobj->scale.v.x;
                        break;
                    case MTX_TYPE_ROTATE_RPY:
                        HS64_MtxRotateRPY(mtx, dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_RPY_TRANSLATE:
                        HS64_MtxRotateRPYTranslate(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                 dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_RPY_TRANSLATE_SCALE:
                        HS64_MtxRotateTransformSRT_RPY(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                       dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z,
                                                       dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
                        renderScaleX *= dobj->scale.v.x;
                        break;
                    case MTX_TYPE_ROTATE_PYR:
                        HS64_MtxRotatePYR(mtx, dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_PYR_TRANSLATE:
                        HS64_MtxRotatePYRTranslate(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                 dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
                        break;
                    case MTX_TYPE_ROTATE_PYR_TRANSLATE_SCALE:
                        HS64_MtxTransformRTS_PYR(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                                                       dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z,
                                                       dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
                        renderScaleX *= dobj->scale.v.x;
                        break;
                    case MTX_TYPE_SCALE:
                        HS64_MtxScale(mtx, dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
                        renderScaleX *= dobj->scale.v.x;
                        break;
                    case MTX_TYPE_33:
                        func_80010EF8(mtx, dobj, false);
                        break;
                    case MTX_TYPE_34:
                        func_80010EF8(mtx, dobj, true);
                        break;
                    case MTX_TYPE_35:
                        func_80010B58(mtx, dobj, false);
                        break;
                    case MTX_TYPE_36:
                        func_80010B58(mtx, dobj, true);
                        break;
                    case MTX_TYPE_37:
                        func_8001103C(mtx, dobj, false);
                        break;
                    case MTX_TYPE_38:
                        func_8001103C(mtx, dobj, true);
                        break;
                    case MTX_TYPE_39:
                        func_80010D28(mtx, dobj, false);
                        break;
                    case MTX_TYPE_40:
                        func_80010D28(mtx, dobj, true);
                        break;
                    case MTX_TYPE_56:
                        HS64_Translate(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z);
                        break;
                    case MTX_TYPE_57:
                        HS64_MtxRotate(mtx, sp2C4->a, sp2C4->v.x, sp2C4->v.y, sp2C4->v.z);
                        break;
                    case MTX_TYPE_58:
                        HS64_MtxRotateRPY(mtx, sp2C4->v.x, sp2C4->v.y, sp2C4->v.z);
                        break;
                    case MTX_TYPE_59:
                        HS64_MtxScale(mtx, sp2C0->v.x, sp2C0->v.y, sp2C0->v.z);
                        renderScaleX *= sp2C0->v.x;
                        // renScaleY *= sp2C0->v.y;
                        // renScaleZ *= sp2C0->v.z;
                        break;
                    case MTX_TYPE_60:
                        HS64_MtxRotateTranslate(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z, sp2C4->a, sp2C4->v.x,
                                             sp2C4->v.y, sp2C4->v.z);
                        break;
                    case MTX_TYPE_61:
                        HS64_MtxTransformRTS(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z, sp2C4->a,
                                                   sp2C4->v.x, sp2C4->v.y, sp2C4->v.z, sp2C0->v.x, sp2C0->v.y,
                                                   sp2C0->v.z);
                        renderScaleX *= sp2C0->v.x;
                        // renScaleY *= sp2C0->v.y;
                        // renScaleZ *= sp2C0->v.z;
                        break;
                    case MTX_TYPE_62:
                        HS64_MtxRotateRPYTranslate(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z, sp2C4->v.x,
                                                 sp2C4->v.y, sp2C4->v.z);
                        break;
                    case MTX_TYPE_63:
                        HS64_MtxRotateTransformSRT_RPY(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z, sp2C4->v.x,
                                                       sp2C4->v.y, sp2C4->v.z, sp2C0->v.x, sp2C0->v.y, sp2C0->v.z);
                        renderScaleX *= sp2C0->v.x;
                        // renScaleY *= sp2C0->v.y;
                        // renScaleZ *= sp2C0->v.z;
                        break;
                    case MTX_TYPE_41:
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, renderProjectionMtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, renderProjectionMtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, renderProjectionMtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, renderProjectionMtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, renderProjectionMtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, renderProjectionMtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, renderProjectionMtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, renderProjectionMtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, renderProjectionMtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, renderProjectionMtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, renderProjectionMtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, renderProjectionMtx->m[3][1]);
                        continue;
                    case MTX_TYPE_42:
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, renderProjectionMtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, renderProjectionMtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, renderProjectionMtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, renderProjectionMtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, renderProjectionMtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, renderProjectionMtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, renderProjectionMtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, renderProjectionMtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, renderProjectionMtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, renderProjectionMtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, renderProjectionMtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, renderProjectionMtx->m[3][1]);
                        continue;
                    case MTX_TYPE_43:
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = 0.0f;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][0] = 0.0f;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[3][1]);
                        continue;
                    case MTX_TYPE_44: {
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = 0.0f;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][0] = 0.0f;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_45: {
                        f32 sp1D4 = sinf(dobj->angle.v.x);
                        f32 f0 = cosf(dobj->angle.v.x);

                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderScaleX * f0;
                        renderMVPMatrixF[1][0] = renderPerspectiveMtxF[0][0] * renderScaleX * -sp1D4;
                        renderMVPMatrixF[0][1] = renderPerspectiveMtxF[1][1] * f12 * sp1D4;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12 * f0;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_46: {
                        f32 sp1D4 = sinf(dobj->angle.v.z);
                        f32 f0 = cosf(dobj->angle.v.z);

                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;

                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderScaleX * f0;
                        renderMVPMatrixF[1][0] = renderPerspectiveMtxF[0][0] * renderScaleX * -sp1D4;
                        renderMVPMatrixF[0][1] = renderPerspectiveMtxF[1][1] * f12 * sp1D4;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12 * f0;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_47: {
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB18[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = D_8004AB18[0][1] * renderScaleX;
                        renderMVPMatrixF[0][2] = D_8004AB18[0][2] * renderScaleX;
                        renderMVPMatrixF[0][3] = D_8004AB18[0][3] * renderScaleX;
                        renderMVPMatrixF[1][0] = D_8004AB18[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB18[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB18[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB18[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB18[2][0] * renderScaleX;
                        renderMVPMatrixF[2][1] = D_8004AB18[2][1] * renderScaleX;
                        renderMVPMatrixF[2][2] = D_8004AB18[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = D_8004AB18[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_48: {
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB18[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = D_8004AB18[0][1] * renderScaleX;
                        renderMVPMatrixF[0][2] = D_8004AB18[0][2] * renderScaleX;
                        renderMVPMatrixF[0][3] = D_8004AB18[0][3] * renderScaleX;
                        renderMVPMatrixF[1][0] = D_8004AB18[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB18[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB18[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB18[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB18[2][0] * renderScaleX;
                        renderMVPMatrixF[2][1] = D_8004AB18[2][1] * renderScaleX;
                        renderMVPMatrixF[2][2] = D_8004AB18[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = D_8004AB18[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_49: {
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB58[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = D_8004AB58[0][1] * renderScaleX;
                        renderMVPMatrixF[0][2] = D_8004AB58[0][2] * renderScaleX;
                        renderMVPMatrixF[0][3] = D_8004AB58[0][3] * renderScaleX;
                        renderMVPMatrixF[1][0] = D_8004AB58[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB58[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB58[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB58[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB58[2][0] * renderScaleX;
                        renderMVPMatrixF[2][1] = D_8004AB58[2][1] * renderScaleX;
                        renderMVPMatrixF[2][2] = D_8004AB58[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = D_8004AB58[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[3][1]);
                        continue;
                    }
                    case MTX_TYPE_50:
                        f12 = dobj->scale.v.y * renderScaleX;
                        renderScaleX *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB58[0][0] * renderScaleX;
                        renderMVPMatrixF[0][1] = D_8004AB58[0][1] * renderScaleX;
                        renderMVPMatrixF[0][2] = D_8004AB58[0][2] * renderScaleX;
                        renderMVPMatrixF[0][3] = D_8004AB58[0][3] * renderScaleX;
                        renderMVPMatrixF[1][0] = D_8004AB58[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB58[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB58[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB58[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB58[2][0] * renderScaleX;
                        renderMVPMatrixF[2][1] = D_8004AB58[2][1] * renderScaleX;
                        renderMVPMatrixF[2][2] = D_8004AB58[2][2] * renderScaleX;
                        renderMVPMatrixF[2][3] = D_8004AB58[2][3] * renderScaleX;
                        HS64_MtxF2L(renderMVPMatrixF, mtx);
                        gSPMvpRecalc(sp2DC++);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_I, mtx->m[0][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_I, mtx->m[0][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_I, mtx->m[0][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_I, mtx->m[0][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_I, mtx->m[1][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_I, mtx->m[1][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XX_XY_F, mtx->m[2][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_XZ_XW_F, mtx->m[2][1]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YX_YY_F, mtx->m[2][2]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_YZ_YW_F, mtx->m[2][3]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZX_ZY_F, mtx->m[3][0]);
                        gMoveWd(sp2DC++, G_MW_MATRIX, G_MWO_MATRIX_ZZ_ZW_F, mtx->m[3][1]);
                        continue;
                    // case MTX_TYPE_51:
                    //     HS64_MtxRotateRPYTranslate(mtx, dobj->pos.v.x * renderScaleX, dobj->pos.v.y * renScaleY,
                    //                              dobj->pos.v.z * renScaleZ, dobj->angle.v.x, dobj->angle.v.y,
                    //                              dobj->angle.v.z);
                    //     break;
                    // case MTX_TYPE_52:
                    //     HS64_MtxRotateRPYTranslate(mtx, dobj->pos.v.x * renderScaleX, dobj->pos.v.y * renScaleY,
                    //                              dobj->pos.v.z * renScaleZ, dobj->angle.v.x, dobj->angle.v.y,
                    //                              dobj->angle.v.z);
                    //     break;
                    // case MTX_TYPE_53:
                    //     renderScaleX *= dobj->scale.v.x;
                    //     renScaleY *= dobj->scale.v.y;
                    //     renScaleZ *= dobj->scale.v.z;
                    //     HS64_MtxScale(mtx, renderScaleX, renScaleY, renScaleZ);
                    //     renIsScaleMtxPushed = true;
                    //     sp2B8 = 2;
                    //     break;
                    // case MTX_TYPE_55:
                    //     HS64_Translate(mtx, dobj->pos.v.x * renderScaleX, dobj->pos.v.y * renScaleY,
                    //                   dobj->pos.v.z * renScaleZ);
                    //     break;
                    // case MTX_TYPE_64:
                    //     renderScaleX *= sp2C0->v.x;
                    //     renScaleY *= sp2C0->v.y;
                    //     renScaleZ *= sp2C0->v.z;
                    //     continue;
                    // case MTX_TYPE_65:
                    //     HS64_MtxRotateTranslate(mtx, sp2C8->f.v.x, sp2C8->f.v.y, sp2C8->f.v.z, sp2C4->a, sp2C4->v.x,
                    //                          sp2C4->v.y, sp2C4->v.z);
                    //     renderScaleX *= sp2C0->v.x;
                    //     renScaleY *= sp2C0->v.y;
                    //     renScaleZ *= sp2C0->v.z;
                    //     break;
                    // case MTX_TYPE_54:
                    //     func_8001ECD0(mtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z,
                    //                   dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z, renderScaleX, renScaleY,
                    //                   renScaleZ, dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
                    //     renderScaleX *= dobj->scale.v.x;
                    //     renScaleY *= dobj->scale.v.y;
                    //     renScaleZ *= dobj->scale.v.z;
                    //     break;

                    default:
                        if (ommtx->kind >= MTX_TYPE_66 && renderMatrixHandler != NULL) {
                            func = dobj->gobj->lastDrawFrame != (u8) gtlDrawnFrameCounter
                                       ? renderMatrixHandler[ommtx->kind - MTX_TYPE_66].unk0
                                       : renderMatrixHandler[ommtx->kind - MTX_TYPE_66].unk4;
                            sp2B8 = func(mtx, dobj, &sp2DC);
                        }
                        if (sp2B8 == 1) {
                            continue;
                        }
                        break;
                }
            END2:
                if (ommtx->unk05 == 1 && &ommtx->unk08 == mtx) {
                    ommtx->unk05 = 2;
                }
            }
            if (ommtx->kind != MTX_TYPE_2) {
                if (sp2B8 == 2 || sp2D4 == 0 && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                    gSPMatrix(sp2DC++, mtx, G_MTX_PUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                } else {
                    gSPMatrix(sp2DC++, mtx, G_MTX_NOPUSH | G_MTX_MUL | G_MTX_MODELVIEW);
                }
                sp2D4++;
            }
        }
    }

    *gfxPtr = sp2DC;
    return sp2D4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80011180.s")
#endif

#ifdef MIPS_TO_C

void func_80013300(void *arg0, void **arg1) {
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    s32 sp2C;
    s32 sp1C;
    ? *temp_v0;
    ? *var_a2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f0_5;
    f32 var_f0_6;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f12;
    f32 var_f2;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f6;
    f32 var_f8;
    f32 var_f8_2;
    s32 *temp_t0;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v1;
    s32 *var_a1;
    s32 *var_a1_2;
    s32 *var_t2;
    s32 temp_f10;
    s32 temp_t7;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_t5;
    s32 var_t6;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u16 temp_a0_4;
    u16 temp_t6;
    u16 temp_t7_2;
    u16 temp_t7_3;
    u16 temp_t7_4;
    u16 temp_t7_5;
    u16 temp_t8;
    u16 temp_t8_2;
    u16 temp_t9;
    u16 temp_t9_2;
    u16 temp_t9_3;
    u16 var_t1;
    u8 temp_v0_7;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a3;

    if (arg0->unk80 != NULL) {
        temp_a3 = *arg1;
        *arg1 = temp_a3 + 8;
        temp_a3->unk0 = 0xDB060038;
        var_t5 = 0;
        temp_a3->unk4 = D_8004A404;
        temp_v0 = arg0->unk80;
        var_a2 = temp_v0;
        if (temp_v0 != NULL) {
            do {
                var_a2 = *var_a2;
                var_t5 += 1;
            } while (var_a2 != NULL);
            var_a2 = temp_v0;
        }
        var_a1 = D_8004A404 + (var_t5 * 8);
        if (var_t5 > 0) {
            sp1C = var_t5 * 8;
            sp2C = 0;
            var_t2 = D_8004A404;
            var_f12 = spD8;
            var_f2 = spDC;
            do {
                var_t1 = var_a2->unk38;
                temp_v0_2 = var_a1;
                if (var_t1 == 0) {
                    var_t1 = 0xA1;
                }
                if (var_t1 & 0xE0) {
                    var_f2 = var_a2->unk24;
                    var_f12 = var_a2->unk28;
                    spD4 = var_a2->unk1C;
                    spD0 = var_a2->unk20;
                    spCC = var_a2->unk44;
                    spC8 = var_a2->unk48;
                    if (var_a2->unk18 != 0) {
                        var_f2 *= 0.5f;
                        temp_f0 = var_a2->unk30 * 0.5f;
                        spD4 = (((spD4 - var_a2->unk2C) + 1.0f) - temp_f0) * 0.5f;
                        spCC = (((spCC - var_a2->unk4C) + 1.0f) - temp_f0) * 0.5f;
                    }
                }
                var_t2->unk0 = 0xDE010000;
                var_t2->unk4 = var_a1;
                if (var_t1 & 4) {
                    temp_v0_2->unk0 = 0xFD100000;
                    var_a1 += 8;
                    temp_v0_2->unk4 = *(var_a2->unk34 + (var_a2->unk88 * 4));
                    if (var_t1 & 3) {
                        temp_a1 = var_a1 + 8;
                        var_a1->unk0 = 0xE8000000;
                        var_a1->unk4 = 0;
                        temp_a1_2 = temp_a1 + 8;
                        temp_a1->unk4 = 0x05000000;
                        temp_a1->unk0 = 0xF5000100;
                        temp_a1_3 = temp_a1_2 + 8;
                        temp_a1_2->unk0 = 0xE6000000;
                        temp_a1_2->unk4 = 0;
                        temp_a1_3->unk0 = 0xF0000000;
                        temp_a1_4 = temp_a1_3 + 8;
                        if (var_a2->unkB == 1) {
                            var_v0 = 0xFF;
                        } else {
                            var_v0 = 0xF;
                        }
                        temp_a1_3->unk4 = ((var_v0 & 0x3FF) << 0xE) | 0x05000000;
                        temp_a1_4->unk0 = 0xE7000000;
                        temp_a1_4->unk4 = 0;
                        var_a1 = temp_a1_4 + 8;
                    }
                }
                var_t2 += 8;
                if (var_t1 & 0x1000) {
                    var_a1->unk0 = 0xDB0A0000;
                    temp_a1_5 = var_a1 + 8;
                    var_a1->unk4 = var_a2->unk68;
                    temp_a1_5->unk0 = 0xDB0A0004;
                    var_a1 = temp_a1_5 + 8;
                    temp_a1_5->unk4 = var_a2->unk68;
                }
                if (var_t1 & 0x2000) {
                    var_a1->unk0 = 0xDB0A0018;
                    temp_a1_6 = var_a1 + 8;
                    var_a1->unk4 = var_a2->unk6C;
                    temp_a1_6->unk0 = 0xDB0A001C;
                    var_a1 = temp_a1_6 + 8;
                    temp_a1_6->unk4 = var_a2->unk6C;
                }
                if (var_t1 & 0x218) {
                    if (var_t1 & 0x10) {
                        temp_f0_2 = var_a2->unk84;
                        temp_f10 = temp_f0_2;
                        temp_v1 = var_a1;
                        var_a1 += 8;
                        temp_v1->unk0 = (var_a2->unk5D << 8) | 0xFA000000 | (((temp_f0_2 - temp_f10) * 256.0f) & 0xFF);
                        temp_v1->unk4 = (var_a2->unk58 << 0x18) | (var_a2->unk59 << 0x10) | (var_a2->unk5A << 8) | var_a2->unk5B;
                        var_a2->unk80 = temp_f10;
                        var_a2->unk82 = temp_f10 + 1;
                    } else {
                        temp_v0_3 = var_a1;
                        var_a1 += 8;
                        temp_v0_3->unk0 = (var_a2->unk5D << 8) | 0xFA000000 | ((var_a2->unk84 * 255.0f) & 0xFF);
                        temp_v0_3->unk4 = (var_a2->unk58 << 0x18) | (var_a2->unk59 << 0x10) | (var_a2->unk5A << 8) | var_a2->unk5B;
                    }
                }
                temp_v0_4 = var_a1;
                if (var_t1 & 0x400) {
                    temp_v0_4->unk0 = 0xFB000000;
                    var_a1 += 8;
                    temp_v0_4->unk4 = (var_a2->unk60 << 0x18) | (var_a2->unk61 << 0x10) | (var_a2->unk62 << 8) | var_a2->unk63;
                }
                temp_v0_5 = var_a1;
                if (var_t1 & 0x800) {
                    temp_v0_5->unk0 = 0xF9000000;
                    var_a1 += 8;
                    temp_v0_5->unk4 = (var_a2->unk64 << 0x18) | (var_a2->unk65 << 0x10) | (var_a2->unk66 << 8) | var_a2->unk67;
                }
                if (var_t1 & 0x12) {
                    var_v1 = 2;
                    if (var_a2->unk3B == 3) {
                        var_v1 = 3;
                    }
                    temp_v0_6 = var_a1;
                    temp_v0_6->unk0 = ((var_a2->unk3A & 7) << 0x15) | 0xFD000000 | ((var_v1 & 3) << 0x13);
                    var_a1 += 8;
                    temp_v0_6->unk4 = *(var_a2->unkC + (var_a2->unk82 * 4));
                    if (var_t1 & 0x11) {
                        var_a1->unk0 = 0xE6000000;
                        var_a1->unk4 = 0;
                        temp_v0_7 = var_a2->unk3B;
                        var_a1_2 = var_a1 + 8;
                        temp_t0 = var_a1_2;
                        switch (temp_v0_7) {        /* irregular */
                            case 0:
                                temp_t0->unk0 = 0xF3000000;
                                temp_a0 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3 = 0x7FF;
                                temp_v0_8 = (((temp_a0 * var_a2->unk3E) + 3) >> 2) - 1;
                                if (temp_v0_8 < 0x7FF) {
                                    var_a3 = temp_v0_8;
                                }
                                temp_v1_2 = temp_a0 / 16;
                                var_a0 = temp_v1_2;
                                if (temp_v1_2 <= 0) {
                                    var_a0 = 1;
                                }
                                if (temp_v1_2 <= 0) {
                                    var_v0_2 = 1;
                                } else {
                                    var_v0_2 = temp_v1_2;
                                }
                                var_t6 = (((var_a0 + 0x7FF) / var_v0_2) & 0xFFF) | 0x06000000 | ((var_a3 & 0xFFF) << 0xC);
block_70:
                                temp_t0->unk4 = var_t6;
                                break;
                            case 1:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_2 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_2 = 0x7FF;
                                temp_v0_9 = (((temp_a0_2 * var_a2->unk3E) + 1) >> 1) - 1;
                                if (temp_v0_9 < 0x7FF) {
                                    var_a3_2 = temp_v0_9;
                                }
                                temp_v1_3 = temp_a0_2 / 8;
                                var_a0_2 = temp_v1_3;
                                if (temp_v1_3 <= 0) {
                                    var_a0_2 = 1;
                                }
                                if (temp_v1_3 <= 0) {
                                    var_v0_3 = 1;
                                } else {
                                    var_v0_3 = temp_v1_3;
                                }
                                var_t6 = (((var_a0_2 + 0x7FF) / var_v0_3) & 0xFFF) | 0x06000000 | ((var_a3_2 & 0xFFF) << 0xC);
                                goto block_70;
                            case 2:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_3 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_3 = 0x7FF;
                                temp_v0_10 = (temp_a0_3 * var_a2->unk3E) - 1;
                                if (temp_v0_10 < 0x7FF) {
                                    var_a3_3 = temp_v0_10;
                                }
                                temp_v1_4 = (temp_a0_3 * 2) / 8;
                                var_a0_3 = temp_v1_4;
                                if (temp_v1_4 <= 0) {
                                    var_a0_3 = 1;
                                }
                                if (temp_v1_4 <= 0) {
                                    var_v0_4 = 1;
                                } else {
                                    var_v0_4 = temp_v1_4;
                                }
                                var_t6 = (((var_a0_3 + 0x7FF) / var_v0_4) & 0xFFF) | 0x06000000 | ((var_a3_3 & 0xFFF) << 0xC);
                                goto block_70;
                            case 3:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_4 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_4 = 0x7FF;
                                temp_v0_11 = (temp_a0_4 * var_a2->unk3E) - 1;
                                if (temp_v0_11 < 0x7FF) {
                                    var_a3_4 = temp_v0_11;
                                }
                                temp_v1_5 = (temp_a0_4 * 4) / 8;
                                var_a0_4 = temp_v1_5;
                                if (temp_v1_5 <= 0) {
                                    var_a0_4 = 1;
                                }
                                if (temp_v1_5 <= 0) {
                                    var_v0_5 = 1;
                                } else {
                                    var_v0_5 = temp_v1_5;
                                }
                                var_t6 = (((var_a0_4 + 0x7FF) / var_v0_5) & 0xFFF) | 0x06000000 | ((var_a3_4 & 0xFFF) << 0xC);
                                goto block_70;
                        }
                        var_a1_2->unk0 = 0xE6000000;
                        var_a1_2->unk4 = 0;
                        var_a1 = var_a1_2 + 8;
                    }
                }
                if (var_t1 & 0x11) {
                    temp_v0_12 = var_a1;
                    temp_v0_12->unk0 = ((var_a2->unkA & 7) << 0x15) | 0xFD000000 | ((var_a2->unkB & 3) << 0x13);
                    var_a1 += 8;
                    temp_v0_12->unk4 = *(var_a2->unkC + (var_a2->unk80 * 4));
                }
                temp_v0_13 = var_a1;
                if (var_t1 & 0x20) {
                    if (var_f2 < 0.0f) {
                        var_f0 = -var_f2;
                    } else {
                        var_f0 = var_f2;
                    }
                    if (var_f0 > 0.000015259022f) {
                        temp_t7_2 = var_a2->unk14;
                        var_f10 = temp_t7_2;
                        if (temp_t7_2 < 0) {
                            var_f10 += 4294967296.0f;
                        }
                        temp_t8 = var_a2->unk12;
                        var_f10_2 = temp_t8;
                        if (temp_t8 < 0) {
                            var_f10_2 += 4294967296.0f;
                        }
                        var_a0_5 = (((var_f10 * spD4) + var_f10_2) / var_f2) * 4.0f;
                    } else {
                        var_a0_5 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_2 = -var_f12;
                    } else {
                        var_f0_2 = var_f12;
                    }
                    if (var_f0_2 > 0.000015259022f) {
                        temp_t7_3 = var_a2->unk16;
                        var_f6 = temp_t7_3;
                        if (temp_t7_3 < 0) {
                            var_f6 += 4294967296.0f;
                        }
                        temp_t8_2 = var_a2->unk12;
                        var_f10_3 = temp_t8_2;
                        if (temp_t8_2 < 0) {
                            var_f10_3 += 4294967296.0f;
                        }
                        var_v1_2 = (((((1.0f - var_f12) - spD0) * var_f6) + var_f10_3) / var_f12) * 4.0f;
                    } else {
                        var_v1_2 = 0.0f;
                    }
                    temp_v0_13->unk0 = ((var_a0_5 & 0xFFF) << 0xC) | 0xF2000000 | (var_v1_2 & 0xFFF);
                    var_a1 += 8;
                    temp_v0_13->unk4 = (((((var_a2->unk14 - 1) * 4) + var_a0_5) & 0xFFF) << 0xC) | ((((var_a2->unk16 - 1) * 4) + var_v1_2) & 0xFFF);
                }
                temp_v0_14 = var_a1;
                if (var_t1 & 0x40) {
                    if (var_f2 < 0.0f) {
                        var_f0_3 = -var_f2;
                    } else {
                        var_f0_3 = var_f2;
                    }
                    if (var_f0_3 > 0.000015259022f) {
                        temp_t9 = var_a2->unk40;
                        var_f4 = temp_t9;
                        if (temp_t9 < 0) {
                            var_f4 += 4294967296.0f;
                        }
                        temp_t7_4 = var_a2->unk12;
                        var_f4_2 = temp_t7_4;
                        if (temp_t7_4 < 0) {
                            var_f4_2 += 4294967296.0f;
                        }
                        var_a0_6 = (((var_f4 * spCC) + var_f4_2) / var_f2) * 4.0f;
                    } else {
                        var_a0_6 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_4 = -var_f12;
                    } else {
                        var_f0_4 = var_f12;
                    }
                    if (var_f0_4 > 0.000015259022f) {
                        temp_t9_2 = var_a2->unk42;
                        var_f8 = temp_t9_2;
                        if (temp_t9_2 < 0) {
                            var_f8 += 4294967296.0f;
                        }
                        temp_t7_5 = var_a2->unk12;
                        var_f4_3 = temp_t7_5;
                        if (temp_t7_5 < 0) {
                            var_f4_3 += 4294967296.0f;
                        }
                        var_v1_3 = (((((1.0f - var_f12) - spC8) * var_f8) + var_f4_3) / var_f12) * 4.0f;
                    } else {
                        var_v1_3 = 0.0f;
                    }
                    temp_v0_14->unk0 = ((var_a0_6 & 0xFFF) << 0xC) | 0xF2000000 | (var_v1_3 & 0xFFF);
                    var_a1 += 8;
                    temp_v0_14->unk4 = (((((var_a2->unk40 - 1) * 4) + var_a0_6) & 0xFFF) << 0xC) | 0x01000000 | ((((var_a2->unk42 - 1) * 4) + var_v1_3) & 0xFFF);
                }
                if (var_t1 & 0x80) {
                    if (var_f2 < 0.0f) {
                        var_f0_5 = -var_f2;
                    } else {
                        var_f0_5 = var_f2;
                    }
                    if (var_f0_5 > 0.000015259022f) {
                        temp_t6 = var_a2->unk10;
                        var_f4_4 = temp_t6;
                        if (temp_t6 < 0) {
                            var_f4_4 += 4294967296.0f;
                        }
                        var_a0_7 = (2097152.0f / var_f4_4) / var_f2;
                    } else {
                        var_a0_7 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_6 = -var_f12;
                    } else {
                        var_f0_6 = var_f12;
                    }
                    if (var_f0_6 > 0.000015259022f) {
                        temp_t9_3 = var_a2->unk10;
                        var_f8_2 = temp_t9_3;
                        if (temp_t9_3 < 0) {
                            var_f8_2 += 4294967296.0f;
                        }
                        var_v1_4 = (2097152.0f / var_f8_2) / var_f12;
                    } else {
                        var_v1_4 = 0.0f;
                    }
                    if (var_a0_7 >= 0x10000) {
                        var_a0_7 = 0xFFFF;
                    }
                    if (var_v1_4 >= 0x10000) {
                        var_v1_4 = 0xFFFF;
                    }
                    var_a1->unk0 = 0xD7000002;
                    var_a1->unk4 = (var_a0_7 << 0x10) | (var_v1_4 & 0xFFFF);
                    var_a1 += 8;
                }
                var_a1->unk0 = 0xDF000000;
                var_a1->unk4 = 0;
                var_a1 += 8;
                temp_t7 = sp2C + 8;
                sp2C = temp_t7;
                var_a2 = var_a2->unk0;
            } while (temp_t7 != sp1C);
            spD8 = var_f12;
            spDC = var_f2;
        }
        D_8004A404 = var_a1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80013300.s")
#endif

#ifdef MIPS_TO_C

void func_800140FC(void *arg0, void **arg1) {
    s32 sp1C;
    void *sp18;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_2;

    temp_a2 = arg0->unk3C;
    renderScaleX = 1.0f;
    if ((temp_a2->unk50 != 0) && (temp_a2->unk54 == 0)) {
        sp18 = temp_a2;
        sp1C = func_80011180(arg1, temp_a2, temp_a2, arg1);
        func_80013300(sp18, arg1);
        temp_v1 = *arg1;
        *arg1 = temp_v1 + 8;
        temp_v1->unk0 = 0xDE000000;
        temp_v1->unk4 = temp_a2->unk50;
        if ((sp1C != 0) && ((temp_a2->unk14 == 1) || (temp_a2->unk8 != 0))) {
            temp_v1_2 = *arg1;
            *arg1 = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800140FC.s")
#endif

#ifdef MIPS_TO_C

void func_800141D4(void) {
    func_800140FC(&gDisplayListHeads);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800141D4.s")
#endif

#ifdef MIPS_TO_C

void func_800141F8(void) {
    func_800140FC(&D_8004A3D4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800141F8.s")
#endif

#ifdef MIPS_TO_C

void func_8001421C(void) {
    func_800140FC(&D_8004A3D8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001421C.s")
#endif

#ifdef MIPS_TO_C

void func_80014240(void) {
    func_800140FC(&D_8004A3DC);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014240.s")
#endif

#ifdef MIPS_TO_C

void func_80014264(void *arg0) {
    s32 sp2C;
    f32 sp24;
    void *temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *var_s0;

    if (!(arg0->unk54 & 2)) {
        sp24 = renderScaleX;
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0);
        if ((arg0->unk50 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0);
            temp_v1 = gDisplayListHeads;
            gDisplayListHeads = temp_v1 + 8;
            temp_v1->unk0 = 0xDE000000;
            temp_v1->unk4 = arg0->unk50;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80014264(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v1_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
        renderScaleX = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80014264(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014264.s")
#endif

#ifdef MIPS_TO_C

void func_800143A4(void *arg0) {
    renderScaleX = 1.0f;
    func_80014264(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800143A4.s")
#endif

#ifdef MIPS_TO_C

void func_800143D4(void *arg0, void *arg1) {
    s32 sp34;
    s32 sp30;
    void *sp2C;
    s32 sp28;
    s32 sp20;
    s32 *temp_a2;
    s32 *temp_a2_4;
    s32 *temp_a2_5;
    s32 *temp_a2_6;
    s32 *temp_a2_7;
    s32 *temp_a2_8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 var_a1;
    s32 var_t4;
    void **temp_a0;
    void **temp_a2_10;
    void **temp_a2_11;
    void **temp_a2_2;
    void **temp_a2_3;
    void **temp_a2_9;
    void *temp_t1;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t9;
    void *temp_t9_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *var_a3;
    void *var_v0;

    sp30 = -1;
    if ((arg1 != NULL) && (arg0->unk54 == 0)) {
        temp_a0 = &gDisplayListHeads + (arg1->unk0 * 4);
        temp_t1 = *temp_a0;
        sp2C = temp_t1;
        temp_v0 = func_80011180(temp_a0, arg0, arg1);
        temp_a1 = arg1->unk0;
        temp_a2 = &gDisplayListHeads + (temp_a1 * 4);
        var_t4 = temp_v0;
        temp_t0 = *temp_a2;
        if (arg1->unk4 != 0) {
            sp28 = temp_t0;
            sp2C = temp_t1;
            sp34 = temp_v0;
            sp20 = D_8004A404;
            func_80013300(arg0, temp_a2, temp_a2, arg1);
            var_t4 = sp34;
            temp_a2_2 = &gDisplayListHeads + (arg1->unk0 * 4);
            temp_v0_2 = *temp_a2_2;
            *temp_a2_2 = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = arg1->unk4;
            if ((var_t4 != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != 0))) {
                temp_a2_3 = &gDisplayListHeads + (arg1->unk0 * 4);
                temp_v0_3 = *temp_a2_3;
                *temp_a2_3 = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0x40;
                temp_v0_3->unk0 = 0xD8380002;
            }
        } else {
            sp30 = temp_a1;
        }
        var_a1 = arg1->unk8;
        var_a3 = arg1 + 8;
        if (var_a1 != 4) {
            do {
                if (var_a3->unk4 != 0) {
                    var_v0 = temp_t1;
                    if (temp_t1 != temp_t0) {
                        temp_a1_2 = (temp_t0 - temp_t1) & 0x1F;
                        if (temp_a1_2 != 0) {
                            do {
                                var_v0 += 8;
                                temp_t7 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7->unk0 = var_v0->unk-8;
                                temp_t7->unk4 = var_v0->unk-4;
                                temp_a2_4 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_4 += 8;
                            } while ((temp_a1_2 + temp_t1) != var_v0);
                            if (var_v0 != temp_t0) {
                                goto loop_16;
                            }
                        } else {
                            do {
loop_16:
                                var_v0 += 0x20;
                                temp_t9 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t9->unk0 = var_v0->unk-20;
                                temp_t9->unk4 = var_v0->unk-1C;
                                temp_a2_5 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_5 += 8;
                                temp_t7_2 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7_2->unk0 = var_v0->unk-18;
                                temp_t7_2->unk4 = var_v0->unk-14;
                                temp_a2_6 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_6 += 8;
                                temp_t9_2 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t9_2->unk0 = var_v0->unk-10;
                                temp_t9_2->unk4 = var_v0->unk-C;
                                temp_a2_7 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_7 += 8;
                                temp_t7_3 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7_3->unk0 = var_v0->unk-8;
                                temp_t7_3->unk4 = var_v0->unk-4;
                                temp_a2_8 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_8 += 8;
                            } while (var_v0 != temp_t0);
                        }
                        var_a1 = var_a3->unk0;
                    }
                    temp_a2_9 = &gDisplayListHeads + (var_a1 * 4);
                    if (arg0->unk80 != 0) {
                        temp_v0_4 = *temp_a2_9;
                        *temp_a2_9 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDB060038;
                        temp_v0_4->unk4 = sp20;
                        var_a1 = var_a3->unk0;
                    }
                    temp_a2_10 = &gDisplayListHeads + (var_a1 * 4);
                    temp_v0_5 = *temp_a2_10;
                    *temp_a2_10 = temp_v0_5 + 8;
                    temp_v0_5->unk0 = 0xDE000000;
                    temp_v0_5->unk4 = var_a3->unk4;
                    if ((var_t4 != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != 0))) {
                        temp_a2_11 = &gDisplayListHeads + (var_a3->unk0 * 4);
                        temp_v0_6 = *temp_a2_11;
                        *temp_a2_11 = temp_v0_6 + 8;
                        temp_v0_6->unk4 = 0x40;
                        temp_v0_6->unk0 = 0xD8380002;
                    }
                }
                var_a1 = var_a3->unk8;
                var_a3 += 8;
            } while (var_a1 != 4);
        }
        if (sp30 != -1) {
            *(&gDisplayListHeads + (sp30 * 4)) = temp_t1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800143D4.s")
#endif

#ifdef MIPS_TO_C

void func_80014768(void *arg0) {
    void *temp_a0;

    renderScaleX = 1.0f;
    temp_a0 = arg0->unk3C;
    func_800143D4(temp_a0, temp_a0->unk50);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014768.s")
#endif

#ifdef MIPS_TO_C

void func_8001479C(void) {
    D_8004ABA0 = &D_8004ABB8;
    D_8004ABA8 = &D_8004ABB8;
    D_8004ABA8 = &D_8004ABB8;
    D_8004ABB0 = &D_8004ABB8;
    D_8004ABB0 = &D_8004ABB8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001479C.s")
#endif

#ifdef MIPS_TO_C

void func_800147C8(void *arg0) {
    s32 sp48;
    s32 *sp44;
    u32 sp40;
    f32 sp34;
    ? *var_a2_2;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t5;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_3;

    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp34 = renderScaleX;
        temp_a2 = arg0->unk50;
        sp40 = D_8004ABA0;
        sp44 = temp_a2;
        var_a2 = temp_a2;
        var_t3 = func_80011180(&D_8004ABA0, arg0, temp_a2);
        if ((var_a2 != NULL) && !(arg0->unk54 & 1)) {
            var_v0 = *var_a2;
            if (var_v0 != 4) {
                do {
                    var_s0 = var_v0 * 4;
                    if (var_a2->unk4 != 0) {
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t5 = *(&gDisplayListHeads + var_s0);
                                temp_t5->unk0 = var_a0->unk0;
                                temp_t5->unk4 = var_a0->unk4;
                                temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                *temp_v1 += 8;
                                temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                *temp_v0 += 8;
                                var_s0 = var_a2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_2 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp44 = var_a2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2, &D_8004ABA8);
                                var_s0_2 = var_a2->unk0;
                            } else {
                                temp_v0_2 = *temp_v1_2;
                                *temp_v1_2 = temp_v0_2 + 8;
                                temp_v0_2->unk4 = var_s4;
                                temp_v0_2->unk0 = 0xDB060038;
                                var_s0_2 = var_a2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_3 = &gDisplayListHeads + var_s0;
                        temp_v0_3 = *temp_v1_3;
                        *temp_v1_3 = temp_v0_3 + 8;
                        temp_v0_3->unk0 = 0xDE000000;
                        temp_v0_3->unk4 = var_a2->unk4;
                    }
                    var_v0 = var_a2->unk8;
                    var_a2 += 8;
                } while (var_v0 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_800147C8(temp_a0);
        }
        var_a2_2 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp40;
        do {
            if (D_8004ABA0 < var_a2_2->unk0) {
                var_a2_2->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_4;
                    *temp_v1_4 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_2->unk4) {
                var_a2_2->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_5->unk4;
                    temp_v1_5->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_2 += 8;
            var_a3 += 8;
        } while (var_a2_2 != &D_8004ABB8);
        renderScaleX = sp34;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_800147C8(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800147C8.s")
#endif

#ifdef MIPS_TO_C

void func_80014AD4(void *arg0) {
    renderScaleX = 1.0f;
    func_800147C8(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014AD4.s")
#endif

#ifdef MIPS_TO_C

f32 func_80014B04(void *arg0) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f2 = arg0->unk1C - temp_v0->unk3C;
    temp_f12 = arg0->unk20 - temp_v0->unk40;
    temp_f14 = arg0->unk24 - temp_v0->unk44;
    return (temp_f2 * temp_f2) + (temp_f12 * temp_f12) + (temp_f14 * temp_f14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014B04.s")
#endif

#ifdef MIPS_TO_C

void func_80014B4C(void *arg0) {
    f32 *sp24;
    s32 sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    f32 temp_f6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;

    temp_s0 = arg0->unk3C;
    temp_v1 = temp_s0->unk50;
    if ((temp_v1 != NULL) && (temp_s0->unk54 == 0)) {
        sp24 = temp_v1;
        temp_f0 = func_80014B04(temp_s0);
        var_v1 = temp_v1;
        if (temp_f0 < *var_v1) {
            do {
                temp_f6 = var_v1->unk8;
                var_v1 += 8;
            } while (temp_f0 < temp_f6);
        }
        renderScaleX = 1.0f;
        if (var_v1->unk4 != 0) {
            sp24 = var_v1;
            sp20 = func_80011180(&gDisplayListHeads, temp_s0, &gDisplayListHeads);
            func_80013300(temp_s0, &gDisplayListHeads, &gDisplayListHeads);
            temp_a0 = gDisplayListHeads;
            gDisplayListHeads = temp_a0 + 8;
            temp_a0->unk0 = 0xDE000000;
            temp_a0->unk4 = var_v1->unk4;
            if ((sp20 != 0) && ((temp_s0->unk14 == 1) || (temp_s0->unk8 != 0))) {
                temp_a0_2 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_2 + 8;
                temp_a0_2->unk4 = 0x40;
                temp_a0_2->unk0 = 0xD8380002;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014B4C.s")
#endif

#ifdef MIPS_TO_C

void func_80014C78(void *arg0) {
    s32 sp2C;
    f32 sp20;
    s32 temp_s0;
    void *temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *var_s0;

    temp_s0 = arg0->unk50;
    if (!(arg0->unk54 & 2)) {
        sp20 = renderScaleX;
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0);
        if ((temp_s0 != 0) && (*(temp_s0 + (D_8004AD98 * 4)) != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0);
            temp_v1 = gDisplayListHeads;
            gDisplayListHeads = temp_v1 + 8;
            temp_v1->unk0 = 0xDE000000;
            temp_v1->unk4 = *(temp_s0 + (D_8004AD98 * 4));
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80014C78(temp_a0, &gDisplayListHeads, arg0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v1_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
        renderScaleX = sp20;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80014C78(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014C78.s")
#endif

#ifdef MIPS_TO_C

void func_80014DF0(void *arg0) {
    f32 *sp2C;
    s32 sp28;
    void *sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2;
    void *var_a2;
    void *var_s0;

    temp_a2 = arg0->unk3C;
    renderScaleX = 1.0f;
    if (!(temp_a2->unk54 & 2)) {
        temp_v1 = temp_a2->unk50;
        if (temp_v1 != NULL) {
            D_8004AD98 = 0;
            sp2C = temp_v1;
            sp20 = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v1 = temp_v1;
            if (temp_f0 < *var_v1) {
                do {
                    var_v1 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_v1);
            }
            sp2C = var_v1;
            sp20 = temp_a2;
            sp28 = func_80011180(&gDisplayListHeads, temp_a2, temp_a2);
            var_a2 = temp_a2;
            if ((var_v1->unk4 != 0) && !(var_a2->unk54 & 1)) {
                sp2C = var_v1;
                sp20 = var_a2;
                func_80013300(var_a2, &gDisplayListHeads, var_a2);
                temp_a0 = gDisplayListHeads;
                gDisplayListHeads = temp_a0 + 8;
                temp_a0->unk0 = 0xDE000000;
                temp_a0->unk4 = var_v1->unk4;
            }
            temp_a0_2 = var_a2->unk10;
            if (temp_a0_2 != NULL) {
                sp20 = var_a2;
                func_80014C78(temp_a0_2);
            }
            if ((sp28 != 0) && ((var_a2->unk14 == 1) || (var_a2->unk8 != NULL))) {
                temp_a0_3 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_3 + 8;
                temp_a0_3->unk4 = 0x40;
                temp_a0_3->unk0 = 0xD8380002;
            }
            if (var_a2->unkC == 0) {
                var_s0 = var_a2->unk8;
                if (var_s0 != NULL) {
                    do {
                        func_80014C78(var_s0);
                        var_s0 = var_s0->unk8;
                    } while (var_s0 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014DF0.s")
#endif

#ifdef MIPS_TO_C

void func_80014FA4(void *arg0) {
    f32 *sp24;
    void *sp1C;
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f8;
    void *temp_a2;

    temp_a2 = arg0->unk3C;
    renderScaleX = 1.0f;
    if (temp_a2->unk54 == 0) {
        temp_v0 = temp_a2->unk50;
        if (temp_v0 != NULL) {
            sp24 = temp_v0;
            sp1C = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v0 = temp_v0;
            if (temp_f0 < *var_v0) {
                do {
                    temp_f8 = var_v0->unk8;
                    var_v0 += 8;
                } while (temp_f0 < temp_f8);
            }
            func_800143D4(temp_a2, var_v0->unk4, temp_a2);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014FA4.s")
#endif

#ifdef MIPS_TO_C

void func_8001503C(void *arg0, s32 *arg2) {
    s32 sp48;
    s32 *sp40;
    u32 sp3C;
    f32 sp30;
    ? *var_a2_3;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 *var_a2_2;
    s32 temp_s0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t8;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_3;

    var_a2 = arg2;
    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp30 = renderScaleX;
        temp_s0 = arg0->unk50;
        if (temp_s0 != 0) {
            var_a2 = *(temp_s0 + (D_8004AD98 * 4));
            sp40 = var_a2;
        }
        sp3C = D_8004ABA0;
        var_a2_2 = sp40;
        var_t3 = func_80011180(&D_8004ABA0, arg0, var_a2);
        if ((temp_s0 != 0) && (var_a2_2 != NULL) && !(arg0->unk54 & 1)) {
            var_v0 = *var_a2_2;
            if (var_v0 != 4) {
                do {
                    var_s0 = var_v0 * 4;
                    if (var_a2_2->unk4 != 0) {
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t8 = *(&gDisplayListHeads + var_s0);
                                temp_t8->unk0 = var_a0->unk0;
                                temp_t8->unk4 = var_a0->unk4;
                                temp_v1 = &gDisplayListHeads + (var_a2_2->unk0 * 4);
                                *temp_v1 += 8;
                                temp_v0 = &D_8004ABA8 + (var_a2_2->unk0 * 4);
                                *temp_v0 += 8;
                                var_s0 = var_a2_2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_2 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp40 = var_a2_2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2_2, &D_8004ABA8);
                                var_s0_2 = var_a2_2->unk0;
                            } else {
                                temp_v0_2 = *temp_v1_2;
                                *temp_v1_2 = temp_v0_2 + 8;
                                temp_v0_2->unk4 = var_s4;
                                temp_v0_2->unk0 = 0xDB060038;
                                var_s0_2 = var_a2_2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_3 = &gDisplayListHeads + var_s0;
                        temp_v0_3 = *temp_v1_3;
                        *temp_v1_3 = temp_v0_3 + 8;
                        temp_v0_3->unk0 = 0xDE000000;
                        temp_v0_3->unk4 = var_a2_2->unk4;
                    }
                    var_v0 = var_a2_2->unk8;
                    var_a2_2 += 8;
                } while (var_v0 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_8001503C(temp_a0);
        }
        var_a2_3 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp3C;
        do {
            if (D_8004ABA0 < var_a2_3->unk0) {
                var_a2_3->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_4;
                    *temp_v1_4 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_3->unk4) {
                var_a2_3->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_5->unk4;
                    temp_v1_5->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_3 += 8;
            var_a3 += 8;
        } while (var_a2_3 != &D_8004ABB8);
        renderScaleX = sp30;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_8001503C(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001503C.s")
#endif

#ifdef MIPS_TO_C

void func_80015368(void *arg0) {
    s32 sp44;
    s32 *sp34;
    u32 sp30;
    ? *var_a2_2;
    f32 *var_s0;
    f32 temp_f0;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_s3;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_4;

    temp_s3 = arg0->unk3C;
    renderScaleX = 1.0f;
    var_s4 = 0;
    if (!(temp_s3->unk54 & 2)) {
        var_s0 = temp_s3->unk50;
        if (var_s0 != NULL) {
            D_8004AD98 = 0;
            temp_f0 = func_80014B04(temp_s3);
            if (temp_f0 < *var_s0) {
                do {
                    var_s0 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_s0);
            }
            temp_a2 = var_s0->unk4;
            sp34 = temp_a2;
            sp30 = D_8004ABA0;
            var_a2 = temp_a2;
            var_t3 = func_80011180(&D_8004ABA0, temp_s3, temp_a2);
            if ((var_a2 != NULL) && !(temp_s3->unk54 & 1)) {
                var_v0 = *var_a2;
                if (var_v0 != 4) {
                    do {
                        var_s0_2 = var_v0 * 4;
                        if (var_a2->unk4 != 0) {
                            var_a0 = *(&D_8004ABA8 + var_s0_2);
                            if (D_8004ABA0 != var_a0) {
                                do {
                                    temp_t7 = *(&gDisplayListHeads + var_s0_2);
                                    temp_t7->unk0 = var_a0->unk0;
                                    temp_t7->unk4 = var_a0->unk4;
                                    temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                    *temp_v1 += 8;
                                    temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                    *temp_v0 += 8;
                                    var_s0_2 = var_a2->unk0 * 4;
                                    var_a0 = *(&D_8004ABA8 + var_s0_2);
                                } while (D_8004ABA0 != var_a0);
                            }
                            if (temp_s3->unk80 != 0) {
                                temp_v1_2 = &gDisplayListHeads + var_s0_2;
                                if (var_s4 == 0) {
                                    var_s4 = D_8004A404;
                                    sp34 = var_a2;
                                    sp44 = var_t3;
                                    func_80013300(temp_s3, &gDisplayListHeads + var_s0_2, var_a2, &D_8004ABA8);
                                    var_s0_3 = var_a2->unk0;
                                } else {
                                    temp_v0_2 = *temp_v1_2;
                                    *temp_v1_2 = temp_v0_2 + 8;
                                    temp_v0_2->unk4 = var_s4;
                                    temp_v0_2->unk0 = 0xDB060038;
                                    var_s0_3 = var_a2->unk0;
                                }
                                var_s0_2 = var_s0_3 * 4;
                            }
                            temp_v1_3 = &gDisplayListHeads + var_s0_2;
                            temp_v0_3 = *temp_v1_3;
                            *temp_v1_3 = temp_v0_3 + 8;
                            temp_v0_3->unk0 = 0xDE000000;
                            temp_v0_3->unk4 = var_a2->unk4;
                        }
                        var_v0 = var_a2->unk8;
                        var_a2 += 8;
                    } while (var_v0 != 4);
                }
            }
            temp_a0 = temp_s3->unk10;
            if (temp_a0 != NULL) {
                sp44 = var_t3;
                func_8001503C(temp_a0);
            }
            var_a2_2 = &D_8004ABA8;
            var_a3 = 0;
            D_8004ABA0 = sp30;
            do {
                if (D_8004ABA0 < var_a2_2->unk0) {
                    var_a2_2->unk0 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_2 = *temp_v1_4;
                        *temp_v1_4 = temp_a0_2 + 8;
                        temp_a0_2->unk4 = 0x40;
                        temp_a0_2->unk0 = 0xD8380002;
                    }
                }
                if (D_8004ABA0 < var_a2_2->unk4) {
                    var_a2_2->unk4 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_3 = temp_v1_5->unk4;
                        temp_v1_5->unk4 = temp_a0_3 + 8;
                        temp_a0_3->unk4 = 0x40;
                        temp_a0_3->unk0 = 0xD8380002;
                    }
                }
                var_a2_2 += 8;
                var_a3 += 8;
            } while (var_a2_2 != &D_8004ABB8);
            if (temp_s3->unkC == 0) {
                var_s0_4 = temp_s3->unk8;
                if (var_s0_4 != NULL) {
                    do {
                        func_8001503C(var_s0_4);
                        var_s0_4 = var_s0_4->unk8;
                    } while (var_s0_4 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015368.s")
#endif

#ifdef MIPS_TO_C

void func_800156C4(void *arg0) {
    s32 sp2C;
    f32 sp24;
    u8 temp_v0;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s0;

    temp_v0 = arg0->unk54;
    temp_s0 = arg0->unk50;
    if (!(temp_v0 & 2)) {
        sp24 = renderScaleX;
        if ((temp_s0 != NULL) && (temp_s0->unk0 != 0) && !(temp_v0 & 1)) {
            temp_v0_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = temp_s0->unk0;
        }
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0, &gDisplayListHeads);
        if ((temp_s0 != NULL) && (temp_s0->unk4 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0, &gDisplayListHeads);
            temp_v0_3 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xDE000000;
            temp_v0_3->unk4 = temp_s0->unk4;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_800156C4(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v0_4 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x40;
            temp_v0_4->unk0 = 0xD8380002;
        }
        renderScaleX = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_800156C4(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800156C4.s")
#endif

#ifdef MIPS_TO_C

void func_8001585C(void *arg0) {
    renderScaleX = 1.0f;
    func_800156C4(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001585C.s")
#endif

#ifdef MIPS_TO_C

void func_8001588C(void *arg0) {
    s32 sp48;
    s32 *sp44;
    u32 sp40;
    f32 sp34;
    ? *var_a2_2;
    s32 *temp_a2;
    s32 *temp_v0_2;
    s32 *temp_v1_2;
    s32 *var_a2;
    s32 var_a1;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    void **temp_v1;
    void **temp_v1_3;
    void **temp_v1_4;
    void **temp_v1_5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t9;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_6;
    void *var_a0;
    void *var_s0_3;

    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp34 = renderScaleX;
        temp_a2 = arg0->unk50;
        sp40 = D_8004ABA0;
        sp44 = temp_a2;
        var_a2 = temp_a2;
        var_t3 = func_80011180(&D_8004ABA0, arg0, temp_a2);
        if ((var_a2 != NULL) && !(arg0->unk54 & 1)) {
            var_a1 = *var_a2;
            if (var_a1 != 4) {
                do {
                    if (var_a2->unk8 != 0) {
                        temp_v1 = &gDisplayListHeads + (var_a1 * 4);
                        if (var_a2->unk4 != 0) {
                            temp_v0 = *temp_v1;
                            *temp_v1 = temp_v0 + 8;
                            temp_v0->unk0 = 0xDE000000;
                            temp_v0->unk4 = var_a2->unk4;
                            var_a1 = var_a2->unk0;
                        }
                        var_s0 = var_a1 * 4;
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t9 = *(&gDisplayListHeads + var_s0);
                                temp_t9->unk0 = var_a0->unk0;
                                temp_t9->unk4 = var_a0->unk4;
                                temp_v1_2 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                *temp_v1_2 += 8;
                                temp_v0_2 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                *temp_v0_2 += 8;
                                var_s0 = var_a2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_3 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp44 = var_a2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2, &D_8004ABA8);
                                var_s0_2 = var_a2->unk0;
                            } else {
                                temp_v0_3 = *temp_v1_3;
                                *temp_v1_3 = temp_v0_3 + 8;
                                temp_v0_3->unk4 = var_s4;
                                temp_v0_3->unk0 = 0xDB060038;
                                var_s0_2 = var_a2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_4 = &gDisplayListHeads + var_s0;
                        temp_v0_4 = *temp_v1_4;
                        *temp_v1_4 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDE000000;
                        temp_v0_4->unk4 = var_a2->unk8;
                    }
                    var_a1 = var_a2->unkC;
                    var_a2 += 0xC;
                } while (var_a1 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_8001588C(temp_a0);
        }
        var_a2_2 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp40;
        do {
            if (D_8004ABA0 < var_a2_2->unk0) {
                var_a2_2->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_5;
                    *temp_v1_5 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_2->unk4) {
                var_a2_2->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_6 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_6->unk4;
                    temp_v1_6->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_2 += 8;
            var_a3 += 8;
        } while (var_a2_2 != &D_8004ABB8);
        renderScaleX = sp34;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_8001588C(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001588C.s")
#endif

#ifdef MIPS_TO_C

void func_80015BCC(void *arg0) {
    renderScaleX = 1.0f;
    func_8001588C(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015BCC.s")
#endif

#ifdef MIPS_TO_C

void func_80015BFC(void *arg0) {
    s32 sp2C;
    f32 sp24;
    void *sp20;
    s32 temp_s0;
    u8 temp_v0;
    void *temp_a0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s0;

    temp_v0 = arg0->unk54;
    temp_s0 = arg0->unk50;
    if (!(temp_v0 & 2)) {
        sp24 = renderScaleX;
        if (temp_s0 != 0) {
            sp20 = *(temp_s0 + (D_8004AD98 * 4));
        }
        if ((temp_s0 != 0) && (sp20->unk0 != 0) && !(temp_v0 & 1)) {
            temp_v0_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = sp20->unk0;
        }
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0, &gDisplayListHeads);
        if ((temp_s0 != 0) && (sp20->unk4 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0, &gDisplayListHeads);
            temp_v0_3 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xDE000000;
            temp_v0_3->unk4 = sp20->unk4;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80015BFC(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v0_4 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x40;
            temp_v0_4->unk0 = 0xD8380002;
        }
        renderScaleX = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80015BFC(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015BFC.s")
#endif

#ifdef MIPS_TO_C

void func_80015DC4(void *arg0) {
    f32 *sp2C;
    s32 sp28;
    void *sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2;
    void *var_a2;
    void *var_s0;

    temp_a2 = arg0->unk3C;
    if (!(temp_a2->unk54 & 2)) {
        temp_v1 = temp_a2->unk50;
        if (temp_v1 != NULL) {
            renderScaleX = 1.0f;
            D_8004AD98 = 0;
            sp2C = temp_v1;
            sp20 = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v1 = temp_v1;
            if (temp_f0 < *var_v1) {
                do {
                    var_v1 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_v1);
            }
            sp2C = var_v1;
            sp20 = temp_a2;
            sp28 = func_80011180(&gDisplayListHeads, temp_a2, temp_a2);
            var_a2 = temp_a2;
            if ((var_v1->unk4 != 0) && !(var_a2->unk54 & 1)) {
                sp2C = var_v1;
                sp20 = var_a2;
                func_80013300(var_a2, &gDisplayListHeads, var_a2);
                temp_a0 = gDisplayListHeads;
                gDisplayListHeads = temp_a0 + 8;
                temp_a0->unk0 = 0xDE000000;
                temp_a0->unk4 = var_v1->unk4;
            }
            temp_a0_2 = var_a2->unk10;
            if (temp_a0_2 != NULL) {
                sp20 = var_a2;
                func_80015BFC(temp_a0_2);
            }
            if ((sp28 != 0) && ((var_a2->unk14 == 1) || (var_a2->unk8 != NULL))) {
                temp_a0_3 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_3 + 8;
                temp_a0_3->unk4 = 0x40;
                temp_a0_3->unk0 = 0xD8380002;
            }
            if (var_a2->unkC == 0) {
                var_s0 = var_a2->unk8;
                if (var_s0 != NULL) {
                    do {
                        func_80015BFC(var_s0);
                        var_s0 = var_s0->unk8;
                    } while (var_s0 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015DC4.s")
#endif

#ifdef MIPS_TO_C

void func_80015F78(void *arg0, s32 *arg2) {
    s32 sp48;
    s32 *sp40;
    u32 sp3C;
    f32 sp30;
    ? *var_a2_3;
    s32 *temp_v0_2;
    s32 *temp_v1_2;
    s32 *var_a2;
    s32 *var_a2_2;
    s32 temp_s0;
    s32 var_a1;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t4;
    void **temp_v1;
    void **temp_v1_3;
    void **temp_v1_4;
    void **temp_v1_5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t7;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_6;
    void *var_a0;
    void *var_s0_3;

    var_a2 = arg2;
    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp30 = renderScaleX;
        temp_s0 = arg0->unk50;
        if (temp_s0 != 0) {
            var_a2 = *(temp_s0 + (D_8004AD98 * 4));
            sp40 = var_a2;
        }
        sp3C = D_8004ABA0;
        var_a2_2 = sp40;
        var_t4 = func_80011180(&D_8004ABA0, arg0, var_a2);
        if ((temp_s0 != 0) && (var_a2_2 != NULL) && !(arg0->unk54 & 1)) {
            var_a1 = *var_a2_2;
            if (var_a1 != 4) {
                do {
                    if (var_a2_2->unk8 != 0) {
                        temp_v1 = &gDisplayListHeads + (var_a1 * 4);
                        if (var_a2_2->unk4 != 0) {
                            temp_v0 = *temp_v1;
                            *temp_v1 = temp_v0 + 8;
                            temp_v0->unk0 = 0xDE000000;
                            temp_v0->unk4 = var_a2_2->unk4;
                            var_a1 = var_a2_2->unk0;
                        }
                        var_s0 = var_a1 * 4;
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t7 = *(&gDisplayListHeads + var_s0);
                                temp_t7->unk0 = var_a0->unk0;
                                temp_t7->unk4 = var_a0->unk4;
                                temp_v1_2 = &gDisplayListHeads + (var_a2_2->unk0 * 4);
                                *temp_v1_2 += 8;
                                temp_v0_2 = &D_8004ABA8 + (var_a2_2->unk0 * 4);
                                *temp_v0_2 += 8;
                                var_s0 = var_a2_2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_3 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp40 = var_a2_2;
                                sp48 = var_t4;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2_2, &D_8004ABA8);
                                var_s0_2 = var_a2_2->unk0;
                            } else {
                                temp_v0_3 = *temp_v1_3;
                                *temp_v1_3 = temp_v0_3 + 8;
                                temp_v0_3->unk4 = var_s4;
                                temp_v0_3->unk0 = 0xDB060038;
                                var_s0_2 = var_a2_2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_4 = &gDisplayListHeads + var_s0;
                        temp_v0_4 = *temp_v1_4;
                        *temp_v1_4 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDE000000;
                        temp_v0_4->unk4 = var_a2_2->unk8;
                    }
                    var_a1 = var_a2_2->unkC;
                    var_a2_2 += 0xC;
                } while (var_a1 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t4;
            func_80015F78(temp_a0);
        }
        var_a2_3 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp3C;
        do {
            if (D_8004ABA0 < var_a2_3->unk0) {
                var_a2_3->unk0 = D_8004ABA0;
                if ((var_t4 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_5;
                    *temp_v1_5 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_3->unk4) {
                var_a2_3->unk4 = D_8004ABA0;
                if ((var_t4 != 0) && ((temp_v1_6 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_6->unk4;
                    temp_v1_6->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_3 += 8;
            var_a3 += 8;
        } while (var_a2_3 != &D_8004ABB8);
        renderScaleX = sp30;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_80015F78(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015F78.s")
#endif

#ifdef MIPS_TO_C

void func_800162D8(void *arg0) {
    s32 sp44;
    s32 *sp34;
    u32 sp30;
    ? *var_a2_2;
    f32 *var_s0;
    f32 temp_f0;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_s3;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_4;

    temp_s3 = arg0->unk3C;
    var_s4 = 0;
    if (!(temp_s3->unk54 & 2)) {
        var_s0 = temp_s3->unk50;
        if (var_s0 != NULL) {
            renderScaleX = 1.0f;
            D_8004AD98 = 0;
            temp_f0 = func_80014B04(temp_s3);
            if (temp_f0 < *var_s0) {
                do {
                    var_s0 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_s0);
            }
            temp_a2 = var_s0->unk4;
            sp34 = temp_a2;
            sp30 = D_8004ABA0;
            var_a2 = temp_a2;
            var_t3 = func_80011180(&D_8004ABA0, temp_s3, temp_a2);
            if ((var_a2 != NULL) && !(temp_s3->unk54 & 1)) {
                var_v0 = *var_a2;
                if (var_v0 != 4) {
                    do {
                        var_s0_2 = var_v0 * 4;
                        if (var_a2->unk4 != 0) {
                            var_a0 = *(&D_8004ABA8 + var_s0_2);
                            if (D_8004ABA0 != var_a0) {
                                do {
                                    temp_t7 = *(&gDisplayListHeads + var_s0_2);
                                    temp_t7->unk0 = var_a0->unk0;
                                    temp_t7->unk4 = var_a0->unk4;
                                    temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                    *temp_v1 += 8;
                                    temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                    *temp_v0 += 8;
                                    var_s0_2 = var_a2->unk0 * 4;
                                    var_a0 = *(&D_8004ABA8 + var_s0_2);
                                } while (D_8004ABA0 != var_a0);
                            }
                            if (temp_s3->unk80 != 0) {
                                temp_v1_2 = &gDisplayListHeads + var_s0_2;
                                if (var_s4 == 0) {
                                    var_s4 = D_8004A404;
                                    sp34 = var_a2;
                                    sp44 = var_t3;
                                    func_80013300(temp_s3, &gDisplayListHeads + var_s0_2, var_a2, &D_8004ABA8);
                                    var_s0_3 = var_a2->unk0;
                                } else {
                                    temp_v0_2 = *temp_v1_2;
                                    *temp_v1_2 = temp_v0_2 + 8;
                                    temp_v0_2->unk4 = var_s4;
                                    temp_v0_2->unk0 = 0xDB060038;
                                    var_s0_3 = var_a2->unk0;
                                }
                                var_s0_2 = var_s0_3 * 4;
                            }
                            temp_v1_3 = &gDisplayListHeads + var_s0_2;
                            temp_v0_3 = *temp_v1_3;
                            *temp_v1_3 = temp_v0_3 + 8;
                            temp_v0_3->unk0 = 0xDE000000;
                            temp_v0_3->unk4 = var_a2->unk4;
                        }
                        var_v0 = var_a2->unk8;
                        var_a2 += 8;
                    } while (var_v0 != 4);
                }
            }
            temp_a0 = temp_s3->unk10;
            if (temp_a0 != NULL) {
                sp44 = var_t3;
                func_80015F78(temp_a0);
            }
            var_a2_2 = &D_8004ABA8;
            var_a3 = 0;
            D_8004ABA0 = sp30;
            do {
                if (D_8004ABA0 < var_a2_2->unk0) {
                    var_a2_2->unk0 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_2 = *temp_v1_4;
                        *temp_v1_4 = temp_a0_2 + 8;
                        temp_a0_2->unk4 = 0x40;
                        temp_a0_2->unk0 = 0xD8380002;
                    }
                }
                if (D_8004ABA0 < var_a2_2->unk4) {
                    var_a2_2->unk4 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_3 = temp_v1_5->unk4;
                        temp_v1_5->unk4 = temp_a0_3 + 8;
                        temp_a0_3->unk4 = 0x40;
                        temp_a0_3->unk0 = 0xD8380002;
                    }
                }
                var_a2_2 += 8;
                var_a3 += 8;
            } while (var_a2_2 != &D_8004ABB8);
            if (temp_s3->unkC == 0) {
                var_s0_4 = temp_s3->unk8;
                if (var_s0_4 != NULL) {
                    do {
                        func_80015F78(var_s0_4);
                        var_s0_4 = var_s0_4->unk8;
                    } while (var_s0_4 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800162D8.s")
#endif

#ifdef MIPS_TO_C
void func_80016634(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016634.s")
#endif

#ifdef MIPS_TO_C

void func_8001663C(void **arg0, void *arg1, s32 arg2) {
    s32 sp18;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 var_a3;
    s32 var_ra;
    s32 var_t4;
    s32 var_t5;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *var_v1;
    void *var_v1_2;

    var_v1 = *arg0;
    if (((arg2 == 0) || (arg2 == 1)) && (arg1->unk80 & 0x20)) {
        gtlLoadUcode(arg0, D_8004A446);
        D_8004A448 = 1;
        var_v1 = *arg0;
    }
    var_v1->unk0 = 0xDC080008;
    temp_v0 = arg1 + 8;
    var_v1->unk4 = temp_v0;
    temp_v1 = var_v1 + 8;
    temp_a1 = temp_v0->unk8 / 4;
    temp_a2 = temp_v0->unk0 / 4;
    var_t4 = temp_a1 - temp_a2;
    temp_a3 = temp_v0->unkA / 4;
    temp_t0 = temp_v0->unk2 / 4;
    temp_lo = gCurrScreenWidth / 320;
    var_t5 = temp_a3 - temp_t0;
    temp_lo_2 = temp_lo * renderCameraScissorLeft;
    var_ra = temp_a2 + temp_a1;
    sp18 = temp_t0 + temp_a3;
    if (var_t4 < temp_lo_2) {
        var_t4 = temp_lo_2;
    }
    temp_lo_3 = gCurrScreenHeight / 240;
    var_a3 = sp18;
    temp_lo_4 = temp_lo_3 * renderCameraScissorTop;
    if (var_t5 < temp_lo_4) {
        var_t5 = temp_lo_4;
    }
    temp_a1_2 = gCurrScreenWidth - (temp_lo * renderCameraScissorRight);
    if (temp_a1_2 < var_ra) {
        var_ra = temp_a1_2;
    }
    temp_a1_3 = gCurrScreenHeight - (temp_lo_3 * renderCameraScissorBottom);
    if (temp_a1_3 < var_a3) {
        var_a3 = temp_a1_3;
    }
    temp_v1_2 = temp_v1 + 8;
    temp_v1_3 = temp_v1_2 + 8;
    temp_v1_4 = temp_v1_3 + 8;
    temp_v1_5 = temp_v1_4 + 8;
    temp_v1->unk0 = (((var_t4 * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_t5 * 4.0f) & 0xFFF);
    temp_v1->unk4 = (((var_ra * 4.0f) & 0xFFF) << 0xC) | ((var_a3 * 4.0f) & 0xFFF);
    temp_v1_2->unk0 = 0xE7000000;
    temp_v1_2->unk4 = 0;
    temp_v1_3->unk4 = 0x0F000000;
    temp_v1_3->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((gCurrScreenWidth - 1) & 0xFFF);
    temp_v1_4->unk0 = 0xE3000A01;
    temp_v1_4->unk4 = 0;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_5->unk4 = 0x552078;
        var_v1_2 = temp_v1_5 + 8;
        temp_v1_5->unk0 = 0xE200001C;
    } else {
        temp_v1_5->unk0 = 0xE200001C;
        temp_v1_5->unk4 = 0x5049D8;
        var_v1_2 = temp_v1_5 + 8;
    }
    *arg0 = var_v1_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001663C.s")
#endif

#ifdef MIPS_TO_C

void func_80016940(void **arg0, void *arg1, s32 arg2) {
    void *sp84;
    void *sp3C;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a3;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_t4;
    void *temp_a1_4;
    void *temp_a2_2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    void *var_v1;
    void *var_v1_2;
    void *var_v1_3;
    void *var_v1_4;

    var_v1 = *arg0;
    if (((arg2 == 0) || (arg2 == 1)) && (arg1->unk80 & 0x20)) {
        gtlLoadUcode(arg0, D_8004A446);
        D_8004A448 = 1;
        var_v1 = *arg0;
    }
    var_v1->unk0 = 0xDC080008;
    temp_v0 = arg1 + 8;
    var_v1->unk4 = temp_v0;
    temp_v1 = var_v1 + 8;
    temp_a1 = temp_v0->unk8 / 4;
    temp_a2 = temp_v0->unk0 / 4;
    var_t3 = temp_a1 - temp_a2;
    var_a3 = temp_v0->unkA / 4;
    temp_t0 = temp_v0->unk2 / 4;
    temp_lo = gCurrScreenWidth / 320;
    var_t4 = var_a3 - temp_t0;
    var_t1 = temp_a2 + temp_a1;
    temp_lo_2 = temp_lo * renderCameraScissorLeft;
    var_t2 = temp_t0 + var_a3;
    sp1C = temp_lo_2;
    if (var_t3 < temp_lo_2) {
        var_t3 = temp_lo_2;
    }
    temp_lo_3 = gCurrScreenHeight / 240;
    temp_lo_4 = temp_lo_3 * renderCameraScissorTop;
    if (var_t4 < temp_lo_4) {
        var_t4 = temp_lo_4;
    }
    temp_a1_2 = gCurrScreenWidth - (temp_lo * renderCameraScissorRight);
    if (temp_a1_2 < var_t1) {
        var_t1 = temp_a1_2;
    }
    temp_a1_3 = gCurrScreenHeight - (temp_lo_3 * renderCameraScissorBottom);
    if (temp_a1_3 < var_t2) {
        var_t2 = temp_a1_3;
    }
    var_v1_2 = temp_v1 + 8;
    temp_t1 = var_t1 - 1;
    temp_v1->unk0 = (((var_t3 * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_t4 * 4.0f) & 0xFFF);
    temp_t2 = var_t2 - 1;
    temp_v1->unk4 = (((var_t1 * 4.0f) & 0xFFF) << 0xC) | ((var_t2 * 4.0f) & 0xFFF);
    if (arg1->unk80 & 1) {
        temp_v1_2 = var_v1_2 + 8;
        var_v1_2->unk0 = 0xE7000000;
        var_v1_2->unk4 = 0;
        temp_v1_3 = temp_v1_2 + 8;
        temp_v1_2->unk4 = 0x300000;
        temp_v1_2->unk0 = 0xE3000A01;
        temp_v1_3->unk0 = 0xE200001C;
        temp_v1_3->unk4 = 0;
        temp_v1_4 = temp_v1_3 + 8;
        temp_v1_4->unk0 = ((gCurrScreenWidth - 1) & 0xFFF) | 0xFF100000;
        temp_v1_5 = temp_v1_4 + 8;
        temp_v1_4->unk4 = gZBuffer;
        var_a3 = temp_v1_5;
        var_a3->unk4 = 0xFFFCFFFC;
        var_a3->unk0 = 0xF7000000;
        temp_v1_6 = temp_v1_5 + 8;
        temp_v1_6->unk0 = ((temp_t1 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2 & 0x3FF) * 4);
        temp_v1_6->unk4 = ((var_t3 & 0x3FF) << 0xE) | ((var_t4 & 0x3FF) * 4);
        var_v1_2 = temp_v1_6 + 8;
    }
    var_v1_2->unk0 = 0xE7000000;
    var_v1_2->unk4 = 0;
    temp_v1_7 = var_v1_2 + 8;
    temp_v1_7->unk4 = 0x0F000000;
    temp_v1_7->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((gCurrScreenWidth - 1) & 0xFFF);
    var_v1_3 = temp_v1_7 + 8;
    if (arg1->unk80 & 2) {
        var_v1_3->unk0 = 0xE3000A01;
        temp_a1_4 = var_v1_3 + 8;
        var_v1_3->unk4 = 0x300000;
        temp_a1_4->unk4 = 0;
        temp_a1_4->unk0 = 0xE200001C;
        temp_a2_2 = temp_a1_4 + 8;
        temp_a2_2->unk0 = 0xF7000000;
        sp24 = ((temp_t1 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2 & 0x3FF) * 4);
        temp_v1_8 = temp_a2_2 + 8;
        sp84 = temp_v1_8;
        sp20 = ((var_t3 & 0x3FF) << 0xE) | ((var_t4 & 0x3FF) * 4);
        sp3C = temp_a2_2;
        temp_a2_2->unk4 = viPackRGBA(arg1->unk84, temp_a1_4, temp_a2_2, var_a3);
        temp_v1_8->unk0 = sp24;
        var_v1_3 = temp_v1_8 + 8;
        temp_v1_8->unk4 = sp20;
    }
    temp_v1_9 = var_v1_3 + 8;
    var_v1_3->unk0 = 0xE7000000;
    var_v1_3->unk4 = 0;
    temp_v1_9->unk0 = 0xE3000A01;
    temp_v1_9->unk4 = 0;
    temp_v1_10 = temp_v1_9 + 8;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_10->unk4 = 0x552078;
        var_v1_4 = temp_v1_10 + 8;
        temp_v1_10->unk0 = 0xE200001C;
    } else {
        temp_v1_10->unk4 = 0x5049D8;
        temp_v1_10->unk0 = 0xE200001C;
        var_v1_4 = temp_v1_10 + 8;
    }
    *arg0 = var_v1_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016940.s")
#endif

#ifdef MIPS_TO_C

void func_80016DE8(void **arg0, void *arg1, s32 arg2, void *arg3, s32 arg4, s32 arg5, s32 arg6) {
    void *sp8C;
    void *sp40;
    s32 sp28;
    s32 sp24;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    s32 var_ra;
    s32 var_s1;
    s32 var_t4;
    s32 var_t5;
    void *temp_a1;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_11;
    void *temp_v1_12;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    void *var_a3;
    void *var_v1;
    void *var_v1_2;

    var_a3 = arg3;
    temp_v1 = *arg0;
    temp_v1->unk4 = arg1 + 8;
    temp_v1->unk0 = 0xDC080008;
    temp_v1_2 = temp_v1 + 8;
    temp_t0 = arg1->unk10 / 4;
    temp_t1 = arg1->unk8 / 4;
    var_ra = temp_t0 - temp_t1;
    temp_t2 = arg1->unk12 / 4;
    temp_t3 = arg1->unkA / 4;
    var_s1 = temp_t2 - temp_t3;
    var_t4 = temp_t1 + temp_t0;
    var_t5 = temp_t3 + temp_t2;
    if (var_ra < 0) {
        var_ra = 0;
    }
    if (var_s1 < 0) {
        var_s1 = 0;
    }
    if (arg4 < var_t4) {
        var_t4 = arg4;
    }
    if (arg5 < var_t5) {
        var_t5 = arg5;
    }
    var_v1 = temp_v1_2 + 8;
    temp_t4 = var_t4 - 1;
    temp_v1_2->unk0 = (((var_ra * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_s1 * 4.0f) & 0xFFF);
    temp_t5 = var_t5 - 1;
    temp_v1_2->unk4 = (((var_t4 * 4.0f) & 0xFFF) << 0xC) | ((var_t5 * 4.0f) & 0xFFF);
    if (arg1->unk80 & 1) {
        temp_v1_3 = var_v1 + 8;
        var_v1->unk0 = 0xE7000000;
        var_v1->unk4 = 0;
        temp_v1_4 = temp_v1_3 + 8;
        temp_v1_3->unk4 = 0x300000;
        temp_v1_3->unk0 = 0xE3000A01;
        temp_v1_5 = temp_v1_4 + 8;
        temp_v1_4->unk0 = 0xE200001C;
        temp_v1_4->unk4 = 0;
        temp_v1_5->unk0 = ((arg4 - 1) & 0xFFF) | 0xFF100000;
        temp_v1_6 = temp_v1_5 + 8;
        temp_v1_5->unk4 = arg6;
        var_a3 = temp_v1_6;
        var_a3->unk4 = 0xFFFCFFFC;
        var_a3->unk0 = 0xF7000000;
        temp_v1_7 = temp_v1_6 + 8;
        temp_v1_7->unk0 = ((temp_t4 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t5 & 0x3FF) * 4);
        temp_v1_7->unk4 = ((var_ra & 0x3FF) << 0xE) | ((var_s1 & 0x3FF) * 4);
        var_v1 = temp_v1_7 + 8;
    }
    var_v1->unk0 = 0xE7000000;
    var_v1->unk4 = 0;
    temp_v1_8 = var_v1 + 8;
    temp_v1_8->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((arg4 - 1) & 0xFFF);
    temp_v1_9 = temp_v1_8 + 8;
    temp_v1_8->unk4 = arg3;
    temp_v1_9->unk0 = 0xFE000000;
    var_v1_2 = temp_v1_9 + 8;
    temp_v1_9->unk4 = arg6;
    temp_a1 = var_v1_2 + 8;
    if (arg1->unk80 & 2) {
        var_v1_2->unk4 = 0x300000;
        var_v1_2->unk0 = 0xE3000A01;
        temp_a1->unk0 = 0xE200001C;
        temp_a1->unk4 = 0;
        temp_a2 = temp_a1 + 8;
        temp_a2->unk0 = 0xF7000000;
        sp28 = ((temp_t4 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t5 & 0x3FF) * 4);
        temp_v1_10 = temp_a2 + 8;
        sp8C = temp_v1_10;
        sp24 = ((var_ra & 0x3FF) << 0xE) | ((var_s1 & 0x3FF) * 4);
        sp40 = temp_a2;
        temp_a2->unk4 = viPackRGBA(arg1->unk84, temp_a1, temp_a2, var_a3);
        var_v1_2 = temp_v1_10 + 8;
        temp_v1_10->unk0 = sp28;
        temp_v1_10->unk4 = sp24;
    }
    temp_v1_11 = var_v1_2 + 8;
    var_v1_2->unk0 = 0xE7000000;
    var_v1_2->unk4 = 0;
    temp_v1_11->unk0 = 0xE3000A01;
    temp_v1_11->unk4 = 0;
    temp_v1_12 = temp_v1_11 + 8;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_12->unk0 = 0xE200001C;
        temp_v1_12->unk4 = 0x552078;
    } else {
        temp_v1_12->unk0 = 0xE200001C;
        temp_v1_12->unk4 = 0x5049D8;
    }
    *arg0 = temp_v1_12 + 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016DE8.s")
#endif

#ifdef MIPS_TO_C

void func_800171E0(void **arg0, void *arg1) {
    void *spDC;
    s32 spC8;
    LookAt *spC4;
    f32 sp98;
    f32 sp94;
    f32 sp8C;
    f32 sp88;
    ? (*temp_a3)(Mtx *, void *, void **, ?);
    ? (*temp_a3_2)(Mtx *, void *, void **, ?);
    LookAt *temp_v0;
    LookAt *temp_v0_2;
    LookAt *temp_v0_3;
    LookAt *var_s4;
    Mtx *var_s2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_a2;
    s32 var_fp;
    s32 var_s3;
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_s1;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t4;
    void *temp_t4_2;
    void *temp_t4_3;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *var_s6;

    spC8 = 0;
    spDC = *arg0;
    var_a2 = arg1->unk60;
    var_s3 = 0;
    if (var_a2 != 0) {
        var_fp = 0;
        if (var_a2 > 0) {
            var_s6 = arg1;
            var_s4 = spC4;
            do {
                temp_s1 = var_s6->unk64;
                if (temp_s1 != NULL) {
                    var_s2 = temp_s1 + 8;
                    if (temp_s1->unk5 != 2) {
                        if (gtlCurrentContextID > 0) {
                            var_s2 = gDynamicBuffer1.unkC;
                            gDynamicBuffer1.unkC = var_s2 + 0x40;
                        }
                        temp_v1 = temp_s1->unk4;
                        switch (temp_v1) {          /* switch 4; irregular */
                                break;
                            case 3:                 /* switch 4 */
                                func_8001B008(renderPerspectiveMtxF, arg1 + 0x1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30);
                                HS64_MtxF2L(renderPerspectiveMtxF, var_s2);
                                renderProjectionMtx = var_s2;
                                break;
                            case 4:                 /* switch 4 */
                                func_8001B28C(renderPerspectiveMtxF, arg1 + 0x1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30);
                                HS64_MtxF2L(renderPerspectiveMtxF, var_s2);
                                renderProjectionMtx = var_s2;
                                break;
                            case 5:                 /* switch 4 */
                                guOrtho(var_s2, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30, arg1->unk34);
                                renderProjectionMtx = var_s2;
                                break;
                            case 6:                 /* switch 4 */
                            case 7:                 /* switch 4 */
                                guLookAt(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, arg1->unk58, arg1->unk5C);
                                var_s3 = 2;
                                if (arg1->unk5C < arg1->unk58) {
                                    var_s3 = 1;
                                }
                                break;
                            case 8:                 /* switch 4 */
                            case 9:                 /* switch 4 */
                                var_s3 = 1;
                                func_8001A488(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 1.0f, 0.0f);
                                break;
                            case 10:                /* switch 4 */
                            case 11:                /* switch 4 */
                                var_s3 = 2;
                                func_8001A488(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 0.0f, 1.0f);
                                break;
                            case 12:                /* switch 4 */
                            case 13:                /* switch 4 */
                                temp_v0 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0;
                                guLookAtReflect(var_s2, temp_v0, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, arg1->unk58, arg1->unk5C);
                                var_s3 = 2;
                                if (arg1->unk5C < arg1->unk58) {
                                    var_s3 = 1;
                                }
                                break;
                            case 14:                /* switch 4 */
                            case 15:                /* switch 4 */
                                var_s3 = 1;
                                temp_v0_2 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0_2;
                                func_8001AD90(var_s2, temp_v0_2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 1.0f, 0.0f);
                                break;
                            case 16:                /* switch 4 */
                            case 17:                /* switch 4 */
                                var_s3 = 2;
                                temp_v0_3 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0_3;
                                func_8001AD90(var_s2, temp_v0_3, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 0.0f, 1.0f);
                                break;
                            default:                /* switch 4 */
                                if (renderMatrixHandler != 0) {
                                    temp_a3 = (renderMatrixHandler + (temp_v1 * 8))->unk-218;
                                    if (temp_a3 != NULL) {
                                        temp_a3(var_s2, arg1, &spDC, temp_a3);
                                    }
                                }
                                break;
                        }
                        if ((temp_s1->unk5 == 1) && ((temp_s1 + 8) == var_s2)) {
                            temp_s1->unk5 = 2;
                        }
                    }
                    temp_v1_2 = temp_s1->unk4;
                    switch (temp_v1_2) {            /* switch 5; irregular */
                            break;
                        case 3:                     /* switch 5 */
                        case 4:                     /* switch 5 */
                            temp_t7 = spDC;
                            spDC = temp_t7 + 8;
                            temp_t7->unk4 = var_s2;
                            temp_t7->unk0 = 0xDA380007;
                            temp_t0 = spDC;
                            spDC = temp_t0 + 8;
                            temp_t0->unk0 = 0xDB0E0000;
                            temp_t0->unk4 = (bitwise u16) arg1->unk1C;
                            break;
                        case 5:                     /* switch 5 */
                            temp_t4 = spDC;
                            spDC = temp_t4 + 8;
                            temp_t4->unk4 = var_s2;
                            temp_t4->unk0 = 0xDA380007;
                            break;
                        case 12:                    /* switch 5 */
                        case 14:                    /* switch 5 */
                        case 16:                    /* switch 5 */
                            temp_t7_2 = spDC;
                            spDC = temp_t7_2 + 8;
                            temp_t7_2->unk4 = var_s4;
                            temp_t7_2->unk0 = 0xDC08000A;
                            temp_t0_2 = spDC;
                            spDC = temp_t0_2 + 8;
                            temp_t0_2->unk4 = &var_s4->l[1];
                            temp_t0_2->unk0 = 0xDC08030A;
                            /* fallthrough */
                        case 6:                     /* switch 5 */
                        case 8:                     /* switch 5 */
                        case 10:                    /* switch 5 */
                            temp_t4_2 = spDC;
                            spDC = temp_t4_2 + 8;
                            temp_t4_2->unk4 = var_s2;
                            temp_t4_2->unk0 = 0xDA380005;
                            break;
                        case 13:                    /* switch 5 */
                        case 15:                    /* switch 5 */
                        case 17:                    /* switch 5 */
                            temp_t7_3 = spDC;
                            spDC = temp_t7_3 + 8;
                            temp_t7_3->unk4 = var_s4;
                            temp_t7_3->unk0 = 0xDC08000A;
                            temp_t0_3 = spDC;
                            spDC = temp_t0_3 + 8;
                            temp_t0_3->unk4 = &var_s4->l[1];
                            temp_t0_3->unk0 = 0xDC08030A;
                            /* fallthrough */
                        case 7:                     /* switch 5 */
                        case 9:                     /* switch 5 */
                        case 11:                    /* switch 5 */
                            temp_t4_3 = spDC;
                            spDC = temp_t4_3 + 8;
                            temp_t4_3->unk4 = var_s2;
                            temp_t4_3->unk0 = 0xDA380003;
                            break;
                        default:                    /* switch 5 */
                            if (renderMatrixHandler != 0) {
                                temp_a3_2 = (renderMatrixHandler + (temp_v1_2 * 8))->unk-214;
                                if (temp_a3_2 != NULL) {
                                    temp_a3_2(var_s2, arg1, &spDC, temp_a3_2);
                                }
                            }
                            break;
                    }
                    var_a2 = arg1->unk60;
                }
                var_fp += 1;
                var_s6 += 4;
            } while (var_fp < var_a2);
            spC4 = var_s4;
        }
        switch (D_8004AB98) {                       /* switch 3 */
            case 0:                                 /* switch 3 */
                spC8 = var_s3;
                break;
            case 1:                                 /* switch 3 */
block_58:
                var_s3 = 0;
                break;
            case 2:                                 /* switch 3 */
                spC8 = 1;
                var_s3 = 1;
                break;
            case 3:                                 /* switch 3 */
                var_s3 = 1;
                break;
            case 4:                                 /* switch 3 */
                spC8 = 1;
                goto block_58;
            case 5:                                 /* switch 3 */
                spC8 = 2;
                var_s3 = 2;
                break;
            case 6:                                 /* switch 3 */
                var_s3 = 2;
                break;
            case 7:                                 /* switch 3 */
                spC8 = 2;
                goto block_58;
        }
        switch (var_s3) {                           /* switch 6; irregular */
            case 0:                                 /* switch 6 */
                break;
            default:                                /* switch 6 */
                var_f2 = sp9C;
block_65:
                if (var_f2 < 0.0001f) {
                    HS64_MkScaleMtxF(D_8004AB18, 0, 0, 0);
                } else {
                    guLookAtF(D_8004AB18, 0.0f, sp98, var_f2, 0.0f, sp94, 0.0f, 0.0f, 1.0f, 0.0f);
                    guMtxCatF(D_8004AB18, renderPerspectiveMtxF, D_8004AB18);
                }
                break;
            case 1:                                 /* switch 6 */
                temp_f0 = arg1->unk50 - arg1->unk44;
                temp_f2 = arg1->unk48 - arg1->unk3C;
                var_f2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
                sp98 = arg1->unk40;
                sp94 = arg1->unk4C;
                goto block_65;
            case 2:                                 /* switch 6 */
                temp_f14 = arg1->unk4C - arg1->unk40;
                temp_f2_2 = arg1->unk48 - arg1->unk3C;
                var_f2 = sqrtf((temp_f14 * temp_f14) + (temp_f2_2 * temp_f2_2));
                sp98 = arg1->unk44;
                sp94 = arg1->unk50;
                goto block_65;
        }
        switch (spC8) {                             /* switch 7; irregular */
            case 0:                                 /* switch 7 */
                break;
            default:                                /* switch 7 */
                var_f2_2 = sp90;
block_74:
                if (var_f2_2 < 0.0001f) {
                    HS64_MkScaleMtxF(D_8004AB58, 0, 0, 0);
                } else {
                    guLookAtF(D_8004AB58, sp8C, 0.0f, var_f2_2, sp88, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                    guMtxCatF(D_8004AB58, renderPerspectiveMtxF, D_8004AB58);
                }
                break;
            case 1:                                 /* switch 7 */
                temp_f14_2 = arg1->unk4C - arg1->unk40;
                temp_f0_2 = arg1->unk50 - arg1->unk44;
                var_f2_2 = sqrtf((temp_f14_2 * temp_f14_2) + (temp_f0_2 * temp_f0_2));
                sp8C = arg1->unk3C;
                sp88 = arg1->unk48;
                goto block_74;
            case 2:                                 /* switch 7 */
                temp_f0_3 = arg1->unk50 - arg1->unk44;
                temp_f2_3 = arg1->unk48 - arg1->unk3C;
                var_f2_2 = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_3 * temp_f2_3));
                sp8C = arg1->unk40;
                sp88 = arg1->unk4C;
                goto block_74;
        }
        *arg0 = spDC;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800171E0.s")
#endif

#ifdef MIPS_TO_C

void func_80017B34(s32 arg0) {
    D_8004AB98 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B34.s")
#endif

#ifdef MIPS_TO_C
void func_80017B40(void *arg0) {
    ? (*temp_v0)();

    temp_v0 = arg0->unk88;
    if (temp_v0 != NULL) {
        temp_v0();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B40.s")
#endif

#ifdef MIPS_TO_C

void func_80017B6C(void *arg0, s32 arg1, s32 arg2) {
    void *var_s0;

    var_s0 = *(&omGObjListDlHead + (arg1 * 4));
    if (var_s0 != NULL) {
        do {
            if (!(var_s0->unk44 & 1) && (((arg2 == 0) && (arg0->unk34 & var_s0->unk34)) || ((arg2 == 1) && (var_s0->unk34 == arg0->unk34)))) {
                D_8003DE54 = 4;
                omCurrentDrawObj = var_s0;
                var_s0->unk2C(var_s0);
                D_8003DE54 = 3;
                var_s0->unkE = D_8003DCA8;
            }
            var_s0 = var_s0->unk20;
        } while (var_s0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B6C.s")
#endif

#ifdef MIPS_TO_C

void func_80017C7C(s32 arg0, s32 arg1) {
    void *sp38;
    void **var_v0;
    void **var_v0_2;
    void **var_v1;
    void **var_v1_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3;
    void *temp_t8;
    void *var_t1;

    var_v1 = &gDisplayListHeads;
    var_v0 = &sp38;
    do {
        temp_a0 = *var_v1;
        var_v1 += 4;
        var_v0 += 4;
        var_v1->unk-4 = temp_a0 + 0x10;
        var_v0->unk-4 = temp_a0;
    } while (var_v1 < &gtlPrevDLHeads);
    func_80017B6C(arg0, arg1);
    var_v1_2 = &gDisplayListHeads;
    var_t1 = (arg1 * 0x14) + &D_8004A7F8;
    var_v0_2 = &sp38;
    do {
        temp_a0_2 = *var_v1_2;
        if (temp_a0_2 == (*var_v0_2 + 0x10)) {
            *var_v1_2 = temp_a0_2 - 0x10;
            var_t1->unk4 = NULL;
        } else {
            *var_v1_2 = temp_a0_2 + 8;
            temp_a0_2->unk4 = 0;
            temp_a0_2->unk0 = 0xDF000000;
            temp_a3 = *var_v0_2;
            temp_a3->unk0 = 0xDE000000;
            temp_a3->unk4 = *var_v0_2 + 0x10;
            temp_t8 = *var_v0_2 + 8;
            *var_v0_2 = temp_t8;
            *var_v0_2 = temp_t8 + 8;
            temp_t8->unk0 = 0xDE010000;
            temp_t8->unk4 = *var_v1_2;
            var_t1->unk4 = *var_v0_2;
        }
        var_v1_2 += 4;
        var_v0_2 += 4;
        var_t1 += 4;
    } while (var_v1_2 != &gtlPrevDLHeads);
    *(&D_8004A7F8 + (arg1 * 0x14)) = D_8003DCA8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017C7C.s")
#endif

#ifdef MIPS_TO_C

void func_80017DB0(s32 arg0) {
    void *temp_t1;
    void *temp_t3;
    void *temp_t7;
    void *temp_t9;
    void *temp_v1;

    temp_v1 = (arg0 * 0x14) + &D_8004A7F8;
    if (temp_v1->unk4 != 0) {
        temp_t9 = gDisplayListHeads;
        gDisplayListHeads = temp_t9 + 8;
        temp_t9->unk0 = 0xDE000000;
        temp_t9->unk4 = temp_v1->unk4;
    }
    if (temp_v1->unk8 != 0) {
        temp_t3 = D_8004A3D4;
        D_8004A3D4 = temp_t3 + 8;
        temp_t3->unk0 = 0xDE000000;
        temp_t3->unk4 = temp_v1->unk8;
    }
    if (temp_v1->unkC != 0) {
        temp_t7 = D_8004A3D8;
        D_8004A3D8 = temp_t7 + 8;
        temp_t7->unk0 = 0xDE000000;
        temp_t7->unk4 = temp_v1->unkC;
    }
    if (temp_v1->unk10 != 0) {
        temp_t1 = D_8004A3DC;
        D_8004A3DC = temp_t1 + 8;
        temp_t1->unk0 = 0xDE000000;
        temp_t1->unk4 = temp_v1->unk10;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017DB0.s")
#endif

#ifdef MIPS_TO_C

void func_80017E84(void *arg0, ? arg1) {
    s32 var_s0;
    u32 var_s1;
    u32 var_s2;

    var_s1 = arg0->unk30;
    var_s0 = 0;
    var_s2 = arg0->unk38;
    if (var_s1 != 0) {
        do {
            if (var_s1 & 1) {
                if (var_s2 & 1) {
                    if (D_8003DCA8.unk3 == *(&D_8004A7F8 + (var_s0 * 0x14))) {
                        func_80017DB0(var_s0, var_s0);
                    } else {
                        func_80017C7C(arg0, var_s0, arg1);
                    }
                } else {
                    func_80017B6C(arg0, var_s0, arg1);
                }
            }
            var_s1 = var_s1 >> 1;
            var_s2 = var_s2 >> 1;
            var_s0 += 1;
        } while (var_s1 != 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017E84.s")
#endif

#ifdef MIPS_TO_C
void func_80017F78(void *arg0) {
    if (arg0->unk80 & 4) {
        gtlMergeDisps();
    }
    if (arg0->unk80 & 0x10) {
        gtlProcessDisps();
        gtlReset();
    }
    if (arg0->unk80 & 0x40) {
        gtlProcessDisps();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017F78.s")
#endif

#ifdef MIPS_TO_C

void func_80017FEC(void *arg0, s32 arg1, s32 arg2) {
    ? var_a1;
    void *temp_s0;

    temp_s0 = arg0->unk3C;
    func_80016940(arg1, temp_s0);
    func_800171E0(arg1, temp_s0);
    func_80017B40(temp_s0, arg2);
    var_a1 = 0;
    if (temp_s0->unk80 & 8) {
        var_a1 = 1;
    }
    func_80017E84(arg0, var_a1);
    func_80017F78(temp_s0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017FEC.s")
#endif

#ifdef MIPS_TO_C

void func_8001806C(void) {
    func_80017FEC(&gDisplayListHeads, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001806C.s")
#endif

#ifdef MIPS_TO_C

void func_80018094(void) {
    func_80017FEC(&D_8004A3D4, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80018094.s")
#endif

#ifdef MIPS_TO_C

void func_800180BC(void) {
    func_80017FEC(&D_8004A3D8, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800180BC.s")
#endif

#ifdef MIPS_TO_C

void func_800180E4(void) {
    func_80017FEC(&D_8004A3DC, 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800180E4.s")
#endif

#ifdef MIPS_TO_C

void func_8001810C(void) {
    s32 sp1C;

    sp1C = omCurrentCamera->unk3C;
    gtlProcessDisps();
    gtlReset();
    func_80016940(&gDisplayListHeads, sp1C, 0);
    func_800171E0(&gDisplayListHeads, sp1C);
    func_80017B40(sp1C, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001810C.s")
#endif

#ifdef MIPS_TO_C

void func_80018170(void *arg0) {
    ? var_a1;
    s32 *var_s2;
    s32 *var_s2_2;
    s32 temp_v1;
    s32 var_s3;
    void **var_s1;
    void **var_s1_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s1;
    void *temp_s5;
    void *temp_t8;
    void *temp_v0;

    temp_s5 = arg0->unk3C;
    func_80016940(&gDisplayListHeads, temp_s5, 0);
    D_8004ADB0 = gDisplayListHeads + 8;
    gDisplayListHeads->unk0 = 0xDE000000;
    gDisplayListHeads->unk4 = gDisplayListHeads + 0x10;
    gDisplayListHeads += 0x10;
    func_800171E0(&gDisplayListHeads, temp_s5);
    temp_s1 = gDisplayListHeads;
    gDisplayListHeads = temp_s1 + 8;
    temp_s1->unk4 = 0;
    temp_s1->unk0 = 0xDF000000;
    D_8004ADB0->unk0 = 0xDE010000;
    D_8004ADB0->unk4 = gDisplayListHeads;
    func_80017B40(temp_s5, 0);
    if (temp_s5->unk80 & 0x20) {
        func_8001663C(&D_8004A3D4, temp_s5, 1);
    }
    var_s2 = &D_8004ADA4;
    var_s1 = &D_8004A3D4;
    do {
        var_s2 += 4;
        temp_t8 = *var_s1 + 8;
        var_s1 += 4;
        var_s1->unk-4 = temp_t8;
        var_s2->unk-4 = temp_t8;
    } while (var_s2 < &D_8004ADB0);
    var_a1 = 0;
    if (temp_s5->unk80 & 8) {
        var_a1 = 1;
    }
    func_80017E84(arg0, var_a1);
    var_s2_2 = &D_8004ADA4;
    var_s1_2 = &D_8004A3D4;
    var_s3 = 1;
    do {
        temp_v1 = *var_s2_2;
        temp_s0 = *var_s1_2;
        temp_v0 = temp_v1 - 8;
        if (temp_v1 == temp_s0) {
            *var_s1_2 = temp_s0 - 8;
        } else {
            *var_s1_2 = temp_s0 + 8;
            temp_v0->unk0 = 0xDE000000;
            temp_v0->unk4 = *var_s1_2;
            if ((var_s3 != 1) || !(temp_s5->unk80 & 0x20)) {
                func_8001663C(var_s1_2, temp_s5, var_s3);
            }
            temp_s0_2 = *var_s1_2;
            *var_s1_2 = temp_s0_2 + 8;
            temp_s0_2->unk0 = 0xDE000000;
            temp_s0_2->unk4 = D_8004ADB0 + 8;
            func_80017B40(temp_s5, var_s3);
            temp_s0_3 = *var_s1_2;
            *var_s1_2 = temp_s0_3 + 8;
            temp_s0_3->unk4 = NULL;
            temp_s0_3->unk0 = 0xDF000000;
            temp_s0->unk0 = 0xDE010000;
            temp_s0->unk4 = *var_s1_2;
        }
        var_s3 += 1;
        var_s1_2 += 4;
        var_s2_2 += 4;
    } while (var_s3 != 4);
    func_80017F78(temp_s5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80018170.s")
#endif

#ifdef MIPS_TO_C

void func_800183BC(void) {
    s32 *var_s2;
    s32 *var_s2_2;
    s32 temp_s5;
    s32 temp_v1;
    s32 var_s3;
    void **var_s0;
    void **var_s0_2;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_t4;
    void *temp_t5;
    void *temp_v0;

    var_s2 = &D_8004ADA4;
    var_s0 = &D_8004A3D4;
    var_s3 = 1;
    temp_s5 = omCurrentCamera->unk3C;
    do {
        temp_s1 = *var_s0;
        temp_v1 = *var_s2;
        if (temp_v1 == temp_s1) {
            *var_s0 = temp_s1 - 8;
        } else {
            *var_s0 = temp_s1 + 8;
            temp_v0 = temp_v1 - 8;
            temp_v0->unk0 = 0xDE000000;
            temp_v0->unk4 = *var_s0;
            func_8001663C(var_s0, temp_s5, var_s3);
            temp_s1_2 = *var_s0;
            *var_s0 = temp_s1_2 + 8;
            temp_s1_2->unk0 = 0xDE000000;
            temp_s1_2->unk4 = D_8004ADB0 + 8;
            func_80017B40(temp_s5, var_s3);
            temp_s1_3 = *var_s0;
            *var_s0 = temp_s1_3 + 8;
            temp_s1_3->unk4 = NULL;
            temp_s1_3->unk0 = 0xDF000000;
            temp_s1->unk0 = 0xDE010000;
            temp_s1->unk4 = *var_s0;
        }
        var_s3 += 1;
        var_s2 += 4;
        var_s0 += 4;
    } while (var_s3 < 4);
    gtlProcessDisps();
    gtlReset();
    func_80016940(&gDisplayListHeads, temp_s5, 0);
    D_8004ADB0 = gDisplayListHeads + 8;
    gDisplayListHeads->unk0 = 0xDE000000;
    gDisplayListHeads->unk4 = gDisplayListHeads + 0x10;
    gDisplayListHeads += 0x10;
    func_800171E0(&gDisplayListHeads, temp_s5);
    temp_s1_4 = gDisplayListHeads;
    gDisplayListHeads = temp_s1_4 + 8;
    temp_s1_4->unk4 = 0;
    temp_s1_4->unk0 = 0xDF000000;
    D_8004ADB0->unk0 = 0xDE010000;
    D_8004ADB0->unk4 = gDisplayListHeads;
    func_80017B40(temp_s5, 0);
    var_s0_2 = &D_8004A3D4;
    var_s2_2 = &D_8004ADA4;
    do {
        temp_t4 = *var_s0_2;
        var_s0_2 += 4;
        var_s2_2 += 4;
        temp_t5 = temp_t4 + 8;
        var_s0_2->unk-4 = temp_t5;
        var_s2_2->unk-4 = temp_t5;
    } while (var_s0_2 != &gtlPrevDLHeads);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800183BC.s")
#endif
