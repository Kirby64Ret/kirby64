#include <ultra64.h>
#include <macros.h>
#include "common.h"

extern s32 D_8012E944;

extern void func_800FF200(s32);
extern void func_800AA018(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/util.h"
#include "Player.h"

extern u8 D_801CA980;
extern FUNCLIST D_80196910_ovl3;

extern void func_801A32EC(u8 *);
extern void func_801A3938(s32);
/* D_80197278_ovl3 now emitted by this TU */

extern void func_8016BD24_ovl3(s32);
extern void func_801696F0_ovl3(s32);

extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct GObjProcess *gEntityGObjProcessArray3[];
extern s32 D_8012EAE0;
/* D_801971F0_ovl3 now emitted by this TU */
/* D_801971F4_ovl3 now emitted by this TU */
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern void animResetModelAndTextureAnimation(GObj *);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_800A22D4(s32);
void func_80169694_ovl3(s32);
void func_80177098_ovl3(s32);

void func_80169430_ovl3(arg0, arg1, arg2, arg3)
s32 arg0;
s32 arg1;
u8 arg2;
s32 arg3;
{
    f32 temp;
    f32 scale;

    D_800E8760[arg0] = 1;
    D_800EA520[arg0] = (*((u8 *) &arg1 + 3) << 8) | arg2;
    gEntityFuncListIDArray[arg0] = arg3;
    assign_new_process_entry(gEntityGObjProcessArray[arg0], func_80169694_ovl3);
    D_800DF150[arg0] = NULL;
    if (*((u8 *) &arg1 + 3) == 0) {
        *(s32 *) &gKirbyState.actionChange = -1;
        gKirbyState.unk4 = 0;
        gKirbyState.previousAction = gKirbyState.action;
        gKirbyState.action = 0x15;
        gKirbyState.abilityInUse = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.isTurning = 0;
        gEntitiesAngleYArray[arg0] = D_800E17D0[arg0];
        gKirbyState.isInhaling = 0;
        gKirbyState.unkB8 = 0;
        gKirbyState.unkD = -3;
        D_800E8060[arg0] = -1;
        gKirbyState.damageType = 0;
        *(s16 *) &gKirbyState.damageFlashTimer = -1;
        gEntitiesAngleXArray[arg0] = 0.0;
        func_8011DC5C();
        func_8011E0E8();
        if (D_8012EAE0 != 0) {
            func_800A22D4(D_8012EAE0);
            D_8012EAE0 = 0;
        }
        D_800DDE10[arg0] = 0;
        assign_new_process_entry(gEntityGObjProcessArray3[arg0], func_80177098_ovl3);
    }
    temp = 65535.0f;
    scale = 0.2f;
    D_800DDA90[arg0] = 0x26;
    D_800E0D50[arg0] = omCurrentObj->objId;
    D_800E33D0[arg0] = 0.0f;
    D_800E3210[arg0] = 0.0f;
    D_800E3050[arg0] = 0.0f;
    D_800E64D0[arg0] = 0.0f;
    D_800E3910[arg0] = 0.0f;
    D_800E3750[arg0] = 0.0f;
    D_800E3590[arg0] = 0.0f;
    D_800E6690[arg0] = 0.0f;
    D_800E3E50[arg0] = temp;
    D_800E3C90[arg0] = temp;
    D_800E3AD0[arg0] = temp;
    D_800E6850[arg0] = temp;
    gEntitiesScaleZArray[arg0] = scale;
    gEntitiesScaleYArray[arg0] = scale;
    gEntitiesScaleXArray[arg0] = scale;
    animResetModelAndTextureAnimation(D_800DE350[arg0]);
}

void func_80169694_ovl3(s32 arg0) {
    func_801A32EC(&D_801CA980);
    func_801A3938(0);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x11, D_80196910_ovl3);
}

void func_801696F0_ovl3(s32 arg0) {
    func_800FF200(D_8012E944);
}

