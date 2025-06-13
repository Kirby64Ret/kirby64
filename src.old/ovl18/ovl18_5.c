#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "ovl18_1.h"
#include "types.h"
#include "ovl18_3.h"
#include "ovl18_5.h"
#include "ovl2/ovl2_6.h"

void func_80224738_ovl18(void);
void func_80224ABC_ovl18(s32 arg0, s32 arg1, f32 arg2);
void func_802255C0_ovl18(s32 arg0);
void func_80225B44_ovl18(void);
void func_802252A4_ovl18(void);
void func_80224CAC_ovl18(void);
void func_80225958_ovl18(void);

void func_80224580_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B72AC;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80[60]);
}

void func_802245E0_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[61]);
}

void func_80224628_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AA84;
    D_800DF150[omCurrentObj->objId] = &func_80224738_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50(&func_802245E0_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[61]);
}

void func_80224738_ovl18(void) {
    if (func_801A0D74_ovl18() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80[63]);
    }
    func_8021F5CC_ovl18();
}

void func_80224790_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA864(0x1003C, 2, &D_800E6690);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_80224864_ovl18(s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_802248D0_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = 0;
    func_800AA018(0x1003B);
    D_800DF310[omCurrentObj->objId] = &func_80224ABC_ovl18;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    play_sound(0xA1);
    func_800AF27C();
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

extern s32 D_8022A4E4;
void func_80111550(s32);
s32 func_80110FD4(s32 *);
s32 func_80111C88(s32 *, u32);
s32 func_80110B00(s32 *);

void func_802249D8_ovl18(UNUSED s32 arg0) {
    s32 sp28[8];

    if (D_800E9C60[omCurrentObj->objId] == 1) {
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_8022A4E4, omCurrentObj->objId));
        if ((func_80110B00(&sp28) == 0) && (func_80110FD4(&sp28) == 0)) {
            func_80110150(&sp28);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_802245E0_ovl18);
    }
}

void func_80224ABC_ovl18(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        D_800E9C60[omCurrentObj->objId] = arg2;
    }
}

void func_80224AF4_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80[65]);
}

void func_80224B54_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[66]);
}

void func_80224B9C_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AAA8;
    D_800DF150[omCurrentObj->objId] = &func_80224CAC_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50(&func_80224B54_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[66]);
}

void func_80224CAC_ovl18(void) {
    if (func_801A0D74_ovl18() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80[68]);
    }
    func_8021F5CC_ovl18();
}

void func_80224D04_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AA018(0x101DB, &D_800E6690);
    func_800AA864(0x101DA, 3);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_80224DE4_ovl18(s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80224B54_ovl18);
    }
}

void func_80224E50_ovl18(s32 arg0) {
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
    func_800AFA14();
}

// weird
#ifdef NON_MATCHING_
void func_80224FCC_ovl18(UNUSED s32 arg0) {
    s32 sp28[8];

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_80111550(omCurrentObj->objId);
        if (D_800E98E0[omCurrentObj->objId] == 1) {
            func_80111ECC(func_80111C88(&D_8022A628, omCurrentObj->objId));
        } else {
            func_80111ECC(func_80111C88(&D_8022A5BC, omCurrentObj->objId));
        }
        if ((func_80110B00(&sp28) == 0) && (func_80110FD4(&sp28) == 0)) {
            func_80110150(&sp28);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80224B54_ovl18);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_5/func_80224FCC_ovl18.s")
#endif

void func_802250EC_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B7138;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80[70]);
}

void func_8022514C_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80[71]);
}

void func_80225194_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *sp1C = D_800E1B50[omCurrentObj->objId];

    func_8021F4A0_ovl18();
    sp1C->unk98 = &D_8022AACC;
    D_800DF150[omCurrentObj->objId] = &func_802252A4_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 1.5f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801A0D50(&func_8022514C_ovl18);
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 1, &D_8022AB80[71]);
}

void func_802252A4_ovl18(void) {
    if (func_801A0D74_ovl18() == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 1, &D_8022AB80[72]);
    }
    func_8019BE9C_ovl18(6);
    func_8021F5CC_ovl18();
}

