#include "common.h"

#include "GObj.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

s32 func_800F98EC(s32, f32);
void func_801A3E80_ovl7(GObj *);
void func_80198CA8_ovl7(void);
void func_80198DB4_ovl7(void);
void func_80198DBC_ovl7(void);
void func_801992F0_ovl7(void);
void func_80198B98_ovl7(void);
void func_800AECC0(f32);
void func_800AED20(f32);
extern f32 gameTicksPerDraw;
extern FUNCLIST D_801CD3B0_ovl7;

s32 func_801ACC34_ovl7();
void func_800B1900(u16);
s32 func_801A0D74_ovl7(void);
void func_801A03B4_ovl7(void);

/* D_801CE160_ovl7 = "Enemy Shot Request Error!\n" : now emitted by this TU */
/* D_801CE17C_ovl7 = "Enemy Shot Track Over!\n" : now emitted by this TU */
extern f32 D_800E6D90[];
s32 request_track_general(s32, s32, s32);

/* K&R form is load-bearing here: this file calls it with 0 args at line ~73
 * against its real 2-arg (s32, s32) signature -- the ROM relies on whatever
 * is already sitting in $a0/$a1. An ANSI prototype breaks compilation with
 * "the number of arguments doesn't agree with the number in the
 * declaration". */
s32 func_801AC9D0_ovl7(arg0, arg1)
s32 arg0;
s32 arg1;
{
    s32 idx;
    f32 temp_f0;

    idx = request_track_general(0x1A, 0xE, 0x1E);
    if (idx == -1) {
        utilPrintf("Enemy Shot Request Error!\n");
        return 0;
    }
    if (idx >= 0x1E) {
        utilPrintf("Enemy Shot Track Over!\n");
        func_800B1900((u16) idx);
        return 0;
    }
    gEntityFuncListIDArray[idx] = arg0;
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 4;
    D_800E77A0[idx] = arg0 & 0xFF;
    D_800E7880[idx] = arg1;
    D_800E78F0[idx] = D_800E78F0[omCurrentObj->objId];
    D_800E5F90[idx] =
    D_800E6150[idx] =
        D_800E5F90[omCurrentObj->objId];
    temp_f0 = D_800E6BD0[omCurrentObj->objId];
    D_800E6D90[idx] = temp_f0;
    D_800E6BD0[idx] = temp_f0;
    D_800E6A10[idx] = D_800E6A10[omCurrentObj->objId];
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[idx] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[idx] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[idx] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E8E60[idx] = 0;
    D_800E8AE0[idx] = D_800E8AE0[omCurrentObj->objId];
    return idx;
}

s32 func_801ACC34_ovl7() {
    s32 temp;

    temp = func_801AC9D0_ovl7();
    if (temp == 0) {
        return 0;
    }
    if (D_800E0D50[D_800E0D50[temp]] == 0) {
        D_800DDA90[temp] = 0x23;
    }
    return temp;
}

s32 func_801ACCA0_ovl7(s32 arg0, s32 arg1, f32 arg2, f32 arg3) {
    s32 idx;
    f32 *p;

    idx = func_801ACC34_ovl7(arg0, arg1);
    if (idx == 0) {
        return 0;
    }
    p = &gEntitiesNextPosYArray[idx];
    *p = *p + arg3;
    if (func_800F98EC(idx, D_800E6A10[omCurrentObj->objId] * arg2) != 0) {
        func_800B1900(idx);
        return 0;
    }
    return idx;
}

s32 func_801ACD48_ovl7(void) {
    s32 temp;

    temp = func_801ACC34_ovl7();
    if (temp == 0) {
        return 0;
    }
    D_800E8E60[temp] = 1;
    return temp;
}

s32 func_801ACD90_ovl7(s32 arg0, s32 arg1, Vector *arg2) {
    s32 idx;
    f32 *px;
    f32 *py;
    f32 *pz;

    idx = func_801ACC34_ovl7(arg0, arg1);
    if (idx == 0) {
        return 0;
    }
    D_800E8E60[idx] = 1;
    px = &gEntitiesNextPosXArray[idx];
    *px = *px + arg2->x;
    py = &gEntitiesNextPosYArray[idx];
    *py = *py + arg2->y;
    pz = &gEntitiesNextPosZArray[idx];
    *pz = *pz + arg2->z;
    gEntitiesPosXArray[idx] = *px;
    gEntitiesPosYArray[idx] = *py;
    gEntitiesPosZArray[idx] = *pz;
    return idx;
}

void func_801ACE60_ovl7(GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        func_80198CA8_ovl7();
    } else {
        func_80198DB4_ovl7();
    }
    func_80198DBC_ovl7();
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_801992F0_ovl7();
    func_80198B98_ovl7();
    utilFuncTableJump(D_800E77A0[omCurrentObj->objId], 0x46, &D_801CD3B0_ovl7);
}

void func_801ACF30_ovl7(GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_801ACF5C_ovl7(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

void func_801ACF84_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk43 = 1;
    func_801A3E80_ovl7(arg0);
}

