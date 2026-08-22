#include "common.h"
#include "GObj.h"
#include "Player.h"

#include "ovl1/ovl1_6.h"
#include "ovl19_2.h"
#include "unk_structs/D_8022FAB0.h"
#include "unk_structs/D_8012E944.h"
#include "ovl1/ovl1_7.h"
#include "main/object_manager.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_8.h"
#include "ovl3/ovl3_1.h"
#include "ovl1/ovl1_13.h"
#include "buffers.h"

void func_80227A38_ovl19(GObj*);
void func_80223200_ovl19(GObj*);
void func_802248C0_ovl19(GObj*);
void func_802260FC_ovl19(GObj*);
void func_80227AA8_ovl19(void);
void func_802284EC_ovl19(GObj*);
void func_800B19F4(s32 flags, s32 track);
void func_80227938_ovl19(GObj*);
void func_8011DAF8(void);
void func_80153984_ovl3(void);
f32 func_800F8824(Vector *vec, f32 angle);
extern Vector *D_8012BCA8[];
extern FUNCLIST D_8022F518_ovl19, D_8022F524_ovl19;
extern s32 D_8022F50C_ovl19[];
void func_800B5094(s32);
extern struct CollisionTriangle *D_8012BCC0;
s32 func_80104AB4(Vector *, Vector *, u16, u16, void *);
s32 func_8021EE88_ovl19(GObj *);

extern f32 gKirbyHp;
extern u16 D_800D6F58[];
extern FUNCLIST D_8022F530_ovl19, D_8022F53C_ovl19;

struct Ovl19F548 {
    u32 unk0;
    u32 unk4;
};
extern struct Ovl19F548 D_8022F548_ovl19[];

void omGMoveObjDL(GObj *, u8, s32);
void func_80120E74(void);
extern s32 D_8012E7FC[];
extern s32 D_8012E80C[];
extern s32 D_800D6B54;
extern s32 D_8022FAD0_ovl19;
extern s32 D_8022FAF0_ovl19;

// likely just an array of 38
extern struct Ovl19_2Struct D_8022F170_ovl19[3], // 1-3
                            D_8022F1B8_ovl19[2], // 4, 5
                            D_8022F1E8_ovl19[1], // 6
                            D_8022F200_ovl19[1], // 7
                            D_8022F218_ovl19[2], // 8, 9
                            D_8022F248_ovl19[1], // 10
                            D_8022F260_ovl19[1], // 11
                            D_8022F278_ovl19[2], // 12,13
                            D_8022F2A8_ovl19[3], // 14-16
                            D_8022F2F0_ovl19[2], // 17,18
                            D_8022F320_ovl19[1], // 19
                            D_8022F338_ovl19[1], // 20
                            D_8022F350_ovl19[2], // 21,22
                            D_8022F380_ovl19[1], // 23
                            D_8022F398_ovl19[2], // 24, 25
                            D_8022F3C8_ovl19[2], // 26,27
                            D_8022F3F8_ovl19[3], // 28-30
                            D_8022F440_ovl19[2], // 31,32
                            D_8022F470_ovl19[1], // 33
                            D_8022F488_ovl19[1], // 34
                            D_8022F4A0_ovl19[2], // 35,36
                            D_8022F4D0_ovl19[1], // 37
                            D_8022F4E8_ovl19[1]; // 38

#ifdef NON_MATCHING_
void func_80223200_ovl19(GObj *arg0) {
    s32 var_a0;
    struct Ovl19_2Struct *temp_v0;

    if (gKirbyState.unk44 == -1) {
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800DDE10[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], func_80227A38_ovl19);
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0;
        gKirbyState.unk15C = &D_8019257C;
        gKirbyState.unk154 = 7;
        D_800E0490[omCurrentObj->objId] = &D_80192FF4;
        func_80152348_ovl3(20.0f);
        func_800A9760(0x20064);
        gKirbyState.unk154 = 1;
        request_track_general(0x13, 1, 2);
        D_800E98E0[1] = 0;
        gEntityFuncListIDArray[1] = 1;
        D_800E8220[1] = 0;
        request_track_general(0x13, 2, 3);
        gEntityFuncListIDArray[2] = 0;
        D_800E8220[2] = 0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        var_a0 = 6;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        D_800EC2E0[2].as_u32 = -1;
        D_800EC2E0[1].as_u32 = -1;
        gKirbyState.unk30 = 0;
        gKirbyState.unk44 = 6;
        D_800E98E0[omCurrentObj->objId] = 6;
        D_800E8060[omCurrentObj->objId] = 0;
    }
    switch (gKirbyState.unk44) {
        case 6:
            if (gKirbyState.unk58 == 0) {
                func_8011DC04(0x21D);
            }
            temp_v0 = &D_8022F260_ovl19[0];
            gKirbyState.data = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x25);
            D_80129138 = 0;
            func_800FA414(2);
            D_800E6690[omCurrentObj->objId] = 0.0425f;
            D_800E6850[omCurrentObj->objId] = 8.0f;
            func_800AF27C();
            gKirbyState.unk30 = 0;
            gKirbyState.unk17 = 0;
            gKirbyState.unk44 = 0;
        default:
            curObjSleepForever();
            break;
        case 0:
            D_800E9AA0[omCurrentObj->objId] = -1;
            while (1) {
                s32 rand;
    loop_9:
                if (D_800E6850[omCurrentObj->objId] > 4.0f) {
                    s32 rand = random_soft_s32_range(2);
                    gKirbyState.data = rand;
                    if (rand != D_800E9AA0[omCurrentObj->objId]) {
                        D_800E9AA0[omCurrentObj->objId] = rand;
                        break;
                    } else {
                        goto loop_9;
                    }
                } else {
                    gKirbyState.data = 0;
                    rand = 0;
                }
                temp_v0 = &D_8022F170_ovl19[rand];
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA154(temp_v0->unk0);
            }
        case 1:
            D_800E8920[omCurrentObj->objId] = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.isFullJump = 0;
            play_sound(0xF7);
            gKirbyState.unkCC = 8.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            temp_v0 = &D_8022F1B8_ovl19[0];
            gKirbyState.data = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            temp_v0 = &D_8022F1B8_ovl19[1];
            gKirbyState.isFullJump += 1;
            gKirbyState.data = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk44 = 2;
            D_800E98E0[omCurrentObj->objId] = 2;
            /* fallthrough */
        case 2:
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F1E8_ovl19[0];
            if (!(gEntitiesAngleXArray[omCurrentObj->objId] > 0.0f) || !(gEntitiesAngleXArray[omCurrentObj->objId] >= 0.7853982f)) {
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA018(temp_v0->unk0);
            }
            /* Duplicate return node #30. Try simplifying control flow for better match */
            curObjSleepForever();
            break;
        case 3:
            gKirbyState.unk30 = 0;
            gKirbyState.data = 0;
            play_sound(0x145);
            temp_v0 = &D_8022F200_ovl19[gKirbyState.data];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk30 += 1;
            /* Duplicate return node #30. Try simplifying control flow for better match */
            curObjSleepForever();
            break;
        case 4:
            gKirbyState.unk30 = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8060[omCurrentObj->objId] = -1;
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            func_800BB468(2, 0);
            play_sound(0x144);
            gKirbyState.data = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 18.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F218_ovl19[gKirbyState.data];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            D_800E8060[omCurrentObj->objId] = 0;
            gKirbyState.unk30 += 1;
            /* Duplicate return node #30. Try simplifying control flow for better match */
            curObjSleepForever();
            break;
        case 5:
            func_80020C88();
            func_800A7EB4();
            if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
                func_800B1900(D_800E9FE0[omCurrentObj->objId].as_u32);
            }
            func_80227C88_ovl19();
            play_sound(0x144);
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E6690[omCurrentObj->objId] = -0.225f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            play_music(0, 5);
            func_80176398_ovl3();
            func_80224858_ovl19();
            D_800D6B54[1] = 0xA0;
            D_800D6B54 = 1;
            D_800BE4F8 = 6;
            temp_v0 = &D_8022F248_ovl19[0];
            gKirbyState.data = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (D_800E8920[omCurrentObj->objId] == 0) {
                ohSleep(1);
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            /* Duplicate return node #30. Try simplifying control flow for better match */
            curObjSleepForever();
            break;
        case 7:
            gKirbyState.unk30 = 0;
            gKirbyState.data = 0;
            D_800E6690[omCurrentObj->objId] = 0.25f;
            D_800E6850[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F278_ovl19[gKirbyState.data];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.rightCollisionNext == 0) {
                ohSleep(1);
            }
            func_800BB468(2, 0);
            D_800E64D0[omCurrentObj->objId] = 16.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 16.0f;
            D_800E3210[omCurrentObj->objId] = 12.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            D_800E8920[omCurrentObj->objId] = 0;
            func_800AECC0(1.5f);
            func_800AED20(1.5f);
            func_800AED80(1.5f, 1);
            func_800AEDD0(1.5f, 1);
            func_800AED80(1.5f, 2);
            func_800AEDD0(1.5f, 2);
            gKirbyState.data = 1;
            D_800E98E0[omCurrentObj->objId] = 1;
            play_sound(0x144);
            temp_v0 = &D_8022F278_ovl19[gKirbyState.data];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x2D);
            gKirbyState.unk30 += 1;
            /* Duplicate return node #30. Try simplifying control flow for better match */
            curObjSleepForever();
            break;
    }
}
#elif defined(PORT)
/* PORT: behavioral port of the NON_MATCHING_ sketch above, re-verified
 * against asm/nonmatchings/ovl19/ovl19_2/func_80223200_ovl19.s. Kirby-side
 * state machine for this boss track, driven by gKirbyState.unk44:
 * -1 = one-time setup (process hook, Kirby collision blob D_8019257C via
 * the file's pointer-in-u32 unk15C idiom -- exe sits below 4 GiB --, geo
 * 0x20064, two helper tracks, physics zeroed, state 6). Case 0 is the
 * ROM's deliberate INFINITE idle loop: each pass picks a random anim 0..1
 * distinct from the previous pick (forced to 0 while speed <= 4) and
 * blocks inside func_800AA154 until the anim finishes, so it yields every
 * iteration. The anim record tables D_8022F1xx_ovl19 are u32[6] records,
 * emitted natively by gen_data on PC (no pointers). Case 6 falls into the
 * default sleep; case 1 falls through to case 2 as in the ROM. */
