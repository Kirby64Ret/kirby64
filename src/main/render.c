#include "common.h"

#include "GObj.h"
#include "DObj.h"

#include "gtl.h"
#include "render.h"
#include "object_manager.h"
#include "lbmatrix.h"
#include "vi.h"

extern u32 D_8004AB98;

extern Gfx *D_8004ABA0;
extern Gfx *D_8004ABA8[4];
extern Gfx D_8004ABB8[60];

extern Gfx *D_8004ADA0[4];
extern Gfx *D_8004ADA4[3];
extern Gfx *D_8004ADB0;
extern Gfx *D_8004A3D4[];

extern Gfx *D_8004A404;

extern u16 D_8004A446;
extern u16 D_8004A448;

void gtlLoadUcode(Gfx **dlist, u32 kind);

void HS64_PerspectiveF(Mat4 mf, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void func_8001B28C(Mat4 mf, u16 *perspNorm, f32 fovy, f32 aspect, f32 near, f32 far, f32 scale);
void HS64_LookAt(Mtx *outMtx, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt, f32 roll,
                 f32 xUp, f32 yUp, f32 zUp);
void func_8001AD90(Mtx *m, LookAt *l, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
                   f32 roll, f32 xUp, f32 yUp, f32 zUp);
void *mlAlloc(struct DynamicBuffer *buffer, u32 size, u32 alignment);
void guLookAt(Mtx *m, f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
              f32 xUp, f32 yUp, f32 zUp);
void guLookAtF(f32 mf[4][4], f32 xEye, f32 yEye, f32 zEye, f32 xAt, f32 yAt, f32 zAt,
               f32 xUp, f32 yUp, f32 zUp);
void guMtxCatF(f32 m[4][4], f32 n[4][4], f32 r[4][4]);

// like DObjPayloadTypeC, but with a second display list drawn in front
#ifdef PORT
/* PORT: 4-byte-slot data walked in place; see DObjPayloadTypeC in DObj.h. */
typedef struct {
    /* 0x00 */ s32 dlistID;
    /* 0x04 */ u32 dlistBefore;
    /* 0x08 */ u32 dlistAfter;
} DObjPayloadTypeI; // size = 0x0C on the host as well
#else
typedef struct {
    /* 0x00 */ s32 dlistID;
    /* 0x04 */ Gfx* dlistBefore;
    /* 0x08 */ Gfx* dlistAfter;
} DObjPayloadTypeI; // size = 0x0C
#endif

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

/* FACTORY: 2066/2144 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
s32 renderPrepareModelMatrix(Gfx** gfxPtr, DObj* dobj) {
    Gfx* sp2DC;
    uintptr_t csr;
    s32 sp2D4;
    s32 i;
    f32 f12;
    union Mtx3fi* sp2C8;
    OMMtxFloat4* sp2C4;
    OMMtxFloat3* sp2C0;
    Unused f32 f0;
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
                        *unk = (Mtx *)gDynamicBuffer1.top;
                        mtx = (Mtx *)gDynamicBuffer1.top;
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
                                mtx = (Mtx *)gDynamicBuffer1.top;
                                gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                break;
                            default:
                                if (ommtx->kind >= MTX_TYPE_66) {
                                    mtx = (Mtx *)gDynamicBuffer1.top;
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
                        mtx = (Mtx *)gDynamicBuffer1.top;
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
                                mtx = (Mtx *)gDynamicBuffer1.top;
                                gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                break;
                            default:
                                if (ommtx->kind >= MTX_TYPE_66) {
                                    mtx = (Mtx *)gDynamicBuffer1.top;
                                    gDynamicBuffer1.top = (u8*) gDynamicBuffer1.top + sizeof(Mtx);
                                } else {
                                    if (ommtx->unk05 != 3) {
                                        goto END2;
                                    }
                                    mtx = (Mtx *)gDynamicBuffer1.top;
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
                        renderObjectScale *= dobj->scale.v.x;
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
                        renderObjectScale *= dobj->scale.v.x;
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
                        renderObjectScale *= dobj->scale.v.x;
                        break;
                    case MTX_TYPE_SCALE:
                        HS64_MtxScale(mtx, dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
                        renderObjectScale *= dobj->scale.v.x;
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
                        renderObjectScale *= sp2C0->v.x;
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
                        renderObjectScale *= sp2C0->v.x;
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
                        renderObjectScale *= sp2C0->v.x;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = 0.0f;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][0] = 0.0f;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderObjectScale;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = 0.0f;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][0] = 0.0f;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderObjectScale;
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

                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderObjectScale * f0;
                        renderMVPMatrixF[1][0] = renderPerspectiveMtxF[0][0] * renderObjectScale * -sp1D4;
                        renderMVPMatrixF[0][1] = renderPerspectiveMtxF[1][1] * f12 * sp1D4;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12 * f0;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderObjectScale;
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

                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;

                        renderMVPMatrixF[0][0] = renderPerspectiveMtxF[0][0] * renderObjectScale * f0;
                        renderMVPMatrixF[1][0] = renderPerspectiveMtxF[0][0] * renderObjectScale * -sp1D4;
                        renderMVPMatrixF[0][1] = renderPerspectiveMtxF[1][1] * f12 * sp1D4;
                        renderMVPMatrixF[1][1] = renderPerspectiveMtxF[1][1] * f12 * f0;
                        renderMVPMatrixF[0][2] = 0.0f;
                        renderMVPMatrixF[1][2] = 0.0f;
                        renderMVPMatrixF[0][3] = 0.0f;
                        renderMVPMatrixF[1][3] = 0.0f;
                        renderMVPMatrixF[2][0] = 0.0f;
                        renderMVPMatrixF[2][1] = 0.0f;
                        renderMVPMatrixF[2][2] = renderPerspectiveMtxF[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = renderPerspectiveMtxF[2][3] * renderObjectScale;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB18[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = D_8004AB18[0][1] * renderObjectScale;
                        renderMVPMatrixF[0][2] = D_8004AB18[0][2] * renderObjectScale;
                        renderMVPMatrixF[0][3] = D_8004AB18[0][3] * renderObjectScale;
                        renderMVPMatrixF[1][0] = D_8004AB18[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB18[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB18[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB18[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB18[2][0] * renderObjectScale;
                        renderMVPMatrixF[2][1] = D_8004AB18[2][1] * renderObjectScale;
                        renderMVPMatrixF[2][2] = D_8004AB18[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = D_8004AB18[2][3] * renderObjectScale;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB18[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = D_8004AB18[0][1] * renderObjectScale;
                        renderMVPMatrixF[0][2] = D_8004AB18[0][2] * renderObjectScale;
                        renderMVPMatrixF[0][3] = D_8004AB18[0][3] * renderObjectScale;
                        renderMVPMatrixF[1][0] = D_8004AB18[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB18[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB18[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB18[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB18[2][0] * renderObjectScale;
                        renderMVPMatrixF[2][1] = D_8004AB18[2][1] * renderObjectScale;
                        renderMVPMatrixF[2][2] = D_8004AB18[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = D_8004AB18[2][3] * renderObjectScale;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB58[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = D_8004AB58[0][1] * renderObjectScale;
                        renderMVPMatrixF[0][2] = D_8004AB58[0][2] * renderObjectScale;
                        renderMVPMatrixF[0][3] = D_8004AB58[0][3] * renderObjectScale;
                        renderMVPMatrixF[1][0] = D_8004AB58[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB58[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB58[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB58[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB58[2][0] * renderObjectScale;
                        renderMVPMatrixF[2][1] = D_8004AB58[2][1] * renderObjectScale;
                        renderMVPMatrixF[2][2] = D_8004AB58[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = D_8004AB58[2][3] * renderObjectScale;
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
                        f12 = dobj->scale.v.y * renderObjectScale;
                        renderObjectScale *= dobj->scale.v.x;
                        renderMVPMatrixF[0][0] = D_8004AB58[0][0] * renderObjectScale;
                        renderMVPMatrixF[0][1] = D_8004AB58[0][1] * renderObjectScale;
                        renderMVPMatrixF[0][2] = D_8004AB58[0][2] * renderObjectScale;
                        renderMVPMatrixF[0][3] = D_8004AB58[0][3] * renderObjectScale;
                        renderMVPMatrixF[1][0] = D_8004AB58[1][0] * f12;
                        renderMVPMatrixF[1][1] = D_8004AB58[1][1] * f12;
                        renderMVPMatrixF[1][2] = D_8004AB58[1][2] * f12;
                        renderMVPMatrixF[1][3] = D_8004AB58[1][3] * f12;
                        renderMVPMatrixF[2][0] = D_8004AB58[2][0] * renderObjectScale;
                        renderMVPMatrixF[2][1] = D_8004AB58[2][1] * renderObjectScale;
                        renderMVPMatrixF[2][2] = D_8004AB58[2][2] * renderObjectScale;
                        renderMVPMatrixF[2][3] = D_8004AB58[2][3] * renderObjectScale;
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
                if (sp2B8 == 2 || (sp2D4 == 0 && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL))) {
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
s32 renderPrepareModelMatrix(Gfx **, DObj *);
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/renderPrepareModelMatrix.s")
#endif

void renderLoadTextures(DObj *dobj, Gfx **dl_head)
{
    s32 mobj_count;
    s32 i;
    MObj *mobj;
    Gfx *new_dl;
    Gfx *branch_dl;
    u32 flags;
    f32 scau;
    f32 scav;
    f32 trau;
    f32 trav;
    f32 scrollu;
    f32 scrollv;
    s32 uls, ult;
    s32 s, t;

    if (dobj->mobjList == NULL)
    {
        return;
    }
    gSPSegment(dl_head[0]++, 0xE, gDynamicBuffer1.top);

    for (mobj_count = 0, mobj = dobj->mobjList; mobj != NULL; mobj_count++)
    {
        mobj = mobj->next;
    }
    mobj = dobj->mobjList;
    branch_dl = (Gfx*) (((Gfx*) gDynamicBuffer1.top) + mobj_count);
    new_dl = (Gfx*) gDynamicBuffer1.top;

    for (i = 0; i < mobj_count; i++, mobj = mobj->next)
    {
        flags = mobj->texture.flags;

        if (flags == 0)
        {
            flags = (0x80 | 0x20 | 0x1);
        }
        if (flags & (0x80 | 0x40 | 0x20))
        {
            scau = mobj->texture.xScale;
            scav = mobj->texture.yScale;
            trau = mobj->texture.xFrac0;
            trav = mobj->texture.yFrac0;
            scrollu = mobj->texture.xFrac1;
            scrollv = mobj->texture.yFrac1;

            if (mobj->texture.halve != 0)
            {
                scau *= 0.5F;
                trau = ((trau - mobj->texture.field_0x2c) + 1.0F - (mobj->texture.field_0x30 * 0.5F)) * 0.5F;
                scrollu = ((scrollu - mobj->texture.unk_4C) + 1.0F - (mobj->texture.field_0x30 * 0.5F)) * 0.5F;
            }
        }
        gSPBranchList(&new_dl[i], branch_dl);

        if (flags & 0x4)
        {
#ifdef PORT
            /* texture.palettes is a u32-held native pointer on the host
             * (see the PORT TextureScroll in include/geo_block_header.h). */
            gDPSetTextureImage(branch_dl++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1,
                               ((u32 *)(uintptr_t)mobj->texture.palettes)[(s32)mobj->palIndex]);
#else
            gDPSetTextureImage(branch_dl++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, mobj->texture.palettes[(s32)mobj->palIndex]);
#endif

            if (flags & (0x2 | 0x1))
            {
                gDPTileSync(branch_dl++);
                gDPSetTile
                (
                    branch_dl++,
                    G_IM_FMT_RGBA,
                    G_IM_SIZ_4b,
                    0,
                    0x0100,
                    5,
                    0,
                    G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMASK,
                    G_TX_NOLOD,
                    G_TX_NOMIRROR | G_TX_WRAP,
                    G_TX_NOMASK,
                    G_TX_NOLOD
                );
                gDPLoadSync(branch_dl++);
                gDPLoadTLUTCmd(branch_dl++, 5, ((u8)mobj->texture.siz1 == G_IM_SIZ_8b) ? 0xFF : 0xF);
                gDPPipeSync(branch_dl++);
            }
        }
        if (flags & 0x1000)
        {
#ifdef PORT
            /* ColorPacks keep memory byte order r,g,b,a on the host (byte
             * readers here and in ovl6 rely on it); .pack must still carry
             * the N64 numeric r<<24|g<<16|b<<8|a, so re-pack. */
            gSPLightColor(branch_dl++, LIGHT_1, __builtin_bswap32(mobj->texture.lightColor1.pack));
#else
            gSPLightColor(branch_dl++, LIGHT_1, mobj->texture.lightColor1.pack);
#endif
        }
        if (flags & 0x2000)
        {
#ifdef PORT
            gSPLightColor(branch_dl++, LIGHT_2, __builtin_bswap32(mobj->texture.lightColor2.pack));
#else
            gSPLightColor(branch_dl++, LIGHT_2, mobj->texture.lightColor2.pack);
#endif
        }
        if (flags & (0x200 | 0x10 | 0x8))
        {
            if (flags & 0x10)
            {
                s32 trunc = mobj->primLOD;

                gDPSetPrimColor
                (
                    branch_dl++,
                    (u8)mobj->texture.minLOD,
                    (mobj->primLOD - trunc) * 256.0F,
                    mobj->texture.primColor.color.r,
                    mobj->texture.primColor.color.g,
                    mobj->texture.primColor.color.b,
                    mobj->texture.primColor.color.a
                );
                mobj->texIndex1 = trunc;
                mobj->texIndex2 = trunc + 1;
            }
            else
            {
                gDPSetPrimColor
                (
                    branch_dl++,
                    (u8)mobj->texture.minLOD,
                    mobj->primLOD * 255.0F,
                    mobj->texture.primColor.color.r,
                    mobj->texture.primColor.color.g,
                    mobj->texture.primColor.color.b,
                    mobj->texture.primColor.color.a
                );
            }
        }
        if (flags & 0x400)
        {
            gDPSetEnvColor
            (
                branch_dl++,
                mobj->texture.envColor.color.r,
                mobj->texture.envColor.color.g,
                mobj->texture.envColor.color.b,
                mobj->texture.envColor.color.a
            );
        }
        if (flags & 0x800)
        {
            gDPSetBlendColor
            (
                branch_dl++,
                mobj->texture.blendColor.color.r,
                mobj->texture.blendColor.color.g,
                mobj->texture.blendColor.color.b,
                mobj->texture.blendColor.color.a
            );
        }
        if (flags & (0x10 | 0x2))
        {
            s32 block_siz = ((u8)mobj->texture.siz2 == G_IM_SIZ_32b) ? G_IM_SIZ_32b : G_IM_SIZ_16b;

#ifdef PORT
            /* texture.textures is a u32-held native pointer on the host. */
            gDPSetTextureImage
            (
                branch_dl++,
                (u8)mobj->texture.fmt2,
                block_siz,
                1,
                ((u32 *)(uintptr_t)mobj->texture.textures)[mobj->texIndex2]
            );
#else
            gDPSetTextureImage
            (
                branch_dl++,
                (u8)mobj->texture.fmt2,
                block_siz,
                1,
                mobj->texture.textures[mobj->texIndex2]
            );
#endif
            if (flags & (0x10 | 0x1))
            {
                gDPLoadSync(branch_dl++);

                switch ((u8)mobj->texture.siz2)
                {
                case G_IM_SIZ_4b:
                    gDPLoadBlock
                    (
                        branch_dl++,
                        6,
                        0,
                        0,
                        (((mobj->texture.w2 * mobj->texture.h2) + 3) >> 2) - 1,
                        (((mobj->texture.w2 / 16 <= 0) ? 1 : mobj->texture.w2 / 16) + 0x7FF) / ((mobj->texture.w2 / 16 <= 0) ? 1 : mobj->texture.w2 / 16)
                    );
                    break;

                case G_IM_SIZ_8b:
                    gDPLoadBlock
                    (
                        branch_dl++,
                        6,
                        0,
                        0,
                        (((mobj->texture.w2 * mobj->texture.h2) + 1) >> 1) - 1,
                        (((mobj->texture.w2 / 8 <= 0) ? 1 : mobj->texture.w2 / 8) + 0x7FF) / ((mobj->texture.w2 / 8 <= 0) ? 1 : mobj->texture.w2 / 8)
                    );
                    break;

                case G_IM_SIZ_16b:
                    gDPLoadBlock
                    (
                        branch_dl++,
                        6,
                        0,
                        0,
                        (mobj->texture.w2 * mobj->texture.h2) - 1,
                        ((((mobj->texture.w2 * 2) / 8 <= 0) ? 1 : (mobj->texture.w2 * 2) / 8) + 0x7FF) / (((mobj->texture.w2 * 2) / 8 <= 0) ? 1 : (mobj->texture.w2 * 2) / 8)
                    );
                    break;

                case G_IM_SIZ_32b:
                    gDPLoadBlock
                    (
                        branch_dl++,
                        6,
                        0,
                        0,
                        (mobj->texture.w2 * mobj->texture.h2) - 1,
                        ((((mobj->texture.w2 * 4) / 8 <= 0) ? 1 : (mobj->texture.w2 * 4) / 8) + 0x7FF) / (((mobj->texture.w2 * 4) / 8 <= 0) ? 1 : (mobj->texture.w2 * 4) / 8)
                    );
                    break;
                }
                gDPLoadSync(branch_dl++);
            }
        }
        if (flags & (0x10 | 0x1))
        {
#ifdef PORT
            gDPSetTextureImage
            (
                branch_dl++,
                (u8)mobj->texture.fmt1,
                (u8)mobj->texture.siz1,
                1,
                ((u32 *)(uintptr_t)mobj->texture.textures)[mobj->texIndex1]
            );
#else
            gDPSetTextureImage
            (
                branch_dl++,
                (u8)mobj->texture.fmt1,
                (u8)mobj->texture.siz1,
                1,
                mobj->texture.textures[mobj->texIndex1]
            );
#endif
        }
        if (flags & 0x20)
        {
            uls = (ABSF(scau) > (1.0F / 65535.0F)) ? (((mobj->texture.t0w * trau) + mobj->texture.sharedOffset) / scau) * 4.0F : 0.0F;
            ult = (ABSF(scav) > (1.0F / 65535.0F)) ? (((((1.0F - scav) - trav) * mobj->texture.t0h) + mobj->texture.sharedOffset) / scav) * 4.0F : 0.0F;

            gDPSetTileSize
            (
                branch_dl++,
                0,
                uls,
                ult,
                ((mobj->texture.t0w - 1) << 2) + uls,
                ((mobj->texture.t0h - 1) << 2) + ult
            );
        }
        if (flags & 0x40)
        {
            uls = (ABSF(scau) > (1.0F / 65535.0F)) ? (((mobj->texture.t1w * scrollu) + mobj->texture.sharedOffset) / scau) * 4.0F : 0.0F;
            ult = (ABSF(scav) > (1.0F / 65535.0F)) ? (((((1.0F - scav) - scrollv) * mobj->texture.t1h) + mobj->texture.sharedOffset) / scav) * 4.0F : 0.0F;

            gDPSetTileSize
            (
                branch_dl++,
                1,
                uls,
                ult,
                ((mobj->texture.t1w - 1) << 2) + uls,
                ((mobj->texture.t1h - 1) << 2) + ult
            );
        }
        if (flags & 0x80)
        {
            s = (ABSF(scau) > (1.0F / 65535.0F)) ? (2097152.0F / mobj->texture.stretch) / scau : 0.0F;
            t = (ABSF(scav) > (1.0F / 65535.0F)) ? (2097152.0F / mobj->texture.stretch) / scav : 0.0F;
            if (s > 0xFFFF)
            {
                s = 0xFFFF;
            }
            if (t > 0xFFFF)
            {
                t = 0xFFFF;
            }
            gSPTexture(branch_dl++, s, t, 0, 0, G_ON);
        }
        gSPEndDisplayList(branch_dl++);
    }
    gDynamicBuffer1.top = (void*) branch_dl;
}

