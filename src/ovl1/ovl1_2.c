#include "common.h"

#include "unk_structs/D_800D79D8.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A6BC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A6E64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A6F40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A6F68.s")

void func_800A70C4(u16 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 tmp;
    struct UnkStruct800D79D8 *st;

    st = D_800D79D8[(u16)(arg0 - 10 >> 1)];
    tmp = arg4;
    if (st) {
        if (arg1 != 65535.0f) {
            st->unk20 = arg1;
        }
        if (arg2 != 65535.0f) {
            st->unk24 = arg2;
        }
        if (arg3 != 65535.0f) {
            st->unk28 = arg3;
        }
        if (tmp != 65535.0f) {
            st->unk2C = tmp;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A7160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A71A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A71E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A72AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A7348.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A7394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2/func_800A73B0.s")

