// This file duplicates or extends functionality from other assorted files
// therefore: utils.c?
// prefix: util

#include <PR/rcp.h>
#include "common.h"
#include "types.h"
// #include "main/object_manager.h"
#include "GObj.h"
#include "ovl0/ovl0_2.h"
#include "ovl1/ovl1_6.h"
#include "main/contpad.h"
#include "main/dma.h"
#include "main/gtl.h"
#include "main/lbmatrix.h"
#include "main/math.h"

#include "util.h"

extern struct Overlay *gOverlayTable[];

extern GObj *D_800D6B24;

extern u32 D_800BE4EC; // gameplay timer

// struct?
// {
    // inputs to primcolor r, g, b
    extern u8 utilRectColorR, utilRectColorG, utilRectColorB;
    extern u8 D_800D6B2B;
    extern s16 D_800D6B2C;
    // inputs to primcolor alpha
    extern s16 utilRectAlpha;

    extern s16 D_800D6B30;

    // bounds for fillrect
    extern u32 utilRectBoundUlx, utilRectBoundUly, utilRectBoundLrx, utilRectBoundLry;
// }

extern vu32 *D_800BE5CC; // n64piok
extern vu32 *D_800BE5C4; // ptport
extern vu32 *D_800BE5C8; // ptstat
extern s32 D_800BE5C0;

extern f32 D_800BE8F0[];
extern f32 D_800BF8EC[];

void func_800A4414(u8 c);

void utilPrintf(char* fmt, ...) {

}

#ifdef MIPS_TO_C

