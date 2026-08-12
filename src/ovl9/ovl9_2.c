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

extern void func_800B6B8C(struct GObj *);
extern void func_801A0D50_ovl7(void *);
extern void func_801A6C10_ovl7(struct GObj *);
extern FUNCLIST D_8021BC50_ovl9;
extern FUNCLIST D_8021BC54_ovl9;
void func_801D9018_ovl9(struct GObj *);
void func_801D8EF8_ovl9(struct GObj *);

void func_801D8DC0_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801D9018_ovl9;
    func_801A0D50_ovl7(func_801D8EF8_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021BC50_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, &D_8021BC54_ovl9);
    }
}

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

extern s32 D_801CB83C;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800AA018(s32);
void func_800AA864(s32, s32);
void ohSleep(s32);

void func_801D9060_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB83C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B3520();
    if (D_800EA520[omCurrentObj->objId] != 0) {
        func_800AA864(0x10121, 2);
    } else {
        func_800AA018(0x10121);
        D_800EA520[omCurrentObj->objId] = 1;
    }
    do {
        ohSleep(1);
    } while (280.0f < D_800E6F50[omCurrentObj->objId].originOffset);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D91A0_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern struct Sub800E1B50_Unk98 D_801CB860;
extern f32 D_8021CF30_ovl9;
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800AA018(s32);

void func_801D91C8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB860;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B3520();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_8021CF30_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800AA018(0x10121);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D92AC_ovl9.s")

extern u8 D_8021BC64_ovl9[];
void func_801ACC34_ovl7(s32, s32);

void func_801D94D4_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        func_801ACC34_ovl7(0x11, D_8021BC64_ovl9[D_800E98E0[omCurrentObj->objId] + D_800E9AA0[omCurrentObj->objId].as_s32]);
        play_sound(0xA8);
    }
}

extern void func_800B6A2C(struct GObj *);
extern s32 D_801C834C_ovl7;
extern FUNCLIST D_8021BC6C_ovl9;
extern FUNCLIST D_8021BC74_ovl9;
void func_801D98B8_ovl9(struct GObj *);
void func_801D9698_ovl9(struct GObj *);

void func_801D9558_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801D98B8_ovl9;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C834C_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk9C = func_801D9698_ovl9;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BC6C_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021BC74_ovl9);
    }
}

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

extern s32 D_801CB884;
extern f32 *D_801CAA84;
void func_801A2ADC_ovl7(void *);
void func_800A9EA4(s32);
void func_800B3520(void);
void ohSleep(s32);

void func_801D9900_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB884;
    D_800E0490[omCurrentObj->objId] = &D_801CAA84;
    func_801A2ADC_ovl7(&D_801CAA84);
    func_800A9EA4(0x1016E);
    func_800B3520();
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_800EB320[omCurrentObj->objId];
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    while (D_800E98E0[omCurrentObj->objId]--) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801A0D74_ovl7();
void func_8019F3B0_ovl7(void);

void func_801D9A54_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801D9A7C_ovl9.s")

extern struct Sub800E1B50_Unk98 D_801CB8A8;
extern f32 D_8021CF40_ovl9;
extern f32 *D_801CAA84;
void func_801A2ADC_ovl7(void *);
void func_800A9EA4(s32);
void func_800B3520(void);
void ohSleep(s32);

void func_801D9D1C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB8A8;
    D_800E0490[omCurrentObj->objId] = &D_801CAA84;
    func_801A2ADC_ovl7(&D_801CAA84);
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9EA4(0x1017C);
    func_800B3520();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_8021CF40_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0xA;
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        break;
    case 1:
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        } else {
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        }
        break;
    }
}

extern u32 eneCheckNearPlayer(f32);

