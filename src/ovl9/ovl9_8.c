#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern s32 D_801CC13C;
extern s32 D_801CBF20;
extern s32 D_801CBF44;
extern s32 D_801CBF68;
extern f32 D_8021D958_ovl9;

extern FUNCLIST D_8021C504_ovl9;
extern FUNCLIST D_8021C544_ovl9;
extern FUNCLIST D_8021C57C_ovl9;

extern FUNCLIST D_8021C500_ovl9;

void func_801F8730_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C500_ovl9);
}

void func_801F8774_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C504_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F87BC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F889C_ovl9.s")

void func_801F8958_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    tmp->unk98 = &D_801CBF20;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100DA);
    func_800A9EA4(0x100DB);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F89FC_ovl9.s")

void func_801F8ACC_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800EB320[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 200.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBF68;
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x100D2);
    func_800A9EA4(0x100D3);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F8BEC_ovl9.s")

void func_801F8CBC_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800A9EA4(0x100CE);
    func_800A9EA4(0x100CF);
    curObjSleepForever();
}

void func_801F8D40_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F8D48_ovl9.s")

void func_801F8774_ovl9(struct GObj *);

void func_801F8E60_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F8ECC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F8F7C_ovl9.s")

void func_801F907C_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        if ((u32)D_800DD8D0[omCurrentObj->objId] >> 30) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            } else {
                gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            }
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9124_ovl9.s")

void func_801F8774_ovl9(struct GObj *);

void func_801F91CC_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F8774_ovl9);
    }
}

void func_801F9238_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CBF44;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_800A9EA4(0x100DD);
    func_800A9EA4(0x100DC);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021D958_ovl9;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    curObjSleepForever();
}

void func_801F936C_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9374_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9410_ovl9.s")

extern FUNCLIST D_8021C53C_ovl9;
void func_800B6B8C(struct GObj *);

void func_801F9470_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021C53C_ovl9);
}

void func_801F94D0_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021C544_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9518_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9610_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F96DC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F974C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F97B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9858_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9A1C_ovl9.s")

void func_801F9B84_ovl9(struct GObj *arg0) {
    if (D_800E9AA0[omCurrentObj->objId].as_s32 <= 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F94D0_ovl9);
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 -= 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9C04_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9CF0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9D38_ovl9.s")

void func_801F9E8C_ovl9(s32 arg0) {

}

void func_801F9E94_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 7.0f;
    curObjSleepForever();
}

void func_801F9F4C_ovl9(s32 arg0) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801F9F54_ovl9.s")

void func_801FA08C_ovl9(s32 arg0) {

}

void func_801FA094_ovl9(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021C57C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA0DC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA1A0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA21C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA28C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA2F8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA398_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA4B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA59C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA5E4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA628_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA704_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA758_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA80C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA884_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAA78_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAAE4_ovl9.s")

void func_801FA704_ovl9(struct GObj *);

void func_801FAC2C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAC98_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAD0C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FADA8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAE40_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAE94_ovl9.s")

void func_801FAF68_ovl9(struct GObj *arg0) {
    if ((u32)D_800DD8D0[omCurrentObj->objId] >> 30) {
        if (D_800E9E20[omCurrentObj->objId] != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAFE8_ovl9.s")

void func_801FB190_ovl9(struct GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB220_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB27C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB2E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB33C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB408_ovl9.s")

void func_801FB468_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CC13C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x100A0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB528_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB5D4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB614_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB6D0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB744_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB8B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB9DC_ovl9.s")

