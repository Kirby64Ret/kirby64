#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
extern FUNCLIST D_80196990_ovl3;
extern FUNCLIST D_80196CA8_ovl3;

extern s16 D_80198824_ovl3;
extern s32 D_80196CB8_ovl3[];

typedef struct Unk80196C74 {
    u8 unk0[7];
} Unk80196C74;

extern Unk80196C74 D_80196C74_ovl3;

extern s32 func_80151E94_ovl3(void *);
extern void func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern s32 func_80121658(void);
extern void func_8011D67C(void);
extern void func_8011E548(void);
extern s32 D_800EB4E0[];
extern f32 D_801974EC_ovl3;

extern void func_80122FB0(s32);
extern s32 random_soft_s32_range(s32);
extern void play_sound(s32);
extern void func_80122B40(void);
extern s32 D_80196C98_ovl3;
extern GObj *D_800D79B0[];
extern s32 func_800AA888(s32);
extern void func_80122F08(s32);
extern s32 func_80121194(void);
extern void func_801230E8(s32, s32, s32);
extern void func_80120A28(void);
extern void func_800AF27C(void);
extern u8 *D_8012BCA0[];
extern s32 func_80123170(void);
extern void func_800FB914(s32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern s32 func_8010DF9C(f32 *);
extern Unk80196C74 D_80196C5C_ovl3;
extern s32 func_801215DC(void);
extern void func_8011ED68(void);
extern void omGMoveObjDL(struct GObj *, u8, s32);
extern void func_801762E0_ovl3(struct GObj *);
extern void func_80174AEC_ovl3(s32, s32, f32);
extern struct GObjProcess *gEntityGObjProcessArray4[];
extern s32 D_800DDE10[];
extern void func_801770E0_ovl3(struct GObj *);
extern void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
extern void func_8011CF58(void);

extern f32 D_801974E0_ovl3;
extern f32 D_801974E4_ovl3;
extern f32 D_801974E8_ovl3;
extern s32 D_800DE190[];
extern s32 D_8012E7E8;
extern char D_80190F2C_ovl3[];
extern s32 func_80111A04(char *, s32);
extern void func_80111C4C(s32);
extern void set_kirby_action_1(s32, s32);
extern f32 *D_801926E8_ovl3[];
extern f32 *D_80192704_ovl3[];
extern u8 D_80190358_ovl3[];
extern s32 D_800DFA10[];
extern void func_800AFA54(s32);
extern void func_801708A0_ovl3(s32, s32, f32);
extern void func_8017492C_ovl3(s32, s32, f32);
extern s32 func_80179060_ovl3(f32);
extern s32 D_8012E860;
extern f32 D_80197504_ovl3;
extern f32 D_80197508_ovl3;
extern void func_8011D614(void);
extern f32 D_80197528_ovl3;
extern f32 D_801973A8_ovl3;
extern void func_800AA78C(s32, s32, f32);
extern void func_80122CA0(s32, s32, f32);
extern s32 D_800E9560[];
extern s32 func_80153FC8_ovl3(void);
extern void func_80152348_ovl3(f32);
extern f32 D_801975EC_ovl3;
extern f32 D_80197500_ovl3;
extern f32 *D_801928BC_ovl3[];
extern void func_8011DC04(s32);
extern void func_8011DC30(s32);
extern void func_800AA154(s32);
extern s32 func_801BBFE4_ovl7(void);
extern s32 func_801BC27C_ovl7(s32, s32);
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern void func_801A9618_ovl7(struct GObj *);
extern s32 D_800E8220[];
extern f32 D_80197434_ovl3;
extern u16 D_80196D68_ovl3;
extern void func_8017404C_ovl3(s32, s32, f32);
extern struct GObjProcess *gEntityGObjProcessArray[];
extern void func_8012310C(s32);
extern void func_80174680_ovl3(s32, s32, f32);
extern void func_800A8100(s32, s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s")

void func_8016C510_ovl3(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 86, &D_80196990_ovl3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016CA8C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D1E8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D3A8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D81C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DA14_ovl3.s")

void func_8016DD0C_ovl3(s32 arg0) {
    Unk80196C74 sp18 = D_80196C5C_ovl3;

    func_80153984_ovl3();
    func_8011CF58();
    if (func_80151E94_ovl3(&sp18) == 0) {
        if ((0.0f == D_800E64D0[omCurrentObj->objId]) && !(gKirbyController.buttonHeld & 0x300)) {
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0, 1);
        } else if (func_801215DC() == 2) {
            gKirbyState.isTurning |= 1;
        }
        func_8011ED68();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016DDE8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E15C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E638_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E8A0_ovl3.s")

void func_8016EE5C_ovl3(GObj *arg0) {
    if ((gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) && (gKirbyState.unk4 == 0)) {
        func_80111C4C(func_80111A04(D_80190F2C_ovl3, omCurrentObj->objId));
    }
    if (gKirbyController.buttonHeld & 0x8000) {
        D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
        D_800E6690[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId];
        set_kirby_action_1(3, 5);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016EF5C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F240_ovl3.s")

void func_8016F6DC_ovl3(GObj *arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 6;
    func_80122B40();
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x200B5, 0x200B6, 1);
            break;
        case 1:
            func_801230E8(0x20171, 0x20172, 1);
            break;
        case 2:
            func_801230E8(0x200CB, 0x200CC, 1);
            break;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_8016F7C8_ovl3(s32 arg0) {
    Unk80196C74 sp18 = D_80196C74_ovl3;

    func_80153984_ovl3();
    func_80151E94_ovl3(&sp18);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016F80C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FB58_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FD88_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FFF8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801702F0_ovl3.s")

void func_80170638_ovl3(GObj *arg0) {
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk68 != 3) {
            gKirbyState.unk68 = 0;
        } else {
            gKirbyState.unk68 = 3;
        }
        if (gKirbyState.ceilingCollisionNext != 0) {
            func_80153FC8_ovl3();
            func_80152348_ovl3(10.0f);
        } else {
            D_800E8920[omCurrentObj->objId] = 0;
        }
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3210[omCurrentObj->objId] = 0;
            set_kirby_action_1(0, 1);
        } else {
            set_kirby_action_1(6, 6);
        }
    } else if (func_80153FC8_ovl3() != 0) {
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801973A8_ovl3;
    } else {
        func_8011ED68();
    }
}

void func_80170794_ovl3(GObj *arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xA;
    func_80120A28();
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    if (func_800AA888(0x20009) == 0) {
        func_80122F08(0x20009);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    }
    func_801230E8(0x20167, 0x20168, 0);
    D_800DF310[omCurrentObj->objId] = func_801708A0_ovl3;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801708A0_ovl3.s")

void func_80170A24_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        if (func_800AA888(0x20007) == 0) {
            func_80122F08(0x20007);
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170AC4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801712F8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80171E00_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801727D8_ovl3.s")

void func_80172A3C_ovl3(s32 arg0) {
    s32 sp1C = D_80196C98_ovl3;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp1C) == 0) {
        if (!(gKirbyState.isTurning & 1)) {
            if (func_80121194() != 0) {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.5f;
            }
        }
    }
    if (gKirbyState.unk30 != 0) {
        set_kirby_action_1(6, 6);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172AE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173260_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801736BC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173AF4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173CB4_ovl3.s")

void func_80173E40_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            func_8011D67C();
        }
    }
}

#ifdef MIPS_TO_C
// 6 diffs: IDO swaps $f0/$f2 between the 0.0f and the D_80197434_ovl3 load
void func_80173EC0_ovl3(GObj *arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 4;
    }
    func_8011CF58();
    temp = D_80197434_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x19;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    if ((s8) gKirbyState.unkE == 0) {
        func_801230E8(0x20113, 0x20114, 0);
    } else {
        func_801230E8(0x20115, 0x20116, 0);
    }
    D_800DF310[omCurrentObj->objId] = func_8017404C_ovl3;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80173EC0_ovl3.s")
#endif

void func_8017404C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = *(s8 *) &gKirbyState.unkE;
            if (temp == 0) {
                if (random_soft_s32_range(3) & 2) {
                    play_sound(0xDE);
                } else {
                    play_sound(0xDF);
                }
                play_sound(0xE7);
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = 5;
            } else if (temp == (s8) arg2) {
                if (random_soft_s32_range(3) & 2) {
                    play_sound(0xDE);
                } else {
                    play_sound(0xDF);
                }
                play_sound(0xE7);
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = 5;
            }
        }
    }
}