void func_801D9EE0_ovl9(struct GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB884;
    func_800A9EA4(0x1017C);
    D_800E0490[omCurrentObj->objId] = &D_801CAA84;
    func_801A2ADC_ovl7(&D_801CAA84);
    func_800B3520();
    if (D_800E98E0[omCurrentObj->objId] < 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    while (D_800E98E0[omCurrentObj->objId]--) {
        ohSleep(1);
    }
    while (eneCheckNearPlayer(57600.0f) == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DA054_ovl9.s")

extern struct Sub800E1B50_Unk98 D_801CB8A8;
extern f32 D_8021CF4C_ovl9;
extern f32 *D_801CAA84;
void func_801A2ADC_ovl7(void *);
void func_800A9EA4(s32);
void func_800B3520(void);
void ohSleep(s32);

void func_801DA28C_ovl9(struct GObj *arg0) {
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = D_800EA520[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB8A8;
    func_800A9EA4(0x1017C);
    D_800E0490[omCurrentObj->objId] = &D_801CAA84;
    func_801A2ADC_ovl7(&D_801CAA84);
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B3520();
    D_800E3210[omCurrentObj->objId] = 6.0f;
    D_800E3750[omCurrentObj->objId] = D_8021CF4C_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (0.0f < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801C8394_ovl7;
extern FUNCLIST D_8021BC90_ovl9;
extern FUNCLIST D_8021BC98_ovl9;
void func_801DA7A0_ovl9(struct GObj *);
void func_801DA618_ovl9(struct GObj *);

void func_801DA498_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801DA7A0_ovl9;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8394_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk9C = func_801DA618_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BC90_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021BC98_ovl9);
    }
}

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

extern struct Sub800E1B50_Unk98 D_801CB8CC;

void func_801DA7E8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB8CC;
    func_800A9EA4(0x10197);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B3520();
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    while (D_800E98E0[omCurrentObj->objId]--) {
        ohSleep(1);
    }
    while (240.0f < D_800E6F50[omCurrentObj->objId].originOffset) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);

void func_801DA978_ovl9(void) {
    func_801A0D74_ovl7();
    eneTurnCommon(6);
    func_8019F3B0_ovl7();
}

void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800AA154(s32);
void func_800AA018(s32);
void ohSleep(s32);

void func_801DA9A8_ovl9(struct GObj *arg0) {
    extern struct Sub800E1B50_Unk98 D_801CB8CC;

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB8CC;
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800B3520();
    func_800AA154(0x1018A);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10198);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5f;
    if (D_800E98E0[omCurrentObj->objId] <= 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    while (D_800E98E0[omCurrentObj->objId]--) {
        ohSleep(1);
    }
    func_800B3520();
    func_800AECC0(gameTicksPerDraw * 1.5f);
    func_800AED20(gameTicksPerDraw * 1.5f);
    func_800AA154(0x10192);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

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

extern void func_800B6B8C(struct GObj *);
extern FUNCLIST D_8021BCB8_ovl9;
extern FUNCLIST D_8021BCC0_ovl9;
extern void func_801A6C10_ovl7(struct GObj *);
void func_801DB62C_ovl9(GObj *);
void func_801DB4D8_ovl9(struct GObj *);

void func_801DB3A4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801DB62C_ovl9;
    D_800E1B50[omCurrentObj->objId]->unk9C = func_801DB4D8_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BCB8_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021BCC0_ovl9);
    }
}

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

extern s32 D_801CB7F4;
extern void func_800AA0C4(s32, f32);
extern void func_800AA154(s32);

void func_801DB7A8_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB7F4;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw * 2.0f);
    func_800AED20(gameTicksPerDraw * 2.0f);
    func_800AA0C4(0x1010E, 4.0f);
    if (D_800E98E0[omCurrentObj->objId] == D_800E9C60[omCurrentObj->objId]) {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        ohSleep(8);
        func_800AECC0(gameTicksPerDraw * 2.0f);
        func_800AED20(gameTicksPerDraw * 2.0f);
    }
    func_800AA154(0x1010B);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801A0D74_ovl7();
void func_8019F410_ovl7(struct DObj *);

void func_801DB8EC_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F410_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DB930_ovl9.s")

/* 23 diffs, all one cause: the ROM's frame is 0x38 (Vector at sp+0x2C, the
   unk84 pointer spilled at sp+0x24) while IDO allocates 0x30. Dead scalar
   locals in every position are eliminated and never grow it. */
#ifdef NON_MATCHING
extern void func_800B2340(Vector *, struct DObj *, u32);
extern void func_8019F410_ovl7(struct DObj *);

void func_801DBC38_ovl9(struct GObj *arg0) {
    Vector sp2C;
    struct Sub800E1B50_Unk84 *temp;

    temp = D_800E1B50[omCurrentObj->objId]->unk84;
    func_800B2340(&sp2C, D_800DFBD0[omCurrentObj->objId][2], omCurrentObj->objId);
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

extern s32 D_801C83DC_ovl7;
extern FUNCLIST D_8021BD38_ovl9;
extern FUNCLIST D_8021BD3C_ovl9;
void func_801DBF48_ovl9(struct GObj *);
void func_801DBE78_ovl9(struct GObj *);

void func_801DBD14_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6A2C;
    D_800DF150[omCurrentObj->objId] = func_801DBF48_ovl9;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C83DC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk9C = func_801DBE78_ovl9;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8021BD38_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, &D_8021BD3C_ovl9);
    }
}

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