void func_80223200_ovl19(GObj *arg0) {
    void func_8011CF58(void);
    void func_8011DC04(u32);
    void func_800A9760(u32);
    void func_800FA414(s32);
    void func_800AF27C(void);
    void auFunc80020C88(void);
    void func_800A7EB4(void);
    void func_80227C88_ovl19(void);
    s32 play_music(s32, s32);
    void play_sound(s32);
    /* func_800AA018/func_800AA154 stay implicitly declared -- the compiled
     * NON_MATCHING arms later in this file call them through (void *)
     * casts and an explicit prototype here would clash with those. */
    s32 random_soft_s32_range(s32);
    void func_80176398_ovl3(void);
    void func_800BB468(u32, s32);
    extern s32 D_80129138;
    extern s32 D_800BE4F8;
    extern s32 D_8019257C;
    extern f32 *D_80192FF4;
    struct Ovl19_2Struct *temp_v0;

    if (gKirbyState.unk44 == -1) {
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800DDE10[omCurrentObj->objId] = 0;
        assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], func_80227A38_ovl19);
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 0;
        gKirbyState.unk15C = (u32)(uintptr_t)&D_8019257C;
        gKirbyState.unk154 = 7;
        D_800E0490[omCurrentObj->objId] = &D_80192FF4;
        func_80152348_ovl3(20.0f);
        func_800A9760(0x20064);
        gKirbyState.unk154 = 1;
        request_track_general(0x13, 1, 2);
        D_800E98E0[1] = 0;
        gEntityFuncListIDArray[1] = 1;
        D_800E8220[1] = 0;
        request_track_general(0x13, 2, 3);
        gEntityFuncListIDArray[2] = 0;
        D_800E8220[2] = 0;
        gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        D_800EC2E0[2].as_u32 = -1;
        D_800EC2E0[1].as_u32 = -1;
        gKirbyState.unk30 = 0;
        gKirbyState.unk44 = 6;
        D_800E98E0[omCurrentObj->objId] = 6;
        D_800E8060[omCurrentObj->objId] = 0;
    }
    switch (gKirbyState.unk44) {
        case 6:
            if (gKirbyState.unk58 == 0) {
                func_8011DC04(0x21D);
            }
            temp_v0 = &D_8022F260_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x25);
            D_80129138 = 0;
            func_800FA414(2);
            D_800E6690[omCurrentObj->objId] = 0.0425f;
            D_800E6850[omCurrentObj->objId] = 8.0f;
            func_800AF27C();
            gKirbyState.unk30 = 0;
            gKirbyState.unk17 = 0;
            gKirbyState.unk44 = 0;
            /* fallthrough into the default sleep, as in the ROM */
        default:
            curObjSleepForever();
            break;
        case 0:
            D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)-1;
            while (1) {
                s32 idx;

                /* pick the next idle anim; a repeat of the previous pick
                 * re-rolls (the ROM re-checks the speed gate each roll) */
                while (1) {
                    if (D_800E6850[omCurrentObj->objId] > 4.0f) {
                        idx = random_soft_s32_range(2);
                        gKirbyState.unk3C = idx;
                        if (idx != (s32)(uintptr_t)D_800E9AA0[omCurrentObj->objId]) {
                            D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)idx;
                            break;
                        }
                    } else {
                        gKirbyState.unk3C = 0;
                        idx = 0;
                        break;
                    }
                }
                temp_v0 = &D_8022F170_ovl19[idx];
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA154(temp_v0->unk0); /* blocks until the anim ends */
            }
            break;
        case 1:
            D_800E8920[omCurrentObj->objId] = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.isFullJump = 0;
            play_sound(0xF7);
            gKirbyState.unkCC = 8.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            temp_v0 = &D_8022F1B8_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            temp_v0 = &D_8022F1B8_ovl19[1];
            gKirbyState.isFullJump += 1;
            gKirbyState.unk3C = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk44 = 2;
            D_800E98E0[omCurrentObj->objId] = 2;
            /* fallthrough */
        case 2:
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F1E8_ovl19[0];
            if (!(gEntitiesAngleXArray[omCurrentObj->objId] > 0.0f) ||
                !(gEntitiesAngleXArray[omCurrentObj->objId] >= 0.7853982f)) {
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA018(temp_v0->unk0);
            }
            curObjSleepForever();
            break;
        case 3:
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            play_sound(0x145);
            temp_v0 = &D_8022F200_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 4:
            gKirbyState.unk30 = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8060[omCurrentObj->objId] = -1;
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            func_800BB468(2, 0);
            play_sound(0x144);
            gKirbyState.unk3C = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 18.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F218_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            D_800E8060[omCurrentObj->objId] = 0;
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 5:
            auFunc80020C88();
            func_800A7EB4();
            if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
                func_800B1900(D_800E9FE0[omCurrentObj->objId].as_u32 & 0xFFFF);
            }
            func_80227C88_ovl19();
            play_sound(0x144);
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E6690[omCurrentObj->objId] = -0.225f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            play_music(0, 5);
            func_80176398_ovl3();
            func_80224858_ovl19();
            (&D_800D6B54)[1] = 0xA0;
            D_800D6B54 = 1;
            D_800BE4F8 = 6;
            temp_v0 = &D_8022F248_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (D_800E8920[omCurrentObj->objId] == 0) {
                ohSleep(1);
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            curObjSleepForever();
            break;
        case 7:
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            D_800E6690[omCurrentObj->objId] = 0.25f;
            D_800E6850[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F278_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.rightCollisionNext == 0) {
                ohSleep(1);
            }
            func_800BB468(2, 0);
            D_800E64D0[omCurrentObj->objId] = 16.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 16.0f;
            D_800E3210[omCurrentObj->objId] = 12.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            D_800E8920[omCurrentObj->objId] = 0;
            func_800AECC0(1.5f);
            func_800AED20(1.5f);
            func_800AED80(1.5f, 1);
            func_800AEDD0(1.5f, 1);
            func_800AED80(1.5f, 2);
            func_800AEDD0(1.5f, 2);
            gKirbyState.unk3C = 1;
            D_800E98E0[omCurrentObj->objId] = 1;
            play_sound(0x144);
            temp_v0 = &D_8022F278_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x2D);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80223200_ovl19.s")
#endif


