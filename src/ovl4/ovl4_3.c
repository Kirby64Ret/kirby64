#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "main/object_manager.h"

extern Gfx D_8015AA70_ovl4[];
extern s32 D_800D6B24;
extern s32 D_8015C6D8_ovl4;

extern void func_800AC610(void);
extern void func_80157C38_ovl4(void);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801553C0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801554F0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555AC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801555F4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155890_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155C00_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80155E6C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156054_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156160_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801561DC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015632C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156560_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_8015665C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801567BC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801569F0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156BAC_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156C4C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80156EB0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157004_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157028_ovl4.s")

s32 func_80157250_ovl4(void) {
    return 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157258_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_801572E4_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157610_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157840_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157B1C_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157C38_ovl4.s")

void func_80157CB0_ovl4(s32 arg0) {
    if (D_800D6B24 == 0) {
        if (D_8015C6D8_ovl4 != 0) {
            func_80157C38_ovl4();
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157CF0_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80157E04_ovl4.s")

void func_80157FFC_ovl4(Gfx **gfxP) {
    gSPDisplayList((*gfxP)++, D_8015AA70_ovl4);
}

void func_80158020_ovl4(void) {
    omDrawAll();
    func_800AC610();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_3/func_80158048_ovl4.s")

