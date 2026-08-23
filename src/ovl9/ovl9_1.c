#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"

extern FUNCLIST D_8021BAE8_ovl9;
extern FUNCLIST D_8021BB40_ovl9;
extern FUNCLIST D_8021BC00_ovl9;
extern FUNCLIST D_8021BC20_ovl9;
extern FUNCLIST D_8021BC40_ovl9;

extern s32 D_801C7F84_ovl7;
extern void func_800B6A2C(struct GObj *);
extern void func_801A0D50_ovl7(void *);
extern FUNCLIST D_8021BAB0_ovl9;
extern FUNCLIST D_8021BABC_ovl9;
void func_801D0FAC_ovl9(struct GObj *);
void func_801D0D78_ovl9(struct GObj *);

void func_801D0C60_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801D0FAC_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_801A0D50_ovl7(func_801D0D78_ovl9);
    D_800E8920[omCurrentObj->objId] = 1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_8021BAB0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, &D_8021BABC_ovl9);
    }
}

extern FUNCLIST D_8021BABC_ovl9;

void func_801D0D78_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 11, D_8021BABC_ovl9);
    }
}

void func_801D0DF8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0E88_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0F1C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 100;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801D0FAC_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 8, &D_8021BAE8_ovl9);
}

/* D_8021CE60_ovl9, D_8021CE64_ovl9, D_8021CE68_ovl9: literals, this TU owns its .rodata */
extern s32 D_801C7F84_ovl7;
extern struct EnemyEventTable D_801CB668;
void func_800B3520(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
extern void ohSleep(s32);

void func_801D0FF4_ovl9(struct GObj *arg0, s32 arg1) {
    s32 i;

    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB668;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    func_800A9EA4(0x1000F);
    if (arg1 != 0) {
        D_800E9020[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.570796371f;
    } else {
        D_800E9020[omCurrentObj->objId] = 0.0f;
    }
    D_800E9AA0[omCurrentObj->objId].as_s32 = arg1;
    for (i = 0; i < 6; i++) {
        D_800E9020[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * ((arg1 != 0) ? 0.2617993951f : -0.2617993951f)) + D_800E9020[omCurrentObj->objId];
        ohSleep(1);
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
}

/* K&R form is load-bearing on every repeat of this declaration in this file
 * (9x): its real signature is s32 func_801A0D74_ovl7(GObj *), but call sites
 * here and across the tree omit the arg -- the ROM relies on whatever GObj*
 * is already sitting in $a0. An ANSI prototype breaks compilation with
 * "too few arguments". */
void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D123C_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

extern void func_800B6B8C(struct GObj *);
extern struct EnemyEventTable D_801CB5B4;
extern s32 D_801C7F84_ovl7;
f32 func_8019DA50_ovl7(void);
s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);
void func_801D0FF4_ovl9(struct GObj *, s32);

void func_801D12DC_ovl9(struct GObj *arg0) {
    f32 absAngle;
    s32 sp60;
    f32 dy;
    f32 absDy;

    if (1 == D_800E9AA0[omCurrentObj->objId].as_s32) {
        func_801D0FF4_ovl9(arg0, 0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB5B4;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    *(u32 *) &D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800A9EA4(0x1000F);
    do {
        ohSleep(1);
        if (D_800E98E0[omCurrentObj->objId] <= 0) {
            absAngle = ABSF(func_8019DA50_ovl7());
            dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
            absDy = ABSF(dy);
            switch (D_800E7880[omCurrentObj->objId]) {
                case 0:
                    if ((absAngle < 160.0f) && (absDy < 120.0f)) {
                        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
                    } else if ((absAngle < 240.0f) && (absDy < 120.0f)) {
                        if (func_8019A900_ovl7(&sp60) != 0) {
                            D_800E6A10[omCurrentObj->objId] = (f32) sp60;
                        } else {
                            D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
                        }
                        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
                    }
                    break;
                case 2:
                    if ((absAngle < 120.0f) && (dy < 120.0f) && (-480.0f < dy)) {
                        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
                    }
                    break;
            }
        }
    } while (gEntityFuncListIDArray[omCurrentObj->objId] == 0);
}

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1678_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]--;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern struct EnemyEventTable D_801CB5D8;

void func_801D1718_ovl9(GObj *arg0) {
    DObj *temp_v0;
    GObj *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f12;
    f32 var_f14;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u8 temp_v0_2;
    u8 temp_v0_3;

    temp_a1 = omCurrentObj;
    temp_v1 = temp_a1->objId;
    var_v1 = temp_v1 * 4;
    if (D_800E9AA0[temp_v1].as_u32 == 0) {
        func_801D0FF4_ovl9(arg0, 1);
        var_v1 = omCurrentObj->objId * 4;
    }
    *(D_800DEF90 + var_v1) = func_800B6A2C;
    D_800DDFD0[temp_a1->objId] = 2;
    D_800E1B50[temp_a1->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB5D8;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    temp_v0 = arg0->data.dobj->firstChild;
    temp_f0 = temp_v0->angle.v.z;
    temp_v0->angle.v.y = temp_f0;
    arg0->data.dobj->firstChild->angle.v.x = temp_f0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
    func_800A9EA4(0x10010);
    temp_v1_2 = omCurrentObj->objId;
    D_800E64D0[temp_v1_2] = D_800E6A10[temp_v1_2];
    do {
        ohSleep(1);
        temp_a0 = omCurrentObj->objId;
        temp_v0_2 = D_800E7880[temp_a0];
        var_v1_2 = temp_a0 * 4;
        if (temp_v0_2 != 0) {
            var_v1_2 = temp_a0 * 4;
            if (temp_v0_2 != 1) {
                var_v1_2 = temp_a0 * 4;
                if (temp_v0_2 != 2) {
                    var_v1_2 = temp_a0 * 4;
                } else {
                    if (gEntitiesPosYArray[temp_a0] != gEntitiesNextPosYArray[temp_a0]) {
                        gEntityFuncListIDArray[temp_a0] = 3;
                        goto block_15;
                    }
                    if (D_800E9C60[temp_a0] <= 0) {
                        gEntityFuncListIDArray[temp_a0] = 2;
                        goto block_15;
                    }
                }
            } else if (D_800E9C60[temp_a0] <= 0) {
                gEntityFuncListIDArray[temp_a0] = 2;
                goto block_15;
            }
        } else if (gEntitiesPosYArray[temp_a0] != gEntitiesNextPosYArray[temp_a0]) {
            gEntityFuncListIDArray[temp_a0] = 3;
block_15:
            var_v1_2 = omCurrentObj->objId * 4;
        }
        if (*(D_800E98E0 + var_v1_2) <= 0) {
            if (func_8019DA50_ovl7() < 0.0f) {
                var_f12 = -func_8019DA50_ovl7();
            } else {
                var_f12 = func_8019DA50_ovl7();
            }
            temp_a0_2 = omCurrentObj->objId;
            var_v1_2 = temp_a0_2 * 4;
            temp_f0_2 = *gEntitiesNextPosYArray + 20.0f;
            temp_f2 = gEntitiesNextPosYArray[temp_a0_2];
            if (temp_f0_2 < temp_f2) {
                var_f14 = -(temp_f0_2 - temp_f2);
            } else {
                var_f14 = temp_f0_2 - temp_f2;
            }
            temp_v0_3 = D_800E7880[temp_a0_2];
            switch (temp_v0_3) {                    /* irregular */
            case 0:
                if ((var_f12 < 160.0f) && (var_f14 < 120.0f)) {
                    if (gEntitiesPosYArray[temp_a0_2] == temp_f2) {
                        gEntityFuncListIDArray[temp_a0_2] = 7;
                        goto block_38;
                    }
                } else if (((var_f12 > 240.0f) || (var_f14 > 120.0f)) && (gEntitiesPosYArray[temp_a0_2] == temp_f2)) {
                    gEntityFuncListIDArray[temp_a0_2] = 0;
block_38:
                    var_v1_2 = omCurrentObj->objId * 4;
                }
                break;
            case 1:
                if ((var_f12 < 160.0f) && (var_f14 < 120.0f) && (gEntitiesPosYArray[temp_a0_2] == temp_f2)) {
                    gEntityFuncListIDArray[temp_a0_2] = 7;
                    goto block_38;
                }
                break;
            }
        }
    } while (*(gEntityFuncListIDArray + var_v1_2) == 1);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D1718_ovl9.s")
#endif

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D1BCC_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    D_800E9C60[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId] - 1;
    if (D_800E9C60[omCurrentObj->objId] < 0) {
        D_800E9C60[omCurrentObj->objId] = 0;
    }
    func_801A0D74_ovl7(arg0);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801C7F84_ovl7;
extern struct EnemyEventTable D_801CB668;
/* D_8021CE6C_ovl9: literal, this TU owns its .rodata */
/* D_8021CE70_ovl9: literal, this TU owns its .rodata */
void func_800B3520(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
extern void ohSleep(s32);

void func_801D1CA8_ovl9(struct GObj *arg0) {
    s32 i;
    f32 step;

    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB668;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    func_800A9EA4(0x10010);
    D_800E9020[omCurrentObj->objId] = 0.0f;
    step = -0.2617994f;
    for (i = 0; i < 6; i++) {
        D_800E9020[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * step) + D_800E9020[omCurrentObj->objId];
        ohSleep(1);
    }
    i--;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E9020[omCurrentObj->objId] = -D_800E9020[omCurrentObj->objId];
    if (i != 0) {
        step = 0.2617994f;
        do {
            D_800E9020[omCurrentObj->objId] = (D_800E6A10[omCurrentObj->objId] * step) + D_800E9020[omCurrentObj->objId];
            ohSleep(1);
            i--;
        } while (i != 0);
    }
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    D_800E9C60[omCurrentObj->objId] = 0xC8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern struct EnemyEventTable D_801CB620;
extern s32 D_8021BB08_ovl9[];

void func_801D1F30_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_u32 == 1) {
        func_801D0FF4_ovl9(arg0, 0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB620;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x1000C : 0x1000B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    do {
        ohSleep(1);
        if (gEntitiesPosYArray[omCurrentObj->objId] == gEntitiesNextPosYArray[omCurrentObj->objId]) {
            D_800E98E0[omCurrentObj->objId] = 0x3C;
            D_800E9C60[omCurrentObj->objId] = 0xC8;
            gEntityFuncListIDArray[omCurrentObj->objId] = D_8021BB08_ovl9[D_800E7880[omCurrentObj->objId]];
        } else if (gEntitiesPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            break;
        }
    } while (gEntityFuncListIDArray[omCurrentObj->objId] == 3);
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2278_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801C7F84_ovl7;
extern struct EnemyEventTable D_801CB620;
void func_800B6A2C(struct GObj *);
void func_800B3520(void);
void func_800A9EA4(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_801D336C_ovl9(struct GObj *);

void func_801D22A0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB620;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x1000C : 0x1000B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    func_801D336C_ovl9(arg0);
    D_800E9C60[omCurrentObj->objId] = 0xC8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801C7FCC_ovl7;
extern struct EnemyEventTable D_801CB5FC;
void func_800AA018(s32);

void func_801D2480_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FCC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB5FC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B3520();
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x = arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x10009 : 0x10008);
    D_800E3210[omCurrentObj->objId] = -16.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    curObjSleepForever();
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2648_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

/* D_8021CE74_ovl9: literal, this TU owns its .rodata */
extern s32 D_8021BB08_ovl9[];
void func_800FB914(s32);
/* K&R form is load-bearing here: its real signature is
 * void func_801A3E80_ovl7(GObj *), but this file calls it with both 0 args
 * (line ~508) and 1 arg (line ~672) -- the ROM relies on whatever GObj* is
 * already sitting in $a0 at the 0-arg site. An ANSI prototype breaks
 * compilation with "too few arguments". */
void func_801A3E80_ovl7();

void func_801D2670_ovl9(struct GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A3E80_ovl7();
    }
    func_800FB914(1);
    play_sound(0x98);
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB668;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x1000E : 0x1000D);
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.1f;
    ohSleep(1);
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_800B3520();
    ohSleep(0x1C);
    if (D_800EA6E0[omCurrentObj->objId] != D_800EA8A0[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        if (D_800EA6E0[omCurrentObj->objId] < D_800EA8A0[omCurrentObj->objId]) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        }
    } else {
        D_800E98E0[omCurrentObj->objId] = 0x3C;
        D_800E9C60[omCurrentObj->objId] = 0x64;
        gEntityFuncListIDArray[omCurrentObj->objId] = D_8021BB08_ovl9[D_800E7880[omCurrentObj->objId]];
    }
}

void func_801A0D74_ovl7();
void func_80199688_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D29BC_ovl9(GObj *arg0) {
    func_801A0D74_ovl7(arg0);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_80199688_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}

s32 func_8019A900_ovl7(s32 *);
f32 func_8019B608_ovl7(s32);
void func_801D0FF4_ovl9(struct GObj *, s32);

void func_801D2A14_ovl9(struct GObj *arg0) {
    s32 pad;
    s32 sp28;
    f32 temp;

    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 8;
    } else {
        if (func_8019A900_ovl7(&sp28) != 0) {
            temp = (f32) sp28;
        } else {
            temp = func_8019B608_ovl7(0);
        }
        if (temp != D_800E6A10[omCurrentObj->objId]) {
            if (D_800E9AA0[omCurrentObj->objId].as_s32 == 1) {
                func_801D0FF4_ovl9(arg0, 0);
            }
            D_800E6A10[omCurrentObj->objId] = temp;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 9;
    }
}

extern s32 D_801C7FCC_ovl7;
extern struct EnemyEventTable D_801CB5FC;
void func_800AA018(s32);

void func_801D2B3C_ovl9(struct GObj *arg0) {
    s32 pad;
    s32 sp38;
    s32 pad2;

    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 1) {
        func_801D0FF4_ovl9(arg0, 0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7FCC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB5FC;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0x64;
    if (func_8019A900_ovl7(&sp38) != 0) {
        D_800E6A10[omCurrentObj->objId] = (f32) sp38;
    } else {
        D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    D_800E3210[omCurrentObj->objId] = 16.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x10009 : 0x10008);
    ohSleep(8);
    func_800B3520();
    ohSleep(0x18);
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D2E14_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern struct EnemyEventTable D_801CB620;

void func_801D2E3C_ovl9(struct GObj *arg0) {
    s32 i;
    s32 sp50;
    s32 pad0;
    s32 pad1;

    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 1) {
        func_801D0FF4_ovl9(arg0, 0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB620;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    arg0->data.dobj->firstChild->angle.v.z = 0.0f;
    arg0->data.dobj->firstChild->angle.v.x =
    arg0->data.dobj->firstChild->angle.v.y = arg0->data.dobj->firstChild->angle.v.z;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    if (func_8019A900_ovl7(&sp50) != 0) {
        D_800E6A10[omCurrentObj->objId] = (f32) sp50;
    } else {
        D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    }
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x1000C : 0x1000B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0x64;
    for (i = 0; i != 0x28; i++) {
        ohSleep(1);
        if ((gEntitiesNextPosYArray[omCurrentObj->objId] == gEntitiesPosYArray[omCurrentObj->objId]) &&
            ((D_800E8AE0[omCurrentObj->objId] & 1) != 0)) {
            func_801A3E80_ovl7(arg0);
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D315C_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_8021BB08_ovl9[];

void func_801D3184_ovl9(GObj *arg0) {
    if (gEntitiesNextPosYArray[omCurrentObj->objId] != gEntitiesPosYArray[omCurrentObj->objId]) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        if (gEntitiesPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[omCurrentObj->objId]) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
        }
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = D_8021BB08_ovl9[D_800E7880[omCurrentObj->objId]];
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D0D78_ovl9(struct GObj *);

void func_801D3248_ovl9(GObj *arg0) {
    if (D_800E7880[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D0D78_ovl9);
    }
}

void func_801D32B8_ovl9(GObj *arg0) {
    D_800E3C90[omCurrentObj->objId] = ABSF((D_800E8AE0[omCurrentObj->objId] & 1) ? 4.0f : 16.0f);
}

void func_800AECC0(f32);
void func_800AED20(f32);

void func_801D336C_ovl9(GObj *arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2;
        func_800AECC0(gameTicksPerDraw * 0.5f);
        func_800AED20(gameTicksPerDraw * 0.5f);
    }
}

extern s32 D_801C324C;
extern s32 D_801C8038_ovl7;
extern FUNCLIST D_8021BB14_ovl9;
extern FUNCLIST D_8021BB30_ovl9;
void func_80198880_ovl7(void *);
void func_801D3698_ovl9(struct GObj *);
void func_801D3618_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);

void func_801D3414_ovl9(struct GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_80198880_ovl7(&D_801C324C);
    ent->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801D3698_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8038_ovl7;
    func_801A0D50_ovl7(func_801D3618_ovl9);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 7, &D_8021BB14_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021BB30_ovl9);
    }
}

extern FUNCLIST D_8021BB30_ovl9;

void func_801D3618_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021BB30_ovl9);
    }
}

void func_801D3698_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BB40_ovl9);
}

extern void func_800B6FD8(s32);

void func_801D36E0_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

/* D_8021CE78_ovl9 .. D_8021CE88_ovl9: literals, this TU owns its .rodata */
extern void func_800B72AC(s32);
f32 func_800F9828(s32, s32);
f32 func_8019B608_ovl7(s32);

void func_801D3720_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    switch (D_800E7880[omCurrentObj->objId]) {
        case 1:
            {
                f32 t = func_800F9828(omCurrentObj->objId, 0);

                if (t == 9999.0f) {
                    D_800EB160[omCurrentObj->objId] = func_8019B608_ovl7(0);
                } else if (0.0f < t) {
                    D_800EB160[omCurrentObj->objId] = 1.0f;
                } else {
                    D_800EB160[omCurrentObj->objId] = -1.0f;
                }
            }
            if (1.0f == D_800EB160[omCurrentObj->objId]) {
                D_800EADE0[omCurrentObj->objId] = 4.0f;
            } else {
                D_800EADE0[omCurrentObj->objId] = -4.0f;
            }
            if (1.0f == D_800EB160[omCurrentObj->objId]) {
                D_800EAFA0[omCurrentObj->objId] = -0.1333333403f;
            } else {
                D_800EAFA0[omCurrentObj->objId] = 0.1333333403f;
            }
            break;
        case 2:
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                D_800EADE0[omCurrentObj->objId] = 4.0f;
            } else {
                D_800EADE0[omCurrentObj->objId] = -4.0f;
            }
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                D_800EAFA0[omCurrentObj->objId] = -0.1333333403f;
            } else {
                D_800EAFA0[omCurrentObj->objId] = 0.1333333403f;
            }
            break;
    }
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

/* D_8021CE8C_ovl9: literal, this TU owns its .rodata */
extern void func_800B72AC(s32);
f32 func_800F9828(s32, s32);
f32 func_8019B608_ovl7(s32);

void func_801D39F0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    switch (D_800E7880[omCurrentObj->objId]) {
        case 3:
            {
                f32 t = func_800F9828(omCurrentObj->objId, 0);

                if (t == 9999.0f) {
                    D_800EB160[omCurrentObj->objId] = func_8019B608_ovl7(0);
                } else if (0.0f < t) {
                    D_800EB160[omCurrentObj->objId] = 1.0f;
                } else {
                    D_800EB160[omCurrentObj->objId] = -1.0f;
                }
            }
            if (1.0f == D_800EB160[omCurrentObj->objId]) {
                D_800EADE0[omCurrentObj->objId] = 4.0f;
            } else {
                D_800EADE0[omCurrentObj->objId] = -4.0f;
            }
            break;
        case 4:
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                D_800EADE0[omCurrentObj->objId] = 4.0f;
            } else {
                D_800EADE0[omCurrentObj->objId] = -4.0f;
            }
            break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

/* D_8021CE90_ovl9: literal, this TU owns its .rodata */
struct Ovl9SpawnPoint {
    u8 unk0;
    u8 filler1[0xB];
    f32 unkC;
    u8 filler10[0x14];
    f32 unk24;
};

struct Ovl9SpawnPoint *func_800FCE50(void);
f32 func_800F951C(s32, f32, s32, f32);
extern f32 sqrtf(f32);
extern f32 atan2f(f32, f32);
void func_801D36E0_ovl9(struct GObj *);

void func_801D3BE8_ovl9(struct GObj *arg0) {
    struct Ovl9SpawnPoint *p;
    f32 t;
    f32 dy;

    p = func_800FCE50();
    if (p == NULL) {
        D_800E7880[omCurrentObj->objId] = 0;
        func_801D36E0_ovl9(arg0);
    }
    t = func_800F951C(D_800E5F90[omCurrentObj->objId], D_800E6BD0[omCurrentObj->objId], p->unk0, p->unk24);
    if (t == 9999.0f) {
        D_800E7880[omCurrentObj->objId] = 0;
        func_801D36E0_ovl9(arg0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    dy = p->unkC - gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = sqrtf((t * t) + (dy * dy));
    D_800EB320[omCurrentObj->objId] = atan2f(t, dy);
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = D_800E5F90[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801A3280_ovl7(void);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);

void func_801D3E10_ovl9(GObj *arg0) {
    func_801A3280_ovl7();
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1001F);
    curObjSleepForever();
}

void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D3E7C_ovl9(GObj *arg0) {
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801D3EA4_ovl9(s32 arg0) {
    GObj *temp_v1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f2_5;
    f32 var_f2_6;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_13;
    u32 temp_v0_14;
    u32 temp_v0_15;
    u32 temp_v0_16;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;
    u8 temp_a0;
    u8 temp_a0_2;

    func_801A3280_ovl7();
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x1001F);
    temp_v1 = omCurrentObj;
loop_1:
    temp_a1 = temp_v1->objId;
    temp_a0 = D_800E7880[temp_a1];
    switch (temp_a0) {                              /* switch 1; irregular */
    case 1:                                         /* switch 1 */
        D_800E64D0[temp_a1] = D_800EADE0[temp_a1];
        temp_v0 = temp_v1->objId;
        D_800E6690[temp_v0] = D_800EAFA0[temp_v0];
        temp_v0_2 = temp_v1->objId;
        temp_f0 = D_800EADE0[temp_v0_2];
        if (temp_f0 < 0.0f) {
            var_f2 = -temp_f0;
        } else {
            var_f2 = temp_f0;
        }
        if (var_f2 < 0.0f) {
            if (temp_f0 < 0.0f) {
                var_f2_2 = -temp_f0;
            } else {
                var_f2_2 = temp_f0;
            }
            D_800E6850[temp_v0_2] = -var_f2_2;
        } else {
            if (temp_f0 < 0.0f) {
                var_f2_3 = -temp_f0;
            } else {
                var_f2_3 = temp_f0;
            }
            D_800E6850[temp_v0_2] = var_f2_3;
        }
        break;
    case 2:                                         /* switch 1 */
        D_800E3210[temp_a1] = D_800EADE0[temp_a1];
        temp_v0_3 = temp_v1->objId;
        D_800E3750[temp_v0_3] = D_800EAFA0[temp_v0_3];
        temp_v0_4 = temp_v1->objId;
        temp_f0_2 = D_800EADE0[temp_v0_4];
        if (temp_f0_2 < 0.0f) {
            var_f2_4 = -temp_f0_2;
        } else {
            var_f2_4 = temp_f0_2;
        }
        if (var_f2_4 < 0.0f) {
            if (temp_f0_2 < 0.0f) {
                var_f2_5 = -temp_f0_2;
            } else {
                var_f2_5 = temp_f0_2;
            }
            D_800E3C90[temp_v0_4] = -var_f2_5;
        } else {
            if (temp_f0_2 < 0.0f) {
                var_f2_6 = -temp_f0_2;
            } else {
                var_f2_6 = temp_f0_2;
            }
            D_800E3C90[temp_v0_4] = var_f2_6;
        }
        break;
    }
    ohSleep(0x3B);
    temp_v0_5 = omCurrentObj->objId;
    D_800E5F90[temp_v0_5] = D_800E98E0[temp_v0_5];
    temp_v0_6 = omCurrentObj->objId;
    D_800E6BD0[temp_v0_6] = D_800EA6E0[temp_v0_6];
    temp_v0_7 = omCurrentObj->objId;
    gEntitiesNextPosXArray[temp_v0_7] = D_800EA8A0[temp_v0_7];
    temp_v0_8 = omCurrentObj->objId;
    gEntitiesNextPosYArray[temp_v0_8] = D_800EAA60[temp_v0_8];
    temp_v0_9 = omCurrentObj->objId;
    gEntitiesNextPosZArray[temp_v0_9] = D_800EAC20[temp_v0_9];
    temp_a1_2 = omCurrentObj->objId;
    temp_a0_2 = D_800E7880[temp_a1_2];
    switch (temp_a0_2) {                            /* switch 2; irregular */
    case 1:                                         /* switch 2 */
        D_800E64D0[temp_a1_2] = -D_800EADE0[temp_a1_2];
        temp_v0_10 = omCurrentObj->objId;
        D_800E6690[temp_v0_10] = -D_800EAFA0[temp_v0_10];
        break;
    case 2:                                         /* switch 2 */
        D_800E3210[temp_a1_2] = -D_800EADE0[temp_a1_2];
        temp_v0_11 = omCurrentObj->objId;
        D_800E3750[temp_v0_11] = -D_800EAFA0[temp_v0_11];
        break;
    }
    ohSleep(0x3B);
    temp_v0_12 = omCurrentObj->objId;
    D_800E5F90[temp_v0_12] = D_800E98E0[temp_v0_12];
    temp_v0_13 = omCurrentObj->objId;
    D_800E6BD0[temp_v0_13] = D_800EA6E0[temp_v0_13];
    temp_v0_14 = omCurrentObj->objId;
    gEntitiesNextPosXArray[temp_v0_14] = D_800EA8A0[temp_v0_14];
    temp_v0_15 = omCurrentObj->objId;
    gEntitiesNextPosYArray[temp_v0_15] = D_800EAA60[temp_v0_15];
    temp_v0_16 = omCurrentObj->objId;
    gEntitiesNextPosZArray[temp_v0_16] = D_800EAC20[temp_v0_16];
    goto loop_1;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D3EA4_ovl9.s")
#endif

extern struct EnemyEventTable D_801CB68C;
void func_800A9EA4(s32);

void func_801D4314_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB68C;
    func_800A9EA4(0x1001F);
    switch (D_800E7880[omCurrentObj->objId]) {
        case 3:
            D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
            D_800E64D0[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0;
            D_800E6850[omCurrentObj->objId] = ABSF(ABSF(D_800EADE0[omCurrentObj->objId]));
            break;
        case 4:
            D_800EAFA0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
            D_800E3210[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
            D_800E3750[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = ABSF(ABSF(D_800EADE0[omCurrentObj->objId]));
            break;
    }
    curObjSleepForever();
}

void func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

#ifdef NON_MATCHING
/* 21/144: a pervasive whole-function $a0/$a1 register-naming swap -- the
 * ROM holds omCurrentObj in $a1 and D_800E9AA0's base in $a0 throughout;
 * this draft gets the same shape with the pair swapped. All 21 diffs are
 * that one swap (lw/addu/lwc1/swc1 pairs), nothing else moves. Re-measured
 * this session: swapping the two leading statement's order (D_800E9AA0
 * clear before/after D_800E8920 clear) is inert, still 21. Reads as the
 * LEVERS "second variant" floor (whole-function register permutation),
 * not a source-spelling residue. */
void func_801D4594_ovl9(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_801A0D74_ovl7();
    switch (D_800E7880[omCurrentObj->objId]) {
        case 3:
            if (((D_800E9AA0[omCurrentObj->objId].as_s32 & 2) != 0) || (gEntitiesNextPosYArray[omCurrentObj->objId] != D_800EAFA0[omCurrentObj->objId])) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
                D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
            } else if ((D_800E5F90[omCurrentObj->objId] == D_800E6150[omCurrentObj->objId]) && (D_800E6BD0[omCurrentObj->objId] == D_800E6D90[omCurrentObj->objId])) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
                D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
            }
            break;
        case 4:
            if (((D_800E9AA0[omCurrentObj->objId].as_s32 & 1) != 0) || (D_800E6BD0[omCurrentObj->objId] != D_800EAFA0[omCurrentObj->objId])) {
                D_800E6BD0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
                D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
            } else if (gEntitiesNextPosYArray[omCurrentObj->objId] == gEntitiesPosYArray[omCurrentObj->objId]) {
                D_800E6BD0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
                D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
            }
            break;
    }
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D4594_ovl9.s")
#endif

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801D47D4_ovl9(s32 arg0) {
    GObj *temp_s1;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    f32 var_f12;
    s32 var_s0;
    u32 temp_s0;
    u32 temp_s0_2;
    u32 temp_s0_3;
    u32 temp_s0_4;
    u32 temp_s0_5;
    u32 temp_s0_6;
    u32 temp_s0_7;
    u32 temp_s0_8;
    u32 temp_s0_9;
    u32 temp_v0;
    u8 temp_v1;

    func_801A3280_ovl7();
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x1001F);
    temp_s1 = omCurrentObj;
    D_800EAFA0[temp_s1->objId] = 0.0f;
loop_1:
    temp_s0 = omCurrentObj->objId;
    temp_f30 = D_800EAFA0[temp_s0] * D_800EB160[temp_s0] * sinf(D_800EB320[temp_s1->objId]);
    temp_v0 = omCurrentObj->objId;
    var_s0 = temp_v0 * 4;
    temp_v1 = D_800E7880[temp_v0];
    temp_v0_2 = &D_800EB320[temp_v0];
    temp_f28 = D_800EAFA0[temp_v0] * D_800EB160[temp_v0] * cosf(D_800EB320[temp_s0]);
    if (temp_v1 != 5) {
        temp_v0_3 = &D_800EB320[temp_v0];
        if (temp_v1 != 6) {

        } else {
            *temp_v0_3 -= 0.05235988f;
            goto block_6;
        }
    } else {
        *temp_v0_2 += 0.05235988f;
block_6:
        var_s0 = omCurrentObj->objId * 4;
    }
    var_v0 = D_800EB320 + var_s0;
    var_f12 = *var_v0;
    if (var_f12 >= 6.2831855f) {
        do {
            *var_v0 = var_f12 - 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f12 = *var_v0;
        } while (var_f12 >= 6.2831855f);
    }
    if (var_f12 < 0.0f) {
        do {
            *var_v0 = var_f12 + 6.2831855f;
            var_v0 = &D_800EB320[omCurrentObj->objId];
            var_f12 = *var_v0;
        } while (var_f12 < 0.0f);
    }
    temp_s0_2 = omCurrentObj->objId;
    temp_f24 = D_800EAFA0[temp_s0_2] * D_800EB160[temp_s0_2] * sinf(var_f12);
    temp_f0 = cosf(D_800EB320[temp_s0_2]);
    temp_s0_3 = omCurrentObj->objId;
    D_800E5F90[temp_s0_3] = D_800E98E0[temp_s0_3];
    temp_s0_4 = omCurrentObj->objId;
    D_800E6BD0[temp_s0_4] = D_800EA6E0[temp_s0_4];
    temp_s0_5 = omCurrentObj->objId;
    temp_f26 = D_800EAFA0[temp_s0_3] * D_800EB160[temp_s0_3] * temp_f0;
    gEntitiesNextPosYArray[temp_s0_5] = D_800EAA60[temp_s0_5];
    temp_s0_6 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_s0_6], &D_800E6BD0[temp_s0_6], temp_f30);
    temp_v0_4 = &gEntitiesNextPosYArray[omCurrentObj->objId];
    *temp_v0_4 += temp_f28;
    temp_s0_7 = omCurrentObj->objId;
    D_800E6150[temp_s0_7] = D_800E5F90[temp_s0_7];
    temp_s0_8 = omCurrentObj->objId;
    D_800E6D90[temp_s0_8] = D_800E6BD0[temp_s0_8];
    temp_s0_9 = omCurrentObj->objId;
    gEntitiesPosYArray[temp_s0_9] = gEntitiesNextPosYArray[temp_s0_9];
    D_800E64D0[omCurrentObj->objId] = temp_f24 - temp_f30;
    D_800E3210[omCurrentObj->objId] = temp_f26 - temp_f28;
    ohSleep(1);
    goto loop_1;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D47D4_ovl9.s")
#endif

/* D_8021CEA0_ovl9: literal, this TU owns its .rodata */
void func_8019F3F0_ovl7(void);
void func_801D4C50_ovl9(void);

void func_801D4BC8_ovl9(GObj *arg0) {
    D_800EAFA0[omCurrentObj->objId] = 0.2f + D_800EAFA0[omCurrentObj->objId];
    if (D_800EAFA0[omCurrentObj->objId] >= 1.0f) {
        D_800EAFA0[omCurrentObj->objId] = 1.0f;
    }
    func_8019F3F0_ovl7();
    func_801D4C50_ovl9();
}

/* D_8021CEA4_ovl9: literal, this TU owns its .rodata */
extern s32 func_800B3234(f32, f32, f32);
extern void func_8019D8A0(u16);
extern f32 sqrtf(f32);

void func_801D4C50_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    if ((func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) &&
        (func_800B3234(D_800EA8A0[omCurrentObj->objId], D_800EAA60[omCurrentObj->objId], D_800EAC20[omCurrentObj->objId]) != 0)) {
        func_8019D8A0(((u16 *) omCurrentObj)[1]);
    } else {
        dx = gEntitiesNextPosXArray[omCurrentObj->objId] - D_800EA8A0[omCurrentObj->objId];
        dy = gEntitiesNextPosYArray[omCurrentObj->objId] - D_800EAA60[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[omCurrentObj->objId] - D_800EAC20[omCurrentObj->objId];
        if (20000.0f < sqrtf((dx * dx) + (dy * dy) + (dz * dz))) {
            func_8019D8A0(((u16 *) omCurrentObj)[1]);
        }
    }
}

void func_801D4D9C_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 1;
}

void func_801D4DCC_ovl9(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 2;
}

extern s32 D_801CB6F8;
extern FUNCLIST D_8021BB4C_ovl9;
extern FUNCLIST D_8021BB54_ovl9;
extern void func_801A6C10_ovl7(struct GObj *);
void func_801D5080_ovl9(void);
void func_801D4F58_ovl9(struct GObj *);

void func_801D4DFC_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801D5080_ovl9;
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(func_801D4F58_ovl9);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB6F8;
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BB4C_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021BB54_ovl9);
    }
}

