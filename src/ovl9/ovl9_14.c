#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern s32 random_soft_s32_range(s32);
void func_80210C58_ovl9(struct GObj *);
void func_80210BE8_ovl9(struct GObj *);
void func_80211078_ovl9(struct GObj *);
void func_80210FEC_ovl9(struct GObj *);

extern s32 func_8019B834_ovl7(void);

extern void func_800B67A8(struct GObj *);
extern f32 D_8021DD70_ovl9;
extern f32 D_8021DD74_ovl9;
extern FUNCLIST D_8021CC50_ovl9;
void func_80214094_ovl9(void);

extern void eneTurnCommon(s32);
extern FUNCLIST D_8021CCA0_ovl9;
void func_802123B8_ovl9(struct GObj *);
void func_80212338_ovl9(struct GObj *);
void func_80212AF8_ovl9(struct GObj *);
void func_80212A70_ovl9(struct GObj *);

extern void func_801A3E80_ovl7(struct GObj *);
extern f32 D_8021DD3C_ovl9;
extern f32 D_8021DD40_ovl9;
extern f32 D_8021DD44_ovl9;

extern void func_801A0D50_ovl7(void *);
void func_802128B8_ovl9(struct GObj *);
void func_8021282C_ovl9(struct GObj *);
void func_802134D8_ovl9(struct GObj *);
void func_80213458_ovl9(struct GObj *);
void func_80213778_ovl9(struct GObj *);
void func_80213C18_ovl9(struct GObj *);

extern void play_sound(s32);
extern void func_800AA018(s32);
extern void func_800AF27C(void);

s32 func_80213FDC_ovl9();
void func_80213708_ovl9(struct GObj *);
void func_80213B94_ovl9(struct GObj *);

extern void func_800B3520(void);
extern s32 D_801CB470_ovl7;
void func_80211560_ovl9();

extern f32 D_8021DD6C_ovl9;

extern s32 func_801AE7E0_ovl7(s32);
extern Controller_800D6FE8 gPlayerControllers[];

extern s32 func_801A0D74_ovl7();
extern void func_8019F3B0_ovl7(void);
extern void func_801BB8EC_ovl7(void);

extern s32 D_801CCB5C;
extern s32 D_801CCA84;
extern f32 D_8021DD54_ovl9;

extern FUNCLIST D_8021CB28_ovl9;
extern FUNCLIST D_8021CB48_ovl9;
extern FUNCLIST D_8021CB60_ovl9;
extern FUNCLIST D_8021CBBC_ovl9;
extern FUNCLIST D_8021CBD8_ovl9;
extern FUNCLIST D_8021CC00_ovl9;
extern FUNCLIST D_8021CC34_ovl9;
extern FUNCLIST D_8021CC68_ovl9;
extern FUNCLIST D_8021CC84_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_8020FF80_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80210154_ovl9.s")

void func_802103D8_ovl9(GObj *);
void func_80210354_ovl9(struct GObj *);

void func_8021029C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DF150[omCurrentObj->objId] = func_802103D8_ovl9;
    func_801A0D50_ovl7(func_80210354_ovl9);
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_80210354_ovl9(arg0);
}

extern FUNCLIST D_8021CB18_ovl9;

void func_80210354_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CB18_ovl9);
    }
}

void func_802103D8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CB28_ovl9);
}

extern f32 D_8021DCE8_ovl9;
extern f32 D_8021DCEC_ovl9;
extern f32 D_8021DCF0_ovl9;
extern f32 D_8021DCF4_ovl9;

void func_80210420_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    if ((D_800E7880[omCurrentObj->objId] == 5) &&
        (((D_8021DCE8_ovl9 < D_800EA6E0[omCurrentObj->objId]) && (D_800EA6E0[omCurrentObj->objId] < D_8021DCEC_ovl9)) ||
         ((D_8021DCF0_ovl9 < D_800EA6E0[omCurrentObj->objId]) && (D_800EA6E0[omCurrentObj->objId] < D_8021DCF4_ovl9)))) {
        func_800AA018(0x10249);
    } else if (1.0f == D_800E6A10[omCurrentObj->objId]) {
        func_800AA018(0x10248);
    } else {
        func_800AA018(0x10247);
    }
    func_800B3520();
    func_800AF27C();
    tmp->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_80210568_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80210570_ovl9.s")

void func_80210800_ovl9(struct GObj *arg0) {
    s32 *p = &D_800E9AA0[omCurrentObj->objId].as_s32;

    if (*p > 0) {
        *p = *p - 1;
    } else {
        func_801A0D74_ovl7(arg0);
    }
    func_80211560_ovl9(arg0);
    func_8019F3B0_ovl7();
}

