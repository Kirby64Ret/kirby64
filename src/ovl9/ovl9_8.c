#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern void func_8019F410_ovl7(struct DObj *);
extern FUNCLIST D_8021C5AC_ovl9;
extern FUNCLIST D_8021C588_ovl9;

extern s32 D_801C8CFC;
extern s32 D_801C8D44;

struct Ovl9Vec4 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
};
extern struct Ovl9Vec4 D_8021C5CC_ovl9[];


extern s32 func_8019A7E8_ovl7(f32);
extern void func_8019BB58_ovl7(void);
extern FUNCLIST D_8021C5C0_ovl9;

extern s32 func_801A0D74_ovl7();
extern void func_8019F3B0_ovl7(void);
extern void eneTurnCommon(s32);
extern FUNCLIST D_8021C5C8_ovl9;

extern void func_800AECC0(f32);
extern s32 D_801C8CB4_ovl7;
extern FUNCLIST D_8021C598_ovl9;
extern FUNCLIST D_8021C5C4_ovl9;

extern void func_8019D958_ovl7(u16);
extern void func_800A2300(struct GObj *);

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

void func_801F9410_ovl9(struct GObj *arg0) {
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.5f;
    D_800E3C90[omCurrentObj->objId] = 7.0f;
}

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

void func_801F96DC_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801F974C_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(240.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801F94D0_ovl9);
    }
}

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

void func_801F9CF0_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
}

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

void func_801FA1A0_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C588_ovl9);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        eneTurnCommon(6);
        func_8019F3B0_ovl7();
    }
}

void func_801FA21C_ovl9(struct GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_800AFBB4(0, omCurrentObj);
    curObjSleepForever();
}

void func_801FA28C_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(240.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA094_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA2F8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA398_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA4B8_ovl9.s")

void func_801FA59C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_8019D958_ovl7((u16) omCurrentObj->objId);
    }
}

void func_801FA5E4_ovl9(struct GObj *arg0) {
    if (D_800E0D50[omCurrentObj->objId] == 0) {
        arg0->onAnimate = NULL;
        func_800A2300(arg0);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA628_ovl9.s")

void func_801FA704_ovl9(struct GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, &D_8021C598_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA758_ovl9.s")

void func_801FA80C_ovl9(void) {
    /* the three dead locals are load-bearing: they set the 0x28 frame and put
       the spill of `temp` at 0x1C */
    s32 unused0;
    s32 unused1;
    struct DObj *temp = D_800DFBD0[omCurrentObj->objId][3];
    s32 unused2;

    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021C5AC_ovl9);
    }
    func_8019F410_ovl7(temp);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FA884_ovl9.s")

void func_801FAA78_ovl9(struct GObj *arg0) {
    if (func_8019A7E8_ovl7(160.0f) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAAE4_ovl9.s")

void func_801FA704_ovl9(struct GObj *);

void func_801FAC2C_ovl9(struct GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801FA704_ovl9);
    }
}

void func_801FAC98_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
                tmp->unk8C = &D_801C8D44;
            } else {
                tmp->unk8C = &D_801C8CFC;
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FAD0C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FADA8_ovl9.s")

void func_801FAE40_ovl9(s32 arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if (arg1 == 0) {
        if ((s32) arg2 == 1) {
            tmp->unk8C = &D_801C8CB4_ovl7;
        }
    }
}

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

void func_801FB220_ovl9(struct GObj *arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = 0.0f;
}

void func_801FB27C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021C5C0_ovl9);
}

void func_801FB2E8_ovl9(struct GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8021C5C4_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB33C_ovl9.s")

void func_801FB408_ovl9(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021C5C8_ovl9);
    }
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

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

void func_801FB5D4_ovl9(void) {
    s32 v = D_800E9AA0[omCurrentObj->objId].as_s32;

    if (v - 4 >= 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = v - 4;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = v + 4;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB614_ovl9.s")

void func_801FB6D0_ovl9(void) {
    D_800E6690[omCurrentObj->objId] = -D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unk4;
    D_800E3750[omCurrentObj->objId] = -D_8021C5CC_ovl9[D_800E9AA0[omCurrentObj->objId].as_s32].unkC;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB744_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB8B8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_8/func_801FB9DC_ovl9.s")