void renderDrawGObj(GObj* gobj, Gfx** gfxPtr) {
    s32 ret;
    DObj* dobj;

    dobj = gobj->data.dobj;

    renderObjectScale = 1.0f;

    if (dobj->data.glist != NULL) {
        if (dobj->flags == 0) {
            ret = renderPrepareModelMatrix(gfxPtr, dobj);
            renderLoadTextures(dobj, gfxPtr);
            gSPDisplayList((*gfxPtr)++, dobj->data.glist);

            if (ret != 0 && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                gSPPopMatrix((*gfxPtr)++, G_MTX_MODELVIEW);
            }
        }
    }
}

void renderDrawGObjList0(GObj *gobj) {
    renderDrawGObj(gobj, &gDisplayListHeads[0]);
}

void renderDrawGObjList1(GObj *gobj) {
    renderDrawGObj(gobj, &gDisplayListHeads[1]);
}

void renderDrawGObjList2(GObj *gobj) {
    renderDrawGObj(gobj, &gDisplayListHeads[2]);
}

void renderDrawGObjList3(GObj *gobj) {
    renderDrawGObj(gobj, &gDisplayListHeads[3]);
}

void renderDrawDObj(DObj* dobj) {
    s32 ret;
    DObj* curr;
    f32 sp24;

    if (!(dobj->flags & 2)) {
        sp24 = renderObjectScale;
        ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);

        if (dobj->data.glist != NULL && !(dobj->flags & 1)) {
            renderLoadTextures(dobj, &gDisplayListHeads[0]);
            gSPDisplayList(gDisplayListHeads[0]++, dobj->data.glist);
        }

        if (dobj->firstChild != NULL) {
            renderDrawDObj(dobj->firstChild);
        }

        if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
        renderObjectScale = sp24;
    }

    if (dobj->prev == NULL) {
        curr = dobj->next;
        while (curr != NULL) {
            renderDrawDObj(curr);
            curr = curr->next;
        }
    }
}

