#include "common.h"
#include "types.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "ovl3/ovl3_1.h"
#include "GObj.h"
#include "Player.h"
#include "unk_structs/D_8012E944.h"
#include "unk_structs/D_8022FAB0.h"
#include "buffers.h"
#include "ovl19_3.h"

// within this file
extern f32 *D_80192F64;
VTABLE D_8022F5B0_ovl19 = {
    func_80229794_ovl19,
    func_80229C20_ovl19,
    func_80229E20_ovl19,
    func_8022A018_ovl19,
    func_8022D584_ovl19,
    func_8022A410_ovl19,
    func_8022A8FC_ovl19,
    func_8022AC78_ovl19,
    func_8022D584_ovl19,
    func_8022AD34_ovl19,
    func_8022D584_ovl19,
    func_8022D584_ovl19,
    func_8022D584_ovl19,
    func_8022AEA0_ovl19,
    func_8022B4C4_ovl19,
    func_8022BB04_ovl19,
    func_8022D584_ovl19,
    func_8022D584_ovl19,
    func_8022D584_ovl19,
    func_8022D584_ovl19,
    func_8022C3BC_ovl19,
    func_8022CA10_ovl19,
    func_8022CE18_ovl19,
    func_8022BD44_ovl19,
    func_8022D19C_ovl19,
    func_8022D448_ovl19,
};

VTABLE D_8022F618_ovl19 = {
    func_80229A54_ovl19,
    func_80229C9C_ovl19,
    func_80229F08_ovl19,
    func_8022A228_ovl19,
    func_8022A810_ovl19,
    func_8022A9E8_ovl19,
    func_8022ACF0_ovl19,
    func_8022AE24_ovl19,
    func_8022B2A4_ovl19,
    func_8022B8BC_ovl19,
    func_8022BC9C_ovl19,
    func_8022C90C_ovl19,
    func_8022CD00_ovl19,
    func_8022D13C_ovl19,
    func_8022C1A4_ovl19,
    func_8022D3A0_ovl19,
    func_8022D57C_ovl19,
};

// ovl19 extern
extern void func_80229100_ovl19(GObj *);
extern void func_802294C4_ovl19(GObj *);

// ovl1 data
extern u32 D_800BE500;

// ovl1 bss
extern s32 D_800E85A0[];
extern s16 D_800D6FB2;

// ovl2 bss
extern u32 D_8012E7DC[];

// idk
extern u32 D_800DFA10[];
extern f32 *D_801923DC;

// ordering meme loading D_800E6D90
#ifdef NON_MATCHING
void func_80229100_ovl19(GObj *g) {
    func_800A9760(0x20069);
    gKirbyState.unk154 = 2;
    func_800F8E6C(g);
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    func_80152348_ovl3(20.0f);
    gKirbyState.ability = 0;
    D_800DFBD0[omCurrentObj->objId][23]->unk54 = 2;
    func_800AFBB4(0, omCurrentObj);
    func_800FF200(D_8012E944);
    D_800DF150[omCurrentObj->objId] = NULL;
    switch (D_800BE500) {
        case 1:
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] = 0.055f;
            break;
        case 4:
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] = 0.295f;
            break;
        case 3:
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId] = 0.27f;
            break;
    }
    func_800FBE1C();
    func_800FA414(3);
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    gKirbyState.abilityState = 0;
    gKirbyState.unk17 = 0;
    func_800AFBB4(1, omCurrentObj);
    D_800DF150[omCurrentObj->objId] = func_802294C4_ovl19;
    D_8012E944->unk10.x = 24.0f;
    D_8012E944->unk10.y = 20.0f;
    D_8012E944->unk10.z = -240.0f;
    gEntityVtableIndexArray[omCurrentObj->objId] = 0;
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 0x1A, &D_8022F5B0_ovl19);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229100_ovl19.s")
#endif

void func_8022947C_ovl19(s32 arg0) {
    call_virtual_function(gEntityVtableIndexArray[omCurrentObj->objId], 0x1A, &D_8022F5B0_ovl19);
}

#ifdef MIPS_TO_C

