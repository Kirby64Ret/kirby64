#include "common.h"
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "Player.h"
#include "ovl19_2.h"
#include "unk_structs/D_8022FAB0.h"
#include "ovl1/ovl1_7.h"
#include "main/object_manager.h"
#include "ovl1/ovl1_8.h"
#include "ovl3/ovl3_1.h"
#include "buffers.h"

void func_80227A38_ovl19(GObj*);

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
        gEntityVtableIndexArray[1] = 1;
        D_800E8220[1] = 0;
        request_track_general(0x13, 2, 3);
        gEntityVtableIndexArray[2] = 0;
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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80224564_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802245A0_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022470C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80224858_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802248C0_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225620_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225DF8_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225E38_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80225FB4_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802260FC_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80226AA8_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80226FFC_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022703C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802271A8_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802273A0_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022759C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227690_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022785C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227938_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227A38_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227AA8_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227B20_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227C88_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227D4C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227F38_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80227F90_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802283A8_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022846C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_802284EC_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_8022858C_ovl19.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl19/ovl19_2/func_80228874_ovl19.s")

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
