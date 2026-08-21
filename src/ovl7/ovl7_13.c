#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

extern struct Sub800E1B50_Unk98 D_801CCBC8_ovl7;
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
extern f32 D_800E3210[], D_800E3750[], D_800E3C90[];
void ohSleep(s32);
extern struct Sub800E1B50_Unk98 D_801CCB80_ovl7;
/* D_801CE458_ovl7 = 65535.0f : now emitted by this TU */
void func_800AFBB4(s32, struct GObj *);
extern u8 D_800E7880[];
extern struct Sub800E1B50_Unk98 D_801CC9AC_ovl7;
/* D_801CE3DC_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE480_ovl7 = 0.34906587f : now emitted by this TU */
extern s32 D_800DDFD0[];
extern f32 D_800EB160[], D_800EB320[], D_800EA6E0[];
/* D_801CE40C_ovl7 = 6.2831855f : now emitted by this TU */
void func_8019AF00_ovl7(f32);
extern s32 D_800E9C60[], D_800E8AE0[];
extern s32 random_soft_s32_range(s32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);

void func_8019B424_ovl7(void);
void eneTurnCommon(s32);
s32 func_8019A9AC_ovl7(f32, f32);
void func_801B9424_ovl7(GObj *);

s32 func_8019B834_ovl7(void);
extern struct GObjProcess *gEntityGObjProcessArray[];
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));

extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
extern struct Sub800E1B50_Unk98 D_801CC964_ovl7;
void curObjSleepForever(void);
void func_800A9EA4(s32);
void func_801BA6B8_ovl7(GObj *);
void func_801BA648_ovl7(GObj *);
void func_801BADD8_ovl7(GObj *);
void func_801BAD50_ovl7(GObj *);

void func_801A0D50_ovl7(void *);
void func_801BAB98_ovl7(GObj *);
void func_801BAB0C_ovl7(GObj *);
void func_801BB7B8_ovl7(GObj *);
void func_801BB738_ovl7(GObj *);
void func_800AA018(s32);
void func_800B3520(void);
void func_800AF27C(void);
void func_801A3E80_ovl7(GObj *);
s32 func_801A0D74_ovl7();
void func_801BB8EC_ovl7(void);
void func_8019F3B0_ovl7(void);
void func_800A2300(GObj *);

extern FUNCLIST D_801CD73C_ovl7;
extern FUNCLIST D_801CD76C_ovl7;
extern FUNCLIST D_801CD780_ovl7;
extern FUNCLIST D_801CD78C_ovl7;
extern FUNCLIST D_801CD7A8_ovl7;
extern FUNCLIST D_801CD7D0_ovl7;
extern FUNCLIST D_801CD7E8_ovl7;
extern FUNCLIST D_801CD804_ovl7;
extern FUNCLIST D_801CD798_ovl7;
extern FUNCLIST D_801CD7B8_ovl7;
extern void func_8019AF00_ovl7(f32);
/* D_801CE3E0_ovl7 = 2.3561945f : now emitted by this TU */
/* D_801CE3E4_ovl7 = 0.06981317f : now emitted by this TU */
/* D_801CE3E8_ovl7 = 2.3561945f : now emitted by this TU */
/* D_801CE3EC_ovl7 = 3.0543263f : now emitted by this TU */
/* D_801CE3F0_ovl7 = 0.034906585f : now emitted by this TU */
/* D_801CE3F4_ovl7 = 3.9269907f : now emitted by this TU */
/* D_801CE3F8_ovl7 = 6.2831855f : now emitted by this TU */
/* D_801CE3FC_ovl7 = 0.06981317f : now emitted by this TU */
/* D_801CE400_ovl7 = 3.2288592f : now emitted by this TU */
/* D_801CE404_ovl7 = 0.034906585f : now emitted by this TU */
/* D_801CE408_ovl7 = 65535.0f : now emitted by this TU */
/* D_801CE45C_ovl7 = 0.17453294f : now emitted by this TU */
/* D_801CE460_ovl7 = 1.0471976f : now emitted by this TU */
/* D_801CE464_ovl7 = 0.17453294f : now emitted by this TU */
extern struct Sub800E1B50_Unk98 D_801CCBEC_ovl7;



