#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801A0D74_ovl7(void);
void func_801A3938(void *);
void func_801A36CC(void *);
void func_801A3864_ovl7(GObj *);
s32 func_801117BC(void *, u32);
void func_80111C4C(s32);
void func_801AC33C_ovl7(GObj *);
void func_801AC11C_ovl7(GObj *);
extern s32 D_801CB0BC_ovl7[];
extern s32 D_801CA738_ovl7[];
extern s32 D_801CA77C_ovl7[];

extern s32 D_8012E7FC;
extern void *D_801CADB8_ovl7[], *D_801CA994_ovl7[];
extern s32 *D_801CB4DC_ovl7;
extern f32 D_801CE2B0_ovl7, D_801CE2B4_ovl7;
void func_800A9864(s32, s32, s32);
void func_801A2558_ovl7(void *);
void func_8010C274(void);
void curObjSleepForever(void);
extern f32 D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
extern f32 D_800EC660[], D_800EC820[], D_800E9020[];
extern f32 D_800E3750[], D_800E3210[], D_800E3C90[];
extern s32 D_800E8920[];
extern f32 D_801CE290_ovl7;
void func_801ABBA0_ovl7(void);
void func_800AA018(s32);

void func_801AC840_ovl7(void);

extern FUNCLIST D_801CD5C0_ovl7;
void func_800B6FD8(GObj *);


void func_800B6FD8(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0550_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B069C_ovl7.s")

void func_801B0880_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_801AC840_ovl7;
    sp1C->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E9020[omCurrentObj->objId] = 0.0f;
    func_800AA018(0x1017C);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 14.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE290_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0A20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0C20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0E20_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B0FCC_ovl7.s")

void func_801B10EC_ovl7(void) {
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_801AC840_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1130_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1300_ovl7.s")

void func_801B152C_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB0BC_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA738_ovl7, omCurrentObj->objId));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B15F4_ovl7.s")

void func_801B1784_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB0BC_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA77C_ovl7, omCurrentObj->objId));
    }
}

void func_801B184C_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    if ((s32) arg2 != 0) {
        D_8012E7FC = (s32) arg2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B187C_ovl7.s")

void func_801B19F8_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801CD5C0_ovl7);
}

void func_801B1A58_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    func_800A9864(0x10030, 0x23, 0x10);
    func_801A2558_ovl7(&D_801CADB8_ovl7);
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801CE2B0_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 12.0f;
    curObjSleepForever();
}

void func_801B1BB0_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    func_800A9864(0x1002F, 0x23, 0x10);
    func_801A2558_ovl7(&D_801CA994_ovl7);
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801CE2B4_ovl7;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3210[omCurrentObj->objId] = 9.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = 9.0f;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_8/func_801B1D08_ovl7.s")