extern FUNCLIST D_8021BB54_ovl9;

void func_801D4F58_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BB54_ovl9);
    }
}

void func_800B33F4(void);

void func_801D4FD8_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_800B33F4(void);

void func_801D502C_ovl9(GObj *arg0) {
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern FUNCLIST D_8021BB68_ovl9;
void func_801A0D74_ovl7();

void func_801D5080_ovl9(void) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021BB68_ovl9);
}

extern s32 D_8021BB80_ovl9[];
extern f32 D_8021BB90_ovl9[];
extern s32 D_801C7F84_ovl7;
void func_800AA154(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B33F4(void);

void func_801D50E4_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800B33F4();
    D_800E9E20[omCurrentObj->objId] = 8;
    switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
        case 0:
        case 1:
            D_800E3210[omCurrentObj->objId] = D_8021BB90_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32];
            D_800E3C90[omCurrentObj->objId] = 6.0f;
            break;
        case 2:
        case 3:
            D_800E64D0[omCurrentObj->objId] = D_8021BB90_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32];
            D_800E6850[omCurrentObj->objId] = 6.0f;
            break;
    }
    do {
        func_800AA154(D_8021BB80_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32]);
        if (D_800E9E20[omCurrentObj->objId]-- < 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        }
    } while (gEntityFuncListIDArray[omCurrentObj->objId] == 0);
}

