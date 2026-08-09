#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"
#include "ovl18_5.h"

extern f32 D_8022ACA4_ovl18[];
extern f32 D_8022BC40_ovl18;
extern f32 D_8022BC44_ovl18;
extern f32 D_8022BC48_ovl18;
extern f32 D_8022BC4C_ovl18;
extern f32 D_8022BC50_ovl18;
extern s32 D_8022ACAC_ovl18[];
extern s32 D_8022ACB0_ovl18[];
extern s32 D_8022A4E4_ovl18;

void func_800AA018();
void func_800AA864();
void func_800AF27C(void);
void curObjSleepForever(void);
void func_800AFBB4();
void func_800AEFFC(s32);
void func_800B3520(void);
void func_80110150(s32 *);
s32 func_80110B00(s32 *);
s32 func_80110FD4(s32 *);
void func_80111550(s32);
s32 func_80111C88(s32 *, u32);
void func_80111ECC(s32);
void func_801A0D50_ovl7(void *);
s32 func_801A0D74_ovl7(void);
void func_801A3280_ovl7(void);
void func_801ACC34_ovl7(s32, s32);
void func_8021F4A0_ovl18(void);
void func_8021F5CC_ovl18(void);
void eneTurnCommon(s32);
void ohSleep(s32);
void play_sound(s32);
s32 random_soft_s32_range(s32);
Vector *lbvector_Rotate(Vector *, s32, f32);

void func_80224738_ovl18(void);
void func_80224ABC_ovl18(s32 arg0, s32 arg1, f32 arg2);
void func_802255C0_ovl18(s32 arg0);
void func_80225B44_ovl18(void);
void func_802252A4_ovl18(void);
void func_80224CAC_ovl18(void);
void func_80225958_ovl18(void);
void func_80224B54_ovl18(s32 arg0);
void func_80225478_ovl18(s32 arg0);
void func_802245E0_ovl18(s32 arg0);
void func_8022514C_ovl18(s32 arg0);

void func_80224580_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B72AC;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[60]);
}

void func_802245E0_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[61]);
}

void func_80224628_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AA84_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80224738_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_802245E0_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[61]);
}

void func_80224738_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[63]);
    }
    func_8021F5CC_ovl18();
}

void func_80224790_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8022BC40_ovl18;
    func_800AA864(0x1003C, 2, &D_800E6690);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80224864_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_802248D0_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA018(0x1003B);
    D_800DF310[omCurrentObj->objId] = &func_80224ABC_ovl18;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8022BC44_ovl18;
    play_sound(0xA1);
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802249D8_ovl18(UNUSED s32 arg0) {
    s32 sp28[8];

    if (D_800E9C60[omCurrentObj->objId] == 1) {
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_8022A4E4_ovl18, omCurrentObj->objId));
        if ((func_80110B00(&sp28) == 0) && (func_80110FD4(&sp28) == 0)) {
            func_80110150(&sp28);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_80224ABC_ovl18(UNUSED s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        D_800E9C60[omCurrentObj->objId] = arg2;
    }
}

void func_80224AF4_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[65]);
}

void func_80224B54_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[66]);
}

void func_80224B9C_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AAA8_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_80224CAC_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_80224B54_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[66]);
}

void func_80224CAC_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[68]);
    }
    func_8021F5CC_ovl18();
}

void func_80224D04_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8022BC48_ovl18;
    func_800AA018(0x101DB, &D_800E6690);
    func_800AA864(0x101DA, 3);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80224DE4_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80224B54_ovl18);
    }
}

void func_80224E50_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA018(0x101DC);
    func_800AA018(0x101DD);
    func_800B3520();
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AF27C();
    func_800AA018(0x101CC);
    func_800AA018(0x101CD);
    func_800AF27C();
    func_800AA018(0x101CE);
    func_800AA018(0x101CF);
    D_800E98E0[omCurrentObj->objId] = 1;
    play_sound(0x160);
    ohSleep(5);
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AEFFC(7);
    func_800AA018(0x101D0);
    func_800AA018(0x101D1);
    ohSleep(4);
    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80224FCC_ovl18.s")

void func_802250EC_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[70]);
}

void func_8022514C_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[71]);
}

void func_80225194_ovl18(UNUSED s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AACC_ovl18;
    D_800DF150[omCurrentObj->objId] = &func_802252A4_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50_ovl7(&func_8022514C_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80_ovl18[71]);
}

void func_802252A4_ovl18(void) {
    if (func_801A0D74_ovl7() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AB80_ovl18[72]);
    }
    eneTurnCommon(6);
    func_8021F5CC_ovl18();
}

void func_80225304_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x10135);
    func_800AA018(0x10136);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.5f;
    while (1) {
        func_801ACC34_ovl7(0x45, 0);
        play_sound(0x169);
        ohSleep(random_soft_s32_range(0xA) + 0x1E);
    }
}

void func_80225410_ovl18(UNUSED s32 arg0) {

}

void func_80225418_ovl18(UNUSED s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B7790;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80_ovl18[89]);
}

void func_80225478_ovl18(UNUSED s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[90]);
}

void func_802254C0_ovl18(UNUSED s32 arg0) {
    func_8021F4A0_ovl18();
    func_801A3280_ovl7();
    D_800DF150[omCurrentObj->objId] = &func_802255C0_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E93A0[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80_ovl18[90]);
}

void func_802255C0_ovl18(UNUSED s32 arg0) {
    D_800E17D0[omCurrentObj->objId] = D_8022BC4C_ovl18;
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80_ovl18[92]);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8021F5CC_ovl18();
    }
}

void func_80225650_ovl18(UNUSED s32 arg0) {
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9720[omCurrentObj->objId] = 0x50;
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AFBB4(1, omCurrentObj);
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    func_80225958_ovl18();
    func_80225B44_ovl18();
    play_sound(0x168);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80225724_ovl18.s")

void func_802257A4_ovl18(UNUSED s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] =
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8022BC50_ovl18;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    func_800AFBB4(0, omCurrentObj, D_800E3C90);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_802258EC_ovl18(UNUSED s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80225478_ovl18);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80225958_ovl18.s")

#ifdef NON_MATCHING
/* Byte-exact as written, but the `switch` makes IDO emit its own jump table
 * into this TU's .rodata while the ROM's copy (jtbl_8022BC58_ovl18) still
 * comes from asm/data/ovl18/ovl18_2.rodata.s -- two tables, segment grows.
 * Parked until ovl18/code_236F20's rodata block can be migrated whole. */
void func_80225B44_ovl18(void) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    switch (D_800E9560[omCurrentObj->objId]) {
        case 1:
        case 0:
            func_800AA018(0x1023F, D_800E6A10);
            break;
        case 2:
            func_800AA018(0x10241, D_800E6A10);
            break;
        case 3:
        case 4:
            D_800E6A10[omCurrentObj->objId] = 1.0f;
            func_800AA018(0x10240, D_800E6A10);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236F20/func_80225B44_ovl18.s")
#endif
