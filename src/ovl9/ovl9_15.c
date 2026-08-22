#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021CD20_ovl9;
extern FUNCLIST D_8021CCD4_ovl9;
extern FUNCLIST D_8021CD60_ovl9;
extern FUNCLIST D_8021CDA0_ovl9;
extern void func_800AA864(s32, s32);
extern FUNCLIST D_8021CD38_ovl9;

extern s32 func_8019A900_ovl7(s32 *);

extern void func_800AF27C(void);
extern FUNCLIST D_8021CCC8_ovl9;
extern FUNCLIST D_8021CCE8_ovl9;
extern FUNCLIST D_8021CD08_ovl9;

extern void func_800A9760(s32);
extern GObj *D_800DE350[];

extern s32 D_801CCE98;
extern FUNCLIST D_8021CD7C_ovl9;

extern s32 func_801A0D74_ovl7();
extern void eneTurnCommon(s32);
extern void func_8019F3B0_ovl7(void);
extern s32 D_801CCE50;
extern FUNCLIST D_8021CD2C_ovl9;

extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern FUNCLIST D_8021CCB0_ovl9;
extern FUNCLIST D_8021CD14_ovl9;

extern void func_800B1900(u16);
extern s32 func_8019BD38_ovl7(void);
extern void func_80199F1C_ovl7(struct GObj *);

extern s32 D_801CCF04;
/* D_8021DE74_ovl9: literal, this TU owns its .rodata */
extern s32 D_801CCC58;
extern s32 D_801CCC7C;
extern s32 D_801CCCE8;
extern s32 D_801CCD0C;

void func_80214EC0_ovl9(struct GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_80214EEC_ovl9(struct GObj *arg0) {
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_8021CCB0_ovl9);
}

extern FUNCLIST D_8021CCBC_ovl9;

void func_80214F4C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CCBC_ovl9);
    }
}

IN_FILE void func_802150A0_ovl9();
void func_80214FD8_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_802150A0_ovl9;
    func_801A0D50_ovl7(func_80214F4C_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80214F4C_ovl9(arg0);
}

void func_802150A0_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CCC8_ovl9);
    }
    func_8019F3B0_ovl7();
}

void func_80215120_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCC58;
    func_800AA018(0x10006);
    curObjSleepForever();
}

void func_80215184_ovl9(void) {
    func_8019B424_ovl7();
}

void func_802151A4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCC58;
    func_800AA018(0x10003);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80215224_ovl9(s32 arg0) {

}

void func_8021522C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCC7C;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10002);
    curObjSleepForever();
}

void func_802152EC_ovl9(s32 arg0) {

}

void func_802152F4_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021CCD4_ovl9);
    }
}

IN_FILE void func_80215464_ovl9();
void func_8021539C_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80215464_ovl9;
    func_801A0D50_ovl7(func_802152F4_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
    }
    func_802152F4_ovl9(arg0);
}

void func_80215464_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(0xA);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CCE8_ovl9);
    }
    func_8019F3B0_ovl7();
}

extern void func_800A9EA4(s32);
extern s32 D_801CCCA0;
/* D_8021DE04_ovl9: literal, this TU owns its .rodata */
/* D_8021DE08_ovl9: literal, this TU owns its .rodata */
extern void ohSleep(u8);

void func_802154E4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCCA0;
    if (tmp->unk3C == 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.8f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.2f;
        D_800E6850[omCurrentObj->objId] = 2.0f;
    }
    func_800A9EA4(0x10007);
    ohSleep(0x3B);
    func_800AF27C();
    D_800EA360[omCurrentObj->objId] = 2;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_80215608_ovl9(s32 arg0) {

}

extern s32 D_801CCCC4;
/* D_8021DE0C_ovl9: literal, this TU owns its .rodata */
extern void func_800AA154(s32);
extern void func_800AF408(void);

void func_80215610_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCCC4;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA154(0x10006);
    func_800AF408();
    gEntityFuncListIDArray[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
}

void func_802156F8_ovl9(s32 arg0) {

}

void func_80215700_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 z;
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CCCE8;
    z = 0.0f;
    temp = 65535.0f;
    while (1) {
        if (ent->unk3C == 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.200000048f;
            break;
        }
        D_800E6690[omCurrentObj->objId] = z;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = temp;
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.4600000083f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10004);
    temp = 0.0;
    while (temp <= D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_800AA018(0x10002);
    ohSleep(5);
    func_800AECC0(z);
    func_800AED20(z);
    curObjSleepForever();
}

