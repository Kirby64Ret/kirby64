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
extern f32 D_801CE458_ovl7;
void func_800AFBB4(s32, struct GObj *);
extern u8 D_800E7880[];
extern struct Sub800E1B50_Unk98 D_801CC9AC_ovl7;
extern f32 D_801CE3D0_ovl7, D_801CE3D4_ovl7, D_801CE3D8_ovl7, D_801CE3DC_ovl7;
extern f32 D_801CE470_ovl7, D_801CE474_ovl7, D_801CE478_ovl7, D_801CE47C_ovl7, D_801CE480_ovl7;
extern s32 D_800DDFD0[];
extern f32 D_800EB160[], D_800EB320[], D_800EA6E0[];
extern f32 D_801CE40C_ovl7;
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
s32 func_801A0D74_ovl7(void);
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
extern f32 D_801CE3E0_ovl7;
extern f32 D_801CE3E4_ovl7;
extern f32 D_801CE3E8_ovl7;
extern f32 D_801CE3EC_ovl7;
extern f32 D_801CE3F0_ovl7;
extern f32 D_801CE3F4_ovl7;
extern f32 D_801CE3F8_ovl7;
extern f32 D_801CE3FC_ovl7;
extern f32 D_801CE400_ovl7;
extern f32 D_801CE404_ovl7;
extern f32 D_801CE408_ovl7;
extern f32 D_801CE45C_ovl7;
extern f32 D_801CE460_ovl7;
extern f32 D_801CE464_ovl7;
extern struct Sub800E1B50_Unk98 D_801CCBEC_ovl7;



#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B8F20_ovl7.s")

/* 3 diffs: registers and every instruction are exact; only the emission order
   of the three loop-invariant constant loads differs (ROM loads AC,B0,B4 and
   assigns $f24,$f22,$f20; IDO emits them in assignment order). Assignment
   order fixes the registers but not the load order. */
#ifdef NON_MATCHING
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
extern f32 D_801CE3AC_ovl7, D_801CE3B0_ovl7, D_801CE3B4_ovl7;

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
    sp24 = D_801CE3B4_ovl7;
    sp28 = D_801CE3B0_ovl7;
    sp2C = D_801CE3AC_ovl7;
    while (1) {
        if ((func_800B30BC(sp24, sp28, sp2C) != 0) && (D_800D6B54 == 0)) {
            func_801BA32C_ovl7();
        }
        ohSleep(random_soft_s32_range(0x1E) + 0x78);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B9150_ovl7.s")
#endif
void func_801B929C_ovl7(GObj *arg0) {
    void func_801B9498_ovl7(struct GObj *);
    void func_801A2558_ovl7(void *);
    extern s32 D_801CACF0_ovl7, D_801CAD04_ovl7;
    extern f32 D_801CE3B8_ovl7, D_801CE3BC_ovl7, D_801CE3C0_ovl7, D_801CE3C4_ovl7;
    f32 temp;

    D_800DF150[omCurrentObj->objId] = func_801B9498_ovl7;
    func_801A0D50_ovl7(func_801B9424_ovl7);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0x14;
    temp = D_800EA6E0[omCurrentObj->objId];
    if (((D_801CE3B8_ovl7 <= temp) && (temp <= D_801CE3BC_ovl7)) ||
        ((D_801CE3C0_ovl7 <= temp) && (temp <= D_801CE3C4_ovl7))) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B9498_ovl7.s")

void func_801B96A8_ovl7(GObj *arg0) {
    extern struct Sub800E1B50_Unk98 D_801CC988_ovl7;
    extern f32 D_801CE3C8_ovl7, D_801CE3CC_ovl7;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CC988_ovl7;
    func_8019AF00_ovl7(10.0f);
    ohSleep(0x16);
    D_800E3750[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * D_801CE3C8_ovl7;
    D_800E3C90[omCurrentObj->objId] = ABSF(D_800E3C90[omCurrentObj->objId]);
    D_800E6690[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * D_801CE3CC_ovl7;
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
    D_800EB320[omCurrentObj->objId] = D_801CE3D0_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_801CE3D4_ovl7;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = D_801CE3D8_ovl7;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = D_801CE3DC_ovl7;
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
    if ((0.0f < D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < D_801CE3E0_ovl7)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + D_801CE3E4_ovl7;
    } else if ((D_801CE3E8_ovl7 <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < D_801CE3EC_ovl7)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] + D_801CE3F0_ovl7;
    } else if ((D_801CE3F4_ovl7 <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < D_801CE3F8_ovl7)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - D_801CE3FC_ovl7;
    } else if ((D_801CE400_ovl7 <= D_800EB320[omCurrentObj->objId]) && (D_800EB320[omCurrentObj->objId] < D_801CE3F4_ovl7)) {
        D_800EB320[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId] - D_801CE404_ovl7;
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
    D_800E6850[omCurrentObj->objId] = D_801CE408_ovl7;
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
        f32 c = D_801CE40C_ovl7;

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801B9E80_ovl7.s")

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
    extern const char D_801CE380_ovl7[];
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf(D_801CE380_ovl7, track);
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
extern f32 D_801CE44C_ovl7;
extern f32 D_801CE450_ovl7;

void func_801BA764_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    ent->unk98 = &D_801CCBA4_ovl7;
    func_800AA018(0x10131);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_801CE44C_ovl7;
    D_800E3750[omCurrentObj->objId] = D_801CE450_ovl7;
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
    extern f32 D_801CE454_ovl7;
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
    D_800E3C90[omCurrentObj->objId] = D_801CE454_ovl7;
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
    D_800E3C90[omCurrentObj->objId] = D_801CE458_ovl7;
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
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += D_801CE45C_ovl7;
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
    if (d->angle.v.x < D_801CE460_ovl7) {
        d->angle.v.x = d->angle.v.x + D_801CE464_ovl7;
    } else {
        func_800A9EA4(0x1012F);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_13/func_801BB3D4_ovl7.s")

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
    if ((D_801CE470_ovl7 < D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x) || (D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x < D_801CE474_ovl7)) {
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += D_801CE478_ovl7;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.y = 0.0f;
    } else {
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = D_801CE47C_ovl7;
        D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.y += D_801CE480_ovl7;
    }
}

