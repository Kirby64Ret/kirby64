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
extern s32 func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern s32 func_80121658(void);
extern void func_8011D67C(void);
extern void func_8011E548(void);
extern s32 D_800EB4E0[];
/* D_801974EC_ovl3 now emitted by this TU */

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

/* D_801974E0_ovl3 now emitted by this TU */
/* D_801974E4_ovl3 now emitted by this TU */
/* D_801974E8_ovl3 now emitted by this TU */
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
/* D_80197504_ovl3 now emitted by this TU */
/* D_80197508_ovl3 now emitted by this TU */
extern void func_8011D614(void);
/* D_80197528_ovl3 now emitted by this TU */
/* D_801973A8_ovl3 now emitted by this TU */
extern void func_800AA78C(s32, s32, f32);
extern void func_80122CA0(s32, s32, f32);
extern s32 D_800E9560[];
extern s32 func_80153FC8_ovl3(void);
extern void func_80152348_ovl3(f32);
extern f32 D_801975EC_ovl3;
/* D_80197500_ovl3 now emitted by this TU */
extern f32 *D_801928BC_ovl3[];
extern void func_8011DC04(s32);
extern void func_8011DC30(s32);
extern void func_800AA154(s32);
extern s32 func_801BBFE4_ovl7(void);
extern s32 func_801BC27C_ovl7(s32, s32);
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern void func_801A9618_ovl7(struct GObj *);
extern s32 D_800E8220[];
/* D_80197434_ovl3 now emitted by this TU */
extern u16 D_80196D68_ovl3;
extern void func_8017404C_ovl3(s32, s32, f32);
extern struct GObjProcess *gEntityGObjProcessArray[];
extern void func_8012310C(s32);
extern void func_80174680_ovl3(s32, s32, f32);
extern s32 func_800A8100(s32, s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016BF60_ovl3.s")

void func_8016C510_ovl3(GObj *arg0) {
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 86, &D_80196990_ovl3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016C558_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016CA8C_ovl3.s")

typedef struct Unk80196C4C {
    u8 unk0[5];
} Unk80196C4C;

extern Unk80196C4C D_80196C4C_ovl3;

void func_8016D1E8_ovl3(GObj *arg0) {
    Unk80196C4C sp28 = D_80196C4C_ovl3;

    D_800E98E0[omCurrentObj->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    func_8011CF58();
    if ((func_80151E94_ovl3(&sp28) != 0) || (gKirbyState.unk17 != 0)) {
        gKirbyState.isTurning &= ~2;
    } else if (gKirbyState.unk150 != 0) {
        if (gKirbyState.turnDirection == 0) {
            if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
            }
        } else if (D_800E9AA0[omCurrentObj->objId].as_s32 == 0) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
        }
        D_800E9AA0[omCurrentObj->objId].as_s32 = gKirbyState.turnDirection;
    } else if (gKirbyState.unk150 != D_800E98E0[omCurrentObj->objId]) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8016C510_ovl3);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016D3A8_ovl3.s")

typedef struct Unk80196C54 {
    u8 unk0[8];
} Unk80196C54;

extern Unk80196C54 D_80196C54_ovl3;

void func_8016D81C_ovl3(GObj *arg0) {
    Unk80196C54 sp20 = D_80196C54_ovl3;
    void func_800AECC0(f32);
    void func_800AED20(f32);
    s32 func_801210FC(void);
    void func_801219C8(void);

    func_80153984_ovl3();
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
    }
    if (func_80151E94_ovl3(&sp20) == 0) {
        func_801219C8();
        if (!(gKirbyState.isTurning & 1)) {
            if (func_801210FC() == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    if (D_800E9720[omCurrentObj->objId] < 0xA) {
                        D_800E9720[omCurrentObj->objId] = D_800E9720[omCurrentObj->objId] + 1;
                    }
                }
            } else if (gKirbyController.buttonHeld & 0x300) {
                if ((D_800E9720[omCurrentObj->objId] > 0) && (D_800E9720[omCurrentObj->objId] < 7)) {
                    gKirbyState.unk38 = arg0->animTimer * 0.5f;
                    if (25.0f <= gKirbyState.unk38) {
                        gKirbyState.unk38 = gKirbyState.unk38 - 25.0f;
                    }
                    set_kirby_action_1(2, 4);
                } else {
                    D_800E9720[omCurrentObj->objId] = 0;
                }
            }
        } else {
            gKirbyState.unk44 = 0;
            D_800E9720[omCurrentObj->objId] = 0;
        }
    }
    func_8011ED68();
}

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

