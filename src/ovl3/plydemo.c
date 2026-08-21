#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_2_2.h"
#include "ovl2/plylib.h"

extern s32 D_800BE4F8;
/* D_80196F54_ovl3 now emitted by this TU */
/* D_80196F58_ovl3 now emitted by this TU */
/* D_80196F5C_ovl3 now emitted by this TU */
/* D_80196F60_ovl3 now emitted by this TU */
/* D_80196F64_ovl3 now emitted by this TU */
/* D_80196F68_ovl3 now emitted by this TU */
/* D_80196F6C_ovl3 now emitted by this TU */

extern s32 func_80153984_ovl3(void);
extern s32 D_800BE4FC;
extern s32 D_800BE500;
extern s32 D_800BE504;
extern s32 D_800BE508;
extern s32 D_800BE52C;
extern s32 D_800BE530;
extern s32 D_800BE534;
extern s32 D_800BE538;
extern s32 D_8012E944;
/* D_80196F70_ovl3 now emitted by this TU */
/* D_80196F74_ovl3 now emitted by this TU */
/* D_80196FD8_ovl3 now emitted by this TU */
extern u16 D_800D6FB2;
extern s32 D_80196D48_ovl3[];
extern u32 D_80190358_ovl3[];
extern u32 D_801903E0_ovl3[];
extern u32 D_801926E8_ovl3[];
extern u32 D_80192704_ovl3[];
extern s32 gEntityGObjProcessArray[];
extern void func_8011CF58(void);
extern void func_801217B8(void);
extern void func_80120CCC(f32, f32);
extern void func_800F6C78(void);
extern void func_800FF200(s32);
extern void func_800AA78C(s32, s32, f32);
extern s32 func_800AA888(s32);
extern f32 func_800F951C(s32, f32, s32, f32);
extern void func_80122F08(s32);
extern void func_8011DC5C(void);
extern void func_8011E0E8(void);
extern void func_801230E8(s32, s32, s32);
extern void func_8022785C_ovl19(struct GObj *);
extern void assign_new_process_entry(s32, void (*)(struct GObj *));
extern void func_800AF408(void);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_800FBE1C(void);
extern void func_800FA414(s32);
extern void func_801708A0_ovl3(s32, s32, f32);
extern void func_8022E58C_ovl19(void);

void func_80157C5C_ovl3();
void func_80157F18_ovl3(struct GObj *);
void func_8015814C_ovl3(s32, void (*)(), f32);
void func_80158294_ovl3();
void func_801583BC_ovl3(void);
void func_80158410_ovl3(s32);
void func_80157E38_ovl3(s32);

#ifdef PORT
/* PORT: demo door-transition setup coroutine (via m2c). Marks the level's
 * door byte when leaving a boss intro (func_800F8560() == 10), clears the
 * inhale state, then keys off the door type (unkB): 1/2 seat vertical
 * launch speeds (softer in water), 3/4 face the door (isTurning), load the
 * character's demo model bank, and pick the walk/swim-in animation --
 * water doors also hook the stroke callback func_80122CA0. Sleeps forever;
 * the per-frame handler drives the rest. */
s32 func_800F8560(void);
s32 func_800AA934(s32);
void func_80122CA0(s32, s32, f32);

void func_80156050_ovl3(s32 arg0) {
    extern u8 D_800D6E20[];
    s32 id = omCurrentObj->objId;

    func_8011CF58();
    D_800DDFD0[id] = 0x43;
    if (func_800F8560() == 0xA) {
        D_800D6E20[D_800BE508] = 1;
    }
    gKirbyState.numberInhaling = 0;
    gKirbyState.unk68 = 1;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.isInhaling = 0;
    switch (gKirbyState.unkB) {
        case 1:
            D_800E8920[id] = 0;
            if (D_800E8AE0[id] & 6) {
                gKirbyState.unk2C = 0xF;
                D_800E3750[id] = 0.25f;
                D_800E3C90[id] = 10.0f;
            } else {
                gKirbyState.unk2C = 0xA;
                D_800E3750[id] = 0.25f;
                D_800E3C90[id] = 18.0f;
            }
            break;
        case 2:
            D_800E8920[id] = 0;
            if (D_800E8AE0[id] & 6) {
                gKirbyState.unk2C = 0xF;
                D_800E3750[id] = -0.4f;
                D_800E3C90[id] = 10.0f;
            } else {
                gKirbyState.unk2C = 0xA;
                D_800E3750[id] = -0.980665f;
                D_800E3C90[id] = 18.0f;
            }
            break;
        case 3:
        case 4:
            if (gKirbyState.unkB == 3) {
                if ((D_800E6A10[id] == 1.0f) && !(gKirbyState.isTurning & 1)) {
                    gKirbyState.isTurning |= 1;
                }
            } else {
                if ((D_800E6A10[id] == -1.0f) && !(gKirbyState.isTurning & 1)) {
                    gKirbyState.isTurning |= 1;
                }
            }
            if (func_800AA888(D_80196D48_ovl3[gKirbyState.unk4]) == 0) {
                func_80122F08(D_80196D48_ovl3[gKirbyState.unk4]);
                gKirbyState.unk154 = 2;
            }
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                gKirbyState.unk2C = 0x14;
                if (gKirbyState.previousAction != 0x1B) {
                    switch (gKirbyState.unk4) {
                        case 0:
                            func_800AA78C(0x20111, 0x20007, 6.0f);
                            func_801230E8(0x20111, 0x20112, 0);
                            break;
                        case 1:
                            func_800AA78C(0x2017D, 0x20009, 6.0f);
                            func_801230E8(0x2017D, 0x2017E, 0);
                            break;
                        case 2:
                            func_800AA78C(0x200CF, 0x20007, 6.0f);
                            func_801230E8(0x200CF, 0x200D0, 0);
                            break;
                    }
                    D_800DF310[omCurrentObj->objId] = func_80122CA0;
                }
            } else {
                gKirbyState.unk2C = 0xF;
                switch (gKirbyState.unk4) {
                    case 0:
                        if (func_800AA934(0x2005D) == 0) {
                            func_800AA78C(0x200E1, 0x20007, 3.0f);
                            func_801230E8(0x200E1, 0x200E2, 0);
                        }
                        break;
                    case 1:
                        if (func_800AA934(0x20175) == 0) {
                            func_800AA78C(0x20175, 0x20009, 3.0f);
                            func_801230E8(0x20175, 0x20176, 0);
                        }
                        break;
                    case 2:
                        if (func_800AA934(0x200CD) == 0) {
                            func_800AA78C(0x200CD, 0x20007, 3.0f);
                            func_801230E8(0x200CD, 0x200CE, 0);
                        }
                        break;
                }
            }
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80156050_ovl3.s")
#endif

void func_80156594_ovl3(s32 arg0) {
    void utilPrintf(char *, ...);

    switch (gKirbyState.unkB) {
        case 1:
        case 2:
            if (gKirbyState.unk2C-- == 0) {
                gKirbyState.unk2C = 0x7FFFFFFF;
                D_800BE4F8 = 2;
            }
            return;
        case 3:
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_800E64D0[omCurrentObj->objId] = -3.4f;
                D_800E6850[omCurrentObj->objId] = 3.4f;
            } else {
                D_800E64D0[omCurrentObj->objId] = -6.0f;
                D_800E6850[omCurrentObj->objId] = 6.0f;
            }
            break;
        case 4:
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_800E64D0[omCurrentObj->objId] = 3.4f;
                D_800E6850[omCurrentObj->objId] = 3.4f;
            } else {
                D_800E64D0[omCurrentObj->objId] = 6.0f;
                D_800E6850[omCurrentObj->objId] = 6.0f;
            }
            break;
        default:
            goto err;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E8920[omCurrentObj->objId] = 0;
    }
    func_80153984_ovl3();
    if ((gKirbyState.unk2C-- == 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
        gKirbyState.unk2C = 0x7FFFFFFF;
        D_800BE4F8 = 2;
    }
    return;
err:
    utilPrintf("not door type!:%d   [plydemo.cc]\n", gKirbyState.unkB);
}

