#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "unk_structs/D_800E1B50.h"

extern FUNCLIST D_8021BE4C_ovl9;
extern FUNCLIST D_8021BEA0_ovl9;
extern FUNCLIST D_8021BED0_ovl9;

extern void func_800B6FD8(s32);
extern void func_801A0D50_ovl7(void *);
extern void func_801A6C10_ovl7();
extern FUNCLIST D_8021BE20_ovl9;
extern FUNCLIST D_8021BE28_ovl9;
void func_801E0CC4_ovl9(struct GObj *);
void func_801E0BF8_ovl9(struct GObj *);

void func_801E0AA0_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B6FD8;
    D_800DF150[omCurrentObj->objId] = func_801E0CC4_ovl9;
    func_801A0D50_ovl7(func_801E0BF8_ovl9);
    tmp->unk42 = 2;
    *(s8 *) &tmp->unk38 = -1;
    tmp->unk39 = -1;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BE20_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, &D_8021BE28_ovl9);
    }
}

extern FUNCLIST D_8021BE28_ovl9;

void func_801E0BF8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 9, D_8021BE28_ovl9);
    }
}

void func_801E0C78_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E0C9C_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

void func_801E0CC4_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, &D_8021BE4C_ovl9);
}

void func_801E0D0C_ovl9(struct GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E9C60[omCurrentObj->objId] = 0x20;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EB320[omCurrentObj->objId] = -1.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E0E24_ovl9.s")

extern s32 D_8012E850;
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E2548_ovl9();

void func_801E1118_ovl9(struct GObj *arg0) {
    if (ABSF(D_800E3210[omCurrentObj->objId]) == D_800E3C90[omCurrentObj->objId]) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    }
    if (D_8012E850 != 0) {
        if (D_800E6F50[omCurrentObj->objId].originOffset < 240.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
        }
    }
    func_801E2548_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E1214_ovl9.s")

void func_801E1590_ovl9(struct GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E5F90[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0x96;
    D_800E9C60[omCurrentObj->objId] = 0x20;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[0] + 20.0f)) {
        D_800EB320[omCurrentObj->objId] = 1.0f;
    } else {
        D_800EB320[omCurrentObj->objId] = -1.0f;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E16A8_ovl9.s")

void func_801E1994_ovl9(struct GObj *arg0) {
    if (ABSF(D_800E64D0[omCurrentObj->objId]) == D_800E6850[omCurrentObj->objId]) {
        D_800E5F90[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        D_800E6BD0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    }
    if (D_8012E850 != 0) {
        if (D_800E6F50[omCurrentObj->objId].originOffset < 240.0f) {
            gEntityFuncListIDArray[omCurrentObj->objId] = 6;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
        }
    }
    func_801E2548_ovl9(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E1AB0_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E1E24_ovl9.s")

extern s32 D_8012E850;
extern struct GObjProcess *gEntityGObjProcessArray[];
void func_801E0BF8_ovl9(struct GObj *);
void func_801E2548_ovl9();

void func_801E22FC_ovl9(GObj *arg0) {
    if (D_8012E850 == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E0BF8_ovl9);
    }
    func_801E2548_ovl9(arg0);
}

extern s32 D_801CBA10;

void func_800A9EA4(s32);
void func_800B33F4(void);
void ohSleep(s32);

void func_801E236C_ovl9(struct GObj *arg0) {
    s32 i;
    f32 dy;
    f32 dz;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    func_800A9EA4(0x101AF);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3590[omCurrentObj->objId] =
    D_800E3750[omCurrentObj->objId] =
    D_800E3910[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    dy = D_800E64D0[omCurrentObj->objId] / 15.0f;
    dz = D_800E3210[omCurrentObj->objId] / 15.0f;
    i = 14;
    do {
        D_800E64D0[omCurrentObj->objId] = i * dy;
        D_800E3210[omCurrentObj->objId] = i * dz;
        ohSleep(1);
    } while (i--);
    func_800B33F4();
    switch (D_800E7880[omCurrentObj->objId]) {
    case 0:
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        break;
    case 1:
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        break;
    }
}

void func_801A0D74_ovl7();
s32 func_8019F3B0_ovl7(void);

void func_801E2548_ovl9() {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801CBA10;

void func_801E2588_ovl9(struct GObj *arg0) {
    f32 temp;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA10;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp = D_800E6690[omCurrentObj->objId];
    D_800E3910[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = temp;
    D_800E3590[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = 0.25f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    func_800A9EA4(0x101AF);
    curObjSleepForever();
}

void func_801A0D74_ovl7();
s32 func_8019F3B0_ovl7(void);

void func_801E2698_ovl9(void) {
    func_801A0D74_ovl7();
    if (D_800E3210[omCurrentObj->objId] > 0.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId];
    }
    func_8019F3B0_ovl7();
}

extern void func_800B6B8C(struct GObj *);
extern s32 D_801C85F8_ovl7;
extern FUNCLIST D_8021BE7C_ovl9;
extern FUNCLIST D_8021BE84_ovl9;
void func_801E2970_ovl9(struct GObj *);
void func_801E2878_ovl9(struct GObj *);

void func_801E270C_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DF150[omCurrentObj->objId] = func_801E2970_ovl9;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C85F8_ovl7;
    func_801A0D50_ovl7(func_801E2878_ovl9);
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7(arg0);
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 2, &D_8021BE7C_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, &D_8021BE84_ovl9);
    }
}

extern FUNCLIST D_8021BE84_ovl9;

void func_801E2878_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_8021BE84_ovl9);
    }
}

void func_801E28F8_ovl9(GObj *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        return;
    }
    *(u32 *) &gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801E2948_ovl9(GObj *arg0) {
    gEntityFuncListIDArray[omCurrentObj->objId] = 6;
}

void func_801E2970_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8021BEA0_ovl9);
}

