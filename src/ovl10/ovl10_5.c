#include "common.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"

extern u32 D_800BE560[];
extern u8 D_800D6BE0[];
void func_801BE79C_ovl7(void);
extern s32 D_800BE500;
s32 func_800F8560(void);
#include "buffers.h"
void func_801A0880_ovl7(void);
void func_801EFF98_ovl10(void);
void func_800FF200(void *);
s32 func_801F1870_ovl10(void);
extern s32 D_801F4D68_ovl10[];
f32 sqrtf(f32);
extern f32 D_801F4C40_ovl10, D_801F4C44_ovl10, D_801F4C48_ovl10;
extern s32 D_801CA04C_ovl7[];
void func_800B7790(s32);
void func_801EF9B0_ovl10(GObj *);
void func_800AA018(s32);
void ohSleep(s32);

#ifdef MIPS_TO_C
// 98/140 diffs: structure is right, but $v0/$v1 are swapped between the
// omCurrentObj pointer and the objId value throughout. Swept with ZERO effect:
// s32 return type on func_800AA018, ohSleep and func_800B7790 (each applied
// file-wide, --all stayed at 0 diff), `void ohSleep(u8)`, hoisting
// omCurrentObj into a local, and writing `ent` as an assignment instead of a
// declaration initializer (102).
void func_801EF790_ovl10(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    ent->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EF9B0_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_801F4C40_ovl10;
    D_800E3750[omCurrentObj->objId] = D_801F4C44_ovl10;
    D_800E3050[omCurrentObj->objId] = -(gEntitiesNextPosXArray[omCurrentObj->objId] / 60.0f);
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801F4C48_ovl10;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EF790_ovl10.s")
#endif

void func_801EF9B0_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFA38_ovl10.s")

void func_801EFC58_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFCE0_ovl10.s")

void func_801EFF10_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

void func_801EFF98_ovl10(void) {
    func_801BE79C_ovl7();
    curObjSleepForever();
}