void renderDrawDObjFromGObj(GObj *gobj) {
    renderObjectScale = 1.0f;
    renderDrawDObj(gobj->data.dobj);
}

void renderDrawDObj_TypeC(DObj *dobj, DObjPayloadTypeC *payload)
{
    s32 num;
    s32 list_id;
    Gfx *dl_start;
    Gfx *dl_end;
    s32 unused;
    void *ptr;

    list_id = -1;

    if ((payload != NULL) && (dobj->flags == 0))
    {
        dl_start = gDisplayListHeads[payload->dlistID];
        num = renderPrepareModelMatrix(&gDisplayListHeads[payload->dlistID], dobj);
        dl_end = gDisplayListHeads[payload->dlistID];

        if (payload->dlist != NULL)
        {
            ptr = gDynamicBuffer1.top;

            renderLoadTextures(dobj, &gDisplayListHeads[payload->dlistID]);
            gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlist);

            if (num != 0)
            {
                if (((uintptr_t) dobj->parent == 1) || (dobj->next != NULL))
                {
                    gSPPopMatrix(gDisplayListHeads[payload->dlistID]++, G_MTX_MODELVIEW);
                }
            }
        }
        else list_id = payload->dlistID;

        while ((++payload)->dlistID != ARRAY_COUNT(gDisplayListHeads))
        {
            if (payload->dlist != NULL)
            {
                Gfx *dl_curr = dl_start;

                while (dl_curr != dl_end)
                {
                    *gDisplayListHeads[payload->dlistID]++ = *dl_curr++;
                }
                if (dobj->mobjList != NULL)
                {
                    gSPSegment(gDisplayListHeads[payload->dlistID]++, 0xE, ptr);
                }
                gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlist);

                if (num != 0)
                {
                    if (((uintptr_t) dobj->parent == 1) || (dobj->next != NULL))
                    {
                        gSPPopMatrix(gDisplayListHeads[payload->dlistID]++, G_MTX_MODELVIEW);
                    }
                }
            }
            continue; // Required!
        }
        if (list_id != -1)
        {
            gDisplayListHeads[list_id] = dl_start;
        }
    }
    else return;
}

void renderDrawObject_TypeC(GObj *gobj) {
    renderObjectScale = 1.0f;
    renderDrawDObj_TypeC(gobj->data.dobj, gobj->data.dobj->data.typeC);
}

extern Gfx *D_8004ABAC;
extern Gfx *D_8004ABB0;
extern Gfx *D_8004ABB4;

/* FLOOR 7/13, 13 variants measured 2026-08-12. The ROM is 11 instructions and
   this is 13; the residue is entirely $at reuse. The ROM emits

       lui $at,%hi(D_8004ABA8) / sw %lo(D_8004ABA8) / sw %lo(D_8004ABAC)
       lui $at,%hi(D_8004ABB0) / sw %lo(D_8004ABB0) / sw %lo(D_8004ABB4)

   -- two stores per lui, with the %lo folded into the store -- while IDO emits
   a fresh lui per symbol. All four share %hi, so even one lui would do; the
   ROM reloads after exactly two, which no source form here reproduces.

   Swept, with the diff count each reached: 4 array elements D_8004ABA8[0..3]
   (8/11 -- correct LENGTH, but IDO materialises the base with lui+addiu and
   uses offsets 0/4/8/12, which is a different shape, not a near miss); two
   2-element arrays (9/13); two 2-pointer structs (9/13); a 4-iteration loop
   (7/13); and six chained-assignment groupings including the one that mirrors
   the ROM's pairing exactly, `D_8004ABAC = D_8004ABA8[0] = D_8004ABB8;`
   (8/14, 11/15, 14/15, 16/16, 16/16).

   Note for whoever tries again: 2+ references to one array or struct make IDO
   materialise the base, and a single reference makes it fold %lo. The ROM is
   in neither state -- it folds %lo AND reuses the register -- so the answer is
   probably not a declaration shape at all. `volatile` is the wrong direction
   here; the guide's note is that it pushes TOWARDS materialisation.

   D_8004ABAC, D_8004ABB0 and D_8004ABB4 are referenced by nothing else in the
   tree, so their declarations are free to reshape. */
#ifdef NON_MATCHING
void func_8001479C(void) {
    D_8004ABA0 = D_8004ABB8;
    D_8004ABA8[0] = D_8004ABB8;
    D_8004ABAC = D_8004ABB8;
    D_8004ABB0 = D_8004ABB8;
    D_8004ABB4 = D_8004ABB8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001479C.s")
#endif
void renderDrawDObj_TypeD(DObj* dobj) {
    void* segaddr = NULL;
    s32 sp50;
    DObjPayloadTypeC* payload;
    Gfx* sp48;
    s32 i;
    UNUSED s32 temp;

    if (!(dobj->flags & 2)) {
        f32 sp34 = renderObjectScale;

        payload = dobj->data.typeC;
        sp48 = D_8004ABA0;
        sp50 = renderPrepareModelMatrix(&D_8004ABA0, dobj);

        if (payload != NULL && !(dobj->flags & 1)) {
            while (payload->dlistID != 4) {
                if (payload->dlist != 0) {
                    while (D_8004ABA8[payload->dlistID] != D_8004ABA0) {
                        *gDisplayListHeads[payload->dlistID]++ = *D_8004ABA8[payload->dlistID]++;
                    }

                    if (dobj->mobjList != NULL) {
                        if (segaddr == NULL) {
                            segaddr = gDynamicBuffer1.top;
                            renderLoadTextures(dobj, &gDisplayListHeads[payload->dlistID]);
                        } else {
                            gSPSegment(gDisplayListHeads[payload->dlistID]++, 0x0E, segaddr);
                        }
                    }

                    gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlist);
                }
                payload++;
            }
        }

        if (dobj->firstChild != NULL) {
            renderDrawDObj_TypeD(dobj->firstChild);
        }

        D_8004ABA0 = sp48;

        for (i = 0; i < 4; i++) {
            if (D_8004ABA8[i] > D_8004ABA0) {
                D_8004ABA8[i] = D_8004ABA0;
                if (sp50 && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                    gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                }
            }
            do { } while (0);
        }

        renderObjectScale = sp34;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            renderDrawDObj_TypeD(curr);
            curr = curr->next;
        }
    }
}

void renderDrawObject_TypeD(GObj *gobj) {
    renderObjectScale = 1.0f;
    renderDrawDObj_TypeD(gobj->data.dobj);
}

