#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"

extern void func_8019BB58_ovl7(void);
extern FUNCLIST D_8021CA88_ovl9;
void func_8020B498_ovl9(struct GObj *);

extern void func_800AA864(s32, s32);
extern s32 func_80110150(void *);
extern void func_80169430_ovl3(s32, u8, u8, s32);
extern s32 D_801CC7D8;
extern s32 D_801C9544;
extern s32 D_801CA3C4;

struct Ovl9AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};
struct Ovl9AnimCmd {
    u8 filler0[8];
    void *unk8;
    u8 fillerC[0x24];
    void *unk30;
};
struct Ovl9AnimObj {
    u8 filler0[0x24];
    struct Ovl9AnimCmd *unk24;
};

extern void func_800B67A8(struct GObj *);
extern FUNCLIST D_8021C994_ovl9;
extern FUNCLIST D_8021C9A8_ovl9;
extern FUNCLIST D_8021CAB8_ovl9;
s32 func_8020BA70_ovl9(struct GObj *);

extern void func_8019B2C0_ovl7(s32);
extern FUNCLIST D_8021CA5C_ovl9;

extern void func_8019B424_ovl7(struct GObj *);
extern s32 func_8019A7E8_ovl7(f32);
extern f32 D_8021DB88_ovl9;
void func_8020A510_ovl9(struct GObj *);

extern s32 func_8019A9AC_ovl7(f32, f32);
extern void func_801ACCA0_ovl7(s32, s32, f32, f32);
void func_8020B420_ovl9(struct GObj *);

extern void func_8019F3B0_ovl7(void);
extern void eneTurnCommon(s32);
/* pointer parameter is load-bearing: it forces the `or $a0, $v0, $zero` move */
extern void func_80111550(void *);
extern void *func_80111C88(s32 *, u32);
extern void func_80111ECC(void *);
extern void func_801A0C70_ovl7(void);
extern s32 D_801C9208;
extern FUNCLIST D_8021C96C_ovl9;
void func_8020998C_ovl9(struct GObj *);
void func_8020EA94_ovl9(struct GObj *);

extern void func_800AF27C(void);

extern f32 D_8021DB78_ovl9;

extern s32 func_8019DB7C_ovl7(u8, s32, s32);
extern void func_8019DB58_ovl7(s32, s32);
void func_8020A768_ovl9(struct GObj *);
extern FUNCLIST D_8021CA10_ovl9;

extern void func_8019F3F0_ovl7(void);
extern void func_800AF314(void);
void func_8020E178_ovl9(struct GObj *);
void func_8020E0F4_ovl9(struct GObj *);

extern s32 func_801AE7E0_ovl7(s32);
extern void func_800AF408(void);
extern u32 D_8012BCA0;
void func_8020EAD4_ovl9(struct GObj *);

extern s32 D_801CC724;
extern s32 D_801CCA18;
extern f32 D_8021DB70_ovl9;
extern f32 D_8021DC2C_ovl9;
extern f32 D_8021DC30_ovl9;
extern f32 D_8021DC34_ovl9;
extern f32 D_8021DC38_ovl9;
extern s32 D_801CC7FC;
extern s32 D_801CC820;
extern s32 D_801CC844;
extern s32 D_801CC868;
extern s32 D_801CC9F4;
extern f32 D_8021DB94_ovl9;
extern f32 D_8021DB98_ovl9;
extern f32 D_8021DB9C_ovl9;
extern f32 D_8021DBA0_ovl9;
extern f32 D_8021DBA4_ovl9;
extern f32 D_8021DBA8_ovl9;
extern s32 D_801CC7B4;
extern s32 D_801CC700;
extern s32 D_801CC748;
extern f32 D_8021DB80_ovl9;
extern f32 D_8021DB8C_ovl9;
extern f32 D_8021DB90_ovl9;

extern FUNCLIST D_8021C9FC_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_80209720_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_802097D0_ovl9.s")