void func_80215928_ovl9(s32 arg0) {

}

/* D_8021DE1C_ovl9: literal, this TU owns its .rodata */

void func_80215930_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 pad0;
    s32 sp2C;

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CCCC4;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x10003);
    func_800AF27C();
    if (func_8019A900_ovl7(&sp2C) != 0) {
        if (sp2C != D_800E6A10[omCurrentObj->objId]) {
            if (tmp->unk3C == 0) {
                tmp->unk3C++;
                func_800AA018(0x10007);
            }
        }
    }
    while (tmp->unk3C != 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80215A94_ovl9(s32 arg0) {

}

void func_80215A9C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CCCE8;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10002);
    D_800EA360[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_80215B74_ovl9(s32 arg0) {

}

extern FUNCLIST D_8021CCFC_ovl9;

void func_80215B7C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CCFC_ovl9);
    }
}

IN_FILE void func_80215CD8_ovl9();
IN_FILE void func_80215B7C_ovl9();
void func_80215BF8_ovl9(struct GObj *arg0) {
    D_800E9E20[omCurrentObj->objId] = 0x32;
    D_800DF150[omCurrentObj->objId] = func_80215CD8_ovl9;
    func_801A0D50_ovl7(func_80215B7C_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_80215B7C_ovl9(arg0);
}

void func_80215CD8_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CD08_ovl9);
    }
    func_8019F3B0_ovl7();
}

void func_80215D58_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCD0C;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
    func_800AA018(0x10007);
    curObjSleepForever();
}

void func_80215DE8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] - 1;
    if (D_800E9E20[omCurrentObj->objId] == 0) {
        tmp->unk3C = tmp->unk3C + 1;
    }
    if (tmp->unk3C != 0) {
        D_800E9E20[omCurrentObj->objId] = 0x64;
    }
}

void func_80215E74_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCD0C;
    func_800AA018(0x10003);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80215EF4_ovl9(s32 arg0) {

}

void func_80215EFC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCC7C;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10002);
    curObjSleepForever();
}

void func_80215FBC_ovl9(s32 arg0) {

}

void func_80215FC4_ovl9(struct GObj *arg0) {
    func_800AECC0(3.0f);
    func_800AED20(3.0f);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_8021CD14_ovl9);
}

void func_80216024_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021CD20_ovl9);
    }
}

IN_FILE void func_80216184_ovl9();
void func_802160BC_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80216184_ovl9;
    func_801A0D50_ovl7(func_80216024_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_80216024_ovl9(arg0);
}

void func_80216184_ovl9(void) {
    s32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CD2C_ovl9);
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801CCD54;
extern void func_800B3520(void);
extern void func_800A9EA4(s32);
extern s32 func_8019A9AC_ovl7(f32, f32);

void func_802161F0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 r;

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCD54;
    func_800B3520();
    func_800A9EA4(0x10045);
    func_800AF27C();
    while (1) {
        r = func_8019A9AC_ovl7(320.0f, 480.0f);
        if ((tmp->unk3C == 0) && (r == 3)) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            return;
        }
        ohSleep(1);
    }
}

void func_802162D8_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp20;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (func_8019A900_ovl7(&sp20) != 0) {
        if ((f32) sp20 != D_800E6A10[omCurrentObj->objId]) {
            if (tmp->unk3C == 0) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
}

extern s32 D_801CCD9C;

void func_8021636C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCD9C;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AECC0(6.0f);
    func_800AED20(6.0f);
    while (1) {
        func_800AA154(0x10046);
        ohSleep(1);
    }
}

void func_80216454_ovl9(s32 arg0) {

}

extern s32 D_801CCD78;
void func_80216ED0_ovl9(struct GObj *, s32, f32);

