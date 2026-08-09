#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021C098_ovl9;
extern FUNCLIST D_8021C114_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EABC0_ovl9.s")

extern FUNCLIST D_8021C080_ovl9;

void func_801EACB8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021C080_ovl9);
    }
}

void func_801EAD38_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern f32 D_8021D1C0_ovl9;

void func_801EAD84_ovl9(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_8021D1C0_ovl9;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801EADD4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, &D_8021C098_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EAE1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EAF10_ovl9.s")

void func_8019F410_ovl7(struct DObj *);

void func_801EB158_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB198_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB4B0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB6BC_ovl9.s")

void func_8019F410_ovl7(struct DObj *);

void func_801EB874_ovl9(GObj *arg0) {
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    }
}

extern s32 D_801C8784_ovl7[];
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9EA4(s32);
void func_800AF27C(void);

void func_801EB8E8_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = D_801C8784_ovl7;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x100E0);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 5;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EB98C_ovl9.s")

struct Ovl9AnimCmd2 {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl9AnimObj2 {
    u8 filler0[0x24];
    struct Ovl9AnimCmd2 *unk24;
};

void func_80111550(u32);
struct Ovl9AnimObj2 *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObj2 *);
s32 func_80110150(void *);

s32 func_801EBB28_ovl9(s32 arg0, void *arg1) {
    struct Sub800E1B50_Unk88 *sp0;
    struct UnkStruct800E1B50 *temp;
    struct Ovl9AnimObj2 *temp_v0;

    temp = D_800E1B50[omCurrentObj->objId];
    sp0 = temp->unk88;
    if (sp0 == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    temp_v0 = func_80111C88(temp->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        func_80111ECC(temp_v0);
    }
    return func_80110150(arg1);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBBC8_ovl9.s")

extern FUNCLIST D_8021C0B0_ovl9;

void func_801EBD38_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_8021C0B0_ovl9);
    }
}

void func_801EBDB8_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 2;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

extern FUNCLIST D_8021C0C4_ovl9;
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EBE1C_ovl9(struct GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021C0C4_ovl9);
    func_801A0D74_ovl7(arg0);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBE74_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EBFE8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC0E0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC314_ovl9.s")

void func_801EC4A0_ovl9(GObj *arg0) {
}

extern struct Sub800E1B50_Unk98 D_801CBC08;
void func_800A9F98(s32, f32);
void ohSleep(s32);

void func_801EC4A8_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBC08;
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 1;
    func_800AECC0(gameTicksPerDraw + gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw + gameTicksPerDraw);
    func_800A9F98(0x10209, 2.0f);
    ohSleep(2);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC598_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC800_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EC9E0_ovl9.s")

extern FUNCLIST D_8021C104_ovl9;

void func_801ECAD8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021C104_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ECB58_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ECEB4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED018_ovl9.s")

extern struct GObjProcess *gEntityGObjProcessArray5[];
extern void func_800B7514(s32);
void func_801A3280_ovl7(void);
void func_8019BB58_ovl7(void);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void procMainStub(struct GObj *);
void func_800AFBB4(s32, struct GObj *);

void func_801ED150_ovl9(GObj *arg0) {
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7514;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED208_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED648_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801ED9AC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EDBEC_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE064_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE2E8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EE728_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EEC28_ovl9.s")

void func_801EF07C_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021C114_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF0C4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF354_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EF524_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EFDAC_ovl9(void) {
    if (D_800E7880[omCurrentObj->objId] != 0xA) {
        func_801A0D74_ovl7();
    }
    if (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        func_8019F3B0_ovl7();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EFE1C_ovl9.s")

#ifdef MIPS_TO_C
void func_801EFF24_ovl9(GObj *arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z -= D_8021D8AC_ovl9;
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId]--;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        func_801A0D74_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}
#else
extern f32 D_8021D8AC_ovl9;
void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801EFF24_ovl9(GObj *arg0) {
    D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild->angle.v.z - D_8021D8AC_ovl9;
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] = D_800E9E20[omCurrentObj->objId] - 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        func_801A0D74_ovl7(arg0);
    }
    func_8019F3B0_ovl7();
}
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_6/func_801EFFCC_ovl9.s")