extern FUNCLIST D_8021C958_ovl9;

void func_8020989C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C958_ovl9);
    }
}

void func_80209918_ovl9(struct GObj *arg0) {
    s32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C96C_ovl9);
    }
    func_8020998C_ovl9(arg0);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020998C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_80209CEC_ovl9.s")

void func_80209E28_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_80209E30_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_80209FE4_ovl9.s")

void func_8020A0AC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC700;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10019);
    func_800A9EA4(0x1001A);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A13C_ovl9.s")

void func_8020A20C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    tmp->unk98 = &D_801CC724;
    D_800E3750[omCurrentObj->objId] = D_8021DB70_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020A2A4_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A2AC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A390_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A444_ovl9.s")

extern FUNCLIST D_8021C980_ovl9;

void func_8020A510_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C980_ovl9);
    }
}

void func_8020A598_ovl9(struct GObj *arg0) {
    f32 temp = func_801A0D74_ovl7();

    eneTurnCommon(6);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C994_ovl9);
    }
    func_8020998C_ovl9(arg0);
    func_8019F3B0_ovl7();
}

void func_8020A620_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC748;
    func_800A9EA4(0x1001B);
    func_800A9EA4(0x1001C);
    curObjSleepForever();
}

void func_8020A694_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(200.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020A510_ovl9);
    } else {
        func_8019B424_ovl7(arg0);
    }
}

void func_8020A70C_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        if (D_800E8220[omCurrentObj->objId] == 1) {
            func_8020A768_ovl9(arg0);
        }
    }
}

void func_8020A768_ovl9(struct GObj *arg0) {
    arg0->data.dobj->firstChild->angle.v.x = D_8021DB78_ovl9;
    if (D_800EA520[omCurrentObj->objId] == 0) {
        D_800EA520[omCurrentObj->objId] = (s32) arg0->onAnimate;
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

void func_8020A7CC_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C9A8_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A854_ovl9.s")

extern FUNCLIST D_8021C9B0_ovl9;

void func_8020A934_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C9B0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A9B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020AA5C_ovl9.s")

void func_8020ABAC_ovl9(struct GObj *arg0) {
    if (D_800E9C60[omCurrentObj->objId] == 1) {
        func_80111550((void *) omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_801C9208, omCurrentObj->objId));
        func_801A0C70_ovl7();
    }
}

void func_8020AC20_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7B4;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    func_800AA018(0x1003C);
    D_800E3750[omCurrentObj->objId] = D_8021DB80_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020ACEC_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020ACF4_ovl9.s")

void func_8020AF0C_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_8021DB88_ovl9;
    }
}

void func_8020AF88_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7B4;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x1003C);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DB8C_ovl9;
    D_800E6850[omCurrentObj->objId] = 2.0f;
    D_800E3210[omCurrentObj->objId] = 7.5f;
    D_800E3750[omCurrentObj->objId] = D_8021DB90_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020B0B4_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B0BC_ovl9.s")

extern FUNCLIST D_8021C9D0_ovl9;

void func_8020B19C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021C9D0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B218_ovl9.s")

void func_8020B2BC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    tmp->unk98 = &D_801CC7D8;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA864(0x1003C, 2);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020B348_ovl9(s32 arg0) {

}

void func_8020B350_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        D_800E9C60[omCurrentObj->objId] = (s32) arg2;
    }
}

void func_8020B388_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B67A8;
    func_8019BB58_ovl7();
    D_800DF150[omCurrentObj->objId] = func_8020B498_ovl9;
    func_801A0D50_ovl7(func_8020B420_ovl9);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_8020B420_ovl9(arg0);
}

extern FUNCLIST D_8021C9E8_ovl9;

void func_8020B420_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C9E8_ovl9);
    }
}

void func_8020B498_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C9FC_ovl9);
}

void func_8020B4E0_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AF408();
    curObjSleepForever();
}

