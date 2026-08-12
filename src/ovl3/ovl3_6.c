#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "Player.h"

extern u8 D_801957D4_ovl3[];

extern void func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern void func_8011D67C(void);
extern void func_8011DC5C(void);
extern void func_8011DC04(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_2_2.h"

extern u8 D_8019338C_ovl3[];
extern u8 D_8019154C_ovl3[];
extern s32 D_8012E80C[];

extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
extern s32 func_800A8234(s32, s32, s32);
extern s32 func_80123170(void);
extern void func_800FB914(s32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);

extern void func_8011CF58(void);
extern s32 func_80111A04(u8 *, s32);
extern void func_80111C4C(s32);
extern s32 func_801693C4_ovl3(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
extern void func_80122F08(s32);
extern void func_801230E8(s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);
extern s32 random_soft_s32_range(s32);
extern s32 D_8012E7FC;
#include "DObj.h"
#include "unk_structs/D_800E1B50.h"
extern void func_8015449C_ovl3(u8 *, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017CF60_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017D430_ovl3.s")

extern void func_8011E0E8(void);
extern void func_80120A28(void);
extern void ohSleep(s32);
extern void play_sound(s32);
extern void curObjSleepForever(void);
void func_8017DAD8_ovl3(s32, s32, f32);

void func_8017D8E8_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk3C = -1;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x29;
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    gKirbyState.unk44 = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    func_80120A28();
    func_801230E8(0x201A7, 0x201A8, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20010);
    gKirbyState.unk154 = 7;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x2C);
    func_801230E8(0x201A5, 0x201A6, 0);
    D_800DF310[omCurrentObj->objId] = func_8017DAD8_ovl3;
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if ((gKirbyController.buttonHeld & 0x4000) == 0) {
            break;
        }
        ohSleep(1);
    }
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_801230E8(0x201A9, 0x201AA, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8017DAD8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 idx;
    s32 rnd;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            idx = func_801632B8_ovl3(3);
            D_800E1B50[idx + 0x70] = (struct UnkStruct800E1B50 *) arg0;
            do {
                rnd = random_soft_s32_range(5);
            } while (rnd == gKirbyState.unk3C);
            D_8012E7FC = rnd;
            // The volatile read is load-bearing: it stops IDO CSEing this load
            // with the loop's own compare, which the ROM re-reads.
            D_800EC2E0[idx].as_s32 = *(vs32 *) &gKirbyState.unk3C;
            D_800EC660[idx] = D_800EA8A0[omCurrentObj->objId];
            D_800EA8A0[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017DBB8_ovl3.s")

extern f32 D_8019768C_ovl3;
extern f32 D_80197690_ovl3;
extern f32 D_80197694_ovl3;
extern f32 D_80197698_ovl3;
extern f32 D_8019769C_ovl3;

void func_8017DF60_ovl3(s32 arg0) {
    f32 step;
    f32 limit;

    if (arg0 != 0) {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
            step = D_8019768C_ovl3;
        } else {
            step = D_80197690_ovl3;
        }
        limit = D_80197694_ovl3;
        D_800EA6E0[omCurrentObj->objId] = step + D_800EA6E0[omCurrentObj->objId];
        if (limit < D_800EA6E0[omCurrentObj->objId]) {
            D_800EA6E0[omCurrentObj->objId] = limit;
        }
    } else {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
            step = D_80197698_ovl3;
        } else {
            step = D_8019769C_ovl3;
        }
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] - step;
        if (D_800EA6E0[omCurrentObj->objId] <= 0.0f) {
            D_800EA6E0[omCurrentObj->objId] = 0.0f;
            *(s32 *) ((u8 *) &D_8012E7FC + 8) = 0;
        }
    }
}

extern s32 func_800AF230(void);
extern void func_8011DC30(s32);