#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern void (*D_801CD730_ovl7)(GObj *);

void func_801B8F20_ovl7(s32 arg0) {
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f12;
    f32 var_f0;
    s32 var_v1;
    u32 temp_t0;
    u32 temp_t0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u8 temp_a0;

    temp_v1 = omCurrentObj->objId;
    D_800E8920[temp_v1] = 0;
    D_800E1B50[temp_v1]->unk39 = -1;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    D_800EB320[omCurrentObj->objId] = 0.0f;
    temp_t0 = omCurrentObj->objId;
    temp_a0 = D_800E7880[temp_t0];
    var_v1 = temp_t0 * 4;
    if (((temp_a0 == 1) && (D_800E98E0[temp_t0] != 0)) || (var_v1 = temp_t0 * 4, (temp_a0 == 0))) {
        var_v0 = gEntitiesAngleZArray + var_v1;
        var_f0 = *var_v0;
        if (var_f0 > 6.2831855f) {
            do {
                *var_v0 = var_f0 - 6.2831855f;
                temp_v1_2 = omCurrentObj->objId;
                var_v1 = temp_v1_2 * 4;
                var_v0 = &gEntitiesAngleZArray[temp_v1_2];
                var_f0 = *var_v0;
            } while (var_f0 > 6.2831855f);
        }
        if (var_f0 < 0.0f) {
            do {
                *var_v0 = var_f0 + 6.2831855f;
                temp_v1_3 = omCurrentObj->objId;
                var_v1 = temp_v1_3 * 4;
                var_v0 = &gEntitiesAngleZArray[temp_v1_3];
                var_f0 = *var_v0;
            } while (var_f0 < 0.0f);
        }
        temp_f12 = 6.2831855f - var_f0;
        *(D_800EA6E0 + var_v1) = temp_f12;
        D_800EB320[omCurrentObj->objId] = temp_f12;
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EA6E0[temp_t0] = 1.5707964f;
        temp_v1_4 = omCurrentObj->objId;
        D_800EB320[temp_v1_4] = D_800EA6E0[temp_v1_4];
    }
    temp_t0_2 = omCurrentObj->objId;
    if (D_800E7880[temp_t0_2] != 0) {
        gEntitiesAngleZArray[temp_t0_2] = 0.0f;
        temp_v0 = &gEntitiesAngleZArray[omCurrentObj->objId];
        *temp_v0 = *temp_v0;
    }
    D_800E9C60[omCurrentObj->objId] = 0;
    utilFuncTableJump((u32) D_800E7880[omCurrentObj->objId], 3U, &D_801CD730_ovl7);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B8F20_ovl7.s")
#endif

/* 3 diffs: registers and every instruction are exact; only the emission order
   of the three loop-invariant constant loads differs (ROM loads AC,B0,B4 and
   assigns $f24,$f22,$f20; IDO emits them in assignment order). Assignment
   order fixes the registers but not the load order. */
extern void (*D_800DEDD0[])(struct GObj *);
extern void (*D_800DEF90[])(s32);
extern void (*D_800DF150[])(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray5[];
void procMainStub(struct GObj *);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void func_800B74B8(s32);
void func_8019BB58_ovl7(void);
void func_801A3280_ovl7(void);
s32 func_800B30BC(f32, f32, f32);
s32 func_801BA32C_ovl7(void);
extern s32 D_800D6B54;

void func_801B9150_ovl7(struct GObj *arg0) {
    f32 sp2C;
    f32 sp28;
    f32 sp24;

    D_800DEDD0[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B74B8;
    D_800DF150[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800AFBB4(0, omCurrentObj);
    func_8019BB58_ovl7();
    func_801A3280_ovl7();
    ohSleep(random_soft_s32_range(0x3C));
    sp24 = 1.2f;
    sp28 = 1.3f;
    sp2C = 1500.0f;
    while (1) {
        if ((func_800B30BC(sp24, sp28, sp2C) != 0) && (D_800D6B54 == 0)) {
            func_801BA32C_ovl7();
        }
        ohSleep(random_soft_s32_range(0x1E) + 0x78);
    }
}
void func_801B929C_ovl7(GObj *arg0) {
    void func_801B9498_ovl7(struct GObj *);
    void func_801A2558_ovl7(void *);
    extern s32 D_801CACF0_ovl7, D_801CAD04_ovl7;
/* D_801CE3C4_ovl7 = 4.7298427f : now emitted by this TU */
    f32 temp;

    D_800DF150[omCurrentObj->objId] = func_801B9498_ovl7;
    func_801A0D50_ovl7(func_801B9424_ovl7);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0x14;
    temp = D_800EA6E0[omCurrentObj->objId];
    if (((1.553343f <= temp) && (temp <= 1.5882497f)) ||
        ((4.694936f <= temp) && (temp <= 4.7298427f))) {
        func_801A2558_ovl7(&D_801CAD04_ovl7);
    } else {
        func_801A2558_ovl7(&D_801CACF0_ovl7);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        }
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_801B9424_ovl7(arg0);
}

void func_801B9424_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_801CD73C_ovl7);
    }
}

#ifdef NON_MATCHING
/* 66/132 */
void func_801B9498_ovl7(GObj *arg0) {
    extern s32 D_800BE4EC;
    extern s32 D_800E9E20[];
    extern FUNCLIST D_801CD754_ovl7;
    void func_801051AC(struct Sub800E1B50_Unk84 *);
    void func_801BA240_ovl7(GObj *);
    void func_801B9E80_ovl7(GObj *);
    f32 sp1C;
    f32 sp18;

    {
    struct Sub800E1B50_Unk84 *sub = D_800E1B50[omCurrentObj->objId]->unk84;

    if (D_800E9E20[omCurrentObj->objId] == 0) {
        sp18 = D_800E6A10[omCurrentObj->objId];
        if (D_800E64D0[omCurrentObj->objId] < 0.0f) {
            D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        }
        if (D_800E9FE0[omCurrentObj->objId].as_s32 > 0) {
            D_800E9FE0[omCurrentObj->objId].as_s32 -= 1;
            if (sub != NULL) {
                sub->unk4 = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
                sub->unk8 = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
                sub->unkC = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
                func_801051AC(sub);
            }
        } else {
            sp1C = (f32) func_801A0D74_ovl7(arg0);
        }
        D_800E6A10[omCurrentObj->objId] = sp18;
    } else {
        sp1C = 0.0f;
    }
    }
    func_801BA240_ovl7(arg0);
    if (sp1C == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_801CD754_ovl7);
    }
    func_801B9E80_ovl7(arg0);
    if ((omCurrentObj->objId & 1) == (D_800BE4EC & 1)) {
        func_8019F3B0_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B9498_ovl7.s")
#endif

void func_801B96A8_ovl7(GObj *arg0) {
    extern struct Sub800E1B50_Unk98 D_801CC988_ovl7;
/* D_801CE3CC_ovl7 = 0.05f : now emitted by this TU */
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC988_ovl7;
    func_8019AF00_ovl7(10.0f);
    ohSleep(0x16);
    D_800E3750[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * 0.1f;
    D_800E3C90[omCurrentObj->objId] = ABSF(D_800E3C90[omCurrentObj->objId]);
    D_800E6690[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * 0.05f;
    D_800E6850[omCurrentObj->objId] = ABSF(D_800E6850[omCurrentObj->objId]);
    ohSleep(0x14);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801B980C_ovl7(GObj *arg0) {
}

void func_801B9814_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    ent->unk98 = &D_801CC9AC_ovl7;
    D_800EB320[omCurrentObj->objId] = 3.1415927f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    curObjSleepForever();
}

void func_801B996C_ovl7(GObj *arg0) {
}

void func_801B9974_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CC964_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100EF);
    curObjSleepForever();
}

void func_801B99F8_ovl7(GObj *arg0) {
    if ((0.0f < D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 2.3561945f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + 0.06981317f;
    } else if ((2.3561945f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 3.0543263f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + 0.034906585f;
    } else if ((3.9269907f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 6.2831855f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.06981317f;
    } else if ((3.2288592f <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < 3.9269907f)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - 0.034906585f;
    }
    func_8019AF00_ovl7(4.5f);
}

void func_801B9B40_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CC964_ovl7;
    func_800AA018(0x100F0);
    curObjSleepForever();
}

void func_801B9BA8_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7();
    eneTurnCommon(6);
    if (ent->unk3C == 0) {
        if (func_8019A9AC_ovl7(160.0f, 480.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B9424_ovl7);
        }
    }
}

void func_801B9C5C_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    ent->unk98 = &D_801CC964_ovl7;
    func_800AA018(0x100EC);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

void func_801B9D38_ovl7(GObj *arg0) {
}

void func_801B9D40_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    ent->unk98 = &D_801CC964_ovl7;
    D_800EB160[omCurrentObj->objId] = 0.0f;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        f32 c = 6.2831855f;

        D_800E6A10[omCurrentObj->objId] = 1.0f;
        D_800EB320[omCurrentObj->objId] = c - D_800EB320[omCurrentObj->objId];
        D_800EA6E0[omCurrentObj->objId] = c - D_800EA6E0[omCurrentObj->objId];
    }
    func_800AA018(0x100EF);
    func_8019AF00_ovl7(4.5f);
    ohSleep(0xF0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801B9E78_ovl7(GObj *arg0) {
}

#ifdef PORT
/* Aim-angle chaser (ported from m2c): step D_800EA6E0 toward the target
 * angle D_800EB320 with graded steps (8, 4, 1 degrees), going the short
 * way around when |cur - target| < pi and the long way otherwise, wrap
 * into [0, 2pi), and pose the model's root DObj X rotation to the angle
 * minus pi/2. */
void func_801B9E80_ovl7(GObj *arg0) {
    u32 id = omCurrentObj->objId;
    f32 cur = D_800EA6E0[id];
    f32 diff = cur - D_800EB320[id];
    f32 mag = (diff < 0.0f) ? -diff : diff;

    if (mag < 3.1415927f) {
        if (diff > 0.13962634f) {
            cur -= 0.13962634f;
        } else if (diff > 0.06981317f) {
            cur -= 0.06981317f;
        } else if (diff >= 0.017453292f) {
            cur -= 0.017453292f;
        } else if (diff < -0.13962634f) {
            cur += 0.13962634f;
        } else if (diff < -0.06981317f) {
            cur += 0.06981317f;
        } else if (diff <= -0.017453292f) {
            cur += 0.017453292f;
        }
    } else {
        if (diff > 0.13962634f) {
            cur += 0.13962634f;
        } else if (diff > 0.06981317f) {
            cur += 0.06981317f;
        } else if (diff >= 0.017453292f) {
            cur += 0.017453292f;
        } else if (diff < -0.13962634f) {
            cur -= 0.13962634f;
        } else if (diff < -0.06981317f) {
            cur -= 0.06981317f;
        } else if (diff <= -0.017453292f) {
            cur -= 0.017453292f;
        }
    }
    while (cur > 6.2831855f) {
        cur -= 6.2831855f;
    }
    while (cur < 0.0f) {
        cur += 6.2831855f;
    }
    D_800EA6E0[omCurrentObj->objId] = cur;
    arg0->data.dobj->firstChild->angle.v.x = cur - 1.5707964f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B9E80_ovl7.s")
#endif

void func_801BA1EC_ovl7(GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->data.dobj->firstChild->angle.v.x = 0.0f;
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

void func_801BA240_ovl7(GObj *arg0) {
    Vector sp2C;
    struct DObj *dobj = D_800DFBD0[omCurrentObj->objId][3];

    D_800E9C60[omCurrentObj->objId] += 1;
    if (D_800E9C60[omCurrentObj->objId] >= 0xB) {
        D_800E9C60[omCurrentObj->objId] = random_soft_s32_range(3);
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            utilGetTransformSRT(&sp2C, dobj);
            func_800A7F74(3, 2, 0x3F, sp2C.x, sp2C.y, sp2C.z);
        }
    }
}

s32 func_801BA32C_ovl7(void) {
/* D_801CE380_ovl7 = "enemy req over 18. Track Num:%d\n" : now emitted by this TU */
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900((u16) track);
        return -1;
    }
    gEntityFuncListIDArray[track] = gEntityFuncListIDArray[omCurrentObj->objId];
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = D_800E7730[omCurrentObj->objId];
    D_800E77A0[track] = D_800E77A0[omCurrentObj->objId];
    D_800E7880[track] = 1;
    D_800E5F90[track] = D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[track] = D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    gEntitiesNextPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[track] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[track] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[track] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E98E0[track] = 1;
    gEntitiesAngleZArray[track] = gEntitiesAngleZArray[omCurrentObj->objId];
    return track;
}

void func_801BA56C_ovl7(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 5, &D_801CD76C_ovl7);
}

void func_801BA5C4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BA6B8_ovl7;
    func_801A0D50_ovl7(func_801BA648_ovl7);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_801BA648_ovl7(arg0);
}

void func_801BA648_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_801CD780_ovl7);
    }
}