extern struct Sub800E1B50_Unk98 D_801CBA34;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);
s32 eneCheckNearPlayer(f32);

void func_801E29B8_ovl9(struct GObj *arg0) {

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9EA4(0x101B7);
    ohSleep(0x1E);
    while (1) {
        if (eneCheckNearPlayer(25600.0f) != 0) {
            if ((-10.0f < ((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId])) && (((gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId]) < 120.0f)) {
                break;
            }
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801A0D74_ovl7();
s32 func_8019F3B0_ovl7(void);

void func_801E2B04_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
}

extern s32 D_801CBA58;
/* D_8021CFBC_ovl9: literal, this TU owns its .rodata */
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);

void func_801E2B2C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

extern struct Sub800E1B50_Unk98 D_801CBA34;
f32 func_8019B608_ovl7(s32);
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AF27C(void);

void func_801E2C68_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AF27C();
    D_800E6A10[omCurrentObj->objId] = func_8019B608_ovl7(0);
    D_800E98E0[omCurrentObj->objId] = 8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801E2D34_ovl9(struct GObj *arg0) {
    extern struct Sub800E1B50_Unk98 D_801CBA7C;
    extern void func_800AA018(s32);

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA7C;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
    ohSleep(1);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
    do {
        func_800AF27C();
        if ((D_800E98E0[omCurrentObj->objId] & 1) == 0) {
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            func_800AA018((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
        }
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - 1;
    } while (D_800E98E0[omCurrentObj->objId] > 0);
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801CBA58;
/* D_8021CFC0_ovl9: literal, this TU owns its .rodata */
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void ohSleep(s32);

void func_801E2F5C_ovl9(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B33F4();
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = -0.65f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

extern struct Sub800E1B50_Unk98 D_801CBA34;
void func_800B33F4(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AA154(s32);

void func_801E309C_ovl9(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA34;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA154(0x101B5);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801E3134_ovl9(struct GObj *arg0) {
    extern f32 gameTicksPerDraw;
    extern void play_sound(s32);

    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBA58;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    while (1) {
        D_800E8920[omCurrentObj->objId] = 0;
        func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
        D_800E3210[omCurrentObj->objId] = 10.39999962f;
        D_800E3750[omCurrentObj->objId] = -0.6499999762f;
        D_800E3C90[omCurrentObj->objId] = 10.39999962f;
        play_sound(0x166);
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    }
}

void func_801E333C_ovl9(struct GObj *arg0) {
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] - (((D_800E98E0[omCurrentObj->objId] & 1) == 0) ? 1 : 2);
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    func_800A9EA4((1.0f == D_800E6A10[omCurrentObj->objId]) ? 0x101B6 : 0x101B4);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
}

extern FUNCLIST D_8021BEA4_ovl9;
extern FUNCLIST D_8021BEB8_ovl9;

void func_801E3430_ovl9(void) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = -1;
        func_801A6C10_ovl7();
    }
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 5, &D_8021BEA4_ovl9);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, &D_8021BEB8_ovl9);
    }
}

extern FUNCLIST D_8021BEB8_ovl9;

void func_801E34F8_ovl9(struct GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_8021BEB8_ovl9);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E3578_ovl9.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E38F0_ovl9.s")

extern f32 *D_801CAAD4_ovl7;
void func_800B68AC(s32);
void func_801E3DA8_ovl9(struct GObj *);
void func_801E34F8_ovl9(struct GObj *);
void func_801A0D50_ovl7(void *);
void func_801A2ADC_ovl7(void *);

void func_801E3CD0_ovl9(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DF150[omCurrentObj->objId] = &func_801E3DA8_ovl9;
    func_801A0D50_ovl7(&func_801E34F8_ovl9);
    D_800E9FE0[omCurrentObj->objId].as_s32 = 4;
    D_800E0490[omCurrentObj->objId] = &D_801CAAD4_ovl7;
    func_801A2ADC_ovl7(&D_801CAAD4_ovl7);
    D_800E98E0[omCurrentObj->objId] = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801E3DA8_ovl9(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, &D_8021BED0_ovl9);
}

extern s32 D_801C86AC_ovl7;
extern struct Sub800E1B50_Unk98 D_801CBAC4;
void func_800B33F4(void);
void ohSleep(s32);
void play_sound(s32);

void func_801E3DF0_ovl9(struct GObj *arg0) {
    s32 i;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAC4;
    func_800B33F4();
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 4.0f;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    play_sound(0xA4);
    for (i = 0; i < 10; i++) {
        if (gEntitiesPosYArray[omCurrentObj->objId] != gEntitiesNextPosYArray[omCurrentObj->objId]) {
            break;
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801A0D74_ovl7();
void func_8019F3F0_ovl7(void);
void func_801E4DC8_ovl9(void);

void func_801E3FB4_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3F0_ovl7();
    func_801E4DC8_ovl9();
}

/* FACTORY: 173/174 insns -- instructions [81..] onward (both ABSF ternary
   blocks, ~90 insns) are byte-exact.  Residue is ONE instruction: the ROM
   materialises the literal 1 twice (addiu $t9 for D_800DDFD0, addiu $t8 for
   D_800E8920), IDO CSEs them into one register, which frees $a2 and rotates
   the four array-base registers ($a2/$a3/$t0/$t1 -> $a3/$t0/$t1/$t2) one slot.
   Tried: 1U to fork the constant node.  Pure permuter food. */
#ifdef NON_MATCHING
void func_801E3FE4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAC4;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E3910[omCurrentObj->objId] = 0;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 3.0f : 6.0f);
    D_800E3C90[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 5.0f : 10.0f);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E3FE4_ovl9.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E429C_ovl9.s")

void func_801E4A1C_ovl9(struct GObj *arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3210[omCurrentObj->objId] = 2.5f;
    } else {
        D_800E3210[omCurrentObj->objId] = 5.0f;
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        if (0.0f < D_800E64D0[omCurrentObj->objId]) {
            D_800E64D0[omCurrentObj->objId] = 1.5f;
        } else {
            D_800E64D0[omCurrentObj->objId] = -1.5f;
        }
    } else {
        if (0.0f < D_800E64D0[omCurrentObj->objId]) {
            D_800E64D0[omCurrentObj->objId] = 3.0f;
        } else {
            D_800E64D0[omCurrentObj->objId] = -3.0f;
        }
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 3;
}

extern s32 D_801CBAE8;

void func_801E4B34_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B6B8C;
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C86AC_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAE8;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3750[omCurrentObj->objId] = -0.3249999881f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.6499999762f;
    }
    D_800E3C90[omCurrentObj->objId] = ABSF(((D_800E8AE0[omCurrentObj->objId] & 1) != 0) ? 5.0f : 10.0f);
    curObjSleepForever();
}

