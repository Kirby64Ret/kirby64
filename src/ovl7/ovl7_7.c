#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void func_800B3520(void);
void func_801A0D50_ovl7(void *);
void func_801AF398_ovl7(GObj *);
void func_801AF314_ovl7(GObj *);

extern FUNCLIST D_801CD594_ovl7;
extern struct Sub800E1B50_Unk98 D_801CD384_ovl7;
void curObjSleepForever(void);

struct Ovl7AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_80111550(void *);
void *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110150(void *);
extern f32 D_801CE24C_ovl7, D_801CE250_ovl7, D_801CE25C_ovl7, D_801CE260_ovl7;
extern f32 D_801CE26C_ovl7, D_801CE270_ovl7;



#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEA20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEE04_ovl7.s")

void func_801AEFC0_ovl7(GObj *arg0) {
    func_800B3520();
    D_800E9C60[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEFFC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF104_ovl7.s")

void func_801AF2A4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801AF398_ovl7;
    func_801A0D50_ovl7(func_801AF314_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801AF314_ovl7(arg0);
}

void func_801AF314_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD594_ovl7);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF398_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF814_ovl7.s")

void func_801AF9F8_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = D_801CE24C_ovl7;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = D_801CE250_ovl7;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFAB0_ovl7.s")

void func_801AFD28_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = D_801CE25C_ovl7;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = D_801CE260_ovl7;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFDE0_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD384_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B3520();
    curObjSleepForever();
}

void func_801AFE60_ovl7(GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFE68_ovl7.s")

void func_801AFF64_ovl7(GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = D_801CE26C_ovl7;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = D_801CE270_ovl7;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
}

#ifdef MIPS_TO_C
// 2 diffs: the Ovl7AnimInfo local lands at 0x30($sp), the ROM has it at 0x28.
// The ROM reserves 8 bytes above it that no combination of dead locals or
// struct resizing reproduces (they grow the frame instead).
void func_801AFFFC_ovl7(void) {
    struct Ovl7AnimInfo sp28;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (ent->unk8C != NULL) {
        func_80111550((void *) omCurrentObj->objId);
        func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
        if (func_80110150(&sp28) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp28.unk2;
            ent->unk43 = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AFFFC_ovl7.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B00BC_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B0258_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801B03FC_ovl7.s")