void func_8017E074_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2A;
    func_80120A28();
    func_8011DC04(0xAB);
    func_8011DC30(0x26D);
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 0;
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 2;
    func_801230E8(0x201AE, 0x201AF, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20011);
    gKirbyState.unk154 = 2;
    D_800EC2E0[func_801693C4_ovl3(7)].as_s32 = 1;
    func_801230E8(0x201AC, 0x201AD, 0);
    while (gKirbyState.unk17 == 0) {
        if (func_800AF230() != 0) {
            break;
        }
        ohSleep(1);
    }
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201B0, 0x201B1, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8017E1EC_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011D67C();
    } else if (gKirbyState.abilityInUse != 0) {
        func_8015449C_ovl3(D_8019338C_ovl3, 0);
        func_80111C4C(func_80111A04(D_8019154C_ovl3, omCurrentObj->objId));
    }
}

#ifdef NON_MATCHING
/* 3/178: exact except that the ROM's scheduler sinks the `lim` load past the
   two loop-invariant base addiu's (gEntitiesAngleXArray, gKirbyController)
   and IDO emits it first. Swept: declaration order, one-line form, blank
   line, moving the assignment across func_800AA018 and into the loop. */
extern u8 D_801905E8_ovl3[];
extern f32 D_801976A0_ovl3;
extern f32 D_801976A4_ovl3;

void func_8017E284_ovl3(s32 arg0) {
    f32 step;
    f32 lim;
    s32 idx;

    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.jumpHeight = gKirbyState.isFullJump = 0;
    gKirbyState.unk40 = 0.0f;
    D_800E98E0[omCurrentObj->objId] = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2B;
    gKirbyState.unk44 = 0;
    func_80120A28();
    gKirbyState.unk15C = (u32) D_801905E8_ovl3;
    func_801230E8(0x201B4, 0x201B5, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20012);
    gKirbyState.unk154 = 5;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x2A, D_800DFBD0[omCurrentObj->objId][4]);
    D_800E9720[omCurrentObj->objId] = 0;
    func_800AA018(0x201B2);
    step = D_801976A0_ovl3;
    lim = D_801976A4_ovl3;
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (lim != gKirbyState.unk40) {
            gEntitiesAngleXArray[omCurrentObj->objId] = -gKirbyState.unk40;
            gKirbyState.unk40 = gKirbyState.unk40 + step;
            if (lim <= gKirbyState.unk40) {
                gKirbyState.unk40 = lim;
            }
            D_800E9720[omCurrentObj->objId]++;
        }
        if (gKirbyController.buttonHeld & 0x4000) {
            ohSleep(1);
        } else {
            idx = func_801632B8_ovl3(4);
            D_800E1B50[idx + 0x70] =
                (struct UnkStruct800E1B50 *) D_800DFBD0[omCurrentObj->objId][4];
            D_800EC660[idx] = gKirbyState.unk40;
            play_sound(0xB5);
            play_sound(0xB6);
            D_800E98E0[omCurrentObj->objId] = 0;
            func_800AA154(0x201B3);
            break;
        }
    }
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201B6, 0x201B7, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E284_ovl3.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E54C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EA0C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EDDC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F1C0_ovl3.s")

void func_8017F8B8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                temp = func_80123170();
                func_800FB914(2);
                play_sound(0x120);
                if (temp != -1) {
                    func_800A7F74(5, 1, temp, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F988_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180818_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180B58_ovl3.s")

void func_80181014_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2F;
    play_sound(0x22);
    if (func_801ACCA0_ovl7(0x3A, 0, 30.0f, 15.0f) != 0) {
        gKirbyState.abilityInUse = gKirbyState.ability;
    } else {
        gKirbyState.abilityInUse = 0;
    }
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_801810D0_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181110_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801815F4_ovl3.s")

extern void func_800AF314(void);

void func_80181AF0_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    gKirbyState.unkA = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        gKirbyState.unk16 = 0x20;
    } else {
        gKirbyState.unk16 = 0x10;
    }
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x31;
    func_80120A28();
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_8011DC04(0xC8);
    func_8011DC30(0xC9);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20015);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201C0, 0x201C1, 0);
    while (func_800AF230() == 0) {
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            goto done;
        }
        ohSleep(1);
    }
    func_801230E8(0x201C2, 0x201C3, 0);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
done:
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AF314();
    func_8011DC5C();
    func_800AA154(0x201C4);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181CFC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181F64_ovl3.s")

