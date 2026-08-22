#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

void func_801A0D74_ovl7(void);
void func_801A03B4_ovl7(void);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_8019B9B0_ovl7(void);
extern FUNCLIST D_801F43F0_ovl10;
extern FUNCLIST D_801F43FC_ovl10;

void func_801E2D40_ovl10(s32 arg0) {
    func_8019B9B0_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801F43FC_ovl10);
}

void func_801E2DD8_ovl10(s32 arg0) {
    func_8019B9B0_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801F43F0_ovl10);
    while (1)
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_801F43FC_ovl10);
}

void func_801E2E78_ovl10(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E2EF0_ovl10(GObj *arg0) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_800AA018(0x10521);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

/* -0.8f = -0.8f : now emitted by this TU */
/* -0.4f = -0.4f : now emitted by this TU */
/* 65535.0f = 65535.0f : now emitted by this TU */
extern struct EnemyEventTable D_801F41B4_ovl10;
extern void func_800B6A2C(s32);
extern void func_801ACF84_ovl7(struct GObj *);
void func_801E3244_ovl10(void);

void func_801E2F68_ovl10(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801E3244_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801F41B4_ovl10;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(1);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    ohSleep(3);
    D_800E98E0[omCurrentObj->objId] = 1;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B33F4();
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_801E3244_ovl10(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

void func_801E3748_ovl10(void);
extern struct EnemyEventTable D_801CB4DC_ovl7;
f32 func_801E3450_ovl10(GObj *);
f32 func_801E3614_ovl10(GObj *);
f32 sinf(f32);
f32 cosf(f32);

void func_801E326C_ovl10(GObj *arg0) {
    s32 pad0;
    s32 pad1;
    f32 a;

    D_800DF150[omCurrentObj->objId] = func_801E3748_ovl10;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008C, 0x23, 0x10);
    func_800B33F4();
    a = func_801E3450_ovl10(arg0);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (sinf((a < 0.0f) ? -a : a) * 6.0f);
    D_800E3210[omCurrentObj->objId] = cosf((a < 0.0f) ? -a : a) * 6.0f;
    ohSleep(0x1E);
    func_800B33F4();
    ohSleep(0xA);
    a = func_801E3614_ovl10(arg0);
    D_800E64D0[omCurrentObj->objId] = sinf(a) * 6.0f;
    D_800E3210[omCurrentObj->objId] = cosf(a) * 6.0f;
    ohSleep(0x1E);
    func_801ACF84_ovl7(arg0);
}

f32 func_8019DA50_ovl7(void);

#ifdef NON_MATCHING
extern f32 atan2f(f32, f32);
f32 func_801E3450_ovl10(GObj *arg0) {
    f32 a;
    f32 t;
    f32 r;

    a = func_8019DA50_ovl7();
    t = a;
    if (1.0f == D_800E6A10[omCurrentObj->objId]) {
        if (t < 0.0f) {
            t = -t;
        }
    } else {
        if (t < 0.0f) {
            t = -t;
        }
        t = -t;
    }
    r = atan2f(t, (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]);
    if (2.19911491870880127 < ((r < 0.0f) ? -r : r)) {
        if (1.0f == D_800E6A10[omCurrentObj->objId]) {
            r = 2.19911491870880127;
        } else {
            r = -2.19911491870880127;
        }
    } else if (((r < 0.0f) ? -r : r) < 0.942477822303771973) {
        if (1.0f == D_800E6A10[omCurrentObj->objId]) {
            r = 0.942477822303771973;
        } else {
            r = -0.942477822303771973;
        }
    }
    return r;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl10/ovl10_2/func_801E3450_ovl10.s")
#endif

extern f32 atan2f(f32, f32);
extern f32 sqrtf(f32);

f32 func_801E3614_ovl10(struct GObj *arg0) {
    f32 dx;
    f32 dy;
    f32 dz;
    f32 r;
    f32 k;

    dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    r = atan2f(dx, (dy < 0.0f) ? -sqrtf((dy * dy) + (dz * dz)) : sqrtf((dy * dy) + (dz * dz)));
    while (3.1415927f < r) {
        r -= 6.2831855f;
    }
    k = 6.2831855f;
    while (r < -3.1415927f) {
        r += k;
    }
    return r;
}
void func_801E3748_ovl10(void) {
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}