#ifdef MIPS_TO_C
/* FACTORY: 9/247, frame 0x40 vs the ROM's 0x38 -- 8 bytes of locals we
   reserve and the ROM does not, so arg0 homes at 0x40 instead of 0x38 and the
   first branch displacement already differs.  Body order matches. */
extern u32 D_8012BCA0;
u32 eneCheckNearPlayer(f32);
extern f32 func_800F9828(s32, s32);
extern f32 func_8019B608_ovl7(s32);
/* Flier steering watchdog (state-machine slot 1): while the player is
 * out of range, request despawn (func 4) once the D_800E98E0 cooldown
 * has drained.  In range, D_800E9AA0 holds the travel axis/direction
 * (0 up / 1 down / 2-3 horizontal): flip into the turn state (func 2)
 * when Kirby's foot point (+20 units) crosses to the other side of the
 * entity -- horizontally judged by the rail direction func_800F9828,
 * falling back to camera-heading (func_8019B608) times XZ distance when
 * the rail reports the 9999 sentinel -- then request landing (func 1)
 * when the collision contact matching the travel direction is present
 * (floor 0x1C0 / ceiling 0xE00 / right wall 0x38 / left wall 7).
 * Always drains the cooldown and runs the shared per-frame mover. */
void func_801D52F0_ovl9(struct GObj *arg0) {
    u32 id;

    if (eneCheckNearPlayer(25600.0f) != 0) {
        id = omCurrentObj->objId;
        if (D_800E98E0[id] <= 0) {
            gEntityFuncListIDArray[id] = 4;
        }
    } else {
        f32 rel;
        u32 st;

        id = omCurrentObj->objId;
        st = D_800E9AA0[id].as_u32;
        switch (st) {
            case 0:
                if ((gEntitiesNextPosYArray[0] + 20.0f) < gEntitiesNextPosYArray[id]) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
            case 1:
                if (gEntitiesNextPosYArray[id] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
            case 2:
            case 3:
                if (func_800F9828(id, 0) == 9999.0f) {
                    f32 dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[id];
                    f32 dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[id];

                    rel = func_8019B608_ovl7(0) * sqrtf((dx * dx) + (dz * dz));
                } else {
                    rel = 0.0f;
                }
                if (st == 2) {
                    if (rel > 0.0f) {
                        gEntityFuncListIDArray[id] = 2;
                    }
                } else if (rel < 0.0f) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
        }
        switch (st) {
            case 0:
                if ((D_8012BCA0 >> 0x13) & 0x1C0) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 1:
                if ((D_8012BCA0 >> 0x13) & 0xE00) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 2:
                if ((D_8012BCA0 >> 0x13) & 0x38) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 3:
                if ((D_8012BCA0 >> 0x13) & 7) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
        }
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] > 0) {
        D_800E98E0[id]--;
    }
    func_8019F3B0_ovl7();
}
#elif defined(PORT)
extern u32 D_8012BCA0;
u32 eneCheckNearPlayer(f32);
extern f32 func_800F9828(s32, s32);
extern f32 func_8019B608_ovl7(s32);
/* Flier steering watchdog (state-machine slot 1): while the player is
 * out of range, request despawn (func 4) once the D_800E98E0 cooldown
 * has drained.  In range, D_800E9AA0 holds the travel axis/direction
 * (0 up / 1 down / 2-3 horizontal): flip into the turn state (func 2)
 * when Kirby's foot point (+20 units) crosses to the other side of the
 * entity -- horizontally judged by the rail direction func_800F9828,
 * falling back to camera-heading (func_8019B608) times XZ distance when
 * the rail reports the 9999 sentinel -- then request landing (func 1)
 * when the collision contact matching the travel direction is present
 * (floor 0x1C0 / ceiling 0xE00 / right wall 0x38 / left wall 7).
 * Always drains the cooldown and runs the shared per-frame mover. */