extern struct Sub800E1B50_Unk98 D_801CB938;
u32 eneCheckNearPlayer(f32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B3520(void);
void func_800A9EA4(s32);
void func_800AF27C(void);

void func_801DBF90_ovl9(GObj *arg0) {
    f32 dist;

    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB938;
    func_800B3520();
    func_800A9EA4(0x1019B);
    func_800AF27C();
    dist = 25600.0f;
    while (eneCheckNearPlayer(dist) == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

/* 4 diffs: pure $v0/$v1 swap on the objId<<2 index -- the ROM reserves $v0
   for the func_801DC788_ovl9 result. Swept: explicit result local, leading pad,
   early return, callee return-type flips. */
#ifdef NON_MATCHING
extern s32 D_801C83DC_ovl7;
extern s32 D_801C84D8;
extern s32 D_801C8448;
void func_8019B4BC_ovl7(void);
void func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019B2C0_ovl7(s32);
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(struct DObj *);
s32 func_801DC788_ovl9(s32);
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801DBE78_ovl9(struct GObj *);

void func_801DC06C_ovl9(struct GObj *arg0) {
    if (D_800E1B50[omCurrentObj->objId]->unk3C == 0) {
        func_8019B4BC_ovl7();
    }
    func_801A0D74_ovl7(arg0);
    eneTurnCommon(6);
    func_8019B2C0_ovl7(1);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C83DC_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C84D8;
        if (func_801DC788_ovl9((s32) D_800DFBD0[omCurrentObj->objId][1]) != 0) {
            if (gEntityFuncListIDArray[omCurrentObj->objId] == 0) {
                gEntityFuncListIDArray[omCurrentObj->objId] = 3;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DBE78_ovl9);
            }
        }
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8448;
        func_8019F9D0_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_2/func_801DC06C_ovl9.s")
#endif

extern s32 D_801CB95C;
extern f32 D_8021CF58_ovl9;
extern f32 D_8021CF5C_ovl9;

void func_801DC1F4_ovl9(struct GObj *arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CB95C;
    func_800A9EA4(0x1019B);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021CF58_ovl9;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = D_8021CF5C_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    curObjSleepForever();
}

extern s32 D_801C83DC_ovl7;
extern s32 D_801C8448;
void func_801A0D74_ovl7();
void eneTurnCommon(s32);
void func_8019F3B0_ovl7(void);
void func_8019F9D0_ovl7(struct DObj *);

void func_801DC320_ovl9(void) {
    struct DObj *sp1C = D_800DFBD0[omCurrentObj->objId][1];

    func_801A0D74_ovl7();
    eneTurnCommon(6);
    gEntitiesAngleZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleZArray[omCurrentObj->objId];
    sp1C->angle.v.x = 0.0f;
    sp1C->angle.v.y = 0.0f;
    sp1C->angle.v.z = 0.0f;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C83DC_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8448;
        func_8019F9D0_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
    }
}

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

extern s32 D_801C8490;

void func_801DC680_ovl9(void) {
    func_801A0D74_ovl7();
    eneTurnCommon(6);
    func_8019B2C0_ovl7(1);
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C83DC_ovl7;
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] == 0) {
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8448;
        func_8019F9D0_ovl7(D_800DFBD0[omCurrentObj->objId][2]);
        D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8490;
        func_8019F9D0_ovl7(D_800DFBD0[omCurrentObj->objId][3]);
    }
}

struct Ovl9AnimCmdX {
    u8 filler0[8];
    s32 unk8;
};

struct Ovl9AnimObjX {
    u8 filler0[0x24];
    struct Ovl9AnimCmdX *unk24;
};

struct Ovl9AnimHdrSubX {
    u8 filler0[4];
    s32 unk4;
};

struct Ovl9AnimHdrX {
    u8 filler0[8];
    struct Ovl9AnimHdrSubX *unk8;
};

struct Ovl9AnimInfoX {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_80111550(s32);
struct Ovl9AnimObjX *func_80111C88(s32 *, u32);
void func_80111ECC(struct Ovl9AnimObjX *);
s32 func_80110B00(struct Ovl9AnimInfoX *);

s32 func_801DC788_ovl9(s32 arg0) {
    struct Ovl9AnimInfoX sp30;
    struct UnkStruct800E1B50 *ent;
    struct Ovl9AnimObjX *anim;
    struct Ovl9AnimHdrSubX *hdr;

    ent = D_800E1B50[omCurrentObj->objId];
    if (ent == NULL) {
        return 0;
    }
    if (ent->unk8C == NULL) {
        return 0;
    }
    func_80111550(omCurrentObj->objId);
    anim = func_80111C88(ent->unk8C, omCurrentObj->objId);
    hdr = ((struct Ovl9AnimHdrX *) ent->unk8C)->unk8;
    if ((hdr->unk4 == 0) && (arg0 != 0)) {
        anim->unk24->unk8 = arg0;
    }
    func_80111ECC(anim);
    if (func_80110B00(&sp30) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp30.unk2;
        ent->unk43 = sp30.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
    return D_800E83E0[omCurrentObj->objId];
}