void func_80210864_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    if (D_800E7880[omCurrentObj->objId] == 1) {
        gEntitiesNextPosYArray[omCurrentObj->objId] -= 40.0f;
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    }
    curObjSleepForever();
}

extern s32 func_8019A900_ovl7(s32 *);
extern s32 func_8019A9AC_ovl7(f32, f32);

void func_8021090C_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp20;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A900_ovl7(&sp20) != 0) {
            if ((f32) sp20 != D_800E6A10[omCurrentObj->objId]) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    eneTurnCommon(1);
    if (tmp->unk3C == 0) {
        if (func_8019A9AC_ovl7(400.0f, 400.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80210354_ovl9);
        }
    }
}

void func_80210A18_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    if (D_800E7880[omCurrentObj->objId] == 1) {
        func_800AA018(0x1024A);
    } else {
        func_800AA018(0x1024B);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

extern s32 func_8019A900_ovl7(s32 *);
void func_80210AB4_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp20;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A900_ovl7(&sp20) != 0) {
            if ((f32) sp20 != D_800E6A10[omCurrentObj->objId]) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    eneTurnCommon(1);
}


void func_80210B58_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DF150[omCurrentObj->objId] = func_80210C58_ovl9;
    func_801A0D50_ovl7(func_80210BE8_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_80210BE8_ovl9(arg0);
}

extern FUNCLIST D_8021CB38_ovl9;

void func_80210BE8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CB38_ovl9);
    }
}

void func_80210C58_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CB48_ovl9);
}

void func_80210CA0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    if (D_800E7880[omCurrentObj->objId] == 3) {
        gEntitiesNextPosYArray[omCurrentObj->objId] -= 40.0f;
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 40.0f;
    }
    curObjSleepForever();
}

void func_80210D48_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp20;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk3C == 0) {
        if (func_8019A900_ovl7(&sp20) != 0) {
            if ((f32) sp20 != D_800E6A10[omCurrentObj->objId]) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    eneTurnCommon(1);
    if (tmp->unk3C == 0) {
        if (func_8019A9AC_ovl7(400.0f, 400.0f) == 3) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80210BE8_ovl9);
        }
    }
}

void func_8021161C_ovl9(s32);

void func_80210E54_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    if (D_800E7880[omCurrentObj->objId] == 3) {
        func_800AA018(0x1024A);
        func_800AF27C();
        func_8021161C_ovl9(1);
        func_800AF27C();
        func_800AF27C();
        func_8021161C_ovl9(1);
        func_800AF27C();
        func_800AF27C();
    } else {
        func_800AA018(0x1024B);
        func_800AF27C();
        func_8021161C_ovl9(2);
        func_800AF27C();
        func_800AF27C();
        func_8021161C_ovl9(2);
        func_800AF27C();
        func_800AF27C();
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_80210F54_ovl9(s32 arg0) {

}

void func_80210F5C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800DF150[omCurrentObj->objId] = func_80211078_ovl9;
    func_801A0D50_ovl7(func_80210FEC_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_80210FEC_ovl9(arg0);
}

extern FUNCLIST D_8021CB58_ovl9;

void func_80210FEC_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_8021CB58_ovl9);
    }
}

void func_80211078_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021CB60_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_802110C0_ovl9.s")