void func_801D52F0_ovl9(struct GObj *arg0) {
    u32 id;

    if (eneCheckNearPlayer(25600.0f) != 0) {
        id = omCurrentObj->objId;
        if (D_800E98E0[id] <= 0) {
            gEntityFuncListIDArray[id] = 4;
        }
    } else {
        f32 rel;
        u32 st;

        id = omCurrentObj->objId;
        st = D_800E9AA0[id].as_u32;
        switch (st) {
            case 0:
                if ((gEntitiesNextPosYArray[0] + 20.0f) < gEntitiesNextPosYArray[id]) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
            case 1:
                if (gEntitiesNextPosYArray[id] < (gEntitiesNextPosYArray[0] + 20.0f)) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
            case 2:
            case 3:
                if (func_800F9828(id, 0) == 9999.0f) {
                    f32 dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[id];
                    f32 dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[id];

                    rel = func_8019B608_ovl7(0) * sqrtf((dx * dx) + (dz * dz));
                } else {
                    rel = 0.0f;
                }
                if (st == 2) {
                    if (rel > 0.0f) {
                        gEntityFuncListIDArray[id] = 2;
                    }
                } else if (rel < 0.0f) {
                    gEntityFuncListIDArray[id] = 2;
                }
                break;
        }
        switch (st) {
            case 0:
                if ((D_8012BCA0 >> 0x13) & 0x1C0) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 1:
                if ((D_8012BCA0 >> 0x13) & 0xE00) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 2:
                if ((D_8012BCA0 >> 0x13) & 0x38) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
            case 3:
                if ((D_8012BCA0 >> 0x13) & 7) {
                    gEntityFuncListIDArray[id] = 1;
                }
                break;
        }
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] > 0) {
        D_800E98E0[id]--;
    }
    func_8019F3B0_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D52F0_ovl9.s")
#endif

/* D_8021CEAC_ovl9: literal, this TU owns its .rodata */
extern f32 func_800F9828(s32, s32);
extern f32 func_8019B608_ovl7(s32);

#ifdef NON_MATCHING
/* 21/96: a float-register cascade ($f0/$f2/$f12/$f14 pairs swapped
 * throughout the ABSF/compare tail), not a source-spelling residue.
 * Re-measured this session: the original draft assigned var_f12 in its
 * own statement before the `if`, which cost 23/96; folding it into the
 * condition as `if ((var_f12 = func_800F9828(...)) == 9999.0f)` -- the
 * exact spelling this file's matched sibling func_801D650C_ovl9 uses for
 * the same dy/var_f12/dx/dz/dist preamble (LEVERS lever 1, clone family)
 * -- took it to 21/96 and fixed the leading dy/dx/dz load order to match
 * exactly. From there: declaration order (moving var_f12 up to sit next
 * to dx/dz like the sibling) made it WORSE (25/96, reverted); ABSF()
 * macro vs the equivalent hand-written ternary is inert (same expansion);
 * reversing the `== 9999.0f` compare operand order is inert. All 21
 * remaining diffs are register renames in the ABSF(var_f12)/ABSF(dy) and
 * final `(b<=a) ? .. : ..` compare chain -- reads as a float-register
 * permutation floor (LEVERS "second variant" class). */