void func_80182658_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_8012E80C[0] = func_800A8234(2, 1, 0x3A);
                D_8012E80C[1] = func_800A8234(2, 1, 0x3B);
            } else {
                D_8012E80C[0] = func_800A8234(2, 1, 0x33);
                D_8012E80C[1] = func_800A8234(2, 1, 0x34);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018271C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80182D9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801831EC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183428_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801835AC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183A1C_ovl3.s")

extern f32 *D_801929B4_ovl3[];
extern u8 D_80190358_ovl3[];
extern f32 D_801977AC_ovl3;
extern void func_8011DC30(s32);

void func_80183E38_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = gKirbyState.unk3C = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x35;
    D_800E0490[omCurrentObj->objId] = D_801929B4_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    func_80122F08(0x20018);
    gKirbyState.unk154 = 1;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = D_801977AC_ovl3;
        gKirbyState.isTurning |= 0x4000;
    }
    func_8011DC04(0x13B);
    func_8011DC30(0x13C);
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201D3);
    func_800AA154(0x201D4);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201D5);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183FF4_ovl3.s")

#ifdef NON_MATCHING
/* 8/219: 6 of the 8 are the $f0/$f2 swap between the shared 0.0f and `temp`
   (see func_8018E164_ovl3); the other 2 are the scheduler putting `i = 0`
   before rather than after the &D_800EC2E0 addiu. Swept: statement order of
   the temp assignment (3 positions), double 0.0 literals, a named zero. */
extern f32 D_801977D0_ovl3;
extern u8 D_8019080C_ovl3[];

void func_80184538_ovl3(s32 arg0) {
    f32 temp;
    s32 i;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp = D_801977D0_ovl3;
    D_800DDFD0[omCurrentObj->objId] = 0x36;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    D_800E83E0[omCurrentObj->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    play_sound(0x24);
    D_800E9720[omCurrentObj->objId] = 0x2D;
    func_801230E8(0x201DD, 0x201DE, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20019);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201D7, 0x201D8, 1);
    gKirbyState.unk15C = (u32) D_8019080C_ovl3;
    func_801230E8(0x201DB, 0x201DC, 0);
    while (1) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        if (gKirbyController.buttonPressed & 0x4000) {
            break;
        }
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            break;
        }
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            break;
        }
        ohSleep(1);
    }
    play_sound(0x25);
    func_801230E8(0x201D9, 0x201DA, 1);
    gKirbyState.abilityInUse = 0;
    func_800BB468(6, 0x10);
    i = 0;
    do {
        D_800EC2E0[func_801632B8_ovl3(6)].as_s32 = i;
        i++;
    } while (i != 8);
    ((u8 **) D_800DFBD0[omCurrentObj->objId][2])[32][0x5B] = 0xFF;
    gKirbyState.unk30 += 1;
    func_80122F08(0x20016);
    gKirbyState.unk154 = 2;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x22, D_800DFBD0[omCurrentObj->objId][2]);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AA154(0x201C5);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184538_ovl3.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801848A4_ovl3.s")

extern f32 *D_801926E8_ovl3[];
extern s32 D_8019883C_ovl3;
extern s32 D_80196DA8_ovl3[];
extern void func_80120A28(void);

void func_80184B24_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    D_8019883C_ovl3 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x37;
    D_800E0490[omCurrentObj->objId] = D_801926E8_ovl3;
    gKirbyState.unk15C = (u32) D_80190358_ovl3;
    func_80120A28();
    func_80122F08(0x2001A);
    gKirbyState.unk154 = 2;
    func_801693C4_ovl3(0xC);
    for (gKirbyState.unk44 = 0; gKirbyState.unk44 < 3; gKirbyState.unk44++) {
        play_sound(0xBB);
        func_800AA154(D_80196DA8_ovl3[gKirbyState.unk44]);
        if ((gKirbyController.buttonHeld & 0x4000) == 0) {
            break;
        }
    }
    gKirbyState.unk44 = -1;
    func_800AA154(0x201E2);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80184C64_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184CA4_ovl3.s")