void func_802112F4_ovl9(void) {
    s32 *p = &D_800E9AA0[omCurrentObj->objId].as_s32;

    if (*p > 0) {
        *p = *p - 1;
    } else {
        func_801A0D74_ovl7();
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_8021134C_ovl9.s")

#ifdef MIPS_TO_C
void func_802114E4_ovl9(struct GObj *arg0) {
    f32 lo = D_8021DD3C_ovl9;
    f32 v = D_800EA6E0[omCurrentObj->objId];

    if (v < lo) {
        v = lo;
    }
    lo = D_8021DD40_ovl9;
    if (lo < v) {
        v = lo;
    }
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = v - D_8021DD44_ovl9;
}
#else
#ifdef MIPS_TO_C
// 8 diffs: schedule exact, but $f0/$f2 are swapped between `temp` and `lim`.
// IDO assigns FP regs in order of first assignment and the load schedule
// follows the same order, so the ROM's pairing is not reachable.
void func_802114E4_ovl9(struct GObj *arg0) {
    f32 lim = D_8021DD3C_ovl9;
    f32 temp = D_800EA6E0[omCurrentObj->objId];

    if (temp < lim) {
        temp = lim;
    }
    lim = D_8021DD40_ovl9;
    if (lim < temp) {
        temp = lim;
    }
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = temp - D_8021DD44_ovl9;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_802114E4_ovl9.s")
#endif
#endif

extern f32 D_8021DD48_ovl9;
extern f32 D_8021DD4C_ovl9;
extern void func_8021134C_ovl9(void);

void func_80211560_ovl9(void) {
    func_8021134C_ovl9();
    if (D_8021DD48_ovl9 < D_800EA6E0[omCurrentObj->objId]) {
        D_800EA6E0[omCurrentObj->objId] = D_8021DD48_ovl9;
    }
    if (D_800EA6E0[omCurrentObj->objId] < D_8021DD4C_ovl9) {
        D_800EA6E0[omCurrentObj->objId] = D_8021DD4C_ovl9;
    }
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = D_800EA6E0[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_8021161C_ovl9.s")

extern f32 D_8021DD50_ovl9;
extern FUNCLIST D_8021CB68_ovl9;

void func_80211874_ovl9(struct GObj *arg0) {
    f32 lim = D_8021DD50_ovl9;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    while (lim < gEntitiesAngleZArray[omCurrentObj->objId]) {
        gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId] - lim;
    }
    while (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId] + lim;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021CB68_ovl9);
}

extern FUNCLIST D_8021CB70_ovl9;

void func_80211984_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021CB70_ovl9);
    }
}

extern s32 func_8010B480(struct Sub800E1B50_Unk84 *);
extern void func_8010D42C(struct Sub800E1B50_Unk84 *, f32);
void func_80211B1C_ovl9(void);
void func_80211984_ovl9(struct GObj *);

void func_802119F8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk84 *u = tmp->unk84;

    D_800DF150[omCurrentObj->objId] = func_80211B1C_ovl9;
    func_801A0D50_ovl7(func_80211984_ovl9);
    if (D_800E7880[omCurrentObj->objId] == 0) {
        tmp->unk48 = NULL;
        D_800E98E0[omCurrentObj->objId] = 1;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        tmp->unk48 = func_8010B480;
        func_8010D42C(u, 25.0f);
        gEntitiesNextPosYArray[omCurrentObj->objId] = u->unk8;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
    func_80211984_ovl9(arg0);
}

extern FUNCLIST D_8021CB88_ovl9;
void func_8021217C_ovl9(void);

#ifdef MIPS_TO_C
// 13 diffs: structurally exact; every pointer local sits one register slot
// earlier than the ROM's.
void func_80211B1C_ovl9(void) {
    struct DObj *a = D_800DFBD0[omCurrentObj->objId][3];
    struct DObj *b = D_800DFBD0[omCurrentObj->objId][2];
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk84 *u = tmp->unk84;

    if (gEntityFuncListIDArray[omCurrentObj->objId] != 3) {
        *(f32 *) &u->unk14 = a->pos.v.y * 0.5f;
        *(f32 *) &u->unk18 = b->pos.v.y;
    }
    if (func_801A0D74_ovl7() == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021CB88_ovl9);
    }
    func_8021217C_ovl9();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80211B1C_ovl9.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80211BF0_ovl9.s")

void func_80211D34_ovl9(s32 arg0) {

}

extern s32 D_801CCA60;
void func_80211D3C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCA60;
    func_800AA018(0x100E8);
    func_800AA018(0x100E9);
    play_sound(0x21F);
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 5;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80211DE8_ovl9(s32 arg0) {

}

void func_80211DF0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCA84;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100EA);
    func_800A9EA4(0x100EB);
    D_800E3750[omCurrentObj->objId] = D_8021DD54_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_80211EC0_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80211EC8_ovl9.s")

void func_80211FC0_ovl9(s32 arg0) {

}

extern s32 D_801CCACC;
extern f32 D_8021DD58_ovl9;

void func_80211FC8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCACC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x100E4);
    func_800AA018(0x100E5);
    play_sound(0x21E);
    func_800AF27C();
    D_800E3750[omCurrentObj->objId] = D_8021DD58_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_802120A8_ovl9(s32 arg0) {

}

void func_802120B0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk98 = &D_801CCA60;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA018(0x100E6);
    func_800AA018(0x100E7);
    func_800AF27C();
    D_800E98E0[omCurrentObj->objId] = 5;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80212174_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_8021217C_ovl9.s")

extern FUNCLIST D_8021CBA0_ovl9;

void func_8021225C_ovl9(struct GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 4, &D_8021CBA0_ovl9);
}

