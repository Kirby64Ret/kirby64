#include <ultra64.h>
#include <macros.h>

#include "unk_structs/D_800D6A08.h"

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B550_ovl1.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B5E8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B69C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B6F0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B72C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B768.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009B99C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BA68.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BA74.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BC4C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BD3C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BE04.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BE54.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BF7C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BFA8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009BFD4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C0E4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C154.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C18C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C1C8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C350.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C44C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009C4E0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009E834.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_8009E8F4.s")

extern Gfx* gDisplayListHeads[4];

void func_800A043C(u32 arg0, u32 arg1) {
    func_8009E8F4(arg0, arg1, &gDisplayListHeads[0]);
}

void func_800A0460(u32 arg0) {
    func_800A043C(arg0, 3);
}

void func_800A0480(s32 arg0, u32 arg1) {
    if (arg0 > 0) {
        if (arg0 < 9) {
            D_800D6A14[arg0] = arg1;
        }
    }
}

extern s8 D_800BE3E0, D_800BE3E4;

void func_800A04A4(u32 arg0, u32 arg1) {
    D_800BE3E0 = arg0 & 0xFF;
    D_800BE3E4 = arg1 & 0xFF;
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A04B8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A0558.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A09AC.s")

extern u16 D_800D6AE2;
extern u16 D_800BE3E8, D_800D6AE8;
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A194C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A19EC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A1F30.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A2024.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A206C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A2080.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A22A8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A22D4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A2300.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A238C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A2440.s")


GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A24C4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1/func_800A2550.s")