s32 func_801D56D0_ovl9(void) {
    f32 dx;
    f32 dz;
    f32 dy;
    f32 var_f12;
    f32 a;
    f32 b;
    f32 dist;

    dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((var_f12 = func_800F9828(omCurrentObj->objId, 0)) == 9999.0f) {
        dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        dist = sqrtf((dx * dx) + (dz * dz));
        var_f12 = dist * func_8019B608_ovl7(0);
    }
    a = ABSF(var_f12);
    b = ABSF(dy);
    return (b <= a) ? ((0 <= var_f12) ? 3 : 2) : ((0 <= dy) ? 0 : 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D56D0_ovl9.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 7/346, saved-register choice: the ROM keeps &omCurrentObj in $s1
   with the save block starting at 0x1C, ours picks $fp and a deeper block.
   Everything below is that rename. */
extern s32 random_soft_s32_range(s32);
extern s32 D_8021BB84_ovl9[];
extern s32 D_8021BB8C_ovl9[];
extern f32 D_8021BBA0_ovl9[];
/* The N64 text indexes one conceptual 4-word animation-ID table that
 * splat split into three arrays at 8021BB80/BB84/BB8C (including a
 * negative-offset read back across the split); fold the word index
 * 0..3 back onto the real PC-side arrays instead of relying on their
 * layout being contiguous. */
static s32 pc_o9_1_flap_anim(s32 i) {
    switch (i) {
        case 0:  return D_8021BB80_ovl9[0];
        case 1:  return D_8021BB84_ovl9[0];
        case 2:  return D_8021BB84_ovl9[1];
        default: return D_8021BB8C_ovl9[0];
    }
}
/* Turn state (state-machine slot 2) for the flier: pick a random side
 * (0/1, biased to slots 2/3 for the vertical axes), set the 6.0
 * accel clamps, then flap back and forth -- drive velocity (X pair
 * D_800E64D0/D_800E6690 for vertical axes, Y pair D_800E3210/D_800E3750
 * for horizontal) from the D_8021BB90/D_8021BBA0 tables, playing the
 * forward animation twice, the mirrored one twice, then negating the
 * velocity and playing the mirrored/forward pairs again -- until the
 * state machine leaves state 1; finish by requesting cruise state 2. */
void func_801D5850_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    s32 idx;
    s32 animA;
    s32 animB;

    D_800DDFD0[id] = 1;
    D_800E9C60[id] = random_soft_s32_range(2);
    D_800E6850[id] = 6.0f;
    D_800E3C90[id] = 6.0f;
    switch (D_800E9AA0[id].as_u32) {
        case 0:
        case 1:
            D_800E9C60[id] += 2;
            do {
                id = omCurrentObj->objId;
                idx = D_800E9C60[id];
                animA = pc_o9_1_flap_anim(idx);
                animB = pc_o9_1_flap_anim(idx ^ 1);
                D_800E64D0[id] = D_8021BB90_ovl9[idx];
                D_800E6690[id] = D_8021BBA0_ovl9[idx];
                func_800AA154(animA);
                func_800AA154(animA);
                func_800AA154(animB);
                func_800AA154(animB);
                id = omCurrentObj->objId;
                D_800E64D0[id] = -D_8021BB90_ovl9[idx];
                D_800E6690[id] = -D_8021BBA0_ovl9[idx];
                func_800AA154(animB);
                func_800AA154(animB);
                func_800AA154(animA);
                func_800AA154(animA);
                id = omCurrentObj->objId;
            } while (gEntityFuncListIDArray[id] == 1);
            break;
        case 2:
        case 3:
            do {
                id = omCurrentObj->objId;
                idx = D_800E9C60[id];
                animA = pc_o9_1_flap_anim(idx);
                animB = pc_o9_1_flap_anim(idx ^ 1);
                D_800E3210[id] = D_8021BB90_ovl9[idx];
                D_800E3750[id] = D_8021BBA0_ovl9[idx];
                func_800AA154(animA);
                func_800AA154(animA);
                func_800AA154(animB);
                func_800AA154(animB);
                id = omCurrentObj->objId;
                D_800E3210[id] = -D_8021BB90_ovl9[idx];
                D_800E3750[id] = -D_8021BBA0_ovl9[idx];
                func_800AA154(animB);
                func_800AA154(animB);
                func_800AA154(animA);
                func_800AA154(animA);
                id = omCurrentObj->objId;
            } while (gEntityFuncListIDArray[id] == 1);
            break;
    }
    gEntityFuncListIDArray[id] = 2;
}
#elif defined(PORT)
extern s32 random_soft_s32_range(s32);
extern s32 D_8021BB84_ovl9[];
extern s32 D_8021BB8C_ovl9[];
extern f32 D_8021BBA0_ovl9[];
/* The N64 text indexes one conceptual 4-word animation-ID table that
 * splat split into three arrays at 8021BB80/BB84/BB8C (including a
 * negative-offset read back across the split); fold the word index
 * 0..3 back onto the real PC-side arrays instead of relying on their
 * layout being contiguous. */
static s32 pc_o9_1_flap_anim(s32 i) {
    switch (i) {
        case 0:  return D_8021BB80_ovl9[0];
        case 1:  return D_8021BB84_ovl9[0];
        case 2:  return D_8021BB84_ovl9[1];
        default: return D_8021BB8C_ovl9[0];
    }
}
/* Turn state (state-machine slot 2) for the flier: pick a random side
 * (0/1, biased to slots 2/3 for the vertical axes), set the 6.0
 * accel clamps, then flap back and forth -- drive velocity (X pair
 * D_800E64D0/D_800E6690 for vertical axes, Y pair D_800E3210/D_800E3750
 * for horizontal) from the D_8021BB90/D_8021BBA0 tables, playing the
 * forward animation twice, the mirrored one twice, then negating the
 * velocity and playing the mirrored/forward pairs again -- until the
 * state machine leaves state 1; finish by requesting cruise state 2. */
void func_801D5850_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    s32 idx;
    s32 animA;
    s32 animB;

    D_800DDFD0[id] = 1;
    D_800E9C60[id] = random_soft_s32_range(2);
    D_800E6850[id] = 6.0f;
    D_800E3C90[id] = 6.0f;
    switch (D_800E9AA0[id].as_u32) {
        case 0:
        case 1:
            D_800E9C60[id] += 2;
            do {
                id = omCurrentObj->objId;
                idx = D_800E9C60[id];
                animA = pc_o9_1_flap_anim(idx);
                animB = pc_o9_1_flap_anim(idx ^ 1);
                D_800E64D0[id] = D_8021BB90_ovl9[idx];
                D_800E6690[id] = D_8021BBA0_ovl9[idx];
                func_800AA154(animA);
                func_800AA154(animA);
                func_800AA154(animB);
                func_800AA154(animB);
                id = omCurrentObj->objId;
                D_800E64D0[id] = -D_8021BB90_ovl9[idx];
                D_800E6690[id] = -D_8021BBA0_ovl9[idx];
                func_800AA154(animB);
                func_800AA154(animB);
                func_800AA154(animA);
                func_800AA154(animA);
                id = omCurrentObj->objId;
            } while (gEntityFuncListIDArray[id] == 1);
            break;
        case 2:
        case 3:
            do {
                id = omCurrentObj->objId;
                idx = D_800E9C60[id];
                animA = pc_o9_1_flap_anim(idx);
                animB = pc_o9_1_flap_anim(idx ^ 1);
                D_800E3210[id] = D_8021BB90_ovl9[idx];
                D_800E3750[id] = D_8021BBA0_ovl9[idx];
                func_800AA154(animA);
                func_800AA154(animA);
                func_800AA154(animB);
                func_800AA154(animB);
                id = omCurrentObj->objId;
                D_800E3210[id] = -D_8021BB90_ovl9[idx];
                D_800E3750[id] = -D_8021BBA0_ovl9[idx];
                func_800AA154(animB);
                func_800AA154(animB);
                func_800AA154(animA);
                func_800AA154(animA);
                id = omCurrentObj->objId;
            } while (gEntityFuncListIDArray[id] == 1);
            break;
    }
    gEntityFuncListIDArray[id] = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D5850_ovl9.s")
#endif

extern u32 D_8012BCA0;
u32 eneCheckNearPlayer(f32);
s32 func_801D56D0_ovl9(void);
void func_801D4F58_ovl9(struct GObj *);
void func_8019F3B0_ovl7(void);

void func_801D5DB8_ovl9(struct GObj *arg0) {
    if (eneCheckNearPlayer(25600.0f) != 0) {
        if (D_800E98E0[omCurrentObj->objId] <= 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
    } else {
        if (func_801D56D0_ovl9() != D_800E9AA0[omCurrentObj->objId].as_s32) { gEntityFuncListIDArray[omCurrentObj->objId] = 2; }
        switch (D_800E9AA0[omCurrentObj->objId].as_s32) {
            case 0:
                if (((D_8012BCA0 >> 19) & 0x1C0) == 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                }
                break;
            case 1:
                if (((D_8012BCA0 >> 19) & 0xE00) == 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                }
                break;
            case 2:
                if (((D_8012BCA0 >> 19) & 0x38) == 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                }
                break;
            case 3:
                if (((D_8012BCA0 >> 19) & 7) == 0) {
                    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                }
                break;
        }
    }
    if (((u32) D_800DD8D0[omCurrentObj->objId] >> 30) == 0) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] != 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D4F58_ovl9);
        }
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801C7F84_ovl7;
extern s32 func_801D56D0_ovl9(void);
extern void ohSleep(s32);

void func_801D5FC8_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800A9EA4(0x1002C);
    func_800B33F4();
    ohSleep(0xF);
    D_800E9AA0[omCurrentObj->objId].as_s32 = func_801D56D0_ovl9();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8019F3B0_ovl7(void);

void func_801D60B0_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
    func_8019F3B0_ovl7();
}

void func_800B6FD8(s32);
void func_800B7514(s32);

void func_801D6100_ovl9(struct GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
        D_800DDFD0[omCurrentObj->objId] = 3;
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B7514;
        D_800DDFD0[omCurrentObj->objId] = 4;
    }
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9EA4(0x10028);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 3) {
        ohSleep(1);
    }
}

u32 eneCheckNearPlayer(f32);
void func_8019F3B0_ovl7(void);

void func_801D6244_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        if (eneCheckNearPlayer(25600.0f) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    }
    func_8019F3B0_ovl7();
}

void func_801D62F0_ovl9(GObj *arg0) {
}

void func_800AA154(s32);
s32 func_801ACC34_ovl7(s32, s32);
f32 func_801D650C_ovl9(s32);


void func_801D62F8_ovl9(s32 arg0) {
    f32 temp_f0;
    u32 temp_v1;
    u8 temp_a0;

    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C7F84_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    temp_f0 = func_801D650C_ovl9(arg0);
    D_800EADE0[omCurrentObj->objId] = temp_f0;
    if (temp_f0 > 0.0f) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    func_800AA154(0x10028);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    D_800EBBE0[omCurrentObj->objId] = func_801ACC34_ovl7(3, 0);
    play_sound(0xA7);
    ohSleep(4);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA154(0x10023);
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    temp_v1 = omCurrentObj->objId;
    temp_a0 = D_800E7880[temp_v1];
    switch (temp_a0) {                              /* irregular */
    case 0:
        gEntityFuncListIDArray[temp_v1] = 2;
        return;
    case 1:
        gEntityFuncListIDArray[temp_v1] = 3;
        return;
    }
}



void func_8019F3B0_ovl7(void);

void func_801D64EC_ovl9(GObj *arg0) {
    func_8019F3B0_ovl7();
}

/* D_8021CEB0_ovl9 .. D_8021CEC8_ovl9: literals, this TU owns its .rodata */
extern f32 D_8021BBB0_ovl9[];