void func_8021645C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CCD78;
    if (D_800E7880[omCurrentObj->objId] == 2) {
        func_800AA018(0x10044);
        func_800AECC0(4.5f);
        func_800AED20(4.5f);
        D_800E98E0[omCurrentObj->objId] = 3;
        D_800DF310[omCurrentObj->objId] = func_80216ED0_ovl9;
        func_800AF27C();
        func_800AA018(0x10044);
        func_800AECC0(4.5f);
        func_800AED20(4.5f);
        D_800E98E0[omCurrentObj->objId] = 2;
        D_800DF310[omCurrentObj->objId] = func_80216ED0_ovl9;
        func_800AF27C();
    }
    func_800AA018(0x10044);
    func_800AECC0(3.0f);
    func_800AED20(3.0f);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DF310[omCurrentObj->objId] = func_80216ED0_ovl9;
    func_800AF27C();
    if (D_800E8920[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
}

/* D_8021DE20_ovl9: literal, this TU owns its .rodata */
void func_8021664C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) { D_800E3750[omCurrentObj->objId] = -0.5f; D_800E3C90[omCurrentObj->objId] = 10.0f; } else {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
}


void func_80216700_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021CD38_ovl9);
    }
}

#ifdef NON_MATCHING
s32 func_8021679C_ovl9(f32 arg0) {
    f32 dx;
    f32 dy;
    f32 dz;

    dz = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[0];
    dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[0];
    dy = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[0];
    if (sqrtf((dz * dz) + ((dx * dx) + (dy * dy))) <= arg0) {
        return 1;
    }
    return 0;
}
#else
extern f32 sqrtf(f32);

#ifdef NON_MATCHING
s32 func_8021679C_ovl9(f32 arg0) {
    f32 x = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[0];
    f32 z = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[0];
    f32 y = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[0];

    if (sqrtf(z * z + (x * x + y * y)) <= arg0) {
        return 1;
    }
    return 0;
}
#else
extern f32 sqrtf(f32);

#ifdef NON_MATCHING
// 3/42: exact except that the ROM schedules the Y[objId] load ahead of the two
// Z loads (ROM Y[obj],Z[obj],Z[0]; IDO Z[obj],Z[0],Y[obj]). Registers, subs,
// muls, adds and the epilogue are all identical -- it is purely the order of
// three lwc1. Swept all 6 declaration orders, several expression groupings, a
// named local for the sqrtf argument (still 3), and statement order dx,dz,dy
// (22/42 -- confirms the ROM's source order really is dz,dx,dy, since that is
// what reproduces the %hi/%lo and addu order exactly).
s32 func_8021679C_ovl9(f32 arg0) {
    f32 dz = gEntitiesNextPosZArray[omCurrentObj->objId] - gEntitiesNextPosZArray[0];
    f32 dx = gEntitiesNextPosXArray[omCurrentObj->objId] - gEntitiesNextPosXArray[0];
    f32 dy = gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesNextPosYArray[0];

    if (sqrtf((dz * dz) + ((dx * dx) + (dy * dy))) <= arg0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_8021679C_ovl9.s")
#endif
#endif
#endif

IN_FILE void func_8021690C_ovl9();
void func_80216844_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8021690C_ovl9;
    func_801A0D50_ovl7(func_80216700_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
    func_80216700_ovl9(arg0);
}

extern FUNCLIST D_8021CD4C_ovl9;

void func_8021690C_ovl9(void) {
    s32 temp;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    temp = func_801A0D74_ovl7();
    eneTurnCommon(6);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CD4C_ovl9);
    }
    if (tmp->unk3C == 0) {
        if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        }
    }
    func_8019F3B0_ovl7();
}

extern s32 D_801CCDC0;
extern void func_8019BC34_ovl7(f32);
extern f32 gameTicksPerDraw;

void func_802169E4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 padA[2];
    s32 sp48;

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCDC0;
    func_8019BC34_ovl7(80.0f);
    if (tmp->unk3C == 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] + D_800E6A10[omCurrentObj->objId];
    }
    func_800A9EA4(0x10046);
    func_800AECC0(gameTicksPerDraw * 1.5f);
    while (1) {
        if (func_8019A9AC_ovl7(320.0f, 480.0f) == 3) {
            if (func_8019A900_ovl7(&sp48) != 0) {
                if ((f32) sp48 != D_800E6A10[omCurrentObj->objId]) {
                    if (tmp->unk3C == 0) {
                        tmp->unk3C = tmp->unk3C + 1;
                    }
                }
            }
            if (tmp->unk3C == 0) {
                func_800AECC0(gameTicksPerDraw);
                gEntityFuncListIDArray[omCurrentObj->objId] = 2;
                break;
            }
        }
        ohSleep(1);
    }
}