void func_80185180_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (D_800E8920[omCurrentObj->objId] != 0) {
                play_sound(0x267);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185224_ovl3.s")

void func_801856A4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x39;
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_801693C4_ovl3(0xE);
    func_801632B8_ovl3(8);
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80185748_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

void func_80185788_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    D_800E9560[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E9720[omCurrentObj->objId] = 0x12;
    } else {
        D_800E9720[omCurrentObj->objId] = 9;
    }
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x3A;
    func_80120A28();
    func_801230E8(0x201F2, 0x201F3, 1);
    func_80122F08(0x2001C);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F0, 0x201F1, 0);
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E9560[omCurrentObj->objId] = 0xB;
        ohSleep(6);
    } else {
        D_800E9560[omCurrentObj->objId] = 5;
    }
    play_sound(0x5A);
    D_800EC2E0[func_801693C4_ovl3(0xF)].as_s32 = 0;
    D_800EC2E0[func_801693C4_ovl3(0xF)].as_s32 = 1;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F4, 0x201F5, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

extern u8 D_801953CC_ovl3[];
extern u8 D_801953E8_ovl3[];
extern u8 D_80191B54_ovl3[];
extern u8 D_80191BBC_ovl3[];

void func_80185968_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        if (D_800E9720[omCurrentObj->objId] == 0) {
            func_8015449C_ovl3(D_801953CC_ovl3, 0);
            func_80111C4C(func_80111A04(D_80191B54_ovl3, omCurrentObj->objId));
        } else {
            D_800E9720[omCurrentObj->objId]--;
        }
        if (D_800E9560[omCurrentObj->objId] != 0) {
            func_8015449C_ovl3(D_801953E8_ovl3, 0);
            func_80111C4C(func_80111A04(D_80191BBC_ovl3, omCurrentObj->objId));
            D_800E9560[omCurrentObj->objId]--;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185A9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186248_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186750_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186A20_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186E30_ovl3.s")

void func_80187FD0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_8012E80C[0] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x11]);
            D_8012E80C[1] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x12]);
        }
    }
}

void func_80188078_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = func_801632B8_ovl3(9);
            D_800E98E0[temp] = gKirbyState.unk58;
            D_800E9AA0[temp].as_s32 = gKirbyState.unk5C;
            D_800E1B50[temp + 0x70] = (struct UnkStruct800E1B50 *) D_800DFBD0[omCurrentObj->objId][0xE];
            gKirbyState.unk58 = 0;
            gKirbyState.unk5C = 0;
            D_800DFBD0[omCurrentObj->objId][0xE]->flags = 2;
        }
    }
}

void func_8018813C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_8015449C_ovl3(D_801957D4_ovl3, 0);
        }
    }
}

void func_80188184_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(5);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80188238_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80189914_ovl3.s")

void func_8018B188_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = 1;
            D_800EBBE0[omCurrentObj->objId] = func_801693C4_ovl3(0x12);
            D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018B228_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018CC54_ovl3.s")

void func_8018D460_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (gKirbyState.unk30 == 0) {
                if (gKirbyState.unk17 == 0) {
                    func_8011DC5C();
                    func_8011DC04(0x3C);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018D4C8_ovl3.s")

void func_8018DF78_ovl3(s32, s32, f32);

void func_8018DDCC_ovl3(s32 arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.unk30 = gKirbyState.unk44 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x40;
    func_80120A28();
    gKirbyState.abilityInUse = gKirbyState.ability;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    func_80122F08(0x2002B);
    gKirbyState.unk154 = 2;
    play_sound(0x42);
    func_801230E8(0x20274, 0x20275, 1);
    func_801230E8(0x20276, 0x20277, 0);
    while (gKirbyController.buttonHeld & 0x4000) {
        if (gKirbyState.unk17 != 0) {
            break;
        }
        ohSleep(1);
    }
    play_sound(0x43);
    func_801230E8(0x20278, 0x20279, 0);
    D_800DF310[omCurrentObj->objId] = func_8018DF78_ovl3;
    ohSleep(0xC);
    gKirbyState.unk78 = D_800E6A10[omCurrentObj->objId];
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8018DF78_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            gKirbyState.unk44 += 1;
        }
    }
}

