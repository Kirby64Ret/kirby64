#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"

extern s32 D_800D6B24;
extern u8 D_8018EE00_ovl5;
extern Gfx D_8018A338_ovl5[];
void func_80182B08_ovl5(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182360_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182414_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_801824B0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_801825E8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182700_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182804_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_8018293C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182A1C_ovl5.s")

void func_80182AFC_ovl5(void) {
    D_8018EE00_ovl5 = 0;
}

void func_80182B08_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EE00_ovl5;
void func_80182B08_ovl5(void);

void func_80182B40_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EE00_ovl5 != 0) {
        func_80182B08_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182B80_ovl5.s")

void func_80182FC4_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_8018A338_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_12/func_80182FE8_ovl5.s")