extern struct GObjProcess *gEntityGObjProcessArray[];
void func_800FB914(s32);
void func_801E34F8_ovl9(struct GObj *);
void func_801E4DC8_ovl9(void);
void func_8019F3F0_ovl7(void);

void func_801E4CF8_ovl9(void) {
    func_801A0D74_ovl7();
    if (D_800E8920[omCurrentObj->objId] == 1) {
        func_800FB914(1);
        play_sound(0x98);
        D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.75f;
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801E34F8_ovl9);
    }
    func_8019F3F0_ovl7();
    func_801E4DC8_ovl9();
}

/* 13 diffs: pure $f2/$f12 role swap -- the ROM keeps 6.283185482f in $f12
   and the re-read D_800EAFA0 value in $f2, IDO does the opposite. Swept: the
   position of the `k` assignment (top of function / before / after the store),
   both mul and add operand orders, `< 0` vs `< 0.0f`. */
/* D_8021D014_ovl9: literal */

void func_801E4DC8_ovl9(void) {
    f32 k;

    if (ABSF(D_800E64D0[omCurrentObj->objId]) > ABSF(D_800E6690[omCurrentObj->objId])) {
        k = 6.283185482f;
        D_800EAFA0[omCurrentObj->objId] = (D_800E64D0[omCurrentObj->objId] * D_800EADE0[omCurrentObj->objId]) + D_800EAFA0[omCurrentObj->objId];
        while (k <= D_800EAFA0[omCurrentObj->objId]) {
            D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] - k;
        }
        while (D_800EAFA0[omCurrentObj->objId] < 0) {
            D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] + k;
        }
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = D_800EAFA0[omCurrentObj->objId];
}

