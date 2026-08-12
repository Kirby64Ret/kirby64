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
extern f32 D_8021DE74_ovl9;
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
extern f32 D_8021DE04_ovl9;
extern f32 D_8021DE08_ovl9;
extern void ohSleep(u8);

void func_802154E4_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCCA0;
    if (tmp->unk3C == 0) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DE04_ovl9;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DE08_ovl9;
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
extern f32 D_8021DE0C_ovl9;
extern void func_800AA154(s32);
extern void func_800AF408(void);

void func_80215610_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCCC4;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DE0C_ovl9;
    func_800AA154(0x10006);
    func_800AF408();
    gEntityFuncListIDArray[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
}

void func_802156F8_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80215700_ovl9.s")

void func_80215928_ovl9(s32 arg0) {

}

extern f32 D_8021DE1C_ovl9;

void func_80215930_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];
    s32 pad0;
    s32 sp2C;

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CCCC4;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DE1C_ovl9;
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

extern f32 D_8021DE20_ovl9;
void func_8021664C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) { D_800E3750[omCurrentObj->objId] = -0.5f; D_800E3C90[omCurrentObj->objId] = 10.0f; } else {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DE20_ovl9;
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

#ifdef MIPS_TO_C
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

#ifdef MIPS_TO_C
// 3 diffs: exact except that the ROM schedules the Y[objId] load one slot
// earlier than the two Z loads. Swept all 6 declaration orders and several
// expression groupings; this is the closest reachable form.
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_802169E4_ovl9.s")

void func_80216BA0_ovl9(struct GObj *arg0) {
    if (func_8019BD38_ovl7() != 0) {
        func_80199F1C_ovl7(arg0);
    }
}

extern s32 D_801CCE2C;
extern f32 D_8021DE24_ovl9;

void func_80216BD0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CCE2C;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DE24_ovl9;
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

extern f32 D_8021DE28_ovl9;
void func_80216E1C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) { D_800E3750[omCurrentObj->objId] = -0.5f; D_800E3C90[omCurrentObj->objId] = 10.0f; } else {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = D_8021DE28_ovl9;
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

/* 4/116 diffs: structurally exact; only the callee-saved FP pair is swapped
   ($f20 holds the extern and $f22 the 0.0f, the ROM has it the other way).
   Swept: assignment order, declaration order and position, inline 0.0f,
   double 0.0 literal, chained assignment -- all 4. */
#ifdef NON_MATCHING
extern f32 D_8021DE2C_ovl9, D_8021DE30_ovl9;

void func_80217158_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    f32 z;
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 4;
    ent->unk98 = &D_801CCE2C;
    z = 0.0f;
    temp = D_8021DE2C_ovl9;
    while (1) {
        if (ent->unk3C == 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DE30_ovl9;
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80217158_ovl9.s")
#endif
void func_80217328_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80217330_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80217834_ovl9.s")

extern s32 D_801CCE74;
extern f32 D_8021DE4C_ovl9;
extern void func_800AF314(void);

void func_80217AD0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    func_800A9760(0x10009);
    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCE74;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_8021DE4C_ovl9;
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
extern f32 D_8021DE50_ovl9;
extern f32 D_8021DE54_ovl9;

void func_80217CEC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 5;
    tmp->unk48 = NULL;
    tmp->unk98 = &D_801CCEBC;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = D_8021DE50_ovl9;
    D_800E3750[omCurrentObj->objId] = D_8021DE54_ovl9;
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

extern f32 D_8021DE58_ovl9;
extern f32 D_8021DE5C_ovl9;
extern f32 D_8021DE60_ovl9;
extern f32 D_8021DE64_ovl9;
s32 func_80217EF0_ovl9(void) {
    f32 v = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z;

    if (v < D_8021DE58_ovl9) {
        return 1;
    }
    if (v < D_8021DE5C_ovl9) {
        return 3;
    }
    if (v < D_8021DE60_ovl9) {
        return 2;
    }
    if (v < D_8021DE64_ovl9) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80218248_ovl9.s")

extern s32 D_801CCEE0;
extern f32 D_8021DE68_ovl9;

void func_80218378_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCEE0;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = D_8021DE68_ovl9;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_15/func_80218520_ovl9.s")

void func_80218704_ovl9(s32 arg0) {

}

void func_8021870C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CCF04;
    D_800E3750[omCurrentObj->objId] = D_8021DE74_ovl9;
    D_800E3C90[omCurrentObj->objId] = 13.0f;
    func_800A9EA4(0x1002F);
    curObjSleepForever();
}

void func_802187B4_ovl9(s32 arg0) {

}