void func_80174144_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (gKirbyState.unkD != 4) {
        func_801217B8();
        if (gKirbyState.unk30 != 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                set_kirby_action_1(0, 1);
            }
        }
    }
}

void func_801741DC_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xF;
    gKirbyState.unk4 = 0;
    gKirbyState.unk68 = 0;
    gKirbyState.unkD = -1;
    if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    func_801230E8(0x2010F, 0x20110, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174284_ovl3.s")

#ifdef MIPS_TO_C
// all temp registers are allocated one slot lower than the ROM
void func_80174504_ovl3(GObj *arg0) {
    s32 temp;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    gKirbyState.unkD = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.firstInhale = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    func_80120A28();
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        func_801230E8(0x20146, 0x20147, 0);
    } else {
        if (gKirbyState.ability < 8) {
            temp = func_801BBFE4_ovl7();
        } else {
            temp = func_801BC27C_ovl7(gKirbyState.ability, 0);
        }
        if (temp != -1) {
            D_800E8220[temp] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[temp], func_801A9618_ovl7);
            gKirbyState.unk4 = 1;
            gKirbyState.currentInhale = gKirbyState.ability;
        }
        gKirbyState.ability = 0;
        func_8012310C(0);
        func_801230E8(0x20144, 0x20145, 0);
    }
    D_800DF310[omCurrentObj->objId] = func_80174680_ovl3;
    func_800AF27C();
    gKirbyState.unkD = 2;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174504_ovl3.s")