#ifdef PORT
/* PORT: demo door-exit coroutine (via m2c). Forces the door-exit action
 * (0x1E), points unk15C at the character's demo track table, then keys off
 * the door type: 1 = drop/rise out (water doors swim up via the stroke
 * callback), 2 = launch out (land doors pop up with sound 0xF7 and wait
 * for the apex before the fall animation, water doors surface with sound
 * 0x10B), 5/6 = walk out sideways -- drive into the wall with
 * func_80153FC8_ovl3 until a horizontal contact lands, then swim/walk off
 * at a speed picked by water state (5 and 6 differ only in animations and
 * the unk3C direction key). Default: plain walk/swim away from the door.
 * D_8012E7FC-style aliases in the asm are gKirbyState fields (base
 * 0x8012E7C0), spelled as such so PC readers see the same storage. */
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800F8E6C();
extern s32 func_80153FC8_ovl3(void);

void func_801567B8_ovl3(s32 arg0) {
    s32 id = omCurrentObj->objId;
    f32 spd;
    f32 tick;

    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[id] = 0x44;
    gKirbyState.action = 0x1E;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    switch (gKirbyState.unkB) {
        case 1:
            D_800E8920[id] = 0;
            if (D_800E8AE0[id] & 6) {
                func_800AECC0(4.0f);
                func_800AED20(4.0f);
                gKirbyState.unk2C = 0xF;
                D_800E3210[id] = -12.0f;
                D_800E3750[id] = 0.4f;
                D_800E3C90[id] = 12.0f;
                switch (gKirbyState.unk4) {
                    case 0:
                        func_801230E8(0x20111, 0x20112, 0);
                        break;
                    case 1:
                        func_801230E8(0x2017D, 0x2017E, 0);
                        break;
                    case 2:
                        func_801230E8(0x200CF, 0x200D0, 0);
                        break;
                }
                D_800DF310[omCurrentObj->objId] = func_80122CA0;
            } else {
                gKirbyState.unk2C = 0xF;
                D_800E3210[id] = 0.0f;
                D_800E3750[id] = -0.980665f;
                D_800E3C90[id] = 16.0f;
                switch (gKirbyState.unk4) {
                    case 0:
                        func_801230E8(0x20089, 0x2008A, 0);
                        break;
                    case 1:
                        func_801230E8(0x20165, 0x20166, 0);
                        break;
                    case 2:
                        func_801230E8(0x200C1, 0x200C2, 0);
                        break;
                }
            }
            break;
        case 2:
            D_800E8920[id] = 0;
            if (D_800E8AE0[id] & 6) {
                func_800AECC0(4.0f);
                func_800AED20(4.0f);
                gKirbyState.unk2C = 0xF;
                id = omCurrentObj->objId;
                if (!(D_800E8AE0[id] & 6)) {
                    D_800E3210[id] = 16.0f;
                } else {
                    D_800E3210[id] = 8.0f;
                }
                D_800E3750[id] = -0.4f;
                spd = (D_800E8AE0[id] & 6) ? 8.0f : 16.0f;
                D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
                switch (gKirbyState.unk4) {
                    case 0:
                        func_801230E8(0x20111, 0x20112, 0);
                        break;
                    case 1:
                        func_801230E8(0x2017D, 0x2017E, 0);
                        break;
                    case 2:
                        func_801230E8(0x200CF, 0x200D0, 0);
                        break;
                }
                D_800DF310[omCurrentObj->objId] = func_80122CA0;
                play_sound(0x10B);
                if (gKirbyState.unk3C == 3) {
                    D_800E64D0[omCurrentObj->objId] = 0.0f;
                    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.24f;
                    D_800E6850[omCurrentObj->objId] = 3.4f;
                }
            } else {
                if (gKirbyState.unk3C == 3) {
                    D_800E64D0[id] = 0.0f;
                    D_800E6690[id] = D_800E6A10[id] * 0.625f;
                    D_800E6850[id] = 5.0f;
                }
                D_800E3210[id] = 16.0f;
                D_800E3750[id] = -0.980665f;
                D_800E3C90[id] = 16.0f;
                play_sound(0xF7);
                gKirbyState.unk40 = 8.0f;
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
                while (gKirbyState.unk40 < D_800E3210[omCurrentObj->objId]) {
                    ohSleep(1);
                }
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
                gKirbyState.unk30 += 1;
            }
            break;
        case 5:
            D_800E8920[id] = 0;
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            D_800E64D0[id] = D_800E6A10[id] * 10.0f;
            while (gKirbyState.horizontalCollision == 0) {
                func_800F8E6C(arg0);
                func_80153FC8_ovl3();
            }
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
            if (gKirbyState.unk3C == 5) {
                spd = (D_800E8AE0[id] & 6) ? 2.0f : 4.0f;
                func_801230E8(0x200AB, 0x200AC, 0);
            } else {
                spd = (D_800E8AE0[id] & 6) ? -2.0f : -4.0f;
                func_801230E8(0x200AD, 0x200AE, 0);
            }
            gKirbyState.unk2C = 0x1E;
            tick = (D_800E8AE0[omCurrentObj->objId] & 6) ? 1.5f : 3.0f;
            func_800AECC0(tick);
            func_800AED20(tick);
            D_800E3210[omCurrentObj->objId] = spd;
            D_800E3C90[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
            break;
        case 6:
            D_800E8920[id] = 0;
            D_800E3750[id] = 0.0f;
            D_800E3210[id] = 0.0f;
            D_800E3C90[id] = 65535.0f;
            D_800E64D0[id] = D_800E6A10[id] * 10.0f;
            while (gKirbyState.horizontalCollision == 0) {
                func_800F8E6C(arg0);
                func_80153FC8_ovl3();
            }
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
            if (gKirbyState.unk3C == 7) {
                spd = (D_800E8AE0[id] & 6) ? 2.0f : 4.0f;
                func_801230E8(0x200D5, 0x200D6, 0);
            } else {
                spd = (D_800E8AE0[id] & 6) ? -2.0f : -4.0f;
                func_801230E8(0x200D7, 0x200D8, 0);
            }
            gKirbyState.unk2C = 0x1E;
            tick = (D_800E8AE0[omCurrentObj->objId] & 6) ? 1.5f : 3.0f;
            D_800E3210[omCurrentObj->objId] = spd;
            D_800E3C90[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
            func_800AECC0(tick);
            func_800AED20(tick);
            break;
        default:
            if (D_800E8AE0[id] & 6) {
                D_800E64D0[id] = D_800E6A10[id] * 3.4f;
                D_800E6850[id] = 3.4f;
                switch (gKirbyState.unk4) {
                    case 0:
                        func_801230E8(0x20111, 0x20112, 0);
                        break;
                    case 1:
                        func_801230E8(0x2017D, 0x2017E, 0);
                        break;
                    case 2:
                        func_801230E8(0x200CF, 0x200D0, 0);
                        break;
                }
                D_800DF310[omCurrentObj->objId] = func_80122CA0;
            } else {
                D_800E64D0[id] = D_800E6A10[id] * 6.0f;
                D_800E6850[id] = 6.0f;
                switch (gKirbyState.unk4) {
                    case 0:
                        func_801230E8(0x200E1, 0x200E2, 0);
                        break;
                    case 1:
                        func_801230E8(0x20175, 0x20176, 0);
                        break;
                    case 2:
                        func_801230E8(0x200CD, 0x200CE, 0);
                        break;
                }
            }
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_801567B8_ovl3.s")
#endif

void func_80157738_ovl3(s32 arg0) {
    s32 flag = 0;
    s32 func_80122460(void);

    switch (gKirbyState.unkB) {
        case 1:
            func_80153984_ovl3();
            if (gKirbyState.unk2C-- == 0) {
                if (D_800E8AE0[omCurrentObj->objId] & 6) {
                    set_kirby_action_1(0x17, 0x1B);
                } else {
                    set_kirby_action_1(6, 6);
                }
                flag = 1;
            } else if (D_800E8920[omCurrentObj->objId] != 0) {
                if (D_800E8AE0[omCurrentObj->objId] & 6) {
                    set_kirby_action_1(0, 1);
                } else {
                    play_sound(0x149);
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    set_kirby_action_1(7, 7);
                }
                flag = 1;
            } else {
                set_kirby_action_1(6, 6);
                flag = 1;
            }
            break;
        case 2:
            func_80153984_ovl3();
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                if (gKirbyState.unk2C-- == 0) {
                    set_kirby_action_1(0x17, 0x1B);
                } else if (gKirbyState.ceilingCollisionNext != 0) {
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    set_kirby_action_1(0x17, 0x1B);
                    flag = 1;
                }
            } else if (gKirbyState.ceilingCollisionNext != 0) {
                if (func_80122460() != 0) {
                    D_800E6690[omCurrentObj->objId] = 0.0f;
                    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                    D_800E6850[omCurrentObj->objId] = 65535.0f;
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                    set_kirby_action_1(0xA, 0xD);
                } else {
                    D_800E3210[omCurrentObj->objId] = 0.0f;
                    set_kirby_action_1(6, 6);
                }
                flag = 1;
            } else if (gKirbyState.unk30 != 0) {
                set_kirby_action_1(6, 6);
                flag = 1;
            }
            break;
        case 5:
            func_80153984_ovl3();
            if (gKirbyState.unk2C-- == 0) {
                gKirbyState.unk30 = 0;
                set_kirby_action_1(0xD, 0xA);
                flag = 1;
            }
            break;
        case 6:
            func_80153B98_ovl3();
            if (gKirbyState.unk2C-- == 0) {
                gKirbyState.unk30 = 0;
                set_kirby_action_1(0xE, 0xB);
                flag = 1;
            }
            break;
        default:
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_800E8920[omCurrentObj->objId] = 0;
            }
            func_80153984_ovl3();
            if (D_800E5F90[omCurrentObj->objId] != D_800E6150[omCurrentObj->objId]) {
                if (D_800E8AE0[omCurrentObj->objId] & 6) {
                    set_kirby_action_1(0x17, 0x1B);
                } else {
                    set_kirby_action_1(0, 1);
                }
                flag = 1;
            }
            break;
    }
    if (flag != 0) {
        gKirbyState.unk17 = 0;
        gKirbyState.unkB = 0;
        D_800BE4FC = 0;
        if (gKirbyState.abilityState != 0) {
            gKirbyState.unk17 = 1;
            set_kirby_action_1(gKirbyState.abilityState, 0x1C);
        }
    }
}

void func_80157C5C_ovl3(s32 arg0) {
    func_8011CF58();
    if (func_800AA888(D_80196D48_ovl3[gKirbyState.unk4]) == 0) {
        func_80122F08(D_80196D48_ovl3[gKirbyState.unk4]);
        gKirbyState.unk154 = 2;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = (u32) D_801903E0_ovl3;
    } else {
        gKirbyState.unk15C = (u32) D_80190358_ovl3;
    }
    if (gKirbyState.unk4 == 1) {
        D_800E0490[omCurrentObj->objId] = (f32 **) D_80192704_ovl3;
    } else {
        D_800E0490[omCurrentObj->objId] = (f32 **) D_801926E8_ovl3;
    }
    gKirbyState.isInhaling = 0;
    func_8011DC5C();
    func_8011E0E8();
}

void func_80157D58_ovl3(s32 arg0) {
    switch (gKirbyState.unk4) {
        case 0:
            func_800AA78C(0x20141, 0x20007, 6.0f);
            func_801230E8(0x20141, 0x20142, 0);
            break;
        case 1:
            func_800AA78C(0x2017F, 0x20009, 6.0f);
            func_801230E8(0x2017F, 0x20180, 0);
            break;
        case 2:
            func_800AA78C(0x200D1, 0x20007, 6.0f);
            func_801230E8(0x200D1, 0x200D2, 0);
            break;
    }
}

void func_80157E38_ovl3(s32 arg0) {
    switch (gKirbyState.unk4) {
        case 0:
            func_800AA78C(0x2009B, 0x20007, 6.0f);
            func_801230E8(0x2009B, 0x2009C, 0);
            break;
        case 1:
            func_800AA78C(0x20169, 0x20009, 6.0f);
            func_801230E8(0x20169, 0x2016A, 0);
            break;
        case 2:
            func_800AA78C(0x200C3, 0x20007, 6.0f);
            func_801230E8(0x200C3, 0x200C4, 0);
            break;
    }
}

void func_80157F18_ovl3(struct GObj *arg0) {
    s32 objId = arg0->objId;

    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if (func_800F951C(D_800E5F90[objId], D_800E6BD0[objId], gKirbyState.unk3C, gKirbyState.unk40) < 0.0f) {
        if (1.0f == D_800E6A10[objId]) {
            gKirbyState.isTurning |= 1;
        }
        D_800E6690[omCurrentObj->objId] = -0.625f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
    } else {
        if (-1.0f == D_800E6A10[objId]) {
            gKirbyState.isTurning |= 1;
        }
        D_800E6690[omCurrentObj->objId] = 0.625f;
        D_800E6850[omCurrentObj->objId] = 5.0f;
    }
}

void func_801580C4_ovl3(struct GObj *arg0, f32 arg1) {
    s32 objId = arg0->objId;

    if ((arg1 != 0.0f) && (arg1 != D_800E6A10[objId])) {
        gKirbyState.isTurning |= 1;
        while (gKirbyState.isTurning & 1) {
            ohSleep(1);
        }
    }
}

void func_8015814C_ovl3(s32 arg0, void (*arg1)(), f32 arg2) {
    gKirbyState.unk44 = 0;
    while (gKirbyState.isTurning & 1) {
        ohSleep(1);
    }
    gKirbyState.unk18 = 0;
    func_80157C5C_ovl3(arg0);
    gKirbyState.unk30 = 0;
    arg1(arg0);
    func_80157D58_ovl3(arg0);
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    while (gKirbyState.isTurning & 1) {
        ohSleep(1);
    }
    func_801580C4_ovl3((struct GObj *) arg0, arg2);
    func_80157E38_ovl3(arg0);
    gKirbyState.unk44 = 1;
    curObjSleepForever();
}

extern void set_kirby_action_1(s32, s32);

void func_80158294_ovl3(arg0)
GObj *arg0;
{
    f32 v;
    s32 idx;

    func_80153984_ovl3();
    if (gKirbyState.unk30 == 0) {
        idx = arg0->objId;
        v = func_800F951C(D_800E5F90[idx], D_800E6BD0[idx], gKirbyState.unk3C, gKirbyState.unk40);
        if (v < 0.0f) {
            if (1.0f == D_800E6A10[idx]) {
                gKirbyState.unk30 = 1;
                D_800E64D0[idx] = v;
                D_800E6690[idx] = 0.0f;
            }
        } else {
            if (-1.0f == D_800E6A10[idx]) {
                gKirbyState.unk30 = 1;
                D_800E64D0[idx] = v;
                D_800E6690[idx] = 0.0f;
            }
        }
    }
    if (gKirbyState.unk44 != 0) {
        set_kirby_action_1(0, 1);
        gKirbyState.abilityState = 0;
    }
}

void func_801583BC_ovl3(void) {
    func_80158294_ovl3();
    if (gKirbyState.unk2C-- == 0) {
        gKirbyState.unk2C = 0x7FFFFFFF;
        D_800BE4F8 = 2;
    }
}

void func_80158410_ovl3(s32 arg0) {
    func_80157C5C_ovl3(arg0);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_80157E38_ovl3(arg0);
    curObjSleepForever();
}

void func_8015849C_ovl3(s32 arg0) {
    gKirbyState.unk2C = 0xB4;
    gKirbyState.unk3C = 2;
    gKirbyState.unk40 = 0.98f;
    D_800DDFD0[omCurrentObj->objId] = 0x46;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, -1.0f);
}

void func_80158508_ovl3(void) {
    func_801583BC_ovl3();
}

void func_80158528_ovl3(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x47;
    func_80158410_ovl3(arg0);
}

void func_80158564_ovl3(s32 arg0) {
    func_80153984_ovl3();
    if (gKirbyState.unkB == 1) {
        D_800BE4F8 = 2;
    }
}

void func_801585A0_ovl3(s32 arg0) {
    gKirbyState.unk3C = 1;
    gKirbyState.unk40 = 0.9999f;
    D_800DDFD0[omCurrentObj->objId] = 0x4F;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, 1.0f);
}

