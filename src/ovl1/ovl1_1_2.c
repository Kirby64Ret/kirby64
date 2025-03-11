#include "common.h"
#include "types.h"
// #include "main/object_manager.h"
#include "GObj.h"
#include "ovl0/ovl0_2.h"
#include "main/contpad.h"
#include "main/lbmatrix.h"

extern struct Overlay *gOverlayTable[];

void print_error_stub(char* arg0, ...) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A428C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4414.s")

// executes the virtual function at index arg0
void call_virtual_function(u32 idx, u32 max, VTABLE callbackTbl) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A465C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4794.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4958.s")

void func_800A4B34(Vector *dst, struct UnkStruct8004A7C4_3C *arg1) {
    Vector tmp;
    Mat4 sp7C;
    Mat4 sp3C;

    if (arg1 == 0) {
        arg1 = omCurrentObj->data;
    }
    guMtxIdentF(&sp7C);
    do {
        if ((arg1->scaleVec.x != 1.0f) || (arg1->scaleVec.y != 1.0f) || (arg1->scaleVec.z != 1.0f)) {
            HS64_MkScaleMtxF(&sp3C, 1.0f / arg1->scaleVec.x, 1.0f / arg1->scaleVec.y, 1.0f / arg1->scaleVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((arg1->angleVec.x != 0.0f) || (arg1->angleVec.y != 0.0f) || (arg1->angleVec.z != 0.0f)) {
            func_800A465C(&sp3C, -arg1->angleVec.x, -arg1->angleVec.y, -arg1->angleVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        if ((arg1->posVec.x != 0.0f) || (arg1->posVec.y != 0.0f) || (arg1->posVec.z != 0.0f)) {
            HS64_MkTranslateMtxF(&sp3C, -arg1->posVec.x, -arg1->posVec.y, -arg1->posVec.z);
            guMtxCatF(&sp3C, &sp7C, &sp7C);
        }
        arg1 = arg1->unk14;
    } while ((u32) arg1 != 1);

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A509C.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A52F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5404.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A54FC.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A56F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A57A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A57C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A58E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5A14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5AD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5B64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5BDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5C60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5D24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5F94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6208.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A62D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6534.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A699C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A6A18.s")

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