#endif

void func_80174680_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            play_sound(0xE6);
            gKirbyState.unk4 = 2;
            gKirbyState.currentInhale = 0;
            gKirbyState.unkD = 1;
        }
    }
}

void func_801746E0_ovl3(GObj *arg0) {
    func_80153984_ovl3();
    if (func_801217B8() != 0) {
        func_80122B40();
        func_80122FB0(1);
    }
    if (gKirbyState.unk30 != 0) {
        if ((gKirbyState.unkB8 == 6) && (func_80179060_ovl3(40.0f) == 0)
         && (gKirbyState.unkA == 0) && (gKirbyState.unkBA == 0)) {
            set_kirby_action_1(0x1F, 0x14);
            return;
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    } else if (gKirbyController.buttonPressed & 0x3F) {
        gKirbyState.unkA = 3;
    }
}

void func_801747F0_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x11;
    func_80120A28();
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 3;
    }
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    func_801230E8(0x2014E, 0x2014F, 0);
    D_800DF310[omCurrentObj->objId] = func_8017492C_ovl3;
    func_800AF27C();
    if (gKirbyState.unkD != -2) {
        func_80122F08(0x20009);
        func_801230E8(0x20173, 0x20174, 0);
        gKirbyState.unk154 = 2;
        D_800E0490[omCurrentObj->objId] = D_80192704_ovl3;
    } else {
        gKirbyState.unk4 = 0;
        gKirbyState.unkD = -1;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_8017492C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (gKirbyState.unkD != -2) {
                play_sound(0xE5);
                gKirbyState.unk4 = 1;
                gKirbyState.unkD = -1;
            }
        }
    }
}

void func_8017499C_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

void func_80174A30_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x12;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_80120A28();
    func_801230E8(0x200DF, 0x200E0, 0);
    D_800DF310[omCurrentObj->objId] = func_80174AEC_ovl3;
    func_800AF27C();
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80174AEC_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (random_soft_s32_range(3) & 2) {
                play_sound(0xDE);
            } else {
                play_sound(0xDF);
            }
            play_sound(0xE7);
            gKirbyState.unk4 = 0;
            if (gKirbyState.unkD != -2) {
                gKirbyState.unkD = 8;
            }
        }
    }
}

void func_80174B7C_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E8920[omCurrentObj->objId] == 0) {
            set_kirby_action_1(6, 6);
        } else {
            set_kirby_action_1(0, 1);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80174C10_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80175754_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017599C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801760FC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801762E0_ovl3.s")

void func_80176398_ovl3(void) {
    GObj *obj = HS64_omMakeGObj(2, NULL, 0x19, 0x80000000);

    if (obj != NULL) {
        omLinkGObjDL(obj, func_801762E0_ovl3, 0xC, 0x80000000, -1);
    }
    D_80198824_ovl3 = 1;
    omGMoveObjDL(D_800DE350[omCurrentObj->objId], 0xC, 0x80000000);
    D_800D79B0[1]->flags &= ~1;
    ((s32 *) D_800D79B0[1]->data.ptr)[0x20] |= 1;
}

void func_8017644C_ovl3(void) {
    if (D_80198824_ovl3 != 0) {
        D_80198824_ovl3 += 5;
        if (D_80198824_ovl3 >= 0xFF) {
            D_80198824_ovl3 = 0xFF;
        }
    }
}

void func_80176484_ovl3(void) {
    D_80198824_ovl3 = 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176490_ovl3.s")

void func_80176814_ovl3(s32 arg0) {
    if (gKirbyState.unk30 != 0) {
        func_80153984_ovl3();
        if (func_80121658() != 0) {
            gKirbyState.unk30 = 0;
        }
    }
    func_8011E548();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176860_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80176DE0_ovl3.s")

void func_80177000_ovl3(s32 arg0) {
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], func_801770E0_ovl3);
    D_800DE190[omCurrentObj->objId] = 0;
    D_800DDE10[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 2, D_80196CA8_ovl3);
}

void func_80177098_ovl3(GObj *arg0) {
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 2, &D_80196CA8_ovl3);
}

extern FUNCLIST D_80196CB0_ovl3;
void func_80120E74(struct GObj *);

void func_801770E0_ovl3(struct GObj *arg0) {
    utilFuncTableJump(D_800DE190[omCurrentObj->objId], 2, &D_80196CB0_ovl3);
    func_80120E74(arg0);
}

