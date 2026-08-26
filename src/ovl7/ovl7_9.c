#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void func_800B33F4(void);
void func_801B35CC_ovl7(GObj *, s32, f32);
void func_800AF27C(void);

extern s32 D_801C8158_ovl7[];
void func_800B3520(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_80199F58_ovl7(GObj *);
void func_800AA018(s32);
void func_800AA154(s32);
void func_800AA864(s32, u32);
s32 func_801A0D74_ovl7(GObj *);

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];

extern s32 D_801C81A0_ovl7[];
extern s32 D_801C820C_ovl7[];
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(s32);

void func_800B6FD8(GObj *);
void func_800B7514(GObj *);

extern s32 D_801D0A98_ovl7;
extern s32 D_801C8278_ovl7[];
extern s32 D_801C3408_ovl7[];
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);
void func_800FD570(s32, s32, f32, f32, f32);
void func_80198880_ovl7(void *);
void func_801A3E80_ovl7(GObj *);

void func_801B2D90_ovl7(GObj *);
void func_801B2C78_ovl7(GObj *);
void func_801A0D50_ovl7(void *);
extern f32 D_800E6A10[], D_800EA6E0[], D_800EA8A0[];
extern s32 D_800E9C60[], D_800E9E20[];
extern FUNCLIST D_801CD5F8_ovl7;
extern FUNCLIST D_801CD600_ovl7;
void func_800B6E84(GObj *);
void func_801B20BC_ovl7(GObj *);
void func_801B1FD8_ovl7(GObj *);
extern s32 D_800E8AE0[], D_800E98E0[], D_800E5F90[];
extern f32 D_800E6BD0[];
extern FUNCLIST D_801CD5D0_ovl7;
extern FUNCLIST D_801CD5D8_ovl7;
extern FUNCLIST D_801CD5EC_ovl7;
extern FUNCLIST D_801CD600_ovl7;
extern FUNCLIST D_801CD60C_ovl7;



void func_801B1E60_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6E84;
    D_800DF150[omCurrentObj->objId] = func_801B20BC_ovl7;
    func_801A0D50_ovl7(func_801B1FD8_ovl7);
    if (D_800E8AE0[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A3E80_ovl7(arg0);
    }
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD5D0_ovl7);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_801CD5D8_ovl7);
    }
}

void func_801B1FD8_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801CD5D8_ovl7);
    }
}

void func_801B2058_ovl7(GObj *arg0) {
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0x28;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2094_ovl7(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801B20BC_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD5EC_ovl7);
}

extern struct EnemyEventTable D_801CB7AC_ovl7;
extern f32 *D_801CAA48_ovl7;
/* D_801CE2C0_ovl7 = 1.6f : now emitted by this TU */
void func_801A2ADC_ovl7(f32 **);
void func_800B3520(void);
void func_800A9EA4(s32);
s32 func_8019A900_ovl7(void *);
f32 func_8019B608_ovl7(s32);

