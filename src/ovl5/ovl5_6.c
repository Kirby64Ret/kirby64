#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/save_file.h"

extern Gfx D_80188218_ovl5[];

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177B00_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177C64_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177D04_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80177F20_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178140_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178220_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801783B8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178450_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178690_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_8017890C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178A3C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178AAC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178BEC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178CD0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178DB0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178E98_ovl5.s")

s32 func_80178F38_ovl5(s32 arg0) {
    return (arg0 % 30) * 3;
}

s32 func_80178F54_ovl5(s32 arg0) {
    return (arg0 / 30) % 60;
}

s32 func_80178F78_ovl5(s32 arg0) {
    return (arg0 / 30) / 60;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80178F9C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179118_ovl5.s")

u16 func_801791BC_ovl5(s32 arg0) {
    switch (arg0) {
        case 0x1D:
            return gSaveBuffer1.files[saveCurrentFileNum].hundredYardHopRecord;
        case 0x1F:
            return gSaveBuffer1.files[saveCurrentFileNum].bumperCropBumpRecord;
        case 0x1E:
            return gSaveBuffer1.files[saveCurrentFileNum].checkerBoardChaseRecord;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179264_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801795BC_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_8017962C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801796D8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_801799D8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179A5C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179B48_ovl5.s")

void func_80179D24_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80188218_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_6/func_80179D48_ovl5.s")