void func_80177130_ovl3(s32 arg0) {
    D_800DE190[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_8017716C_ovl3(s32 arg0) {
}

void func_80177174_ovl3(GObj *arg0) {
    D_800EB4E0[omCurrentObj->objId] = 0;
    D_800DE190[omCurrentObj->objId] = 1;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_801974E0_ovl3;
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + D_801974E4_ovl3;
    ohSleep(2);
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + D_801974E8_ovl3;
    ohSleep(2);
    D_800EB4E0[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId] + 1;
    curObjSleepForever();
}

void func_80177270_ovl3(s32 arg0) {
    if (D_800EB4E0[omCurrentObj->objId] != 0) {
        gEntitiesScaleYArray[omCurrentObj->objId] = D_801974EC_ovl3;
        func_80122FB0(0);
    }
}

s32 func_801772CC_ovl3(s32 arg0) {
    return D_80196CB8_ovl3[arg0];
}

void func_801772E0_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1A;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177438_ovl3.s")

void func_801776E8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1B;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    if (!(gKirbyController.buttonHeld & 0x300)) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -gKirbyState.unkBC;
        D_800E6850[omCurrentObj->objId] = 0;
    }
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017782C_ovl3.s")

void func_80177B40_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1C;
    gKirbyState.unk3C = gKirbyState.turnDirection;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_80197500_ovl3;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[omCurrentObj->objId] = func_80122CA0;
    curObjSleepForever();
}

void func_80177CBC_ovl3(GObj *arg0) {
    s16 sp24[2];

    sp24[0] = D_80196D68_ovl3;
    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if (func_80151E94_ovl3(sp24) == 0) {
        if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1) && (func_80121194() != 0)) {
            gKirbyState.isTurning |= 1;
        }
        if (((gKirbyState.unk17 != 0) && (gKirbyState.unkB == 4)) || (gKirbyState.unkB == 3)) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (func_80179060_ovl3(60.0f) == 0) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                set_kirby_action_1(1, 3);
            } else {
                set_kirby_action_1(6, 6);
            }
        }
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    }
}

void func_80177E78_ovl3(GObj *arg0) {
    f32 temp;

    *(s16 *) ((u8 *) &D_8012E860 + 0x1A) = 1;
    func_8011D614();
    D_800DDFD0[omCurrentObj->objId] = 0x1D;
    D_800E8920[omCurrentObj->objId] = 0;
    play_sound(0x245);
    temp = D_80197504_ovl3;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = D_80197508_ovl3;
    D_800E3C90[omCurrentObj->objId] = 3.5f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * temp;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = temp;
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80177FB4_ovl3.s")

void func_801782C8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1E;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkC0;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    D_800E6850[omCurrentObj->objId] = 0;
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178420_ovl3.s")

void func_80178728_ovl3(GObj *arg0) {
    gKirbyState.unkBA = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1F;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3210[omCurrentObj->objId] = 0;
    D_800E3750[omCurrentObj->objId] = gKirbyState.unkC4;
    if (gKirbyState.unkC8 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -gKirbyState.unkC8;
    } else {
        D_800E3C90[omCurrentObj->objId] = gKirbyState.unkC8;
    }
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017883C_ovl3.s")

void func_801789D8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x20;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = D_80197528_ovl3;
    gKirbyState.unk44 = 0;
    gKirbyState.unk3C = 2;
    D_800E9560[omCurrentObj->objId] = 8;
    func_800AA78C(0x200CF, 0x20007, 3.0f);
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[omCurrentObj->objId] = func_80122CA0;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80178B18_ovl3.s")

s32 func_80179060_ovl3(f32 arg0) {
    f32 sp28[4];
    s32 count;
    s32 i;

    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        sp28[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp28[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
        sp28[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        count = func_8010DF9C(sp28);
        for (i = 0; (u32) i < (u32) count; i++) {
            if (D_8012BCA0[i + 0x10][4] == 1) {
                return 1;
            }
        }
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179130_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179370_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017982C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80179C28_ovl3.s")

void func_8017A2C0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                temp = func_80123170();
                func_800FB914(1);
                play_sound(0x120);
                if (temp != -1) {
                    func_800A7F74(5, 1, temp, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017A390_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B068_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B3C4_ovl3.s")

void func_8017B78C_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x24;
    D_800E0490[omCurrentObj->objId] = D_801928BC_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    func_80122F08(0x2000E);
    gKirbyState.unk154 = 2;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801975EC_ovl3;
        gKirbyState.isTurning |= 0x4000;
    }
    func_8011DC04(0x139);
    func_8011DC30(0x26E);
    func_800AA154(0x20193);
    func_800AA154(0x20194);
    func_800AA154(0x20195);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017B8F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017BD68_ovl3.s")

void func_8017BEF4_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017BF34_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017C1FC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017C418_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017CAF8_ovl3.s")