#ifdef NON_MATCHING
/* 46/154: instruction-for-instruction exact, same length, same branches; every
   $t register is exactly ONE lower than the ROM's ($t7->$t6 for the `3`, and so
   on uniformly through both switches and the ohSleep loop), so IDO started the
   temp cycle one slot earlier. Swept: `s32 arg0` instead of `GObj *arg0`, and
   the unk4 test written `!= 1` with the arms swapped (byte-identical output --
   the polarity of this if does NOT reach codegen here). Nothing in the source
   changes the count of values, which is what the cycle start follows. */
extern u8 D_801903E0_ovl3[];

void func_8016E638_ovl3(GObj *arg0) {
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E8920[omCurrentObj->objId] = 0;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x2009F, 0x20007, 3.0f);
    } else {
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    }
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x2009F, 0x200A0, 0);
            break;
        case 1:
            func_801230E8(0x2016D, 0x2016E, 0);
            break;
        case 2:
            func_801230E8(0x200C7, 0x200C8, 0);
            break;
    }
    while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
        ohSleep(1);
    }
    gKirbyState.isFullJump = gKirbyState.isFullJump + 1;
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x200A1, 0x200A2, 1);
            break;
        case 1:
            func_801230E8(0x2016F, 0x20170, 1);
            break;
        case 2:
            func_801230E8(0x200C9, 0x200CA, 1);
            break;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016E638_ovl3.s")
#endif

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

extern u8 D_801903E0_ovl3[];

void func_8016EF5C_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 5;
    /* the collapsed form of this if/else is load-bearing: expanded over five
       lines IDO fills the branch delay slot with the other arm's lui (2/185) */
    if (gKirbyState.unk4 == 1) { D_800E0490[omCurrentObj->objId] = D_80192704_ovl3; } else { D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3; }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    D_800E9720[omCurrentObj->objId] = 0x17;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_80120A28();
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
    switch (gKirbyState.unk4) {
        case 0:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20089, 0x20007, 12.0f);
            }
            func_801230E8(0x20089, 0x2008A, 0);
            break;
        case 1:
            if (func_800AA888(0x20009) == 0) {
                func_80122F08(0x20009);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20165, 0x20009, 12.0f);
            }
            func_801230E8(0x20165, 0x20166, 0);
            break;
        case 2:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x200C1, 0x20007, 12.0f);
            }
            func_801230E8(0x200C1, 0x200C2, 0);
            break;
    }
    curObjSleepForever();
}

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

typedef struct Unk80196C7C {
    u8 unk0[6];
} Unk80196C7C;

extern Unk80196C7C D_80196C7C_ovl3;
extern u8 D_80190F94_ovl3[];