// regalloc moment
#ifdef NON_MATCHING_
s32 random_soft_s32_range(s32);
void func_80225304_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x10135);
    func_800AA018(0x10136);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.5f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 3.5f;
    while (1) {
        func_801ACC34_ovl18(0x45, 0);
        play_sound(0x169);
        ohSleep(random_soft_s32_range(0xA) + 0x1E);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_5/func_80225304_ovl18.s")
#endif

void func_80225410_ovl18(s32 arg0) {

}

void func_80225418_ovl18(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = &D_800B7790;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_8022AB80[89]);
}

void func_80225478_ovl18(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[90]);
}

void func_802254C0_ovl18(s32 arg0) {
    func_8021F4A0_ovl18();
    func_801A3280_ovl18();
    D_800DF150[omCurrentObj->objId] = &func_802255C0_ovl18;
    gEntitiesScaleZArray[omCurrentObj->objId] = 2.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800E93A0[omCurrentObj->objId] = 0;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022AB80[90]);
}

void func_802255C0_ovl18(s32 arg0) {
    D_800E17D0[omCurrentObj->objId] = 1.57079637051;
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, &D_8022AB80[92]);
    if (D_800E9C60[omCurrentObj->objId] != 0) {
        func_8021F5CC_ovl18();
    }
}

void func_80225650_ovl18(s32 arg0) {
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
    func_800AFA14();
}

#ifdef NON_MATCHING
void func_80225724_ovl18(s32 arg0) {
    if (D_800E9720[omCurrentObj->objId]-- == 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80225478_ovl18);
    } else D_800E9720[omCurrentObj->objId]--;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_5/func_80225724_ovl18.s")
#endif

void func_802257A4_ovl18(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = 
        D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_8022BC50;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId];
    func_800AFBB4(0, omCurrentObj, D_800E3C90);
    ohSleep(0xF);
    D_800E9E20[omCurrentObj->objId] = 1;
    func_800AFA14();
}

void func_802258EC_ovl18(s32 arg0) {
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80225478_ovl18);
    }
}

extern f32 D_8022ACA4[];
extern s32 D_8022ACAC[];
extern s32 D_8022ACB0[];
 

// const f32 D_8022BC54[] = {0.785398185253f};
extern f32 D_8022BC54;
// TODO: If this function gets matched, then we can incorporate ovl18_5's rodata completely
#ifdef NON_MATCHING
s32 random_soft_s32_range(s32);
void lbvector_Rotate(Vector *, u32, f32);
void func_80225958_ovl18(void) {
    struct UnkStruct800E1B50 *sp3C = D_800E1B50[omCurrentObj->objId];
    s32 temp_v0;
    Vector sp2C;
    s32 temp_a3;

    temp_v0 = random_soft_s32_range(4);
    if (temp_v0 == D_800E93A0[omCurrentObj->objId]) {
        temp_v0 = (temp_v0 + 1 >= 4) ? 0 : temp_v0 + 1;
    }
    D_800E93A0[omCurrentObj->objId] = temp_v0;
    temp_a3 = random_soft_s32_range(D_8022ACAC[D_800E93A0[omCurrentObj->objId] * 4])
        + D_8022ACB0[D_800E93A0[omCurrentObj->objId] * 4];
    D_800E9560[omCurrentObj->objId] = temp_a3;
    sp2C.z = 0.0f;
    sp2C.y = 0.0f;
    sp2C.x = -6.0f;
    lbvector_Rotate(&sp2C, 4, temp_a3 * D_8022BC54);
    D_800E3050[omCurrentObj->objId] = sp2C.x;
    D_800E3210[omCurrentObj->objId] = sp2C.y;
    D_800E8920[omCurrentObj->objId] = 0;
    gEntitiesNextPosXArray[omCurrentObj->objId] = D_8022ACA4[D_800E93A0[omCurrentObj->objId] * 4];
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_8022ACA4[D_800E93A0[omCurrentObj->objId] * 4];
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C->unk8;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_5/func_80225958_ovl18.s")
#endif

#ifdef NEEDS_RODATA
void func_80225B44_ovl18(void) {
    D_800E6A10[omCurrentObj->objId] = -1.0f;
    switch(D_800E9560[omCurrentObj->objId]) {
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
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_5/func_80225B44_ovl18.s") 
#endif