void func_802294C4_ovl19(s32 arg0) {
    f32 sp24;
    s32 temp_v0;
    void *temp_v1;

    func_8011E548();
    func_8011DAF8();
    call_virtual_function(D_800DDFD0[omCurrentObj->objId], 0x11, &D_8022F618_ovl19);
    if (gKirbyState.unk17 == 0) {
        switch (D_800BE500) {                       /* irregular */
            case 1:
                if (func_8012209C() != 0) {
                    gKirbyState.unk17 = 1;
                    set_kirby_action_1(0x18, 0x1D);
                }
                break;
            case 3:
                if (D_800E5F90[omCurrentObj->objId] == 9) {
                    gKirbyState.unk17 = 1;
                    gKirbyState.abilityState = 0x19;
                }
                break;
            case 4:
                if (D_800E5F90[omCurrentObj->objId] == 8) {
                    gKirbyState.unk17 = 1;
                    gKirbyState.abilityState = 0x19;
                }
                break;
        }
    }
    if ((gKirbyState.unk15C != 0) && (D_800D6B54 == 0)) {
        func_8011D4A4(gKirbyState.unk158);
    }
    func_801212A4();
    if (D_800E3210[omCurrentObj->objId] <= 0.0f) {
        gKirbyState.isTurning &= ~4;
    }
    if ((gKirbyState.ceilingCollisionNext != 0) && (gKirbyState.vel[1] > 8.0f)) {
        temp_v0 = func_801693C4(4);
        if (temp_v0 != -1) {
            D_800EC2E0[temp_v0].as_u32 = 0;
            temp_v1 = D_800E0490[omCurrentObj->objId]->unk4;
            D_800EC660[temp_v0] = temp_v1->unk0 + temp_v1->unk4;
        }
    }
    if (gKirbyState.action == 0xB) {
        func_800B2340(&sp24, D_800DFBD0[omCurrentObj->objId]->unk8, 0xFFFF);
        D_8012E944->unk4 = sp24;
        D_8012E944->unk8 = sp28;
        D_8012E944->unkC = sp2C;
        D_8012E944->unk1C = gEntitiesAngleYArray[omCurrentObj->objId];
        return;
    }
    func_800FF200(D_8012E944);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_802294C4_ovl19.s")
#endif

// weird loop
#ifdef NON_MATCHING
void func_80229794_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk2C = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    gKirbyState.unk15C = &D_801923DC;
    if ((gKirbyState.unk150 != 0) && !(D_800E8AE0[omCurrentObj->objId] & 6)) {

    } else {
        if (gKirbyState.previousAction != 0) {
            func_800AA78C(0x2037E, 0x20069, 12.0f);
        }
        func_801230E8(0x2037E, 0x2037F, 1);
        curObjSleepForever();
    }
    gKirbyState.unk3C = 0;
    D_800E9AA0[omCurrentObj->objId] = gKirbyState.turnDirection;
    gKirbyState.isTurning |= 2;
    while (1) {
        if (gKirbyState.unk150 == 2) {
            gKirbyState.unk30 = 1;
        } else {
            gKirbyState.unk30 = 0;
        }
        if (gKirbyState.unk3C != 0) {
            if (gKirbyState.unk30 == 0) {
                func_800AA78C(0x20370, 0x20069, 3.0f);
            } else {
                func_800AA78C(0x2036E, 0x20069, 3.0f);
            }
        } else {
            gKirbyState.unk3C += 1;
        }
        if (gKirbyState.unk30 == 0) {
            func_801230E8(0x20370, 0x20371, 0);
        } else {
            func_801230E8(0x2036E, 0x2036F, 0);
        }
        D_800E9720[omCurrentObj->objId] = 0xF;
        while (--D_800E9720[omCurrentObj->objId] > 0) {
            ohSleep(1);
        }
        play_sound(0x261);
        if (!(gKirbyState.isTurning & 1)) {
            ohSleep(1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229794_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80229A54_ovl19(GObj *g) {
    u8 cmd[] = {2, 3, 9, 0xB, 15};

    D_800E98E0[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3(&gKirbyState);
    if (gKirbyState.abilityState != 0) {
        set_kirby_action_1(gKirbyState.abilityState, 0x1C);
    } else if (ovl3_process_command_string(&cmd) != 0) {
        gKirbyState.isTurning &= ~2;
    } else if (gKirbyState.unk150 != 0) {
        if (gKirbyState.turnDirection == 0) {
            if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
            }
        } else {
            if (D_800E9AA0[omCurrentObj->objId] == NULL) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
            }
        }
        D_800E9AA0[omCurrentObj->objId] = D_8012E7DC[1];
    } else if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
    }
}
#else
u8 D_8022F65C_ovl19[] = {2, 3, 9, 0xB, 15};
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229A54_ovl19.s")
#endif

void func_80229C20_ovl19(GObj *g) {
    D_800E9720[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_801230E8(0x203A2, 0x203A3, 0);
    curObjSleepForever();
}

#ifdef MIPS_TO_C

void func_80229C9C_ovl19(GObj *g) {
    ? sp20;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;

    sp20.unk0 = D_8022F664_ovl19.unk0;
    sp20.unk4 = D_8022F664_ovl19.unk4;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp20) == 0) {
        func_801219C8();
        if (!(gKirbyState.isTurning & 1)) {
            if (func_801210FC(&gKirbyState) == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    temp_v0 = &D_800E9720[omCurrentObj->objId];
                    temp_v1 = *temp_v0;
                    if (temp_v1 < 0xA) {
                        *temp_v0 = temp_v1 + 1;
                    }
                }
            } else if (gKirbyController.buttonHeld & 0x300) {
                temp_v0_2 = &D_800E9720[omCurrentObj->objId];
                temp_v1_2 = *temp_v0_2;
                if ((temp_v1_2 > 0) && (temp_v1_2 < 7)) {
                    gKirbyState.unk38 = g->unk40 * 0.5f;
                    if (gKirbyState.unk38 >= 25.0f) {
                        gKirbyState.unk38 -= 25.0f;
                    }
                    set_kirby_action_1(2, 4);
                } else {
                    *temp_v0_2 = 0;
                }
            }
        } else {
            D_800E9720[omCurrentObj->objId] = 0;
        }
    }
    func_8011ED68();
}
#else
u8 D_8022F664_ovl19[] = {
    2, 4, 3, 9, 8, 7, 0xC, 15
};
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229C9C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_80229E20_ovl19(s32 arg0) {
    s32 temp_v1 = D_800E8AE0[omCurrentObj->objId];

    *(&D_8012E7C5 + 2) = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    if (temp_v1 == 0) {
        play_sound(0x45);
        func_800A8100(5, 1, 0, 0);
    } else if ((temp_v1 & 7) == 1) {
        func_800A8100(5, 1, 6, 0);
    }
    func_800AECC0(1.5f);
    func_800AED20(1.5f);
    func_8012307C(0x2039A, 0x2039B, *(&D_8012E7E8 + 0x10), 0);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229E20_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_80229F08_ovl19(s32 arg0) {
    ? sp18;

    sp18.unk0 = D_8022F66C_ovl19.unk0;
    sp18.unk4 = (first 3 bytes) D_8022F66C_ovl19.unk4;
    func_80153984_ovl3();
    func_800AECC0(1.5f);
    func_800AED20(1.5f);
    if (ovl3_process_command_string(&sp18) == 0) {
        if ((D_800E64D0[omCurrentObj->objId] == 0.0f) && !(gKirbyController.buttonHeld & 0x300)) {
            func_8011CF58();
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0, 1);
        } else if (func_801215DC() == 2) {
            gKirbyState.isTurning |= 1;
        }
        func_8011ED68();
        return;
    }
    func_8011CF58();
}
#else
u8 D_8022F66C_ovl19[] = {
    4, 2, 3, 9, 8, 7, 15
};
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_80229F08_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022A018_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 0;
    gKirbyState.jumpHeight = 0;
    D_800DDFD0[omCurrentObj->objId] = 3;
    gKirbyState.unk15C = &D_801923DC;
    D_800E8920[omCurrentObj->objId] = 0;
    gKirbyState.unkCC = 8.0f;
    play_sound(0xF8);
    D_800E3210[omCurrentObj->objId] = 17.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 17.0f;
    D_800E83E0[omCurrentObj->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x20380, 0x20069, 3.0f);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId], 0x20069);
        D_800DFBD0[omCurrentObj->objId][23]->unk54 = 2;
    }
    func_801230E8(0x20380, 0x20381, 0);
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    gKirbyState.isFullJump += 1;
    func_801230E8(0x20382, 0x20383, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A018_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022A228_ovl19(void *arg0) {
    ? sp20;
    u32 temp_v0;
    u32 temp_v0_2;

    sp20.unk0 = D_8022F674_ovl19.unk0;
    sp20.unk4 = D_8022F674_ovl19.unk4;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp20) == 0) {
        if (gKirbyState.ceilingCollisionNext != 0) {
            D_800E3210[omCurrentObj->objId] = 0.0f;
            if ((gKirbyState.unk68 == 0) && (func_8015449C_ovl3(&D_80196524, 0) != 0)) {
                D_800E3210[omCurrentObj->objId] = 0.0f;
            }
            func_800BB468(0xB, 0xA);
        } else if (gKirbyState.unk30 != 0) {
            set_kirby_action_1(6, 6);
        } else {
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4(&gKirbyState, 6);
            }
            temp_v0 = omCurrentObj->objId;
            if ((D_800E83E0[temp_v0] & 0xFFFF) == 2) {
                D_800E3750[temp_v0] = 0.0f;
                temp_v0_2 = omCurrentObj->objId;
                D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA, D_800E3750);
                set_kirby_action_1(6, 6);
            } else if (gKirbyState.unkCC < D_800E3210[temp_v0]) {
                func_8016854C_ovl3(&D_801924AC, arg0->unk3C->unk10, 0x3F800000);
            }
        }
        func_8011ED68();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A228_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022A410_ovl19(s32 arg0) {
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 4;
    gKirbyState.unk15C = &D_801923DC;
    D_800EA6E0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800EAC20[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E9720[omCurrentObj->objId] = 0;
    while (D_800E9720[omCurrentObj->objId] < 2) {
        ohSleep(1);
        D_800E9720[omCurrentObj->objId]++;
    }
    D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800EC2E0[omCurrentObj->objId].as_u32 != 0x80000000) {
        play_sound(D_800EC2E0[omCurrentObj->objId].as_u32);
    }
    gKirbyState.unkCC = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 17.0f;
    func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    D_800DFBD0[omCurrentObj->objId]->unk5C->unk54 = 2;
    func_801230E8(0x20380, 0x20381, 0);
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_801230E8(0x20382, 0x20383, 1);
    gKirbyState.unk30++;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A410_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022A810_ovl19(void *arg0) {
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;

    if (*(&D_8012E860 + 0x2C) < D_800E3210[omCurrentObj->objId]) {
        func_8016854C_ovl3(&D_801924AC, arg0->unk3C->unk10, 0x3F800000, arg0);
    }
    if (gKirbyController.buttonHeld & 0x8000) {
        temp_v0 = omCurrentObj->objId;
        D_800E64D0[temp_v0] = D_800EA8A0[temp_v0];
        temp_v0_2 = omCurrentObj->objId;
        D_800E6690[temp_v0_2] = D_800EAA60[temp_v0_2];
        temp_v0_3 = omCurrentObj->objId;
        D_800E6850[temp_v0_3] = D_800EAC20[temp_v0_3];
        set_kirby_action_1(3, 5);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A810_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022A8FC_ovl19(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    *(&D_8012E90C + 0x10) = &D_801923DC;
    D_800E9560[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    func_801230E8(0x2037C, 0x2037D, 0);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A8FC_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022A9E8_ovl19(s32 arg0) {
    ? sp28;
    s32 *temp_a0;
    s32 temp_a1;
    s32 var_v0_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 var_v0;

    sp28.unk0 = D_8022F67C_ovl19.unk0;
    sp28.unk4 = D_8022F67C_ovl19.unk4;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp28) == 0) {
        if (gKirbyController.buttonPressed & 0x8000) {
            D_800E9560[omCurrentObj->objId] = 2;
            var_v0 = omCurrentObj->objId;
            goto block_5;
        }
        temp_v0 = omCurrentObj->objId;
        var_v0_2 = temp_v0 * 4;
        temp_a0 = &D_800E9560[temp_v0];
        temp_a1 = *temp_a0;
        if (temp_a1 != 0) {
            *temp_a0 = temp_a1 - 1;
            var_v0 = omCurrentObj->objId;
block_5:
            var_v0_2 = var_v0 * 4;
        }
        if (*(D_800E8920 + var_v0_2) != 0) {
            *(D_800E3750 + var_v0_2) = 0.0f;
            temp_v0_2 = omCurrentObj->objId;
            D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x4C);
            temp_v0_3 = omCurrentObj->objId;
            if (D_800E9560[temp_v0_3] == 0) {
                if (D_800E64D0[temp_v0_3] == 0.0f) {
                    gKirbyState.unk7 = 0;
                    set_kirby_action_1(7, 7);
                } else {
                    gKirbyState.unk44 = 0;
                    if (gKirbyState.unk7 == 0) {
                        func_80122B40(2, 7);
                        set_kirby_action_1(1, 3);
                    } else {
                        gKirbyState.unk38 = 0.0f;
                        set_kirby_action_1(2, 4);
                    }
                    func_80122FB0(1);
                }
            } else {
                func_80122B40();
                set_kirby_action_1(3, 5);
            }
        } else if (*(D_800E83E0 + var_v0_2) != 0) {
            D_800EC2E0->as_u32 = 0x80000000;
            gKirbyState.unk7 = 0;
            D_800E3210[omCurrentObj->objId] = 8.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 0.0f;
            set_kirby_action_1(5, 5);
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    func_8011ED68();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A9E8_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022AC78_ovl19(s32 arg0) {
    *(&D_8012E7E8 + 8) = 0;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_80122B40();
    func_801230E8(0x2038E, 0x2038F, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022AC78_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022ACF0_ovl19(s32 arg0) {
    ? sp18;

    sp18.unk0 = D_8022F684_ovl19.unk0;
    sp18.unk4 = (first 3 bytes) D_8022F684_ovl19.unk4;
    func_80153984_ovl3();
    ovl3_process_command_string(&sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022ACF0_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022AD34_ovl19(s32 arg0) {
    *(&D_8012E7E8 + 8) = 0;
    D_800DDFD0[omCurrentObj->objId] = 7;
    func_80120A28();
    *(&D_8012E90C + 0x10) = &D_80192444;
    func_800AA78C(0x2039E, 0x20069, 3.0f);
    func_801230E8(0x2039E, 0x2039F, 0);
    if (gKirbyController.buttonHeld & 0x400) {
        do {
            ohSleep(1);
        } while (gKirbyController.buttonHeld & 0x400);
    }
    func_801230E8(0x203A0, 0x203A1, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022AD34_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022AE24_ovl19(s32 arg0) {
    s32 sp1C;

    sp1C = D_8022F68C_ovl19;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp1C) == 0) {
        if (gKirbyState.unk30 != 0) {
            gKirbyState.unk15C = &D_801923DC;
            set_kirby_action_1(0, 1);
        }
    } else {
        gKirbyState.unk15C = &D_801923DC;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022AE24_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022AEA0_ovl19(s32 arg0) {
    s32 temp_t0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;

    if (*(&D_8012E7E8 + 8) == 0) {
        D_800DDFD0[omCurrentObj->objId] = 8;
        D_8012E80C = 0;
        D_800E9AA0[omCurrentObj->objId] = 1;
        temp_v1 = omCurrentObj->objId;
        D_800E98E0[temp_v1] = D_800E9AA0[temp_v1];
        D_800E6690[omCurrentObj->objId] = 0.0f;
        temp_v1_2 = omCurrentObj->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        temp_v1_3 = omCurrentObj->objId;
        D_800E3210[temp_v1_3] = D_800E3750[temp_v1_3];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E9720[omCurrentObj->objId] = 0;
        play_sound(0x103, D_800E9AA0, D_800E6690, D_800E3750);
        gKirbyState.unk30 += 1;
    }
    temp_v1_4 = omCurrentObj->objId;
    temp_t0 = D_800E98E0[temp_v1_4];
    switch (temp_t0) {
        case 1:
            D_800E3210[temp_v1_4] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 0.0f;
            func_800AA78C(0x2038A, 0x20069, 6.0f);
            func_801230E8(0x2038A, 0x2038B, 0);
            break;
        case 2:
            D_800E8920[temp_v1_4] = 0;
            if (func_800AA934(0x20386) != 0) {
                func_800AA78C(0x2038A, 0x20069, 3.0f);
            }
            func_800AA78C(0x20384, 0x20069, 3.0f);
            func_801230E8(0x20384, 0x20385, 0);
            break;
        case 3:
            if (func_800AA934(0x20384) != 0) {
                func_800AA78C(0x2038A, 0x20069, 3.0f);
            }
            func_800AA78C(0x20386, 0x20069, 3.0f);
            func_801230E8(0x20386, 0x20387, 0);
            break;
        case 4:
            func_800AA78C(0x20388, 0x20069, 3.0f);
            func_801230E8(0x20388, 0x20389, 0);
            func_8011DC04(0x100);
            D_8012E80C = func_800A8100(5, 1, 0x2B, D_800DFBD0[omCurrentObj->objId]->unk8);
            break;
        case 5:
            D_800E64D0[temp_v1_4] = D_800E6A10[temp_v1_4] * 4.0f;
            D_800E6850[omCurrentObj->objId] = 4.0f;
            D_800E3210[omCurrentObj->objId] = 13.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 17.0f;
            play_sound(0x4B);
            func_801230E8(0x2038C, 0x2038D, 1);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022AEA0_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022B2A4_ovl19(s32 arg0) {
    ? sp1C;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;

    sp1C = (first 3 bytes) D_8022F690_ovl19;
    if (D_800E98E0[omCurrentObj->objId] != 5) {
        func_80153B98_ovl3();
    } else {
        func_80153984_ovl3();
    }
    if (ovl3_process_command_string(&sp1C) != 0) {
        func_8011DC5C();
        func_8011E0E8();
        if (func_80121194() != 0) {
            temp_v0 = omCurrentObj->objId;
            D_800E64D0[temp_v0] = D_800E6A10[temp_v0] * -6.0f;
            temp_v0_2 = omCurrentObj->objId;
            D_800E6690[temp_v0_2] = D_800E6A10[temp_v0_2] * 0.125f;
            D_800E6850[omCurrentObj->objId] = 6.0f;
            gKirbyState.isTurning &= ~4;
            return;
        }
        D_800E6690[omCurrentObj->objId] = 0.0f;
        temp_v0_3 = omCurrentObj->objId;
        D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        gKirbyState.isTurning |= 4;
        return;
    }
    if (func_8011F690() != 0) {
        func_8011DC5C();
        func_8011E0E8();
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_8022947C_ovl19);
        return;
    }
    if (gKirbyState.action != 0xA) {
        func_8011E0E8();
        func_8011DC5C();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022B2A4_ovl19.s")
#endif

#ifdef NON_MATCHING
void func_8022B4C4_ovl19(GObj *gobj) {
    if (gKirbyState.unk30 == 0) {
        D_800DDFD0[omCurrentObj->objId] = 9;
        gKirbyState.unk3C = 0;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId] = NULL;
        D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId];
        ((struct LayoutNode *)gobj->data)->parent->angle.y = 0.0f;
        D_800E64D0[omCurrentObj->objId] =
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3210[omCurrentObj->objId] =
        D_800E3750[omCurrentObj->objId] = 0;
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        play_sound(0x103);
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 += 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 0;
            func_800AA78C(0x20396, 0x20069, 6.0f);
            if (D_800E98E0[omCurrentObj->objId] == 0) {
                D_800E98E0[omCurrentObj->objId] =
                D_800E9AA0[omCurrentObj->objId] = 1;
            }
            func_801230E8(0x20396, 0x20397, 0);
            break;
        case 2:
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            if (func_800AA934(0x20392) != 0) {
                func_800AA78C(0x20396, 0x20069, 3.0f);
            }
            func_800AA78C(0x20390, 0x20069, 3.0f);
            func_801230E8(0x20390, 0x20391, 0);
            break;
        case 3:
            gKirbyState.unk7 = 0;
            if (func_800AA934(0x20390) != 0) {
                func_800AA78C(0x20396, 0x20069, 3.0f);
            }
            func_800AA78C(0x20392, 0x20069, 3.0f);
            func_801230E8(0x20392, 0x20393, 0);
            break;
        case 4:
            gKirbyState.unk7 = 0;
            func_800AA78C(0x20394, 0x20069, 3.0f);
            func_801230E8(0x20394, 0x20395, 0);
            func_8011DC04(0x100);
            gKirbyState.unk4C = func_800A8100(5, 1, 0x29, D_800DFBD0[omCurrentObj->objId][1]);
            break;
        case 5:
            func_800AA78C(0x2037E, 0x20069, 3.0f);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022B4C4_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022B8BC_ovl19(s32 arg0) {
    ? sp1C;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;

    sp1C = (first 3 bytes) D_8022F694_ovl19;
    func_80153B98_ovl3();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if ((gKirbyState.unk3C == 0) && (ovl3_process_command_string(&sp1C, &gKirbyState) != 0)) {
            func_8011CF58();
            func_8011DC5C();
            func_8011E0E8();
            if (gKirbyState.action == 5) {
                if (func_80121194() != 0) {
                    gKirbyState.isTurning &= ~4;
                    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -6.0f;
                    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
                    D_800E6850[omCurrentObj->objId] = 6.0f;
                } else {
                    D_800E6690[omCurrentObj->objId] = 0.0f;
                    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    gKirbyState.isTurning |= 4;
                }
            } else {
                gKirbyState.isTurning &= ~4;
            }
        }
        else if (func_8011FEF8() != 0) {
            func_8011DC5C();
            func_8011E0E8();
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_8022947C_ovl19);
        } else if (gKirbyState.action != 0xB) {
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022B8BC_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022BB04_ovl19(s32 arg0) {
    f32 *temp_a0;
    f32 temp_f0;
    f32 var_f2;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;

    *(&D_8012E7E8 + 8) = 0;
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1 = omCurrentObj->objId;
    D_800E3210[temp_v1] = D_800E3750[temp_v1];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    temp_v1_2 = omCurrentObj->objId;
    var_v1 = temp_v1_2 * 4;
    temp_a0 = &D_800E64D0[temp_v1_2];
    temp_f0 = *temp_a0;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 4.0f) {
        *temp_a0 = D_800E6A10[temp_v1_2] * 4.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
        var_v1 = omCurrentObj->objId * 4;
    }
    *(D_800E3210 + var_v1) = 11.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 17.0f;
    play_sound(0x4B, D_800E3750, D_800E3210, D_800E3C90);
    func_801230E8(0x2038C, 0x2038D, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022BB04_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022BC9C_ovl19(s32 arg0) {
    s32 sp1C;
    u32 temp_v0;

    sp1C = D_8022F698_ovl19;
    func_80153984_ovl3();
    if ((ovl3_process_command_string(&sp1C) == 0) && !(*(&D_8012E7E8 + 0xC) & 1) && (func_80121194() != 0)) {
        temp_v0 = omCurrentObj->objId;
        D_800E6690[temp_v0] = D_800E6A10[temp_v0] * 0.5f;
    }
    if (*(&D_8012E7E8 + 8) != 0) {
        set_kirby_action_1(6, 6);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022BC9C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022BD44_ovl19(void *arg0) {
    s32 *temp_v0;
    s32 *temp_v0_2;

    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk44 = 0;
    D_800E8220[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800DFBD0[omCurrentObj->objId]->unk5C->unk54 = 1;
    func_80120A28();
    D_800E9720[omCurrentObj->objId] = 0;
    func_801230E8(0x20362, 0x20363, 0);
    if (func_800AF230() == 0) {
loop_2:
        if (gKirbyController.buttonHeld & 0x4000) {
            temp_v0 = &D_800E9720[omCurrentObj->objId];
            *temp_v0 += 1;
            ohSleep(1);
            if (func_800AF230() != 0) {
                goto block_4;
            }
            goto loop_2;
        }
    } else {
block_4:
        func_801230E8(0x2036C, 0x2036D, 0);
        if (func_800AF230() == 0) {
loop_5:
            if (gKirbyController.buttonHeld & 0x4000) {
                temp_v0_2 = &D_800E9720[omCurrentObj->objId];
                *temp_v0_2 += 1;
                ohSleep(1);
                if (func_800AF230() == 0) {
                    goto loop_5;
                }
            }
        }
    }
    if (D_800E9720[omCurrentObj->objId] < 0xC) {
        gKirbyState.unk44 = 1;
        func_801230E8(0x20364, 0x20365, 0);
        D_800DF310[omCurrentObj->objId] = func_8022C140_ovl19;
        if (func_800AF230() == 0) {
loop_10:
            if (D_800E8220[omCurrentObj->objId] != 0) {
                func_800AF314();
                func_800AF3A0();
                ohSleep(0xF);
            } else {
                if ((gKirbyState.unk3C != -1) && (gKirbyState.unk3C < 5)) {
                    gKirbyState.unk3C = arg0->unk40 * 0.5f;
                } else {
                    gKirbyState.unk3C = -1;
                }
                ohSleep(1);
                if (func_800AF230() != 0) {

                } else {
                    goto loop_10;
                }
            }
        }
    } else {
        func_801230E8(0x20366, 0x20367, 1);
        if (gKirbyController.buttonHeld & 0x4000) {
            do {
                func_801230E8(0x20368, 0x20369, 1);
            } while (gKirbyController.buttonHeld & 0x4000);
        }
        gKirbyState.unk44 = 2;
        func_801230E8(0x2036A, 0x2036B, 0);
        D_800DF310[omCurrentObj->objId] = func_8022C140_ovl19;
        if (func_800AF230() == 0) {
            do {
                if ((gKirbyState.unk3C != -1) && (gKirbyState.unk3C < 5)) {
                    gKirbyState.unk3C = arg0->unk40 * 0.5f;
                } else {
                    gKirbyState.unk3C = -1;
                }
                ohSleep(1);
            } while (func_800AF230() == 0);
        }
    }
    D_800E9720[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId]->unk5C->unk54 = 2;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022BD44_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022C140_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f) && (D_800E8920[omCurrentObj->objId] != 0)) {
        play_sound(arg2, 0x4A);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022C140_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022C1A4_ovl19(s32 arg0) {
    s32 sp3C;
    f32 sp30;
    u32 temp_a3;

    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 0x41800000, -0.980665f, 0x41800000) != 0) {
        play_sound(0x4C);
    } else if (gKirbyState.ceilingCollisionNext != 0) {
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        set_kirby_action_1(0, 1);
        return;
    }
    func_8016854C_ovl3(&D_80192514, D_800DFBD0[omCurrentObj->objId]->unk64, 0x3F800000);
    if (gKirbyState.unk44 != 0) {
        temp_a3 = omCurrentObj->objId;
        if ((D_800E8220[temp_a3] == 0) && (gKirbyState.unk3C != -1)) {
            if (gKirbyState.unk44 == 1) {
                sp3C = *(&D_801965F4 + (gKirbyState.unk3C * 4));
            } else {
                sp3C = *(&D_801966D0 + (gKirbyState.unk3C * 4));
            }
            if (sp3C != 0) {
                func_800B2340(&sp30, D_800DFBD0[temp_a3]->unk64, 0xFFFF, temp_a3 * 4);
                D_800EA6E0[omCurrentObj->objId] = sp30;
                D_800EA8A0[omCurrentObj->objId] = sp34;
                D_800EAA60[omCurrentObj->objId] = sp38;
                func_80155DF0_ovl3(&D_8012E944 + 4, sp3C, &sp30, &func_80155F0C_ovl3, omCurrentObj->objId);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022C1A4_ovl19.s")
#endif

#ifdef __MIPS_TO_C
void func_8022C3BC_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    func_800AECC0(4.0f);
    func_800AED20(4.0f);
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    gKirbyState.unk15C = &D_801923DC;
    gKirbyState.unk7 = 0;
    func_8011E0E8();
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    gKirbyState.unk68 = 1;
    play_sound(0x46);
    if (gKirbyState.unk140 != 0) {
        gKirbyState.damageType = gKirbyState.unk140;
    } else {
        gKirbyState.damageType = (D_800E83E0[omCurrentObj->objId] & 0xFF0000) >> 0x10;
    }
    func_800BB468(0, 0);
    if ((D_800E83E0[omCurrentObj->objId] != 0) && (gKirbyState.damageType < 2)) {
        D_800E3210[omCurrentObj->objId] =
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
            func_800AA78C(0x2037A, 0x20069, 3.0f);
        }
        func_80122A10(D_800DFBD0[omCurrentObj->objId][2]);
        D_800E64D0[omCurrentObj->objId] = (D_800E85A0[omCurrentObj->objId] == 1.0f) ? 8.0f : -8.0f;
        D_800E6690[omCurrentObj->objId] = (D_800E85A0[omCurrentObj->objId] == 1.0f) ? -0.4f : 0.4f;
        D_800E6850[omCurrentObj->objId] = ABS(D_800E64D0[omCurrentObj->objId]);
        func_801230E8(0x2037A, 0x2037B, 1);
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    } else {
        D_800E3210[omCurrentObj->objId] =
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        func_80122A10(D_800DFBD0[omCurrentObj->objId][2]);
        D_800E3210[omCurrentObj->objId] = (gKirbyState.unk140 & 0x10000) ? 0 : 18.0f;
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = ABS(D_800E3210[omCurrentObj->objId]);
        if (gKirbyState.unk140 & 0xC0000) {
            D_800E64D0[omCurrentObj->objId] = (gKirbyState.unk140 & 0x40000) ? -5.0f : 5.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = ABS(D_800E64D0[omCurrentObj->objId]);
        } else {
            func_80120A28(0);
        }
        func_801230E8(0x2037A, 0x2037B, 1);
    }
    D_800E64D0[omCurrentObj->objId] =
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever(D_800E6690);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022C3BC_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022C90C_ovl19(s32 arg0) {
    u32 *temp_v0;

    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 0x41800000, -0.980665f, 0x41800000) != 0) {
        play_sound(0x4C);
    }
    if (*(&D_8012E7E8 + 8) != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
        *(&D_8012E7DC + 8) = 0;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (D_8012E894 >= 2) {
            temp_v0 = &D_800E7CE0[omCurrentObj->objId];
            *temp_v0 += 0x12;
        }
    }
    func_8011ED68();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022C90C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022CA10_ovl19(s32 arg0) {
    f32 var_f0;
    f32 var_f2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    gKirbyState.unk30 = 0;
    func_800AECC0(4.0f);
    func_800AED20(4.0f);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    gKirbyState.unk15C = &D_801923DC;
    gKirbyState.unk7 = 0;
    func_8011E0E8();
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1 = omCurrentObj->objId;
    D_800E3210[temp_v1] = D_800E3750[temp_v1];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    gKirbyState.unk68 = 1;
    if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
        func_800AA78C(0x2037A, 0x20069, 3.0f);
    }
    play_sound(0x46);
    func_80122A10(D_800DFBD0[omCurrentObj->objId]->unk8);
    temp_v1_2 = omCurrentObj->objId;
    if (D_800E85A0[temp_v1_2] == 1.0f) {
        var_f0 = 8.0f;
        var_f2 = -0.4f;
    } else {
        var_f0 = -8.0f;
        var_f2 = 0.4f;
    }
    D_800E64D0[temp_v1_2] = var_f0;
    D_800E6690[omCurrentObj->objId] = var_f2;
    if (var_f0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -var_f0;
    } else {
        D_800E6850[omCurrentObj->objId] = var_f0;
    }
    func_801230E8(0x2037A, 0x2037B, 1);
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v1_3 = omCurrentObj->objId;
    D_800E64D0[temp_v1_3] = D_800E6690[temp_v1_3];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022CA10_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022CD00_ovl19(s32 arg0) {
    u32 temp_v1;

    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 0x41800000, -0.980665f, 0x41800000) != 0) {
        play_sound(0x4C);
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        temp_v1 = omCurrentObj->objId;
        D_800E64D0[temp_v1] = D_800E6690[temp_v1];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
        *(&D_8012E7DC + 8) = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022CD00_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022CE18_ovl19(s32 arg0) {
    u32 temp_v0;
    u32 temp_v0_2;

    *(&D_8012E7E8 + 8) = 1;
    D_800DF150[omCurrentObj->objId] = func_8022D13C_ovl19;
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], &func_800B1870, omCurrentObj);
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    *(&D_8012E90C + 0x10) = 0;
    func_800AFA54(*(&D_800DFA10 + (omCurrentObj->objId * 4)));
    func_800B20E0(omCurrentObj, *(&D_800DFD90 + (omCurrentObj->objId * 4)), omCurrentObj);
    D_800DFBD0[omCurrentObj->objId]->unk5C->unk54 = 2;
    gKirbyState.unk7 = 0;
    D_800E8060[omCurrentObj->objId] = -1;
    if ((gKirbyState.floorCollisionNext != 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        gKirbyState.unk30 = 0;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v0 = omCurrentObj->objId;
    D_800E64D0[temp_v0] = D_800E6690[temp_v0];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v0_2 = omCurrentObj->objId;
    D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    auFunc80020C88(D_800E3750, &omCurrentObj, omCurrentObj);
    func_800A7EB4();
    if ((gKirbyHp == 0.0f) && (D_800E7B20[omCurrentObj->objId] != 0.0f)) {
        play_sound(0xDC);
    } else {
        play_sound(0x46);
    }
    func_8011DA34();
    play_music(0, 5);
    func_80176398_ovl3();
    func_800BB498();
    func_800BB468(2, 0);
    *(&D_800D6B54 + 4) = 0xA0;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_801230E8(0x20378, 0x20379, 1);
    } else {
        func_801230E8(0x20376, 0x20377, 1);
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022CE18_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D13C_ovl19(s32 arg0) {
    if (*(&D_8012E7E8 + 8) != 0) {
        func_80153984_ovl3();
        func_80121828(-0.980665f, 0x41800000, -0.980665f, 0x41800000);
    }
    func_8011E548();
    func_8011DAF8();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D13C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D19C_ovl19(s32 arg0) {
    GObj *temp_v1;
    f32 *temp_a3;
    s32 var_v0;
    s32 var_v0_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;

    temp_v1 = omCurrentObj;
    D_800DDFD0[temp_v1->objId] = 0xF;
    if ((D_800E6A10[temp_v1->objId] == -1.0f) && !(gKirbyState.isTurning & 1)) {
        gKirbyState.isTurning |= 1;
    }
    gKirbyState.unk2C = 0xF;
    temp_v0 = temp_v1->objId;
    var_v0 = temp_v0 * 4;
    temp_a3 = &D_800E3210[temp_v0];
    if (D_800E8920[temp_v0] == 0) {
        if (*temp_a3 > 0.0f) {
            *temp_a3 = 0.0f;
            func_801230E8(0x2037C, 0x2037D, 0);
            var_v0 = omCurrentObj->objId * 4;
        }
        *(D_800E6690 + var_v0) = 0.0f;
        temp_v0_2 = temp_v1->objId;
        D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
        D_800E6850[temp_v1->objId] = 65535.0f;
        temp_v0_3 = temp_v1->objId;
        var_v0_2 = temp_v0_3 * 4;
        if (D_800E8920[temp_v0_3] == 0) {
            do {
                ohSleep(1);
                temp_v0_4 = omCurrentObj->objId;
                var_v0_2 = temp_v0_4 * 4;
            } while (D_800E8920[temp_v0_4] == 0);
        }
        *(D_800E3750 + var_v0_2) = 0.0f;
        temp_v0_5 = temp_v1->objId;
        D_800E3210[temp_v0_5] = D_800E3750[temp_v0_5];
        D_800E3C90[temp_v1->objId] = 65535.0f;
        play_sound(0x4C, D_800E3750);
    }
    func_801230E8(0x2039A, 0x2039B, 0);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D19C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D3A0_ovl19(s32 arg0) {
    func_80153984_ovl3();
    D_800E64D0[omCurrentObj->objId] = 6.0f;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    gKirbyState.unk2C -= 1;
    if ((gKirbyState.unk2C == 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
        gKirbyState.unk2C = 0x7FFFFFFF;
        D_800BE4F8 = 2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D3A0_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D448_ovl19(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    func_80120A28();
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        if (gKirbyState.isTurning & 1) {
            gKirbyState.turnDirection = 0;
        } else {
            gKirbyState.isTurning |= 1;
        }
    }
    func_801230E8(0x20398, 0x20399, 0);
    D_800DF310[omCurrentObj->objId] = func_8022D528_ovl19;
    func_800AF27C();
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D448_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D528_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        request_track_general(arg2, 0x13, 1, 2);
        *(gEntityVtableIndexArray + 4) = 9;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D528_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022D57C_ovl19(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D57C_ovl19.s")
#endif

void func_8022D584_ovl19(GObj *g) {
    print_error_stub("No List Id:%d\n", gEntityVtableIndexArray[omCurrentObj->objId]);
    D_800DF150[omCurrentObj->objId] = NULL;
    curObjSleepForever();
}

#ifdef MIPS_TO_C
void func_8022D5E8_ovl19(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D5E8_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022D5F0_ovl19(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D5F0_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D5F8_ovl19(s32 arg0) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    void *temp_v0;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DF150[omCurrentObj->objId] = func_8022D96C_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = *gEntitiesNextPosYArray;
    D_800E17D0[omCurrentObj->objId] = *gEntitiesAngleYArray;
    gEntitiesAngleYArray[omCurrentObj->objId] = *gEntitiesAngleYArray;
    temp_v0 = func_800FF144();
    D_8022FAB0_ovl19 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = 18.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20007, 0x20, 0x10, &D_8022FAB0_ovl19);
    switch (D_800BE500) {                           /* irregular */
        case 1:
            temp_a0 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            *temp_a0 = *temp_a0;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            temp_v1 = omCurrentObj->objId;
            D_800E6BD0[temp_v1] = D_800E6D90[temp_v1];
            break;
        case 3:
            temp_a0_2 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            *temp_a0_2 += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            temp_v1_2 = omCurrentObj->objId;
            D_800E6BD0[temp_v1_2] = D_800E6D90[temp_v1_2];
            break;
        case 4:
            temp_a0_3 = &gEntitiesNextPosYArray[omCurrentObj->objId];
            *temp_a0_3 += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            temp_v1_3 = omCurrentObj->objId;
            D_800E6BD0[temp_v1_3] = D_800E6D90[temp_v1_3];
            break;
    }
    func_801230E8(0x20061, 0x20062, 1);
    gKirbyState.unk30 += 1;
    ohSleep(1);
    func_800FF1CC(D_8022FAB0_ovl19);
    func_800B1900(omCurrentObj->unk2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D5F8_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D96C_ovl19(s32 arg0) {
    f32 sp1C;

    func_800B2340(&sp1C, D_800DFBD0[omCurrentObj->objId]->unk8, 0xFFFF);
    D_8022FAB0_ovl19->unk4 = sp1C;
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unkC = sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D96C_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022D9F8_ovl19(s32 arg0) {
    f32 *var_at;
    f32 var_f16;
    u32 temp_v1;
    u32 temp_v1_10;
    u32 temp_v1_11;
    u32 temp_v1_12;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    void *temp_v0;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_8011CF58();
    D_800DF150[omCurrentObj->objId] = func_8022E198_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = *gEntitiesNextPosYArray;
    D_800E17D0[omCurrentObj->objId] = *gEntitiesAngleYArray;
    gEntitiesAngleYArray[omCurrentObj->objId] = *gEntitiesAngleYArray;
    temp_v0 = func_800FF144(gEntitiesAngleYArray);
    D_8022FAB0_ovl19.unk4 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = 24.0f;
        D_8022FAB0_ovl19.unk4->unk14 = 20.0f;
        D_8022FAB0_ovl19.unk4->unk18 = -240.0f;
        D_8022FAB0_ovl19.unk4->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006B, 0x20, 0x10);
    D_800DFBD0[omCurrentObj->objId]->unk30->unk54 = 2;
    switch (D_800BE500) {                           /* irregular */
        case 1:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.15f;
            temp_v1 = omCurrentObj->objId;
            D_800E6BD0[temp_v1] = D_800E6D90[temp_v1];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_2 = omCurrentObj->objId;
            D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB, 1);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(0x10);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = -0.7f;
            ohSleep(0x12);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_3 = omCurrentObj->objId;
            D_800E64D0[temp_v1_3] = D_800E6690[temp_v1_3];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            temp_v1_4 = omCurrentObj->objId;
            var_f16 = D_800E6D90[temp_v1_4];
            var_at = &D_800E6BD0[temp_v1_4];
block_9:
            *var_at = var_f16;
            break;
        case 3:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            temp_v1_5 = omCurrentObj->objId;
            D_800E6BD0[temp_v1_5] = D_800E6D90[temp_v1_5];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_6 = omCurrentObj->objId;
            D_800E64D0[temp_v1_6] = D_800E6690[temp_v1_6];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB, 1);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(5);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x1C);
            D_800E6690[omCurrentObj->objId] = -0.595f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_7 = omCurrentObj->objId;
            D_800E64D0[temp_v1_7] = D_800E6690[temp_v1_7];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            temp_v1_8 = omCurrentObj->objId;
            var_f16 = D_800E6D90[temp_v1_8];
            var_at = &D_800E6BD0[temp_v1_8];
            goto block_9;
        case 4:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            temp_v1_9 = omCurrentObj->objId;
            D_800E6BD0[temp_v1_9] = D_800E6D90[temp_v1_9];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_10 = omCurrentObj->objId;
            D_800E64D0[temp_v1_10] = D_800E6690[temp_v1_10];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB, 1);
            func_801230E8(0x203BA, 0x203BB, 0);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x22);
            D_800E6690[omCurrentObj->objId] = -0.615f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_v1_11 = omCurrentObj->objId;
            D_800E64D0[temp_v1_11] = D_800E6690[temp_v1_11];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            temp_v1_12 = omCurrentObj->objId;
            var_f16 = D_800E6D90[temp_v1_12];
            var_at = &D_800E6BD0[temp_v1_12];
            goto block_9;
    }
    D_800D6E14 = 1;
    func_800AF27C();
    ohSleep(1);
    func_800FF1CC(D_8022FAB4_ovl19);
    func_800B1900(omCurrentObj->unk2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D9F8_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022E198_ovl19(s32 arg0) {
    f32 sp1C;

    func_800B2340(&sp1C, D_800DFBD0[omCurrentObj->objId]->unk8, 0xFFFF);
    D_8022FAB0_ovl19.unk4->unk4 = sp1C;
    D_8022FAB0_ovl19.unk4->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19.unk4->unkC = sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022E198_ovl19.s")
#endif

#ifdef MIPS_TO_C

void func_8022E224_ovl19(s32 arg0) {
    void *temp_v0;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_8011CF58();
    D_800DF150[omCurrentObj->objId] = func_8022E47C_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = *gEntitiesNextPosYArray + 20.0f;
    D_800E5F90[omCurrentObj->objId] = *D_800E5F90;
    D_800E6BD0[omCurrentObj->objId] = *D_800E6BD0 + 0.37f;
    D_800E17D0[omCurrentObj->objId] = *gEntitiesAngleYArray;
    gEntitiesAngleYArray[omCurrentObj->objId] = *gEntitiesAngleYArray;
    temp_v0 = func_800FF144(D_800E5F90, D_800E6BD0, gEntitiesAngleYArray);
    D_8022FAB0_ovl19 = temp_v0;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = 18.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20007, 0x20, 0x10);
    D_800E64D0[omCurrentObj->objId] = 18.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 18.0f;
    func_801230E8(0x20063, 0x20064, 0);
    D_800E9720[omCurrentObj->objId] = 0x2D;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022E224_ovl19.s")
#endif

#ifdef __MIPS_TO_C
void func_8022E47C_ovl19(s32 arg0) {
    Vector vec;

    func_800B2340(&vec, D_800DFBD0[omCurrentObj->objId][2], 0xFFFF);
    D_8022FAB0_ovl19->unk4.x = vec.x;
    D_8022FAB0_ovl19->unk4.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unk4.z = vec.z;
    if (D_800E9720[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId]--;
    } else {
        D_800BE52C = D_800BE500;
        D_800BE530 = D_800BE504;
        D_800BE534 = D_800BE508 + 1;
        D_800BE538 = 1;
        D_800BE4FC = 2;
        D_800BE4F8 = 2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022E47C_ovl19.s")
#endif

void func_8022E58C_ovl19(void) {
    gKirbyState.unk17 = 1;
    gKirbyState.abilityState = 0;
    gKirbyState.actionChange = -1;
    D_800D6FB2 = 2;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80229100_ovl19);
    request_track_general(0x13, 1, 2);
    gEntityVtableIndexArray[1] = 7;
    request_track_general(0x13, 2, 3);
    gEntityVtableIndexArray[2] = 8;
}


u8 D_8022F674_ovl19[] = {
    1, 9, 8, 7, 6, 15
};

u8 D_8022F67C_ovl19[] = {
    1, 9, 8, 7, 6, 15
};

u8 D_8022F684_ovl19[] = {
    1, 2,3, 9,4,0xD,0xF
};

u8 D_8022F68C_ovl19[] = {
    1, 2, 3, 0xF
};

u8 D_8022F690_ovl19[] = {
    2, 9, 15
};

u8 D_8022F694_ovl19[] = {
    9, 2, 15
};

u8 D_8022F698_ovl19[] = {
    1, 2, 9, 15
};



