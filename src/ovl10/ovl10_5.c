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

/* The three-store tail is ONE chained assignment, not three statements: the ROM
   loads D_800E3750[objId] once and stores that same $f0 into E3590, E3210 and
   E3050 (LEVER 26's cousin -- three separate statements make IDO reload the
   source for each).  The 98/140 the old note called a $v0/$v1 permutation was
   this, plus a denominator inflated by four spurious words (LEVER 48): the ROM
   is 136, not 140.  Found by the permuter. */
void func_801EF790_ovl10(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    ent->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EF9B0_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.8f;
    D_800E3750[omCurrentObj->objId] = -0.3f;
    D_800E3050[omCurrentObj->objId] = -(gEntitiesNextPosXArray[omCurrentObj->objId] / 60.0f);
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
        (D_800E3210[omCurrentObj->objId] = (D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId]));
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}
void func_801EF9B0_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 122/140, whole-function register permutation. The instruction COUNT is
 * exact (139 + the trailing nop) and the sequence tracks the ROM; only the register
 * names differ ($a2/$v0/$v1 vs $a3/$v1/$a2/$a1), so nearly every word reads as a diff.
 * Solved and kept: the ROM shares ONE `objId << 2` between the D_800DEF90 and
 * D_800E1B50 stores and re-reads objId for every later table, so `id` is hoisted for
 * exactly those two and left inline everywhere else -- that is what makes the count
 * come out at 140 instead of 142 (LEVERS 11 and the objId pair in lever 4). Sharing
 * it for only one of the two, or for neither, measured 130-133/141-142. */
/* Intro drop variant of func_801EF790: same setup (damage callback, shared ovl7
 * anim list, facing taken from the raw D_800E0D50 parent index), but with a
 * 10.8 up / -0.3 gravity arc, X drift back toward the track origin over 60
 * ticks, and func_801EFC58 as the per-frame hit poll. */
void func_801EFA38_ovl10(s32 arg0) {
    void func_801EFC58_ovl10(GObj *);
    s32 id = omCurrentObj->objId;

    D_800DEF90[id] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E1B50[id]->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EFC58_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.8f;
    D_800E3750[omCurrentObj->objId] = -0.3f;
    D_800E3050[omCurrentObj->objId] = -(gEntitiesNextPosXArray[omCurrentObj->objId] / 60.0f);
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
        (D_800E3210[omCurrentObj->objId] = (D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId]));
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}
#elif defined(PORT)
void func_801EFC58_ovl10(GObj *);

/* Intro drop variant of func_801EF790: same setup (damage callback, shared
 * ovl7 anim list, facing taken from the raw D_800E0D50 parent index), but
 * with a 10.8 up / -0.3 gravity arc, X drift back toward the track origin
 * over 60 ticks, and func_801EFC58 as the per-frame hit poll. */
void func_801EFA38_ovl10(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EFC58_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.8f;
    D_800E3750[omCurrentObj->objId] = -0.3f;
    D_800E3050[omCurrentObj->objId] = -(gEntitiesNextPosXArray[omCurrentObj->objId] / 60.0f);
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3050[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_5/func_801EFA38_ovl10.s")
#endif

void func_801EFC58_ovl10(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_801A0880_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801EFF98_ovl10);
        }
    }
}

/* Clone of func_801EF790_ovl10 above (LEVER 1): same `ent` hoist sharing the
   first objId<<2 with the D_800DEF90 store, same chained three-store tail.
   Was 72/140 as an m2c draft full of temp_v1_N; porting the matched sibling's
   spelling verbatim took it to MATCH on the first compile.  Its own arc is
   11.8 up / -0.5 gravity and its X drift reads the parent facing. */
void func_801EFCE0_ovl10(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    ent->unk8C = D_801CA04C_ovl7;
    D_800DF150[omCurrentObj->objId] = func_801EF9B0_ovl10;
    func_800AA018(0x105F9);
    func_800AA018(0x105FA);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 11.8f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3050[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * 100.0f) / 30.0f;
    ohSleep(0x1E);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] =
        (D_800E3210[omCurrentObj->objId] = (D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId]));
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    curObjSleepForever();
}

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