void func_8016FB58_ovl3(GObj *arg0) {
    Unk80196C7C sp20 = D_80196C7C_ovl3;
    s32 func_8016854C_ovl3(s32, s32, f32);

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp20) == 0) {
        if ((gKirbyState.unk17 == 0) || (gKirbyState.unkB != 2)) {
            if (gKirbyState.unk44 == 1) {
                func_8016854C_ovl3((s32) D_80190F94_ovl3, (s32) arg0->data.dobj->firstChild, 1.0f);
            }
            if (gKirbyState.unk44 == 3) {
                if (D_800E3210[omCurrentObj->objId] <= 0.0f) {
                    set_kirby_action_1(6, 6);
                }
            } else {
                if ((D_800E8920[omCurrentObj->objId] != 0) || ((D_800E83E0[omCurrentObj->objId] & 0xFFFF) == 2)) {
                    gKirbyState.unk44 = 2;
                }
                if (D_800E8AE0[omCurrentObj->objId] & 6) {
                    func_8011CF58();
                    D_800E3750[omCurrentObj->objId] = -0.4f;
                    D_800E3C90[omCurrentObj->objId] = 4.0f;
                }
            }
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
}

#ifdef NON_MATCHING
/* 137/155: shape and every call/loop are right, but the ROM keeps the
   gKirbyState base in CALLER-saved registers as two short ranges ($v0 for the
   unk30/unkA pair, $a3 for the unk15C/abilityInUse pair) and spends its one
   callee-saved register ($s0) on the hoisted 0x20105 argument and then on
   &gKirbyController; this C hands $s0 to the gKirbyState base instead and
   everything downstream renumbers. Swept: a temp for the abilityInUse read
   (no change). The two-group split is not reachable from any spelling of the
   field accesses tried -- D_8012E7DC/D_8012E80C-style separate symbols cannot
   apply here because the ROM's two groups each SHARE one base register. */
extern u8 D_80190448_ovl3[];

void func_8016FD88_ovl3(GObj *arg0) {
    extern s32 D_800D6F10;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    D_800E9720[omCurrentObj->objId] = 5;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 8;
    func_80120A28();
    gKirbyState.unk15C = (u32) D_80190448_ovl3;
    D_800E98E0[omCurrentObj->objId] = gKirbyState.abilityInUse;
    D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    if (gKirbyState.abilityInUse == 0x12) {
        func_801693C4_ovl3(9);
        func_801230E8(0x20109, 0x2010A, 1);
        func_801230E8(0x2010B, 0x2010C, 0);
        D_800D6F10 = 1;
        while (gKirbyController.buttonHeld & 0x400) {
            ohSleep(1);
        }
        D_800D6F10 = 0;
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
        func_801230E8(0x2010D, 0x2010E, 1);
    } else {
        func_800AA78C(0x20105, 0x20007, 3.0f);
        func_801230E8(0x20105, 0x20106, 0);
        D_800D6F10 = 1;
        while (gKirbyController.buttonHeld & 0x400) {
            ohSleep(1);
        }
        D_800D6F10 = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = D_800E9AA0[omCurrentObj->objId].as_s32 + 1;
        func_801230E8(0x20107, 0x20108, 1);
    }
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = *(s32 *) ((u8 *) &D_8012E7E8 + 8) + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8016FD88_ovl3.s")
#endif

typedef struct Unk80196C84 {
    u8 unk0[3];
} Unk80196C84;

extern Unk80196C84 D_80196C84_ovl3;

struct UnkD6F58 {
    u8 pad0[0x50];
    u32 unk50;
    u32 unk54;
    u32 unk58;
};

extern struct UnkD6F58 D_800D6F58;

void func_8016FFF8_ovl3(GObj *arg0) {
    Unk80196C84 sp24 = D_80196C84_ovl3;
    s32 func_80122460(void);
    extern s32 D_800D6F10;

    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp24) != 0) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        return;
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (D_800E98E0[omCurrentObj->objId] == 0x12) {
            func_8011CF58();
            func_801217B8();
            return;
        }
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        set_kirby_action_1(6, 6);
        return;
    }
    if ((gKirbyState.unk30 != 0) || (gKirbyState.unk17 != 0)) {
        D_800D6F10 = 0;
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
        }
        set_kirby_action_1(0, 1);
        return;
    }
    if ((D_800D6F58.unk54 == 0) && (D_800E9720[omCurrentObj->objId] == 0) && (func_80122460() != 0)
        && (gKirbyController.buttonHeld & 0x400) && (gKirbyState.unk4 == 0)) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        *(u16 *) &D_8012BCA0 = *(u16 *) &D_8012BCA0 & 7;
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
        if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
    } else if ((gKirbyController.buttonHeld & 0x400) && (gKirbyController.buttonPressed & 0x8000)) {
        gKirbyState.unkA = 2;
    }
    if (!(gKirbyState.isTurning & 1)) {
        if (gKirbyState.unkA == 2) {
            D_800D6F10 = 0;
            gKirbyState.unkA = 0;
            set_kirby_action_1(0x19, 0xF);
        }
    }
    if (D_800E9720[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] = D_800E9720[omCurrentObj->objId] - 1;
    }
}

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
        D_800E6850[omCurrentObj->objId] = 65535.0f;
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

#ifdef NON_MATCHING
/* 3/97: instruction-for-instruction exact; the shared 0.0f constant lands in
   $f14 where the ROM uses $f0 (the three c.eq.s/c.lt.s operands). Swept: `||`
   vs two early returns, nesting instead of returns, a named `zero` local,
   swapping the two guards, integer/double zero spellings, and dropping the
   change_kirby_hp prototype (77 diffs). The integer `0` in `temp < 0` IS
   load-bearing -- it forks the second zero the ROM materialises separately. */
extern f32 gKirbyHp;

