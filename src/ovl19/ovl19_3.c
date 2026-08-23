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
#include "ovl19/ovl19_3.h"

// within this file
extern f32 *D_80192F64;
FUNCLIST D_8022F5B0_ovl19 = {
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

FUNCLIST D_8022F618_ovl19 = {
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
void func_8022C140_ovl19(s32, s32, f32);
void func_8022D528_ovl19(s32, s32, f32);
void func_8022D96C_ovl19(GObj *);
void func_8022E198_ovl19(GObj *);
void func_8022E47C_ovl19(GObj *);

// ovl1-2 extern
/* ovl1_8.c defines func_800B4954 as (GObj *), but it is stored into
 * D_800DEF90, which track_arrays.h/ovl1_6.h declare `void (*[])(s32)`;
 * the (s32) spelling is what keeps that assignment type-clean. Correcting
 * it belongs with the shared header. */
extern void func_800B4954(s32);
extern struct UnkStruct8022FAB0 *func_800FF144(void);
extern void auFunc80020C88(void);
extern void func_800A7EB4(void);
extern void func_800AF27C(void);
extern void func_800B1870(GObj *);
extern void func_800B20E0(void *, void ***);
extern void func_800BB468(s32, s32);
extern void func_800BB498(void);
extern s32 play_music(s32, s32);

// ovl2 extern
extern void *func_8011D4A4(f32);
extern void func_8011DA34(void);
extern s32 func_80121828(f32, f32, f32, f32);
extern void func_80153984_ovl3(void);
extern void func_8011ED68(void);
extern s32 func_80151E94_ovl3(u8 *);
extern void func_8012307C(s32, s32, f32, s32);
extern void func_8011CF58(void);
extern s32 func_801215DC(void);
extern s32 func_8015449C_ovl3(void *, s32);
extern void func_8016854C_ovl3(void *, struct DObj *, f32);
extern void func_80155DF0_ovl3(void *, s32, Vector *, void *, s32);
extern s32 func_80155F0C_ovl3(struct CollisionTriangle *);
extern void func_80176398_ovl3(void);

// ovl3 data
extern u8 D_80196524;
extern u8 D_801924AC;
extern u8 D_80192514;
extern s32 D_801965F4[];
extern s32 D_801966D0[];

// ovl1 data
extern u32 D_800BE4F8;
extern u32 D_800BE4FC;
extern u32 D_800BE500;
extern u32 D_800BE504;
extern u32 D_800BE508;
extern u32 D_800BE52C;
extern u32 D_800BE530;
extern u32 D_800BE534;
extern u32 D_800BE538;

// ovl1 bss
extern s32 D_800E85A0[];
extern s16 D_800D6FB2;

// ovl2 bss
extern s32 D_800D6B54;
extern u32 D_8012E7DC[];
extern s32 D_8012E7E8[];
extern s32 D_8012E80C;
extern s16 D_8012E894;

// ovl19 bss
extern struct UnkStruct8022FAB0 *D_8022FAB4_ovl19;

// idk
extern u32 D_800DFA10[];
extern f32 *D_801923DC;
extern f32 *D_80192444;

void func_80229100_ovl19(GObj *g) {
    func_800A9760(0x20069);
    gKirbyState.unk154 = 2;
    func_800F8E6C(g);
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    func_80152348_ovl3(20.0f);
    gKirbyState.ability = 0;
    D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
    func_800AFBB4(0, omCurrentObj);
    func_800FF200(D_8012E944);
    D_800DF150[omCurrentObj->objId] = NULL;
    switch ((s32) D_800BE500) {
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
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x1A, &D_8022F5B0_ovl19);
}

void func_8022947C_ovl19(s32 arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x1A, &D_8022F5B0_ovl19);
}

void func_802294C4_ovl19(GObj *g) {
    s32 temp_v0;
    f32 **temp_v1;
    Vector sp24;

    func_8011E548();
    func_8011DAF8();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 0x11, &D_8022F618_ovl19);
    if (gKirbyState.unk17 == 0) {
        switch ((s32) D_800BE500) {
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
        temp_v0 = func_801693C4_ovl3(4);
        if (temp_v0 != -1) {
            temp_v1 = D_800E0490[omCurrentObj->objId];
            D_800EC2E0[temp_v0].as_u32 = 0;
            D_800EC660[temp_v0] = temp_v1[1][1] + temp_v1[1][0];
        }
    }
    if (gKirbyState.action == 0xB) {
        func_800B2340(&sp24, D_800DFBD0[omCurrentObj->objId][2], 0xFFFF);
        D_8012E944->unk4 = sp24.x;
        D_8012E944->unk8 = sp24.y;
        D_8012E944->unkC = sp24.z;
        D_8012E944->unk1C = gEntitiesAngleYArray[omCurrentObj->objId];
        return;
    }
    func_800FF200(D_8012E944);
}

void func_80229794_ovl19(GObj *g) {
    gKirbyState.unk2C = gKirbyState.unk30 = 0;
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
    for (;;) {
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
            gKirbyState.unk3C++;
        }
        if (gKirbyState.unk30 == 0) {
            func_801230E8(0x20370, 0x20371, 0);
        } else {
            func_801230E8(0x2036E, 0x2036F, 0);
        }
        D_800E9720[omCurrentObj->objId] = 0xF;
        while (D_800E9720[omCurrentObj->objId]--) {
            ohSleep((u32) 1);
        }
        play_sound(0x261);
        while (1) {
            if (gKirbyState.isTurning & 1) {
                break;
            }
            ohSleep((u32) 1);
        }
    }
}

