#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

#include "unk_structs/D_800E1B50.h"
extern s32 D_801D0A98_ovl7;
extern s32 D_801D0A9C_ovl7;
extern s32 D_801CB3B4_ovl7[];
extern s32 D_801C97A8_ovl7[];
struct Sub800E1B50_Unk34 *func_800A8234(s32, s32, s32);
void func_801B857C_ovl7(struct Sub800E1B50_Unk34 *);
void func_801A3938(void *);
void func_801A374C_ovl7(void *);
void func_801A3864_ovl7(GObj *);
s32 func_80111A04(void *, u32);
void func_80111C4C(s32);

void func_800A22D4(struct Sub800E1B50_Unk34 *);
extern s32 *D_801CB4DC_ovl7;
void func_8010C274(void);
extern f32 gameTicksPerDraw;
extern f32 D_800EC660[], D_800EC820[], D_800E64D0[], D_800E6690[], D_800E6850[], D_800E6A10[];
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA018(s32);
void ohSleep(s32);
void func_801ABBA0_ovl7(void);
void func_801B8238_ovl7(void);
extern f32 D_801CE370_ovl7;
void func_800AFBB4(s32, struct GObj *);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_801A3E80_ovl7(GObj *);
extern f32 D_800EA8A0[];
void func_801AC840_ovl7(void);
void play_sound(s32);

void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];
s32 func_801A0D74_ovl7(void);
void func_801A36CC(void *);
s32 func_801117BC(void *, u32);
void func_801AC33C_ovl7(GObj *);
void func_801AC11C_ovl7(GObj *);
extern s32 D_801CB044_ovl7[];
extern s32 D_801CA7BC_ovl7[];
extern s32 D_801CA79C_ovl7[];

void func_801BA240_ovl7(void);
void func_8020FC68_ovl9(void);
void func_801AC908_ovl7(GObj *);

extern FUNCLIST D_801CD720_ovl7;
void func_800B6FD8(GObj *);


void func_800B6FD8(GObj *);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B79B0_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B7C30_ovl7.s")

void func_801B7E80_ovl7(GObj *arg0) {
    func_801BA240_ovl7();
    func_801AC908_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B7EA8_ovl7.s")

void func_801B8068_ovl7(GObj *arg0) {
    func_8020FC68_ovl9();
    func_801AC908_ovl7(arg0);
}

void func_801B8090_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EC660[omCurrentObj->objId] = 40.0f;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    func_801ABBA0_ovl7();
    D_800DF150[omCurrentObj->objId] = func_801B8238_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10161);
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 14.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_801CE370_ovl7;
    ohSleep(0x3C);
    func_801AC11C_ovl7(arg0);
}

void func_801B8238_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB044_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA7BC_ovl7, omCurrentObj->objId));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8300_ovl7.s")

void func_801B84B4_ovl7(void) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0x12) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC33C_ovl7);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AC11C_ovl7);
        }
    } else {
        if (func_801A0D74_ovl7() != 0) {
            func_801A3938(D_801CB044_ovl7);
            func_801A36CC(func_801A3864_ovl7);
        }
        func_80111C4C(func_801117BC(D_801CA79C_ovl7, omCurrentObj->objId));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B857C_ovl7.s")

void func_801B865C_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (D_801D0A98_ovl7 != 0) {
        if (D_801D0A9C_ovl7 == 0) {
            ent->unk34 = func_800A8234(3, 2, 0xDE);
            D_801D0A9C_ovl7 = 1;
        }
        func_801B857C_ovl7(ent->unk34);
        func_801A3938(D_801CB3B4_ovl7);
        func_801A374C_ovl7(func_801A3864_ovl7);
        func_80111C4C(func_80111A04(D_801C97A8_ovl7, omCurrentObj->objId));
    }
}

#ifdef MIPS_TO_C
void func_801B8714_ovl7(GObj *arg0, s32 arg1, f32 arg2) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    s32 *p = &D_801D0A98_ovl7;

    if (*p == 0) {
        if ((s32) arg2 != 0) {
            play_sound(0x15F);
        }
    }
    *p = (s32) arg2;
    if (((s32) arg2 == 0) && (ent->unk34 != NULL)) {
        func_800A22D4(ent->unk34);
        ent->unk34 = NULL;
        D_801D0A9C_ovl7 = *p;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8714_ovl7.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B87DC_ovl7.s")

void func_801B89AC_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    D_800EA8A0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    func_800B3520();
    D_800DF150[omCurrentObj->objId] = func_801AC840_ovl7;
    ent->unk48 = &func_8010C274;
    ent->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    ent->unk40 = 1;
    func_800AFBB4(0, omCurrentObj);
    func_800A7F74(3, 2, 0xD4, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x220);
    func_801A3E80_ovl7(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8AD4_ovl7.s")

void func_801B8C00_ovl7(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_801CD720_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8C60_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_12/func_801B8DB8_ovl7.s")

