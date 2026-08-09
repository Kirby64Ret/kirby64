#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800D7178.h"

extern s32 D_800D6B24;
extern u8 D_8018EDD0_ovl5;
extern Gfx D_80189868_ovl5[];
s32 saveCheckCutsceneWatched(s32);
void func_801800CC_ovl5(void);
extern u32 D_800D6B68;
extern u8 D_8018EDD0_ovl5;
extern u32 D_8018EDD4_ovl5;
extern u32 D_80189C98_ovl5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017F660_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017F6F8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017F7B0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FA7C_ovl5.s")

s32 func_8017FB84_ovl5(s32 arg0) {
    return saveCheckCutsceneWatched(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FBA4_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FC58_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FD84_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_8017FFB8_ovl5.s")

void func_80180080_ovl5(void) {
    D_8018EDD0_ovl5 = 0;
    if (D_800D6B68 == 0x15 || D_800D6B68 == 0x22) {
        D_8018EDD4_ovl5 = D_800D7178.unk6C;
    } else {
        D_8018EDD4_ovl5 = D_80189C98_ovl5;
    }
}

void func_801800CC_ovl5(void) {
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0, 0x10, 2);
}

extern s32 D_800D6B24;
extern u8 D_8018EDD0_ovl5;
void func_801800CC_ovl5(void);

void func_80180104_ovl5(struct GObj *arg0) {
    if (D_800D6B24 == 0 && D_8018EDD0_ovl5 != 0) {
        func_801800CC_ovl5();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_80180144_ovl5.s")

void func_80180284_ovl5(Gfx **g) {
    gSPDisplayList((*g)++, D_80189868_ovl5);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_10/func_801802A8_ovl5.s")