void func_80229A54_ovl19(GObj *g) {
    u8 cmd[] = {2, 3, 9, 0xB, 15};

    D_800E98E0[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    if (gKirbyState.abilityState != 0) {
        set_kirby_action_1(gKirbyState.abilityState, 0x1C);
    } else if (func_80151E94_ovl3(cmd) != 0) {
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
        D_800E9AA0[omCurrentObj->objId] = (void *) gKirbyState.turnDirection;
    } else if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
    }
}

void func_80229C20_ovl19(GObj *g) {
    D_800E9720[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_801230E8(0x203A2, 0x203A3, 0);
    curObjSleepForever();
}

void func_80229C9C_ovl19(GObj *g) {
    u8 cmd[] = {2, 4, 3, 9, 8, 7, 0xC, 15};

    func_80153984_ovl3();
    if (func_80151E94_ovl3(cmd) == 0) {
        func_801219C8();
        if (!(gKirbyState.isTurning & 1)) {
            if (func_801210FC() == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    if (D_800E9720[omCurrentObj->objId] < 0xA) {
                        D_800E9720[omCurrentObj->objId] += 1;
                    }
                }
            } else if (gKirbyController.buttonHeld & 0x300) {
                if ((D_800E9720[omCurrentObj->objId] > 0) && (D_800E9720[omCurrentObj->objId] < 7)) {
                    gKirbyState.unk38 = g->animTimer * 0.5f;
                    if (gKirbyState.unk38 >= 25.0f) {
                        gKirbyState.unk38 -= 25.0f;
                    }
                    set_kirby_action_1(2, 4);
                } else {
                    D_800E9720[omCurrentObj->objId] = 0;
                }
            }
        } else {
            D_800E9720[omCurrentObj->objId] = 0;
        }
    }
    func_8011ED68();
}

void func_80229E20_ovl19(GObj *g) {
    u32 temp_v1;

    gKirbyState.unk7 = 1;
    D_800DDFD0[omCurrentObj->objId] = 2;
    temp_v1 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v1 == 0) {
        play_sound(0x45);
        func_800A8100(5, 1, 0, 0);
    } else if ((temp_v1 & 7) == 1) {
        func_800A8100(5, 1, 6, 0);
    }
    func_800AECC0(1.5f);
    func_800AED20(1.5f);
    func_8012307C(0x2039A, 0x2039B, gKirbyState.unk38, 0);
    curObjSleepForever();
}

void func_80229F08_ovl19(GObj *g) {
    u8 cmd[] = {4, 2, 3, 9, 8, 7, 15};

    func_80153984_ovl3();
    func_800AECC0(1.5f);
    func_800AED20(1.5f);
    if (func_80151E94_ovl3(cmd) == 0) {
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

void func_8022A018_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    gKirbyState.jumpHeight = gKirbyState.isFullJump = 0;
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
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
        D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
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

void func_8022A228_ovl19(GObj *g) {
    u8 cmd[] = {1, 9, 8, 7, 6, 15};

    func_80153984_ovl3();
    if (func_80151E94_ovl3(cmd) == 0) {
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
                func_8011EBD4();
            }
            if ((D_800E83E0[omCurrentObj->objId] & 0xFFFF) == 2) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                func_800BB468(0xB, 0xA);
                set_kirby_action_1(6, 6);
            } else if (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                func_8016854C_ovl3(&D_801924AC, g->data.dobj->firstChild, 1.0f);
            }
        }
        func_8011ED68();
    }
}

void func_8022A410_ovl19(GObj *g) {
    gKirbyState.unk30 = gKirbyState.unk44 = 0;
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
    D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
    func_801230E8(0x20380, 0x20381, 0);
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    func_801230E8(0x20382, 0x20383, 1);
    gKirbyState.unk30++;
    curObjSleepForever();
}

void func_8022A810_ovl19(GObj *g) {
    if (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        func_8016854C_ovl3(&D_801924AC, g->data.dobj->firstChild, 1.0f);
    }
    if (gKirbyController.buttonHeld & 0x8000) {
        D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
        set_kirby_action_1(3, 5);
    }
}

void func_8022A8FC_ovl19(GObj *g) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    gKirbyState.unk15C = &D_801923DC;
    D_800E9560[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    func_801230E8(0x2037C, 0x2037D, 0);
    curObjSleepForever();
}

