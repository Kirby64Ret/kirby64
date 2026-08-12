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
extern f32 D_80197278_ovl3;

extern void func_8016BD24_ovl3(s32);
extern void func_801696F0_ovl3(s32);

extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct GObjProcess *gEntityGObjProcessArray3[];
extern s32 D_8012EAE0;
extern f32 D_801971F0_ovl3;
extern f32 D_801971F4_ovl3;
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
    temp = D_801971F0_ovl3;
    scale = D_801971F4_ovl3;
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
/* 12/224: instruction-for-instruction exact; only the FP register names
   differ. The ROM allocates $f12 to the shared 0.0f and $f14 to `temp`;
   IDO gives the 0.0f $f14 and `temp` $f2 whatever the statement order,
   whether the zero is a literal or a named local, and whether the
   D_800E3E50 group is chained or split. Same class as the one-slot
   register-allocation residue in the guide. */
extern f32 D_801971F8_ovl3;
extern f32 D_801971FC_ovl3;
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
    temp = D_801971F8_ovl3;
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
    D_800E3750[omCurrentObj->objId] = D_801971FC_ovl3;
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
extern f32 D_80197200_ovl3;
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
                    D_800E3C90[omCurrentObj->objId] = D_80197200_ovl3;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016A934_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016AAA4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016B410_ovl3.s")

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
extern f32 D_80197274_ovl3;
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
    D_800E3210[omCurrentObj->objId] = D_80197274_ovl3;
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
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_80197278_ovl3;
            func_8016BD24_ovl3(0);
            break;
    }
    func_801696F0_ovl3(arg0);
}

void func_8016BBD0_ovl3(void) {
    func_800AA018(0x20027);
    func_800AA018(0x20028);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BC00_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_4/func_8016BD24_ovl3.s")