void func_80158604_ovl3(s32 arg0) {
    gKirbyState.unk3C = 3;
    gKirbyState.unk40 = 0.2231f;
    D_800DDFD0[omCurrentObj->objId] = 0x50;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, -1.0f);
}

void func_80158668_ovl3(void) {
    func_80158294_ovl3();
}

void func_80158688_ovl3(void) {
    func_80158294_ovl3();
}

void func_801586A8_ovl3(s32 arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0x51;
    func_80157C5C_ovl3(arg0);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}

void func_80158744_ovl3(s32 arg0) {
    func_80153984_ovl3();
    if (D_800E8920[omCurrentObj->objId] == 1) {
        set_kirby_action_1(0, 0x1C);
    } else {
        set_kirby_action_1(6, 0x1C);
    }
}

void func_801587AC_ovl3(s32 arg0) {
    gKirbyState.unk3C = 2;
    gKirbyState.unk40 = 0.0f;
    D_800DDFD0[omCurrentObj->objId] = 0x52;
    func_8015814C_ovl3(arg0, func_80157F18_ovl3, 1.0f);
}

void func_8015880C_ovl3(void) {
    func_80158294_ovl3();
}

void func_8015882C_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x48;
    switch (D_800BE500) {
        case 1:
            D_800E9720[omCurrentObj->objId] = 4;
            break;
        case 3:
        case 4:
            D_800E9720[omCurrentObj->objId] = 1;
            break;
    }
    curObjSleepForever();
}