#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_80223E68_ovl19.s -- the per-frame
 * companion of func_80223200_ovl19 (this level's Kirby movement hook).
 * Every tick: floor snap (func_80153A18_ovl3), shadow refresh
 * (func_800FF200), landing-thud test func_80121828 (m2c's raw bit
 * constants are 18.0f, same convention as the ovl3_6.c port). While
 * grounded the floor-normal slope (-func_800F8824 on D_8012BCA8[1], the
 * ovl3_6.c reading of m2c's `D_8012BCA8.unk4`) is copied into Kirby's
 * pitch; a slope SIGN FLIP outside states 2/7 instead launches him
 * (state 2, velocity split through sin/cos of |pitch|+10deg). Then the
 * unk44 state poll: 0/3 jump or fall transitions, 1 one-shot jump SFX
 * via func_8011EBD4, 2 landing -> 3, 4 waits out unk30, 6 spins paddle
 * DObjs [8]/[9] through the D_800D7238 scratch (same idiom as
 * ovl3_6.c's wheel) and returns, 7 sets the level-clear D_800BE5xx
 * block and returns. States 0-5 fall into the shared tail: shape rescale
 * func_8011D4A4(1.0f) when hit this frame, hitbox func_8016854C_ovl3 on
 * DObj [1], then the state->track sync that re-arms func_80223200_ovl19
 * (state 4 pays 1 HP, dropping to 5 when it kills). When
 * func_80227D4C_ovl19 reports a collision (and unk44 != 7) the switch is
 * skipped and only the sync runs. */
void func_80223E68_ovl19(GObj *arg0) {
    s32 func_80153A18_ovl3(void);
    /* func_800FF200 stays implicitly declared -- compiled code later in
     * this file calls it without a prototype. */
    s32 func_80121828(f32, f32, f32, f32);
    void play_sound(s32);
    void func_8011DC04(u32);
    void func_8011DC5C(void);
    void func_8011EBD4(void);
    void *func_8011D4A4(f32);
    extern void func_8016854C_ovl3(void *, struct DObj *, f32);
    extern s32 D_800BE4FC, D_800BE500, D_800BE504, D_800BE508;
    extern s32 D_800BE52C, D_800BE530, D_800BE534, D_800BE538;
    extern s32 D_800BE4F8;
    extern f32 D_800D7238;
    extern s32 D_801925E4;
    s32 objId;
    s32 state;

    func_80153A18_ovl3();
    func_800FF200(D_8012E944);
    if (func_80121828(-0.980665f, 18.0f, -0.980665f, 18.0f) != 0) {
        play_sound(0x145);
    }
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        f32 slope = -func_800F8824(D_8012BCA8[1], D_800E17D0[objId]);

        if (slope == 0.0f) {
            gEntitiesAngleXArray[objId] = slope;
        } else {
            f32 pitch = gEntitiesAngleXArray[objId];

            if (((pitch >= 0.0f) && (slope >= 0.0f)) || ((pitch <= 0.0f) && (slope <= 0.0f))) {
                gEntitiesAngleXArray[objId] = slope;
            } else if ((gKirbyState.unk44 == 2) || (gKirbyState.unk44 == 7)) {
                gEntitiesAngleXArray[objId] = slope;
            } else {
                /* slope sign flipped under him: launch */
                D_800E8920[objId] = 0;
                gKirbyState.unk44 = 2;
                pitch = gEntitiesAngleXArray[objId];
                if (pitch < 0.0f) {
                    f32 a = ABSF(pitch) + 0.174532935f;

                    D_800E3210[objId] = sinf(a) * D_800E64D0[objId];
                    D_800E64D0[objId] *= cosf(a);
                }
            }
        }
        if (gKirbyState.unk58 == 0) {
            func_8011DC04(0x143);
        }
    } else if (gKirbyState.unk58 != 0) {
        func_8011DC5C();
    }

    if ((gKirbyState.unk44 == 7) || (func_80227D4C_ovl19() == 0)) {
        switch (gKirbyState.unk44) {
            case 0:
                if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    gKirbyState.unk44 = 2;
                }
                break;
            case 1:
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
                break;
            case 2:
                if (D_800E8920[omCurrentObj->objId] != 0) {
                    gKirbyState.unk44 = 3;
                }
                break;
            case 3:
                if (gKirbyState.unk30 != 0) {
                    gKirbyState.unk44 = 0;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    gKirbyState.unk44 = 2;
                }
                break;
            case 4:
                if (gKirbyState.unk30 != 0) {
                    if (D_800E8920[omCurrentObj->objId] != 0) {
                        gKirbyState.unk44 = 0;
                    } else {
                        gKirbyState.unk44 = 2;
                    }
                }
                break;
            case 6: {
                /* rotate the paddle wheel DObjs and bail out */
                objId = omCurrentObj->objId;
                D_800D7238 = (D_800E64D0[objId] * 4.0f * 3.1415927f) / 180.0f;
                D_800DFBD0[objId][8]->angle.v.x += D_800D7238;
                D_800DFBD0[objId][9]->angle.v.x += D_800D7238;
                return;
            }
            case 7:
                if (gKirbyState.unk30 != 0) {
                    D_800BE52C = D_800BE500;
                    D_800BE530 = D_800BE504;
                    D_800BE534 = D_800BE508 + 1;
                    D_800BE538 = 0;
                    D_800BE4FC = 1;
                    D_800BE4F8 = 2;
                    gKirbyState.unk30 = 0;
                }
                return;
            default:
                break;
        }
        /* shared tail for states 0..5 and out-of-range values */
        objId = omCurrentObj->objId;
        if ((D_800E7B20[objId] != 0.0f) && (D_800D6B54 == 0) && (gKirbyState.unk44 != 4)) {
            func_8011D4A4(1.0f);
            objId = omCurrentObj->objId;
        }
        func_8016854C_ovl3(&D_801925E4, D_800DFBD0[objId][1], 1.0f);
    }

    /* sync unk44 into the track state, re-arming the state coroutine */
    state = gKirbyState.unk44;
    objId = omCurrentObj->objId;
    if (state != D_800E98E0[objId]) {
        if (state == 4) {
            if (gKirbyState.unk68 == 3) {
                gKirbyHp += 1.0f;
            }
            if (change_kirby_hp(-1.0f) == 0) {
                gKirbyState.unk44 = 5;
            } else {
                D_800E64D0[omCurrentObj->objId] = 7.5f;
            }
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_80223200_ovl19);
        state = gKirbyState.unk44;
        D_800E98E0[omCurrentObj->objId] = state;
    }
    if ((state != 6) && (state != 7)) {
        func_8022470C_ovl19();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80223E68_ovl19.s")
#endif

void func_80224564_ovl19(GObj *arg0) {
    D_800DE190[omCurrentObj->objId] = 0;
    curObjSleepForever();
}

void func_802245A0_ovl19(s32 arg0) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp += 1.0f;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }

        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80223200_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

void func_8022470C_ovl19(void) {
    f32 tmp = 12.0f;
    f32 angle;

    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E6690[omCurrentObj->objId] = 0.25f;
        D_800E6850[omCurrentObj->objId] = ABSF(tmp);
    } else if (D_8012E7FC[2] != 1) {
        D_800E6690[omCurrentObj->objId] = 0.025f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
    angle = (D_800E64D0[omCurrentObj->objId] * 4.0f * 3.141592741f) / 180.0f;
    D_800DFBD0[omCurrentObj->objId][8]->angle.v.x += angle;
    D_800DFBD0[omCurrentObj->objId][9]->angle.v.x += angle;
}

void func_80224858_ovl19(void) {
    if (D_800DD710[1] != -1) {
        omGMoveObjDL(D_800DE350[1], 0xC, D_800DE350[1]->renderPriority);
    }
    if (D_800DD710[2] != -1) {
        omGMoveObjDL(D_800DE350[2], 0xC, D_800DE350[1]->renderPriority);
    }
}

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_802248C0_ovl19.s -- the raft-level
 * sibling of func_80223200_ovl19 (same unk44-driven Kirby state machine,
 * raft anim tables D_8022F2A8..D_8022F3C8 and raft sounds). Differences
 * verified against the asm: -1 setup uses collision blob D_8019257C with
 * override joint 5, anim override table D_8019304C, geo 0x20065, marks
 * D_800DDE10/D_800DDFD0 = 1, seeds the two splash particle handles
 * unk4C/unk50 via func_800A8234(2,1,0x61); case 6 spawns the raft track
 * (request_track_general(0x13,0x3C,0x4A) -> funclist 5, id kept in
 * D_800D71F8 as in helper.c), then waits for the raft entity to reach
 * state 5 at blend >= 0.2 before the intro anim; case 0 is the ROM's
 * infinite idle loop gated at speed > 6 (func_800AA154 blocks per pass);
 * case 2 gravity is -1.2258313f; case 7 waits for a right wall hit
 * (rumbling func_8011DC04(0x146) while grounded), then spawns the goal
 * track (funclist 6, its Y snapped to Kirby's, id into
 * D_80129138/D_8012913C) and plays the finish anim. The switch re-reads
 * unk44 after the -1 block (the asm reloads 0x44($s1)); m2c's second
 * arguments to play_sound/random_soft_s32_range/func_800AA154/
 * func_800FA414/func_8011DC5C are leftover registers -- all single-arg
 * (func_8011DC5C is void). */
void func_802248C0_ovl19(GObj *arg0) {
    void func_8011CF58(void);
    void func_8011DC04(u32);
    void func_8011DC5C(void);
    void func_800A9760(u32);
    void func_800FA414(s32);
    void func_800FBE1C(void);
    void func_800AF27C(void);
    void auFunc80020C88(void);
    void func_800A7EB4(void);
    void func_80227C88_ovl19(void);
    s32 play_music(s32, s32);
    void play_sound(s32);
    s32 random_soft_s32_range(s32);
    void func_80176398_ovl3(void);
    void func_800BB468(u32, s32);
    extern s32 D_80129138;
    extern s32 D_8012913C;
    extern s32 D_800BE4F8;
    extern s32 D_8019257C;
    extern f32 *D_8019304C;
    extern u32 D_800D71F8;
    struct Ovl19_2Struct *temp_v0;
    s32 idx;

    if (gKirbyState.unk44 == -1) {
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800DDE10[omCurrentObj->objId] = 1;
        assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], func_80227A38_ovl19);
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 1;
        gKirbyState.unk15C = (u32)(uintptr_t)&D_8019257C;
        gKirbyState.unk154 = 5;
        D_800E0490[omCurrentObj->objId] = &D_8019304C;
        func_80152348_ovl3(20.0f);
        func_800A9760(0x20065);
        gKirbyState.unk154 = 1;
        request_track_general(0x13, 1, 2);
        D_800E98E0[1] = 0;
        gEntityFuncListIDArray[1] = 1;
        D_800E8220[1] = 1;
        request_track_general(0x13, 2, 3);
        gEntityFuncListIDArray[2] = 0;
        D_800E8220[2] = 1;
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        D_800EC2E0[1].as_u32 = -1;
        D_800EC2E0[2].as_u32 = -1;
        gKirbyState.unk30 = 0;
        gKirbyState.unk44 = 6;
        D_800E98E0[omCurrentObj->objId] = 6;
        D_800E8060[omCurrentObj->objId] = 0;
        gKirbyState.unk48 = 0;
        gKirbyState.unk4C = func_800A8234(2, 1, 0x61);
        gKirbyState.unk50 = func_800A8234(2, 1, 0x61);
    }
    switch (gKirbyState.unk44) {
        case 6:
            idx = request_track_general(0x13, 0x3C, 0x4A);
            D_800D71F8 = idx;
            gEntityFuncListIDArray[idx] = 5;
            play_sound(0x1F3);
            temp_v0 = &D_8022F398_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            D_800E64D0[omCurrentObj->objId] = 6.0f;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 6.0f;
            /* wait for the raft to be ready (state 5, blend >= 0.2) */
            while (!((D_800E5F90[omCurrentObj->objId] == 5) &&
                     (D_800E6BD0[omCurrentObj->objId] >= 0.2f))) {
                ohSleep(1);
            }
            play_sound(0x214);
            func_800FBE1C();
            func_800FA414(3);
            temp_v0 = &D_8022F398_ovl19[1];
            gKirbyState.unk3C = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            func_800AF27C();
            gKirbyState.unk30 = 0;
            gKirbyState.unk17 = 0;
            gKirbyState.unk44 = 0;
            /* fallthrough into the default sleep, as in the ROM */
        default:
            curObjSleepForever();
            break;
        case 0:
            D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)-1;
            while (1) {
                s32 pick;

                while (1) {
                    if (D_800E6850[omCurrentObj->objId] > 6.0f) {
                        pick = random_soft_s32_range(2);
                        gKirbyState.unk3C = pick;
                        if (pick != (s32)(uintptr_t)D_800E9AA0[omCurrentObj->objId]) {
                            D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)pick;
                            break;
                        }
                    } else {
                        gKirbyState.unk3C = 0;
                        pick = 0;
                        break;
                    }
                }
                temp_v0 = &D_8022F2A8_ovl19[pick];
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA154(temp_v0->unk0); /* blocks until the anim ends */
            }
            break;
        case 1:
            D_800E8920[omCurrentObj->objId] = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.isFullJump = 0;
            play_sound(0xF7);
            gKirbyState.unkCC = 8.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            temp_v0 = &D_8022F2F0_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            temp_v0 = &D_8022F2F0_ovl19[1];
            gKirbyState.isFullJump += 1;
            gKirbyState.unk3C = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk44 = 2;
            D_800E98E0[omCurrentObj->objId] = 2;
            /* fallthrough */
        case 2:
            D_800E3750[omCurrentObj->objId] = -1.2258313f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F320_ovl19[0];
            if (!(gEntitiesAngleXArray[omCurrentObj->objId] > 0.0f) ||
                !(gEntitiesAngleXArray[omCurrentObj->objId] >= 0.7853982f)) {
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA018(temp_v0->unk0);
            }
            curObjSleepForever();
            break;
        case 3:
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            play_sound(0x148);
            temp_v0 = &D_8022F338_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 4:
            gKirbyState.unk30 = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8060[omCurrentObj->objId] = -1;
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            func_800BB468(2, 0);
            play_sound(0x147);
            gKirbyState.unk3C = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 18.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F350_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            D_800E8060[omCurrentObj->objId] = 0;
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 5:
            auFunc80020C88();
            func_800A7EB4();
            if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
                func_800B1900(D_800E9FE0[omCurrentObj->objId].as_u32 & 0xFFFF);
            }
            func_80227C88_ovl19();
            play_sound(0x147);
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E6690[omCurrentObj->objId] = -0.225f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            play_music(0, 5);
            func_80176398_ovl3();
            func_80224858_ovl19();
            (&D_800D6B54)[1] = 0xA0;
            D_800D6B54 = 1;
            D_800BE4F8 = 6;
            temp_v0 = &D_8022F380_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (D_800E8920[omCurrentObj->objId] == 0) {
                ohSleep(1);
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            curObjSleepForever();
            break;
        case 7:
            temp_v0 = &D_8022F3C8_ovl19[0];
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.rightCollisionNext == 0) {
                if ((D_800E8920[omCurrentObj->objId] != 0) && (gKirbyState.unk58 == 0)) {
                    func_8011DC04(0x146);
                }
                ohSleep(1);
            }
            idx = request_track_general(0x13, 0x3C, 0x4A);
            gEntityFuncListIDArray[idx] = 6;
            gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[omCurrentObj->objId];
            func_800FA414(2);
            D_8012913C = idx;
            D_80129138 = idx;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            if (gKirbyState.unk58 != 0) {
                func_8011DC5C();
            }
            func_800BB468(2, 0);
            func_800AECC0(1.5f);
            func_800AED20(1.5f);
            func_800AED80(1.5f, 1);
            func_800AEDD0(1.5f, 1);
            func_800AED80(1.5f, 2);
            func_800AEDD0(1.5f, 2);
            play_sound(0x147);
            temp_v0 = &D_8022F3C8_ovl19[1];
            gKirbyState.unk3C = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x28);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802248C0_ovl19.s")