#ifdef NON_MATCHING
/* Instruction-exact (101/101 .text), but the ROM carries a trailing dead
 * .float 0 at 0x1CAF1C right after D_8021CEC8_ovl9 (0.7853981853) that IDO
 * does not re-emit from this source. verify.py's per-function check only
 * diffs .text and reports MATCH here -- it is blind to this. Confirmed by
 * objdump -s -j .rodata on build/verify/ vs build/src/: both come out the
 * SAME total section size (0xd0), but the CONTENTS diverge starting right
 * at this function's own late-rodata block (offset 0x6c) -- the dead-zero
 * word is missing here, so every later literal in the TU's shared .rodata
 * (from whichever function's pool comes next) is packed 4 bytes early, and
 * an equal amount of zero padding silently reappears at the very end of
 * the section instead. Same total size, wrong content from 0x6c onward:
 * this would ship every later rodata reference in the TU 4 bytes off.
 * Re-measured this session; still guarded until that word is accounted
 * for -- converting requires reproducing IDO's late-rodata pool padding,
 * not a source-level fix found so far. */
f32 func_801D650C_ovl9(s32 arg0) {
    f32 dx;
    f32 dz;
    f32 var_f12;
    f32 angle;
    f32 pad0;
    f32 pad1;
    f32 dy;
    f32 pad2;
    f32 dist;

    dy = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
    if ((var_f12 = func_800F9828(omCurrentObj->objId, 0)) == 9999.0f) {
        dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
        dist = sqrtf((dx * dx) + (dz * dz));
        var_f12 = dist * func_8019B608_ovl7(0);
    }
    angle = atan2f(var_f12, dy);
    while (3.141592741f < angle) {
        angle -= 6.283185482f;
    }
    while (angle < -3.141592741f) {
        angle += 6.283185482f;
    }
    return D_8021BBB0_ovl9[ABS((s32) (((angle + 3.141592741f) + 0.3926990926f) / 0.7853981853f))];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D650C_ovl9.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 17/206, frame 0x40 vs the ROM's 0x28.  Sibling of
   func_801D74EC_ovl9 below -- same 24-byte over-reservation, same two-local
   body -- so whatever sheds the frame there sheds it here too. */
extern FUNCLIST D_8021BBF0_ovl9;
extern FUNCLIST D_8021BBF4_ovl9;
extern void func_8019BB58_ovl7(void);
extern void func_800F8E6C(struct GObj *);
extern void func_800B33F4(void);
void func_800B7674(s32);
void func_801D6A94_ovl9(struct GObj *);
void func_801D69D8_ovl9(struct GObj *);
/* Circler main: latch the spawn point (home Y/X/Z into
 * D_800EA8A0/D_800EAC20/D_800EADE0, path params into D_800E9C60 and
 * D_800EAA60), init facing and a tiny push, then place the entity 200
 * units out along its wrapped spawn heading D_800E17D0 (+90 degrees),
 * install the shared mover/draw hooks and dispatch the spawn-mode
 * table D_8021BBF0 once before looping the 3-entry state table
 * D_8021BBF4 forever (handlers block on ohSleep). */
void func_801D66A0_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 ang;

    D_800EA8A0[id] = gEntitiesNextPosYArray[id];
    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E5F90[id];
    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6BD0[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = gEntitiesNextPosXArray[id];
    id = omCurrentObj->objId;
    D_800EADE0[id] = gEntitiesNextPosZArray[id];
    func_8019BB58_ovl7();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(arg0);
    func_800B33F4();
    id = omCurrentObj->objId;
    while (D_800E17D0[id] >= 6.2831855f) {
        D_800E17D0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800E17D0[id] < 0.0f) {
        D_800E17D0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    ang = D_800E17D0[id] + 1.5707964f;
    gEntitiesAngleYArray[id] = ang;
    D_800EA6E0[id] = ang;
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] += sinf(D_800EA6E0[id]) * 200.0f;
    id = omCurrentObj->objId;
    gEntitiesNextPosZArray[id] += cosf(D_800EA6E0[id]) * 200.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7674;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D6A94_ovl9;
    func_801A0D50_ovl7(func_801D69D8_ovl9);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_8021BBF0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BBF4_ovl9);
    }
}
#elif defined(PORT)
extern FUNCLIST D_8021BBF0_ovl9;
extern FUNCLIST D_8021BBF4_ovl9;
extern void func_8019BB58_ovl7(void);
extern void func_800F8E6C(struct GObj *);
extern void func_800B33F4(void);
void func_800B7674(s32);
void func_801D6A94_ovl9(struct GObj *);
void func_801D69D8_ovl9(struct GObj *);
/* Circler main: latch the spawn point (home Y/X/Z into
 * D_800EA8A0/D_800EAC20/D_800EADE0, path params into D_800E9C60 and
 * D_800EAA60), init facing and a tiny push, then place the entity 200
 * units out along its wrapped spawn heading D_800E17D0 (+90 degrees),
 * install the shared mover/draw hooks and dispatch the spawn-mode
 * table D_8021BBF0 once before looping the 3-entry state table
 * D_8021BBF4 forever (handlers block on ohSleep). */
void func_801D66A0_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 ang;

    D_800EA8A0[id] = gEntitiesNextPosYArray[id];
    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E5F90[id];
    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6BD0[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = gEntitiesNextPosXArray[id];
    id = omCurrentObj->objId;
    D_800EADE0[id] = gEntitiesNextPosZArray[id];
    func_8019BB58_ovl7();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(arg0);
    func_800B33F4();
    id = omCurrentObj->objId;
    while (D_800E17D0[id] >= 6.2831855f) {
        D_800E17D0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800E17D0[id] < 0.0f) {
        D_800E17D0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    ang = D_800E17D0[id] + 1.5707964f;
    gEntitiesAngleYArray[id] = ang;
    D_800EA6E0[id] = ang;
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] += sinf(D_800EA6E0[id]) * 200.0f;
    id = omCurrentObj->objId;
    gEntitiesNextPosZArray[id] += cosf(D_800EA6E0[id]) * 200.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7674;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D6A94_ovl9;
    func_801A0D50_ovl7(func_801D69D8_ovl9);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_8021BBF0_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BBF4_ovl9);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D66A0_ovl9.s")
#endif

extern FUNCLIST D_8021BBF4_ovl9;

void func_801D69D8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BBF4_ovl9);
    }
}

void func_801D6A58_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D6A94_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC00_ovl9);
}

void func_800AA018(s32);
f32 func_801D6C68_ovl9(void);

void func_801D6ADC_ovl9(s32 arg0) {
    f32 temp_f0;
    u32 temp_v0;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800AA018(0x1004B);
    if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        do {
            temp_f0 = func_801D6C68_ovl9();
            if (temp_f0 < 240.0f) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            }
            temp_v0 = omCurrentObj->objId * 4;
            if ((*(s32 *) ((u8 *) D_800E98E0 + temp_v0) <= 0) && (temp_f0 < 120.0f)) {
                *(s32 *) ((u8 *) gEntityFuncListIDArray + temp_v0) = 2;
            }
            ohSleep(1);
        } while (gEntityFuncListIDArray[omCurrentObj->objId] == 0);
    }
}

void func_801D6C30_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

f32 func_801D6C68_ovl9(void) {
    f32 dx;
    f32 dy;
    f32 dz;

    dx = gEntitiesNextPosXArray[0] - D_800EAC20[omCurrentObj->objId];
    dy = (gEntitiesNextPosYArray[0] + 20.0f) - D_800EA8A0[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - D_800EADE0[omCurrentObj->objId];
    return sqrtf((dx * dx) + (dy * dy) + (dz * dz));
}

f32 func_801D6C68_ovl9(void);
void func_801D6E44_ovl9(struct GObj *, s32, f32);

void func_801D6CFC_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x1004B);
    D_800DF310[omCurrentObj->objId] = func_801D6E44_ovl9;
    while (1) {
        temp = func_801D6C68_ovl9();
        if (240.0f < temp) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        }
        if ((D_800E98E0[omCurrentObj->objId] <= 0) && (temp < 120.0f)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        }
        ohSleep(1);
    }
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801D69D8_ovl9(struct GObj *);

void func_801D6E44_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] != 1) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D69D8_ovl9);
        }
    }
}

extern s32 D_801C80C8_ovl7;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D6EBC_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C80C8_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x1004A);
    D_800E98E0[omCurrentObj->objId] = 0x3C;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

s32 func_801D7064_ovl9(void *);
void func_801D7140_ovl9(struct GObj *);

void func_801D6F8C_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
    if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0x19) {
        play_sound(0xA3);
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 >= 0x15) {
        func_801D7064_ovl9(D_800DFBD0[omCurrentObj->objId][4]);
        if (D_800E83E0[omCurrentObj->objId] == 3) {
            func_801D7140_ovl9(arg0);
        }
    }
}

void func_801D705C_ovl9(GObj *arg0) {
}

struct Ovl9AnimCmdA {
    u8 filler0[8];
    void *unk8;
};

struct Ovl9AnimObjA {
    u8 filler0[0x24];
    struct Ovl9AnimCmdA *unk24;
};

struct Ovl9AnimHdrSubA {
    u8 filler0[4];
    s32 unk4;
};

struct Ovl9AnimHdrA {
    u8 filler0[8];
    struct Ovl9AnimHdrSubA *unk8;
};

void func_80111550(u32);
struct Ovl9AnimObjA *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObjA *);
s32 func_801D7330_ovl9(void);
s32 func_8019F650_ovl7(void);

s32 func_801D7064_ovl9(void *arg0) {
    struct EnemyRecord *ent;
    u32 objId;
    struct Ovl9AnimObjA *anim;
    struct Ovl9AnimHdrSubA *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    objId = omCurrentObj->objId;
    func_80111550(objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl9AnimHdrA *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != NULL)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    if (func_801D7330_ovl9() == 0) {
        return func_8019F650_ovl7();
    }
    return 1;
}

extern s32 D_801C333C;
void func_800FD570(struct DObj *, u32, f32, f32, f32);
void func_800B2340(Vector *, struct DObj *, u32);
void func_801A2ADC_ovl7(u32);
void func_800A9760(s32);