#ifdef NON_MATCHING
/* 3/224.  Was 12/224 with the two constants as `extern f32`; ovl3's rodata is
   MIGRATED now, and the literal form fixed nine of the twelve FP-register
   diffs on its own.  The residue is the D_800E6BD0/D_800E6D90 chained store:
   the ROM keeps it in $f0, IDO uses $f2.  Swept since: splitting the chain in
   either direction (126/61), reversing it (9), one physical line (3), dropping
   `temp`, assigning it late, and a second temp local -- all 3. */
extern void func_800A9760(s32);
extern void func_8016BBD0_ovl3(void);
extern void func_800FF0A8(s32);
extern void func_800FF0C4(s32);
extern void func_800FBE1C(void);
extern void func_800FA414(s32);
extern void func_800BB468(s32, s32);
void func_800B4924(s32);
extern void func_800B531C(struct GObj *);
void curObjSleepForever(void);
void ohSleep(s32);
void func_80169A98_ovl3(s32);

void func_80169718_ovl3(GObj *arg0) {
    f32 temp;

    if ((D_800EA520[omCurrentObj->objId] & 0xFF) == 0) {
        func_800A9760(0x20007);
    }
    D_800DF150[omCurrentObj->objId] = func_80169A98_ovl3;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_8016BBD0_ovl3();
    arg0->flags |= 1;
    func_800FF0A8(D_8012E944);
    temp = 65535.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = temp;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    func_800FBE1C();
    func_800FA414(5);
    func_800BB468(0, 0);
    ohSleep(0x41);
    D_800E98E0[omCurrentObj->objId] = 1;
    arg0->flags ^= 1;
    func_800FF0C4(D_8012E944);
    D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId] =
        D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] =
        D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800E3210[omCurrentObj->objId] = -10.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800FA414(3);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169718_ovl3.s")
#endif
extern f32 gKirbyHp;
extern void play_sound(s32);
s32 change_kirby_hp(f32);
void func_800B2340();
void func_800B26D8();