void func_801708A0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    f32 temp;
    s32 flags;
    void change_kirby_hp(f32);
    void change_kirby_lives(s32);
    void func_80121F14(void);
    void func_8011E190(void);
    void func_800BB468(s32, s32);

    if (arg1 != 0) {
        return;
    }
    if (arg2 == 0.0f) {
        return;
    }
    temp = *(f32 *) &gKirbyState.unk84;
    if (temp != 0.0f) {
        if (temp < 0) {
            if (1.0f <= gKirbyHp + temp) {
                change_kirby_hp(temp);
            } else {
                change_kirby_hp(-(gKirbyHp - 1.0f));
            }
            play_sound(0xDA);
        } else {
            change_kirby_hp(temp);
        }
        *(f32 *) &gKirbyState.unk84 = 0.0f;
    }
    flags = gKirbyState.unk8C;
    if (flags & 0xFFFF) {
        if (flags & 1) {
            play_sound(0xCA);
            func_80121F14();
        } else if (flags & 2) {
            play_sound(0xCB);
        }
    } else if (gKirbyState.unk88 != 0) {
        play_sound(1);
        change_kirby_lives(gKirbyState.unk88);
        gKirbyState.unk88 = 0;
    } else if (gKirbyState.unk8 != 0) {
        play_sound(0xCA);
    }
    func_8011E190();
    play_sound(0xE8);
    gKirbyState.unk4 = 0;
    gKirbyState.unk8 = 0;
    gKirbyState.numberInhaled = 0;
    gKirbyState.unkD = 7;
    func_800BB468(0xB, 0xA);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801708A0_ovl3.s")
#endif

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

extern f32 *D_80192720_ovl3[];
extern u8 D_801903E0_ovl3[];
/* D_801973AC_ovl3 now emitted by this TU */
void func_80170AC4_ovl3(s32 arg0) {
    f32 val; f32 step;
    void func_800AECC0(f32); void func_800AED20(f32);
    switch (gKirbyState.unk44) {
    case 0:
        gKirbyState.unkA = 0;
        gKirbyState.unk4C = 0;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xB;
        D_800E0490[omCurrentObj->objId] = D_80192720_ovl3;
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        func_800AFA54(D_800DFA10[omCurrentObj->objId]);
        func_801230E8(0x20093, 0x20094, 1);
        if ((s32) gKirbyState.floatTimer < 0x3C) {
            gKirbyState.unk44 = 2;
            goto case2;
        }
        gKirbyState.unk44 = 1;
    case 1:
        play_sound(0xE0);
        gKirbyState.unk2C = 3;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -1.0f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
        func_801230E8(0x20095, 0x20096, 1);
        D_800E3750[omCurrentObj->objId] = -0.125f;
        D_800E3C90[omCurrentObj->objId] = 2.0f;
        func_801230E8(0x20097, 0x20098, 0);
        break;
    case 2:
    case2:
        D_800E3210[omCurrentObj->objId] = 0.0f;
        D_800E3750[omCurrentObj->objId] = -0.125f;
        D_800E3C90[omCurrentObj->objId] = 2.0f;
        func_801230E8(0x20099, 0x2009A, 0);
        val = 2.0; /* double: load-bearing, forks IDO's shared 0x40000000 */
        step = 0.06666667f;
        while (1) {
            func_800AECC0(val);
            func_800AED20(val);
            val = val + step;
            ohSleep(1);
        }
    }
    curObjSleepForever();
}
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80170D88_ovl3.s")

#ifdef NON_MATCHING
/* 45/318: every instruction and both switch shapes are right; the residue is a
   two-register swap plus its knock-on. The ROM gives $a1 to the D_800E6690 base
   and $a2 to the gKirbyState base; this C gives $a1 to gKirbyState and $a2 to
   D_800E6690, and correspondingly $f0/$f2 are swapped between the shared 0.0f
   and the 65535.0f literal (which pushes 6.0f into $f12 in the case 1/5 arms).
   Measured: spelling BOTH gKirbyState.floatTimer and the case 4 store as
   gKirbyState fields costs 59; using D_8012E7DC/D_8012E80C for those two (the
   spelling src/ovl2/plylib.c uses for the same words) takes it to 45 by cutting
   the gKirbyState base to four uses. Also swept: moving `gKirbyState.unk4C = 0`
   one statement later (88), two later (94), before D_800DDFD0 (101), and an
   integer 0 for D_800E6690 (266 -- the two 0.0f stores must share one mtc1). */