void func_801BA6B8_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_801CD78C_ovl7);
}

void func_801BA700_ovl7(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10145);
    func_800B3520();
    func_800AF27C();
    func_801A3E80_ovl7(arg0);
}

void func_801BA75C_ovl7(GObj *arg0) {
}

extern struct Sub800E1B50_Unk98 D_801CCBA4_ovl7;
/* D_801CE44C_ovl7 = 65535.0f : now emitted by this TU */
/* D_801CE450_ovl7 = -0.65f : now emitted by this TU */

void func_801BA764_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    ent->unk98 = &D_801CCBA4_ovl7;
    func_800AA018(0x10131);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AF27C();
    func_800AA018(0x1012F);
    curObjSleepForever();
}

void func_801BA870_ovl7(void) {
    func_801A0D74_ovl7();
    func_801BB8EC_ovl7();
    func_8019F3B0_ovl7();
}

void func_801BA8A0_ovl7(GObj *arg0) {
    s32 func_801ACC34_ovl7(s32, s32);
    void play_sound(s32);
/* D_801CE454_ovl7 = 65535.0f : now emitted by this TU */
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CCB80_ovl7;
    func_800AFBB4(1, omCurrentObj);
    func_800AA018(0x1012B);
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 3.5f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 8.0f;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    while (1) {
        func_801ACC34_ovl7(0x24, 0);
        play_sound(0x169);
        ohSleep(random_soft_s32_range(0xA) + 0x23);
    }
}