void func_80169A98_ovl3(s32 arg0) {
    struct DObj *dobj;
    Vector sp30;
    Vector sp24;

    dobj = D_800DE350[D_800E0D50[omCurrentObj->objId]]->data.dobj;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800B2340(&sp30, dobj, D_800E0D50[omCurrentObj->objId]);
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp30.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp30.y - 5.0f;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp30.z;
        func_800B26D8(&sp24, dobj, D_800E0D50[omCurrentObj->objId]);
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + sp24.y;
    }
    if (D_800E98E0[omCurrentObj->objId] > 0) {
        change_kirby_hp(-1.0f);
        if (0.0f < gKirbyHp) {
            play_sound(0xD9);
        }
        func_8016BD24_ovl3(1);
    }
    func_801696F0_ovl3(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_80169C10_ovl3.s")

extern u32 D_8012BCA0;
/* D_80197200_ovl3 now emitted by this TU */
void func_801A33B8(u8 *);

void func_8016A144_ovl3(s32 arg0) {
    if (D_800E98E0[omCurrentObj->objId] >= 2) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    }
    D_800E8920[omCurrentObj->objId] = 0;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            break;
        case 3:
            change_kirby_hp(-1.0f);
            func_8016BD24_ovl3(1);
            break;
        case 2:
            if (D_800E6310[omCurrentObj->objId] != 0) {
                D_800E98E0[omCurrentObj->objId] = 3;
            } else {
                func_801A33B8(&D_801CA980);
                if (((D_8012BCA0 >> 19) & 0xFFF) != 0) {
                    D_800E98E0[omCurrentObj->objId] = 3;
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    if (D_800EA1A0[omCurrentObj->objId] == 0) {
                        play_sound(0xDB);
                        D_800EA1A0[omCurrentObj->objId] = 1;
                    }
                }
            }
            break;
    }
    func_801696F0_ovl3(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A308_ovl3.s")

void func_8016A934_ovl3(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 1;
    if (0.0f < gKirbyHp) {
        switch (D_800E98E0[omCurrentObj->objId]) {
            case 4:
                gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
                gEntitiesScaleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
                D_800E8920[omCurrentObj->objId] = 0;
                func_8016BD24_ovl3(1);
                break;
            case 1:
            case 2:
            case 3:
                gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f;
                gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] - 20.0f;
                func_801A33B8(&D_801CA980);
                break;
            case 0:
            default:
                break;
        }
    } else {
        func_8016BD24_ovl3(1);
    }
    func_801696F0_ovl3(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016AAA4_ovl3.s")

#ifdef NON_MATCHING
/* 11/207. Everything matches except ONE delay-slot fill: the ROM puts
   `lui $a2, %hi(D_8012BCA0)` (from the branch TARGET) in the delay slot of
   `beqz $v0` and starts the fall-through block with `lui $t5, %hi(omCurrentObj)`;
   IDO fills the slot from the fall-through instead, so everything after is
   shifted by one. Swept: else-if vs early-break vs inverted polarity, one-line
   then-block, `!= 0` vs bare call, an empty do-while, and a struct pointer over
   D_8012BCA0 (113 diffs -- much worse). The float operand swap in case 0 is
   load-bearing: it took this from 17 to 11. */
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern f32 D_801292B0[];
extern u8 D_801CB1FC;
extern u8 D_801CA840;
extern void func_801A36CC(void *);
extern void func_801A38BC_ovl7(void);
extern s32 func_8016B74C_ovl3(void);
void func_8016B9D4_ovl3(s32);
extern s32 func_80111574(u8 *, s32);
extern void func_80111C4C(s32);

void func_8016B410_ovl3(s32 arg0) {
    if ((D_800BE500 == 4) && (D_800BE504 == 1) && (D_800BE508 == 0)) {
        D_801292B0[0] = gEntitiesNextPosXArray[0];
        D_801292B0[1] = gEntitiesNextPosYArray[0];
        D_801292B0[2] = gEntitiesNextPosZArray[0];
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntitiesNextPosXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] + gEntitiesNextPosYArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + gEntitiesNextPosZArray[omCurrentObj->objId];
            break;
        case 4:
            func_801A3938((s32) &D_801CB1FC);
            func_801A36CC(func_801A38BC_ovl7);
            func_801A33B8(&D_801CA980);
            if (func_8016B74C_ovl3() != 0) {
                D_800E98E0[omCurrentObj->objId] = 6;
            } else if (((D_8012BCA0 >> 19) & 0xFFF) != 0) {
                if ((((D_8012BCA0 >> 19) & 0x1C0) != 0)
                 && (((struct CollisionTriangle **) &D_8012BCA0)[5] != NULL)
                 && ((((struct CollisionTriangle **) &D_8012BCA0)[5]->collisionType == 4)
                  || (((struct CollisionTriangle **) &D_8012BCA0)[5]->collisionType == 5))) {
                    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016B9D4_ovl3);
                    return;
                }
                play_sound(0xD7);
                D_800E98E0[omCurrentObj->objId] = 5;
                D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.8f;
                D_800E3210[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * 0.8f;
                if (((D_8012BCA0 >> 19) & 0x3F) != 0) {
                    D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
                }
                if (((D_8012BCA0 >> 19) & 0xFC0) != 0) {
                    D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
                }
            } else {
                func_80111C4C(func_80111574(&D_801CA840, omCurrentObj->objId));
            }
            break;
        case 5:
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5707964f;
            func_8016BD24_ovl3(1);
            break;
        case 1:
        case 2:
        case 3:
        case 6:
        default:
            break;
    }
    func_801696F0_ovl3(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B410_ovl3.s")
#endif
extern void *D_8012BCA8;
extern void *D_8012BCB4;
extern void *D_8012BCC0;
extern void *D_8012BCCC;
s32 func_800F9438(s32);
s32 func_80104AB4(f32 *, f32 *, u16, u16, void *);
void func_8010DC00(void *, void *);

#ifdef NON_MATCHING
/* 116/161: one-slot temp-register rotation plus IDO CSEing the four separate
   mtc1 $zero the ROM materialises per compare. */
s32 func_8016B74C_ovl3(void) {
    f32 diff1;
    f32 diff2;
    f32 sp4C[3];
    f32 sp40[3];
    f32 sp34[3];
    void *sp30;
    f32 *temp;

    if (func_800F9438(D_800E5F90[omCurrentObj->objId]) == 0) {
        return 0;
    }
    temp = D_800E0490[omCurrentObj->objId][1];
    sp40[0] = gEntitiesPosXArray[omCurrentObj->objId];
    sp40[1] = gEntitiesPosYArray[omCurrentObj->objId] + *temp;
    sp40[2] = gEntitiesPosZArray[omCurrentObj->objId];
    sp34[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp34[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + *temp;
    sp34[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    diff1 = D_800E6BD0[omCurrentObj->objId] - D_800E6D90[omCurrentObj->objId];
    if (diff1 != 0.0f) {
        if (diff1 > 0.0f) {
            sp30 = D_8012BCC0;
        } else {
            sp30 = D_8012BCCC;
        }
        if (func_80104AB4(sp40, sp34, 1, 8, &sp30) != 0) {
            func_8010DC00(sp30, sp4C);
            if (sp4C[1] == 0.0f) {
                return 1;
            }
        }
    }
    diff2 = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId];
    if (diff2 != 0.0f) {
        if (diff2 > 0.0f) {
            sp30 = D_8012BCB4;
        } else {
            sp30 = D_8012BCA8;
        }
        if (func_80104AB4(sp40, sp34, 1, 8, &sp30) != 0) {
            func_8010DC00(sp30, sp4C);
            if ((sp4C[0] == 0.0f) && (sp4C[2] == 0.0f)) {
                return 1;
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B74C_ovl3.s")
#endif
/* D_80197274_ovl3 now emitted by this TU */
void func_8016BB40_ovl3(s32);
void func_800B4924(s32);
void func_800B33F4(void);
void func_800AF27C(void);
void curObjSleepForever(void);
void ohSleep(s32);

void func_8016B9D4_ovl3(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = (void (*)(struct GObj *)) func_8016BB40_ovl3;
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_800AA018(0x200F7);
        func_800AA018(0x200F8);
    } else {
        func_800AA018(0x200FB);
        func_800AA018(0x200FC);
    }
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 3.9f;
    play_sound(0xFF);
    ohSleep(10);
    D_800E3210[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_8016BB40_ovl3(s32 arg0) {
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            break;
        case 1:
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5707964f;
            func_8016BD24_ovl3(0);
            break;
    }
    func_801696F0_ovl3(arg0);
}

void func_8016BBD0_ovl3(void) {
    func_800AA018(0x20027);
    func_800AA018(0x20028);
}

void func_8016BC00_ovl3(void) {
    void func_800AECC0(f32);
    void func_800AED20(f32);

    switch (gEntityFuncListIDArray[omCurrentObj->objId]) {
        case 1:
        case 2:
        case 4:
        case 8:
        case 11:
        case 12:
        case 13:
        case 14:
            if (0.0f <= D_800E64D0[omCurrentObj->objId]) {
                func_800AA018(0x20029);
                func_800AA018(0x2002A);
            } else {
                func_800AA018(0x2002B);
                func_800AA018(0x2002C);
            }
            D_800E17D0[omCurrentObj->objId] = -1.5707964f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
            break;
        case 0:
        case 3:
        case 5:
        case 6:
        case 7:
        case 9:
        case 10:
        case 15:
        case 16:
        default:
            func_800AA018(0x20027);
            func_800AA018(0x20028);
            break;
    }
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BD24_ovl3.s")

