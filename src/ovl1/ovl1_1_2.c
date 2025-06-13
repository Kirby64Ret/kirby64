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

extern struct Overlay *gOverlayTable[];

extern GObj *D_800D6B24;

extern u32 D_800BE4EC; // gameplay timer

// struct?
// {
    // inputs to primcolor r, g, b
    extern u8 D_800D6B28, D_800D6B29, D_800D6B2A;
    extern u8 D_800D6B2B;
    extern s16 D_800D6B2C;
    // inputs to primcolor alpha
    extern s16 D_800D6B2E;

    extern s16 D_800D6B30;

    // bounds for fillrect
    extern u32 D_800D6B34, D_800D6B38, D_800D6B3C, D_800D6B40;
// }

extern u32 *D_800BE5CC; // n64piok
extern u32 *D_800BE5C4; // ptport
extern u32 *D_800BE5C8; // ptstat

void print_error_stub(char* fmt, ...) {

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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A428C.s")
#endif

// copy of PartnerN64 putPT
#ifdef MIPS_TO_C
void func_800A4414(u8 c) {
    while (*D_800BE5CC & (PI_STATUS_IO_BUSY | PI_STATUS_DMA_BUSY)) {
        ;
    }
    while (!(*D_800BE5C4 & 4)) {
        ;
    }
    *D_800BE5C8 = c;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4414.s")
#endif

// executes the virtual function at index arg0
void utilFuncTableJump(u32 idx, u32 max, FUNCLIST callbackTbl) {
    if (idx < max) callbackTbl[idx](omCurrentObj);
}

f32 vec3_dot_product(Vector *arg0, Vector *arg1) {
    f32 dotProduct;
    f32 dotProductMag;

    dotProduct = (arg0->x * arg1->x) + (arg0->y * arg1->y) + (arg0->z * arg1->z);
    dotProductMag = ABSF(dotProduct);
    if (0.00001f < dotProductMag) {
        return dotProduct;
    }
    return 0.0f;
}

f32 vec3_mag_square(Vector *arg0) {
    f32 x = arg0->x;
    f32 y = arg0->y;
    f32 z = arg0->z;
    return (x * x) + (y * y) + (z * z);
}

f32 vec3_dist_square(Vector *v1, Vector *v2) {
    f32 x2 = v2->x - v1->x;
    f32 y2 = v2->y - v1->y;
    f32 z2 = v2->z - v1->z;
    return (x2 * x2) + (y2 * y2) + (z2 * z2);
}

// utilWrapRotation
void func_800A4598(Vector *vec) {
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
#ifdef NON_MATCHING
void func_800A465C(f32 (*mf)[4], f32 x, f32 y, f32 z) {
    f32 sinX = sinf(x);
    f32 cosX = cosf(x);
    f32 sinY = sinf(y);
    f32 cosY = cosf(y);
    f32 sinZ = sinf(z);
    f32 cosZ = cosf(z);

    mf[0][0] = cosZ * cosY;
    mf[0][1] = (sinZ * cosX) + ((cosZ * sinY) * sinX);
    mf[0][2] = (sinZ * sinX) - ((cosZ * sinY) * cosX);
    mf[0][3] = 0.0f;

    mf[1][0] = -sinZ * cosY;
    mf[1][1] = (cosZ * cosX) - ((sinZ * sinY) * sinX);
    mf[1][2] = (cosZ * sinX) + ((sinZ * sinY) * cosX);
    mf[1][3] = 0.0f;

    mf[2][0] = sinY;
    mf[2][1] = -cosY * sinX;
    mf[2][2] = cosY * cosX;
    mf[2][3] = 0.0f;

    mf[3][0] = 0.0f;
    mf[3][1] = 0.0f;
    mf[3][2] = 0.0f;
    mf[3][3] = 1.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A465C.s")
#endif

// utilGetTransformSRT
void func_800A4794(Vector *vec, DObj *dobj) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (dobj == NULL) {
        dobj = omCurrentObj->data;
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

// utilTransformChain
void func_800A4958(Vector *vec, DObj *dobj, Vector *input) {
    Mat4 finalMtx;
    Mat4 tmpMtx;

    if (dobj == NULL) {
        dobj = omCurrentObj->data;
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
        dobj = omCurrentObj->data;
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
        dobj = omCurrentObj->data;
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
    func_800A4598(vec);
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

#ifdef MIPS_TO_C

s32 func_800A509C(s32 arg0, void *arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 sp18;
    f32 sp14;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f20;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 var_f0;
    f32 var_f2;
    s32 var_v0;

    temp_f0 = arg1->unk0;
    temp_f2 = arg1->unk4;
    temp_f18 = arg1->unk8;
    temp_f4 = D_800D6ED0.unk34 + ((D_800D6ED0.unk4 * temp_f0) + (D_800D6ED0.unk14 * temp_f2) + (D_800D6ED0.unk24 * temp_f18));
    sp18 = temp_f4;
    sp14 = D_800D6ED0.unk38 + ((D_800D6ED0.unk8 * temp_f0) + (D_800D6ED0.unk18 * temp_f2) + (D_800D6ED0.unk28 * temp_f18));
    var_v0 = 0;
    temp_f20 = 1.0f / (D_800D6ED0.unk3C + ((D_800D6ED0.unkC * temp_f0) + (D_800D6ED0.unk1C * temp_f2) + (D_800D6ED0.unk2C * temp_f18)));
    arg1->unk0 = (D_800D6ED0.unk30 + ((D_800D6ED0.unk0 * temp_f0) + (D_800D6ED0.unk10 * temp_f2) + (D_800D6ED0.unk20 * temp_f18))) * temp_f20;
    arg1->unk4 = temp_f4 * temp_f20;
    arg1->unk8 = sp14 * temp_f20;
    if ((arg2 != 0.0f) && (arg3 != 0.0f) && (arg4 != 0.0f)) {
        temp_f0_2 = arg1->unk0;
        if (temp_f0_2 < 0.0f) {
            var_f2 = -temp_f0_2;
        } else {
            var_f2 = temp_f0_2;
        }
        if (var_f2 < arg2) {
            temp_f2_2 = arg1->unk4;
            if (temp_f2_2 < 0.0f) {
                var_f0 = -temp_f2_2;
            } else {
                var_f0 = temp_f2_2;
            }
            if (var_f0 < arg3) {
                temp_f18_2 = arg1->unk8;
                if ((temp_f18_2 > 0.0f) && (temp_f18_2 < arg4)) {
                    var_v0 = 1;
                }
            }
        }
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A509C.s")
#endif

void copy_controller_inputs_to_kirby_controller(void) {
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

#ifdef MIPS_TO_C

f32 func_800A52F0(f32 arg0, f32 arg1) {
    f32 temp_f0;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f14;
    f32 var_f2;
    s32 var_v0;
    s32 var_v1;

    if (arg0 < 0.0f) {
        var_f12 = -arg0;
    } else {
        var_f12 = arg0;
    }
    var_f14 = arg1;
    if (arg1 < 0.0f) {
        var_f14 = -arg1;
    }
    temp_f0 = atan2f(var_f12, var_f14);
    var_v1 = 0;
    if (arg1 < 0.0f) {
        var_v1 = 1;
    }
    if (var_v1 != 0) {
        var_f12_2 = 3.1415927f;
        var_v0 = 0;
        if (arg0 < 0.0f) {
            var_v0 = 1;
        }
    } else {
        var_v0 = 0;
        if (arg0 < 0.0f) {
            var_v0 = 1;
        }
        if (var_v0 != 0) {
            var_f12_2 = 6.2831855f;
        } else {
            var_f12_2 = 0.0f;
        }
    }
    if (var_v1 != var_v0) {
        var_f2 = var_f12_2 - temp_f0;
    } else {
        var_f2 = var_f12_2 + temp_f0;
    }
    if (var_f2 > 6.2831855f) {
        var_f2 -= 6.2831855f;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A52F0.s")
#endif

#ifdef MIPS_TO_C
void func_800A5404(void *arg0, void *arg1) {
    arg0->unk0 = arg0->unk4 = arg1->unk0;
    arg0->unk1 = arg0->unk5 = arg1->unk1;
    arg0->unk2 = arg0->unk6 = arg1->unk2;
    arg0->unk8 = arg0->unkC = arg1->unk3;
    arg0->unk9 = arg0->unkD = arg1->unk4;
    arg0->unkA = arg0->unkE = arg1->unk5;
    arg0->unk10 = arg1->unk6;
    arg0->unk11 = arg1->unk7;
    arg0->unk12 = arg1->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5404.s")
#endif

#ifdef MIPS_TO_C
void func_800A5468(void *arg0, void *arg1) {
    arg0->unk0 = arg0->unk4 += arg1->unk0;
    arg0->unk1 = arg0->unk5 += arg1->unk1;
    arg0->unk2 = arg0->unk6 += arg1->unk2;
    arg0->unk8 = arg0->unkC += arg1->unk3;
    arg0->unk9 = arg0->unkD += arg1->unk4;
    arg0->unkA = arg0->unkE += arg1->unk5;
    arg0->unk10 = arg1->unk6;
    arg0->unk11 = arg1->unk7;
    arg0->unk12 = arg1->unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5468.s")
#endif

#ifdef MIPS_TO_C
void func_800A54FC(void *arg0, void *arg1) {
    arg1->unk0 = arg1->unk4 = arg0->unk0;
    arg1->unk1 = arg1->unk5 = arg0->unk1;
    arg1->unk2 = arg1->unk6 = arg0->unk2;
    arg1->unk8 = arg1->unkC = arg0->unk8;
    arg1->unk9 = arg1->unkD = arg0->unk9;
    arg1->unkA = arg1->unkE = arg0->unkA;
    arg1->unk10 = arg0->unk10;
    arg1->unk11 = arg0->unk11;
    arg1->unk12 = arg0->unk12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A54FC.s")
#endif

s32 correct_stick_x(u32 channel) {
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

s32 correct_stick_y(u32 cont) {
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

s32 func_800A5660(s32 value, s32 axis, u32 framemaybe) {
    s32 stick;

    if ((D_800BE4EC % framemaybe) != 0) {
        return 0;
    }
    if (axis != 0) {
        stick = correct_stick_y(value);
    } else {
        stick = correct_stick_x(value);
    }

    if ((stick / 16) > 0) {
        return 1;
    } else if ((stick / 16) < 0) {
        return -1;
    } else {
        return 0;
    }
}

#ifdef MIPS_TO_C

void func_800A56F4(s32 ulx, s32 uly, s32 lrx, s32 lry, u8 red, u8 green, u8 blue) {
    D_800D6B24 = NULL;
    D_800D6B34 = ulx;
    D_800D6B38 = uly;
    D_800D6B3C = lrx;
    D_800D6B40 = lry;
    D_800D6B28 = red;
    D_800D6B29 = green;
    D_800D6B2A = blue;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A56F4.s")
#endif

#ifdef NON_MATCHING
void func_800A5744(s32 red, s32 green, s32 blue) {
    D_800D6B24 = NULL;

    D_800D6B34 = 10;
    D_800D6B38 = 10;
    D_800D6B3C = 310;
    D_800D6B40 = 230;


    D_800D6B28 = red;
    D_800D6B29 = green;
    D_800D6B2A = blue;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5744.s")
#endif

#ifdef NON_MATCHING
void func_800A57A0(s32 red, s32 green, s32 blue) {
    D_800D6B28 = red;
    D_800D6B29 = green;
    D_800D6B2A = blue;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A57A0.s")
#endif

void func_800A57C8(s32 arg0) {
    ohSleep(1);
    while (1) {
        D_800D6B2E += D_800D6B2C;
        if (D_800D6B2E <= 0) {
            D_800D6B2E = 0;
            break;
        } else if (D_800D6B2E >= 0xFF) {
            D_800D6B2E = 0xFF;
            break;
        } else {
            ohSleep(1);
        }
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

void func_800A58E4(GObj *gobj) {
    Gfx *glistp = gDisplayListHeads[1];

    gDPPipeSync(glistp++);
    gDPSetRenderMode(glistp++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gDPSetPrimColor(glistp++, 0, 0, D_800D6B28, D_800D6B29, D_800D6B2A, (u8)D_800D6B2E);
    gDPSetCombineMode(glistp++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPFillRectangle(glistp++, D_800D6B34, D_800D6B38, D_800D6B3C, D_800D6B40);
    gDPPipeSync(glistp++);
    gDPSetRenderMode(glistp++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);

    gDisplayListHeads[1] = glistp;
}

#ifdef MIPS_TO_C

void func_800A5A14(s16 arg0, s16 arg1, u8 arg2) {
    if (D_800D6B24 == NULL) {
        D_800D6B2E = arg0;
        D_800D6B2C = arg1 * D_800D6B10;
        D_800D6B2B = arg2;
        D_800D6B24 = ohCreateCamera(2, 0, 0x19, 0x80000000, &func_800A58E4, 0, 0, 0, 0, 0, &func_800A57C8, 1, 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5A14.s")
#endif

#ifdef MIPS_TO_C

s32 func_800A5AD8(void) {
    if (D_800D6B24 == 0) {
        return 0;
    }
    D_800D6B2C = 0;
    D_800D6B2E = D_800D6B2C;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5AD8.s")
#endif

#ifdef MIPS_TO_C
void func_800A5B14(void *arg0, s8 arg1, s8 arg2, s8 arg3, u8 arg4) {
    void *temp_v0;

    temp_v0 = arg0->unk4C;
    temp_v0->unk14 = arg1;
    temp_v0->unk15 = arg2;
    temp_v0->unk16 = arg3;
    temp_v0->unk17 = arg4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B14.s")
#endif

#ifdef MIPS_TO_C
void func_800A5B3C(void *arg0, s8 arg1, s8 arg2, s8 arg3, u8 arg4) {
    void *temp_v0;

    temp_v0 = arg0->unk4C;
    temp_v0->unk18 = arg1;
    temp_v0->unk19 = arg2;
    temp_v0->unk1A = arg3;
    temp_v0->unk1B = arg4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B3C.s")
#endif

#ifdef MIPS_TO_C

f32 func_800A5B64(f32 arg0) {
    f32 var_f2;
    s32 temp_v0;

    temp_v0 = (arg0 * 651.8986f) & 0xFFF & 0xFFFF;
    if (temp_v0 & 0x400) {
        var_f2 = *(&D_800BF8EC + -((temp_v0 & 0x3FF) * 4));
    } else {
        var_f2 = *(&D_800BE8F0 + ((temp_v0 & 0x3FF) * 4));
    }
    if (temp_v0 & 0x800) {
        return -var_f2;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B64.s")
#endif

#ifdef MIPS_TO_C

f32 func_800A5BDC(f32 arg0) {
    f32 var_f2;
    s32 temp_v0;

    temp_v0 = ((arg0 + 1.5707964f) * 651.8986f) & 0xFFF & 0xFFFF;
    if (temp_v0 & 0x400) {
        var_f2 = *(&D_800BF8EC + -((temp_v0 & 0x3FF) * 4));
    } else {
        var_f2 = *(&D_800BE8F0 + ((temp_v0 & 0x3FF) * 4));
    }
    if (temp_v0 & 0x800) {
        return -var_f2;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5BDC.s")
#endif

#ifdef MIPS_TO_C

f32 func_800A5C60(f32 arg0) {
    f32 var_f12;
    f32 var_f2;
    s32 temp_a0;
    s32 temp_v0;

    temp_a0 = (arg0 * 651.8986f) & 0xFFF & 0xFFFF;
    if (temp_a0 & 0x400) {
        var_f2 = *(&D_800BF8EC + -((temp_a0 & 0x3FF) * 4));
    } else {
        var_f2 = *(&D_800BE8F0 + ((temp_a0 & 0x3FF) * 4));
    }
    if (temp_a0 & 0x800) {
        var_f2 = -var_f2;
    }
    temp_v0 = (temp_a0 + 0x400) & 0xFFF & 0xFFFF;
    if (temp_v0 & 0x400) {
        var_f12 = *(&D_800BF8EC + -((temp_v0 & 0x3FF) * 4));
    } else {
        var_f12 = *(&D_800BE8F0 + ((temp_v0 & 0x3FF) * 4));
    }
    if (temp_v0 & 0x800) {
        var_f12 = -var_f12;
    }
    return var_f2 / var_f12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5C60.s")
#endif

#ifdef MIPS_TO_C
void func_800A5D24(void *arg0, void *arg1) {
    arg0->unk0 = arg1->unk0;
    arg0->unkC = arg1->unkC;
    arg0->unk18 = arg1->unk18;
    arg0->unk24 = arg1->unk24;
    arg0->unk4 = arg1->unk4;
    arg0->unk10 = arg1->unk10;
    arg0->unk1C = arg1->unk1C;
    arg0->unk28 = arg1->unk28;
    arg0->unk8 = arg1->unk8;
    arg0->unk14 = arg1->unk14;
    arg0->unk20 = arg1->unk20;
    arg0->unk2C = arg1->unk2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5D24.s")
#endif

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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5D88.s")
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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5F94.s")
#endif

#ifdef MIPS_TO_C
void func_800A6208(void *arg0, void *arg1) {
    f32 spC;
    f32 sp8;
    f32 sp4;

    sp4 = arg0->unk24 + ((arg0->unk0 * arg1->unk0) + (arg0->unkC * arg1->unk4) + (arg0->unk18 * arg1->unk8));
    sp8 = arg0->unk28 + ((arg0->unk4 * arg1->unk0) + (arg0->unk10 * arg1->unk4) + (arg0->unk1C * arg1->unk8));
    spC = arg0->unk2C + ((arg0->unk8 * arg1->unk0) + (arg0->unk14 * arg1->unk4) + (arg0->unk20 * arg1->unk8));
    arg1->unk0 = sp4.unk0;
    arg1->unk4 = sp4.unk4;
    arg1->unk8 = sp4.unk8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6208.s")
#endif

#ifdef MIPS_TO_C
void func_800A62D8(void *arg0, void *arg1, void *arg2) {
    arg0->unk0 = (arg2->unk8 * arg1->unk18) + ((arg1->unk0 * arg2->unk0) + (arg1->unkC * arg2->unk4));
    arg0->unk4 = (arg2->unk8 * arg1->unk1C) + ((arg1->unk4 * arg2->unk0) + (arg1->unk10 * arg2->unk4));
    arg0->unk8 = (arg2->unk8 * arg1->unk20) + ((arg1->unk8 * arg2->unk0) + (arg1->unk14 * arg2->unk4));
    arg0->unkC = (arg2->unk14 * arg1->unk18) + ((arg1->unk0 * arg2->unkC) + (arg1->unkC * arg2->unk10));
    arg0->unk10 = (arg2->unk14 * arg1->unk1C) + ((arg1->unk4 * arg2->unkC) + (arg1->unk10 * arg2->unk10));
    arg0->unk14 = (arg2->unk14 * arg1->unk20) + ((arg1->unk8 * arg2->unkC) + (arg1->unk14 * arg2->unk10));
    arg0->unk18 = (arg2->unk20 * arg1->unk18) + ((arg1->unk0 * arg2->unk18) + (arg1->unkC * arg2->unk1C));
    arg0->unk1C = (arg2->unk20 * arg1->unk1C) + ((arg1->unk4 * arg2->unk18) + (arg1->unk10 * arg2->unk1C));
    arg0->unk20 = (arg2->unk20 * arg1->unk20) + ((arg1->unk8 * arg2->unk18) + (arg1->unk14 * arg2->unk1C));
    arg0->unk24 = arg1->unk24 + ((arg1->unk0 * arg2->unk24) + (arg1->unkC * arg2->unk28) + (arg1->unk18 * arg2->unk2C));
    arg0->unk28 = arg1->unk28 + ((arg1->unk4 * arg2->unk24) + (arg1->unk10 * arg2->unk28) + (arg1->unk1C * arg2->unk2C));
    arg0->unk2C = arg1->unk2C + ((arg1->unk8 * arg2->unk24) + (arg1->unk14 * arg2->unk28) + (arg1->unk20 * arg2->unk2C));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A62D8.s")
#endif

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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6534.s")
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
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6820.s")
#endif

void func_800A699C(void) {
    int i;

    for (i = 0; i < 32; i++) {
        GObj *gobj = omGObjListHead[i];
        while (gobj != NULL) {
            GObj *next = gobj->next;

            ohGObjPause(gobj);
            gobj->flags |= GOBJ_FLAGS_PAUSED;
            gobj = next;
        }
    }
}

void func_800A6A18(void) {
    int i;

    for (i = 0; i < 32; i++) {
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

void load_overlay(u32 arg0) {
    while (arg0 >= 0x14) {
        // ...were they going to do anything to remedy this issue?
    }
    dma_overlay_load(gOverlayTable[arg0]);
}

// some sort of integrity check
u8 ovl1_TamperCheck(void) {
    s32 buf[4];

    dma_read(0x00000F10, &buf, 0x10);
    if (buf[0] != 0x04080040) {
        return 0;
    } else if (buf[1] != 0x02081040) {
        return 0;
    }
    else return 1;
}