void func_801588D0_ovl3(s32 arg0) {
    if (D_800E9720[omCurrentObj->objId]-- == 0) {
        func_8022E58C_ovl19();
    }
}

void func_80158924_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x49;
    D_800EA6E0[omCurrentObj->objId] = gKirbyState.unk148;
    func_80157C5C_ovl3(arg0);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
    gKirbyState.unk44 = 0;
    D_800E64D0[omCurrentObj->objId] = 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk44 == 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    func_800AF408();
    func_800AFBB4(0, omCurrentObj);
    func_800FBE1C();
    func_800FA414(3);
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = 0.0f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    curObjSleepForever();
}

void func_80158B10_ovl3(s32 arg0) {
    if (-1.0f == D_800E6A10[omCurrentObj->objId]) {
        if (!(gKirbyState.isTurning & 1)) {
            gKirbyState.isTurning |= 1;
        }
    }
    switch (gKirbyState.unk44) {
        case 0:
            gKirbyState.unk144 = gEntitiesNextPosXArray[omCurrentObj->objId];
            gKirbyState.unk148 = D_800EA6E0[omCurrentObj->objId];
            gKirbyState.unk14C = gEntitiesNextPosZArray[omCurrentObj->objId];
            func_800FF200(D_8012E944);
            break;
        case 1:
            break;
        case 2:
            gKirbyState.unk17 = 1;
            gKirbyState.abilityState = 0;
            *(s32 *) &gKirbyState.actionChange = -1;
            D_800D6FB2 = 1;
            gKirbyState.unk44 = -1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022785C_ovl19);
            break;
    }
}

