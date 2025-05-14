#include "common.h"
#include "main/gtl.h"

// this file
extern s8 D_800BE3E0, D_800BE3E4;
extern u16 D_800D6AE2;
extern s32 D_800D6AE4;
extern u16 D_800D6AE8;
extern s16 D_800D6AEA;
extern s32 D_800D6AEC;
extern u16 D_800BE3E8;
extern u32 D_800D6A14[];

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B550.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B5E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B69C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B6F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B72C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B768.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009B99C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BA68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BA74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BC4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BD3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BE54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BF7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BFA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009BFD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C0E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C18C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C1C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C44C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009C4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E834.s")

// crazy large gfx function lol
#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_8009E8F4.s")

void func_800A043C(void *arg0, u32 flag) {
    func_8009E8F4(arg0, flag, &gDisplayListHeads[0]);
}

void func_800A0460(void *arg0) {
    func_800A043C(arg0, 0x00000003);
}

void func_800A0480(s32 arg0, u32 arg1) {
    if (arg0 > 0) {
        if (arg0 < 9) {
            D_800D6A14[arg0] = arg1;
        }
    }
}

void func_800A04A4(u32 arg0, u32 arg1) {
    D_800BE3E0 = arg0;
    D_800BE3E4 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A04B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A0558.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A09AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A194C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A19EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A1F30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A206C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A22A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A22D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A238C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2440.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A24C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1/func_800A2550.s")