extern s32 D_8012E7E8;
extern f32 D_80197B5C_ovl3;
extern f32 D_80197B60_ovl3;
extern f32 D_80197B64_ovl3;
extern f32 D_801921FC_ovl3[];
extern s32 D_80196DB4_ovl3[];
extern u8 D_801963E4_ovl3[];
extern void func_80120CCC(f32, f32);
extern s32 func_80168408_ovl3(f32 *, void *, f32);
extern s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
extern s32 func_801521F0_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
extern void func_80154578_ovl3(void *, s32, f32);

typedef struct Unk8018DFB4 {
    u8 pad0[0x40];
    f32 unk40;
    f32 unk44;
} Unk8018DFB4;

void func_8018DFB4_ovl3(s32 arg0) {
    f32 temp;
    Unk8018DFB4 *p;
    s32 *res;
    s32 idx;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (*(s32 *) ((u8 *) &D_8012E7E8 + 8) != 0) {
        func_8011D67C();
        return;
    }
    func_80120CCC(D_80197B5C_ovl3, D_80197B60_ovl3);
    if (*(s32 *) ((u8 *) &D_8012E7FC + 8) == 4) {
        p = (Unk8018DFB4 *) D_800DFBD0[omCurrentObj->objId][9];
        temp = p->unk44;
    } else {
        p = (Unk8018DFB4 *) D_800DFBD0[omCurrentObj->objId][9];
        temp = p->unk40;
    }
    res = (s32 *) func_80168408_ovl3(D_801921FC_ovl3, p, temp);
    ((s32 *) res[8])[12] = ((s32 *) D_800DFBD0[omCurrentObj->objId])[12];
    func_80111C4C((s32) res);
    idx = *(s32 *) ((u8 *) &D_8012E7FC + 8);
    if (idx == 4) {
        func_80152070_ovl3((f32 (*)[4]) D_80196DB4_ovl3[idx], (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_801963E4_ovl3[0], temp);
    } else {
        func_801521F0_ovl3((f32 (*)[4]) D_80196DB4_ovl3[idx], (f32 (*)[4]) ((u8 *) &D_8012E9B8 + 0x10),
                           D_801963E4_ovl3[0], temp);
    }
    func_80154578_ovl3(D_801963E4_ovl3, 0, gEntitiesAngleYArray[omCurrentObj->objId] - D_80197B64_ovl3);
}

#ifdef NON_MATCHING
/* 6/130: instruction-for-instruction exact; only $f0 and $f2 are swapped.
   IDO gives $f0 to whichever float value is ASSIGNED first, so `temp` takes
   it and the shared 0.0f constant gets $f2; the ROM is the other way round.
   Moving the `temp =` statement later gives the constant $f0 but also sinks
   the lwc1 out of the prologue (51 diffs) -- the register choice and the load
   slot are coupled, as the guide records for func_802114E4_ovl9. */
extern f32 D_80197B68_ovl3;
extern f32 D_80198848_ovl3[];
extern f32 D_80198858_ovl3[];
extern void func_800AF27C(void);
void func_8018E36C_ovl3(s32, s32, f32);

void func_8018E164_ovl3(s32 arg0) {
    f32 temp;

    gKirbyState.unk30 = 0;
    func_8011CF58();
    temp = D_80197B68_ovl3;
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[omCurrentObj->objId] = 0x41;
    D_80198848_ovl3[0] = D_800E64D0[omCurrentObj->objId];
    D_80198848_ovl3[1] = D_800E6690[omCurrentObj->objId];
    D_80198848_ovl3[2] = D_800E6850[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = temp;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_80198858_ovl3[0] = D_800E3210[omCurrentObj->objId];
        D_80198858_ovl3[1] = D_800E3750[omCurrentObj->objId];
        D_80198858_ovl3[2] = D_800E3C90[omCurrentObj->objId];
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = temp;
    func_801693C4_ovl3(0x14);
    func_801230E8(0x20041, 0x20042, 0);
    D_800DF310[omCurrentObj->objId] = func_8018E36C_ovl3;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E164_ovl3.s")
#endif
void func_8018E36C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_801632B8_ovl3(0xA);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E3B0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E608_ovl3.s")

void func_8018F2B4_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018F368_ovl3.s")

