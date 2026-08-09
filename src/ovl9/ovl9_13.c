#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"
#include "buffers.h"

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_80209918_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A598_ovl9.s")

void func_8020A620_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 4;
    tmp->unk98 = &D_801CC748;
    func_800A9EA4(0x1001B);
    func_800A9EA4(0x1001C);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A694_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A70C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A768_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A7CC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A854_ovl9.s")

extern FUNCLIST D_8021C9B0_ovl9;

void func_8020A934_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C9B0_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020A9B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020AA5C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020ABAC_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020AF0C_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B2BC_ovl9.s")

void func_8020B348_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B350_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B388_ovl9.s")

extern FUNCLIST D_8021C9E8_ovl9;

void func_8020B420_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C9E8_ovl9);
    }
}

void func_8020B498_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C9FC_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B4E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B524_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B598_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B718_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B7B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B8A4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B92C_ovl9.s")

void func_8020B9D0_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020B9D8_ovl9.s")

void func_8020BA48_ovl9(s32 arg0) {

}

void func_8020BA50_ovl9(void) {
    func_8019B59C_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BA70_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020BB00_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C0A4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020C0FC_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CAD8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CB58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CC8C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CD38_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020CFA0_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020D618_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E0A0_ovl9.s")

extern FUNCLIST D_8021CAA8_ovl9;

void func_8020E0F4_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021CAA8_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E178_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E200_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E254_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E300_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E370_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E4C0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E650_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020E694_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EA44_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EA94_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020EAD4_ovl9.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FC14_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FC68_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_13/func_8020FD34_ovl9.s")

