#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "main/math.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"

extern u8 D_8012E7C5[];

void func_8011E438(void);
void func_801BE79C_ovl7(struct GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D2B90_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D2DE0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D307C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D329C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D34C0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D3644_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D3B14_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D3BA8_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D3DB4_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D3E3C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D4038_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D40E8_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D43B8_ovl8.s")

void func_801D4440_ovl8(struct GObj *arg0) {
    func_8011E438();
    D_8012E7C5[0xF] = 1;
    func_801BE79C_ovl7(arg0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_3/func_801D447C_ovl8.s")