void func_8020B524_ovl9(struct GObj *arg0) {
    if (func_8019A9AC_ovl7(640.0f, 640.0f) == 3) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020B420_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B598_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B718_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B7B8_ovl9.s")

void func_8020B8A4_ovl9(struct GObj *arg0) {
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if (func_8020BA70_ovl9(arg0) != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020B420_ovl9);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B92C_ovl9.s")

void func_8020B9D0_ovl9(s32 arg0) {

}

void func_8020B9D8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    func_800AA018(0x1003F);
    func_800AF27C();
    ohSleep(0x96);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_8020BA48_ovl9(s32 arg0) {

}

void func_8020BA50_ovl9(void) {
    func_8019B59C_ovl7();
}

s32 func_8020BA70_ovl9(struct GObj *arg0) {
    struct Ovl9AnimInfo sp20;
    struct Ovl9AnimObj *obj;
    struct DObj *d;

    func_80111550((void *) omCurrentObj->objId);
    obj = func_80111C88(&D_801CA3C4, omCurrentObj->objId);
    d = arg0->data.dobj;
    obj->unk24->unk30 = d;
    obj->unk24->unk8 = d;
    func_80111ECC(obj);
    if (func_80110150(&sp20) != 0) {
        func_80169430_ovl3(sp20.unkC, sp20.unk0, sp20.unk1, 0);
        return 1;
    }
    return 0;
}

void func_8020BB00_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0x1C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021CA10_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BB5C_ovl9.s")

extern FUNCLIST D_8021CA18_ovl9;

void func_8020BC24_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CA18_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BC98_ovl9.s")

void func_8020BDC8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC7FC;
    func_800A9EA4(0x1006E);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DB94_ovl9;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BE84_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BF50_ovl9.s")

void func_8020BFF0_ovl9(s32 arg0) {

}

void func_8020BFF8_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC820;
    func_800A9EA4(0x1006E);
    D_800E3750[omCurrentObj->objId] = D_8021DB98_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C09C_ovl9(s32 arg0) {

}

void func_8020C0A4_ovl9(void) {
    s32 temp = func_8019DB7C_ovl7(D_800E7730[omCurrentObj->objId], 0x63, 1);

    if (temp != -1) {
        func_8019DB58_ovl7(omCurrentObj->objId, temp);
    }
}

void func_8020C0FC_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            func_801ACCA0_ovl7(4, 0, 20.0f, 10.0f);
            play_sound(0xBB);
            D_800E98E0[omCurrentObj->objId] = 0x1C;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C170_ovl9.s")

extern FUNCLIST D_8021CA30_ovl9;

void func_8020C2EC_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021CA30_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C378_ovl9.s")

void func_8020C454_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC844;
    func_800A9EA4(0x1006A);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (f32)2;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DB9C_ovl9;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    curObjSleepForever();
}

void func_8020C530_ovl9(s32 arg0) {

}

void func_8020C538_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC868;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x1006A);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_8021DBA0_ovl9;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3210[omCurrentObj->objId] = 7.5f;
    D_800E3750[omCurrentObj->objId] = D_8021DBA4_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C65C_ovl9(s32 arg0) {

}

void func_8020C664_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC868;
    func_800A9EA4(0x1006A);
    D_800E3750[omCurrentObj->objId] = D_8021DBA8_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

void func_8020C708_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C710_ovl9.s")

void func_8020C918_ovl9(void) {
    func_801A0D74_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C938_ovl9.s")

extern FUNCLIST D_8021CA48_ovl9;

void func_8020CA4C_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021CA48_ovl9);
    }
}

void func_8020CAD8_ovl9(void) {
    f32 temp = func_801A0D74_ovl7();

    func_8019B2C0_ovl7(1);
    if (temp == 0.0f) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021CA5C_ovl9);
    }
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CB58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CC8C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CD38_ovl9.s")