void func_801BAA70_ovl7(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

void func_801BAA98_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BAB98_ovl7;
    func_801A0D50_ovl7(func_801BAB0C_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    func_801BAB0C_ovl7(arg0);
}

void func_801BAB0C_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD798_ovl7);
    }
}

void func_801BAB98_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_801CD7A8_ovl7);
}

void func_801BABE0_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CB470_ovl7;
    func_800B3520();
    curObjSleepForever();
}

void func_801BAC40_ovl7(GObj *arg0) {
    if (func_8019B834_ovl7() != 0) {
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BAB0C_ovl7);
    }
}

void func_801BACCC_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BADD8_ovl7;
    func_801A0D50_ovl7(func_801BAD50_ovl7);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_801BAD50_ovl7(arg0);
}

void func_801BAD50_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_801CD7B8_ovl7);
    }
}

void func_801BADD8_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_801CD7D0_ovl7);
}

void func_801BAE20_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CCB80_ovl7;
    func_800AFBB4(1, omCurrentObj);
    func_800AA018(0x1012B);
    if (D_800E7880[omCurrentObj->objId] == 2) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 3.5f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 8.0f;
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_801BAFB0_ovl7(void) {
    if (func_801A0D74_ovl7() == 0) {
        if (D_800E7880[omCurrentObj->objId] == 2) {
            if (func_8019A9AC_ovl7(160.0f, 400.0f) == 2) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BAD50_ovl7);
            }
        } else if (func_8019A9AC_ovl7(160.0f, 20.0f) == 2) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BAD50_ovl7);
        }
    }
    func_8019F3B0_ovl7();
}

