#include "common.h"
#include "types.h"
// #include "main/object_manager.h"
#include "GObj.h"
#include "ovl0/ovl0_2.h"

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A4F48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A509C.s")

void copy_controller_inputs_to_kirby_controller(void) {
    if (!kirby_in_inactionable_state()) {
        gKirbyController.buttonHeld = gPlayerControllers->buttonHeld;
        gKirbyController.buttonPressed = gPlayerControllers->buttonPressed;
        gKirbyController.buttonHeldLong = gPlayerControllers->buttonHeldLong;
        gKirbyController.buttonReleased = gPlayerControllers->buttonReleased;
        gKirbyController.stickX = gPlayerControllers->stickX;
        gKirbyController.stickY = gPlayerControllers->stickY;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A5560.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/func_800A55E0.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/load_overlay.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_1_2/ovl1_TamperCheck.s")
