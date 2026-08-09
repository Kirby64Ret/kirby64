#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BC60_ovl9;
extern FUNCLIST D_8021BC8C_ovl9;
extern FUNCLIST D_8021BCB0_ovl9;
extern FUNCLIST D_8021BCD0_ovl9;
extern FUNCLIST D_8021BD4C_ovl9;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D8DC0_ovl9.s")

extern FUNCLIST D_8021BC54_ovl9;

void func_801D8EF8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8021BC54_ovl9);
    }
}

void func_801A3E80_ovl7(void);

void func_801D8F78_ovl9(void) {
    D_800EA520[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A3E80_ovl7();
    }
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
    }
}

void func_801D9018_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021BC60_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9060_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D91A0_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D91C8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D92AC_ovl9.s")

extern u8 D_8021BC64_ovl9[];
void func_801ACC34_ovl7(s32, s32);

void func_801D94D4_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACC34_ovl7(0x11, D_8021BC64_ovl9[D_800E98E0[omCurrentObj->objId] + D_800E9AA0[omCurrentObj->objId].as_s32]);
        play_sound(0xA8);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9558_ovl9.s")

extern FUNCLIST D_8021BC74_ovl9;

void func_801D9698_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021BC74_ovl9);
    }
}

void func_801D9718_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0x20;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0xA;
    D_800EB160[omCurrentObj->objId] = 6.0f;
    D_800EA520[omCurrentObj->objId] = 0x40;
    D_800EB320[omCurrentObj->objId] = 3.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    } else {
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
    }
}

void func_801D97E8_ovl9(GObj *arg0) {
    *(u32 *) &D_800E98E0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800EB160[omCurrentObj->objId] = 9.0f;
    D_800EA520[omCurrentObj->objId] = 0x20;
    D_800EB320[omCurrentObj->objId] = 6.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) { gEntityFuncListIDArray[omCurrentObj->objId] = 3; } else { gEntityFuncListIDArray[omCurrentObj->objId] = 2; }
}

void func_801D98B8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021BC8C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9900_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D9A54_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9A7C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9D1C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9EE0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA054_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA28C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA498_ovl9.s")

extern FUNCLIST D_8021BC98_ovl9;

void func_801DA618_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021BC98_ovl9);
    }
}

void func_801DA698_ovl9(GObj *arg0) {
    *(u32 *) &D_800E98E0[omCurrentObj->objId] = 1;
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DA718_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 0x28;
    D_800EA8A0[omCurrentObj->objId] = 1.5f;
    if (D_800E8920[omCurrentObj->objId] == 1) { *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1; } else { gEntityFuncListIDArray[omCurrentObj->objId] = 2; }
}

void func_801DA7A0_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BCB0_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA7E8_ovl9.s")

void func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801DA978_ovl9(void) {
    func_801A0D74_ovl7();
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA9A8_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DAB7C_ovl9.s")

extern struct Sub800E1B50_Unk98 D_801CB8CC;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800AA154(s32);

void func_801DACEC_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB8CC;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B3520();
    func_800AA154(0x1018B);
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DAD8C_ovl9.s")

void func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801DAFE8_ovl9(void) {
    func_801A0D74_ovl7();
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DB018_ovl9.s")

void func_80199F1C_ovl7(void);

void func_801DB350_ovl9(void) {
    func_80199F1C_ovl7();
    if (D_800E7880[omCurrentObj->objId] == 1) {
        D_800E98E0[omCurrentObj->objId] = 0x50;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DB3A4_ovl9.s")

extern FUNCLIST D_8021BCC0_ovl9;

void func_801DB4D8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021BCC0_ovl9);
    }
}

void func_801DB558_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DB5BC_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = 5;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 4;
    D_800E9C60[omCurrentObj->objId] = 3;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DB62C_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8021BCD0_ovl9);
}

void func_801DB674_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId]++;
    D_800E98E0[omCurrentObj->objId] %= 3;
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DB6DC_ovl9(GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] + 1;
    D_800E98E0[omCurrentObj->objId] = (D_800E98E0[omCurrentObj->objId] % 3) + 3;
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 - 1;
    if (D_800E9AA0[omCurrentObj->objId].as_s32 <= 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 6;
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DB7A8_ovl9.s")

void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801DB8EC_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DB930_ovl9.s")

#ifdef MIPS_TO_C
void func_800B2340(Vector *, struct DObj *);
void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801DBC38_ovl9(GObj *arg0) {
    Vector sp2C;
    struct Sub800E1B50_Unk84 *temp;

    temp = D_800E1B50[omCurrentObj->objId]->unk84;
    func_800B2340(&sp2C, D_800DFBD0[omCurrentObj->objId][2]);
    if (temp != NULL) {
        *(f32 *) &temp->unk18 = sp2C.y - gEntitiesNextPosYArray[omCurrentObj->objId];
    }
    func_801A0D74_ovl7(arg0);
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DBC38_ovl9.s")
#endif

void func_801DBCF0_ovl9(GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DBD14_ovl9.s")

extern FUNCLIST D_8021BD3C_ovl9;

void func_801DBE78_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_8021BD3C_ovl9);
    }
}

void func_801DBEF8_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DBF48_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021BD4C_ovl9);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DBF90_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC06C_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC1F4_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC320_ovl9.s")

extern struct Sub800E1B50_Unk98 D_801CB938;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800AA018(s32);
void func_800AF27C(void);

void func_801DC444_ovl9(GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB938;
    func_800B3520();
    func_800AA018(0x1019D);
    ohSleep(0xF);
    play_sound(0x93);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern s32 D_801C83DC_ovl7;
extern s32 D_801C8448;
void eneTurnCommon(s32);
void func_8019B2C0_ovl7(s32);
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(struct DObj *);
void func_801A0D74_ovl7();

void func_801DC4F8_ovl9(void) {
    func_801A0D74_ovl7();
    eneTurnCommon(6);
    func_8019B2C0_ovl7(1);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C83DC_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8448;
        func_8019F9D0_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    }
}

void func_801DC5B4_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB938;
    func_800B3520();
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800AA018(0x10199);
    ohSleep(4);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC680_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC788_ovl9.s")