#endif

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_80225620_ovl19.s -- the raft
 * level's per-frame Kirby hook (sibling of func_80223E68_ovl19, paired
 * with func_802248C0_ovl19). Same skeleton: floor snap, shadow, landing
 * test func_80121828(+/-18.0f raw-bit constants) with thud 0x148, floor
 * slope into Kirby's pitch with the sign-flip launch, unk44 poll and the
 * state->track sync. Raft-specific bits verified against the asm: the
 * grounded rumble is 0x146 and is gated on a value that is unk44 only on
 * the sign-flip paths but D_8012E7FC[2] on the plain slope-store paths
 * (the ROM really compares that global against 7 there); case 7 sets
 * D_800BE538=1 / D_800BE4FC=2; the hitbox table is D_8019264C; and after
 * the sync EVERY frame falls into the splash-emitter update (case 6
 * jumps straight there): the two func_800A8234 generator handles in
 * gKirbyState.unk4C/unk50 get their UnkEmitter position pairs (fields
 * unk4..unk18) refreshed from paddle DObjs [3] and [4] via
 * func_800B2340/func_800B26D8. Generator-node mirror follows plylib.c's
 * func_8011D0FC PORT arm: LP64 emitter pointer at +0x58 (N64 +0x4C). */
void func_80225620_ovl19(GObj *arg0) {
    s32 func_80153A18_ovl3(void);
    s32 func_80121828(f32, f32, f32, f32);
    void play_sound(s32);
    void func_8011DC04(u32);
    void func_8011DC5C(void);
    void func_8011EBD4(void);
    void *func_8011D4A4(f32);
    void func_800B2340(Vector *, struct DObj *, u32);
    void func_800B26D8(Vector *, struct DObj *, u32);
    extern void func_8016854C_ovl3(void *, struct DObj *, f32);
    extern s32 D_800BE4FC, D_800BE500, D_800BE504, D_800BE508;
    extern s32 D_800BE52C, D_800BE530, D_800BE534, D_800BE538;
    extern s32 D_800BE4F8;
    extern s32 D_8019264C;
    struct PcSplashEmitter {        /* UnkEmitter head (src/ovl1/ovl1.c) */
        void *next;
        f32 unk4;
        f32 unk8;
        f32 unkC;
        f32 unk10;
        f32 unk14;
        f32 unk18;
    };
    struct PcGenNodeRef {           /* generator node: N64 +0x48/+0x4C on LP64 */
        u8 pad[80];
        struct DObj *unk48;
        struct PcSplashEmitter *unk4C;
    };
    struct PcGenNodeRef *gen;
    struct PcSplashEmitter *em;
    Vector v;
    s32 objId;
    s32 state;
    s32 rumbleGate;

    func_80153A18_ovl3();
    func_800FF200(D_8012E944);
    if (func_80121828(-0.980665f, 18.0f, -0.980665f, 18.0f) != 0) {
        play_sound(0x148);
    }
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        f32 slope = -func_800F8824(D_8012BCA8[1], D_800E17D0[objId]);

        if (slope == 0.0f) {
            gEntitiesAngleXArray[objId] = slope;
            rumbleGate = D_8012E7FC[2];
        } else {
            f32 pitch = gEntitiesAngleXArray[objId];

            if (((pitch >= 0.0f) && (slope >= 0.0f)) || ((pitch <= 0.0f) && (slope <= 0.0f))) {
                gEntitiesAngleXArray[objId] = slope;
                rumbleGate = D_8012E7FC[2];
            } else if ((gKirbyState.unk44 == 2) || (gKirbyState.unk44 == 7)) {
                gEntitiesAngleXArray[objId] = slope;
                rumbleGate = gKirbyState.unk44;
            } else {
                /* slope sign flipped under him: launch */
                D_800E8920[objId] = 0;
                gKirbyState.unk44 = 2;
                pitch = gEntitiesAngleXArray[objId];
                if (pitch < 0.0f) {
                    f32 a = ABSF(pitch) + 0.174532935f;

                    D_800E3210[objId] = sinf(a) * D_800E64D0[objId];
                    D_800E64D0[objId] *= cosf(a);
                }
                rumbleGate = gKirbyState.unk44;
            }
        }
        if ((rumbleGate != 7) && (gKirbyState.unk58 == 0)) {
            func_8011DC04(0x146);
        }
    } else if (gKirbyState.unk58 != 0) {
        func_8011DC5C();
    }

    if ((gKirbyState.unk44 == 7) || (func_80227D4C_ovl19() == 0)) {
        switch (gKirbyState.unk44) {
            case 0:
                if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    gKirbyState.unk44 = 2;
                }
                break;
            case 1:
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
                break;
            case 2:
                if (D_800E8920[omCurrentObj->objId] != 0) {
                    gKirbyState.unk44 = 3;
                }
                break;
            case 3:
                if (gKirbyState.unk30 != 0) {
                    gKirbyState.unk44 = 0;
                } else if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                    gKirbyState.unk44 = 2;
                }
                break;
            case 4:
                if (gKirbyState.unk30 != 0) {
                    if (D_800E8920[omCurrentObj->objId] != 0) {
                        gKirbyState.unk44 = 0;
                    } else {
                        gKirbyState.unk44 = 2;
                    }
                }
                break;
            case 6:
                /* no state work; still refresh the splash emitters */
                goto splash;
            case 7:
                if (gKirbyState.unk30 != 0) {
                    D_800BE52C = D_800BE500;
                    D_800BE530 = D_800BE504;
                    D_800BE534 = D_800BE508 + 1;
                    D_800BE538 = 1;
                    D_800BE4FC = 2;
                    D_800BE4F8 = 2;
                    gKirbyState.unk30 = 0;
                }
                return;
            default:
                break;
        }
        /* shared tail for states 0..5 and out-of-range values */
        objId = omCurrentObj->objId;
        if ((D_800E7B20[objId] != 0.0f) && (D_800D6B54 == 0) && (gKirbyState.unk44 != 4)) {
            func_8011D4A4(1.0f);
            objId = omCurrentObj->objId;
        }
        func_8016854C_ovl3(&D_8019264C, D_800DFBD0[objId][1], 1.0f);
    }

    /* sync unk44 into the track state, re-arming the state coroutine */
    state = gKirbyState.unk44;
    objId = omCurrentObj->objId;
    if (state != D_800E98E0[objId]) {
        if (state == 4) {
            if (gKirbyState.unk68 == 3) {
                gKirbyHp += 1.0f;
            }
            if (change_kirby_hp(-1.0f) == 0) {
                gKirbyState.unk44 = 5;
            } else {
                D_800E64D0[omCurrentObj->objId] = 7.5f;
            }
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802248C0_ovl19);
        state = gKirbyState.unk44;
        D_800E98E0[omCurrentObj->objId] = state;
    }
    if ((state != 6) && (state != 7)) {
        func_80225FB4_ovl19();
    }