#ifdef NON_MATCHING
void func_8022A9E8_ovl19(GObj *g) {
    u8 cmd[] = {1, 9, 8, 7, 6, 15};

    func_80153984_ovl3();
    if (func_80151E94_ovl3(cmd) == 0) {
        if (gKirbyController.buttonPressed & 0x8000) {
            D_800E9560[omCurrentObj->objId] = 2;
        } else if (D_800E9560[omCurrentObj->objId] != 0) {
            D_800E9560[omCurrentObj->objId]--;
        }
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x4C);
            if (D_800E9560[omCurrentObj->objId] == 0) {
                if (D_800E64D0[omCurrentObj->objId] == 0.0f) {
                    gKirbyState.unk7 = 0;
                    set_kirby_action_1(7, 7);
                } else {
                    gKirbyState.unk44 = 0;
                    if (gKirbyState.unk7 == 0) {
                        func_80122B40();
                        set_kirby_action_1(1, 3);
                    } else {
                        gKirbyState.unk38 = 0.0;
                        set_kirby_action_1(2, 4);
                    }
                    func_80122FB0(1);
                }
            } else {
                func_80122B40();
                set_kirby_action_1(3, 5);
            }
        } else {
            if (D_800E83E0[omCurrentObj->objId] != 0) {
                D_800EC2E0->as_u32 = 0x80000000;
                gKirbyState.unk7 = 0;
                D_800E3210[omCurrentObj->objId] = 8.0f;
                D_800E3750[omCurrentObj->objId] = 0.0;
                D_800E3C90[omCurrentObj->objId] = 0.0;
                set_kirby_action_1(5, 5);
            }
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    func_8011ED68();
}
#else
u8 D_8022F67C_ovl19[] = {
    1, 9, 8, 7, 6, 15
};
#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern ? D_8022F67C_ovl19;

