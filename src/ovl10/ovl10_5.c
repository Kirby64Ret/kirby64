#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"

extern u32 D_800BE560[];
extern u8 D_800D6BE0[];
void func_801BE79C_ovl7(void);
extern s32 D_800BE500;
s32 func_800F8560(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EF790_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EF9B0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFA38_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFC58_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFCE0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFF10_ovl10.s")

void func_801EFF98_ovl10(void) {
    func_801BE79C_ovl7();
    curObjSleepForever();
}

s32 func_801EFFC0_ovl10(void) {
    if (D_800BE500 >= 6) {
        return 0;
    }
    if (func_800F8560() == 3) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0014_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0050_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0DD0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F0EC8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F111C_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F11A8_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1454_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1554_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1870_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1934_ovl10.s")

s32 func_801F19DC_ovl10(s32 arg0, s32 arg1) {
    if (arg1 >= D_800BE560[arg0]) {
        return 0;
    }
    return D_800D6BE0[arg0 * 6 + arg1] & 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1A24_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1CA0_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1D60_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1E48_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F1F7C_ovl10.s")

s32 func_801F2074_ovl10(s32 arg0) {
    if (arg0 == 4 || arg0 == 5) {
        return 1;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2098_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F25FC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2770_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F28AC_ovl10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801F2964_ovl10.s")