void func_80158C40_ovl3(s32 arg0) {
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4A;
    func_80157C5C_ovl3(arg0);
    func_800FBE1C();
    func_800FA414(3);
    play_sound(0x1EF);
    curObjSleepForever();
}

void func_80158CA8_ovl3(s32 arg0) {
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gKirbyState.abilityState = 0;
    *(s32 *) &gKirbyState.actionChange = -1;
    D_800D6FB2 = 1;
    gKirbyState.unk44 = -1;
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = 0.035f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022785C_ovl19);
}

void func_80158DB4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4B;
    D_800E8920[omCurrentObj->objId] = 1;
    func_80157C5C_ovl3(arg0);
    D_800E64D0[omCurrentObj->objId] = 5.0f;
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk30 == 0) {
        ohSleep(1);
    }
    func_800AA78C(0x2009B, 0x20007, 12.0f);
    func_801230E8(0x2009B, 0x2009C, 0);
    curObjSleepForever();
}

void func_80158EEC_ovl3(s32 arg0) {
    if ((-1.0f == D_800E6A10[omCurrentObj->objId]) && !(gKirbyState.isTurning & 1)) {
        gKirbyState.isTurning |= 1;
    }
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            gKirbyState.abilityState = 0;
            gKirbyState.unk17 = 1;
            D_800E5F90[omCurrentObj->objId] = 3;
            D_800E6D90[omCurrentObj->objId] = 0.35f;
            D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
            func_800FA414(5);
            *(s32 *) &gKirbyState.actionChange = -1;
            D_800D6FB2 = 1;
            gKirbyState.unk44 = -1;
            D_800EC660[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId];
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_8022785C_ovl19);
        }
    } else if (0.4f <= D_800E6BD0[omCurrentObj->objId]) {
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E6D90[omCurrentObj->objId] = 0.4f;
        D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
        D_800E9720[omCurrentObj->objId] = 0x14;
        gKirbyState.unk30 = gKirbyState.unk30 + 1;
    }
    func_800FF200(D_8012E944);
}

