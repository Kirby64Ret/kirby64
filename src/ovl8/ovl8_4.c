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
#include "track_arrays.h"

/* 13/114: every instruction, constant and operand order is right; the whole
 * float half is one FP register slot low (ROM f0/f2/f4/f6/f8/f10/f16/f18,
 * IDO f4/f6/f8/f10/f16/f18 with the $f0 return value never freeing f2).
 * Swept: both operand orders of both outer `+`, `-0.1f *` on the left, the
 * call hoisted into an explicit f32 local vs inlined, and an extra dead f32.
 * `20.0f + Y[0]` (constant first) IS load-bearing -- the natural order costs
 * one more diff. */
#ifdef NON_MATCHING
void func_801D45B0_ovl8(struct GObj *arg0) {
    extern void func_800A9760(s32);
    extern void func_800B4954(struct GObj *);
    extern void func_800BB468(s32, s32);
    extern void func_8016BBD0_ovl3(void);
    extern void func_800B33F4(void);
    extern f32 func_800F9828(s32, s32);
    extern void func_801D4C1C_ovl8(struct GObj *);
    extern void func_801D4778_ovl8(struct GObj *);
    f32 t;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_801D4C1C_ovl8;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800BB468(0, 0);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    func_800B33F4();
    t = func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] =
        (t + (D_800E6A10[D_800E0D50[omCurrentObj->objId]] * 40.0f)) * 0.1f;
    D_800E3210[omCurrentObj->objId] =
        ((20.0f + gEntitiesNextPosYArray[0]) -
         (30.0f + gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]])) * -0.1f;
    ohSleep(0xA);
    func_800B33F4();
    func_801D4778_ovl8(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D45B0_ovl8.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D4778_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D4C1C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D4D88_ovl8.s")

void func_801D5024_ovl8(void);

void func_801D4FA4_ovl8(void) {
    D_800EAA60[omCurrentObj->objId] = 1.0f;
    func_801D5024_ovl8();
}

void func_801D5024_ovl8(void);

void func_801D4FE4_ovl8(void) {
    D_800EAA60[omCurrentObj->objId] = -1.0f;
    func_801D5024_ovl8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5024_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D560C_ovl8.s")

void func_801D57E0_ovl8(void);

void func_801D56E0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -14.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8(void);

void func_801D5720_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -12.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8(void);

void func_801D5760_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -16.0f;
    func_801D57E0_ovl8();
}

void func_801D57E0_ovl8(void);

void func_801D57A0_ovl8(void) {
    D_800EADE0[omCurrentObj->objId] = -10.0f;
    func_801D57E0_ovl8();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D57E0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D59F0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5B20_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5E90_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D5F88_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6534_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D68E0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6B20_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6C8C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D6F1C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D7240_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8_4/func_801D75A8_ovl8.s")