void func_80216BA0_ovl9(struct GObj *arg0) {
    if (func_8019BD38_ovl7() != 0) {
        func_80199F1C_ovl7(arg0);
    }
}

extern s32 D_801CCE2C;
/* D_8021DE24_ovl9: literal, this TU owns its .rodata */

void func_80216BD0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCE2C;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AECC0(6.0f);
    func_800AED20(6.0f);
    while (1) {
        func_800AA154(0x10046);
        ohSleep(1);
    }
}

void func_80216D14_ovl9(s32 arg0) {

}

extern s32 D_801CCE08;
void func_80216ED0_ovl9(struct GObj *, s32, f32);

void func_80216D1C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCE08;
    func_800B3520();
    if (tmp->unk3C == 0) {
        func_800A9EA4(0x10044);
        D_800E98E0[omCurrentObj->objId] = 1;
        D_800DF310[omCurrentObj->objId] = func_80216ED0_ovl9;
        func_800AF27C();
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
    }
}

/* D_8021DE28_ovl9: literal, this TU owns its .rodata */
void func_80216E1C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) { D_800E3750[omCurrentObj->objId] = -0.5f; D_800E3C90[omCurrentObj->objId] = 10.0f; } else {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
    }
}


extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
extern void play_sound(s32);

void func_80216ED0_ovl9(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            if (D_800E98E0[omCurrentObj->objId] == 1) {
                temp = func_801ACCA0_ovl7(1, 0, 5.0f, 10.0f);
            } else {
                temp = func_801ACCA0_ovl7(0x25, 0, 5.0f, 10.0f);
            }
            if (temp != 0) {
                D_800E98E0[temp] = D_800E98E0[omCurrentObj->objId];
            }
            play_sound(0xBB);
        }
    }
}

extern s32 D_801CCDE4;

void func_80216F98_ovl9(struct GObj *arg0) {
    s32 r;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9E20[omCurrentObj->objId] = 0x3C;
    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CCDE4;
    func_800B3520();
    func_800AA018(0x10045);
    func_800AF27C();
    func_800AF27C();
    r = func_8019A9AC_ovl7(320.0f, 480.0f);
    if ((tmp->unk3C == 0) && (r == 3)) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    }
}

/* the leading `unused` is load-bearing: it puts sp28 above the spill slot */
void func_80217098_ovl9(struct GObj *arg0) {
    s32 unused;
    s32 sp28;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (func_8019A900_ovl7(&sp28) != 0) {
        if ((f32) sp28 != D_800E6A10[omCurrentObj->objId]) {
            if (tmp->unk3C == 0) {
                tmp->unk3C = tmp->unk3C + 1;
            }
        }
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
}

/* Was recorded as a 4/116 floor ("the callee-saved FP pair is swapped").
   It was the rodata model: an extern f32 is a memory operand and IDO
   schedules it differently from a constant. With the migrated-rodata
   literals below the FP pair comes out in the ROM's order. */
/* D_8021DE2C_ovl9, D_8021DE30_ovl9: literals */

void func_80217158_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 z;
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 4;
    ent->unk98 = &D_801CCE2C;
    z = 0.0f;
    temp = 65535.0f;
    while (1) {
        if (ent->unk3C == 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.799999952f;
            break;
        }
        D_800E6690[omCurrentObj->objId] = z;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = temp;
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (1) {
        func_800AA154(0x10046);
        ohSleep(1);
    }
}
void func_80217328_ovl9(s32 arg0) {

}

extern void func_800B67A8(struct GObj *);
extern void func_800AED20(f32);
extern s32 func_8010B480();
extern s32 func_8010B67C();
extern s32 func_8010B860();

/* The block-scope prototypes are required: all three callees are defined LATER
   in this TU. Case bodies are written in target-address order, and the dead
   `case 0` keeps the jump table dense. */
void func_80217330_ovl9(struct GObj *arg0) {
    void func_802175C4_ovl9(void);
    void func_80217634_ovl9(struct GObj *);
    s32 func_80217EF0_ovl9(void);
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    while (gEntitiesAngleZArray[omCurrentObj->objId] > 6.28318548f) {
        gEntitiesAngleZArray[omCurrentObj->objId] -= 6.28318548f;
    }
    while (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleZArray[omCurrentObj->objId] += 6.28318548f;
    }
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    D_800DF150[omCurrentObj->objId] = func_802175C4_ovl9;
    func_801A0D50_ovl7(func_80217634_ovl9);
    switch (func_80217EF0_ovl9()) {
    case 1:
        tmp->unk48 = NULL;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        break;
    case 2:
        tmp->unk48 = func_8010B480;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        break;
    case 3:
        D_800E6A10[omCurrentObj->objId] = -1.0f;
        tmp->unk48 = func_8010B67C;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        break;
    case 4:
        D_800E6A10[omCurrentObj->objId] = 1.0f;
        tmp->unk48 = func_8010B860;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        break;
    case 0:
    default:
        utilPrintf("glunk angle error\n");
        break;
    }
    func_80217634_ovl9(arg0);
}

void func_802175C4_ovl9(void) {
    if ((f32) func_801A0D74_ovl7() == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, &D_8021CD7C_ovl9);
    }
    func_8019F3B0_ovl7();
}