void func_801712F8_ovl3(GObj *arg0) {
    s32 func_800AA934(s32);
    extern s16 D_80198838_ovl3;
    extern u32 D_8012E7DC;
    extern s32 D_8012E80C;

    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) {
        D_8012E7DC = 0xF0;
        D_80198838_ovl3 = 3;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xC;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 1;
        D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (gKirbyState.previousAction != 0x1E) {
            play_sound(0x103);
        }
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 = gKirbyState.unk30 + 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 1:
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 0.0f;
            func_800AA78C(0x200B1, 0x20007, 6.0f);
            func_801230E8(0x200B1, 0x200B2, 0);
            break;
        case 2:
            D_800E8920[omCurrentObj->objId] = 0;
            if (func_800AA934(0x200AD) != 0) {
                func_800AA78C(0x200B1, 0x20007, 3.0f);
            }
            func_800AA78C(0x200AB, 0x20007, 3.0f);
            func_801230E8(0x200AB, 0x200AC, 0);
            break;
        case 3:
            if (func_800AA934(0x200AB) != 0) {
                func_800AA78C(0x200B1, 0x20007, 3.0f);
            }
            func_800AA78C(0x200AD, 0x20007, 3.0f);
            func_801230E8(0x200AD, 0x200AE, 0);
            break;
        case 4:
            func_800AA78C(0x200AF, 0x20007, 3.0f);
            func_801230E8(0x200AF, 0x200B0, 0);
            func_8011DC04(0x100);
            D_8012E80C = func_800A8100(5, 1, 0x2B, (s32) D_800DFBD0[omCurrentObj->objId][2]);
            break;
        case 5:
            D_800E8920[omCurrentObj->objId] = 0;
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 1.5f;
                D_800E6850[omCurrentObj->objId] = 1.5f;
                D_800E3210[omCurrentObj->objId] = 6.0f;
                D_800E3750[omCurrentObj->objId] = -0.4f;
                D_800E3C90[omCurrentObj->objId] = 6.0f;
            } else {
                D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
                D_800E6850[omCurrentObj->objId] = 3.0f;
                D_800E3210[omCurrentObj->objId] = 12.0f;
                D_800E3750[omCurrentObj->objId] = -0.9806650281f;
                D_800E3C90[omCurrentObj->objId] = 17.0f;
            }
            play_sound(0xEA);
            func_801230E8(0x200B3, 0x200B4, 1);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801712F8_ovl3.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_801717F0_ovl3.s")

#ifdef NON_MATCHING
/* 6/269: every instruction is present and the whole prologue, switch and the
   other five arms are exact. In the case 0/1 arm the ROM schedules `li $t3,1`
   and `lui $at,%hi(D_800E9AA0)` into the block BEFORE the `bnez`, filling the
   delay slot with `ori $a0`; this C leaves both inside the taken block and the
   delay slot takes `lui $at`. Swept: as_s32 vs as_u32, `== 0` vs an inverted
   `!= 0`/empty-then, and the body collapsed onto one line -- all 6/269. The
   integer `0` (not `0.0f`) in the two arm stores and in the angle.v.y store IS
   load-bearing: it forks the zero the ROM materialises per store, and `0.0f`
   there CSEs into one register and costs 210 diffs. */