f32 renderDistanceToCamera(DObj *dobj) {
    f32 x, y, z;
    Camera *cam = omCurrentCamera->data.cam;

    x = dobj->pos.v.x - cam->viewMtx.lookAt.eye.x;
    y = dobj->pos.v.y - cam->viewMtx.lookAt.eye.y;
    z = dobj->pos.v.z - cam->viewMtx.lookAt.eye.z;

    return SQ(x) + SQ(y) + SQ(z);
}

void renderDrawGObjWithDObjTypeE(GObj* obj) {
    DObjPayloadTypeE* payload;
    s32 ret;
    DObj* dobj;

    dobj = obj->data.dobj;
    payload = dobj->data.typeE;

    if (payload != NULL && !(dobj->flags)) {
        f32 dist = renderDistanceToCamera(dobj);

        while (payload->drawDistance > dist) {
            payload++;
        }

        renderObjectScale = 1.0f;

        if (payload->dlist != NULL) {
            ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);
            renderLoadTextures(dobj, &gDisplayListHeads[0]);
            gSPDisplayList(gDisplayListHeads[0]++, payload->dlist);
            if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
            }
        }
    }
}

void renderDrawDObj_LevelOfDetail(DObj* dobj) {
    s32 ret;
#ifdef PORT
    /* 4-byte-slot pointer table; see the DObj.h PORT union comment. */
    u32* lodList = dobj->data.lod;
#else
    Gfx** lodList = dobj->data.lod;
#endif
    UNUSED s32 temp;

    if (!(dobj->flags & 2)) {
        f32 sp20 = renderObjectScale;

        ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);
        if (lodList != NULL && lodList[renderLevelOfDetail] != NULL && !(dobj->flags & 1)) {
            renderLoadTextures(dobj, &gDisplayListHeads[0]);
            gSPDisplayList(gDisplayListHeads[0]++, lodList[renderLevelOfDetail]);
        }

        if (dobj->firstChild != NULL) {
            renderDrawDObj_LevelOfDetail(dobj->firstChild);
        }

        if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }

        renderObjectScale = sp20;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            renderDrawDObj_LevelOfDetail(curr);
            curr = curr->next;
        }
    }
}

void renderDrawObject_LevelOfDetail(GObj* obj) {
    DObjPayloadTypeE* payload;
    s32 ret;
    UNUSED s32 temp;
    DObj* dobj = obj->data.dobj;

    if (1) {
        ;  // required to match
    }

    renderObjectScale = 1.0f;

    if (!(dobj->flags & 2)) {
        payload = dobj->data.typeE;
        if (payload != NULL) {
            f32 dist2;

            renderLevelOfDetail = 0;
            dist2 = renderDistanceToCamera(dobj);
            while (payload->drawDistance > dist2) {
                payload++;
                renderLevelOfDetail++;
            }

            ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);
            if (payload->dlist != NULL && !(dobj->flags & 1)) {
                renderLoadTextures(dobj, &gDisplayListHeads[0]);
                gSPDisplayList(gDisplayListHeads[0]++, payload->dlist);
            }

            if (dobj->firstChild != NULL) {
                renderDrawDObj_LevelOfDetail(dobj->firstChild);
            }

            if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
            }

            if (dobj->prev == NULL) {
                DObj* curr = dobj->next;
                while (curr != NULL) {
                    renderDrawDObj_LevelOfDetail(curr);
                    curr = curr->next;
                }
            }
        }
    }
}

void renderDrawObject_TypeG(GObj* obj) {
    DObjPayloadTypeG *payload;
    UNUSED s32 temp;
    DObj *dobj = obj->data.dobj;

    renderObjectScale = 1.0f;

    if (!(dobj->flags)) {
        payload = dobj->data.data;
        if (payload != NULL) {
            f32 dist;

            dist = renderDistanceToCamera(dobj);
            while (payload->drawDistance > dist) {
                payload++;
            }

#ifdef PORT
            /* typeC is a u32-held native pointer on the host (DObj.h). */
            renderDrawDObj_TypeC(dobj, (DObjPayloadTypeC *)(uintptr_t)payload->typeC);
#else
            renderDrawDObj_TypeC(dobj, payload->typeC);
#endif
        }
    }
}

void func_8001503C(DObj* dobj) {
    void* segaddr = NULL;
    s32 ret;
#ifdef PORT
    /* 4-byte-slot pointer table; see the DObj.h PORT union comment. */
    u32* payload;
#else
    DObjPayloadTypeC** payload;
#endif
    DObjPayloadTypeC* curPayload;
    Gfx* sp3C;
    s32 i;
    UNUSED s32 temp;

    if (!(dobj->flags & 2)) {
        f32 sp30 = renderObjectScale;
        payload = dobj->data.typeH;
        if (payload != NULL) {
#ifdef PORT
            curPayload = (DObjPayloadTypeC *)(uintptr_t)payload[renderLevelOfDetail];
#else
            curPayload = payload[renderLevelOfDetail];
#endif
        }

        sp3C = D_8004ABA0;
        ret = renderPrepareModelMatrix(&D_8004ABA0, dobj);

        if (payload != NULL && curPayload != NULL && !(dobj->flags & 1)) {
            while (curPayload->dlistID != 4) {
                if (curPayload->dlist != NULL) {
                    while (D_8004ABA8[curPayload->dlistID] != D_8004ABA0) {
                        *gDisplayListHeads[curPayload->dlistID]++ = *D_8004ABA8[curPayload->dlistID]++;
                    }

                    if (dobj->mobjList != NULL) {
                        if (segaddr == NULL) {
                            segaddr = gDynamicBuffer1.top;
                            renderLoadTextures(dobj, &gDisplayListHeads[curPayload->dlistID]);
                        } else {
                            gSPSegment(gDisplayListHeads[curPayload->dlistID]++, 0x0E, segaddr);
                        }
                    }

                    gSPDisplayList(gDisplayListHeads[curPayload->dlistID]++, curPayload->dlist);
                }

                curPayload++;
            }
        }

        if (dobj->firstChild != NULL) {
            func_8001503C(dobj->firstChild);
        }

        D_8004ABA0 = sp3C;
        for (i = 0; i < 4; i++) {
            if (D_8004ABA8[i] > D_8004ABA0) {
                D_8004ABA8[i] = D_8004ABA0;
                if (dobj) {
                }
                if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                    gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                }
            }
        }

        renderObjectScale = sp30;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            func_8001503C(curr);
            curr = curr->next;
        }
    }
}

void func_80015368(GObj* obj) {
    DObj* dobj = obj->data.dobj;
    void* segaddr = NULL;
    s32 ret;
    DObjPayloadTypeG* payload;
    s32 i;
    f32 dist;
    DObjPayloadTypeC* curPayload;
    Gfx* sp30;

    renderObjectScale = 1.0f;

    if (!(dobj->flags & 2)) {
        payload = dobj->data.data;
        if (payload != NULL) {
            renderLevelOfDetail = 0;
            dist = renderDistanceToCamera(dobj);
            while (payload->drawDistance > dist) {
                payload++;
                renderLevelOfDetail++;
            }

#ifdef PORT
            /* typeC is a u32-held native pointer on the host (DObj.h). */
            curPayload = (DObjPayloadTypeC *)(uintptr_t)payload->typeC;
#else
            curPayload = payload->typeC;
#endif
            sp30 = D_8004ABA0;
            ret = renderPrepareModelMatrix(&D_8004ABA0, dobj);

            if (curPayload != NULL && !(dobj->flags & 1)) {
                while (curPayload->dlistID != 4) {
                    if (curPayload->dlist != NULL) {
                        while (D_8004ABA8[curPayload->dlistID] != D_8004ABA0) {
                            *gDisplayListHeads[curPayload->dlistID]++ = *D_8004ABA8[curPayload->dlistID]++;
                        }

                        if (dobj->mobjList != NULL) {
                            if (segaddr == NULL) {
                                segaddr = D_8004A404;
                                renderLoadTextures(dobj, &gDisplayListHeads[curPayload->dlistID]);
                            } else {
                                gSPSegment(gDisplayListHeads[curPayload->dlistID]++, 0x0E, segaddr);
                            }
                        }

                        gSPDisplayList(gDisplayListHeads[curPayload->dlistID]++, curPayload->dlist);
                    }
                    curPayload++;
                }
            }

            if (dobj->firstChild != NULL) {
                func_8001503C(dobj->firstChild);
            }

            D_8004ABA0 = sp30;
            for (i = 0; i < 4; i++) {
                if (D_8004ABA8[i] > D_8004ABA0) {
                    D_8004ABA8[i] = D_8004ABA0;
                    if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                        gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                    }
                }
                do { } while (0);
            }

            if (dobj->prev == NULL) {
                DObj* curr = dobj->next;
                while (curr != NULL) {
                    func_8001503C(curr);
                    curr = curr->next;
                }
            }
        }
    }
}

void func_800156C4(DObj* dobj) {
    s32 ret;
    UNUSED s32 pad;
    f32 sp24;
    UNUSED s32 pad2;
#ifdef PORT
    /* Gfx *[2] payload stored as two u32 slots in the blob (see the
     * DObjPayloadTypeC PORT comment in DObj.h). */
    u32* payload;
#else
    Gfx** payload;
#endif

    payload = dobj->data.data;

    if (!(dobj->flags & 2)) {
        sp24 = renderObjectScale;

        if (payload != NULL && payload[0] != NULL && !(dobj->flags & 1)) {
            gSPDisplayList(gDisplayListHeads[0]++, payload[0]);
        }

        ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);

        if (payload != NULL && payload[1] != NULL && !(dobj->flags & 1)) {
            renderLoadTextures(dobj, &gDisplayListHeads[0]);
            gSPDisplayList(gDisplayListHeads[0]++, payload[1]);
        }

        if (dobj->firstChild != NULL) {
            func_800156C4(dobj->firstChild);
        }

        if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
        renderObjectScale = sp24;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            func_800156C4(curr);
            curr = curr->next;
        }
    }
}

