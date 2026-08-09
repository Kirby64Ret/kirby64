#include "common.h"

#include "GObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

#include "ovl1/track.h"

struct Ovl7Unk94 {
    u8 filler0[0xC];
    s32 unkC;
    s32 unk10;
    f32 unk14;
    s32 unk18;
    u32 unk1C;
};


void func_800A9864(s32, s32, s32);
void func_800AF408(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9F98(s32, f32);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ACFD0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD0E8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD2EC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD4A8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD63C_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD7E8_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD980_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ADC60_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ADE10_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ADF58_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE154_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE304_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE3DC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE4E4_ovl7.s")

#ifdef MIPS_TO_C
void func_801AE52C_ovl7(void) {
    struct Ovl7Unk94 *p;

    p = (struct Ovl7Unk94 *) ((struct Sub800E1B50_Unk88 *) D_800E9E20[omCurrentObj->objId])->unk18;
    func_800A9864(D_800E9AA0[omCurrentObj->objId], 0x1869F, 0x10);
    if (p->unkC != -1) {
        func_800AECC0(p->unk14);
        func_800AED20(p->unk14);
        func_800A9F98(p->unkC, 1.0f);
        if (p->unk10 != -1) {
            func_800A9F98(p->unk10, 1.0f);
        }
    }
    func_800AF408();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE52C_ovl7.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE5D4_ovl7.s")

s32 func_801AE73C_ovl7(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 idx;

    idx = request_track_general(0x1B, 0x3C, 0x4A);
    if (idx == -1) {
        return -1;
    }
    gEntityFuncListIDArray[idx] = arg0;
    gEntitiesNextPosXArray[idx] = arg1;
    gEntitiesNextPosYArray[idx] = arg2;
    gEntitiesNextPosZArray[idx] = arg3;
    D_800E8E60[idx] = 1;
    return idx;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE7E0_ovl7.s")

s32 func_801AE8AC_ovl7(s32 arg0, Vector *arg1) {
    s32 idx;
    f32 *px;
    f32 *py;
    f32 *pz;

    idx = func_801AE7E0_ovl7(arg0);
    if (idx == -1) {
        return -1;
    }
    px = &gEntitiesNextPosXArray[idx];
    *px = *px + arg1->x;
    py = &gEntitiesNextPosYArray[idx];
    *py = *py + arg1->y;
    pz = &gEntitiesNextPosZArray[idx];
    *pz = *pz + arg1->z;
    return idx;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE940_ovl7.s")

