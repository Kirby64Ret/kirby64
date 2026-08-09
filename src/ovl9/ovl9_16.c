#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"

extern s32 D_801CCFDC;
extern s32 D_801CCF4C;
extern s32 D_801CCF94;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_802187C0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218930_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_8021898C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218A58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218B00_ovl9.s")

void func_80218B9C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCF4C;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x100AA);
    curObjSleepForever();
}

void func_80218C20_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218C28_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218DFC_ovl9.s")

void func_80218EC4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCF94;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x100AB);
    curObjSleepForever();
}

void func_80218F98_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80218FA0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_802190D8_ovl9.s")

void func_80219388_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801CCFDC;
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8021944C_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219454_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219590_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219654_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219748_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219824_ovl9.s")

void func_80219924_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_8021992C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_80219980_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_16/func_802199AC_ovl9.s")