void func_801D7140_ovl9(struct GObj *arg0) {
    s32 p0;
    Vector sp38;
    s32 p1;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800FD570(D_800DFBD0[omCurrentObj->objId][3], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    func_800FD570(D_800DFBD0[omCurrentObj->objId][2], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    func_800FD570(D_800DFBD0[omCurrentObj->objId][1], ent->unk94->unk18, 0.0f, 0.0f, 0.0f);
    if (ent->unk94->unk1C != 0x80000000) {
        play_sound(ent->unk94->unk1C);
    }
    func_800B2340(&sp38, D_800DFBD0[omCurrentObj->objId][4], 0xFFFF);
    D_800E5F90[omCurrentObj->objId] = D_800E9C60[omCurrentObj->objId];
    D_800E6BD0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp38.y;
    func_80198880_ovl7(&D_801C333C);
    func_801A2ADC_ovl7(ent->unk88->unk10);
    func_800A9760(0x10014);
}

struct Ovl9AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

s32 func_80110150(struct Ovl9AnimInfo *);
s32 func_801A0244_ovl7(s32);
void func_8019EBCC_ovl7(struct GObj *);
void func_801A3BA4_ovl7(void);
void func_801A3E80_ovl7(struct GObj *);

s32 func_801D7330_ovl9(void) {
    s32 pad;
    struct EnemyRecord *ent;
    struct Ovl9AnimInfo sp2C;

    ent = D_800E1B50[omCurrentObj->objId];
    if (func_80110150(&sp2C) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp2C.unk2;
        ent->unk43 = sp2C.unk3;
        ent->unk3E = sp2C.unk0;
        ent->unk3F = sp2C.unk1;
        ent->unk3A = sp2C.unkC;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
        *(s8 *) &ent->unk3A = -1;
    }
    switch (D_800E83E0[omCurrentObj->objId]) {
        case 1:
            if (func_801A0244_ovl7(sp2C.unkC) != -1) {
                D_800E83E0[omCurrentObj->objId] = 0x12;
                play_sound(0xF4);
                ent->unk94 = NULL;
                ent->unk40 = 1;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
                return 1;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801A3E80_ovl7);
            return 1;
        case 2:
            func_8019EBCC_ovl7(D_800DE350[omCurrentObj->objId]);
            func_801A3BA4_ovl7();
            return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* FACTORY: 88/211, frame 0x40 vs the ROM's 0x28 plus the $a1/$a2 pair the
   omCurrentObj load lands in.  The function only has two locals, so the extra
   24 bytes are IDO reserving argument/spill space the ROM does not; that is
   the one thing to attack, and it also fixes func_801D66A0_ovl9 above. */
extern FUNCLIST D_8021BC08_ovl9;
extern FUNCLIST D_8021BC0C_ovl9;
extern void func_801A3280_ovl7(void);
void func_801D78F0_ovl9(struct GObj *);
void func_801D7838_ovl9(struct GObj *);
/* Second circler variant main: same setup as func_801D66A0 (latch the
 * spawn point and path params, wrap the spawn heading, face +90
 * degrees) but with the ovl7 aux init func_801A3280, a 120-unit
 * offset instead of 200, its own mover/draw hooks and the
 * D_8021BC08 (spawn) / D_8021BC0C (5-state) dispatch tables. */
void func_801D74EC_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 ang;

    D_800EA8A0[id] = gEntitiesNextPosYArray[id];
    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E5F90[id];
    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6BD0[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = gEntitiesNextPosXArray[id];
    id = omCurrentObj->objId;
    D_800EADE0[id] = gEntitiesNextPosZArray[id];
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(arg0);
    func_800B33F4();
    id = omCurrentObj->objId;
    while (D_800E17D0[id] >= 6.2831855f) {
        D_800E17D0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800E17D0[id] < 0.0f) {
        D_800E17D0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    ang = D_800E17D0[id] + 1.5707964f;
    gEntitiesAngleYArray[id] = ang;
    D_800EA6E0[id] = ang;
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] += sinf(D_800EA6E0[id]) * 120.0f;
    id = omCurrentObj->objId;
    gEntitiesNextPosZArray[id] += cosf(D_800EA6E0[id]) * 120.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7674;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D78F0_ovl9;
    func_801A0D50_ovl7(func_801D7838_ovl9);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_8021BC08_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BC0C_ovl9);
    }
}
#elif defined(PORT)
extern FUNCLIST D_8021BC08_ovl9;
extern FUNCLIST D_8021BC0C_ovl9;
extern void func_801A3280_ovl7(void);
void func_801D78F0_ovl9(struct GObj *);
void func_801D7838_ovl9(struct GObj *);
/* Second circler variant main: same setup as func_801D66A0 (latch the
 * spawn point and path params, wrap the spawn heading, face +90
 * degrees) but with the ovl7 aux init func_801A3280, a 120-unit
 * offset instead of 200, its own mover/draw hooks and the
 * D_8021BC08 (spawn) / D_8021BC0C (5-state) dispatch tables. */
void func_801D74EC_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 ang;

    D_800EA8A0[id] = gEntitiesNextPosYArray[id];
    id = omCurrentObj->objId;
    D_800E9C60[id] = D_800E5F90[id];
    id = omCurrentObj->objId;
    D_800EAA60[id] = D_800E6BD0[id];
    id = omCurrentObj->objId;
    D_800EAC20[id] = gEntitiesNextPosXArray[id];
    id = omCurrentObj->objId;
    D_800EADE0[id] = gEntitiesNextPosZArray[id];
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E64D0[omCurrentObj->objId] = 0.001f;
    func_800F8E6C(arg0);
    func_800B33F4();
    id = omCurrentObj->objId;
    while (D_800E17D0[id] >= 6.2831855f) {
        D_800E17D0[id] -= 6.2831855f;
        id = omCurrentObj->objId;
    }
    while (D_800E17D0[id] < 0.0f) {
        D_800E17D0[id] += 6.2831855f;
        id = omCurrentObj->objId;
    }
    ang = D_800E17D0[id] + 1.5707964f;
    gEntitiesAngleYArray[id] = ang;
    D_800EA6E0[id] = ang;
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] += sinf(D_800EA6E0[id]) * 120.0f;
    id = omCurrentObj->objId;
    gEntitiesNextPosZArray[id] += cosf(D_800EA6E0[id]) * 120.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B7674;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_801D78F0_ovl9;
    func_801A0D50_ovl7(func_801D7838_ovl9);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_8021BC08_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BC0C_ovl9);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D74EC_ovl9.s")
#endif

extern FUNCLIST D_8021BC0C_ovl9;

void func_801D7838_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021BC0C_ovl9);
    }
}

void func_801D78B8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D78F0_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021BC20_ovl9);
}

void func_800A9EA4(s32);

void func_801D7938_ovl9(GObj *arg0) {
    func_800A9EA4(0x100F8);
    animUpdateModelTreeAnimation(arg0);
}

f32 func_801D6C68_ovl9(void);
void func_800AA018(s32);

void func_801D7968_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x100F8);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
        if ((D_800E98E0[omCurrentObj->objId] <= 0) && (func_801D6C68_ovl9() < 280.0f)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        }
        ohSleep(1);
    }
}

void func_801D7A6C_ovl9(GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        D_800E98E0[omCurrentObj->objId]--;
    }
}

f32 func_801D6C68_ovl9(void);
void func_800AA154(s32);
void func_800AA018(s32);

void func_801D7AA4_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA154(0x100FA);
    func_800AA018(0x10100);
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 1) {
        temp = func_801D6C68_ovl9();
        if (temp < 160.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        } else if (280.0f < temp) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        }
        ohSleep(1);
    }
}

void func_801D7BE4_ovl9(GObj *arg0) {
}

extern f32 atan2f(f32, f32);
extern s32 D_8021BC2C_ovl9[];
void func_801D7E34_ovl9(s32, s32, f32);

void func_801D7BEC_ovl9(struct GObj *arg0) {
    f32 dx;
    f32 dz;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E9E20[omCurrentObj->objId] = 0;
    dx = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if (gEntitiesAngleYArray[omCurrentObj->objId] < atan2f(dx, dz)) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    }
    func_800AA018(D_8021BC2C_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32]);
    D_800DF310[omCurrentObj->objId] = func_801D7E34_ovl9;
    func_800AF27C();
    ohSleep(0x32);
    D_800E98E0[omCurrentObj->objId] = 0x1E;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801D7838_ovl9(struct GObj *);

void func_801D7D54_ovl9(struct GObj *arg0) {
    switch (D_800E9E20[omCurrentObj->objId]) {
    case 0xA:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    case 1:
        D_800E98E0[omCurrentObj->objId] = 0x1E;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801D7838_ovl9);
        break;
    }
}

s32 func_801ACD48_ovl7(s32, s32);
void utilGetTransformSRT(Vector *, struct DObj *);

void func_801D7E34_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    s32 id;
    Vector sp20;
    struct DObj *p;

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            id = func_801ACD48_ovl7(0xA, 0);
            if (id != 0) {
                p = (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) ? D_800DFBD0[omCurrentObj->objId][7] : D_800DFBD0[omCurrentObj->objId][5];
                utilGetTransformSRT(&sp20, p);
                gEntitiesPosXArray[id] = sp20.x;
                gEntitiesNextPosXArray[id] = sp20.x;
                gEntitiesPosYArray[id] = sp20.y;
                gEntitiesNextPosYArray[id] = sp20.y;
                gEntitiesPosZArray[id] = sp20.z;
                gEntitiesNextPosZArray[id] = sp20.z;
                D_800E8E60[id] = 1;
                play_sound(0x169);
            }
        }
    }
}

void func_800AA864(s32, s32);

void func_801D7F4C_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA864(0x100FC, 3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_800AA154(s32);

void func_801D7FB4_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA154(0x100FE);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern s32 D_801C89A0_ovl7;
extern FUNCLIST D_8021BC34_ovl9;
extern FUNCLIST D_8021BC38_ovl9;
extern void func_801A3280_ovl7(void);
extern void func_8019BB58_ovl7(void);
void func_801D8218_ovl9(struct GObj *);
void func_801D8198_ovl9(struct GObj *);

void func_801D8014_ovl9(struct GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk39 = -1;
    D_800EAFA0[omCurrentObj->objId] = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800DF150[omCurrentObj->objId] = func_801D8218_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C89A0_ovl7;
    func_801A0D50_ovl7(func_801D8198_ovl9);
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021BC34_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8021BC38_ovl9);
    }
}

extern FUNCLIST D_8021BC38_ovl9;

void func_801D8198_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021BC38_ovl9);
    }
}

void func_801D8218_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BC40_ovl9);
}

/* D_8021CEE8_ovl9: literal, this TU owns its .rodata */
extern s32 D_801C89A0_ovl7;
extern struct EnemyEventTable D_801CB470_ovl7;
void func_800B4924(struct GObj *);
void func_800B33F4(void);