void func_801BB0C4_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *temp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    temp->unk98 = &D_801CCBC8_ovl7;
    func_800A9EA4(0x1012B);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    ohSleep(5);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801BB1EC_ovl7(void) {
    func_801A0D74_ovl7();
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += 0.17453294f;
    func_8019F3B0_ovl7();
}

void func_801BB248_ovl7(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CCBEC_ovl7;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.5f;
    D_800E3210[omCurrentObj->objId] = -7.5f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 7.5f;
    curObjSleepForever();
}

void func_801BB34C_ovl7(void) {
    struct DObj *d;

    func_801A0D74_ovl7();
    d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    if (d->angle.v.x < 1.0471976f) {
        d->angle.v.x = d->angle.v.x + 0.17453294f;
    } else {
        func_800A9EA4(0x1012F);
    }
    func_8019F3B0_ovl7();
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
void func_801BB3D4_ovl7(s32 arg0) {
    GObj *temp_v1;
    f32 *temp_a0_2;
    f32 *var_at;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    u32 temp_a0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;

    temp_v0 = omCurrentObj->objId;
    D_800DDFD0[temp_v0] = 5;
    D_800E1B50[temp_v0]->unk98 = &D_801CCB80_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x1012B);
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = 0.0f;
    temp_v1 = omCurrentObj;
    temp_a0 = temp_v1->objId;
    if (D_800E7880[temp_a0] == 2) {
        var_f0 = 3.5f;
        D_800E64D0[temp_a0] = D_800E6A10[temp_a0] * 3.5f;
        D_800E6690[temp_v1->objId] = 0.0f;
        var_at = &D_800E6850[temp_v1->objId];
    } else {
        var_f0 = 8.0f;
        D_800E64D0[temp_a0] = D_800E6A10[temp_a0] * 8.0f;
        D_800E6690[temp_v1->objId] = 0.0f;
        var_at = &D_800E6850[temp_v1->objId];
    }
    *var_at = var_f0;
    temp_a0_2 = &D_800E3210[temp_v1->objId];
    *temp_a0_2 = -*temp_a0_2;
    D_800E3750[temp_v1->objId] = -0.325f;
    temp_v0_2 = temp_v1->objId;
    temp_f0 = D_800E3210[temp_v0_2];
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
        D_800E3C90[temp_v0_2] = -var_f2_2;
    } else {
        if (temp_f0 < 0.0f) {
            var_f2_3 = -temp_f0;
        } else {
            var_f2_3 = temp_f0;
        }
        D_800E3C90[temp_v0_2] = var_f2_3;
    }