void func_8001585C(GObj *gobj) {
    renderObjectScale = 1.0f;
    func_800156C4(gobj->data.dobj);
}

void func_8001588C(DObj* dobj) {
    void* segaddr = NULL;
    s32 ret;
    DObjPayloadTypeI* payload;
    Gfx* sp48;
    s32 i;
    UNUSED s32 temp;

    if (!(dobj->flags & 2)) {
        f32 sp34 = renderObjectScale;

        payload = dobj->data.data;
        sp48 = D_8004ABA0;
        ret = renderPrepareModelMatrix(&D_8004ABA0, dobj);

        if (payload != NULL && !(dobj->flags & 1)) {
            while (payload->dlistID != 4) {
                if (payload->dlistAfter != NULL) {
                    if (payload->dlistBefore != NULL) {
                        gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlistBefore);
                    }

                    while (D_8004ABA8[payload->dlistID] != D_8004ABA0) {
                        *gDisplayListHeads[payload->dlistID]++ = *D_8004ABA8[payload->dlistID]++;
                    }

                    if (dobj->mobjList != NULL) {
                        if (segaddr == NULL) {
                            segaddr = D_8004A404;
                            renderLoadTextures(dobj, &gDisplayListHeads[payload->dlistID]);
                        } else {
                            gSPSegment(gDisplayListHeads[payload->dlistID]++, 0x0E, segaddr);
                        }
                    }

                    gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlistAfter);
                }
                payload++;
            }
        }

        if (dobj->firstChild != NULL) {
            func_8001588C(dobj->firstChild);
        }

        D_8004ABA0 = sp48;

        for (i = 0; i < 4; i++) {
            if (D_8004ABA8[i] > D_8004ABA0) {
                D_8004ABA8[i] = D_8004ABA0;
                if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                    gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                }
            }
            do { } while (0);
        }

        renderObjectScale = sp34;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            func_8001588C(curr);
            curr = curr->next;
        }
    }
}

void func_80015BCC(GObj *gobj) {
    renderObjectScale = 1.0f;
    func_8001588C(gobj->data.dobj);
}

void func_80015BFC(DObj* dobj) {
    s32 ret;
    UNUSED s32 pad;
    f32 sp24;
#ifdef PORT
    /* Two levels of 4-byte-slot tables (see DObj.h PORT union comment). */
    u32* payload;
    u32* lodList;
#else
    Gfx** payload;
    Gfx*** lodList;
#endif

    lodList = dobj->data.data;

    if (!(dobj->flags & 2)) {
        sp24 = renderObjectScale;

        if (lodList != NULL) {
#ifdef PORT
            payload = (u32 *)(uintptr_t)lodList[renderLevelOfDetail];
#else
            payload = lodList[renderLevelOfDetail];
#endif
        }

        if (lodList != NULL && payload[0] != NULL && !(dobj->flags & 1)) {
            gSPDisplayList(gDisplayListHeads[0]++, payload[0]);
        }

        ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);

        if (lodList != NULL && payload[1] != NULL && !(dobj->flags & 1)) {
            renderLoadTextures(dobj, &gDisplayListHeads[0]);
            gSPDisplayList(gDisplayListHeads[0]++, payload[1]);
        }

        if (dobj->firstChild != NULL) {
            func_80015BFC(dobj->firstChild);
        }

        if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
        renderObjectScale = sp24;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            func_80015BFC(curr);
            curr = curr->next;
        }
    }
}

void func_80015DC4(GObj* obj) {
    DObjPayloadTypeE* payload;
    s32 ret;
    UNUSED s32 temp;
    DObj* dobj = obj->data.dobj;

    if (1) {
        ;  // required to match
    }

    if (!(dobj->flags & 2)) {
        payload = dobj->data.typeE;
        if (payload != NULL) {
            f32 dist;

            renderObjectScale = 1.0f;
            renderLevelOfDetail = 0;
            dist = renderDistanceToCamera(dobj);
            while (payload->drawDistance > dist) {
                payload++;
                renderLevelOfDetail++;
            }

            ret = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);
            if (payload->dlist != NULL && !(dobj->flags & 1)) {
                renderLoadTextures(dobj, &gDisplayListHeads[0]);
                gSPDisplayList(gDisplayListHeads[0]++, payload->dlist);
            }

            if (dobj->firstChild != NULL) {
                func_80015BFC(dobj->firstChild);
            }

            if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
            }

            if (dobj->prev == NULL) {
                DObj* curr = dobj->next;
                while (curr != NULL) {
                    func_80015BFC(curr);
                    curr = curr->next;
                }
            }
        }
    }
}

void func_80015F78(DObj* dobj) {
    void* segaddr = NULL;
    s32 ret;
    UNUSED s32 temp;
    DObjPayloadTypeI* payload;
    Gfx* sp3C;
    s32 i;
#ifdef PORT
    /* 4-byte-slot pointer table (see DObj.h PORT union comment). */
    u32* lodLists;
#else
    DObjPayloadTypeI** lodLists;
#endif

    if (!(dobj->flags & 2)) {
        f32 sp30 = renderObjectScale;

        lodLists = dobj->data.data;
        if (lodLists != NULL) {
#ifdef PORT
            payload = (DObjPayloadTypeI *)(uintptr_t)lodLists[renderLevelOfDetail];
#else
            payload = lodLists[renderLevelOfDetail];
#endif
        }

        sp3C = D_8004ABA0;
        ret = renderPrepareModelMatrix(&D_8004ABA0, dobj);

        if (lodLists != NULL && payload != NULL && !(dobj->flags & 1)) {
            while (payload->dlistID != 4) {
                if (payload->dlistAfter != NULL) {
                    if (payload->dlistBefore != NULL) {
                        gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlistBefore);
                    }

                    while (D_8004ABA8[payload->dlistID] != D_8004ABA0) {
                        *gDisplayListHeads[payload->dlistID]++ = *D_8004ABA8[payload->dlistID]++;
                    }

                    if (dobj->mobjList != NULL) {
                        if (segaddr == NULL) {
                            segaddr = D_8004A404;
                            renderLoadTextures(dobj, &gDisplayListHeads[payload->dlistID]);
                        } else {
                            gSPSegment(gDisplayListHeads[payload->dlistID]++, 0x0E, segaddr);
                        }
                    }

                    gSPDisplayList(gDisplayListHeads[payload->dlistID]++, payload->dlistAfter);
                }
                payload++;
            }
        }

        if (dobj->firstChild != NULL) {
            func_80015F78(dobj->firstChild);
        }

        D_8004ABA0 = sp3C;

        for (i = 0; i < 4; i++) {
            if (D_8004ABA8[i] > D_8004ABA0) {
                D_8004ABA8[i] = D_8004ABA0;
                if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                    gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                }
            }
            do { } while (0);
        }

        renderObjectScale = sp30;
    }

    if (dobj->prev == NULL) {
        DObj* curr = dobj->next;
        while (curr != NULL) {
            func_80015F78(curr);
            curr = curr->next;
        }
    }
}

void func_800162D8(GObj* obj) {
    DObj* dobj = obj->data.dobj;
    void* segaddr = NULL;
    s32 ret;
    DObjPayloadTypeG* payload;
    s32 i;
    f32 dist;
    DObjPayloadTypeC* curPayload;
    Gfx* sp30;

    if (!(dobj->flags & 2)) {
        payload = dobj->data.data;
        if (payload != NULL) {
            renderObjectScale = 1.0f;
            renderLevelOfDetail = 0;
            dist = renderDistanceToCamera(dobj);
            while (payload->drawDistance > dist) {
                payload++;
                renderLevelOfDetail++;
            }

#ifdef PORT
            /* typeC is a u32-held native pointer on the host (DObj.h). */
            curPayload = (DObjPayloadTypeC *)(uintptr_t)payload->typeC;
#else
            curPayload = payload->typeC;
#endif
            sp30 = D_8004ABA0;
            ret = renderPrepareModelMatrix(&D_8004ABA0, dobj);

            if (curPayload != NULL && !(dobj->flags & 1)) {
                while (curPayload->dlistID != 4) {
                    if (curPayload->dlist != NULL) {
                        while (D_8004ABA8[curPayload->dlistID] != D_8004ABA0) {
                            *gDisplayListHeads[curPayload->dlistID]++ = *D_8004ABA8[curPayload->dlistID]++;
                        }

                        if (dobj->mobjList != NULL) {
                            if (segaddr == NULL) {
                                segaddr = D_8004A404;
                                renderLoadTextures(dobj, &gDisplayListHeads[curPayload->dlistID]);
                            } else {
                                gSPSegment(gDisplayListHeads[curPayload->dlistID]++, 0x0E, segaddr);
                            }
                        }

                        gSPDisplayList(gDisplayListHeads[curPayload->dlistID]++, curPayload->dlist);
                    }
                    curPayload++;
                }
            }

            if (dobj->firstChild != NULL) {
                func_80015F78(dobj->firstChild);
            }

            D_8004ABA0 = sp30;
            for (i = 0; i < 4; i++) {
                if (D_8004ABA8[i] > D_8004ABA0) {
                    D_8004ABA8[i] = D_8004ABA0;
                    if (ret && ((uintptr_t) dobj->parent == 1 || dobj->next != NULL)) {
                        gSPPopMatrix(gDisplayListHeads[i]++, G_MTX_MODELVIEW);
                    }
                }
                do { } while (0);
            }

            if (dobj->prev == NULL) {
                DObj* curr = dobj->next;
                while (curr != NULL) {
                    func_80015F78(curr);
                    curr = curr->next;
                }
            }
        }
    }
}