void func_8022A9E8_ovl19(GObj *g) {
    u8 sp28;
    s32 *temp_a0;
    s32 temp_a1;
    s32 var_v0_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 var_v0;

    sp28.unk0 = (s32) D_8022F67C_ovl19.unk0;
    sp28.unk4 = (u16) D_8022F67C_ovl19.unk4;
    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp28) == 0) {
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
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022A9E8_ovl19.s")
#endif
#endif

void func_8022AC78_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_80122B40();
    func_801230E8(0x2038E, 0x2038F, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8022ACF0_ovl19(GObj *g) {
    u8 cmd[] = {1, 2, 3, 9, 4, 0xD, 0xF};

    func_80153984_ovl3();
    func_80151E94_ovl3(cmd);
}

void func_8022AD34_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    D_800DDFD0[omCurrentObj->objId] = 7;
    func_80120A28();
    gKirbyState.unk15C = &D_80192444;
    func_800AA78C(0x2039E, 0x20069, 3.0f);
    func_801230E8(0x2039E, 0x2039F, 0);
    while (gKirbyController.buttonHeld & 0x400) {
        ohSleep(1);
    }
    func_801230E8(0x203A0, 0x203A1, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8022AE24_ovl19(GObj *g) {
    u8 cmd[] = {1, 2, 3, 0xF};

    func_80153984_ovl3();
    if (func_80151E94_ovl3(cmd) == 0) {
        if (gKirbyState.unk30 != 0) {
            gKirbyState.unk15C = &D_801923DC;
            set_kirby_action_1(0, 1);
        }
    } else {
        gKirbyState.unk15C = &D_801923DC;
    }
}

void func_8022AEA0_ovl19(GObj *g) {
    if (D_8012E7E8[2] == 0) {
        D_800DDFD0[omCurrentObj->objId] = 8;
        D_8012E80C = 0;
        D_800E9AA0[omCurrentObj->objId] = (void *) 1;
        D_800E98E0[omCurrentObj->objId] = (s32) D_800E9AA0[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E9720[omCurrentObj->objId] = 0;
        play_sound(0x103);
        // empty block is load-bearing: it splits the basic block so the
        // gKirbyState base lands in $v0
        do { } while (0);
        gKirbyState.unk30++;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            D_800E3210[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = 0;
            func_800AA78C(0x2038A, 0x20069, 6.0f);
            func_801230E8(0x2038A, 0x2038B, 0);
            break;
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
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
            D_8012E80C = func_800A8100(5, 1, 0x2B, D_800DFBD0[omCurrentObj->objId][2]);
            break;
        case 5:
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
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

void func_8022B2A4_ovl19(GObj *g) {
    u8 cmd[] = {2, 9, 15};

    if (D_800E98E0[omCurrentObj->objId] != 5) {
        func_80153B98_ovl3();
    } else {
        func_80153984_ovl3();
    }
    if (func_80151E94_ovl3(cmd) != 0) {
        func_8011DC5C();
        func_8011E0E8();
        if (func_80121194() != 0) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -6.0f;
            D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
            D_800E6850[omCurrentObj->objId] = 6.0f;
            gKirbyState.isTurning &= ~4;
        } else {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            gKirbyState.isTurning |= 4;
        }
    } else if (func_8011F690() != 0) {
        func_8011DC5C();
        func_8011E0E8();
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
    } else if (gKirbyState.action != 0xA) {
        func_8011E0E8();
        func_8011DC5C();
    }
}

void func_8022B4C4_ovl19(GObj *g) {
    if (gKirbyState.unk30 == 0) {
        D_800DDFD0[omCurrentObj->objId] = 9;
        gKirbyState.unk3C = 0;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId] = NULL;
        D_800E98E0[omCurrentObj->objId] = (s32) D_800E9AA0[omCurrentObj->objId];
        g->data.dobj->firstChild->angle.v.y = 0;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        play_sound(0x103);
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 += 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            D_800E3210[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = 0;
            func_800AA78C(0x20396, 0x20069, 6.0f);
            if (D_800E98E0[omCurrentObj->objId] == 0) {
                D_800E9AA0[omCurrentObj->objId] = (void *) 1;
                D_800E98E0[omCurrentObj->objId] = (s32) D_800E9AA0[omCurrentObj->objId];
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

void func_8022B8BC_ovl19(GObj *g) {
    u8 cmd[] = {9, 2, 15};

    func_80153B98_ovl3();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        if ((gKirbyState.unk3C == 0) && (func_80151E94_ovl3(cmd) != 0)) {
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
        } else if (func_8011FEF8() != 0) {
            func_8011DC5C();
            func_8011E0E8();
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022947C_ovl19);
        } else if (gKirbyState.action != 0xB) {
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}

void func_8022BB04_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (ABSF(D_800E64D0[omCurrentObj->objId]) < 4.0f) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
    }
    D_800E3210[omCurrentObj->objId] = 11.0f;
    D_800E3750[omCurrentObj->objId] = -0.980665f;
    D_800E3C90[omCurrentObj->objId] = 17.0f;
    play_sound(0x4B);
    func_801230E8(0x2038C, 0x2038D, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8022BC9C_ovl19(GObj *g) {
    u8 cmd[] = {1, 2, 9, 15};

    func_80153984_ovl3();
    if ((func_80151E94_ovl3(cmd) == 0) && !(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
    }
    if (gKirbyState.unk30 != 0) {
        set_kirby_action_1(6, 6);
    }
}

#ifdef NON_MATCHING
void func_8022BD44_ovl19(GObj *g) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk44 = 0;
    D_800E8220[omCurrentObj->objId] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800DFBD0[omCurrentObj->objId][23]->flags = 1;
    func_80120A28();
    D_800E9720[omCurrentObj->objId] = 0;
    func_801230E8(0x20362, 0x20363, 0);
    if (func_800AF230() != 0) {
        goto block_4;
    }
loop_2:
    if (gKirbyController.buttonHeld & 0x4000) {
        D_800E9720[omCurrentObj->objId] += 1;
        ohSleep(1);
        if (func_800AF230() == 0) {
            goto loop_2;
        }
block_4:
        func_801230E8(0x2036C, 0x2036D, 0);
        if (func_800AF230() == 0) {
loop_5:
            if (gKirbyController.buttonHeld & 0x4000) {
                D_800E9720[omCurrentObj->objId] += 1;
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
        while (func_800AF230() == 0) {
            if (D_800E8220[omCurrentObj->objId] != 0) {
                func_800AF314();
                func_800AF3A0();
                ohSleep(0xF);
                break;
            }
            if ((gKirbyState.unk3C != -1) && (gKirbyState.unk3C < 5)) {
                gKirbyState.unk3C = g->animTimer * 0.5f;
            } else {
                gKirbyState.unk3C = -1;
            }
            ohSleep(1);
        }
    } else {
        func_801230E8(0x20366, 0x20367, 1);
        while (gKirbyController.buttonHeld & 0x4000) {
            func_801230E8(0x20368, 0x20369, 1);
        }
        gKirbyState.unk44 = 2;
        func_801230E8(0x2036A, 0x2036B, 0);
        D_800DF310[omCurrentObj->objId] = func_8022C140_ovl19;
        while (func_800AF230() == 0) {
            if ((gKirbyState.unk3C != -1) && (gKirbyState.unk3C < 5)) {
                gKirbyState.unk3C = g->animTimer * 0.5f;
            } else {
                gKirbyState.unk3C = -1;
            }
            ohSleep(1);
        }
    }
    D_800E9720[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022BD44_ovl19.s")
#endif
void func_8022C140_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f) && (D_800E8920[omCurrentObj->objId] != 0)) {
        play_sound(0x4A);
    }
}

void func_8022C1A4_ovl19(GObj *g) {
    s32 sp3C;
    Vector sp30;

    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 16.0f, -0.980665f, 16.0f) != 0) {
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
    func_8016854C_ovl3(&D_80192514, D_800DFBD0[omCurrentObj->objId][25], 1.0f);
    if (gKirbyState.unk44 != 0) {
        if ((D_800E8220[omCurrentObj->objId] == 0) && (gKirbyState.unk3C != -1)) {
            if (gKirbyState.unk44 == 1) {
                sp3C = D_801965F4[gKirbyState.unk3C];
            } else {
                sp3C = D_801966D0[gKirbyState.unk3C];
            }
            if (sp3C != 0) {
                func_800B2340(&sp30, D_800DFBD0[omCurrentObj->objId][25], 0xFFFF);
                D_800EA6E0[omCurrentObj->objId] = sp30.x;
                D_800EA8A0[omCurrentObj->objId] = sp30.y;
                D_800EAA60[omCurrentObj->objId] = sp30.z;
                func_80155DF0_ovl3((u8 *) &D_8012E944 + 4, sp3C, &sp30, func_80155F0C_ovl3, omCurrentObj->objId);
            }
        }
    }
}

#ifdef NON_MATCHING
void func_8022C3BC_ovl19(GObj *g) {
    f32 var_f0;
    f32 var_f2;
    u32 temp_v1;

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
    temp_v1 = gKirbyState.unk140;
    if (temp_v1 != 0) {
        gKirbyState.damageType = temp_v1;
    } else {
        gKirbyState.damageType = (D_800E83E0[omCurrentObj->objId] & 0xFF0000) >> 0x10;
    }
    func_800BB468(0, 0);
    if ((D_800E83E0[omCurrentObj->objId] != 0) && (gKirbyState.damageType < 2)) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
            func_800AA78C(0x2037A, 0x20069, 3.0f);
        }
        func_80122A10(D_800DFBD0[omCurrentObj->objId][2]);
        if (D_800E85A0[omCurrentObj->objId] == 1.0f) {
            var_f0 = 8.0f;
            var_f2 = -0.4f;
        } else {
            var_f0 = -8.0f;
            var_f2 = 0.4f;
        }
        D_800E64D0[omCurrentObj->objId] = var_f0;
        D_800E6690[omCurrentObj->objId] = var_f2;
        if (var_f0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -var_f0;
        } else {
            D_800E6850[omCurrentObj->objId] = var_f0;
        }
        func_801230E8(0x2037A, 0x2037B, 1);
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    } else {
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        func_80122A10(D_800DFBD0[omCurrentObj->objId][2]);
        var_f2 = 18.0f;
        if (gKirbyState.unk140 & 0x10000) {
            var_f0 = 0.0f;
        } else {
            var_f0 = var_f2;
        }
        D_800E3210[omCurrentObj->objId] = var_f0;
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        if (var_f2 < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -var_f2;
        } else {
            D_800E3C90[omCurrentObj->objId] = var_f2;
        }
        if (gKirbyState.unk140 & 0xC0000) {
            if (gKirbyState.unk140 & 0x40000) {
                var_f0 = -5.0f;
            } else {
                var_f0 = 5.0f;
            }
            D_800E64D0[omCurrentObj->objId] = var_f0;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            if (var_f0 < 0.0f) {
                D_800E6850[omCurrentObj->objId] = -var_f0;
            } else {
                D_800E6850[omCurrentObj->objId] = var_f0;
            }
        } else {
            func_80120A28();
        }
        func_801230E8(0x2037A, 0x2037B, 1);
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022C3BC_ovl19.s")
#endif
void func_8022C90C_ovl19(GObj *g) {
    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 16.0f, -0.980665f, 16.0f) != 0) {
        play_sound(0x4C);
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
        gKirbyState.unk24 = 0;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (D_8012E894 >= 2) {
            D_800E7CE0[omCurrentObj->objId] += 0x12;
        }
    }
    func_8011ED68();
}

void func_8022CA10_ovl19(GObj *g) {
    f32 var_f0;
    f32 var_f2;

    gKirbyState.unk30 = 0;
    func_800AECC0(4.0f);
    func_800AED20(4.0f);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E0490[omCurrentObj->objId] = &D_80192F64;
    gKirbyState.unk15C = &D_801923DC;
    gKirbyState.unk7 = 0;
    func_8011E0E8();
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    gKirbyState.unk68 = 1;
    if ((gKirbyState.previousAction == 0xB) || (gKirbyState.previousAction == 0xA)) {
        func_800AA78C(0x2037A, 0x20069, 3.0f);
    }
    play_sound(0x46);
    func_80122A10(D_800DFBD0[omCurrentObj->objId][2]);
    if (D_800E85A0[omCurrentObj->objId] == 1.0f) {
        var_f0 = 8.0f;
        var_f2 = -0.4f;
    } else {
        var_f0 = -8.0f;
        var_f2 = 0.4f;
    }
    D_800E64D0[omCurrentObj->objId] = var_f0;
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
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    gKirbyState.unk68 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8022CD00_ovl19(GObj *g) {
    func_80153984_ovl3();
    if (func_80121828(-0.980665f, 16.0f, -0.980665f, 16.0f) != 0) {
        play_sound(0x4C);
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
        gKirbyState.unk24 = 0;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 191/201, near-miss. Derived from the ASM (not the PORT arm);
 * everything up to the D_800D6B54 pair matches exactly, including using
 * `0.0` (not `0.0f`) for the gEntitiesAngleXArray store to fork IDO's
 * shared $f8 constant off the $f0 one reused for D_800E3750/D_800E6690
 * (lever 7). Residue: the ROM computes TWO separate %hi/%lo relocations
 * for `D_800D6B54+0x4` and `D_800D6B54` (as if two distinct externs);
 * IDO -O2 always folds them into one base register + two offsets no
 * matter the C spelling -- tried array index, byte-offset cast, and
 * volatile byte-offset cast, all three compile identically. 10 raw insn
 * diffs, all in that one four-store cluster. */
void func_8022CE18_ovl19(GObj *arg0) {
    extern s32 D_8012E90C;
    extern u32 *D_800DFD90[];
    extern f32 gKirbyHp;

    D_8012E7E8[2] = 1;
    D_800DF150[omCurrentObj->objId] = func_8022D13C_ovl19;
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], func_800B1870);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    *(s32 *)((u8 *)&D_8012E90C + 0x10) = 0;
    func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    func_800B20E0(omCurrentObj, (void ***) D_800DFD90[omCurrentObj->objId]);
    D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
    gKirbyState.unk7 = 0;
    D_800E8060[omCurrentObj->objId] = -1;
    if ((gKirbyState.floorCollisionNext != 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        gKirbyState.unk30 = 0;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0;
    auFunc80020C88();
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
    (&D_800D6B54)[1] = 0xA0;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        func_801230E8(0x20378, 0x20379, 1);
    } else {
        func_801230E8(0x20376, 0x20377, 1);
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: behavioral port of the MIPS_TO_C sketch above, re-verified
 * against asm/nonmatchings/ovl19/ovl19_3/func_8022CE18_ovl19.s -- the
 * helper's "level complete" coroutine (funclist 22 in D_8022F5B0).
 * Flags D_8012E7E8[2], swaps the per-frame hook to func_8022D13C_ovl19
 * and re-arms rendering (func_800B1870 process, func_800AFA54 +
 * func_800B20E0 texture scroll re-bind -- two args, m2c's third is a
 * leftover register), shows DObj [23] (flags = 2, a byte store),
 * freezes physics, plays the win (0x46) or last-hit KO (0xDC) jingle,
 * stops the voice, victory dance music cue and the score fanfare
 * name-call pair picked by facing. D_8012E90C+0x10 is cleared via the
 * byte-offset idiom ovl3_6.c already uses for that block. */
void func_8022CE18_ovl19(GObj *arg0) {
    extern s32 D_8012E90C;
    extern u32 *D_800DFD90[];
    extern f32 gKirbyHp;

    D_8012E7E8[2] = 1;
    D_800DF150[omCurrentObj->objId] = func_8022D13C_ovl19;
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], func_800B1870);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    *(s32 *)((u8 *)&D_8012E90C + 0x10) = 0;
    func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    func_800B20E0(omCurrentObj, (void ***) D_800DFD90[omCurrentObj->objId]);
    D_800DFBD0[omCurrentObj->objId][23]->flags = 2;
    gKirbyState.unk7 = 0;
    D_800E8060[omCurrentObj->objId] = -1;
    if ((gKirbyState.floorCollisionNext != 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        gKirbyState.unk30 = 0;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    auFunc80020C88();
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
    (&D_800D6B54)[1] = 0xA0;
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

void func_8022D13C_ovl19(GObj *g) {
    if (gKirbyState.unk30 != 0) {
        func_80153984_ovl3();
        func_80121828(-0.980665f, 16.0f, -0.980665f, 16.0f);
    }
    func_8011E548();
    func_8011DAF8();
}

#ifdef NON_MATCHING
void func_8022D19C_ovl19(GObj *g) {
    u32 temp_v0;

    D_800DDFD0[omCurrentObj->objId] = 0xF;
    if ((D_800E6A10[omCurrentObj->objId] == -1.0f) && !(gKirbyState.isTurning & 1)) {
        gKirbyState.isTurning |= 1;
    }
    gKirbyState.unk2C = 0xF;
    temp_v0 = omCurrentObj->objId;
    if (D_800E8920[temp_v0] == 0) {
        if (D_800E3210[temp_v0] > 0.0f) {
            D_800E3210[temp_v0] = 0.0f;
            func_801230E8(0x2037C, 0x2037D, 0);
        }
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        while (D_800E8920[omCurrentObj->objId] == 0) {
            ohSleep(1);
        }
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        play_sound(0x4C);
    }
    func_801230E8(0x2039A, 0x2039B, 0);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D19C_ovl19.s")
#endif
void func_8022D3A0_ovl19(GObj *g) {
    func_80153984_ovl3();
    D_800E64D0[omCurrentObj->objId] = 6.0f;
    D_800E6850[omCurrentObj->objId] = 6.0f;
    if ((gKirbyState.unk2C-- == 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
        gKirbyState.unk2C = 0x7FFFFFFF;
        D_800BE4F8 = 2;
    }
}

void func_8022D448_ovl19(GObj *g) {
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

void func_8022D528_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        request_track_general(0x13, 1, 2);
        gEntityFuncListIDArray[1] = 9;
    }
}

void func_8022D57C_ovl19(GObj *g) {

}

void func_8022D584_ovl19(GObj *g) {
    utilPrintf("No List Id:%d\n", gEntityFuncListIDArray[omCurrentObj->objId]);
    D_800DF150[omCurrentObj->objId] = NULL;
    curObjSleepForever();
}

void func_8022D5E8_ovl19(s32 arg0) {

}

void func_8022D5F0_ovl19(s32 arg0) {

}

#ifdef MIPS_TO_C
/* FACTORY: 109/221, register permutation. Derived from the ASM (not the
 * PORT arm) with two real fixes over the old sketch: func_800A9864 takes
 * 3 args (m2c's 4th was a leftover register) and the tail func_800B1900
 * call reads objId as a HALF-WORD at +2 (big-endian low 16 bits of the u32
 * objId field), `*(u16 *)((u8 *)omCurrentObj + 2)`, not the full 32-bit
 * field -- that is a real `lhu` in the listing. Every field/constant/
 * branch and the switch's case values (3/3/0, blends .055/.27/.295) are
 * exact. The residue is that the ROM caches the gEntitiesNextPosYArray
 * base in $t0 and D_8022FAB0_ovl19's base in $a3 across the whole
 * function (both survive the switch); IDO here holds them in the SAME
 * PAIR of registers but SWAPPED ($a3 for the array, $t0 for the struct
 * ptr). No source spelling changes which one gets which -- whole-function
 * temp-register permutation (LEVERS: no source spelling reaches it). The
 * one-word branch-offset drifts in the tail are downstream of that same
 * swap, not separate defects. */
void func_8022D5F8_ovl19(GObj *arg0) {
    struct UnkStruct8022FAB0 *cam;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = func_8022D96C_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    cam = func_800FF144();
    D_8022FAB0_ovl19 = cam;
    if (cam != NULL) {
        cam->unk10 = 18.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20007, 0x20, 0x10);
    switch (D_800BE500) {
        case 1:
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 3:
            gEntitiesNextPosYArray[omCurrentObj->objId] += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 4:
            gEntitiesNextPosYArray[omCurrentObj->objId] += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
    }
    func_801230E8(0x20061, 0x20062, 1);
    gKirbyState.unk30 += 1;
    ohSleep(1);
    func_800FF1CC(D_8022FAB0_ovl19);
    func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
}
#elif defined(PORT)
/* PORT: behavioral port of the MIPS_TO_C sketch above, verified against
 * asm/nonmatchings/ovl19/ovl19_3/func_8022D5F8_ovl19.s -- the helper's
 * boss-door name-call cutscene coroutine: places the double at Kirby's
 * Y/heading, grabs the shared cutscene camera blob (viewpoint
 * 18/20/-240), loads the helper geo 0x20007 at scale 0.2, then parks it
 * on the per-world raft/track node (world 1: node 3 blend 0.055; world
 * 3: node 3 blend 0.27, y+2; world 4: node 0 blend 0.295, y+2 -- other
 * worlds skip), plays the 0x20061/0x20062 name-call pair, bumps unk30,
 * releases the camera and kills its own track. m2c's extra call
 * arguments are leftover registers; the final kill reads objId as u16
 * (the u16 parameter truncates). */
void func_8022D5F8_ovl19(GObj *arg0) {
    struct UnkStruct8022FAB0 *cam;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = func_8022D96C_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    cam = func_800FF144();
    D_8022FAB0_ovl19 = cam;
    if (cam != NULL) {
        cam->unk10 = 18.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20007, 0x20, 0x10);
    switch (D_800BE500) {
        case 1:
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 3:
            gEntitiesNextPosYArray[omCurrentObj->objId] += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 4:
            gEntitiesNextPosYArray[omCurrentObj->objId] += 2.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
    }
    func_801230E8(0x20061, 0x20062, 1);
    gKirbyState.unk30 += 1;
    ohSleep(1);
    func_800FF1CC(D_8022FAB0_ovl19);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D5F8_ovl19.s")
#endif

void func_8022D96C_ovl19(GObj *g) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[omCurrentObj->objId][2], 0xFFFF);
    D_8022FAB0_ovl19->unk4 = sp1C.x;
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unkC = sp1C.z;
}

#ifdef MIPS_TO_C
/* FACTORY: 77/491, whole-function register pressure. Derived from the ASM
 * (not the PORT arm), which has a real bug: it names the second camera
 * slot as a fictional standalone extern `D_8022FAB4_ovl19` (an LP64-only
 * 8-byte cell that has no N64 symbol_addrs.txt entry). On the ROM it is
 * `(&D_8022FAB0_ovl19)[1]` -- the SAME single-pointer global, index 1 --
 * confirmed by the `sw $v0,0x4($v1) <D_8022FAB0_ovl19>` relocation.
 * Structure kept from the old MIPS_TO_C sketch: the goto/`block_9` shared
 * tail is real (case 1 falls through, cases 3/4 jump in) -- the PORT
 * arm's flattened per-case duplicate is a divergence, not a match target.
 * Every offset/constant this drafts checks out once the [1] fix lands.
 * Residue: the ROM caches &omCurrentObj in $s2 across every call in the
 * function (plus $s0/$s1 for other bases); this draft does not get IDO to
 * hold as many callee-saved regs, so nearly the whole body free-floats to
 * different temp registers downstream. Whole-function register-pressure
 * floor (LEVERS: no source spelling reaches it) -- prime permuter fuel
 * given its size. */
void func_8022D9F8_ovl19(GObj *arg0) {
    extern s32 D_800D6E14;
    struct UnkStruct8022FAB0 *cam;
    f32 *var_at;
    f32 var_f16;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_8011CF58();
    D_800DF150[omCurrentObj->objId] = func_8022E198_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    cam = func_800FF144();
    (&D_8022FAB0_ovl19)[1] = cam;
    if (cam != NULL) {
        cam->unk10 = 24.0f;
        (&D_8022FAB0_ovl19)[1]->unk14 = 20.0f;
        (&D_8022FAB0_ovl19)[1]->unk18 = -240.0f;
        (&D_8022FAB0_ovl19)[1]->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006B, 0x20, 0x10);
    D_800DFBD0[omCurrentObj->objId][12]->flags = 2;
    switch (D_800BE500) {
        case 1:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.15f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(0x10);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = -0.7f;
            ohSleep(0x12);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            var_f16 = D_800E6D90[omCurrentObj->objId];
            var_at = &D_800E6BD0[omCurrentObj->objId];
block_9:
            *var_at = var_f16;
            break;
        case 3:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(5);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x1C);
            D_800E6690[omCurrentObj->objId] = -0.595f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            var_f16 = D_800E6D90[omCurrentObj->objId];
            var_at = &D_800E6BD0[omCurrentObj->objId];
            goto block_9;
        case 4:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x22);
            D_800E6690[omCurrentObj->objId] = -0.615f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            var_f16 = D_800E6D90[omCurrentObj->objId];
            var_at = &D_800E6BD0[omCurrentObj->objId];
            goto block_9;
    }
    D_800D6E14 = 1;
    func_800AF27C();
    ohSleep(1);
    func_800FF1CC((&D_8022FAB0_ovl19)[1]);
    func_800B1900(*(u16 *)((u8 *)omCurrentObj + 2));
}
#elif defined(PORT)
/* PORT: behavioral port of the MIPS_TO_C sketch above, verified against
 * asm/nonmatchings/ovl19/ovl19_3/func_8022D9F8_ovl19.s -- the boss-door
 * entrance cutscene coroutine for the helper's ride (geo 0x2006B).
 * Places the double at Kirby's Y/heading, grabs the SECOND shared
 * camera slot D_8022FAB4_ovl19 (its own 8-byte cell on PC; the sibling
 * func_8022E198_ovl19 reads it as (&D_8022FAB0_ovl19)[1]), viewpoint
 * 24/20/-240, shows DObj [12] (flags = 2, byte store), then runs the
 * per-world scripted ride-in: node 1 with a whistle 0x1DB and voice
 * pair 0x203BA/0x203BB, accelerate to 12, timed decelerations, and
 * finally parks on the destination node (world 1: node 3/0.055; world
 * 3: node 3/0.27; world 4: node 0/0.295). Ends by flagging D_800D6E14,
 * waiting out the anim (func_800AF27C), releasing the camera slot and
 * killing its own track. m2c's second play_sound argument is a
 * leftover register. */
void func_8022D9F8_ovl19(GObj *arg0) {
    extern struct UnkStruct8022FAB0 *D_8022FAB4_ovl19;
    extern s32 D_800D6E14;
    struct UnkStruct8022FAB0 *cam;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_8011CF58();
    D_800DF150[omCurrentObj->objId] = func_8022E198_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[0];
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[0];
    cam = func_800FF144();
    D_8022FAB4_ovl19 = cam;
    if (cam != NULL) {
        cam->unk10 = 24.0f;
        D_8022FAB4_ovl19->unk14 = 20.0f;
        D_8022FAB4_ovl19->unk18 = -240.0f;
        D_8022FAB4_ovl19->unk21 = 1;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2006B, 0x20, 0x10);
    D_800DFBD0[omCurrentObj->objId][12]->flags = 2;
    switch (D_800BE500) {
        case 1:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.15f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(0x10);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = -0.7f;
            ohSleep(0x12);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.055f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 3:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            ohSleep(5);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x1C);
            D_800E6690[omCurrentObj->objId] = -0.595f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.27f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
        case 4:
            D_800E5F90[omCurrentObj->objId] = 1;
            D_800E6D90[omCurrentObj->objId] = 0.0f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x1DB);
            func_801230E8(0x203BA, 0x203BB, 0);
            D_800E64D0[omCurrentObj->objId] = 12.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 12.0f;
            ohSleep(0x22);
            D_800E6690[omCurrentObj->objId] = -0.615f;
            ohSleep(0x14);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E5F90[omCurrentObj->objId] = 0;
            D_800E6D90[omCurrentObj->objId] = 0.295f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            break;
    }
    D_800D6E14 = 1;
    func_800AF27C();
    ohSleep(1);
    func_800FF1CC(D_8022FAB4_ovl19);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_3/func_8022D9F8_ovl19.s")
#endif

void func_8022E198_ovl19(GObj *g) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[omCurrentObj->objId][2], 0xFFFF);
    (&D_8022FAB0_ovl19)[1]->unk4 = sp1C.x;
    (&D_8022FAB0_ovl19)[1]->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    (&D_8022FAB0_ovl19)[1]->unkC = sp1C.z;
}

/* 32/150, instruction count exact and the first 77 instructions byte-identical.
 * Residue: from the `if (D_8022FAB0_ovl19 ...)` body onward the whole $t file
 * is rotated one slot (ROM t0/t2/t1/t3, IDO t7/t0/t2/t1) and that rotation
 * carries to the end of the function.  Swept: `!= NULL` vs truthiness vs
 * assignment-inside-the-condition (all three inert), statement order in the
 * if-body (fixed by the ROM's store order).  Same register-file-offset family
 * as func_800F7404 in ovl2_2.c. */
#ifdef NON_MATCHING
void func_8022E224_ovl19(GObj *g) {
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    func_8011CF58();
    D_800DF150[omCurrentObj->objId] = func_8022E47C_ovl19;
    gEntitiesNextPosYArray[omCurrentObj->objId] = *gEntitiesNextPosYArray + 20.0f;
    D_800E5F90[omCurrentObj->objId] = *D_800E5F90;
    D_800E6BD0[omCurrentObj->objId] = *D_800E6BD0 + 0.37f;
    D_800E17D0[omCurrentObj->objId] = *gEntitiesAngleYArray;
    gEntitiesAngleYArray[omCurrentObj->objId] = *gEntitiesAngleYArray;
    D_8022FAB0_ovl19 = func_800FF144();
    if (D_8022FAB0_ovl19 != NULL) {
        D_8022FAB0_ovl19->unk10 = 18.0f;
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
void func_8022E47C_ovl19(GObj *g) {
    Vector vec;

    func_800B2340(&vec, D_800DFBD0[omCurrentObj->objId][2], 0xFFFF);
    D_8022FAB0_ovl19->unk4 = vec.x;
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_8022FAB0_ovl19->unkC = vec.z;
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

void func_8022E58C_ovl19(void) {
    gKirbyState.unk17 = 1;
    gKirbyState.abilityState = 0;
    gKirbyState.actionChange = -1;
    D_800D6FB2 = 2;
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80229100_ovl19);
    request_track_general(0x13, 1, 2);
    gEntityFuncListIDArray[1] = 7;
    request_track_general(0x13, 2, 3);
    gEntityFuncListIDArray[2] = 8;
}