void func_80217634_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021CD60_ovl9);
    }
}

void func_802176DC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCE50;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    func_800AA864(0x10034, 4);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_8021779C_ovl9(s32 arg0) {
    func_8019B2C0_ovl7(2);
}

void func_802177C0_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCE50;
    func_80217834_ovl9();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8021782C_ovl9(s32 arg0) {

}

#ifdef MIPS_TO_C
/* FACTORY: 3/167, frame 0x60 vs the ROM's 0x68 with an identical saved-register
   set (s0-s7, fp, ra).  We are 8 bytes short of the ROM's frame and every
   offset below the prologue shifts with it; an unreferenced 8-byte filler
   array does NOT move it (IDO drops small dead locals -- LEVERS 22 only holds
   for large ones).  The body shape, the 0x19 fuse compare and both shot
   variants are the ROM's.
   NOTE: declared s32 because line 922 of this TU calls it with no prototype
   in scope; the implicit int() declaration makes a void definition an error. */
extern s32 func_800AF230(void);
s32 func_80217EF0_ovl9(void);
/* Volcano/spout idle thread: play the idle animation and tick a
 * counter; at tick 25 aim by the mouth bone's Z roll and spawn a
 * kind-2 shot -- variant 1 lobs it along the roll (or straight up
 * 20 when unrolled), variant 2 drops it straight down, variants 3/4
 * push it sideways -- stamping the shot's aim factor D_800EC660 with
 * the roll and playing the spit cue.  Steps one animation frame per
 * tick until the animation ends. */
s32 func_80217834_ovl9(void) { /* s32: line 922 calls it with no prototype in scope */
    s32 shot = 0;

    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    func_800AA018(0x10032);
    do {
        if (D_800E9FE0[omCurrentObj->objId].as_u32 == 0x19) {
            switch (func_80217EF0_ovl9()) {
                case 1: {
                    u32 id = omCurrentObj->objId;
                    f32 roll = D_800DE350[id]->data.dobj->firstChild->angle.v.z;

                    if (roll == 0.0f) {
                        shot = func_801ACCA0_ovl7(2, 0, 0.0f, 20.0f);
                    } else {
                        shot = func_801ACCA0_ovl7(2, 0, -sinf(D_800E6A10[id] * roll) * 20.0f,
                                                  cosf(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z) * 20.0f);
                    }
                    break;
                }
                case 2:
                    shot = func_801ACCA0_ovl7(2, 0, 0.0f, -20.0f);
                    break;
                case 3:
                case 4:
                    shot = func_801ACCA0_ovl7(2, 0, 20.0f, 0.0f);
                    break;
            }
            if (shot != 0) {
                D_800EC660[shot] = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z;
            }
            play_sound(0xA7);
        }
        if (func_800AF230() != 0) {
            break;
        }
        D_800E9FE0[omCurrentObj->objId].as_u32++;
        ohSleep(1);
    } while (1);
}
#elif defined(PORT)
extern s32 func_800AF230(void);
s32 func_80217EF0_ovl9(void);
/* Volcano/spout idle thread: play the idle animation and tick a
 * counter; at tick 25 aim by the mouth bone's Z roll and spawn a
 * kind-2 shot -- variant 1 lobs it along the roll (or straight up
 * 20 when unrolled), variant 2 drops it straight down, variants 3/4
 * push it sideways -- stamping the shot's aim factor D_800EC660 with
 * the roll and playing the spit cue.  Steps one animation frame per
 * tick until the animation ends. */
