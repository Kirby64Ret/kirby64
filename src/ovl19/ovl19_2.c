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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80223200_ovl19.s")
#endif


#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80223E68_ovl19.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802248C0_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225620_ovl19.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802260FC_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80226AA8_ovl19.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227F90_ovl19.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022889C_ovl19.s")

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