void func_80016634(s32 arg0) {
}

void func_8001663C(Gfx **gfx, Camera *cam, s32 arg2) {
    Gfx *g;
    Vp *vp;
    s32 ulx;
    s32 uly;
    s32 lrx;
    s32 lry;

    g = *gfx;
    if ((arg2 == 0 || arg2 == 1) && (cam->flags & CAMERA_FLAG_20)) {
        gtlLoadUcode(gfx, D_8004A446);
        D_8004A448 = TRUE;
        g = *gfx;
    }

    vp = &cam->viewport;
    do { } while (0);
    gSPViewport(g++, vp);

    ulx = vp->vp.vtrans[0] / 4 - vp->vp.vscale[0] / 4;
    uly = vp->vp.vtrans[1] / 4 - vp->vp.vscale[1] / 4;
    lrx = vp->vp.vtrans[0] / 4 + vp->vp.vscale[0] / 4;
    lry = vp->vp.vtrans[1] / 4 + vp->vp.vscale[1] / 4;

    if (ulx < gCurrScreenWidth / 320 * renderCameraScissorLeft) {
        ulx = gCurrScreenWidth / 320 * renderCameraScissorLeft;
    }
    if (uly < gCurrScreenHeight / 240 * renderCameraScissorTop) {
        uly = gCurrScreenHeight / 240 * renderCameraScissorTop;
    }
    if (gCurrScreenWidth - gCurrScreenWidth / 320 * renderCameraScissorRight < lrx) {
        lrx = gCurrScreenWidth - gCurrScreenWidth / 320 * renderCameraScissorRight;
    }
    if (gCurrScreenHeight - gCurrScreenHeight / 240 * renderCameraScissorBottom < lry) {
        lry = gCurrScreenHeight - gCurrScreenHeight / 240 * renderCameraScissorBottom;
    }

    gDPSetScissor(g++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    gDPPipeSync(g++);
    gDPSetColorImage(g++, G_IM_FMT_RGBA, viCFBFmt, gCurrScreenWidth, 0x0F000000);
    gDPSetCycleType(g++, G_CYC_1CYCLE);

    if (arg2 == 0 || arg2 == 2) {
        gDPSetRenderMode(g++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    } else {
        gDPSetRenderMode(g++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }

    *gfx = g;
}

void renderInitCamera(Gfx **gfx, Camera *cam, s32 arg2) {
    Gfx *g;
    Vp *vp;
    s32 lrx;
    s32 lry;
    s32 ulx;
    s32 uly;

    g = *gfx;
    if ((arg2 == 0 || arg2 == 1) && (cam->flags & CAMERA_FLAG_20)) {
        gtlLoadUcode(gfx, D_8004A446);
        D_8004A448 = TRUE;
        g = *gfx;
    }

    vp = &cam->viewport;
    do { } while (0);
    gSPViewport(g++, vp);

    ulx = vp->vp.vtrans[0] / 4 - vp->vp.vscale[0] / 4;
    uly = vp->vp.vtrans[1] / 4 - vp->vp.vscale[1] / 4;
    lrx = vp->vp.vtrans[0] / 4 + vp->vp.vscale[0] / 4;
    lry = vp->vp.vtrans[1] / 4 + vp->vp.vscale[1] / 4;

    if (ulx < gCurrScreenWidth / 320 * renderCameraScissorLeft) {
        ulx = gCurrScreenWidth / 320 * renderCameraScissorLeft;
    }
    if (uly < gCurrScreenHeight / 240 * renderCameraScissorTop) {
        uly = gCurrScreenHeight / 240 * renderCameraScissorTop;
    }
    if (gCurrScreenWidth - gCurrScreenWidth / 320 * renderCameraScissorRight < lrx) {
        lrx = gCurrScreenWidth - gCurrScreenWidth / 320 * renderCameraScissorRight;
    }
    if (gCurrScreenHeight - gCurrScreenHeight / 240 * renderCameraScissorBottom < lry) {
        lry = gCurrScreenHeight - gCurrScreenHeight / 240 * renderCameraScissorBottom;
    }

    gDPSetScissor(g++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    lrx -= 1;
    lry -= 1;

    if (cam->flags & CAMERA_FLAG_1) {
        gDPPipeSync(g++);
        gDPSetCycleType(g++, G_CYC_FILL);
        gDPSetRenderMode(g++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetColorImage(g++, G_IM_FMT_RGBA, G_IM_SIZ_16b, gCurrScreenWidth, gZBuffer);
        gDPSetFillColor(g++, GPACK_ZDZ(G_MAXFBZ, 0) << 16 | GPACK_ZDZ(G_MAXFBZ, 0));
        gDPFillRectangle(g++, ulx, uly, lrx, lry);
    }

    gDPPipeSync(g++);
    gDPSetColorImage(g++, G_IM_FMT_RGBA, viCFBFmt, gCurrScreenWidth, 0x0F000000);

    if (cam->flags & CAMERA_FLAG_2) {
        gDPSetCycleType(g++, G_CYC_FILL);
        gDPSetRenderMode(g++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(g++, viPackRGBA(cam->bgcolor));
        gDPFillRectangle(g++, ulx, uly, lrx, lry);
    }

    gDPPipeSync(g++);
    gDPSetCycleType(g++, G_CYC_1CYCLE);

    if (arg2 == 0 || arg2 == 2) {
        gDPSetRenderMode(g++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    } else {
        gDPSetRenderMode(g++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }

    *gfx = g;
}

void func_80016DE8(Gfx **gfx, Camera *cam, s32 arg2, void *cimg, s32 width, s32 height, void *zimg) {
    Gfx *g;
    s32 lrx;
    s32 lry;
    s32 ulx;
    s32 uly;
    UNUSED s32 pad[1];

    g = *gfx;
    gSPViewport(g++, &cam->viewport);

    ulx = cam->viewport.vp.vtrans[0] / 4 - cam->viewport.vp.vscale[0] / 4;
    uly = cam->viewport.vp.vtrans[1] / 4 - cam->viewport.vp.vscale[1] / 4;
    lrx = cam->viewport.vp.vtrans[0] / 4 + cam->viewport.vp.vscale[0] / 4;
    lry = cam->viewport.vp.vtrans[1] / 4 + cam->viewport.vp.vscale[1] / 4;

    if (ulx < 0) {
        ulx = 0;
    }
    if (uly < 0) {
        uly = 0;
    }
    if (width < lrx) {
        lrx = width;
    }
    if (height < lry) {
        lry = height;
    }

    gDPSetScissor(g++, G_SC_NON_INTERLACE, ulx, uly, lrx, lry);
    lrx -= 1;
    lry -= 1;

    if (cam->flags & CAMERA_FLAG_1) {
        gDPPipeSync(g++);
        gDPSetCycleType(g++, G_CYC_FILL);
        gDPSetRenderMode(g++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetColorImage(g++, G_IM_FMT_RGBA, G_IM_SIZ_16b, width, zimg);
        gDPSetFillColor(g++, GPACK_ZDZ(G_MAXFBZ, 0) << 16 | GPACK_ZDZ(G_MAXFBZ, 0));
        gDPFillRectangle(g++, ulx, uly, lrx, lry);
    }

    gDPPipeSync(g++);
    gDPSetColorImage(g++, G_IM_FMT_RGBA, viCFBFmt, width, cimg);
    gDPSetDepthImage(g++, zimg);

    if (cam->flags & CAMERA_FLAG_2) {
        gDPSetCycleType(g++, G_CYC_FILL);
        gDPSetRenderMode(g++, G_RM_NOOP, G_RM_NOOP2);
        gDPSetFillColor(g++, viPackRGBA(cam->bgcolor));
        gDPFillRectangle(g++, ulx, uly, lrx, lry);
    }

    gDPPipeSync(g++);
    gDPSetCycleType(g++, G_CYC_1CYCLE);

    if (arg2 == 0 || arg2 == 2) {
        gDPSetRenderMode(g++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    } else {
        gDPSetRenderMode(g++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
    }

    *gfx = g;
}

void func_800171E0(Gfx **gfx, Camera *cam) {
    Gfx *g;
    s32 i;
    OMMtx *ommtx;
    Mtx *mtx;
    s32 mode;
    s32 mode2;
    LookAt *lookAt;

    g = *gfx;
    mode2 = 0;
    mode = 0;

    if ((s32) cam->mtxCount != 0) {
        for (i = 0; i < (s32) cam->mtxCount; i++) {
            ommtx = cam->matrices[i];
            if (ommtx != NULL) {
                mtx = &ommtx->unk08;
                if (ommtx->unk05 != 2) {
                    if ((s32) gtlCurrentContextID > 0) {
                        mtx = (Mtx *) gDynamicBuffer1.top;
                        gDynamicBuffer1.top = (u8 *) gDynamicBuffer1.top + sizeof(Mtx);
                    }
                    switch (ommtx->kind) {
                        case 1:
                            break;
                        case 2:
                            break;
                        case 3:
                            HS64_PerspectiveF(renderPerspectiveMtxF, &cam->perspMtx.persp.perspNorm,
                                              cam->perspMtx.persp.fovy, cam->perspMtx.persp.aspect,
                                              cam->perspMtx.persp.near, cam->perspMtx.persp.far,
                                              cam->perspMtx.persp.scale);
                            HS64_MtxF2L(renderPerspectiveMtxF, mtx);
                            renderProjectionMtx = mtx;
                            break;
                        case 4:
                            func_8001B28C(renderPerspectiveMtxF, &cam->perspMtx.persp.perspNorm,
                                          cam->perspMtx.persp.fovy, cam->perspMtx.persp.aspect,
                                          cam->perspMtx.persp.near, cam->perspMtx.persp.far,
                                          cam->perspMtx.persp.scale);
                            HS64_MtxF2L(renderPerspectiveMtxF, mtx);
                            renderProjectionMtx = mtx;
                            break;
                        case 5:
                            guOrtho(mtx, cam->perspMtx.ortho.left, cam->perspMtx.ortho.right,
                                    cam->perspMtx.ortho.bottom, cam->perspMtx.ortho.top,
                                    cam->perspMtx.ortho.near, cam->perspMtx.ortho.far,
                                    cam->perspMtx.ortho.scale);
                            renderProjectionMtx = mtx;
                            break;
                        case 6:
                        case 7:
                            guLookAt(mtx, cam->viewMtx.lookAt.eye.x, cam->viewMtx.lookAt.eye.y,
                                     cam->viewMtx.lookAt.eye.z, cam->viewMtx.lookAt.at.x,
                                     cam->viewMtx.lookAt.at.y, cam->viewMtx.lookAt.at.z,
                                     cam->viewMtx.lookAt.up.x, cam->viewMtx.lookAt.up.y,
                                     cam->viewMtx.lookAt.up.z);
                            mode = (cam->viewMtx.lookAt.up.z < cam->viewMtx.lookAt.up.y) ? 1 : 2;
                            break;
                        case 8:
                        case 9:
                            HS64_LookAt(mtx, cam->viewMtx.lookAtRoll.xEye, cam->viewMtx.lookAtRoll.yEye,
                                        cam->viewMtx.lookAtRoll.zEye, cam->viewMtx.lookAtRoll.xAt,
                                        cam->viewMtx.lookAtRoll.yAt, cam->viewMtx.lookAtRoll.zAt,
                                        cam->viewMtx.lookAtRoll.roll, 0.0f, 1.0f, 0.0f);
                            mode = 1;
                            break;
                        case 10:
                        case 11:
                            HS64_LookAt(mtx, cam->viewMtx.lookAtRoll.xEye, cam->viewMtx.lookAtRoll.yEye,
                                        cam->viewMtx.lookAtRoll.zEye, cam->viewMtx.lookAtRoll.xAt,
                                        cam->viewMtx.lookAtRoll.yAt, cam->viewMtx.lookAtRoll.zAt,
                                        cam->viewMtx.lookAtRoll.roll, 0.0f, 0.0f, 1.0f);
                            mode = 2;
                            break;
                        case 12:
                        case 13:
                            lookAt = mlAlloc(&gDynamicBuffer1, sizeof(LookAt), 8);
                            guLookAtReflect(mtx, lookAt, cam->viewMtx.lookAt.eye.x,
                                            cam->viewMtx.lookAt.eye.y, cam->viewMtx.lookAt.eye.z,
                                            cam->viewMtx.lookAt.at.x, cam->viewMtx.lookAt.at.y,
                                            cam->viewMtx.lookAt.at.z, cam->viewMtx.lookAt.up.x,
                                            cam->viewMtx.lookAt.up.y, cam->viewMtx.lookAt.up.z);
                            mode = (cam->viewMtx.lookAt.up.z < cam->viewMtx.lookAt.up.y) ? 1 : 2;
                            break;
                        case 14:
                        case 15:
                            lookAt = mlAlloc(&gDynamicBuffer1, sizeof(LookAt), 8);
                            mode = 1;
                            func_8001AD90(mtx, lookAt, cam->viewMtx.lookAtRoll.xEye,
                                          cam->viewMtx.lookAtRoll.yEye, cam->viewMtx.lookAtRoll.zEye,
                                          cam->viewMtx.lookAtRoll.xAt, cam->viewMtx.lookAtRoll.yAt,
                                          cam->viewMtx.lookAtRoll.zAt, cam->viewMtx.lookAtRoll.roll,
                                          0.0f, 1.0f, 0.0f);
                            break;
                        case 16:
                        case 17:
                            lookAt = mlAlloc(&gDynamicBuffer1, sizeof(LookAt), 8);
                            mode = 2;
                            func_8001AD90(mtx, lookAt, cam->viewMtx.lookAtRoll.xEye,
                                          cam->viewMtx.lookAtRoll.yEye, cam->viewMtx.lookAtRoll.zEye,
                                          cam->viewMtx.lookAtRoll.xAt, cam->viewMtx.lookAtRoll.yAt,
                                          cam->viewMtx.lookAtRoll.zAt, cam->viewMtx.lookAtRoll.roll,
                                          0.0f, 0.0f, 1.0f);
                            break;
                        default:
                            if (ommtx->kind >= 67 && renderMatrixHandler != NULL) {
                                if (renderMatrixHandler[ommtx->kind - 67].unk0 != NULL) {
                                    renderMatrixHandler[ommtx->kind - 67].unk0(mtx, cam, &g);
                                }
                            }
                            break;
                    }
                    if (ommtx->unk05 == 1 && &ommtx->unk08 == mtx) {
                        ommtx->unk05 = 2;
                    }
                }
                switch (ommtx->kind) {
                    case 1:
                        break;
                    case 2:
                        break;
                    case 3:
                    case 4:
                        gSPMatrix(g++, mtx, G_MTX_PROJECTION | G_MTX_LOAD | G_MTX_NOPUSH);
                        gSPPerspNormalize(g++, cam->perspMtx.persp.perspNorm);
                        break;
                    case 5:
                        gSPMatrix(g++, mtx, G_MTX_PROJECTION | G_MTX_LOAD | G_MTX_NOPUSH);
                        break;
                    case 12:
                    case 14:
                    case 16:
                        gSPLookAtX(g++, lookAt);
                        gSPLookAtY(g++, &lookAt->l[1]);
                        /* fallthrough */
                    case 6:
                    case 8:
                    case 10:
                        gSPMatrix(g++, mtx, G_MTX_PROJECTION | G_MTX_MUL | G_MTX_NOPUSH);
                        break;
                    case 13:
                    case 15:
                    case 17:
                        gSPLookAtX(g++, lookAt);
                        gSPLookAtY(g++, &lookAt->l[1]);
                        /* fallthrough */
                    case 7:
                    case 9:
                    case 11:
                        gSPMatrix(g++, mtx, G_MTX_MODELVIEW | G_MTX_LOAD | G_MTX_NOPUSH);
                        break;
                    default:
                        if (ommtx->kind >= 67 && renderMatrixHandler != NULL) {
                            if (renderMatrixHandler[ommtx->kind - 67].unk4 != NULL) {
                                renderMatrixHandler[ommtx->kind - 67].unk4(mtx, cam, &g);
                            }
                        }
                        break;
                }
            }
        }

        switch (D_8004AB98) {
            case 0:
                mode2 = mode;
                break;
            case 1:
                mode = 0;
                break;
            case 2:
                mode2 = 1;
                mode = 1;
                break;
            case 3:
                mode = 1;
                break;
            case 4:
                mode2 = 1;
                mode = 0;
                break;
            case 5:
                mode2 = 2;
                mode = 2;
                break;
            case 6:
                mode = 2;
                break;
            case 7:
                mode2 = 2;
                mode = 0;
                break;
        }

        if (mode != 0) {
            f32 dist;
            f32 h;
            f32 hAt;

            switch (mode) {
                case 1:
                    dist = sqrtf(SQ(cam->viewMtx.lookAt.at.z - cam->viewMtx.lookAt.eye.z) +
                                 SQ(cam->viewMtx.lookAt.at.x - cam->viewMtx.lookAt.eye.x));
                    h = cam->viewMtx.lookAt.eye.y;
                    hAt = cam->viewMtx.lookAt.at.y;
                    break;
                case 2:
                    dist = sqrtf(SQ(cam->viewMtx.lookAt.at.y - cam->viewMtx.lookAt.eye.y) +
                                 SQ(cam->viewMtx.lookAt.at.x - cam->viewMtx.lookAt.eye.x));
                    h = cam->viewMtx.lookAt.eye.z;
                    hAt = cam->viewMtx.lookAt.at.z;
                    break;
            }
            if (dist < 0.0001f) {
                HS64_MkScaleMtxF(D_8004AB18, 0.0f, 0.0f, 0.0f);
            } else {
                guLookAtF(D_8004AB18, 0.0f, h, dist, 0.0f, hAt, 0.0f, 0.0f, 1.0f, 0.0f);
                guMtxCatF(D_8004AB18, renderPerspectiveMtxF, D_8004AB18);
            }
        }

        if (mode2 != 0) {
            f32 dist2;
            f32 h2;
            f32 h2At;

            switch (mode2) {
                case 1:
                    dist2 = sqrtf(SQ(cam->viewMtx.lookAt.at.y - cam->viewMtx.lookAt.eye.y) +
                                  SQ(cam->viewMtx.lookAt.at.z - cam->viewMtx.lookAt.eye.z));
                    h2 = cam->viewMtx.lookAt.eye.x;
                    h2At = cam->viewMtx.lookAt.at.x;
                    break;
                case 2:
                    dist2 = sqrtf(SQ(cam->viewMtx.lookAt.at.z - cam->viewMtx.lookAt.eye.z) +
                                  SQ(cam->viewMtx.lookAt.at.x - cam->viewMtx.lookAt.eye.x));
                    h2 = cam->viewMtx.lookAt.eye.y;
                    h2At = cam->viewMtx.lookAt.at.y;
                    break;
            }
            if (dist2 < 0.0001f) {
                HS64_MkScaleMtxF(D_8004AB58, 0.0f, 0.0f, 0.0f);
            } else {
                guLookAtF(D_8004AB58, h2, 0.0f, dist2, h2At, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                guMtxCatF(D_8004AB58, renderPerspectiveMtxF, D_8004AB58);
            }
        }

        *gfx = g;
    }
}

void func_80017B34(s32 arg0) {
    D_8004AB98 = arg0;
}

void func_80017B40(Camera *cam, s32 arg) {
    if (cam->onBeforeRender != NULL) {
        cam->onBeforeRender(cam, arg);
    }
}

void func_80017B6C(GObj* camObj, s32 dlLink, s32 mode) {
    GObj* curr = omGObjListDlHead[dlLink];

    while (curr != NULL) {
        if (!(curr->flags & GOBJ_FLAGS_HIDDEN)) {
            if (((mode == 0) && (camObj->cameraTag & curr->cameraTag)) ||
                ((mode == 1) && (camObj->cameraTag == curr->cameraTag))) {
                D_8003DE54 = 4;
                omCurrentDrawObj = curr;
                curr->onDraw(curr);
                D_8003DE54 = 3;
                curr->lastDrawFrame = gtlDrawnFrameCounter;
            }
        }

        curr = curr->nextDL;
    }
}

void func_80017C7C(GObj* obj, s32 dlLink, s32 mode) {
    Gfx* savedGfxPos[4];
    s32 i;

    for (i = 0; i < 4; i++) {
        savedGfxPos[i] = gDisplayListHeads[i];
        // reserve space for 2 commands: gSPDisplayList and gSPBranchList
        gDisplayListHeads[i] += 2;
    }

    func_80017B6C(obj, dlLink, mode);

    for (i = 0; i < 4; i++) {
        if (gDisplayListHeads[i] == savedGfxPos[i] + 2) {
            // nothing added to this dlist
            gDisplayListHeads[i] -= 2;
            D_8004A7F8[dlLink].glists[i] = NULL;
        } else {
            gSPEndDisplayList(gDisplayListHeads[i]++);
            gSPDisplayList(savedGfxPos[i], savedGfxPos[i] + 2);
            savedGfxPos[i]++;
            gSPBranchList(savedGfxPos[i]++, gDisplayListHeads[i]);
            D_8004A7F8[dlLink].glists[i] = savedGfxPos[i];
        }
    }

    D_8004A7F8[dlLink].drawFrame = gtlDrawnFrameCounter;
}

void func_80017DB0(s32 dlLink) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (D_8004A7F8[dlLink].glists[i] != NULL) {
            gSPDisplayList(gDisplayListHeads[i]++, D_8004A7F8[dlLink].glists[i]);
        }
    }
}

void func_80017E84(GObj* camObj, s32 mode) {
    s32 dlLink = 0;
    u32 dlLinkBitMask = camObj->dlLinkBitMask;
    u32 flags = camObj->unk38;

    while (dlLinkBitMask != 0) {
        if (dlLinkBitMask & 1) {
            if (flags & 1) {
                if ((u8) gtlDrawnFrameCounter == D_8004A7F8[dlLink].drawFrame) {
                    func_80017DB0(dlLink);
                } else {
                    func_80017C7C(camObj, dlLink, mode);
                }
            } else {
                func_80017B6C(camObj, dlLink, mode);
            }
        }

        dlLinkBitMask >>= 1;
        flags >>= 1;
        dlLink++;
    }
}

void renderPostCameraDraw(Camera *cam) {
    if (cam->flags & CAMERA_FLAG_4) {
        gtlMergeDisps();
    }

    if (cam->flags & CAMERA_FLAG_10) {
        gtlProcessDisps();
        gtlReset();
    }

    if (cam->flags & CAMERA_FLAG_40) {
        gtlProcessDisps();
    }
}

void func_80017FEC(GObj* camObj, Gfx** gfxPtr, s32 arg2) {
    Camera* cam;
    s32 mode;

    cam = camObj->data.cam;
    renderInitCamera(gfxPtr, cam, arg2);
    func_800171E0(gfxPtr, cam);
    func_80017B40(cam, arg2);
    mode = (cam->flags & CAMERA_FLAG_8) ? 1 : 0;
    func_80017E84(camObj, mode);
    renderPostCameraDraw(cam);
}

void func_8001806C(GObj* camObj) {
    func_80017FEC(camObj, &gDisplayListHeads[0], 0);
}

void func_80018094(GObj* camObj) {
    func_80017FEC(camObj, &gDisplayListHeads[1], 1);
}

void func_800180BC(GObj* camObj) {
    func_80017FEC(camObj, &gDisplayListHeads[2], 2);
}

void func_800180E4(GObj* camObj) {
    func_80017FEC(camObj, &gDisplayListHeads[3], 3);
}

void func_8001810C(void) {
    Camera* cam;

    cam = omCurrentCamera->data.cam;
    gtlProcessDisps();
    gtlReset();
    renderInitCamera(&gDisplayListHeads[0], cam, 0);
    func_800171E0(&gDisplayListHeads[0], cam);
    func_80017B40(cam, 0);
}

void func_80018170(GObj *camObj)
{
    Camera *cam = camObj->data.cam;
    s32 i;

    renderInitCamera(gDisplayListHeads, cam, 0);
    D_8004ADB0 = gDisplayListHeads[0] + 1;
    gSPDisplayList(gDisplayListHeads[0], gDisplayListHeads[0] + 2);
    gDisplayListHeads[0] += 2;

    func_800171E0(gDisplayListHeads, cam);
    gSPEndDisplayList(gDisplayListHeads[0]++);
    gSPBranchList(D_8004ADB0, gDisplayListHeads[0]);

    func_80017B40(cam, 0);

    if (cam->flags & CAMERA_FLAG_20)
    {
        func_8001663C(&gDisplayListHeads[1], cam, 1);
    }
    for (i = 1; i < 4; i++)
    {
        D_8004ADA0[i] = ++gDisplayListHeads[i];
    }
    func_80017E84(camObj, (cam->flags & CAMERA_FLAG_8) ? 1 : 0);

    for (i = 1; i < 4; i++)
    {
        if (D_8004ADA0[i] == gDisplayListHeads[i])
        {
            gDisplayListHeads[i]--;
        }
        else
        {
            Gfx *start = gDisplayListHeads[i]++;

            gSPDisplayList(D_8004ADA0[i] - 1, gDisplayListHeads[i]);

            if ((i != 1) || !(cam->flags & CAMERA_FLAG_20))
            {
                func_8001663C(&gDisplayListHeads[i], cam, i);
            }
            gSPDisplayList(gDisplayListHeads[i]++, D_8004ADB0 + 1);
            func_80017B40(cam, i);
            gSPEndDisplayList(gDisplayListHeads[i]++);
            gSPBranchList(start, gDisplayListHeads[i]);
        }
    }
    renderPostCameraDraw(cam);
}

/* FACTORY: 70/126 -- MEASURED 2026-08-25 by the annotate pass. The number is all this line claims; no
   listing was read for it and no cause is diagnosed. */
#ifdef NON_MATCHING
// 70/126 insns match; remaining diffs: i<4 loop test gets rewritten to i!=4 with 4
// hoisted to $s7 (target keeps slti and puts 0xDF000000 in $fp instead), and
// temp-1 address computation gets folded into the store offsets.
void func_800183BC(void) {
    Gfx** p = &gDisplayListHeads[1];
    Gfx** q = D_8004ADA4;
    s32 i;
    Gfx* g;
    Gfx* start;
    Gfx* temp;
    u32 enddl;
    Camera *cam = omCurrentCamera->data.cam;

    enddl = 0xDF000000;
    for (i = 1; i < 4; i++) {
        g = *p;
        start = g;
        temp = *q;

        if (temp == g) {
            *p = g - 1;
        } else {
            *p = g + 1;
            temp -= 1;
            temp->words.w0 = 0xDE000000;
            temp->words.w1 = (u32)*p;
            func_8001663C(p, cam, i);
            g = *p;
            *p = g + 1;
            g->words.w0 = 0xDE000000;
            g->words.w1 = (u32)(D_8004ADB0 + 1);
            func_80017B40(cam, i);
            g = *p;
            *p = g + 1;
            g->words.w1 = 0;
            g->words.w0 = enddl;
            start->words.w0 = 0xDE010000;
            start->words.w1 = (u32)*p;
        }
        q++;
        p++;
    }

    gtlProcessDisps();
    gtlReset();
    renderInitCamera(&gDisplayListHeads[0], cam, 0);
    g = gDisplayListHeads[0];
    D_8004ADB0 = g + 1;
    g->words.w0 = 0xDE000000;
    g->words.w1 = (u32)(gDisplayListHeads[0] + 2);
    gDisplayListHeads[0] = gDisplayListHeads[0] + 2;
    func_800171E0(&gDisplayListHeads[0], cam);
    g = gDisplayListHeads[0];
    gDisplayListHeads[0] = g + 1;
    g->words.w1 = 0;
    g->words.w0 = enddl;
    D_8004ADB0->words.w0 = 0xDE010000;
    D_8004ADB0->words.w1 = (u32)gDisplayListHeads[0];
    func_80017B40(cam, 0);

    p = &gDisplayListHeads[1];
    q = D_8004ADA4;
    do {
        *q++ = ++*p;
        p++;
    } while (p != &gDisplayListHeads[4]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800183BC.s")
#endif