void func_80171E00_ovl3(GObj *arg0) {
    s32 func_800AA934(s32);
    void func_8011E234(void);
    extern s16 D_80198838_ovl3;

    if (gKirbyState.unk30 == 0) {
        gKirbyState.floatTimer = 0xF0;
        D_80198838_ovl3 = 3;
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0xD;
        gKirbyState.unk3C = 0;
        gKirbyState.unk4C = 0;
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
        D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32;
        arg0->data.dobj->firstChild->angle.v.y = 0;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (gKirbyState.previousAction != 0x1E) {
            play_sound(0x103);
        }
        D_800E9720[omCurrentObj->objId] = 0;
        gKirbyState.unk30 = gKirbyState.unk30 + 1;
    }
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
        case 1:
            D_800E3210[omCurrentObj->objId] = 0;
            D_800E3C90[omCurrentObj->objId] = 0;
            func_800AA78C(0x200DB, 0x20007, 6.0f);
            if (D_800E98E0[omCurrentObj->objId] == 0) { D_800E9AA0[omCurrentObj->objId].as_s32 = 1; D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32; }
            func_801230E8(0x200DB, 0x200DC, 0);
            break;
        case 2:
            gKirbyState.unk7 = 0;
            D_800E8920[omCurrentObj->objId] = 0;
            if (func_800AA934(0x200D7) != 0) {
                func_800AA78C(0x200DB, 0x20007, 3.0f);
            }
            func_800AA78C(0x200D5, 0x20007, 3.0f);
            func_801230E8(0x200D5, 0x200D6, 0);
            break;
        case 3:
            gKirbyState.unk7 = 0;
            if (func_800AA934(0x200D5) != 0) {
                func_800AA78C(0x200DB, 0x20007, 3.0f);
            }
            func_800AA78C(0x200D7, 0x20007, 3.0f);
            func_801230E8(0x200D7, 0x200D8, 0);
            break;
        case 4:
            gKirbyState.unk7 = 0;
            func_800AA78C(0x200D9, 0x20007, 3.0f);
            func_801230E8(0x200D9, 0x200DA, 0);
            func_8011DC04(0x100);
            gKirbyState.unk4C = func_800A8100(5, 1, 0x29, (s32) D_800DFBD0[omCurrentObj->objId][1]);
            break;
        case 5:
            func_8011E234();
            func_800AA78C(0x2009B, 0x20007, 3.0f);
            D_800E98E0[omCurrentObj->objId] = 6;
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80171E00_ovl3.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_80172234_ovl3.s")

/* D_8019741C_ovl3 now emitted by this TU */
/* D_80197420_ovl3 now emitted by this TU */
/* D_80197424_ovl3 now emitted by this TU */

void func_801727D8_ovl3(s32 arg0) {
    *(s32 *) ((u8 *) &D_8012E7E8 + 8) = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (ABSF(D_800E64D0[omCurrentObj->objId]) < 1.0f) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 1.0f;
        }
        D_800E3210[omCurrentObj->objId] = 6.0f;
        D_800E3750[omCurrentObj->objId] = -0.4f;
        D_800E3C90[omCurrentObj->objId] = 6.0f;
    } else {
        if (ABSF(D_800E64D0[omCurrentObj->objId]) < 3.0f) {
            D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.0f;
            D_800E6850[omCurrentObj->objId] = 3.0f;
        }
        D_800E3210[omCurrentObj->objId] = 9.0f;
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 17.0f;
    }
    play_sound(0xEA);
    func_801230E8(0x200B3, 0x200B4, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

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

typedef struct Unk80196C9C {
    u16 unk0;
} Unk80196C9C;

extern Unk80196C9C D_80196C9C_ovl3;
extern s32 D_8012E7FC;
extern u8 D_801930CC_ovl3[];
extern u8 D_801910AC_ovl3[];
/* D_80197430_ovl3 now emitted by this TU */

void func_80173AF4_ovl3(s32 arg0) {
    Unk80196C9C sp1C = D_80196C9C_ovl3;
    s32 func_8016854C_ovl3(s32, s32, f32);
    void func_8011E0E8(void);

    if ((*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) && (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 0) &&
        (D_800E8920[omCurrentObj->objId] != 0)) {
        func_8015449C_ovl3(D_801930CC_ovl3, 0);
    }
    func_80153984_ovl3();
    if (func_80151E94_ovl3(&sp1C) != 0) {
        func_8011E0E8();
    }
    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) == 0) {
        if (*(s32 *) ((u8 *) &D_8012E7FC + 8) != 0) {
            return;
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            return;
        }
        func_8016854C_ovl3((s32) D_801910AC_ovl3, (s32) D_800DFBD0[omCurrentObj->objId][7], 1.0f);
        return;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (gKirbyController.buttonHeld & 0x400) {
        set_kirby_action_1(9, 0xE);
    } else if (D_800E8920[omCurrentObj->objId] != 0) {
        set_kirby_action_1(0, 1);
    } else {
        set_kirby_action_1(6, 6);
    }
}

void func_80173CB4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x18;
    func_80120A28();
    gKirbyState.unkD = 6;
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            func_800A8100(1, 1, 9, (s32) D_800DFBD0[omCurrentObj->objId][2]);
        } else {
            func_800A8100(1, 1, 8, (s32) D_800DFBD0[omCurrentObj->objId][2]);
        }
    } else {
        D_800EC2E0[func_801632B8_ovl3(0)].as_s32 = (s32) D_800DFBD0[omCurrentObj->objId][2];
    }
    gKirbyState.unk4 = 0;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    func_801230E8(0x20152, 0x20153, 1);
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

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

void func_80173EC0_ovl3(GObj *arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 4;
    }
    func_8011CF58();
    temp = 65535.0f;
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

void func_80174284_ovl3(GObj *arg0) {
    s32 func_80122460(void);

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            if (gKirbyState.unk24 != 0) {
                gKirbyState.unk24 = 0;
                D_800E7CE0[omCurrentObj->objId] = 0x2D;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            if (0 < D_800E3210[omCurrentObj->objId]) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
            }
            *(u16 *) &D_8012BCA0 = *(u16 *) &D_8012BCA0 & 7;
            set_kirby_action_1(0xA, 0xD);
            return;
        }
        D_800E3210[omCurrentObj->objId] = 0.0f;
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if ((gKirbyState.unk17 != 0) && ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2))) {
        if (gKirbyState.unk24 != 0) {
            gKirbyState.unk24 = 0;
        }
        return;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk24 != 0) {
            gKirbyState.unk24 = 0;
            D_800E7CE0[omCurrentObj->objId] = 0x2D;
        }
        func_8011D67C();
    }
}