f32 func_800F8824(Vector *, f32);

f32 func_801E4F18_ovl9(void) {
    UnkStruct800E1B50 *p;
    Vector *v;
    f32 temp;

    p = D_800E1B50[omCurrentObj->objId];
    temp = 0.0f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        v = (Vector *) p->unk78;
        if (v != NULL) {
            temp = func_800F8824(v, D_800E17D0[omCurrentObj->objId]);
        }
    }
    return -temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E4F88_ovl9.s")

extern s32 func_800B3234(f32, f32, f32);
extern void func_8019D8A0(u16);

void func_801E51EC_ovl9(void) {
    func_801A0D74_ovl7();
    func_8019F3B0_ovl7();
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        D_800E98E0[omCurrentObj->objId] = 1;
        func_8019D8A0(((u16 *) omCurrentObj)[1]);
    }
}

extern void func_800B68AC(s32);
extern s32 D_801C8640_ovl7;
extern s32 D_801CBAA0;
extern void func_800B33F4(void);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800AA018(s32);
extern void func_800AF27C(void);
extern void func_800AA154(s32);
void func_801E53E8_ovl9(GObj *, s32, f32);

void func_801E52A4_ovl9(struct GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B68AC;
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801C8640_ovl7;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801CBAA0;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B33F4();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10225);
    D_800DF310[omCurrentObj->objId] = func_801E53E8_ovl9;
    func_800AF27C();
    func_800AA154(0x10228);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800A9EA4(0x10229);
    curObjSleepForever();
}

void func_801E53E8_ovl9(GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        D_800E98E0[omCurrentObj->objId] = 1;
    }
}

void func_800FB914(s32);

void func_801E5430_ovl9(GObj *arg0) {
    func_800FB914(1);
    play_sound(0x98);
    D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId] * 0.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
}

void func_800FB914(s32);

void func_801E54A4_ovl9(GObj *arg0) {
    func_800FB914(1);
    play_sound(0x98);
}

/* D_8021D018_ovl9: literal, this TU owns its .rodata */
/* D_8021D01C_ovl9: literal, this TU owns its .rodata */

void func_801E54D0_ovl9(struct GObj *arg0) {
    D_800E64D0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * 0.5f;
    if ((D_800E8AE0[omCurrentObj->objId] & 1) != 0) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.325f;
        D_800E3C90[omCurrentObj->objId] = 5.0f;
    } else {
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
}

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

s32 func_801E55C0_ovl9(s32 arg0, void *arg1) {
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl9/ovl9_4/func_801E5660_ovl9.s")