void func_801B2104_ovl7(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_801CAA48_ovl7;
    func_801A2ADC_ovl7(&D_801CAA48_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB7AC_ovl7;
    func_800B3520();
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.6f;
    func_800A9EA4(0x1008F);
    ohSleep(*(s32 *) &D_800E9AA0[omCurrentObj->objId]);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801B2204_ovl7(GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E6F50[omCurrentObj->objId].originOffset < 120.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B1FD8_ovl7);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_8019F3B0_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern f32 *D_801CAA0C_ovl7;
extern struct EnemyEventTable D_801CB494_ovl7;

void func_801B22D0_ovl7(s32 arg0) {
    f32 *temp_v0_3;
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 *temp_v1_3;
    f32 var_f0;
    f32 var_f0_2;
    s32 var_s0;
    u32 temp_v0;
    u32 temp_v0_4;
    u32 temp_v0_5;

    D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)0x50;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_801CAA0C_ovl7;
    func_801A2ADC_ovl7(&D_801CAA0C_ovl7);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB494_ovl7;
    func_800B3520();
    D_800E9020[omCurrentObj->objId] = 0.0f;
    var_s0 = 0;
    do {
        temp_v0 = omCurrentObj->objId;
        if (D_800E6A10[temp_v0] == 1.0f) {
            var_f0 = -0.09817477f;
        } else {
            var_f0 = 0.09817477f;
        }
        temp_v1 = &D_800E9020[temp_v0];
        *temp_v1 += var_f0;
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (1.6f + (-0.1f * (f32) var_s0));
        ohSleep(1, omCurrentObj);
        var_s0 += 1;
    } while (var_s0 != 0x10);
    temp_v0_3 = &D_800E6A10[omCurrentObj->objId];
    *temp_v0_3 = -*temp_v0_3;
    temp_v1_2 = &D_800E9020[omCurrentObj->objId];
    *temp_v1_2 = -*temp_v1_2;
    do {
        temp_v0_4 = omCurrentObj->objId;
        if (D_800E6A10[temp_v0_4] == 1.0f) {
            var_f0_2 = 0.09817477f;
        } else {
            var_f0_2 = -0.09817477f;
        }
        temp_v1_3 = &D_800E9020[temp_v0_4];
        *temp_v1_3 += var_f0_2;
        temp_v0_5 = omCurrentObj->objId;
        D_800E64D0[temp_v0_5] = D_800E6A10[temp_v0_5] * (1.6f - (0.1f * (f32) var_s0));
        ohSleep(1, omCurrentObj);
        var_s0 -= 1;
    } while (var_s0 != 0);
    D_800E9020[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B22D0_ovl7.s")
#endif

/* MATCHED (147 insns).  Two things decided it: the two lean loops are
   do/while (the ROM enters both unconditionally and tests at the bottom with
   bnel), and `i = 0` belongs INSIDE the `want != facing` block after the
   D_800E9020 clear -- written before the if, IDO sinks a `move s0,zero` into
   both arms of the want select and the whole body shifts.  `want = tp.unk0`
   is an int->float conversion (cvt.s.w) off the 8-byte track-pos struct at
   sp+0x60.  LP64-clean, so the PORT arm is deleted. */
void func_801B2588_ovl7(GObj *arg0) {
    extern f32 D_800E9020[];
    extern f32 gameTicksPerDraw;
    extern s32 D_800DDFD0[];
    struct Ovl7_9_TrackPos {
        s32 unk0;
        f32 unk4;
    } tp;
    f32 want;
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x10091);
    while (1) {
        if (func_8019A900_ovl7(&tp) != 0) {
            want = tp.unk0;
        } else {
            want = func_8019B608_ovl7(0);
        }
        if (want != D_800E6A10[omCurrentObj->objId]) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
            i = 0;
            do {
                D_800E9020[omCurrentObj->objId] += (D_800E6A10[omCurrentObj->objId] == 1.0f) ? -0.09817477f : 0.09817477f;
                ohSleep(1);
                i++;
            } while (i != 0x10);
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
            do {
                D_800E9020[omCurrentObj->objId] += (D_800E6A10[omCurrentObj->objId] == 1.0f) ? 0.09817477f : -0.09817477f;
                ohSleep(1);
                i--;
            } while (i != 0);
            D_800E9020[omCurrentObj->objId] = 0.0f;
        }
        ohSleep(1);
    }
}


void func_801B27D4_ovl7(GObj *arg0) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E6F50[omCurrentObj->objId].originOffset < 160.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B1FD8_ovl7);
    }
    func_8019F3B0_ovl7();
}

void func_801B287C_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8158_ovl7;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_80199F58_ovl7(arg0);
    func_800AA018(0x1008E);
    func_800AA154(0x1008D);
    func_800AA018(0x1008C);
    func_800AA864(0x1008B, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801B294C_ovl7(GObj *arg0) {
    extern f32 D_800E9020[];
    extern s32 D_800E83E0[];
/* D_801CE2E8_ovl7 = 0.09817477f : now emitted by this TU */
    f32 t;

    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E9020[omCurrentObj->objId] != 0.0f) {
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            t = 0.09817477f;
        } else {
            t = -0.09817477f;
        }
        D_800E9020[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + t;
        if ((D_800E9020[omCurrentObj->objId] < 0 ? -D_800E9020[omCurrentObj->objId] : D_800E9020[omCurrentObj->objId]) < 0.09817477f) {
            D_800E9020[omCurrentObj->objId] = 0.0f;
        }
    }
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        func_800FD570(0, 3, 0.0f, 0.0f, 0.0f);
    }
}

void func_801B2A94_ovl7(GObj *arg0) {
    func_800FD570(0, 3, 0.0f, 0.0f, 0.0f);
    func_80198880_ovl7(D_801C3408_ovl7);
    func_801A3E80_ovl7(arg0);
}

void func_801B2AE0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801B2D90_ovl7;
    func_801A0D50_ovl7(func_801B2C78_ovl7);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    ent->unk42 = 0;
    *(s8 *) &ent->unk38 = -1;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f;
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0x3C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD5F8_ovl7);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_801CD600_ovl7);
    }
}

void func_801B2C78_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801CD600_ovl7);
    }
}

void func_801B2CF8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2D38_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801B2D90_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_801CD60C_ovl7);
}

/* MATCHED 2026-08-25 (was 15/118).  Harvested from a permuter output-0-1 that
   the queue had scored zero and never published.
   The whole residue was a $v0/$v1 rotation across the second wait loop and
   everything after it (15 words: the objId reload, its sll, the two addu base
   forms and the lwc1/swc1 through them).  It is LEVER 61: an empty-bodied
   `do { ... } while (0);` wrapped around the loop's single statement is a
   SCHEDULING BARRIER.  It emits no instruction of its own -- 118 words either
   way -- and it stops IDO folding the loop's own objId read into the block
   after the loop, which is what frees $v0 for the ROM's addressing.
   Negative measured on the way, so nobody retries it: LEVER 56's unbraced
   loop body (`while (...) ohSleep(1);` with no braces at all) is NOT
   equivalent here and scores the original 15/118.  Only the do-while wrapper
   moves it. */