void func_802122B4_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_802123B8_ovl9;
    func_801A0D50_ovl7(func_80212338_ovl9);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_80212338_ovl9(arg0);
}

extern FUNCLIST D_8021CBB0_ovl9;

void func_80212338_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CBB0_ovl9);
    }
}

void func_802123B8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CBBC_ovl9);
}

void func_80212400_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10166);
    func_800B3520();
    func_800AF27C();
    tmp->unk40 = 1;
    func_801A3E80_ovl7(arg0);
}

void func_80212478_ovl9(s32 arg0) {

}

extern s32 D_801CCB14;
extern f32 D_8021DD5C_ovl9;
extern f32 D_8021DD60_ovl9;

void func_80212480_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCB14;
    func_800AA018(0x10164);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DD5C_ovl9;
    D_800E3750[omCurrentObj->objId] = D_8021DD60_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AF27C();
    func_800AA018(0x10163);
    curObjSleepForever();
}

void func_8021258C_ovl9(void) {
    func_801A0D74_ovl7();
    func_801BB8EC_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_802125BC_ovl9.s")

void func_80212790_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

void func_802127B8_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_802128B8_ovl9;
    func_801A0D50_ovl7(func_8021282C_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    func_8021282C_ovl9(arg0);
}

extern FUNCLIST D_8021CBC8_ovl9;

void func_8021282C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CBC8_ovl9);
    }
}

void func_802128B8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CBD8_ovl9);
}

void func_80212900_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CB470_ovl7;
    func_800B3520();
    curObjSleepForever();
}

void func_80212960_ovl9(struct GObj *arg0) {
    if (func_8019B834_ovl7() != 0) {
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8021282C_ovl9);
    }
}

void func_802129EC_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80212AF8_ovl9;
    func_801A0D50_ovl7(func_80212A70_ovl9);
    func_800AFBB4(1, omCurrentObj);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    func_80212A70_ovl9(arg0);
}

extern FUNCLIST D_8021CBE8_ovl9;

void func_80212A70_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021CBE8_ovl9);
    }
}

void func_80212AF8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021CC00_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80212B40_ovl9.s")

void func_80212CD0_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        if (D_800E7880[omCurrentObj->objId] == 2) {
            if (func_8019A9AC_ovl7(160.0f, 400.0f) == 2) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80212A70_ovl9);
            }
        } else {
            if (func_8019A9AC_ovl7(160.0f, 20.0f) == 2) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80212A70_ovl9);
            }
        }
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80212DE4_ovl9.s")

void func_80212F0C_ovl9(void) {
    func_801A0D74_ovl7();
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x += D_8021DD6C_ovl9;
    func_8019F3B0_ovl7();
}

void func_80212F68_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CCB5C;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 5.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 5.5f;
    D_800E3210[omCurrentObj->objId] = -7.5f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 7.5f;
    curObjSleepForever();
}

void func_8021306C_ovl9(void) {
    struct DObj *d;

    func_801A0D74_ovl7();
    d = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
    if (d->angle.v.x < D_8021DD70_ovl9) {
        d->angle.v.x = d->angle.v.x + D_8021DD74_ovl9;
    } else {
        func_800A9EA4(0x10163);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_802130F4_ovl9.s")

void func_802133BC_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

void func_802133E4_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_802134D8_ovl9;
    func_801A0D50_ovl7(func_80213458_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
    func_80213458_ovl9(arg0);
}

extern FUNCLIST D_8021CC18_ovl9;

void func_80213458_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_8021CC18_ovl9);
    }
}

void func_802134D8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021CC34_ovl9);
}

void func_80213520_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801CB470_ovl7;
    func_800B3520();
    curObjSleepForever();
}

void func_80213580_ovl9(struct GObj *arg0) {
    if (func_8019B834_ovl7() != 0) {
        D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80213458_ovl9);
    }
}

void func_8021360C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    if (D_800E7880[omCurrentObj->objId] == 0) {
        func_80214094_ovl9();
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_8021CC50_ovl9);
}

void func_80213694_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80213778_ovl9;
    func_801A0D50_ovl7(func_80213708_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_80213708_ovl9(arg0);
}

extern FUNCLIST D_8021CC5C_ovl9;

void func_80213708_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CC5C_ovl9);
    }
}

void func_80213778_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CC68_ovl9);
}

void func_802137C0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    while (1) {
        if (random_soft_s32_range(3) != 0) {
            func_800AA018(0x10252);
        } else {
            func_800AA018(0x10253);
        }
        func_800AF27C();
    }
}