void func_801D8260_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 1.5707964f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800EA6E0[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = D_800EAC20[omCurrentObj->objId];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C89A0_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB470_ovl7;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D8478_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    ohSleep(0x14);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#ifdef MIPS_TO_C
/* FACTORY: 9/471, frame 0x58 vs the ROM's 0x50 and the entry pointer
   register ($a3 in the ROM, $t6 here).  The largest function in this file;
   structure and schedule agree throughout. */
extern void func_800B2AD4(Vector *, s32, u32);
extern float atan2f(float, float);
/* Turret/launcher retarget tick: measure the distance to Kirby's foot
 * point to derive a launch-speed scale (dist/24 + 3), copy the player
 * slot's path params, position and velocity into this entity's slot
 * (scaling the X velocity), run the slot resolver func_800F8E6C, then
 * snap the entity back to its parked position (D_800EAFA0/EB160/EB320).
 * The predicted target point (lead by Kirby's Y motion times half the
 * scale) is transformed by func_800B2AD4 into the turret's frame and
 * turned into pitch/yaw targets; D_800EA6E0 (pitch) walks toward the
 * target in pi/80 steps clamped to [20deg, 90deg] and D_800EAC20 (yaw)
 * walks likewise with wrap handling, clamped to +/-60deg.  D_800E98E0
 * flags whether the yaw is inside the firing cone, and bone 2 of the
 * model gets the pitch/yaw as X/Y rotation. */
void func_801D8520_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 sp30;
    f32 sp34;
    f32 sp38;
    f32 leadY;
    f32 scale;
    f32 pitch;
    f32 yaw;
    f32 d;
    f32 step;

    sp30 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[id];
    sp34 = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[id];
    sp38 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[id];
    scale = (sqrtf((sp30 * sp30) + (sp34 * sp34) + (sp38 * sp38)) / 24.0f) + 3.0f;
    leadY = gEntitiesNextPosYArray[0] - gEntitiesPosYArray[0];
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E5F90[0];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6BD0[0];
    id = omCurrentObj->objId;
    D_800E6150[id] = D_800E6150[0];
    id = omCurrentObj->objId;
    D_800E6D90[id] = D_800E6D90[0];
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[0];
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[0];
    gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[0];
    gEntitiesPosXArray[id] = gEntitiesPosXArray[0];
    gEntitiesPosYArray[id] = gEntitiesPosYArray[0];
    gEntitiesPosZArray[id] = gEntitiesPosZArray[0];
    D_800E64D0[id] = D_800E64D0[0] * scale;
    func_800F8E6C(arg0);
    id = omCurrentObj->objId;
    sp30 = gEntitiesNextPosXArray[id];
    sp34 = gEntitiesNextPosYArray[id] + (leadY * scale * 0.5f);
    sp38 = gEntitiesNextPosZArray[id];
    id = omCurrentObj->objId;
    gEntitiesPosXArray[id] = D_800EAFA0[id];
    gEntitiesNextPosXArray[id] = D_800EAFA0[id];
    id = omCurrentObj->objId;
    gEntitiesPosYArray[id] = D_800EB160[id];
    gEntitiesNextPosYArray[id] = D_800EB160[id];
    id = omCurrentObj->objId;
    gEntitiesPosZArray[id] = D_800EB320[id];
    gEntitiesNextPosZArray[id] = D_800EB320[id];
    func_800B2AD4((Vector *) &sp30, 0, 0xFFFF);
    pitch = atan2f(sqrtf((sp30 * sp30) + (sp38 * sp38)), sp34);
    yaw = atan2f(sp30, sp38);
    while (pitch >= 3.1415927f) {
        pitch -= 6.2831855f;
    }
    while (pitch <= -3.1415927f) {
        pitch += 6.2831855f;
    }
    while (yaw >= 3.1415927f) {
        yaw -= 6.2831855f;
    }
    while (yaw <= -3.1415927f) {
        yaw += 6.2831855f;
    }
    id = omCurrentObj->objId;
    if ((pitch + 0.03926991f) < D_800EA6E0[id]) {
        D_800EA6E0[id] -= 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] < 0.34906587f) {
            D_800EA6E0[id] = 0.34906587f;
        }
    } else if (D_800EA6E0[id] < (pitch - 0.03926991f)) {
        D_800EA6E0[id] += 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 1.5707964f) {
            D_800EA6E0[id] = 1.5707964f;
        }
    }
    id = omCurrentObj->objId;
    d = yaw - D_800EAC20[id];
    if (((d < 0.0f) ? -d : d) > 3.1415927f) {
        if (d < 0.0f) {
            d = (yaw + 6.2831855f) - D_800EAC20[id];
        } else {
            d = yaw - (D_800EAC20[id] + 6.2831855f);
        }
    }
    if (((d < 0.0f) ? -d : d) > 0.03926991f) {
        step = (d > 0.0f) ? 0.03926991f : -0.03926991f;
        D_800EAC20[id] += step;
        id = omCurrentObj->objId;
    }
    while (D_800EAC20[id] > 3.1415927f) {
        D_800EAC20[id] -= 3.1415927f;
        id = omCurrentObj->objId;
    }
    while (D_800EAC20[id] < -3.1415927f) {
        D_800EAC20[id] += 3.1415927f;
        id = omCurrentObj->objId;
    }
    if (D_800EAC20[id] < -1.0471976f) {
        D_800EAC20[id] = -1.0471976f;
        id = omCurrentObj->objId;
    }
    if (D_800EAC20[id] > 1.0471976f) {
        D_800EAC20[id] = 1.0471976f;
        id = omCurrentObj->objId;
    }
    if (((D_800EAC20[id] < 0.0f) ? -D_800EAC20[id] : D_800EAC20[id]) < 1.0471976f) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 0;
    }
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.x = D_800EA6E0[id];
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.y = D_800EAC20[id];
}
#elif defined(PORT)
extern void func_800B2AD4(Vector *, s32, u32);
extern float atan2f(float, float);
/* Turret/launcher retarget tick: measure the distance to Kirby's foot
 * point to derive a launch-speed scale (dist/24 + 3), copy the player
 * slot's path params, position and velocity into this entity's slot
 * (scaling the X velocity), run the slot resolver func_800F8E6C, then
 * snap the entity back to its parked position (D_800EAFA0/EB160/EB320).
 * The predicted target point (lead by Kirby's Y motion times half the
 * scale) is transformed by func_800B2AD4 into the turret's frame and
 * turned into pitch/yaw targets; D_800EA6E0 (pitch) walks toward the
 * target in pi/80 steps clamped to [20deg, 90deg] and D_800EAC20 (yaw)
 * walks likewise with wrap handling, clamped to +/-60deg.  D_800E98E0
 * flags whether the yaw is inside the firing cone, and bone 2 of the
 * model gets the pitch/yaw as X/Y rotation. */
void func_801D8520_ovl9(struct GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 sp30;
    f32 sp34;
    f32 sp38;
    f32 leadY;
    f32 scale;
    f32 pitch;
    f32 yaw;
    f32 d;
    f32 step;

    sp30 = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[id];
    sp34 = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[id];
    sp38 = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[id];
    scale = (sqrtf((sp30 * sp30) + (sp34 * sp34) + (sp38 * sp38)) / 24.0f) + 3.0f;
    leadY = gEntitiesNextPosYArray[0] - gEntitiesPosYArray[0];
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E5F90[0];
    id = omCurrentObj->objId;
    D_800E6BD0[id] = D_800E6BD0[0];
    id = omCurrentObj->objId;
    D_800E6150[id] = D_800E6150[0];
    id = omCurrentObj->objId;
    D_800E6D90[id] = D_800E6D90[0];
    id = omCurrentObj->objId;
    gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[0];
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[0];
    gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[0];
    gEntitiesPosXArray[id] = gEntitiesPosXArray[0];
    gEntitiesPosYArray[id] = gEntitiesPosYArray[0];
    gEntitiesPosZArray[id] = gEntitiesPosZArray[0];
    D_800E64D0[id] = D_800E64D0[0] * scale;
    func_800F8E6C(arg0);
    id = omCurrentObj->objId;
    sp30 = gEntitiesNextPosXArray[id];
    sp34 = gEntitiesNextPosYArray[id] + (leadY * scale * 0.5f);
    sp38 = gEntitiesNextPosZArray[id];
    id = omCurrentObj->objId;
    gEntitiesPosXArray[id] = D_800EAFA0[id];
    gEntitiesNextPosXArray[id] = D_800EAFA0[id];
    id = omCurrentObj->objId;
    gEntitiesPosYArray[id] = D_800EB160[id];
    gEntitiesNextPosYArray[id] = D_800EB160[id];
    id = omCurrentObj->objId;
    gEntitiesPosZArray[id] = D_800EB320[id];
    gEntitiesNextPosZArray[id] = D_800EB320[id];
    func_800B2AD4((Vector *) &sp30, 0, 0xFFFF);
    pitch = atan2f(sqrtf((sp30 * sp30) + (sp38 * sp38)), sp34);
    yaw = atan2f(sp30, sp38);
    while (pitch >= 3.1415927f) {
        pitch -= 6.2831855f;
    }
    while (pitch <= -3.1415927f) {
        pitch += 6.2831855f;
    }
    while (yaw >= 3.1415927f) {
        yaw -= 6.2831855f;
    }
    while (yaw <= -3.1415927f) {
        yaw += 6.2831855f;
    }
    id = omCurrentObj->objId;
    if ((pitch + 0.03926991f) < D_800EA6E0[id]) {
        D_800EA6E0[id] -= 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] < 0.34906587f) {
            D_800EA6E0[id] = 0.34906587f;
        }
    } else if (D_800EA6E0[id] < (pitch - 0.03926991f)) {
        D_800EA6E0[id] += 0.03926991f;
        id = omCurrentObj->objId;
        if (D_800EA6E0[id] > 1.5707964f) {
            D_800EA6E0[id] = 1.5707964f;
        }
    }
    id = omCurrentObj->objId;
    d = yaw - D_800EAC20[id];
    if (((d < 0.0f) ? -d : d) > 3.1415927f) {
        if (d < 0.0f) {
            d = (yaw + 6.2831855f) - D_800EAC20[id];
        } else {
            d = yaw - (D_800EAC20[id] + 6.2831855f);
        }
    }
    if (((d < 0.0f) ? -d : d) > 0.03926991f) {
        step = (d > 0.0f) ? 0.03926991f : -0.03926991f;
        D_800EAC20[id] += step;
        id = omCurrentObj->objId;
    }
    while (D_800EAC20[id] > 3.1415927f) {
        D_800EAC20[id] -= 3.1415927f;
        id = omCurrentObj->objId;
    }
    while (D_800EAC20[id] < -3.1415927f) {
        D_800EAC20[id] += 3.1415927f;
        id = omCurrentObj->objId;
    }
    if (D_800EAC20[id] < -1.0471976f) {
        D_800EAC20[id] = -1.0471976f;
        id = omCurrentObj->objId;
    }
    if (D_800EAC20[id] > 1.0471976f) {
        D_800EAC20[id] = 1.0471976f;
        id = omCurrentObj->objId;
    }
    if (((D_800EAC20[id] < 0.0f) ? -D_800EAC20[id] : D_800EAC20[id]) < 1.0471976f) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 0;
    }
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.x = D_800EA6E0[id];
    id = omCurrentObj->objId;
    D_800DFBD0[id][2]->angle.v.y = D_800EAC20[id];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_1/func_801D8520_ovl9.s")
#endif

s32 func_801ACC34_ovl7(s32, s32);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801D8C80_ovl9(GObj *arg0) {
    s32 temp;

    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10020);
    temp = func_801ACC34_ovl7(0x42, 0);
    D_800EBBE0[omCurrentObj->objId] = temp;
    if (temp != 0) {
        D_800E8E60[D_800EBBE0[omCurrentObj->objId]] = 1;
        play_sound(0xA5);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801D8D44_ovl9(GObj *arg0) {
}

/* The 6 nop words after this listing's `.size` are NOT part of the function:
 * IDO's assembler pads .text to 16 bytes, and the remaining 16 are the LINKER
 * aligning ovl9_2.o's .text to 32 (its object carries `.align 5` from a dead
 * epilogue). They are declared as a `pad` subsegment in kirby64.yaml. */
void func_801D8D4C_ovl9(GObj *arg0) {
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
}