s32 func_800A428C(s32 arg0, u8 *arg1, s32 arg2) {
    u8 sp48;
    s32 temp_t0;
    s32 var_s5;
    u8 *var_s0;
    u8 *var_s0_2;
    u8 *var_s1;
    u8 *var_s6;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_v0;

    var_s6 = arg1;
    var_s1 = &sp48;
    var_s5 = 0;
    if (arg2 > 0) {
        do {
            temp_v0 = *var_s6;
            var_s6 += 1;
            if (temp_v0 != 9) {
                if (temp_v0 != 0xA) {
                    var_s1 += 1;
                    D_800BE5C0 += 1;
                    var_s1->unk-1 = temp_v0;
                } else {
                    *var_s1 = 0xA;
                    var_s1 += 1;
                    D_800BE5C0 = 0;
                }
            } else {
                do {
                    *var_s1 = 0x20;
                    var_s1 += 1;
                    temp_t0 = D_800BE5C0 + 1;
                    D_800BE5C0 = temp_t0;
                } while ((temp_t0 % 8) != 0);
            }
            if ((temp_v0 == 0xA) || ((var_s1 - &sp48) >= 0x65)) {
                var_s0 = &sp48;
                putPT(((var_s1 - &sp48) - 1) & 0xFF);
                if (var_s1 != &sp48) {
                    do {
                        temp_a0 = *var_s0;
                        var_s0 += 1;
                        putPT(temp_a0);
                    } while (var_s0 != var_s1);
                }
                var_s1 = &sp48;
            }
            var_s5 += 1;
        } while (var_s5 != arg2);
    }
    if (var_s1 != &sp48) {
        var_s0_2 = &sp48;
        putPT(((var_s1 - &sp48) - 1) & 0xFF);
        if (var_s1 != &sp48) {
            do {
                temp_a0_2 = *var_s0_2;
                var_s0_2 += 1;
                putPT(temp_a0_2);
            } while (var_s0_2 != var_s1);
        }
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A428C.s")
#endif

// copy of PartnerN64 putPT
void func_800A4414(u8 c) {
    while (*D_800BE5CC & (PI_STATUS_IO_BUSY | PI_STATUS_DMA_BUSY)) {
        ;
    }
    while (!(*D_800BE5C4 & 4)) {
        ;
    }
    *D_800BE5C8 = c;
}

// executes the virtual function at index arg0
void utilFuncTableJump(u32 idx, u32 max, FUNCLIST callbackTbl) {
    if (idx < max) callbackTbl[idx](omCurrentObj);
}

f32 utilVec3Dot(Vector *arg0, Vector *arg1) {
    f32 dotProduct;
    f32 dotProductMag;

    dotProduct = (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
    dotProductMag = ABSF(dotProduct);
    if (0.00001f < dotProductMag) {
        return dotProduct;
    }
    return 0.0f;
}

f32 utilVec3Mag(Vector *arg0) {
    f32 x = arg0->x;
    f32 y = arg0->y;
    f32 z = arg0->z;
    return (x * x) + (y * y) + (z * z);
}

f32 utilVec3Dist(Vector *v1, Vector *v2) {
    f32 x2 = v2->x - v1->x;
    f32 y2 = v2->y - v1->y;
    f32 z2 = v2->z - v1->z;
    return (x2 * x2) + (y2 * y2) + (z2 * z2);
}

void utilWrapRotation(Vector *vec) {
    if (vec->x < 0.0f) {
        vec->x += M_TAU;
    } else if (vec->x >= M_TAU) {
        vec->x -= M_TAU;
    }
    if (vec->y < 0.0f) {
        vec->y += M_TAU;
    } else if (vec->y >= M_TAU) {
        vec->y -= M_TAU;
    }
    if (vec->z < 0.0f) {
        vec->z += M_TAU;
    }
    else if (vec->z >= M_TAU) {
        vec->z -= M_TAU;
    }
}

// mtx order...........
void func_800A465C(Mat4 mf, f32 x, f32 y, f32 z) {
    f32 sinX, sinY, sinZ;
    f32 cosX, cosY, cosZ;

    sinX = sinf(x);
    cosX = cosf(x);
    sinY = sinf(y);
    cosY = cosf(y);
    sinZ = sinf(z);
    cosZ = cosf(z);

    mf[2][0] = sinY;
    mf[0][0] = cosZ * cosY;
    mf[0][1] = (sinZ * cosX) + ((cosZ * sinY) * sinX);
    mf[0][2] = (sinZ * sinX) - ((cosZ * sinY) * cosX);
    mf[1][0] = -sinZ * cosY;
    mf[1][1] = (cosZ * cosX) - ((sinZ * sinY) * sinX);
    mf[1][2] = (cosZ * sinX) + ((sinZ * sinY) * cosX);
    mf[2][1] = -cosY * sinX;
    mf[2][2] = cosY * cosX;
    mf[3][2] = 0.0f;
    mf[3][1] = 0.0f;
    mf[3][0] = 0.0f;
    mf[2][3] = 0.0f;
    mf[1][3] = 0.0f;
    mf[0][3] = 0.0f;
    (*(Mat4 *)mf)[3][3] = 1.0f;
}

void utilGetTransformSRT(Vector *vec, DObj *dobj) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (dobj == NULL) {
        dobj = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((dobj->scale.v.x != 1.0f) || (dobj->scale.v.y != 1.0f) || (dobj->scale.v.z != 1.0f)) {
            HS64_MkScaleMtxF(tmpMtx, dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        if ((dobj->angle.v.x != 0.0f) || (dobj->angle.v.y != 0.0f) || (dobj->angle.v.z != 0.0f)) {
            HS64_MkRotationMtxF(tmpMtx, dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        if ((dobj->pos.v.x != 0.0f) || (dobj->pos.v.y != 0.0f) || (dobj->pos.v.z != 0.0f)) {
            HS64_MkTranslateMtxF(tmpMtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        dobj = dobj->parent;
    } while ((u32)dobj != 1);

    vec->x = finalMtx[3][0];
    vec->y = finalMtx[3][1];
    vec->z = finalMtx[3][2];
}

void utilTransformPoint(Vector *vec, DObj *dobj, Vector *input) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (dobj == NULL) {
        dobj = omCurrentObj->data.dobj;
    }
    guMtxIdentF(finalMtx);
    do {
        if ((dobj->scale.v.x != 1.0f) || (dobj->scale.v.y != 1.0f) || (dobj->scale.v.z != 1.0f)) {
            HS64_MkScaleMtxF(tmpMtx, dobj->scale.v.x, dobj->scale.v.y, dobj->scale.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        if ((dobj->angle.v.x != 0.0f) || (dobj->angle.v.y != 0.0f) || (dobj->angle.v.z != 0.0f)) {
            HS64_MkRotationMtxF(tmpMtx, dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        if ((dobj->pos.v.x != 0.0f) || (dobj->pos.v.y != 0.0f) || (dobj->pos.v.z != 0.0f)) {
            HS64_MkTranslateMtxF(tmpMtx, dobj->pos.v.x, dobj->pos.v.y, dobj->pos.v.z);
            guMtxCatF(finalMtx, tmpMtx, finalMtx);
        }
        dobj = dobj->parent;
    } while ((u32)dobj != 1);
    guMtxXFMF(finalMtx, input->x, input->y, input->z, &vec->x, &vec->y, &vec->z);
}

void func_800A4B34(Vector *dst, DObj *dobj) {
    Vector tmp;
    Mat4 sp7C;
    Mat4 sp3C;

    if (dobj == 0) {
        dobj = omCurrentObj->data.dobj;
    }
    guMtxIdentF(&sp7C);
    do {
        if ((dobj->scale.v.x != 1.0f) || (dobj->scale.v.y != 1.0f) || (dobj->scale.v.z != 1.0f)) {
            HS64_MkScaleMtxF(&sp3C, 1.0f / dobj->scale.v.x, 1.0f / dobj->scale.v.y, 1.0f / dobj->scale.v.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((dobj->angle.v.x != 0.0f) || (dobj->angle.v.y != 0.0f) || (dobj->angle.v.z != 0.0f)) {
            func_800A465C(&sp3C, -dobj->angle.v.x, -dobj->angle.v.y, -dobj->angle.v.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((dobj->pos.v.x != 0.0f) || (dobj->pos.v.y != 0.0f) || (dobj->pos.v.z != 0.0f)) {
            HS64_MkTranslateMtxF(&sp3C, -dobj->pos.v.x, -dobj->pos.v.y, -dobj->pos.v.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        dobj = dobj->parent;
    } while ((u32) dobj != 1);

    tmp.x = dst->x;
    tmp.y = dst->y;
    tmp.z = dst->z;

    dst->x = ((sp7C[0][0] * tmp.x) + (sp7C[1][0] * tmp.y) + (sp7C[2][0] * tmp.z))
             + sp7C[3][0];
    dst->y = ((sp7C[0][1] * tmp.x) + (sp7C[1][1] * tmp.y) + (sp7C[2][1] * tmp.z))
             + sp7C[3][1];
    dst->z = ((sp7C[0][2] * tmp.x) + (sp7C[1][2] * tmp.y) + (sp7C[2][2] * tmp.z))
             + sp7C[3][2];
}

void func_800A4DB8(Vector *vec, DObj *dobj) {
    Mat4 sp80;
    Mat4 sp40;

    if (dobj == NULL) {
        dobj = omCurrentObj->data.dobj;
    }
    guMtxIdentF(&sp80[0]);
    do {
        if ((dobj->angle.v.x != 0.0f) || (dobj->angle.v.y != 0.0f) || (dobj->angle.v.z != 0.0f)) {
            HS64_MkRotationMtxF(&sp40[0], dobj->angle.v.x, dobj->angle.v.y, dobj->angle.v.z);
            guMtxCatF(&sp80[0], &sp40[0], &sp80[0]);
        }
        dobj = dobj->parent;
    } while ((u32)dobj != 1);

    vec->y = asinf(-sp80[0][2]);
    if ((vec->y == 1.5707964f) || (vec->y == -1.5707964f)) {
        vec->x = (vec->y == 1.5707964f) ? atan2f(sp80[1][0], sp80[1][1]) : atan2f(-sp80[1][0], sp80[1][1]);
        vec->z = 0.0f;
    } else {
        vec->x = atan2f(sp80[1][2], sp80[2][2]);
        vec->z = atan2f(sp80[0][1], sp80[0][0]);
    }
    utilWrapRotation(vec);
}

// camera mtx
extern f32 D_800D6ED0[4][4];
s32 func_800A4F48(void* arg0, Vector* vec, f32 arg2, f32 arg3) {
    f32 tmpX, tmpY, tmpInv;

    tmpInv = 1.0f / (((D_800D6ED0[0][3] * vec->x) + (D_800D6ED0[1][3] * vec->y) + (D_800D6ED0[2][3] * vec->z)) + D_800D6ED0[3][3]);
    tmpX = ((D_800D6ED0[0][0] * vec->x) + (D_800D6ED0[1][0] * vec->y) + (D_800D6ED0[2][0] * vec->z)) + D_800D6ED0[3][0];
    tmpY = ((D_800D6ED0[0][1] * vec->x) + (D_800D6ED0[1][1] * vec->y) + (D_800D6ED0[2][1] * vec->z)) + D_800D6ED0[3][1];


    vec->x = tmpX * tmpInv;
    vec->y = tmpY * tmpInv;
    if ((ABS(vec->x) < arg2) && (ABS(vec->y) < arg3)) {
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
s32 func_800A509C(void *arg0, Vector *vec, f32 arg2, f32 arg3, f32 arg4) {
    f32 x = vec->x;
    f32 y = vec->y;
    f32 z = vec->z;
    f32 tmpX, tmpY, tmpZ, tmpInv;
    s32 ret;

    tmpX = D_800D6ED0[3][0] + ((D_800D6ED0[0][0] * x) + (D_800D6ED0[1][0] * y) + (D_800D6ED0[2][0] * z));
    tmpY = D_800D6ED0[3][1] + ((D_800D6ED0[0][1] * x) + (D_800D6ED0[1][1] * y) + (D_800D6ED0[2][1] * z));
    tmpZ = D_800D6ED0[3][2] + ((D_800D6ED0[0][2] * x) + (D_800D6ED0[1][2] * y) + (D_800D6ED0[2][2] * z));
    tmpInv = 1.0f / (D_800D6ED0[3][3] + ((D_800D6ED0[0][3] * x) + (D_800D6ED0[1][3] * y) + (D_800D6ED0[2][3] * z)));
    vec->x = tmpX * tmpInv;
    vec->y = tmpY * tmpInv;
    vec->z = tmpZ * tmpInv;
    ret = 0;
    if ((arg2 != 0.0f) && (arg3 != 0.0f) && (arg4 != 0.0f)) {
        if (ABSF(vec->x) < arg2) {
            if (ABSF(vec->y) < arg3) {
                if ((vec->z > 0.0f) && (vec->z < arg4)) {
                    ret = 1;
                }
            }
        }
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A509C.s")
#endif
void utilSetPlayerContPad(void) {
    if (!kirby_in_inactionable_state()) {
        gKirbyController.buttonHeld = gPlayerControllers[0].buttonHeld;
        gKirbyController.buttonPressed = gPlayerControllers[0].buttonPressed;
        gKirbyController.buttonHeldLong = gPlayerControllers[0].buttonHeldLong;
        gKirbyController.buttonReleased = gPlayerControllers[0].buttonReleased;
        gKirbyController.stickX = gPlayerControllers[0].stickX;
        gKirbyController.stickY = gPlayerControllers[0].stickY;
    } else {
        gKirbyController.buttonHeld = 0;
        gKirbyController.buttonPressed = 0;
        gKirbyController.buttonHeldLong = 0;
        gKirbyController.buttonReleased = 0;
        gKirbyController.stickX = 0;
        gKirbyController.stickY = 0;
    }
}

#ifdef NON_MATCHING
f32 func_800A52F0(f32 arg0, f32 arg1) {
    f32 x = arg0;
    f32 angle;
    f32 absX;
    f32 absY;
    f32 base;
    f32 limit;
    f32 ret;
    s32 yNeg;
    s32 xNeg;

    if (arg0 < 0.0f) {
        arg0 = -arg0;
    } else {
        arg0 = x;
    }
    absY = arg1;
    if (arg1 < 0.0f) {
        absY = -arg1;
    }
    angle = atan2f(arg0, absY);
    yNeg = 0;
    if (arg1 < 0.0f) {
        yNeg = 1;
    }
    if (yNeg != 0) {
        base = 3.1415927f;
        xNeg = 0;
        if (x < 0.0f) {
            xNeg = 1;
        }
        limit = 6.2831855f;
    } else {
        xNeg = 0;
        if (x < 0.0f) {
            xNeg = 1;
        }
        if (xNeg != 0) {
            limit = 6.2831855f;
            base = limit;
        } else {
            base = 0.0f;
            limit = 6.2831855f;
        }
    }
    if (yNeg != xNeg) {
        ret = base - angle;
    } else {
        ret = base + angle;
    }
    if (ret > limit) {
        ret -= limit;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A52F0.s")
#endif
void func_800A5404(u8 *arg0, u8 *arg1) {
    arg0[0x0] = arg0[0x4] = arg1[0];
    arg0[0x1] = arg0[0x5] = arg1[1];
    arg0[0x2] = arg0[0x6] = arg1[2];
    arg0[0x8] = arg0[0xC] = arg1[3];
    arg0[0x9] = arg0[0xD] = arg1[4];
    arg0[0xA] = arg0[0xE] = arg1[5];
    arg0[0x10] = arg1[6];
    arg0[0x11] = arg1[7];
    arg0[0x12] = arg1[8];
}

void func_800A5468(u8 *arg0, u8 *arg1) {
    arg0[0x0] = arg0[0x4] += arg1[0];
    arg0[0x1] = arg0[0x5] += arg1[1];
    arg0[0x2] = arg0[0x6] += arg1[2];
    arg0[0x8] = arg0[0xC] += arg1[3];
    arg0[0x9] = arg0[0xD] += arg1[4];
    arg0[0xA] = arg0[0xE] += arg1[5];
    arg0[0x10] = arg1[6];
    arg0[0x11] = arg1[7];
    arg0[0x12] = arg1[8];
}

void func_800A54FC(u8 *arg0, u8 *arg1) {
    arg1[0x0] = arg1[0x4] = arg0[0x0];
    arg1[0x1] = arg1[0x5] = arg0[0x1];
    arg1[0x2] = arg1[0x6] = arg0[0x2];
    arg1[0x8] = arg1[0xC] = arg0[0x8];
    arg1[0x9] = arg1[0xD] = arg0[0x9];
    arg1[0xA] = arg1[0xE] = arg0[0xA];
    arg1[0x10] = ((s8 *)arg0)[0x10];
    arg1[0x11] = ((s8 *)arg0)[0x11];
    arg1[0x12] = ((s8 *)arg0)[0x12];
}

s32 utilCorrectStickX(u32 channel) {
    s32 x;

    if (channel >= 4) channel = 3;

    x = gPlayerControllers[channel].stickX;

    if (x > 0) {
        if (x < 8) x = 8;
        if (x >= 0x49) x = 0x48;
        x -= 8;
    }
    else if (x < 0) {
        if (x >= -7) x = -8;
        if (x < -0x48) x = -0x48;
        x += 8;
    }
    return x;
}

s32 utilCorrectStickY(u32 cont) {
    s32 y;

    if (cont >= 4) cont = 3;

    y = gPlayerControllers[cont].stickY;
    if (y > 0) {
        if (y < 8) y = 8;
        if (y >= 0x49) y = 0x48;
        y -= 8;
    }
    else if (y < 0) {
        if (y >= -7) y = -8;
        if (y < -0x48) y = -0x48;
        y = y + 8;
    }
    return y;
}

s32 utilGetStickDirection(s32 value, s32 axis, u32 framemaybe) {
    s32 stick;

    if ((D_800BE4EC % framemaybe) != 0) {
        return 0;
    }
    if (axis != 0) {
        stick = utilCorrectStickY(value);
    } else {
        stick = utilCorrectStickX(value);
    }

    if ((stick / 16) > 0) {
        return 1;
    } else if ((stick / 16) < 0) {
        return -1;
    } else {
        return 0;
    }
}

void utilSetRectBoundsAndColor(s32 ulx, s32 uly, s32 lrx, s32 lry, u8 red, u8 green, u8 blue) {
    D_800D6B24 = NULL;
    utilRectBoundUlx = ulx;
    utilRectBoundUly = uly;
    utilRectBoundLrx = lrx;
    utilRectBoundLry = lry;
    utilRectColorR = red;
    utilRectColorG = green;
    utilRectColorB = blue;
}

void utilSetRectColorFullScreen(u16 red, u16 green, u16 blue) {
    D_800D6B24 = NULL;

    utilRectBoundUlx = 10;
    utilRectBoundUly = 10;
    utilRectBoundLrx = 310;
    utilRectBoundLry = 230;


    utilRectColorR = red;
    utilRectColorG = green;
    utilRectColorB = blue;
}

void utilSetRectColor(u16 red, u16 green, u16 blue) {
    utilRectColorR = red;
    utilRectColorG = green;
    utilRectColorB = blue;
}

void utilFadeRectLoop(s32 arg0) {
    ohSleep(1);
    while (1) {
        utilRectAlpha += D_800D6B2C;
        if (utilRectAlpha <= 0) {
            utilRectAlpha = 0;
            break;
        } else if (utilRectAlpha >= 0xFF) {
            utilRectAlpha = 0xFF;
            break;
        }

        ohSleep(1);
    }
    D_800D6B30 += 1;
    switch (D_800D6B2B) {
        case 0:
            D_800D6B24 = NULL;
            ohSleep(1);
            omGDeleteObj(omCurrentObj);
            ohSleep(1);
            break;
        case 1:
            ohSleep(1);
            break;
        case 2:
            ohSleep(1);
            func_800067B8();
            ohSleep(1);
            D_800D6B24 = NULL;
            break;
    }
}

void utilDrawRectGfx(GObj *gobj) {
    Gfx *glistp = gDisplayListHeads[1];

    gDPPipeSync(glistp++);
    gDPSetRenderMode(glistp++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gDPSetPrimColor(glistp++, 0, 0, utilRectColorR, utilRectColorG, utilRectColorB, (u8)utilRectAlpha);
    gDPSetCombineMode(glistp++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPFillRectangle(glistp++,
        utilRectBoundUlx,
        utilRectBoundUly,
        utilRectBoundLrx,
        utilRectBoundLry
    );
    gDPPipeSync(glistp++);
    gDPSetRenderMode(glistp++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);

    gDisplayListHeads[1] = glistp;
}

void utilSpawnRect(s16 alpha, s16 rate, u8 endKind) {
    if (D_800D6B24 == NULL) {
        utilRectAlpha = alpha;
        D_800D6B2C = rate * gameTicksPerDraw;
        D_800D6B2B = endKind;
        D_800D6B24 = ohCreateCamera(2, 0, 0x19, 0x80000000, &utilDrawRectGfx, 0, 0, 0, 0, 0, &utilFadeRectLoop, 1, 0);
    }
}

s32 utilResetRect(void) {
    if (D_800D6B24 == 0) {
        return 0;
    }
    D_800D6B2C = 0;
    utilRectAlpha = D_800D6B2C;
    return 1;
}

void func_800A5B14(DObj *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    u8 *store = (u8 *)arg0->unk4C;

    store[0x14] = arg1;
    store[0x15] = arg2;
    store[0x16] = arg3;
    store[0x17] = arg4;
}

void func_800A5B3C(DObj *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4) {
    u8 *store = (u8 *)arg0->unk4C;

    store[0x18] = arg1;
    store[0x19] = arg2;
    store[0x1A] = arg3;
    store[0x1B] = arg4;
}

f32 func_800A5B64(f32 arg0) {
    u16 idx = (s32)(arg0 * 651.8986f) & 0xFFF;
    f32 val;

    if (idx & 0x400) {
        val = *(f32 *) ((u8 *) D_800BF8EC + -((idx & 0x3FF) * 4));
    } else {
        val = D_800BE8F0[idx & 0x3FF];
    }
    if (idx & 0x800) {
        return -val;
    }
    return val;
}

f32 func_800A5BDC(f32 arg0) {
    u16 idx = (s32)((arg0 + 1.5707964f) * 651.8986f) & 0xFFF;
    f32 val;

    if (idx & 0x400) {
        val = *(f32 *) ((u8 *) D_800BF8EC + -((idx & 0x3FF) * 4));
    } else {
        val = D_800BE8F0[idx & 0x3FF];
    }
    if (idx & 0x800) {
        return -val;
    }
    return val;
}

f32 func_800A5C60(f32 arg0) {
    u16 idx = (s32)(arg0 * 651.8986f) & 0xFFF;
    f32 sinVal;
    f32 cosVal;

    if (idx & 0x400) {
        sinVal = *(f32 *) ((u8 *) D_800BF8EC + -((idx & 0x3FF) * 4));
    } else {
        sinVal = D_800BE8F0[idx & 0x3FF];
    }
    if (idx & 0x800) {
        sinVal = -sinVal;
    }
    idx = (idx + 0x400) & 0xFFF;
    if (idx & 0x400) {
        cosVal = *(f32 *) ((u8 *) D_800BF8EC + -((idx & 0x3FF) * 4));
    } else {
        cosVal = D_800BE8F0[idx & 0x3FF];
    }
    if (idx & 0x800) {
        cosVal = -cosVal;
    }
    return sinVal / cosVal;
}

void func_800A5D24(f32 (*arg0)[3], f32 (*arg1)[3]) {
    arg0[0][0] = arg1[0][0];
    arg0[1][0] = arg1[1][0];
    arg0[2][0] = arg1[2][0];
    arg0[3][0] = arg1[3][0];
    arg0[0][1] = arg1[0][1];
    arg0[1][1] = arg1[1][1];
    arg0[2][1] = arg1[2][1];
    arg0[3][1] = arg1[3][1];
    arg0[0][2] = arg1[0][2];
    arg0[1][2] = arg1[1][2];
    arg0[2][2] = arg1[2][2];
    arg0[3][2] = arg1[3][2];
}

#ifdef MIPS_TO_C

void func_800A5D88(void *arg0, void *arg1) {
    f32 sp3C;
    f32 sp38;
    f32 sp30;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f22;
    void *temp_s1;
    void *temp_v0;
    void *temp_v0_2;

    temp_f20 = func_800A5B64(arg0->unk30);
    temp_s1 = arg0 + 0x30;
    temp_f22 = func_800A5BDC(temp_s1->unk0);
    sp3C = func_800A5B64(temp_s1->unk4);
    sp30 = func_800A5BDC(temp_s1->unk4);
    sp38 = func_800A5B64(temp_s1->unk8);
    temp_f0 = func_800A5BDC(temp_s1->unk8);
    arg1->unk0 = sp30 * temp_f0;
    arg1->unk4 = sp30 * sp38;
    arg1->unk8 = -sp3C;
    temp_f12 = temp_f20 * sp3C;
    arg1->unkC = (temp_f12 * temp_f0) - (temp_f22 * sp38);
    arg1->unk14 = temp_f20 * sp30;
    arg1->unk10 = (temp_f12 * sp38) + (temp_f22 * temp_f0);
    temp_f12_2 = temp_f22 * sp3C;
    temp_v0 = arg0 + 0x40;
    arg1->unk18 = (temp_f12_2 * temp_f0) + (temp_f20 * sp38);
    arg1->unk20 = temp_f22 * sp30;
    arg1->unk1C = (temp_f12_2 * sp38) - (temp_f20 * temp_f0);
    temp_f16 = temp_v0->unk0;
    if (temp_f16 != 1.0f) {
        arg1->unk0 = arg1->unk0 * temp_f16;
        arg1->unk4 = arg1->unk4 * temp_v0->unk0;
        arg1->unk8 = arg1->unk8 * temp_v0->unk0;
    }
    temp_f0_2 = temp_v0->unk4;
    if (temp_f0_2 != 1.0f) {
        arg1->unkC = arg1->unkC * temp_f0_2;
        arg1->unk10 = arg1->unk10 * temp_v0->unk4;
        arg1->unk14 = arg1->unk14 * temp_v0->unk4;
    }
    temp_f0_3 = temp_v0->unk8;
    if (temp_f0_3 != 1.0f) {
        arg1->unk18 = arg1->unk18 * temp_f0_3;
        arg1->unk1C = arg1->unk1C * temp_v0->unk8;
        arg1->unk20 = arg1->unk20 * temp_v0->unk8;
    }
    temp_v0_2 = arg0 + 0x1C;
    arg1->unk24 = temp_v0_2->unk0;
    arg1->unk28 = temp_v0_2->unk4;
    arg1->unk2C = temp_v0_2->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A5D88.s")
#endif

#ifdef MIPS_TO_C

void func_800A5F94(s32 arg0, void *arg1) {
    f32 sp48;
    f32 sp44;
    f32 sp3C;
    f32 *sp30;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f22;

    temp_f20 = func_800A5B64(gEntitiesAngleXArray[arg0]);
    temp_f22 = func_800A5BDC(gEntitiesAngleXArray[arg0]);
    sp48 = func_800A5B64(gEntitiesAngleYArray[arg0]);
    temp_f0 = func_800A5BDC(gEntitiesAngleYArray[arg0]);
    sp3C = temp_f0;
    sp44 = func_800A5B64(gEntitiesAngleZArray[arg0]);
    temp_f0_2 = func_800A5BDC(gEntitiesAngleZArray[arg0]);
    arg1->unk0 = sp3C * temp_f0_2;
    arg1->unk4 = sp3C * sp44;
    arg1->unk8 = -sp48;
    temp_f12 = temp_f20 * sp48;
    arg1->unkC = (temp_f12 * temp_f0_2) - (temp_f22 * sp44);
    arg1->unk14 = temp_f20 * sp3C;
    arg1->unk10 = (temp_f12 * sp44) + (temp_f22 * temp_f0_2);
    temp_f12_2 = temp_f22 * sp48;
    arg1->unk18 = (temp_f12_2 * temp_f0_2) + (temp_f20 * sp44);
    arg1->unk20 = temp_f22 * sp3C;
    arg1->unk1C = (temp_f12_2 * sp44) - (temp_f20 * temp_f0_2);
    if (gEntitiesScaleXArray[arg0] != 1.0f) {
        arg1->unk0 *= gEntitiesScaleXArray[arg0];
        arg1->unk4 *= gEntitiesScaleXArray[arg0];
        arg1->unk8 *= gEntitiesScaleXArray[arg0];
    }
    if (gEntitiesScaleYArray[arg0] != 1.0f) {
        arg1->unkC  *= gEntitiesScaleYArray[arg0];
        arg1->unk10 *= gEntitiesScaleYArray[arg0];
        arg1->unk14 *= gEntitiesScaleYArray[arg0];
    }
    if (gEntitiesScaleZArray[arg0] != 1.0f) {
        arg1->unk18 *= gEntitiesScaleZArray[arg0];
        arg1->unk1C *= gEntitiesScaleZArray[arg0];
        arg1->unk20 *= gEntitiesScaleZArray[arg0];
    }
    arg1->unk24 = gEntitiesNextPosXArray[arg0];
    arg1->unk28 = gEntitiesNextPosYArray[arg0];
    arg1->unk2C = gEntitiesNextPosZArray[arg0];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A5F94.s")
#endif

void func_800A6208(f32 m[4][3], Vector *v) {
    Vector sp4;

    sp4.x = ((m[0][0] * v->x) + (m[1][0] * v->y) + (m[2][0] * v->z)) + m[3][0];
    sp4.y = ((m[0][1] * v->x) + (m[1][1] * v->y) + (m[2][1] * v->z)) + m[3][1];
    sp4.z = ((m[0][2] * v->x) + (m[1][2] * v->y) + (m[2][2] * v->z)) + m[3][2];
    *v = sp4;
}

void func_800A62D8(f32 d[4][3], f32 a[4][3], f32 b[4][3]) {
    d[0][0] = ((a[0][0] * b[0][0]) + (a[1][0] * b[0][1])) + (a[2][0] * b[0][2]);
    d[0][1] = ((a[0][1] * b[0][0]) + (a[1][1] * b[0][1])) + (a[2][1] * b[0][2]);
    d[0][2] = ((a[0][2] * b[0][0]) + (a[1][2] * b[0][1])) + (a[2][2] * b[0][2]);
    d[1][0] = ((a[0][0] * b[1][0]) + (a[1][0] * b[1][1])) + (a[2][0] * b[1][2]);
    d[1][1] = ((a[0][1] * b[1][0]) + (a[1][1] * b[1][1])) + (a[2][1] * b[1][2]);
    d[1][2] = ((a[0][2] * b[1][0]) + (a[1][2] * b[1][1])) + (a[2][2] * b[1][2]);
    d[2][0] = ((a[0][0] * b[2][0]) + (a[1][0] * b[2][1])) + (a[2][0] * b[2][2]);
    d[2][1] = ((a[0][1] * b[2][0]) + (a[1][1] * b[2][1])) + (a[2][1] * b[2][2]);
    d[2][2] = ((a[0][2] * b[2][0]) + (a[1][2] * b[2][1])) + (a[2][2] * b[2][2]);
    d[3][0] = ((a[0][0] * b[3][0]) + (a[1][0] * b[3][1]) + (a[2][0] * b[3][2])) + a[3][0];
    d[3][1] = ((a[0][1] * b[3][0]) + (a[1][1] * b[3][1]) + (a[2][1] * b[3][2])) + a[3][1];
    d[3][2] = ((a[0][2] * b[3][0]) + (a[1][2] * b[3][1]) + (a[2][2] * b[3][2])) + a[3][2];
}

#ifdef MIPS_TO_C
void func_800A6534(void *arg0, void *arg1) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f2;

    arg0->unk0 = (arg1->unk10 * arg1->unk20) - (arg1->unk1C * arg1->unk14);
    temp_f2 = arg0->unk0;
    arg0->unkC = (arg1->unkC * arg1->unk20) - (arg1->unk18 * arg1->unk14);
    temp_f12 = arg0->unkC;
    arg0->unk18 = (arg1->unkC * arg1->unk1C) - (arg1->unk18 * arg1->unk10);
    temp_f0 = arg0->unk18;
    arg0->unk24 = (arg0->unk18 * arg1->unk2C) + ((arg1->unk24 * arg0->unk0) - (arg1->unk28 * arg0->unkC));
    arg0->unk4 = (arg1->unk4 * arg1->unk20) - (arg1->unk1C * arg1->unk8);
    arg0->unk10 = (arg1->unk0 * arg1->unk20) - (arg1->unk18 * arg1->unk8);
    arg0->unk1C = (arg1->unk0 * arg1->unk1C) - (arg1->unk18 * arg1->unk4);
    arg0->unk28 = (arg0->unk1C * arg1->unk2C) + ((arg1->unk24 * arg0->unk4) - (arg1->unk28 * arg0->unk10));
    arg0->unk8 = (arg1->unk4 * arg1->unk14) - (arg1->unk10 * arg1->unk8);
    arg0->unk14 = (arg1->unk0 * arg1->unk14) - (arg1->unkC * arg1->unk8);
    temp_f14 = arg0->unk14;
    arg0->unk20 = (arg1->unk0 * arg1->unk10) - (arg1->unkC * arg1->unk4);
    arg0->unk2C = (arg0->unk20 * arg1->unk2C) + ((arg1->unk24 * arg0->unk8) - (arg1->unk28 * temp_f14));
    arg0->unkC = -temp_f12;
    temp_f16 = (temp_f0 * arg1->unk8) + ((arg1->unk0 * temp_f2) - (arg1->unk4 * temp_f12));
    arg0->unk24 = -arg0->unk24;
    arg0->unk4 = -arg0->unk4;
    arg0->unk1C = -arg0->unk1C;
    arg0->unk14 = -temp_f14;
    arg0->unk2C = -arg0->unk2C;
    if (temp_f16 == 0.0f) {
loop_1:
        goto loop_1;
    }
    temp_f16_2 = 1.0f / temp_f16;
    arg0->unk0 = temp_f2 * temp_f16_2;
    arg0->unkC = arg0->unkC * temp_f16_2;
    arg0->unk18 = temp_f0 * temp_f16_2;
    arg0->unk24 = arg0->unk24 * temp_f16_2;
    arg0->unk4 = arg0->unk4 * temp_f16_2;
    arg0->unk10 = arg0->unk10 * temp_f16_2;
    arg0->unk1C = arg0->unk1C * temp_f16_2;
    arg0->unk28 = arg0->unk28 * temp_f16_2;
    arg0->unk8 = arg0->unk8 * temp_f16_2;
    arg0->unk14 = arg0->unk14 * temp_f16_2;
    arg0->unk20 = arg0->unk20 * temp_f16_2;
    arg0->unk2C = arg0->unk2C * temp_f16_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A6534.s")
#endif

#ifdef MIPS_TO_C

void func_800A6820(void *arg0, void *arg1) {
    ? sp6C;
    f32 sp48;
    f32 *var_s1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f2;
    void *var_s0;

    var_s0 = arg0;
    var_s1 = &sp48;
    do {
        temp_f2 = var_s0->unk0;
        temp_f14 = var_s0->unk4;
        temp_f0 = var_s0->unk8;
        temp_f0_2 = sqrtf((temp_f0 * temp_f0) + ((temp_f2 * temp_f2) + (temp_f14 * temp_f14)));
        var_f2 = temp_f0_2;
        if (temp_f0_2 != 0.0f) {
            var_f2 = 1.0f / temp_f0_2;
        }
        temp_f16 = var_s0->unk0;
        var_s1 += 0xC;
        var_s0 += 0xC;
        var_s1->unk-C = temp_f16 * var_f2;
        var_s1->unk-8 = var_s0->unk-8 * var_f2;
        var_s1->unk-4 = var_s0->unk-4 * var_f2;
    } while (var_s1 != &sp6C);
    if ((sp50 == -1.0f) || (sp50 == 1.0f)) {
        if (sp50 == -1.0f) {
            arg1->unk4 = 1.5707964f;
            var_f0 = atan2f(sp54, sp58);
        } else {
            arg1->unk4 = -1.5707964f;
            var_f0 = atan2f(-sp54, sp58);
        }
        arg1->unk0 = var_f0;
        arg1->unk8 = 0.0f;
        return;
    }
    arg1->unk4 = asinf(-sp50);
    arg1->unk0 = atan2f(sp5C, sp68);
    arg1->unk8 = atan2f(sp4C, sp48);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/util/func_800A6820.s")
#endif

void utilPauseAllGObjs(void) {
    int i;

    for (i = 0; i < ARRAY_COUNT(omGObjListHead); i++) {
        GObj *gobj = omGObjListHead[i];
        while (gobj != NULL) {
            GObj *next = gobj->next;

            ohGObjPause(gobj);
            gobj->flags |= GOBJ_FLAGS_PAUSED;
            gobj = next;
        }
    }
}

void utilResumeAllGObjs(void) {
    int i;

    for (i = 0; i < ARRAY_COUNT(omGObjListHead); i++) {
        GObj *gobj = omGObjListHead[i];
        while (gobj != NULL) {
            GObj *next = gobj->next;

            ohGObjResume(gobj);
            gobj->flags &= ~GOBJ_FLAGS_PAUSED;
            gobj = next;
        }
    }
    for (i = 0; i < 0x70; i++) {
        if (D_800DD710[i] != -1) {
            D_800DD8D0[i] &= 0xFFFF00FF;
            func_800B1C7C(D_800DE350[i]);
        }
    }
}

void func_800A6B18(void) {
}

void utilLoadOverlay(u32 arg0) {
    while (arg0 >= 0x14) {
        // ... Too many overlays.
        //      Maybe you'd have more space if you compressed your assets.......
    }
    dma_overlay_load(gOverlayTable[arg0]);
}

u8 utilTamperCheck(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    }
    else return 1;
}