#ifdef PORT
/* PORT: level-clear ride-out coroutine (via m2c). Seats the player, faces
 * the camera (isTurning), plays the character's idle then crouch charge,
 * waits for the animation to reach 0.54, jumps (12 up, -0.980665 gravity,
 * sound 0xF7) through the three-part jump animation, falls until moving
 * down below y=100, then rides: freezes motion, swaps the track-position
 * callback to func_800B5064, signals the ride object (D_800E8060[...] = 2),
 * waits for the mode key (gKirbyState.unk3C, the asm's D_8012E7FC alias)
 * to flip, adopts the ride's track state, snaps y onto the ride's second
 * DObj, re-derives track progress from the x delta to the ride, and walks
 * off at 14 with the walk animation. The widened D_800DFBD0 cell for N64
 * +0xC is index 3. */
extern void func_800B4954();
extern void func_800B5064(s32);
extern void func_80122B40(void);
extern void func_800BB468(s32, s32);
extern void func_800F98EC(s32, f32);
extern s32 func_800B2340(f32 *, struct DObj *, s32);

void func_80159164_ovl3(s32 arg0) {
    s32 id = omCurrentObj->objId;
    f32 probe[3];

    gKirbyState.unk3C = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[id] = 0x4C;
    D_800DDA90[id] = 0x26;
    func_800FA414(5);
    func_80157C5C_ovl3(arg0);
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = 0.0f;
    D_800E6850[id] = 65535.0f;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = 0.0f;
    D_800E3C90[id] = 65535.0f;
    if ((D_800E6A10[id] == -1.0f) && !(gKirbyState.isTurning & 1)) {
        gKirbyState.isTurning |= 1;
    }
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x2009B, 0x2009C, 0);
            break;
        case 1:
            func_801230E8(0x20169, 0x2016A, 0);
            break;
        case 2:
            func_801230E8(0x200C3, 0x200C4, 0);
            break;
    }
    ohSleep(0x1E);
    D_800E6690[id] = 0.625f;
    D_800E6850[id] = 5.0f;
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x20141, 0x20142, 0);
            break;
        case 1:
            func_801230E8(0x2017F, 0x20180, 0);
            break;
        case 2:
            func_801230E8(0x200D1, 0x200D2, 0);
            break;
    }
    while (!(D_800E6BD0[omCurrentObj->objId] >= 0.54f)) {
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    D_800E6BD0[id] = 0.54f;
    D_800E8920[id] = 0;
    D_800E64D0[id] = 3.0f;
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = 3.0f;
    D_800E3210[id] = 12.0f;
    D_800E3750[id] = -0.980665f;
    D_800E3C90[id] = 16.0f;
    play_sound(0xF7);
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x2009F, 0x200A0, 0);
            ohSleep(4);
            func_801230E8(0x200A1, 0x200A2, 1);
            func_801230E8(0x20089, 0x2008A, 0);
            break;
        case 1:
            func_801230E8(0x2016D, 0x2016E, 0);
            ohSleep(4);
            func_801230E8(0x2016F, 0x20170, 1);
            func_801230E8(0x20165, 0x20166, 0);
            break;
        case 2:
            func_801230E8(0x200C7, 0x200C8, 0);
            ohSleep(4);
            func_801230E8(0x200C9, 0x200CA, 1);
            func_801230E8(0x200C1, 0x200C2, 0);
            break;
    }
    for (;;) {
        id = omCurrentObj->objId;
        if ((D_800E3210[id] < 0.0f) && (gEntitiesNextPosYArray[id] <= 100.0f)) {
            break;
        }
        ohSleep(1);
    }
    func_80122B40();
    id = omCurrentObj->objId;
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = 0.0f;
    D_800E6850[id] = 65535.0f;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = 0.0f;
    D_800E3C90[id] = 65535.0f;
    D_800DEF90[id] = func_800B5064;
    D_800E0F10[id] = 3;
    switch (gKirbyState.unk4) {
        case 0:
            func_801230E8(0x2009B, 0x2009C, 0);
            break;
        case 1:
            func_801230E8(0x20169, 0x2016A, 0);
            break;
        case 2:
            func_801230E8(0x200C3, 0x200C4, 0);
            break;
    }
    id = omCurrentObj->objId;
    D_800E8060[D_800E0D50[id]] = 2;
    while (gKirbyState.unk3C == 0) {
        ohSleep(1);
    }
    id = omCurrentObj->objId;
    D_800E5F90[id] = D_800E5F90[D_800E0D50[id]];
    D_800E6BD0[id] = D_800E6BD0[D_800E0D50[id]];
    func_800B2340(probe, D_800DFBD0[D_800E0D50[id]][3], 0xFFFF);
    gEntitiesNextPosYArray[omCurrentObj->objId] = probe[1];
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4954;
    id = omCurrentObj->objId;
    func_800F98EC(id, gEntitiesNextPosXArray[id] - gEntitiesNextPosXArray[D_800E0D50[id]]);
    func_800FBE1C();
    func_800FA414(3);
    func_800BB468(4, 0x28);
    id = omCurrentObj->objId;
    D_800E64D0[id] = 7.5f;
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = 7.5f;
    D_800E3210[id] = 14.0f;
    D_800E3750[id] = 0.0f;
    D_800E3C90[id] = 14.0f;
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
    ohSleep(0x14);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_80159164_ovl3.s")