void func_80213854_ovl9(void) {
    if (func_80213FDC_ovl9() != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80213708_ovl9);
    }
}

void func_802138B8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1024D);
    play_sound(0xD1);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80213928_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80213930_ovl9.s")

void func_80213B18_ovl9(s32 arg0) {

}

void func_80213B20_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80213C18_ovl9;
    func_801A0D50_ovl7(func_80213B94_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    func_80213B94_ovl9(arg0);
}

extern FUNCLIST D_8021CC74_ovl9;

void func_80213B94_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CC74_ovl9);
    }
}

void func_80213C18_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CC84_ovl9);
}

void func_80213C60_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    while (1) {
        if (random_soft_s32_range(3) != 0) {
            func_800AA018(0x10252);
        } else {
            func_800AA018(0x10253);
        }
        func_800AF27C();
    }
}

void func_80213CF4_ovl9(void) {
    if (func_80213FDC_ovl9() != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80213B94_ovl9);
    }
}

void func_80213D58_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1024D);
    play_sound(0xD1);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_80213DCC_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80213DD4_ovl9.s")

void func_80213F9C_ovl9(struct GObj *arg0) {
    if (gPlayerControllers[0].buttonPressed & (A_BUTTON | B_BUTTON)) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
    }
}

extern s32 D_801CA5E0;
extern f32 gKirbyHp;
extern s32 func_80169430_ovl3(s32, s32, s32, s32);
extern void func_80111550(u32);
extern void *func_80111C88(s32 *, void *);
extern void func_80111ECC(void *);

s32 func_80213FDC_ovl9(struct GObj *arg0) {
    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801CA5E0, omCurrentObj->objId));
    if (D_800E6F50[omCurrentObj->objId].originOffset < 40.0f) {
        if (gKirbyHp != 0.0f) {
            func_80169430_ovl3(0, 0, 0, 8);
            return 1;
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80214094_ovl9.s")

void func_802142C4_ovl9(struct GObj *arg0) {
    s32 temp = func_801AE7E0_ovl7(6);

    if (temp != -1) {
        D_800EC2E0[temp].as_ptr = arg0;
    }
}

void func_80214304_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    s32 *p;

    if (arg1 == 0) {
        if (arg2 < 8.0f) {
            D_800E98E0[omCurrentObj->objId] = 8 - (s32) arg2;
        } else {
            D_800E98E0[omCurrentObj->objId] = (s32) arg2 - 8;
        }
    }
    p = &D_800E98E0[omCurrentObj->objId];
    if (*p >= 8) {
        *p = *p - 8;
    }
}

IN_FILE void func_802144F8_ovl9();
IN_FILE void func_80214480_ovl9();
void func_802143B8_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_802144F8_ovl9;
    func_801A0D50_ovl7(func_80214480_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80214480_ovl9(arg0);
}

extern FUNCLIST D_8021CC94_ovl9;

void func_80214480_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CC94_ovl9);
    }
}

void func_802144F8_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CCA0_ovl9);
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801CCC10;
extern void ohSleep(s32);

void func_80214578_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CCC10;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x101DA);
    func_800AA018(0x101DB);
    func_800B3520();
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(0x3C);
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

extern void func_8019B424_ovl7(void);
extern s32 func_8019A9AC_ovl7(f32, f32);
void func_80214480_ovl9(struct GObj *);

void func_80214640_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    func_8019B424_ovl7();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (tmp->unk3C == 0) {
            if (func_8019A9AC_ovl7(320.0f, 320.0f) == 3) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 1;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80214480_ovl9);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80214708_ovl9.s")

extern void func_801A0C70_ovl7(void);
extern s32 D_801C9718;
extern s32 D_801C9784;
#ifdef MIPS_TO_C
// 7 diffs: the ROM keeps omCurrentObj->objId in $v0, IDO in $a2.
void func_80214888_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_80111550(omCurrentObj->objId);
        if (D_800E98E0[omCurrentObj->objId] == 1) {
            func_80111ECC(func_80111C88(&D_801C9784, (void *) omCurrentObj->objId));
        } else {
            func_80111ECC(func_80111C88(&D_801C9718, (void *) omCurrentObj->objId));
        }
        func_801A0C70_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_14/func_80214888_ovl9.s")
#endif

extern s32 D_801CCC34;
extern f32 D_8021DDC4_ovl9;

void func_80214938_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CCC34;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x101DA);
    func_800AA018(0x101DB);
    D_800E3750[omCurrentObj->objId] = D_8021DDC4_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_802149F8_ovl9(s32 arg0) {

}