void func_8020CFA0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (((D_8012BCA0 >> 19) & 0x200) == 0) {
        tmp->unk3C = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CFE4_ovl9.s")

void func_8020D17C_ovl9(s32 arg0) {
    eneTurnCommon(6);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D1A0_ovl9.s")

void func_8020D328_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D330_ovl9.s")

void func_8020D448_ovl9(s32 arg0) {
    eneTurnCommon(6);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D46C_ovl9.s")

extern FUNCLIST D_8021CA70_ovl9;

void func_8020D594_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021CA70_ovl9);
    }
}

void func_8020D618_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk84 != NULL) {
        *(f32 *) &tmp->unk84->unk14 = arg0->data.dobj->firstChild->pos.v.y + 8.0f;
    }
    func_801A0D74_ovl7();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, &D_8021CA88_ovl9);
    func_8019F3F0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D6B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D780_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D82C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D984_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020DA44_ovl9.s")

void func_8020DB78_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020DB80_ovl9.s")

void func_8020DCA0_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020DCA8_ovl9.s")

void func_8020DE04_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk4 <= gEntitiesNextPosYArray[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = tmp->unk4;
        gEntityFuncListIDArray[omCurrentObj->objId] = 5;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8020D594_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020DE9C_ovl9.s")

void func_8020DF8C_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020DF94_ovl9.s")

void func_8020E0A0_ovl9(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8020E178_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_8020E0F4_ovl9(arg0);
}

extern FUNCLIST D_8021CAA8_ovl9;

void func_8020E0F4_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CAA8_ovl9);
    }
}

void func_8020E178_ovl9(struct GObj *arg0) {
    s32 v;

    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021CAB8_ovl9);
    v = D_800E83E0[omCurrentObj->objId];
    if ((v == 3) || (v == 4)) {
        arg0->data.dobj->firstChild->flags = 0;
    }
}

void func_8020E200_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AA018(0x10087);
    func_800AF314();
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E254_ovl9.s")

void func_8020E300_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x10087);
    func_800AF314();
    while (1) {
        func_8020EA94_ovl9(NULL);
        ohSleep(0xF);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E370_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E4C0_ovl9.s")

void func_8020E650_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        func_8020EAD4_ovl9(arg0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E694_ovl9.s")

void func_8020EA44_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 & 1) {
        func_8020EAD4_ovl9(arg0);
    }
    func_8019F3F0_ovl7();
}

void func_8020EA94_ovl9(struct GObj *arg0) {
    s32 temp = func_801AE7E0_ovl7(0);

    if (temp != -1) {
        D_800EC2E0[temp].as_ptr = arg0;
    }
}

void func_8020EAD4_ovl9(struct GObj *arg0) {
    struct Ovl9AnimObj *obj;

    func_80111550((void *) omCurrentObj->objId);
    obj = func_80111C88(&D_801C9544, omCurrentObj->objId);
    obj->unk24->unk8 = arg0->data.dobj->firstChild->next->firstChild;
    obj->unk24->unk30 = arg0->data.dobj->firstChild->next->next->firstChild;
    func_80111ECC(obj);
    func_801A0C70_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EB60_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020ED74_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EEBC_ovl9.s")

extern FUNCLIST D_8021CAD0_ovl9;

void func_8020F008_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021CAD0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F078_ovl9.s")

void func_8020F244_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CCA18;
    D_800EB320[omCurrentObj->objId] = D_8021DC2C_ovl9;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DC30_ovl9;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = D_8021DC34_ovl9;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = D_8021DC38_ovl9;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    curObjSleepForever();
}

void func_8020F398_ovl9(s32 arg0) {

}

void func_8020F3A0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CC9F4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100F2);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F424_ovl9.s")

void func_8020F56C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    tmp->unk98 = &D_801CC9F4;
    func_800AA018(0x100F2);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F5D4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F684_ovl9.s")

void func_8020F760_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F768_ovl9.s")

void func_8020F8A0_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020F8A8_ovl9.s")

void func_8020FC14_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->data.dobj->firstChild->angle.v.x = 0.0f;
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FC68_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FD34_ovl9.s")