#endif

void func_80159ADC_ovl3(s32 arg0) {
    if (gKirbyState.unk3C == 0) {
        func_80153984_ovl3();
    }
    if (gKirbyState.unk30 != 0) {
        D_800BE52C = D_800BE500;
        D_800BE530 = D_800BE504;
        D_800BE534 = D_800BE508 + 1;
        D_800BE538 = 0;
        D_800BE4FC = 1;
        D_800BE4F8 = 2;
        gKirbyState.unk30 = 0;
        D_800E8760[omCurrentObj->objId] = 0;
    }
    func_800FF200(D_8012E944);
}

extern s32 D_8012E7E8[];
extern void func_80120A28(void);
extern void func_800AF27C(void);
extern void func_800B5064(s32);
extern void func_800B531C(s32);
void func_80159EA0_ovl3(s32, s32, f32);

void func_80159BA0_ovl3(s32 arg0) {
    D_8012E7E8[2] = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4D;
    func_8011E0E8();
    switch (gKirbyState.unk4) {
        case 0:
            break;
        case 1:
            func_80120A28();
            if (func_800AA888(0x20009) == 0) {
                func_80122F08(0x20009);
            }
            func_801230E8(0x20167, 0x20168, 0);
            D_800DF310[omCurrentObj->objId] = func_80159EA0_ovl3;
            func_800AF27C();
            func_80122F08(0x20007);
            D_800E0490[omCurrentObj->objId] = (f32 **) D_801926E8_ovl3;
            gKirbyState.unk4 = 0;
            break;
        case 2:
            func_80120A28();
            gKirbyState.unkD = -3;
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            func_801230E8(0x2010F, 0x20110, 1);
            gKirbyState.unkD = -1;
            gKirbyState.unk4 = 0;
            break;
    }
    D_800DDA90[omCurrentObj->objId] = 0x26;
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (D_800E8060[D_800E0D50[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800E0F10[omCurrentObj->objId] = 2;
    func_801230E8(0x2005F, 0x20060, 1);
    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800E6BD0[omCurrentObj->objId] = 0.4285f;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    curObjSleepForever();
}

void func_80159EA0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_801708A0_ovl3(arg0, arg1, arg2);
            gKirbyState.unk4 = 1;
        }
    }
}

/* D_80196FA4_ovl3 now emitted by this TU */
/* D_80196FA8_ovl3 now emitted by this TU */
/* D_80196FAC_ovl3 now emitted by this TU */
/* D_80196FB0_ovl3 now emitted by this TU */

void func_80159EF0_ovl3(s32 arg0) {
    f32 sp24[3];
    void func_80152348_ovl3(f32);
    s32 func_800B2340(f32 *, struct DObj *, s32);

    if (D_800E8060[D_800E0D50[omCurrentObj->objId]] == 0) {
        func_80153984_ovl3();
        gEntitiesNextPosZArray[omCurrentObj->objId] = 0;
        if (0.6f <= D_800E6BD0[omCurrentObj->objId]) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E8060[D_800E0D50[omCurrentObj->objId]] = 1;
        }
        func_800FF200(D_8012E944);
        return;
    }
    if (gKirbyState.unk30 != 0) {
        D_800DDA90[omCurrentObj->objId] = 0x23;
        func_8011CF58();
        set_kirby_action_1(0, 1);
        func_80152348_ovl3(20.0f);
        gKirbyState.unk17 = 0;
        gKirbyState.abilityState = 0;
        gKirbyState.unk24 = 0;
        gKirbyState.unk68 = 0;
        D_800E0D50[omCurrentObj->objId] = -1;
        D_800E8760[omCurrentObj->objId] = 0;
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] =
            gEntitiesNextPosYArray[omCurrentObj->objId] - 1.9f;
    }
    func_800B2340(sp24, D_800DFBD0[omCurrentObj->objId][1], 0xFFFF);
    ((f32 *) D_8012E944)[1] = sp24[0];
    ((f32 *) D_8012E944)[2] = gEntitiesNextPosYArray[omCurrentObj->objId] + 1.9f;
    ((f32 *) D_8012E944)[3] = sp24[2];
}

extern void func_800A9760(s32);

void func_8015A144_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk44 = 1;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x4E;
    func_80157C5C_ovl3(arg0);
    gKirbyState.unk4 = 0;
    gKirbyState.unkD = -3;
    func_800A9760(0x20007);
    D_800E6690[omCurrentObj->objId] = 0.625f;
    D_800E6850[omCurrentObj->objId] = 5.0f;
    func_801230E8(0x20141, 0x20142, 0);
    while (gKirbyState.unk44 == 1) {
        ohSleep(1);
    }
    func_800FA414(5);
    func_801230E8(0x2009B, 0x2009C, 0);
    D_800E8060[D_800E0D50[omCurrentObj->objId]] = 2;
    ohSleep(0x1A);
    func_801230E8(0x2009F, 0x200A0, 0);
    play_sound(0x259);
    D_800E3210[omCurrentObj->objId] = 70.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 70.0f;
    ohSleep(0x22);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_8015A31C_ovl3(s32 arg0) {
    s32 state = gKirbyState.unk44;

    switch (state) {
        case 1:
            if ((D_800E5F90[omCurrentObj->objId] == 5) && (0.87f <= D_800E6BD0[omCurrentObj->objId])) {
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                D_800E6850[omCurrentObj->objId] = 65535.0f;
                gKirbyState.unk44 = 2;
            }
            break;
        case 2:
            if (gKirbyState.unk30 != 0) {
                D_800BE52C = D_800BE500;
                D_800BE530 = D_800BE504;
                D_800BE534 = D_800BE508 + 1;
                D_800BE538 = 0;
                D_800BE4FC = 1;
                D_800BE4F8 = 2;
                gKirbyState.unk30 = 0;
            }
            break;
    }
}