void func_80174504_ovl3(GObj *arg0) {
    s32 temp;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    gKirbyState.unkD = 0;
    gKirbyState.firstInhale = gKirbyState.secondInhale = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x10;
    func_80120A28();
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        func_801230E8(0x20146, 0x20147, 0);
    } else {
        if ((s32) gKirbyState.ability < 8) {
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

void func_80175754_ovl3(GObj *arg0) {
    s32 func_80179130_ovl3(void);

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (gKirbyState.unk4 != 0) {
            if (gKirbyState.damageType >= 2) {
                D_800E7CE0[omCurrentObj->objId] = D_800E7CE0[omCurrentObj->objId] + 0x1A;
            }
        }
    }
    func_8011ED68();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/kirby/func_8017599C_ovl3.s")

void func_801760FC_ovl3(GObj *arg0) {
    s32 func_80179130_ovl3(void);

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[omCurrentObj->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if (gKirbyController.buttonHeld & 0x400) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
    }
}

#include <PR/gbi.h>
#include "main/gtl.h"
extern u8 D_80198825_ovl3;

void func_801762E0_ovl3(struct GObj *arg0) {
    Gfx *gfx = gDisplayListHeads[0];

    gDPPipeSync(gfx++);
    gDPSetRenderMode(gfx++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, D_80198825_ovl3);
    gDPSetCombineMode(gfx++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPFillRectangle(gfx++, 10, 10, 310, 230);
    gDPPipeSync(gfx++);
    gDPSetRenderMode(gfx++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDisplayListHeads[0] = gfx;
}

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

typedef struct Unk80196CA0 {
    u8 unk0[6];
} Unk80196CA0;

extern Unk80196CA0 D_80196CA0_ovl3;
extern u8 D_8012E7D7;
extern s32 D_800D6B54;
/* D_801974D0_ovl3 now emitted by this TU */
/* D_801974D4_ovl3 now emitted by this TU */
/* D_801974D8_ovl3 now emitted by this TU */
/* D_801974DC_ovl3 now emitted by this TU */

void func_80176DE0_ovl3(s32 arg0) {
    Unk80196CA0 sp28 = D_80196CA0_ovl3;

    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if ((D_8012E7D7 == 0) && (gKirbyController.buttonHeld & 0xF00)) {
        D_800E9560[omCurrentObj->objId] = 0x1E;
    } else if (0.0f < D_800E3210[omCurrentObj->objId]) {
        D_800E9560[omCurrentObj->objId] = 0x1E;
    } else {
        D_800E9560[omCurrentObj->objId]--;
    }
    if (func_80151E94_ovl3(&sp28) == 0) {
        if (D_800E9720[omCurrentObj->objId] != 0) {
            D_800E9720[omCurrentObj->objId]--;
        }
        if (D_8012E7D7 == 0) {
            if (!(gKirbyController.buttonHeld & 0x300)) {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.35f;
                D_800E6850[omCurrentObj->objId] = 0.0f;
            } else {
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.24f;
                D_800E6850[omCurrentObj->objId] = 3.4f;
            }
        } else if (D_800D6B54 != 0) {
            D_800E6690[omCurrentObj->objId] = 0.35f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
        }
    }
}

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
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + -0.05f;
    ohSleep(2);
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] + 0.05f;
    ohSleep(2);
    D_800EB4E0[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId] + 1;
    curObjSleepForever();
}

void func_80177270_ovl3(s32 arg0) {
    if (D_800EB4E0[omCurrentObj->objId] != 0) {
        gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
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

typedef struct Unk80196D60 {
    u8 unk0[2];
} Unk80196D60;

extern Unk80196D60 D_80196D60_ovl3;

void func_80177438_ovl3(GObj *arg0) {
    Unk80196D60 sp24 = D_80196D60_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
    if (gKirbyState.unkC0 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
    } else {
        D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
    }
}

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

typedef struct Unk80196D64 {
    u8 unk0[2];
} Unk80196D64;

extern Unk80196D64 D_80196D64_ovl3;

void func_8017782C_ovl3(GObj *arg0) {
    Unk80196D64 sp24 = D_80196D64_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(6, 6);
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

void func_80177B40_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x1C;
    gKirbyState.unk3C = gKirbyState.turnDirection;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
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
    temp = 2.35f;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    D_800E3750[omCurrentObj->objId] = -0.325f;
    D_800E3C90[omCurrentObj->objId] = 3.5f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * temp;
    D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = temp;
    func_801230E8(0x20087, 0x20088, 0);
    curObjSleepForever();
}

extern Unk80196D64 D_80196D6C_ovl3;

void func_80177FB4_ovl3(GObj *arg0) {
    Unk80196D64 sp24 = D_80196D6C_ovl3;
    s32 func_801210FC(void);
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.125f;
        if (func_801210FC() != 0) {
            D_800E6850[omCurrentObj->objId] = 4.05f;
        } else {
            D_800E6850[omCurrentObj->objId] = 1.5f;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 2.35f;
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
    }
}

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

typedef struct Unk80196D70 {
    u8 unk0[2];
} Unk80196D70;

extern Unk80196D70 D_80196D70_ovl3;

void func_80178420_ovl3(GObj *arg0) {
    Unk80196D70 sp24 = D_80196D70_ovl3;
    extern s32 D_800D6B54;

    func_80153984_ovl3();
    if ((gKirbyState.unkB == 1) || (gKirbyState.unkB == 2)) {
        return;
    }
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if ((gKirbyState.unkB9 == 0) && !(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.isTurning |= 1;
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        if (!(gKirbyController.buttonHeld & 0x300)) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            play_sound(0x149);
            set_kirby_action_1(7, 7);
            return;
        }
        set_kirby_action_1(1, 3);
        func_80122FB0(1);
        return;
    }
    if (func_80179060_ovl3(40.0f) != 0) {
        set_kirby_action_1(0x17, 0x1B);
        return;
    }
    /* the integer 0 here is load-bearing: `0.0f` shares the earlier blocks'
       constant and rotates this block's FP registers down one slot (7/194) */
    if (0 == D_800E64D0[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
}

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

extern Unk80196C9C D_80196D74_ovl3;

void func_8017883C_ovl3(s32 arg0) {
    Unk80196C9C sp24 = D_80196D74_ovl3;

    D_800E8920[omCurrentObj->objId] = 0;
    func_80153984_ovl3();
    if (gKirbyState.unkB == 1) {
        return;
    }
    if (gKirbyState.unkB == 2) {
        return;
    }
    if (func_80151E94_ovl3(&sp24) != 0) {
        return;
    }
    if (gKirbyState.unkB9 == 0) {
        if (!(gKirbyState.isTurning & 1)) {
            if (func_80121194() != 0) {
                gKirbyState.isTurning |= 1;
            }
        }
    }
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkB == 4) || (gKirbyState.unkB == 3)) {
        set_kirby_action_1(6, 6);
        return;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * gKirbyState.unkBC;
        if (gKirbyState.unkC0 < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -gKirbyState.unkC0;
        } else {
            D_800E6850[omCurrentObj->objId] = gKirbyState.unkC0;
        }
    } else {
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

void func_801789D8_ovl3(GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x20;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    D_800E3750[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
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

s32 func_80179130_ovl3(void) {
    if ((gKirbyState.unk17 != 0) || (gKirbyState.unkD != 2) || (gKirbyState.action == 0x14)) {
        return 0;
    }
    switch (gKirbyState.unkB8) {
        case 0:
        case 1:
        case 2:
        default:
            return 0;
        case 3:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x1C, 0x14);
            break;
        case 4:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x1D, 0x14);
            break;
        case 5:
            if (func_80179060_ovl3(60.0f) == 0) {
                return 0;
            }
            set_kirby_action_1(0x1E, 0x14);
            break;
        case 6:
            return 0;
        case 7:
            if ((func_80179060_ovl3(40.0f) != 0) || (D_800E8920[omCurrentObj->objId] != 0)) {
                return 0;
            }
            set_kirby_action_1(0x20, 0x14);
            break;
        case 8:
            if (gKirbyState.unkBA == 0) {
                if (func_80179060_ovl3(40.0f) != 0) {
                    return 0;
                }
                set_kirby_action_1(0x21, 0x14);
            }
            break;
        case 9:
            if (func_80179060_ovl3(60.0f) == 0) {
                return 0;
            }
            set_kirby_action_1(0x22, 0x14);
            break;
    }
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    return 1;
}

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

extern s32 func_800AF230(void);
extern s32 D_800E9720[];

void func_8017BD68_ovl3(GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x25;
    D_800E9720[omCurrentObj->objId] = 0;
    func_80120A28();
    func_801632B8_ovl3(1);
    func_800AFA54(D_800DFA10[omCurrentObj->objId]);
    func_801230E8(0x20019, 0x2001A, 0);
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (D_800E9720[omCurrentObj->objId] >= 4) {
            if (!(gKirbyController.buttonHeld & 0x4000)) {
                break;
            }
            if (func_800AF230() != 0) {
                break;
            }
        }
        D_800E9720[omCurrentObj->objId]++;
        ohSleep(1);
    }
    gKirbyState.unk3C = gKirbyState.unk3C + 1;
    func_801230E8(0x2001B, 0x2001C, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}


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