void func_80217834_ovl9(void) {
    s32 shot = 0;

    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
    func_800AA018(0x10032);
    do {
        if (D_800E9FE0[omCurrentObj->objId].as_u32 == 0x19) {
            switch (func_80217EF0_ovl9()) {
                case 1: {
                    u32 id = omCurrentObj->objId;
                    f32 roll = D_800DE350[id]->data.dobj->firstChild->angle.v.z;

                    if (roll == 0.0f) {
                        shot = func_801ACCA0_ovl7(2, 0, 0.0f, 20.0f);
                    } else {
                        shot = func_801ACCA0_ovl7(2, 0, -sinf(D_800E6A10[id] * roll) * 20.0f,
                                                  cosf(D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z) * 20.0f);
                    }
                    break;
                }
                case 2:
                    shot = func_801ACCA0_ovl7(2, 0, 0.0f, -20.0f);
                    break;
                case 3:
                case 4:
                    shot = func_801ACCA0_ovl7(2, 0, 20.0f, 0.0f);
                    break;
            }
            if (shot != 0) {
                D_800EC660[shot] = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z;
            }
            play_sound(0xA7);
        }
        if (func_800AF230() != 0) {
            break;
        }
        D_800E9FE0[omCurrentObj->objId].as_u32++;
        ohSleep(1);
    } while (1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80217834_ovl9.s")
#endif

extern s32 D_801CCE74;
/* D_8021DE4C_ovl9: literal, this TU owns its .rodata */
extern void func_800AF314(void);

void func_80217AD0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    func_800A9760(0x10009);
    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCE74;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AF314();
    curObjSleepForever();
}

void func_80217BC4_ovl9(s32 arg0) {

}

void func_80217BCC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CCE98;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AA864(0x10034, 4);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_80217C6C_ovl9(s32 arg0) {

}

void func_80217C74_ovl9(void) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CCE98;
    func_80217834_ovl9();
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_80217CE4_ovl9(s32 arg0) {

}

extern s32 D_801CCEBC;
/* D_8021DE50_ovl9: literal, this TU owns its .rodata */
/* D_8021DE54_ovl9: literal, this TU owns its .rodata */

void func_80217CEC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCEBC;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 3.1415927f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AF314();
    curObjSleepForever();
}

void func_80217DBC_ovl9(s32 arg0) {

}

extern void func_800A9F98(s32, f32);

void func_80217DC4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    func_800A9760(0x1000A);
    D_800DDFD0[omCurrentObj->objId] = 6;
    tmp->unk98 = &D_801CCE50;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    func_800A9F98(0x10036, 2.0f);
    func_800A9F98(0x10037, 2.0f);
    func_800AF27C();
    func_800A9760(0x10009);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_80217ECC_ovl9(s32 arg0) {
    func_8019B2C0_ovl7(2);
}

/* D_8021DE58_ovl9: literal, this TU owns its .rodata */
/* D_8021DE5C_ovl9: literal, this TU owns its .rodata */
/* D_8021DE60_ovl9: literal, this TU owns its .rodata */
/* D_8021DE64_ovl9: literal, this TU owns its .rodata */
s32 func_80217EF0_ovl9(void) {
    f32 v = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z;

    if (v < 1.553343f) {
        return 1;
    }
    if (v < 1.5882497f) {
        return 3;
    }
    if (v < 3.1590462f) {
        return 2;
    }
    if (v < 4.7298427f) {
        return 4;
    }
    return 1;
}

void func_80217FA4_ovl9(struct GObj *arg0) {
    func_800A9760(0x10009);
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.x = 0.0f;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
}

extern FUNCLIST D_8021CD98_ovl9;
void func_80218020_ovl9(struct GObj *arg0) {
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    if (D_800E7880[omCurrentObj->objId] == 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800EA6E0[omCurrentObj->objId] = 3.125f;
    } else {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021CD98_ovl9);
}

void func_802180D8_ovl9(struct GObj *arg0) {
    while (1) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021CDA0_ovl9);
    }
}

IN_FILE void func_80218248_ovl9();
void func_8021817C_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_80218248_ovl9;
    func_801A0D50_ovl7(func_802180D8_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        func_801A6C10_ovl7(arg0);
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
    func_802180D8_ovl9(arg0);
}