#ifdef PORT
/* PORT: level-entry drop-in coroutine (via m2c). Seats the player fresh
 * (no track callback, zeroed turn/inhale state, camera reset via
 * func_8011E234, tick rates from gameTicksPerDraw), then lands: in water,
 * tilt 15deg, sink at -0.4 for one animation beat, then surface-idle; on
 * land, tilt 22.5deg, fall at terminal 16 until the ground pass grounds
 * the entity, then play the landing pair. Arms the 30-frame door lockout
 * (D_800E9720) and signals the per-frame handler through unk30. */
extern void func_8011E234(void);

void func_8015A44C_ovl3(s32 arg0) {
    s32 id;

    gKirbyState.unk30 = 0;
    D_800DDFD0[omCurrentObj->objId] = 0x45;
    func_80157C5C_ovl3(arg0);
    D_800DF310[omCurrentObj->objId] = NULL;
    gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
    D_800D6F10 = 0;
    gKirbyState.isTurning = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.isInhaling = 0;
    D_800E8060[omCurrentObj->objId] = -1;
    gKirbyState.unk4 = 0;
    gKirbyState.unkD = -3;
    func_8011E234();
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk78 = -D_800E6A10[omCurrentObj->objId];
    gKirbyState.unk80 = 0.0f;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 6) {
        D_800EA6E0[id] = 0.2617994f;
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = 0.0f;
        D_800E6850[id] = 65535.0f;
        D_800E3750[id] = -0.4f;
        D_800E3C90[id] = 1.0f;
        if (gKirbyState.previousAction == 0x1B) {
            func_800AA78C(0x20089, 0x20007, 6.0f);
        }
        func_801230E8(0x20089, 0x2008A, 0);
        while (gKirbyState.unk14 == 1) {
            ohSleep(1);
        }
        id = omCurrentObj->objId;
        D_800E3750[id] = 0.0f;
        D_800E3210[id] = 0.0f;
        D_800E3C90[id] = 65535.0f;
        func_800AA78C(0x200A7, 0x20007, 6.0f);
        func_801230E8(0x200A7, 0x200A8, 1);
        func_801230E8(0x200A9, 0x200AA, 0);
    } else {
        D_800EA6E0[id] = 0.3926991f;
        D_800E6690[id] = 0.0f;
        D_800E64D0[id] = 0.0f;
        D_800E6850[id] = 65535.0f;
        if (D_800E8920[id] == 0) {
            D_800E3750[id] = -0.980665f;
            D_800E3C90[id] = 16.0f;
            func_800AA78C(0x20089, 0x20007, 3.0f);
            func_801230E8(0x20089, 0x2008A, 0);
            while (D_800E8920[omCurrentObj->objId] == 0) {
                ohSleep(1);
            }
        }
        func_80122B40();
        func_801230E8(0x200B5, 0x200B6, 1);
        if (gKirbyState.unk14 != 2) {
            func_801230E8(0x2009B, 0x2009C, 0);
            while (gKirbyState.unk14 == 1) {
                ohSleep(1);
            }
        }
        func_800AA78C(0x200A3, 0x20007, 6.0f);
        func_801230E8(0x200A3, 0x200A4, 1);
        func_801230E8(0x200A5, 0x200A6, 0);
    }
    D_800E9720[omCurrentObj->objId] = 0x1E;
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_8015A44C_ovl3.s")
#endif

void func_8015A92C_ovl3(s32 arg0) {
    if (!(D_800E8AE0[omCurrentObj->objId] & 6)) {
        func_80153984_ovl3();
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        if (D_800E9720[omCurrentObj->objId]-- == 0) {
            func_800F6C78();
            gKirbyState.unk30 = 0;
        }
    }
    func_80120CCC(D_800EA6E0[omCurrentObj->objId], 1.5707964f);
}

#ifdef NON_MATCHING
/* 101/172. */
s32 func_8015A9F8_ovl3(void) {
    s32 ret;
    s32 func_800F8560(void);

    if ((gKirbyState.action == 0x1D) || (gKirbyState.action == 0x1E) || (gKirbyState.action == 0x1C)) {
        return 0;
    }
    switch (gKirbyState.unkB) {
        case 1:
        case 2:
            if ((gKirbyState.action == 0xA) || (gKirbyState.action == 0xB)) {
                gKirbyState.action = 0x1D;
                gKirbyState.unk2C = 0x1E;
            } else {
                if (gKirbyState.abilityInUse != 0) {
                    func_8011E0E8();
                    func_8011DC5C();
                    gKirbyState.abilityInUse = 0;
                }
                set_kirby_action_1(0x46, 0x1D);
            }
            gKirbyState.unk15C = 0;
            return 1;
        case 3:
        case 4:
            if ((gKirbyState.action != 0x1A)
             && ((gKirbyState.abilityInUse == 0) || (gKirbyState.abilityInUse == 0x12))
             && ((gKirbyState.action == 0x1B) || (D_800E8920[omCurrentObj->objId] != 0))) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                gKirbyState.unk15C = 0;
                set_kirby_action_1(0x46, 0x1D);
                return 1;
            }
            return 0;
        default:
            if (gKirbyState.abilityState == 0) {
                return 0;
            }
            if (gKirbyState.action == 0x1C) {
                return 0;
            }
            if ((gKirbyState.abilityInUse != 0) && (gKirbyState.abilityInUse != 0x12)) {
                return 0;
            }
            if (gKirbyState.action == 0x1A) {
                return 0;
            }
            ret = 0;
            if (func_800F8560() == 2) {
                ret = 1;
            } else if (D_800E8920[omCurrentObj->objId] != 0) {
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                ret = 1;
            }
            if (ret == 0) {
                return 0;
            }
            set_kirby_action_1(gKirbyState.abilityState, 0x1C);
            return 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plydemo/func_8015A9F8_ovl3.s")
#endif