splash:
    /* pin the two paddle splash generators to DObjs [3] and [4] (the ROM
     * only checks the first handle, like here) */
    if (gKirbyState.unk4C != 0) {
        gen = (struct PcGenNodeRef *)(uintptr_t)gKirbyState.unk4C;
        func_800B2340(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
        em = gen->unk4C;
        em->unk4 = v.x;
        em->unk8 = v.y;
        em->unkC = v.z;
        func_800B26D8(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
        em = gen->unk4C;
        em->unk10 = v.x;
        em->unk14 = v.y;
        em->unk18 = v.z;
        gen = (struct PcGenNodeRef *)(uintptr_t)gKirbyState.unk50;
        func_800B2340(&v, D_800DFBD0[omCurrentObj->objId][4], 0xFFFF);
        em = gen->unk4C;
        em->unk4 = v.x;
        em->unk8 = v.y;
        em->unkC = v.z;
        func_800B26D8(&v, D_800DFBD0[omCurrentObj->objId][4], 0xFFFF);
        em = gen->unk4C;
        em->unk10 = v.x;
        em->unk14 = v.y;
        em->unk18 = v.z;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225620_ovl19.s")
#endif

void func_80225DF8_ovl19(GObj *arg0) {
    D_800DE190[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

void func_80225E38_ovl19(s32 arg0) {
    if ((D_800E83E0[omCurrentObj->objId] != 0) && (gKirbyState.unk44 != 7)) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp++;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802248C0_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

void func_80225FB4_ovl19(void) {
    f32 tmp = 12.0f;

    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E6690[omCurrentObj->objId] = 0.45f;
        D_800E6850[omCurrentObj->objId] = ABSF(tmp);
        if (gKirbyState.unk4C == 0) {
            gKirbyState.unk48 = 0;
            D_8012E80C[0] = func_800A8234(2, 1, 0x61);
            D_8012E80C[1] = func_800A8234(2, 1, 0x61);
        }
    } else {
        if (D_8012E80C[0] != 0) {
            func_8011E0E8();
        }
        if (D_8012E7FC[2] != 1) {
            D_800E6690[omCurrentObj->objId] = 0.025f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
        }
    }
}

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_802260FC_ovl19.s -- third variant
 * of the unk44-driven Kirby state coroutine (swimming leg, tables
 * D_8022F3F8..D_8022F4E8, sounds 0x141/0x142). Setup (-1) differences
 * verified against the asm: D_800DDE10/D_800DDFD0 = 2, anim override
 * table D_801930A4, geo 0x20066, marks Kirby animated via
 * func_800AFBB4(1, omCurrentObj), spawns the ripple effect track
 * func_8021EE88_ovl19(1) (the int rides the pointer parameter), seeds
 * unk40 = 3.0f and drops STRAIGHT into state 0 (no state-6 intro). Case
 * 0 is the ROM's infinite idle loop with no speed gate: re-roll until
 * different from the last pick, then block in func_800AA154. Case 5 has
 * NO voice-stop call here (only func_800A7EB4; m2c's argument is a
 * leftover register). Case 7 just plays the finish anim and sleeps 0x5A.
 * Case 6 does not exist (default sleeps). */
void func_802260FC_ovl19(GObj *arg0) {
    void func_8011CF58(void);
    void func_800A9760(u32);
    void func_800A7EB4(void);
    void func_80227C88_ovl19(void);
    s32 play_music(s32, s32);
    void play_sound(s32);
    s32 random_soft_s32_range(s32);
    void func_80176398_ovl3(void);
    void func_800BB468(u32, s32);
    extern s32 D_800BE4F8;
    extern s32 D_8019257C;
    extern f32 *D_801930A4;
    struct Ovl19_2Struct *temp_v0;

    if (gKirbyState.unk44 == -1) {
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800DDE10[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], func_80227A38_ovl19);
        func_8011CF58();
        D_800DDFD0[omCurrentObj->objId] = 2;
        gKirbyState.unk15C = (u32)(uintptr_t)&D_8019257C;
        gKirbyState.unk154 = 5;
        D_800E0490[omCurrentObj->objId] = &D_801930A4;
        func_80152348_ovl3(20.0f);
        func_800AFBB4(1, omCurrentObj);
        func_800A9760(0x20066);
        gKirbyState.unk154 = 1;
        D_800E64D0[omCurrentObj->objId] = 0.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        D_800EC2E0[2].as_u32 = -1;
        D_800EC2E0[1].as_u32 = -1;
        request_track_general(0x13, 1, 2);
        D_800E98E0[1] = 0;
        gEntityFuncListIDArray[1] = 1;
        D_800E8220[1] = 2;
        request_track_general(0x13, 2, 3);
        gEntityFuncListIDArray[2] = 0;
        D_800E8220[2] = 2;
        D_800EC2E0[2].as_u32 = -1;
        D_800EC2E0[1].as_u32 = -1;
        func_8021EE88_ovl19((GObj *)(uintptr_t)1);
        gKirbyState.unk30 = 0;
        gKirbyState.unk17 = 0;
        D_800E8060[omCurrentObj->objId] = 0;
        gKirbyState.unk44 = 0;
        gKirbyState.unk40 = 3.0f;
        D_800E98E0[omCurrentObj->objId] = 0;
    }
    switch (gKirbyState.unk44) {
        case 0:
            D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)-1;
            while (1) {
                s32 pick;

                do {
                    pick = random_soft_s32_range(2);
                    gKirbyState.unk3C = pick;
                } while (pick == (s32)(uintptr_t)D_800E9AA0[omCurrentObj->objId]);
                D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)pick;
                temp_v0 = &D_8022F3F8_ovl19[pick];
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA154(temp_v0->unk0); /* blocks until the anim ends */
            }
            break;
        case 1:
            D_800E8920[omCurrentObj->objId] = 0;
            gKirbyState.jumpHeight = 0;
            gKirbyState.isFullJump = 0;
            play_sound(0xF7);
            gKirbyState.unkCC = 8.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            temp_v0 = &D_8022F440_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (gKirbyState.unkCC < D_800E3210[omCurrentObj->objId]) {
                ohSleep(1);
            }
            temp_v0 = &D_8022F440_ovl19[1];
            gKirbyState.isFullJump += 1;
            gKirbyState.unk3C = 1;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk44 = 2;
            D_800E98E0[omCurrentObj->objId] = 2;
            /* fallthrough */
        case 2:
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F470_ovl19[0];
            if (!(gEntitiesAngleXArray[omCurrentObj->objId] > 0.0f) ||
                !(gEntitiesAngleXArray[omCurrentObj->objId] >= 0.7853982f)) {
                D_800EC2E0[1].as_u32 = temp_v0->unk8;
                D_800EC4A0[1] = temp_v0->unkC;
                D_800EC2E0[2].as_u32 = temp_v0->unk10;
                D_800EC4A0[2] = temp_v0->unk14;
                func_800AA018(temp_v0->unk0);
            }
            /* fallthrough into the default sleep, as in the ROM */
        default:
            curObjSleepForever();
            break;
        case 3:
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            play_sound(0x142);
            temp_v0 = &D_8022F488_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 4:
            gKirbyState.unk30 = 0;
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E8060[omCurrentObj->objId] = -1;
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
            func_800BB468(2, 0);
            play_sound(0x141);
            gKirbyState.unk3C = 1;
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E3210[omCurrentObj->objId] = 18.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 18.0f;
            temp_v0 = &D_8022F4A0_ovl19[gKirbyState.unk3C];
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA154(temp_v0->unk0);
            D_800E8060[omCurrentObj->objId] = 0;
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
        case 5:
            func_800A7EB4();
            if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
                func_800B1900(D_800E9FE0[omCurrentObj->objId].as_u32 & 0xFFFF);
            }
            func_80227C88_ovl19();
            play_sound(0x141);
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E6690[omCurrentObj->objId] = -0.225f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = 15.0f;
            D_800E3750[omCurrentObj->objId] = -0.980665f;
            D_800E3C90[omCurrentObj->objId] = 15.0f;
            play_music(0, 5);
            func_80176398_ovl3();
            func_80224858_ovl19();
            (&D_800D6B54)[1] = 0xA0;
            D_800D6B54 = 1;
            D_800BE4F8 = 6;
            temp_v0 = &D_8022F4D0_ovl19[0];
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            while (D_800E8920[omCurrentObj->objId] == 0) {
                ohSleep(1);
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            curObjSleepForever();
            break;
        case 7:
            temp_v0 = &D_8022F4E8_ovl19[0];
            gKirbyState.unk30 = 0;
            gKirbyState.unk3C = 0;
            D_800EC2E0[1].as_u32 = temp_v0->unk8;
            D_800EC4A0[1] = temp_v0->unkC;
            D_800EC2E0[2].as_u32 = temp_v0->unk10;
            D_800EC4A0[2] = temp_v0->unk14;
            func_800AA018(temp_v0->unk0);
            ohSleep(0x5A);
            gKirbyState.unk30 += 1;
            curObjSleepForever();
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802260FC_ovl19.s")
#endif

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_80226AA8_ovl19.s -- the swimming
 * leg's per-frame Kirby hook (paired with func_802260FC_ovl19). While
 * grounded: a nonzero vertical velocity is flattened (gravity 0, cap
 * 65535) with a water-entry plop 0x142 unless the raft entity is in
 * state 2/3, then the floor slope goes into Kirby's pitch; airborne
 * restores gravity -0.980665 / cap 18. Then the unk44 poll (same state
 * meanings as the siblings; no launch logic here). Case 7 reads the
 * NEXT-STAGE bytes from track node [3]'s kirby-node record
 * (D_80129114->unk4[3].unk0 bytes +4..+7 -- lbu in the ROM, u8 fields of
 * ovl2_3.c's TrackKirbyNode, kept in place by ovl2_2.c's field-wise
 * swap) into D_800BE52C.. and always returns. Unlike the siblings, BOTH
 * func_8011D4A4 and the func_8016854C_ovl3 hitbox only run when Kirby
 * was hit this frame. The sync re-arms func_802260FC_ovl19 and calls
 * func_802271A8_ovl19 unless state 7. The track node array is native on
 * PC (LP64 stride 24, ovl2_2.c's loader). */
void func_80226AA8_ovl19(GObj *arg0) {
    s32 func_80153A18_ovl3(void);
    void play_sound(s32);
    void func_8011EBD4(void);
    void *func_8011D4A4(f32);
    void func_802271A8_ovl19(void);
    extern void func_8016854C_ovl3(void *, struct DObj *, f32);
    extern s32 D_800BE4FC;
    extern s32 D_800BE52C, D_800BE530, D_800BE534, D_800BE538;
    extern s32 D_800BE4F8;
    extern s32 D_801926B4;
    /* minimal native mirrors of unk_structs/D_80129114.h (LP64 layouts
     * asserted in ovl2_2.c) */
    struct PcTrackNodeRef {         /* struct Unk80129114_4, stride 24 */
        void *unk0;                 /* kirby-node record */
        void *unk4;
        u32 unk8;
        u8 unkC;
        u8 unkD;
        s16 unkE;
    };
    struct PcTrackHdrRef {          /* struct UnkStruct80129114 */
        u32 unk0;
        struct PcTrackNodeRef *unk4;
    };
    struct PcKirbyNodeHead {        /* TrackKirbyNode head (ovl2_3.c) */
        u8 unk0;
        u8 unk1;
        u16 unk2;
        u8 unk4;
        u8 unk5;
        u8 unk6;
        u8 unk7;
    };
    extern struct PcTrackHdrRef *D_80129114;
    struct PcKirbyNodeHead *node;
    s32 objId;
    s32 state;

    func_80153A18_ovl3();
    func_800FF200(D_8012E944);
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        if (D_800E3210[objId] != 0.0f) {
            D_800E3750[objId] = 0.0f;
            D_800E3210[objId] = D_800E3750[objId];
            D_800E3C90[objId] = 65535.0f;
            if ((D_800E5F90[objId] != 2) && (D_800E5F90[objId] != 3)) {
                play_sound(0x142);
            }
        }
        gEntitiesAngleXArray[objId] = -func_800F8824(D_8012BCA8[1], D_800E17D0[objId]);
    } else {
        D_800E3750[objId] = -0.980665f;
        D_800E3C90[objId] = 18.0f;
    }

    if ((gKirbyState.unk44 != 7) && (func_80227D4C_ovl19() != 0)) {
        goto sync; /* hit something: skip the poll and the hitbox */
    }
    switch (gKirbyState.unk44) {
        case 0:
            if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 1;
            } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                gKirbyState.unk44 = 2;
            }
            break;
        case 1:
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            break;
        case 2:
            if (D_800E8920[omCurrentObj->objId] != 0) {
                gKirbyState.unk44 = 3;
            }
            break;
        case 3:
            if (gKirbyState.unk30 != 0) {
                gKirbyState.unk44 = 0;
            } else if (gKirbyController.buttonPressed & 0x8000) {
                gKirbyState.unk44 = 1;
            } else if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                gKirbyState.unk44 = 2;
            }
            break;
        case 4:
            if (gKirbyState.unk30 != 0) {
                if (D_800E8920[omCurrentObj->objId] != 0) {
                    gKirbyState.unk44 = 0;
                } else {
                    gKirbyState.unk44 = 2;
                }
            }
            break;
        case 7:
            if (gKirbyState.unk30 != 0) {
                node = (struct PcKirbyNodeHead *) D_80129114->unk4[3].unk0;
                D_800BE52C = node->unk4;
                D_800BE530 = node->unk5;
                D_800BE534 = node->unk6;
                D_800BE538 = node->unk7;
                D_800BE4FC = 2;
                D_800BE4F8 = 2;
                gKirbyState.unk30 = 0;
            }
            return;
        default:
            break;
    }

    /* the hitbox only runs when he was actually hit this frame */
    objId = omCurrentObj->objId;
    if ((D_800E7B20[objId] != 0.0f) && (D_800D6B54 == 0) && (gKirbyState.unk44 != 4)) {
        func_8011D4A4(1.0f);
        func_8016854C_ovl3(&D_801926B4, D_800DFBD0[omCurrentObj->objId][1], 1.0f);
    }

sync:
    state = gKirbyState.unk44;
    objId = omCurrentObj->objId;
    if (state != D_800E98E0[objId]) {
        if (state == 4) {
            if (gKirbyState.unk68 == 3) {
                gKirbyHp += 1.0f;
            }
            if (change_kirby_hp(-1.0f) == 0) {
                gKirbyState.unk44 = 5;
            } else {
                D_800E64D0[omCurrentObj->objId] = 7.5f;
            }
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802260FC_ovl19);
        state = gKirbyState.unk44;
        D_800E98E0[omCurrentObj->objId] = state;
    }
    if (state != 7) {
        func_802271A8_ovl19();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80226AA8_ovl19.s")
#endif

void func_80226FFC_ovl19(GObj *arg0) {
    D_800DE190[omCurrentObj->objId] = 2;
    curObjSleepForever();
}

void func_8022703C_ovl19(s32 arg0) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp++;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802260FC_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

void func_802271A8_ovl19(void) {
    s32 pad0;
    f32 v;
    Vector sp44;
    Vector sp38;
    struct CollisionTriangle *sp34;
    f32 *py;
    f32 **pp;

    pp = D_800E0490[omCurrentObj->objId];
    py = pp[1];
    sp44.x = gEntitiesPosXArray[omCurrentObj->objId];
    sp44.y = *py + gEntitiesPosYArray[omCurrentObj->objId];
    sp44.z = gEntitiesPosZArray[omCurrentObj->objId];
    sp38.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp38.y = *py + gEntitiesNextPosYArray[omCurrentObj->objId];
    sp38.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp34 = D_8012BCC0;
    if (func_80104AB4(&sp44, &sp38, 1, 0x13, &sp34) != 0) {
        gKirbyState.unk40 = sp34->collisionParameter * 0.1f;
    }
    if (D_800E8920[omCurrentObj->objId] != 0) {
        v = gKirbyState.unk40;
        D_800E6690[omCurrentObj->objId] = 0.2f;
        if (v < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -v;
        } else {
            D_800E6850[omCurrentObj->objId] = v;
        }
    } else if (gKirbyState.unk44 != 1) {
        D_800E6690[omCurrentObj->objId] = 0.025f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

void func_802273A0_ovl19(GObj *arg0) {
    extern f32 *D_80192F9C[];
    extern s32 D_8022F500_ovl19[];
    void func_8022759C_ovl19(GObj *);

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800DF150[omCurrentObj->objId] = func_8022759C_ovl19;
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[0];
    D_800E83E0[omCurrentObj->objId] = 0;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    D_800E0490[omCurrentObj->objId] = D_80192F9C;
    func_80154648_ovl3(0, &D_8022FAF0_ovl19, &D_8022FAD0_ovl19);
    D_800E0F10[omCurrentObj->objId] = D_8022F500_ovl19[D_800E8220[omCurrentObj->objId]];
    func_800A9864(0x20060, 0x20, 0x10);
    while (1) {
        if (D_800EC2E0[omCurrentObj->objId].as_s32 != -1) {
            if (D_800EC4A0[omCurrentObj->objId] != 0) {
                func_800AA018((void *) D_800EC4A0[omCurrentObj->objId]);
            }
            func_800AA018((void *) D_800EC2E0[omCurrentObj->objId].as_s32);
            D_800EC2E0[omCurrentObj->objId].as_s32 = -1;
        }
        ohSleep(1);
    }
}

void func_8022759C_ovl19(GObj *gobj) {
    Vector vec;

    D_800E17D0[omCurrentObj->objId] = D_800E17D0[0];
    if (*D_800E7B20 != 0.0f) {
        if (D_800D6B54 == 0) {
            if (D_8012E7FC[2] != 4) {
                vec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
                vec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
                vec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
                func_80155C68_ovl3(&D_8022FAD0_ovl19, &vec);
            } else {
                func_80154648_ovl3(0, &D_8022FAF0_ovl19, &D_8022FAD0_ovl19);
            }
        }
    }
}

void func_80227690_ovl19(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = &func_800B5094;
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[0];
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    D_800E0F10[omCurrentObj->objId] = D_8022F50C_ovl19[D_800E8220[omCurrentObj->objId]];
    func_800A9864(0x20007, 0x20, 0x10);
    while (1) {
        if (D_800EC2E0[omCurrentObj->objId].as_s32 != -1) {
            if (D_800EC2E0[omCurrentObj->objId].as_s32 != 0) {
                func_800AFBB4(1, omCurrentObj);
                if (D_800EC4A0[omCurrentObj->objId] != 0) {
                    func_800AA018((void *) D_800EC4A0[omCurrentObj->objId]);
                }
                func_800AA018(D_800EC2E0[omCurrentObj->objId].as_s32);
                D_800EC2E0[omCurrentObj->objId].as_s32 = -1;
            } else {
                func_800AFBB4(0, omCurrentObj);
            }
        }
        ohSleep(1);
    }
}

void func_8022785C_ovl19(GObj *arg0) {
    gKirbyState.unk44 = -1;
    D_800DF150[omCurrentObj->objId] = &func_80227938_ovl19;
    D_8012E944->unk10.x = 24.0f;
    D_8012E944->unk10.y = 20.0f;
    D_8012E944->unk10.z = -240.0f;
    gKirbyState.unk24 = 0;
    gKirbyState.unk68 = 0;
    gEntityFuncListIDArray[omCurrentObj->objId] = D_800D6F58[0x2C] & 0xFF;
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 3, D_8022F518_ovl19);
}

void func_80227938_ovl19(GObj *arg0) {
    func_8011DAF8();
    if (D_800E7B20[omCurrentObj->objId] == 0.0f) {
        func_80153984_ovl3();
        func_800FF200(D_8012E944);
        if (D_800E8920[omCurrentObj->objId] != 0) {
            gEntitiesAngleXArray[omCurrentObj->objId] = -func_800F8824(D_8012BCA8[1], D_800E17D0[omCurrentObj->objId]);
        } else {
            gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        }
    } else if (D_800D6B54 == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 3, D_8022F524_ovl19);
    }
}

void func_80227A38_ovl19(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray4[omCurrentObj->objId], (void *) &func_80227AA8_ovl19);
    utilFuncTableJump(D_800DDE10[omCurrentObj->objId], 3, D_8022F530_ovl19);
}

void func_80227AA8_ovl19(void) {
    func_80120E74();
    if ((D_800D6B54 == 0) && (D_800E7B20[omCurrentObj->objId] != 0.0f)) {
        utilFuncTableJump(D_800DE190[omCurrentObj->objId], 3, D_8022F53C_ovl19);
    }
}

u32 func_80227B20_ovl19(void) {
    Vector v0, v1;

    if (D_800D6B54 != 0 || D_800E7B20[omCurrentObj->objId] == 0.0f) {
        return 1;
    }
    v0.x = gEntitiesPosXArray[omCurrentObj->objId];
    v0.y = gEntitiesPosYArray[omCurrentObj->objId];
    v0.z = gEntitiesPosZArray[omCurrentObj->objId];
    v1.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (func_8010474C(&v0, &v1) != 0) {
        func_8011D40C();
        return 1;
    }
    if ((gKirbyState.unk140 != 0) && (D_800E7B20[omCurrentObj->objId] != 0.0f) && (gKirbyState.unk44 != 4)) {
        return 1;
    }
    return 0;
}

void func_80227C88_ovl19(void) {
    s32 i;

    for (i = 4; i != 0x4A; i++) {
        if ((D_800DD710[i] != -1) && (D_800DD710[i] != 0x23)) {
            if (D_800DD8D0[i] & 0x40) {
                func_800B19F4(0x7F, i);
            } else {
                func_800B19F4(0x3F, i);
            }
        }
    }
}

#ifdef NON_MATCHING
/* 1 diff, and it grows this TU by 16 bytes. Guarded by the manager: it was
   left un-guarded and non-matching, which shifts every segment after it. */
/* 12/123, structurally complete; residue is the likely-branch transform on the
 * collisionParameter test (ROM bnel + duplicated store, IDO bnez + nop) and the
 * return-0 block ordering that follows. */
s32 func_80227D4C_ovl19(void) {
    Vector sp44;
    Vector sp38;
    struct CollisionTriangle *sp34;
    f32 *py;
    f32 **pp;
    s32 temp;

    if (gKirbyState.rightCollisionNext != 0) {
        if (gKirbyState.unk44 != 4) {
            gKirbyState.unk44 = 4;
            return 1;
        }
    }
    if (func_80227B20_ovl19() != 0) {
        if (D_800D6B54 == 0) {
            gKirbyState.unk44 = 4;
            return 1;
        }
    }
    pp = D_800E0490[omCurrentObj->objId];
    py = pp[1];
    sp44.x = gEntitiesPosXArray[omCurrentObj->objId];
    sp44.y = *py + gEntitiesPosYArray[omCurrentObj->objId];
    sp44.z = gEntitiesPosZArray[omCurrentObj->objId];
    sp38.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp38.y = *py + gEntitiesNextPosYArray[omCurrentObj->objId];
    sp38.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp34 = D_8012BCC0;
    if (func_80104AB4(&sp44, &sp38, 1, 0xE, &sp34) != 0) {
        if (sp34->collisionParameter == 0) {
            temp = func_8021EE88_ovl19(NULL);
            if (temp != -1) {
                D_800E0D50[temp] = 1;
                D_800E0F10[temp] = 2;
                D_800EBBE0[temp] = omCurrentObj->objId;
                D_800E9FE0[omCurrentObj->objId].as_s32 = temp;
            }
            goto done;
        }
        gKirbyState.unk44 = 7;
        return 1;
    }
done:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227D4C_ovl19.s")
#endif

void func_80227F38_ovl19(void) {
    struct Ovl19F548 *temp_v0;
    s32 temp_v1;

    request_track_general(0x13, 3, 4);
    temp_v1 = D_800D6F58[0x2C] & 0xF;
    temp_v0 = &D_8022F548_ovl19[temp_v1];
    gEntityFuncListIDArray[3] = temp_v0->unk0;
    D_800E8220[3] = temp_v0->unk4;
}

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_80227F90_ovl19.s -- the boss-intro
 * Kirby cutscene coroutine (funclist entry in helplib's table). Sets up
 * the display double (state hook func_802283A8_ovl19, physics hook
 * func_800B4954), anim speed = gameTicksPerDraw, grabs the shared
 * cutscene camera blob via func_800FF144 (viewpoint 24/20/-240), flags
 * D_8012E7D7, freezes physics, loads Kirby geo 0x20064 at scale 0.2,
 * spawns TWO helper tracks (funclists 1 and 0; the second one's id is
 * remembered in D_800E9AA0[objId]), plays intro anim record
 * D_8022F560_ovl19[0] routed at those two track slots, waits for
 * D_800E98E0[objId] to flip, then kills both helper tracks, releases
 * the camera blob and kills itself. m2c's extra call arguments are
 * leftover registers; the three func_800B1900 kills read the saved
 * track ids (and objId) as u16, which the u16 parameter already does. */
void func_80227F90_ovl19(GObj *arg0) {
    struct UnkStruct8022FAB0 *func_800FF144(void);
    void func_802283A8_ovl19(GObj *);
    extern s8 D_8012E7D7;
    extern struct Ovl19_2Struct D_8022F560_ovl19[];
    struct UnkStruct8022FAB0 *cam;
    struct Ovl19_2Struct *rec;
    s32 track1;
    s32 track2;

    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4954;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = func_802283A8_ovl19;
    cam = func_800FF144();
    D_8022FAB0_ovl19 = cam;
    if (cam != NULL) {
        cam->unk10 = 24.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    D_8012E7D7 = 1;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20064, 0x20, 0x10);
    track1 = request_track_general(0x13, 0x3C, 0x4A);
    D_800E98E0[track1] = 0;
    gEntityFuncListIDArray[track1] = 1;
    D_800E8220[track1] = 0;
    track2 = request_track_general(0x13, 0x3C, 0x4A);
    gEntityFuncListIDArray[track2] = 0;
    D_800E8220[track2] = 0;
    D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)track2;
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = 0.035f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 0.0f;
    rec = &D_8022F560_ovl19[0];
    D_800EC2E0[track1].as_u32 = rec->unk8;
    D_800EC4A0[track1] = rec->unkC;
    D_800EC2E0[track2].as_u32 = rec->unk10;
    gKirbyState.unk3C = 0;
    D_800EC4A0[track2] = rec->unk14;
    func_800AA018(rec->unk0);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    ohSleep(1);
    func_800B1900(track1);
    func_800B1900(track2);
    func_800FF1CC(D_8022FAB0_ovl19);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227F90_ovl19.s")
#endif

void func_802283A8_ovl19(GObj *this) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if ((D_800E98E0[omCurrentObj->objId] == 0) && (gEntitiesNextPosYArray[0] <= 35.0f)) {
        gKirbyState.abilityState = 0x4D;
        set_kirby_action_2((u8) gKirbyState.abilityState, 0x1C);
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    func_800FF200(D_8022FAB0_ovl19);
}

void func_8022846C_ovl19(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = &func_802284EC_ovl19;
    curObjSleepForever();
}

void func_802284EC_ovl19(GObj *arg0) {
    if (D_800E5F90[0] == 5) {
        D_800E6850[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = D_800E6850[omCurrentObj->objId];
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x4E;
        func_800B1900(omCurrentObj->objId);
    }
}

#ifdef NON_MATCHING
/* 112/186: the instruction COUNT is exact and the body is fully decoded (every
   store, constant, call and argument verified against the listing).  The whole
   residual diff cascades from one register-allocation choice: the ROM puts
   &omCurrentObj in $s1 and &D_8022FAB0_ovl19 in $s0, we get them the other way
   round, and every later temp rotates with them.  Measured stages, so the next
   lane does not repeat them:
     - without the func_800A7F74 prototype in scope the three f32 arguments are
       K&R-promoted to DOUBLE, which alone costs 16 bytes of outgoing-arg frame
       (0x38 vs 0x28) and 4 instructions.  The block-scope prototype below is
       load-bearing.
     - `D_8022FAB0_ovl19->unk10 = 20.0f; D_8022FAB0_ovl19->unk14 = 20.0f;`
       forks the constant into TWO mtc1 where the ROM shares one $f0; routing
       only the FIRST store through the local (`tmp->unk10`) shares it and took
       159 -> 112.  A chained `unk14 = unk10 = 20.0f` instead emits a lwc1
       read-back and does not help.
   Still to try: forcing the $s0/$s1 order (guide's one-slot rotation entry). */
void func_8022858C_ovl19(GObj *arg0) {
    void func_80228874_ovl19(GObj *);
    struct UnkStruct8022FAB0 *func_800FF144(void);
    void func_800A7F74(u32, u32, u16, f32, f32, f32);
    struct UnkStruct8022FAB0 *tmp;

    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_8022FAB0_ovl19 = tmp = func_800FF144();
    if (tmp != NULL) {
        tmp->unk10 = 20.0f;
        D_8022FAB0_ovl19->unk14 = 20.0f;
        D_8022FAB0_ovl19->unk18 = -240.0f;
        D_8022FAB0_ovl19->unk21 = 1;
    }
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    D_800DF150[omCurrentObj->objId] = func_80228874_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20007, 0x22, 0x10);
    D_800E5F90[omCurrentObj->objId] = 5;
    D_800E6D90[omCurrentObj->objId] = 0.4f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    func_800F8E6C(arg0);
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800EC660[0];
    gEntitiesAngleYArray[omCurrentObj->objId] = 1.570796371f;
    func_801230E8(0x200F3, 0x200F4, 0);
    ohSleep(0x3E);
    func_800A7F74(2, 1, 0x62, gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f,
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800FF1CC(D_8022FAB0_ovl19);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022858C_ovl19.s")
#endif

void func_80228874_ovl19(GObj *arg0) {
    func_800FF200(D_8022FAB0_ovl19);
}

#ifdef PORT
/* PORT: behavioral port from
 * asm/nonmatchings/ovl19/ovl19_2/func_8022889C_ovl19.s -- the swimming
 * leg's outro cutscene coroutine (sibling of func_80227F90_ovl19).
 * Kirby double at y=38.1, geo 0x20066, hooks func_80228C44_ovl19 /
 * func_800B4954, spawns two helper tracks (funclists 1 and 0, stage
 * id 2), plays D_8022F578_ovl19[0], waits for D_800E98E0[objId] == 2,
 * then plays record [1] to completion (func_800AA154 blocks), flips
 * D_8012E7FC[2] = 2, sleeps 2 and kills the two helpers and itself.
 * m2c's extra call arguments are leftover registers. */
void func_8022889C_ovl19(GObj *arg0) {
    void func_80228C44_ovl19(GObj *);
    extern struct Ovl19_2Struct D_8022F578_ovl19[];
    struct Ovl19_2Struct *rec;
    s32 track1;
    s32 track2;

    D_800E98E0[omCurrentObj->objId] = 0;
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    D_800DF150[omCurrentObj->objId] = func_80228C44_ovl19;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800DEF90[omCurrentObj->objId] = (void (*)(s32)) func_800B4954;
    gEntitiesNextPosYArray[omCurrentObj->objId] = 38.1f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20066, 0x20, 0x10);
    track1 = request_track_general(0x13, 0x3C, 0x4A);
    D_800E98E0[track1] = 0;
    gEntityFuncListIDArray[track1] = 1;
    D_800E8220[track1] = 2;
    track2 = request_track_general(0x13, 0x3C, 0x4A);
    gEntityFuncListIDArray[track2] = 0;
    D_800E8220[track2] = 2;
    D_800E9AA0[omCurrentObj->objId] = (struct EntityThing800E9AA0 *)(uintptr_t)track2;
    D_800E5F90[omCurrentObj->objId] = 0;
    D_800E6D90[omCurrentObj->objId] = 0.0f;
    D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    D_800E64D0[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 0.0f;
    rec = &D_8022F578_ovl19[0];
    D_800EC2E0[track1].as_u32 = rec->unk8;
    D_800EC4A0[track1] = rec->unkC;
    D_800EC2E0[track2].as_u32 = rec->unk10;
    D_800EC4A0[track2] = rec->unk14;
    gKirbyState.unk3C = 0;
    func_800AA018(rec->unk0);
    while (D_800E98E0[omCurrentObj->objId] != 2) {
        ohSleep(1);
    }
    gKirbyState.unk3C = 1;
    rec = &D_8022F578_ovl19[1];
    D_800EC2E0[track1].as_u32 = rec->unk8;
    D_800EC4A0[track1] = rec->unkC;
    D_800EC2E0[track2].as_u32 = rec->unk10;
    D_800EC4A0[track2] = rec->unk14;
    func_800AA154(rec->unk0); /* blocks until the anim ends */
    D_8012E7FC[2] = 2;
    ohSleep(2);
    func_800B1900(track1);
    func_800B1900(track2);
    func_800B1900(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022889C_ovl19.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80228C44_ovl19.s")

void func_80228EF4_ovl19(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E64D0[omCurrentObj->objId] = 12.0f;
    D_800E6850[omCurrentObj->objId] = 12.0f;
    D_800E3210[omCurrentObj->objId] = -3.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 3.0f;
    ohSleep(0x1E);
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = 0;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    curObjSleepForever();
}