/* 36 diffs, all downstream of the frame: the ROM frame is 0x20 (tmp spilled
   at 0x18, the f32 call result at 0x1C) so the source has only ONE named local
   besides tmp. Dropping the d0/d1/d2 and u locals reaches frame 0x20 but then
   every pointer sits one register slot low (71 diffs); callee return-type flips
   on eneTurnCommon2 and func_8019F410_ovl7 are inert. */
#ifdef NON_MATCHING
extern f32 D_801CA9E8;
extern FUNCLIST D_8021CDAC_ovl9;
void eneTurnCommon2(s32);
void func_8019F410_ovl7(struct DObj *);

void func_80218248_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk84 *u = tmp->unk84;
    struct DObj *d0;
    struct DObj *d1;
    struct DObj *d2;
    f32 t;

    if (u != NULL) {
        d0 = arg0->data.dobj->firstChild;
        d1 = d0->firstChild;
        d2 = d1->firstChild;
        *(f32 *) &u->unk14 = ((d1->pos.v.y + d2->pos.v.y) + d0->pos.v.y) + D_801CA9E8;
        *(f32 *) &u->unk10 = *(f32 *) &u->unk14 * 0.5f;
    }
    t = func_801A0D74_ovl7();
    eneTurnCommon2(6);
    if (tmp->unk3C != 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    if (t == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021CDAC_ovl9);
    }
    func_8019F410_ovl7(arg0->data.dobj->firstChild->firstChild->firstChild);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80218248_ovl9.s")
#endif

extern s32 D_801CCEE0;
/* D_8021DE68_ovl9: literal, this TU owns its .rodata */

void func_80218378_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCEE0;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = -0.46f;
    D_800E3C90[omCurrentObj->objId] = 13.0f;
    func_800AA018(0x10031);
    play_sound(0x164);
    while (1) {
        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
            D_800E3210[omCurrentObj->objId] = 0.0;
            break;
        }
        ohSleep(1);
    }
    tmp->unk98 = &D_801CCF04;
    func_800AA154(0x10030);
    func_800AA018(0x1002F);
    curObjSleepForever();
}

void func_802184E0_ovl9(struct GObj *arg0) {
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_800EA6E0[omCurrentObj->objId];
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern struct Sub800E1B50_Unk98 D_801CCF28;

void func_80218520_ovl9(s32 arg0) {
    UnkStruct800E1B50 *temp_a0;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 var_v0;
    u32 temp_a1;
    u32 temp_v0;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;

    temp_v0 = omCurrentObj->objId;
    temp_a0 = D_800E1B50[temp_v0];
    D_800DDFD0[temp_v0] = 1;
    temp_a0->unk98 = &D_801CCF28;
    D_800E8920[omCurrentObj->objId] = 1;
    temp_a1 = omCurrentObj->objId;
    temp_v0_2 = &D_800E98E0[temp_a1];
    if (D_800E7880[temp_a1] == 0) {
        *temp_v0_2 += 1;
        temp_v0_3 = &D_800E98E0[omCurrentObj->objId];
        if (*temp_v0_3 >= 2) {
            *temp_v0_3 = 0;
            if (temp_a0->unk3C == 0) {
                temp_a0->unk3C = 1;
            }
        }
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v0_4 = omCurrentObj->objId;
    D_800E64D0[temp_v0_4] = D_800E6690[temp_v0_4];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v0_5 = omCurrentObj->objId;
    D_800E3210[temp_v0_5] = D_800E3750[temp_v0_5];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800A9EA4(0x1002F);
    temp_v0_6 = omCurrentObj->objId;
    var_v0 = temp_v0_6 * 4;
    if (D_800DE350[temp_v0_6]->data.dobj->timeRemaining != -3.4028235e38f) {
        func_800AF27C();
        var_v0 = omCurrentObj->objId * 4;
    }
    *(gEntityFuncListIDArray + var_v0) = 0;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80218520_ovl9.s")
#endif

void func_80218704_ovl9(s32 arg0) {

}

void func_8021870C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCF04;
    D_800E3750[omCurrentObj->objId] = -0.46f;
    D_800E3C90[omCurrentObj->objId] = 13.0f;
    func_800A9EA4(0x1002F);
    curObjSleepForever();
}

void func_802187B4_ovl9(s32 arg0) {

}