void func_801B2DD8_ovl7(GObj *arg0) {
    s32 func_800AF230();
    extern struct EnemyEventTable D_801CB7D0_ovl7;
    extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB7D0_ovl7;
    func_800B33F4();
    func_800AA018(0x1009B);
    D_800E3210[omCurrentObj->objId] = -0.4f;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3C90[omCurrentObj->objId] = 0.4f;
    while (func_800AF230() == 0) {
        if (gEntitiesNextPosYArray[omCurrentObj->objId] <= D_800EA6E0[omCurrentObj->objId]) {
            func_800B33F4();
        }
        ohSleep(1);
    }
    while (D_800EA6E0[omCurrentObj->objId] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do { ohSleep(1); } while (0);
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_800B33F4();
    func_800AA154(0x1009C);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801B2FB0_ovl7(GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] != 1) {
        D_800E9C60[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId] - 1;
        if (D_800E9C60[omCurrentObj->objId] <= 0) {
            D_800E9C60[omCurrentObj->objId] = 0;
        }
        if (D_800E9C60[omCurrentObj->objId] == 0) {
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                if (D_800E6F50[omCurrentObj->objId].originOffset < 160.0f) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B2C78_ovl7);
                }
            }
        }
        D_800E8920[omCurrentObj->objId] = 0;
        if (D_800E9E20[omCurrentObj->objId] > 0) {
            D_800E9E20[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] - 1;
            func_801A0D74_ovl7(arg0);
        }
        func_8019F3B0_ovl7();
    }
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern struct EnemyEventTable D_801CB7D0_ovl7;

void func_801B3110_ovl7(s32 arg0) {
    GObj *temp_v1;
    s32 var_v0;
    s32 var_v0_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB7D0_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    func_800AA018(0x1009F);
    temp_v1 = omCurrentObj;
    D_800E3210[temp_v1->objId] = -0.4f;
    D_800E3750[temp_v1->objId] = 0.0f;
    D_800E3C90[temp_v1->objId] = 0.4f;
    D_800E9AA0[temp_v1->objId] = (struct EntityThing800E9AA0 *)1;
    temp_v0 = temp_v1->objId;
    var_v0 = temp_v0 * 4;
    if (D_800E9AA0[temp_v0] != NULL) {
        do {
            *(D_800E3210 + var_v0) = 1.05f;
            D_800E3750[temp_v1->objId] = -0.05f;
            D_800E3C90[temp_v1->objId] = 1.05f;
            temp_v0_3 = temp_v1->objId;
            var_v0_2 = temp_v0_3 * 4;
            if (D_800E3210[temp_v0_3] > 0.0f) {
loop_3:
                if (*(D_800EA8A0 + var_v0_2) < *(gEntitiesNextPosYArray + var_v0_2)) {
                    *(D_800E9AA0 + var_v0_2) = 0;
                } else {
                    ohSleep(1);
                    temp_v0_4 = omCurrentObj->objId;
                    var_v0_2 = temp_v0_4 * 4;
                    if (D_800E3210[temp_v0_4] > 0.0f) {
                        goto loop_3;
                    }
                }
            }
            func_800B33F4();
            func_800AF27C();
            temp_v0_2 = omCurrentObj->objId;
            var_v0 = temp_v0_2 * 4;
        } while (D_800E9AA0[temp_v0_2] != NULL);
    }
    *(gEntitiesNextPosYArray + var_v0) = *(D_800EA8A0 + var_v0);
    gEntityFuncListIDArray[temp_v1->objId] = 0;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_9/func_801B3110_ovl7.s")
#endif

void func_801B338C_ovl7(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = 40.0f + gEntitiesNextPosYArray[omCurrentObj->objId];
}

void func_801B33E8_ovl7(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 40.0f;
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
}

void func_801B3444_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E9C60[omCurrentObj->objId] = 0x5A;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AA018(0x10099);
    D_800DF310[omCurrentObj->objId] = func_801B35CC_ovl7;
    func_800AF27C();
    if ((D_800E7880[omCurrentObj->objId] == 0) || (D_800E7880[omCurrentObj->objId] == 1)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
}

void func_801B3540_ovl7(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C81A0_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = D_801C820C_ovl7;
        func_8019F9D0_ovl7(0);
    }
}

void func_801B35CC_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    D_800E98E0[omCurrentObj->objId] = (s32) arg2;
}

void func_801B3600_ovl7(GObj *arg0) {
    if (D_801D0A98_ovl7 != 0) {
        func_80111C4C(func_80111A04(D_801C8278_ovl7, omCurrentObj->objId));
    }
}

void func_801B3648_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    D_801D0A98_ovl7 = arg2;
}