loop_15:
    temp_v0_3 = temp_v1->objId;
    if (!(D_800E3210[temp_v0_3] < 0.0f)) {
        ohSleep(1);
        goto loop_15;
    }
    D_800E3750[temp_v0_3] = 0.0f;
    temp_v0_4 = temp_v1->objId;
    D_800E3210[temp_v0_4] = D_800E3750[temp_v0_4];
    D_800E3C90[temp_v1->objId] = 65535.0f;
    curObjSleepForever();
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801BB3D4_ovl7.s")
#endif

void func_801BB69C_ovl7(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

void func_801BB6C4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801BB7B8_ovl7;
    func_801A0D50_ovl7(func_801BB738_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
    func_801BB738_ovl7(arg0);
}

void func_801BB738_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_801CD7E8_ovl7);
    }
}

void func_801BB7B8_ovl7(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_801CD804_ovl7);
}

void func_801BB800_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 6;
    ent->unk98 = &D_801CB470_ovl7;
    func_800B3520();
    curObjSleepForever();
}

void func_801BB860_ovl7(GObj *arg0) {
    if (func_8019B834_ovl7() != 0) {
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801BB738_ovl7);
    }
}

void func_801BB8EC_ovl7(void) {
    if ((1.6580629f < D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x) || (D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x < 1.4835298f)) {
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += 0.15707964f;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.y = 0.0f;
    } else {
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = 1.5707964f;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.y += 0.34906587f;
    }
}

