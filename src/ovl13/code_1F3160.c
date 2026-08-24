#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl13.h"

/* -0.1f = -0.1f : now emitted by this TU */
/* -1.5707964f = -1.5707964f : now emitted by this TU */
/* 3.1415927f = 3.1415927f : now emitted by this TU */
/* -0.1f = -0.1f : now emitted by this TU */
/* 3.1415927f = 3.1415927f : now emitted by this TU */
/* -1.5707964f = -1.5707964f : now emitted by this TU */
/* -0.1f = -0.1f : now emitted by this TU */
extern void func_800AA154(s32); /* void is load-bearing: implicit int reserves $v0 */
void func_801DB1E0_ovl13(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801DB358_ovl13;
    func_801A0D50_ovl7(&func_801DB2D8_ovl13);
    D_800E8920[omCurrentObj->objId] = 0;
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], ARRAYLEN(D_801E5A80_ovl13), D_801E5A80_ovl13);
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB2D8_ovl13(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], ARRAYLEN(D_801E5A98_ovl13), D_801E5A98_ovl13);
    }
}

void func_801DB358_ovl13(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], ARRAYLEN(D_801E5AD8_ovl13), D_801E5AD8_ovl13);
}

extern void func_800AA038(s32, f32, s32);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_8019BB58_ovl7(void);

void func_801DB3A0_ovl13(GObj *arg0) {
    f32 temp_f0;

    func_800AED80(0.0f, D_801290D0);
    func_800AA038(0x70050, 0, D_801290D0);
    D_800D7098.unk0 = 0;
    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    while (TRUE) {
        switch (D_800E98E0[omCurrentObj->objId]) {
            case 0:
                D_800EC120[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 1);
                D_800EBBE0[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 3);
                D_800EBBE0[D_800EBBE0[omCurrentObj->objId]] = D_800EC120[omCurrentObj->objId];
                while (D_800E98E0[omCurrentObj->objId] == 0) {
                    ohSleep(1);
                }
                break;
            case 1:
                while (D_800E98E0[omCurrentObj->objId] == 1) {
                    ohSleep(1);
                }
                break;
            case 2:
                while (D_800E98E0[omCurrentObj->objId] == 2) {
                    ohSleep(1);
                }
                break;
            case 3:
                func_8019BBA8_ovl7(D_800EBBE0[omCurrentObj->objId]);
                func_800B1900(D_800EBBE0[omCurrentObj->objId]);
                D_800EBBE0[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 4);
                D_800EBBE0[D_800EBBE0[omCurrentObj->objId]] = D_800EC120[omCurrentObj->objId];
                temp_f0 = gEntitiesNextPosYArray[D_800EC120[omCurrentObj->objId]] - 240.0f;
                gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] = temp_f0;
                gEntitiesPosYArray[D_800EBBE0[omCurrentObj->objId]] = temp_f0;
                D_800E98E0[omCurrentObj->objId] = 4;
                break;
            case 4:
                while (D_800E98E0[omCurrentObj->objId] == 4) {
                    ohSleep(1);
                }
                break;
            case 5:
                while (D_800E98E0[omCurrentObj->objId] == 5) {
                    ohSleep(1);
                }
                break;
            case 6:
                func_8019BBA8_ovl7(D_800EBBE0[omCurrentObj->objId]);
                func_800B1900(D_800EBBE0[omCurrentObj->objId]);
                while (D_800E98E0[omCurrentObj->objId] == 6) {
                    ohSleep(1);
                }
                break;
            case 7:
                while (D_800E98E0[omCurrentObj->objId] == 7) {
                    ohSleep(1);
                }
                break;
            default:
                curObjSleepForever();
                break;
        }
    }
}

#if defined(MIPS_TO_C) || defined(PORT)
/* FACTORY: 947/998 words DIFFER (measured, draft spliced alone into a scratch
   copy of the TU, in-tree so verify.py sees this TU's migrated .rodata).
   This is the ovl13 boss's 998-instruction state machine and it is NOT close:
   the block structure and the switch/goto skeleton are m2c's and look right,
   but the frame is 0xB8 against the ROM's 0x70, so every sp-relative offset
   and most register names are shifted. Fixed against the listing rather than
   trusting m2c: every `D_800DFBD0[id]->unkNN->unkNN` chain respelled as the
   real `[slot]->pos/angle` DObj access. Swept: inlining m2c's sixteen
   `temp_sN = omCurrentObj->objId` caches (LEVERS 4) measures 931/998 but grows
   the frame to 0xD8, so it trades one defect for another and is not kept.
   The frame is the thing to attack first -- most of m2c's f32 temps are IDO
   spill slots, not declarations (LEVERS 31).
   ONE BODY, TWO ARMS: the draft is LP64-clean (no pointer/int casts), so the
   MIPS_TO_C and PORT arms would be identical text and are merged. */
extern f32 D_800EC9E4;
extern u32 D_80129138;
extern f32 *D_801DAAB4;
extern f32 *D_801DAAC8;
extern struct EnemyEventTable D_801DADB0;
extern struct EnemyEventTable D_801DADD4;

void func_801DB870_ovl13(GObj *arg0) {
    GObj *temp_s1;
    f32 *temp_v1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f20_3;
    f32 var_f2;
    s32 *temp_a0;
    s32 *temp_s5;
    s32 temp_s0;
    s32 temp_s0_13;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_v0;
    u32 temp_s0_10;
    u32 temp_s0_11;
    u32 temp_s0_12;
    u32 temp_s0_14;
    u32 temp_s0_15;
    u32 temp_s0_16;
    u32 temp_s0_2;
    u32 temp_s0_3;
    u32 temp_s0_4;
    u32 temp_s0_5;
    u32 temp_s0_6;
    u32 temp_s0_7;
    u32 temp_s0_8;
    u32 temp_s0_9;

    temp_s0 = D_800E0D50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800DF150[omCurrentObj->objId] = func_801DC788_ovl13;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, (s32) omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    func_801129AC();
    func_801129DC();
    D_800E0490[omCurrentObj->objId] = &D_801DAAB4;
    func_801A2ADC_ovl7(&D_801DAAB4);
    func_800B33F4();
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    func_800FA414(0x80000002);
    D_80129138 = omCurrentObj->objId;
    temp_s5 = &D_800E98E0[temp_s0];
    var_v0 = *temp_s5;
loop_1:
    if ((u32) var_v0 < 8U) {
loop_2:
        switch (var_v0) {                           /* switch 1 */
        case 0:                                     /* switch 1 */
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E0490[omCurrentObj->objId] = &D_801DAAB4;
            func_801A2ADC_ovl7(&D_801DAAB4);
            D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DADB0;
            temp_s1 = omCurrentObj;
            D_800E3210[temp_s1->objId] = -2.0f;
            if (D_800E8920[temp_s1->objId] == 0) {
                do {
                    ohSleep(1);
                } while (D_800E8920[omCurrentObj->objId] == 0);
            }
            *temp_s5 = 1;
            D_800E3750[temp_s1->objId] = 0.0f;
            temp_s0_2 = temp_s1->objId;
            D_800E3210[temp_s0_2] = D_800E3750[temp_s0_2];
            D_800E3C90[temp_s1->objId] = 65535.0f;
            var_v0 = *temp_s5;
            goto loop_1;
        case 1:                                     /* switch 1 */
            D_800E0490[omCurrentObj->objId] = &D_801DAAB4;
            func_801A2ADC_ovl7(&D_801DAAB4);
            D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DADD4;
            if (*temp_s5 == 1) {
                do {
                    ohSleep(1);
                } while (*temp_s5 == 1);
            }
            var_s0 = 0xA;
            temp_f22 = D_800E64D0[omCurrentObj->objId] * 0.1f;
            do {
                D_800E64D0[omCurrentObj->objId] = (f32) var_s0 * temp_f22;
                ohSleep(1);
                var_s0 -= 1;
            } while (var_s0 != 0);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            temp_s0_3 = omCurrentObj->objId;
            D_800E64D0[temp_s0_3] = D_800E6690[temp_s0_3];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            var_v0 = *temp_s5;
            goto loop_1;
        case 2:                                     /* switch 1 */
            D_800E8920[omCurrentObj->objId] = 0;
            D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
            func_801A2ADC_ovl7(&D_801DAAC8);
            D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAD8C;
            D_800E3910[omCurrentObj->objId] = 0.0f;
            temp_s0_4 = omCurrentObj->objId;
            temp_f0 = D_800E3910[temp_s0_4];
            D_800E3750[temp_s0_4] = temp_f0;
            D_800E3590[omCurrentObj->objId] = temp_f0;
            D_800E33D0[omCurrentObj->objId] = temp_f0;
            D_800E3210[omCurrentObj->objId] = temp_f0;
            D_800E3050[omCurrentObj->objId] = temp_f0;
            D_800E3E50[omCurrentObj->objId] = 65535.0f;
            temp_s0_5 = omCurrentObj->objId;
            temp_f2 = D_800E3E50[temp_s0_5];
            D_800E3C90[temp_s0_5] = temp_f2;
            D_800E3AD0[omCurrentObj->objId] = temp_f2;
            play_sound(0x186);
            func_800FB914(4);
            ohSleep(0x14);
            D_800D7098.unk0 = 1;
            ohSleep(1);
            func_800AED80(gameTicksPerDraw, (s32) D_801290D0);
            func_800FB914(5);
            ohSleep(0xC8);
            if (func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]) > 0.0f) {
                D_800E6A10[omCurrentObj->objId] = 1.0f;
            } else {
                D_800E6A10[omCurrentObj->objId] = -1.0f;
            }
            temp_s0_6 = omCurrentObj->objId;
            D_800E6690[temp_s0_6] = D_800E6A10[temp_s0_6] * 0.1f;
            D_800E6850[omCurrentObj->objId] = 2.0f;
            D_800E3210[omCurrentObj->objId] = 0.0f;
            D_800E3750[omCurrentObj->objId] = 0.1f;
            D_800E3C90[omCurrentObj->objId] = 2.0f;
            temp_s0_7 = omCurrentObj->objId;
            var_s0_2 = temp_s0_7 * 4;
            var_f0 = gEntitiesNextPosYArray[temp_s0_7];
            if (var_f0 < 1198.0f) {
                do {
                    var_f20 = var_f0 - 599.0f;
                    if (var_f0 < 599.0f) {
                        var_f20 = -(var_f0 - 599.0f);
                    }
                    if (var_f20 < 1.5f) {
                        *(D_800EA520 + var_s0_2) = 1;
                    } else {
                        *(D_800EA520 + var_s0_2) = 0;
                    }
                    temp_s0_8 = omCurrentObj->objId;
                    var_s0_3 = temp_s0_8 * 4;
                    if ((D_800E64D0[temp_s0_8] != 0.0f) || (D_800E6690[temp_s0_8] != 0.0f)) {
                        temp_f0_2 = func_8019DA70_ovl7(D_800E0D50[temp_s0_8]);
                        var_f2 = temp_f0_2;
                        if (temp_f0_2 < 0.0f) {
                            var_f2 = -temp_f0_2;
                        }
                        temp_s0_9 = omCurrentObj->objId;
                        var_s0_3 = temp_s0_9 * 4;
                        temp_f0_3 = D_800E64D0[temp_s0_9];
                        var_f20_2 = temp_f0_3;
                        if (temp_f0_3 < 0.0f) {
                            var_f20_2 = -temp_f0_3;
                        }
                        if (var_f2 < (var_f20_2 * 4.5f)) {
                            D_800E6690[temp_s0_9] = temp_f0_3 * -0.1f;
                            ohSleep(0xA);
                            D_800E6690[omCurrentObj->objId] = 0.0f;
                            temp_s0_10 = omCurrentObj->objId;
                            D_800E64D0[temp_s0_10] = D_800E6690[temp_s0_10];
                            D_800E6850[omCurrentObj->objId] = 65535.0f;
                            var_s0_3 = omCurrentObj->objId * 4;
                        }
                    }
                    if (*(D_800EA520 + var_s0_3) != 0) {
                        func_800FB914(4);
                    }
                    ohSleep(1);
                    temp_s0_11 = omCurrentObj->objId;
                    var_s0_2 = temp_s0_11 * 4;
                    var_f0 = gEntitiesNextPosYArray[temp_s0_11];
                } while (var_f0 < 1198.0f);
            }
            func_800FB914(0);
            func_800B3520();
            *temp_s5 = 3;
            D_800DFBD0[D_801290D0][2]->pos.v.y = (f32) -3;
            var_v0 = *temp_s5;
            goto loop_1;
        case 3:                                     /* switch 1 */
            D_800EC9E4 = 2.0f;
            D_800EA6E0[omCurrentObj->objId] = 2.0f;
            if (var_v0 == 3) {
                do {
                    ohSleep(1);
                    var_v0 = *temp_s5;
                } while (var_v0 == 3);
            }
            goto loop_1;
        case 4:                                     /* switch 1 */
            D_800E6A10[omCurrentObj->objId] = 1.0f;
            D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
            func_801A2ADC_ovl7(&D_801DAAC8);
            D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAD8C;
            D_800EC9E4 = 2.0f;
            D_800EA6E0[omCurrentObj->objId] = 2.0f;
            var_v0 = *temp_s5;
            if (var_v0 == 4) {
                do {
                    temp_s0_12 = omCurrentObj->objId;
                    if ((D_800E9AA0[temp_s0_12] == NULL) && (D_800E7B20[D_800EBBE0[D_800E0D50[temp_s0_12]]] > 0.0f)) {
                        temp_s0_13 = random_soft_s32_range(3);
                        temp_v0 = func_801DDC18_ovl13();
                        if (temp_v0 != -1) {
                            switch (temp_s0_13) {   /* switch 2; irregular */
                            case 0:                 /* switch 2 */
                            case 1:                 /* switch 2 */
                            case 2:                 /* switch 2 */
                                func_800F9974(&D_800E5F90[temp_v0], &D_800E6BD0[temp_v0], D_801E5B34_ovl13[random_soft_s32_range(2)]);
                                gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId] + 320.0f;
                                break;
                            case 3:                 /* switch 2 */
                                D_800E8E60[temp_v0] = 1;
                                temp_a0 = &D_800E8AE0[temp_v0];
                                *temp_a0 |= 1;
                                temp_v1 = &D_800E17D0[temp_v0];
                                *temp_v1 = D_800E17D0[omCurrentObj->objId];
                                if (*temp_v1 >= 6.2831855f) {
                                    do {
                                        *temp_v1 -= 6.2831855f;
                                    } while (*temp_v1 >= 6.2831855f);
                                }
                                if (*temp_v1 < 0.0f) {
                                    do {
                                        *temp_v1 += 6.2831855f;
                                    } while (*temp_v1 < 0.0f);
                                }
                                temp_f22_2 = D_800E17D0[omCurrentObj->objId] + 1.5707964f;
                                temp_f22_3 = temp_f22_2 + D_801E5B3C_ovl13[random_soft_s32_range(7)];
                                if (cosf(temp_f22_3) == 0.0f) {
                                    var_f20_3 = 0.00001f;
                                } else {
                                    var_f20_3 = cosf(temp_f22_3);
                                }
                                temp_f24 = -400.0f / var_f20_3;
                                gEntitiesNextPosXArray[temp_v0] = (sinf(temp_f22_3) * temp_f24) + gEntitiesNextPosXArray[omCurrentObj->objId];
                                gEntitiesNextPosZArray[temp_v0] = (cosf(temp_f22_3) * temp_f24) + gEntitiesNextPosZArray[omCurrentObj->objId];
                                gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId] + 320.0f;
                                gEntitiesAngleYArray[temp_v0] = D_800E17D0[omCurrentObj->objId] - 1.5707964f;
                                break;
                            }
                        }
                    }
                    func_801DC8CC_ovl13(arg0);
                    ohSleep(1);
                    var_v0 = *temp_s5;
                } while (var_v0 == 4);
            }
            goto loop_1;
        case 5:                                     /* switch 1 */
            if (var_v0 == 5) {
                do {
                    func_801DC8CC_ovl13(arg0);
                    ohSleep(1);
                    var_v0 = *temp_s5;
                } while (var_v0 == 5);
            }
            goto loop_1;
        case 6:                                     /* switch 1 */
            D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
            func_801A2ADC_ovl7(&D_801DAAC8);
            D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAD8C;
            func_800B33F4();
            D_800EC9E4 = 0.0f;
            D_800EA6E0[omCurrentObj->objId] = D_800EC9E4;
            D_800E3210[omCurrentObj->objId] = 2.0f;
            temp_s0_14 = omCurrentObj->objId;
            var_s0_4 = temp_s0_14 * 4;
            if (gEntitiesNextPosYArray[temp_s0_14] < D_800D70D8.unk0) {
                do {
                    ohSleep(1);
                    temp_s0_15 = omCurrentObj->objId;
                    var_s0_4 = temp_s0_15 * 4;
                } while (gEntitiesNextPosYArray[temp_s0_15] < D_800D70D8.unk0);
            }
            *(D_800E3750 + var_s0_4) = *(D_800E3210 + var_s0_4) * -0.1f;
            ohSleep(0xA);
            var_v0 = 7;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            temp_s0_16 = omCurrentObj->objId;
            D_800E3210[temp_s0_16] = D_800E3750[temp_s0_16];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            *temp_s5 = 7;
            goto loop_1;
        case 7:                                     /* switch 1 */
            if (var_v0 == 7) {
                do {
                    ohSleep(1);
                    var_v0 = *temp_s5;
                } while (var_v0 == 7);
                if ((u32) var_v0 < 8U) {
                    goto loop_2;
                }
            } else {
                goto loop_1;
            }
            break;
        }
    }
    curObjSleepForever();
    var_v0 = *temp_s5;
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DB870_ovl13.s")
#endif

void func_801DC788_ovl13(GObj *arg0) {
    ((s32 *) D_800E9AA0)[omCurrentObj->objId]++;
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] %= 180;
    switch (D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
        case 0:
        case 1:
            func_801A0D74_ovl7(arg0);
            break;
        case 4:
            D_800DFBD0[D_801290D0][2]->pos.v.y -= D_800EA6E0[omCurrentObj->objId];
            if (D_800DFBD0[D_801290D0][2]->pos.v.y < -960.0f) {
                D_800DFBD0[D_801290D0][2]->pos.v.y += 480.0f;
            }
            break;
        case 5:
            D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 6;
            break;
        case 2:
        case 3:
        case 6:
        case 7:
            break;
    }
}

/* 10/93: the whole loop body is exact. The residue is the coupled-FP floor:
 * the ROM defines $f22 (D_801E5CD4) first and $f20 (D_801E5CD8) second while
 * using $f20 first in the loop; IDO always gives the first-assigned local the
 * LOWER register, so no assignment/declaration order reaches it. Swept: both
 * assignment orders, both declaration orders, declaration initializers,
 * inline externs, and statement placement around `ret = -1`. */
/* D_801E5CD4_ovl13: literal */
/* D_801E5CD8_ovl13: literal */
extern void func_801A4C0C_ovl7(struct GObj *);

s32 func_801DC8CC_ovl13(GObj *arg0) {
    s32 i;
    s32 ret;
    f32 hi;
    f32 lo;

    lo = 0.200000003f;
    hi = 9999.0f;
    ret = -1;
    for (i = 0x1E; i != 0x3C; i++) {
        if ((D_800DD710[i] != -1) && (D_800E7730[i] == 0) && (lo < D_800E7B20[i]) && (D_800E7B20[i] < hi)) {
            if (D_800E83E0[i] != 1) {
                if (omCurrentObj->objId == D_800E0D50[i]) {
                    ret = func_801DCA40_ovl13(i);
                }
            } else if ((void *) D_800DF150[i] == (void *) func_801A4C0C_ovl7) {
                ret = func_801DCA40_ovl13(i);
            }
        }
    }
    return ret;
}

s32 func_801DCA40_ovl13(s32 arg0) {
    switch (D_800E77A0[arg0]) {
    case 0x1B:
        D_800EA6E0[arg0] -= D_800EA6E0[omCurrentObj->objId];
    case 0x19:
        D_800EA8A0[arg0] -= D_800EA6E0[omCurrentObj->objId];
    case 0x21:
        gEntitiesNextPosYArray[arg0] -= D_800EA6E0[omCurrentObj->objId];
    }
    return 0;
}

extern void func_800AEDD0(f32, s32);
extern void func_800AA038(s32, f32, s32);
extern void func_800B19F4(s32, s32);
extern void func_800AFBB4(s32, struct GObj *);
extern void func_801A3280_ovl7(void);
extern void func_8019BB58_ovl7(void);
void func_801DCB28_ovl13(GObj *arg0) {
    s32 sp;

    sp = D_800E0D50[omCurrentObj->objId];
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = 0;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x28);
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AEDD0(gameTicksPerDraw, sp);
    func_800AA038(0x10412, 0.0f, sp);
    ohSleep(0x2A);
    func_800AA038(0x1041F, 0.0f, sp);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EBDA0[sp] = -1;
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DCC7C_ovl13(GObj *arg0) {
    struct EnemyRecord *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    temp_v0->unk80->unk10 = 60.0f;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DCDA8_ovl13(GObj *arg0) {
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(3);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

extern s32 D_801D9384;
extern f32 D_801DAB18;

void func_801DCE9C_ovl13(GObj *arg0) {
    f32 temp_f0;

    func_8019BB58_ovl7();
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B6CF8;
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18;
    func_801A2ADC_ovl7(&D_801DAB18);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    gEntitiesPosZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    func_800B33F4();
    while (D_800E98E0[D_800E0D50[D_800E0D50[omCurrentObj->objId]]] != 2) {
        ohSleep(1);
    }
    temp_f0 = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId];
    func_800F9974(&D_800E5F90[omCurrentObj->objId], &D_800E6BD0[omCurrentObj->objId], temp_f0);
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    ohSleep(0x258);
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(0x1E);
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

void func_801DD148_ovl13(void) {
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D74_ovl7();
}

/* 4/137: exact except the objId temp before func_800A9F98 -- ROM uses $v0,
 * IDO picks $a2. Swept: extra local, local declared first, u32 index. */
extern s32 D_801D9384;
extern void func_800AED20(f32);
extern void func_800AECC0(f32);
extern void func_800A9F98(s32, f32);
extern void func_800AA018(s32);
extern void func_800BC1FC(s32);
void func_801DD184_ovl13(GObj *arg0)
{
  func_800AED20(0.0f);
  func_800AECC0(gameTicksPerDraw);
  D_800DDFD0[omCurrentObj->objId] = 0;
  D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384;
  D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) (&D_801DAE1C);
  func_800B33F4();
  D_800EA1A0[omCurrentObj->objId] = random_soft_s32_range(3);
  D_800E64D0[omCurrentObj->objId] = 160.0f;
  D_800E3210[omCurrentObj->objId] = 80.0f;
  ohSleep(1);
  if (1)
  {
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId];
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10427);
    ohSleep(0x1E);
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
  }
  ohSleep(0x30);
  while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0)
  {
    ohSleep(1);
  }

  func_800AF27C();
  gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DD3A8_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DD46C_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    func_800AA154(0x10427);
    func_800AA154(0x10429);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DD550_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

extern f32 D_801DADF8;
extern void func_800AA864(s32, u32);

void func_801DD614_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DADF8;
    func_800B33F4();
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -2.0f;
    D_800E64D0[D_800EBBE0[omCurrentObj->objId]] = D_800E64D0[omCurrentObj->objId];
    D_800EA360[omCurrentObj->objId] = 1;
    D_800E9E20[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId];
    while (gEntityFuncListIDArray[omCurrentObj->objId] == 2) {
        D_800EA360[omCurrentObj->objId] += 1;
        D_800EA360[omCurrentObj->objId] = D_800EA360[omCurrentObj->objId] % 2;
        if (D_800EA360[omCurrentObj->objId] != 0) {
            func_800AA018(0x1041D);
            D_800DF310[omCurrentObj->objId] = &func_801DDADC_ovl13;
            func_800AF27C();
        } else {
            func_800AA864(0x1042A, 2);
        }
    }
}

void func_801DD888_ovl13(GObj *arg0) {
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 0xF;
    }
    if (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 160.0f < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -ABSF(D_800E3750[omCurrentObj->objId]);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 20.0f) {
        D_800E3750[omCurrentObj->objId] = ABSF(D_800E3750[omCurrentObj->objId]);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DDADC_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if ((arg1 == 0) && ((s32) arg2 == 1)) {
        temp = random_soft_s32_range(3);
        if (temp == D_800EA1A0[omCurrentObj->objId]) {
            D_800EA1A0[omCurrentObj->objId] = D_800EA1A0[omCurrentObj->objId] + 3;
        } else if (D_801E5B78_ovl13[D_800EA1A0[omCurrentObj->objId]] == D_801E5B78_ovl13[temp]) {
            D_800EA1A0[omCurrentObj->objId] = random_soft_s32_range(2) + D_800EA1A0[omCurrentObj->objId] + 1;
            D_800EA1A0[omCurrentObj->objId] = D_800EA1A0[omCurrentObj->objId] % 3;
        } else {
            D_800EA1A0[omCurrentObj->objId] = temp;
        }
        play_sound(0x188);
        func_801DDC18_ovl13(D_801E5B78_ovl13[D_800EA1A0[omCurrentObj->objId]], 0);
    }
}

s32 func_801DDC18_ovl13(void) {
    s32 track;

    track = func_8019DD78_ovl7();
    if (track != -1) {
        D_800E8E60[track] = 0;
    }
    return track;
}

void func_801DDC58_ovl13(GObj *arg0) {
    f32 c;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    c = -0.1f;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * c;
    D_800E3750[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * c;
    ohSleep(0xA);
    func_800B33F4();
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 4;
}

void func_801DDD90_ovl13(GObj *arg0) {
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DDE54_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    func_800B33F4();
    func_800AA154(0x10423);
    func_800AA864(0x10427, 2);
    func_800AA154(0x10429);
    switch (((s32 *) D_800E9AA0)[omCurrentObj->objId]) {
    case 0:
        if (random_soft_s32_range(2) == 0) {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 1;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
        }
        break;
    case 1:
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
        break;
    case 2:
        if (random_soft_s32_range(2) == 0) {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 3;
        } else {
            ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
        }
        break;
    case 3:
        ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 0;
        break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801E5B90_ovl13[((s32 *) D_800E9AA0)[omCurrentObj->objId]];
}

void func_801DE084_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0[23], temp_v0[4], temp_v0[6]);
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#if defined(MIPS_TO_C) || defined(PORT)
/* FACTORY: 1050/1107 words DIFFER (measured, draft spliced alone into a
   scratch copy of the TU, in-tree so verify.py sees the migrated .rodata).
   Same shape of problem as func_801DB870_ovl13: m2c's control flow looks
   right but the frame is 0xD8 against the ROM's 0x40 and shifts everything.
   Fixed against the listing: the `D_800DFBD0[id]->unkNN->unkNN` chains and
   m2c's `(*(D_800DFBD0 + i))->...` pointer-arithmetic spelling, its `void *`
   DObj temps, and `*(D_800E9FE0 + i) = 1` (that array is a MultiType union, so
   `.as_s32`). Swept: inlining the objId caches measures 1091/1107 -- worse,
   not kept. Attack the frame first (LEVERS 31: m2c's f32 temps here are
   mostly IDO spill slots, not declarations).
   ONE BODY, TWO ARMS: LP64-clean, so both arms would be identical and are
   merged. */
extern f32 *D_801DAAF0;

void func_801DE148_ovl13(GObj *arg0) {
    EnemyRecord *sp3C;
    f32 sp34;
    GObj *temp_v1;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    s32 temp_v0;
    s32 var_a0;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    u32 temp_s0;
    u32 temp_s0_10;
    u32 temp_s0_11;
    u32 temp_s0_12;
    u32 temp_s0_13;
    u32 temp_s0_14;
    u32 temp_s0_15;
    u32 temp_s0_16;
    u32 temp_s0_17;
    u32 temp_s0_18;
    u32 temp_s0_19;
    u32 temp_s0_20;
    u32 temp_s0_21;
    u32 temp_s0_22;
    u32 temp_s0_23;
    u32 temp_s0_24;
    u32 temp_s0_25;
    u32 temp_s0_26;
    u32 temp_s0_27;
    u32 temp_s0_28;
    u32 temp_s0_29;
    u32 temp_s0_2;
    u32 temp_s0_30;
    u32 temp_s0_31;
    u32 temp_s0_32;
    u32 temp_s0_33;
    u32 temp_s0_34;
    u32 temp_s0_35;
    u32 temp_s0_36;
    u32 temp_s0_37;
    u32 temp_s0_38;
    u32 temp_s0_3;
    u32 temp_s0_4;
    u32 temp_s0_5;
    u32 temp_s0_6;
    u32 temp_s0_7;
    u32 temp_s0_8;
    u32 temp_s0_9;
    struct DObj *temp_a0;
    struct DObj *temp_a0_2;
    struct DObj *temp_v0_4;
    struct DObj *temp_v0_5;

    temp_s0 = omCurrentObj->objId;
    D_800DDFD0[temp_s0] = 5;
    sp3C = D_800E1B50[temp_s0];
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93CC;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0;
    func_801A2ADC_ovl7(&D_801DAAF0);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAD8C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    temp_s0_2 = omCurrentObj->objId;
    D_800EA8A0[temp_s0_2] = D_800EAA60[temp_s0_2];
    func_800AA154(0x10415);
    play_sound(0x184);
    func_800AA864(0x10416, 2U);
    func_800AA154(0x10418);
    play_sound(0x187);
    temp_s0_3 = omCurrentObj->objId;
    D_800E64D0[temp_s0_3] = D_800E6A10[temp_s0_3] * 12.0f;
    func_800AA154(0x1042A);
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        var_a0 = 0x10425;
    } else {
        var_a0 = 0x10424;
    }
    func_800AA018(var_a0);
    temp_s0_4 = omCurrentObj->objId;
    D_800E6690[temp_s0_4] = D_800E6A10[temp_s0_4] * -0.48f;
    ohSleep(0x19);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_s0_5 = omCurrentObj->objId;
    D_800E64D0[temp_s0_5] = D_800E6690[temp_s0_5];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    temp_s0_6 = omCurrentObj->objId;
    D_800DFBD0[temp_s0_6][1]->angle.v.y = (f32) (D_800E6A10[temp_s0_6] * 1.5707964f);
    func_800AA018(0x10414);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    temp_s0_7 = omCurrentObj->objId;
    D_800EAA60[temp_s0_7] = D_800E6A10[temp_s0_7] * 2.0f;
    ohSleep(0xA);
    temp_s0_8 = omCurrentObj->objId;
    D_800EA8A0[temp_s0_8] = D_800E6A10[temp_s0_8] * 20.0f;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    ohSleep(0x14);
    func_800AECC0(gameTicksPerDraw * 0.25f);
    temp_v0 = random_soft_s32_range(3);
    temp_f0 = D_801E5BAC_ovl13[temp_v0];
    temp_s0_9 = omCurrentObj->objId;
    temp_f2 = -(1.0f / temp_f0);
    D_800EAA60[temp_s0_9] = temp_f2 * D_800EA8A0[temp_s0_9];
    temp_s0_10 = omCurrentObj->objId;
    D_800EAC20[temp_s0_10] = 3.1415927f / (D_800E6A10[temp_s0_10] * (2.0f * temp_f0));
    temp_s0_11 = omCurrentObj->objId;
    D_800EAFA0[temp_s0_11] = D_801E5BC4_ovl13[temp_v0] / (D_800E6A10[temp_s0_11] * -temp_f0);
    temp_s0_12 = omCurrentObj->objId;
    D_800E6690[temp_s0_12] = temp_f2 * D_801E5BA0_ovl13[temp_v0] * D_800E6A10[temp_s0_12];
    ohSleep((s32) temp_f0, temp_v0 * 4, D_800E6A10);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    temp_v0_2 = &D_800EAFA0[omCurrentObj->objId];
    *temp_v0_2 = -*temp_v0_2;
    temp_f0_2 = D_801E5BAC_ovl13[temp_v0];
    temp_s0_13 = omCurrentObj->objId;
    D_800E6690[temp_s0_13] = (1.0f / temp_f0_2) * D_801E5BA0_ovl13[temp_v0] * D_800E6A10[temp_s0_13];
    ohSleep((s32) temp_f0_2, temp_v0 * 4);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_s0_14 = omCurrentObj->objId;
    D_800E64D0[temp_s0_14] = D_800E6690[temp_s0_14];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AECC0(gameTicksPerDraw);
    play_sound(0x187);
    temp_s0_15 = omCurrentObj->objId;
    var_s0 = temp_s0_15 * 4;
    if ((gEntitiesNextPosYArray[D_800EBBE0[temp_s0_15]] + 40.0f) < gEntitiesNextPosYArray[temp_s0_15]) {
        D_800E3210[temp_s0_15] = -2.0f;
        var_s0 = omCurrentObj->objId * 4;
    }
    *(D_800EA8A0 + var_s0) = *(D_800E6A10 + var_s0) * -20.0f;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_s0_16 = omCurrentObj->objId;
    temp_f0_3 = D_800EAFA0[temp_s0_16];
    D_800EAC20[temp_s0_16] = temp_f0_3;
    D_800EAA60[omCurrentObj->objId] = temp_f0_3;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = temp_f0_3;
    temp_s0_17 = omCurrentObj->objId;
    D_800DFBD0[temp_s0_17][1]->angle.v.y = (f32) (D_800E6A10[temp_s0_17] * 1.5f * 3.1415927f);
    ohSleep(0x1E, (s32) D_800E6A10, D_800EAFA0, D_800EAA60);
    func_800AA018(0x10420);
    temp_s0_18 = omCurrentObj->objId;
    D_800EAA60[temp_s0_18] = D_800EA8A0[temp_s0_18] * -0.05f;
    D_800EADE0[omCurrentObj->objId] = -0.07853982f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.6f;
    ohSleep(0x14);
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_s0_19 = omCurrentObj->objId;
    temp_f0_4 = D_800EAFA0[temp_s0_19];
    D_800EADE0[temp_s0_19] = temp_f0_4;
    D_800EAC20[omCurrentObj->objId] = temp_f0_4;
    D_800EAA60[omCurrentObj->objId] = temp_f0_4;
    D_800EA8A0[omCurrentObj->objId] = temp_f0_4;
    D_800E3210[omCurrentObj->objId] = 12.0f;
    temp_s0_20 = omCurrentObj->objId;
    var_s0_2 = temp_s0_20 * 4;
    if (gEntitiesNextPosYArray[temp_s0_20] < (gEntitiesNextPosYArray[D_800EBBE0[temp_s0_20]] + 400.0f)) {
        do {
            ohSleep(1);
            temp_s0_21 = omCurrentObj->objId;
            var_s0_2 = temp_s0_21 * 4;
        } while (gEntitiesNextPosYArray[temp_s0_21] < (gEntitiesNextPosYArray[D_800EBBE0[temp_s0_21]] + 400.0f));
    }
    D_800DFBD0[var_s0_2][1]->pos.v.x = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_s0_22 = omCurrentObj->objId;
    D_800E3210[temp_s0_22] = D_800E3750[temp_s0_22];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    sp3C->unk80->unk10 = 0.0f;
    temp_v0_3 = &D_800E6A10[omCurrentObj->objId];
    *temp_v0_3 = -*temp_v0_3;
    temp_s0_23 = omCurrentObj->objId;
    D_800E5F90[temp_s0_23] = D_800E5F90[D_800EBBE0[temp_s0_23]];
    temp_s0_24 = omCurrentObj->objId;
    D_800E6BD0[temp_s0_24] = D_800E6BD0[D_800EBBE0[temp_s0_24]];
    temp_s0_25 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_s0_25], &D_800E6BD0[temp_s0_25], D_800E6A10[temp_s0_25] * D_801E5BB8_ovl13[random_soft_s32_range(3)]);
    temp_s0_26 = omCurrentObj->objId;
    var_f0 = 0.0f;
    D_800DFBD0[temp_s0_26][1]->angle.v.y = (f32) (D_800E6A10[temp_s0_26] * -1.5707964f);
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = 1.5707964f;
    if (0.0f < 60.0f) {
        do {
            sp3C->unk80->unk10 = var_f0;
            sp34 = var_f0;
            ohSleep(1);
            var_f0 += 2.0f;
        } while (var_f0 < 60.0f);
    }
    sp3C->unk80->unk10 = 60.0f;
    func_800AA018(0x10419);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_s0_27 = omCurrentObj->objId;
    D_800E64D0[temp_s0_27] = D_800E6690[temp_s0_27];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = -12.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    play_sound(0x187);
    temp_s0_28 = omCurrentObj->objId;
    var_s0_3 = temp_s0_28 * 4;
    if (D_800E8920[temp_s0_28] == 0) {
        do {
            ohSleep(1);
            temp_s0_29 = omCurrentObj->objId;
            var_s0_3 = temp_s0_29 * 4;
        } while (D_800E8920[temp_s0_29] == 0);
    }
    D_800E9FE0[var_s0_3].as_s32 = 1;
    func_800A9F98(0x1041A, 4.0f);
    D_800DF310[omCurrentObj->objId] = func_801DF588_ovl13;
    func_800B33F4();
    func_800FB914(1);
    play_sound(0x185);
    func_800BB468(0, 0);
    func_801ACC34_ovl7(0x1C, 0);
    func_801ACC34_ovl7(0x1C, 1);
    temp_v1 = omCurrentObj;
    temp_s0_30 = temp_v1->objId;
    var_s0_4 = temp_s0_30 * 4;
    if (D_800E9FE0[temp_s0_30].as_u32 != 0) {
        do {
            ohSleep(1);
            temp_s0_31 = omCurrentObj->objId;
            var_s0_4 = temp_s0_31 * 4;
        } while (D_800E9FE0[temp_s0_31].as_u32 != 0);
    }
    *(D_800E8920 + var_s0_4) = 0;
    temp_s0_32 = temp_v1->objId;
    D_800EAC20[temp_s0_32] = -(D_800DFBD0[temp_s0_32][1]->angle.v.y / 20.0f);
    temp_s0_33 = temp_v1->objId;
    D_800EADE0[temp_s0_33] = -(D_800DFBD0[temp_s0_33][2]->angle.v.x / 20.0f);
    D_800E3210[temp_v1->objId] = 8.0f;
    temp_s0_34 = temp_v1->objId;
    D_800E6690[temp_s0_34] = D_800E6A10[temp_s0_34] * -0.2f;
    D_800E3750[temp_v1->objId] = -0.4f;
    ohSleep(0x14);
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    temp_s0_35 = omCurrentObj->objId;
    temp_f0_5 = D_800EADE0[temp_s0_35];
    D_800EAC20[temp_s0_35] = temp_f0_5;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = temp_f0_5;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = temp_f0_5;
    temp_s0_36 = omCurrentObj->objId;
    D_800E64D0[temp_s0_36] = D_800E6A10[temp_s0_36] * -4.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    func_800AA018(0x10427);
    if (func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]) < 0.0f) {
        var_f2 = -func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
    } else {
        var_f2 = func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
    }
    if (var_f2 < 200.0f) {
        do {
            ohSleep(1);
            if (func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]) < 0.0f) {
                var_f2_2 = -func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
            } else {
                var_f2_2 = func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
            }
        } while (var_f2_2 < 200.0f);
    }
    temp_s0_37 = omCurrentObj->objId;
    D_800E6690[temp_s0_37] = D_800E64D0[temp_s0_37] * -0.1f;
    ohSleep(0xA);
    func_800B3520();
    func_800AF27C();
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0_4 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_2 = temp_v0_4->pos.v.z;
    temp_v0_4->pos.v.y = temp_f2_2;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f2_2;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    temp_a0 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f2_3 = temp_a0->pos.v.z;
    temp_a0->pos.v.y = temp_f2_3;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = temp_f2_3;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    temp_v0_5 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_4 = temp_v0_5->angle.v.z;
    temp_v0_5->angle.v.y = temp_f2_4;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = temp_f2_4;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    temp_a0_2 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f2_5 = temp_a0_2->angle.v.z;
    temp_a0_2->angle.v.y = temp_f2_5;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = temp_f2_5;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_s0_38 = omCurrentObj->objId;
    temp_f0_6 = D_800EAFA0[temp_s0_38];
    D_800EADE0[temp_s0_38] = temp_f0_6;
    D_800EAC20[omCurrentObj->objId] = temp_f0_6;
    D_800EAA60[omCurrentObj->objId] = temp_f0_6;
    D_800EA8A0[omCurrentObj->objId] = temp_f0_6;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DE148_ovl13.s")
#endif

void func_801DF294_ovl13(GObj *arg0) {
    f32 temp;
    f32 temp2;

    temp = D_800EAA60[omCurrentObj->objId] + D_800EA8A0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = temp;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x += temp;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    temp = ABSF(D_800DFBD0[omCurrentObj->objId][1]->pos.v.x);
    if (temp < 80.0f) {
        func_801E3A84_ovl13(
            D_800DFBD0[omCurrentObj->objId][23],
            D_800DFBD0[omCurrentObj->objId][4],
            D_800DFBD0[omCurrentObj->objId][6]
        );
    }
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        if ((D_800DFF50[omCurrentObj->objId] == 0x10425) || (D_800DFF50[omCurrentObj->objId] == 0x10424)) {
            D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = D_800DFBD0[omCurrentObj->objId][3]->angle.v.x;
            D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = D_800DFBD0[omCurrentObj->objId][3]->angle.v.y;
            D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = D_800DFBD0[omCurrentObj->objId][3]->angle.v.z;
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.z = 0.0f;
            temp2 = D_800DFBD0[omCurrentObj->objId][3]->angle.v.z;
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.y = temp2;
            D_800DFBD0[omCurrentObj->objId][3]->angle.v.x = temp2;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801DF588_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32)arg2 == 1)) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    }
}

#if defined(MIPS_TO_C) || defined(PORT)
/* FACTORY: 1147/1239 words DIFFER (measured, draft spliced alone into a
   scratch copy of the TU, in-tree so verify.py sees the migrated .rodata).
   The largest pragma in this TU. m2c needed real correction before it would
   even compile, and those corrections are the useful part of this seed:
     - it types ohSleep's parameter as f32, so every `ohSleep(n)` came out as
       the DENORMAL whose bit pattern is n (`ohSleep(2.8e-44f)` is ohSleep(20));
       and it appended junk arguments (`(bitwise f32) omCurrentObj`) that are
       the NEXT statement's $a1 setup, not arguments -- ohSleep takes one;
     - `utilGetTransformSRT` takes TWO arguments and its first is a Vector, so
       m2c's sp54/sp58/sp5C are that Vector's x/y/z;
     - `--(x)` is not C; the listing has two neg.s, i.e. `-(-(x))`.
   The residue is again the frame and a register-name cascade. */
extern f32 *D_801DAAF0;

void func_801DF5D0_ovl13(GObj *arg0) {
    f32 sp68;
    f32 sp64;
    s32 sp60;
    Vector sp54;
    f32 sp4C;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f2;
    f32 temp_f2_10;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 temp_f2_6;
    f32 temp_f2_7;
    f32 temp_f2_8;
    f32 temp_f2_9;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f12;
    f32 var_f14;
    f32 var_f14_2;
    f32 var_f18;
    f32 var_f18_2;
    f32 var_f2;
    f32 var_f2_10;
    f32 var_f2_11;
    f32 var_f2_12;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f2_5;
    f32 var_f2_6;
    f32 var_f2_7;
    f32 var_f2_8;
    f32 var_f2_9;
    s32 var_t3;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_v1;
    u32 temp_v1_10;
    u32 temp_v1_11;
    u32 temp_v1_12;
    u32 temp_v1_13;
    u32 temp_v1_14;
    u32 temp_v1_15;
    u32 temp_v1_16;
    u32 temp_v1_17;
    u32 temp_v1_18;
    u32 temp_v1_19;
    u32 temp_v1_20;
    u32 temp_v1_21;
    u32 temp_v1_22;
    u32 temp_v1_23;
    u32 temp_v1_24;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    struct DObj *temp_a0;
    struct DObj *temp_a0_2;
    struct DObj *temp_a0_3;
    struct DObj *temp_v0;
    struct DObj *temp_v0_2;
    struct DObj *temp_v0_3;
    struct DObj *temp_v0_4;
    struct DObj *temp_v0_5;

    D_800DDFD0[omCurrentObj->objId] = 6;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93CC;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0;
    func_801A2ADC_ovl7(&D_801DAAF0, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAD8C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();
    func_800AA018(0x1042A);
    D_800E3C90[omCurrentObj->objId] = 4.0f;
    temp_v1 = omCurrentObj->objId;
    temp_f0 = gEntitiesNextPosYArray[temp_v1];
    temp_f12 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1]] + 40.0f;
    temp_f14 = temp_f0 - temp_f12;
    if (temp_f14 < 0.0f) {
        var_f2 = -temp_f14;
    } else {
        var_f2 = temp_f14;
    }
    if (var_f2 > 36.0f) {
        var_t3 = 0;
        if (temp_f14 > 0.0f) {
            var_t3 = 1;
        }
        if (((f32) var_t3 * 4.0f) != 0.0f) {
            D_800E3750[temp_v1] = -0.1f;
        } else {
            D_800E3750[temp_v1] = 0.1f;
        }
        ohSleep(0xA);
        temp_v1_2 = omCurrentObj->objId;
        var_v1 = temp_v1_2 * 4;
        temp_f0_2 = gEntitiesNextPosYArray[temp_v1_2];
        var_f12 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1_2]] + 40.0f;
        if (temp_f0_2 < var_f12) {
            var_f2_2 = -(temp_f0_2 - var_f12);
        } else {
            var_f2_2 = temp_f0_2 - var_f12;
        }
        if (var_f2_2 > 18.0f) {
            do {
                ohSleep(1);
                temp_v1_3 = omCurrentObj->objId;
                var_v1 = temp_v1_3 * 4;
                temp_f0_3 = gEntitiesNextPosYArray[temp_v1_3];
                var_f12 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1_3]] + 40.0f;
                if (temp_f0_3 < var_f12) {
                    var_f2_3 = -(temp_f0_3 - var_f12);
                } else {
                    var_f2_3 = temp_f0_3 - var_f12;
                }
            } while (var_f2_3 > 18.0f);
        }
        D_800E3750[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * -0.1f;
        ohSleep(0xA);
    } else {
        if (temp_f12 < temp_f0) {
            D_800E3210[temp_v1] = -1.0f;
        } else {
            D_800E3210[temp_v1] = 1.0f;
        }
        if (temp_f14 < 0.0f) {
            var_f2_4 = -temp_f14;
        } else {
            var_f2_4 = temp_f14;
        }
        ohSleep((s32) var_f2_4);
    }
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_4 = omCurrentObj->objId;
    D_800E3210[temp_v1_4] = D_800E3750[temp_v1_4];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    temp_v1_5 = omCurrentObj->objId;
    temp_f2 = D_800EA6E0[temp_v1_5];
    D_800EB320[temp_v1_5] = temp_f2;
    D_800EB160[omCurrentObj->objId] = temp_f2;
    temp_v1_6 = omCurrentObj->objId;
    sp68 = D_800E6BD0[temp_v1_6];
    sp60 = D_800E5F90[temp_v1_6];
    sp64 = gEntitiesNextPosYArray[temp_v1_6];
    func_800AA154(0x1042B);
    utilGetTransformSRT(&sp54, D_800DFBD0[omCurrentObj->objId][1]);
    temp_v1_7 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_v1_7], &D_800E6BD0[temp_v1_7], D_800E6A10[temp_v1_7] * D_800DFBD0[temp_v1_7][1]->pos.v.z);
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp54.y;
    temp_v1_8 = omCurrentObj->objId;
    temp_f0_4 = D_800EB320[temp_v1_8];
    temp_f12_2 = D_800EA6E0[temp_v1_8];
    if (temp_f0_4 < temp_f12_2) {
        D_800E3210[temp_v1_8] = -(-(temp_f0_4 - temp_f12_2));
    } else {
        D_800E3210[temp_v1_8] = -(temp_f0_4 - temp_f12_2);
    }
    temp_v1_9 = omCurrentObj->objId;
    temp_f0_5 = D_800EB320[temp_v1_9];
    temp_f12_3 = D_800EA6E0[temp_v1_9];
    if (temp_f0_5 < temp_f12_3) {
        var_f14 = temp_f0_5 - temp_f12_3;
        sp4C = -var_f14;
    } else {
        var_f14 = temp_f0_5 - temp_f12_3;
        sp4C = var_f14;
    }
    temp_f16 = D_800EB160[temp_v1_9];
    if (temp_f16 < temp_f0_5) {
        var_f18 = temp_f16 - temp_f0_5;
        var_f2_5 = -var_f18;
    } else {
        var_f18 = temp_f16 - temp_f0_5;
        var_f2_5 = var_f18;
    }
    if (sp4C < var_f2_5) {
        if (temp_f0_5 < temp_f12_3) {
            var_f2_6 = -var_f14;
        } else {
            var_f2_6 = var_f14;
        }
        if (temp_f16 < temp_f0_5) {
            var_f0 = -var_f18;
        } else {
            var_f0 = var_f18;
        }
        D_800E3750[temp_v1_9] = -(-(var_f2_6 - var_f0));
    } else {
        if (temp_f0_5 < temp_f12_3) {
            var_f2_7 = -var_f14;
        } else {
            var_f2_7 = var_f14;
        }
        if (temp_f16 < temp_f0_5) {
            var_f0_2 = -var_f18;
        } else {
            var_f0_2 = var_f18;
        }
        D_800E3750[temp_v1_9] = -(var_f2_7 - var_f0_2);
    }
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_2 = temp_v0->pos.v.z;
    temp_v0->pos.v.y = temp_f2_2;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f2_2;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        do {
            ohSleep(1);
        } while (D_800E8920[omCurrentObj->objId] == 0);
    }
    func_800AECC0(gameTicksPerDraw);
    func_800A9F98(0x1041C, 3.0f);
    func_800B33F4();
    func_800FB914(1);
    play_sound(0x185);
    func_800BB468(0, 0);
    func_801ACC34_ovl7(0x1C, 0);
    func_801ACC34_ovl7(0x1C, 1);
    func_800AF27C();
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA154(0x10429);
    func_800AA018(0x1042A);
    ohSleep(18);
    D_800EADE0[omCurrentObj->objId] = -0.17453294f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    temp_v1_10 = omCurrentObj->objId;
    D_800E6690[temp_v1_10] = D_800E6A10[temp_v1_10] * 0.4f;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(3);
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    ohSleep(7);
    D_800EADE0[omCurrentObj->objId] = 0.05235988f;
    ohSleep(10);
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    temp_v1_11 = omCurrentObj->objId;
    D_800DFBD0[temp_v1_11][2]->angle.v.x = (f32) D_800EADE0[temp_v1_11];
    D_800E3750[omCurrentObj->objId] = 0.0f;
    temp_v1_12 = omCurrentObj->objId;
    D_800E3210[temp_v1_12] = D_800E3750[temp_v1_12];
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    temp_v1_13 = omCurrentObj->objId;
    D_800E64D0[temp_v1_13] = D_800E6A10[temp_v1_13] * 8.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    func_800AEFFC(2, omCurrentObj);
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    temp_v1_14 = omCurrentObj->objId;
    temp_f2_3 = D_800EA6E0[temp_v1_14];
    D_800EB320[temp_v1_14] = temp_f2_3;
    D_800EB160[omCurrentObj->objId] = temp_f2_3;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v1_15 = omCurrentObj->objId;
    D_800E64D0[temp_v1_15] = D_800E6690[temp_v1_15];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E5F90[omCurrentObj->objId] = sp60;
    D_800E6BD0[omCurrentObj->objId] = sp68;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp64;
    func_800AA154(0x1042D);
    utilGetTransformSRT(&sp54, D_800DFBD0[omCurrentObj->objId][1]);
    temp_v1_16 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_v1_16], &D_800E6BD0[temp_v1_16], D_800E6A10[temp_v1_16] * D_800DFBD0[temp_v1_16][1]->pos.v.z);
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp54.y;
    temp_v1_17 = omCurrentObj->objId;
    temp_f16_2 = D_800EB160[temp_v1_17];
    temp_f0_6 = D_800EB320[temp_v1_17];
    if (temp_f16_2 < temp_f0_6) {
        D_800E3210[temp_v1_17] = -(-(temp_f16_2 - temp_f0_6));
    } else {
        D_800E3210[temp_v1_17] = -(temp_f16_2 - temp_f0_6);
    }
    temp_v1_18 = omCurrentObj->objId;
    temp_f0_7 = D_800EB320[temp_v1_18];
    temp_f12_4 = D_800EA6E0[temp_v1_18];
    if (temp_f0_7 < temp_f12_4) {
        var_f14_2 = temp_f0_7 - temp_f12_4;
        sp4C = -var_f14_2;
    } else {
        var_f14_2 = temp_f0_7 - temp_f12_4;
        sp4C = var_f14_2;
    }
    temp_f16_3 = D_800EB160[temp_v1_18];
    if (temp_f16_3 < temp_f0_7) {
        var_f18_2 = temp_f16_3 - temp_f0_7;
        var_f2_8 = -var_f18_2;
    } else {
        var_f18_2 = temp_f16_3 - temp_f0_7;
        var_f2_8 = var_f18_2;
    }
    if (sp4C < var_f2_8) {
        if (temp_f0_7 < temp_f12_4) {
            var_f2_9 = -var_f14_2;
        } else {
            var_f2_9 = var_f14_2;
        }
        if (temp_f16_3 < temp_f0_7) {
            var_f0_3 = -var_f18_2;
        } else {
            var_f0_3 = var_f18_2;
        }
        D_800E3750[temp_v1_18] = -(-(var_f2_9 - var_f0_3));
    } else {
        if (temp_f0_7 < temp_f12_4) {
            var_f2_10 = -var_f14_2;
        } else {
            var_f2_10 = var_f14_2;
        }
        if (temp_f16_3 < temp_f0_7) {
            var_f0_4 = -var_f18_2;
        } else {
            var_f0_4 = var_f18_2;
        }
        D_800E3750[temp_v1_18] = -(var_f2_10 - var_f0_4);
    }
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0_2 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_4 = temp_v0_2->pos.v.z;
    temp_v0_2->pos.v.y = temp_f2_4;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f2_4;
    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1_19 = omCurrentObj->objId;
    var_v1_2 = temp_v1_19 * 4;
    if (D_800E8920[temp_v1_19] == 0) {
        do {
            ohSleep(1);
            temp_v1_20 = omCurrentObj->objId;
            var_v1_2 = temp_v1_20 * 4;
        } while (D_800E8920[temp_v1_20] == 0);
    }
    D_800DFBD0[var_v1_2][1]->angle.v.z = 0.0f;
    temp_v0_3 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_5 = temp_v0_3->angle.v.z;
    temp_v0_3->angle.v.y = temp_f2_5;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = temp_f2_5;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    temp_a0 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f2_6 = temp_a0->angle.v.z;
    temp_a0->angle.v.y = temp_f2_6;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = temp_f2_6;
    temp_a1 = &D_800E6A10[omCurrentObj->objId];
    *temp_a1 = -*temp_a1;
    func_800AECC0(gameTicksPerDraw);
    func_800A9F98(0x1041C, 3.0f);
    func_800B33F4();
    func_800FB914(1);
    play_sound(0x185);
    func_800BB468(0, 0);
    func_801ACC34_ovl7(0x1C, 0);
    func_801ACC34_ovl7(0x1C, 1);
    func_800AF27C();
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA154(0x10429);
    func_800AA018(0x1042A);
    ohSleep(18);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    temp_v1_21 = omCurrentObj->objId;
    D_800E6690[temp_v1_21] = (f32) ((f64) D_800E6A10[temp_v1_21] * -0.20000000298023224);
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(20);
    temp_v1_22 = omCurrentObj->objId;
    D_800E64D0[temp_v1_22] = D_800E6A10[temp_v1_22] * -4.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]) < 0.0f) {
        var_f2_11 = -func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
    } else {
        var_f2_11 = func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
    }
    if (var_f2_11 < 200.0f) {
        do {
            ohSleep(1);
            if (func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]) < 0.0f) {
                var_f2_12 = -func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
            } else {
                var_f2_12 = func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId]);
            }
        } while (var_f2_12 < 200.0f);
    }
    temp_v1_23 = omCurrentObj->objId;
    D_800E6690[temp_v1_23] = D_800E64D0[temp_v1_23] * -0.1f;
    ohSleep(10);
    func_800B3520();
    func_800AF27C();
    func_800AA154(0x10423);
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0_4 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_7 = temp_v0_4->pos.v.z;
    temp_v0_4->pos.v.y = temp_f2_7;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f2_7;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    temp_a0_2 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f2_8 = temp_a0_2->pos.v.z;
    temp_a0_2->pos.v.y = temp_f2_8;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = temp_f2_8;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.z = 0.0f;
    temp_v0_5 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f2_9 = temp_v0_5->angle.v.z;
    temp_v0_5->angle.v.y = temp_f2_9;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.x = temp_f2_9;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    temp_a0_3 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f2_10 = temp_a0_3->angle.v.z;
    temp_a0_3->angle.v.y = temp_f2_10;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = temp_f2_10;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_v1_24 = omCurrentObj->objId;
    temp_f0_8 = D_800EAFA0[temp_v1_24];
    D_800EADE0[temp_v1_24] = temp_f0_8;
    D_800EAC20[omCurrentObj->objId] = temp_f0_8;
    D_800EAA60[omCurrentObj->objId] = temp_f0_8;
    D_800EA8A0[omCurrentObj->objId] = temp_f0_8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801DF5D0_ovl13.s")
#endif

void func_801E0928_ovl13(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->pos.v.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

#if defined(MIPS_TO_C) || defined(PORT)
extern s32 D_801D93F0;
extern void func_800B7790(s32);
extern void func_800BB468(s32, s32);
extern void func_800FB914(s32);
extern void func_800FD754(s32, f32, f32, f32);
extern void utilGetTransformSRT(Vector *, struct DObj *);
struct Ovl13Unk800D7118 {
    u8 pad0[0x3C];
    s32 unk3C;
};
extern struct Ovl13Unk800D7118 D_800D7118;
#endif

#ifdef MIPS_TO_C
/* FACTORY: 276/468 words DIFFER (measured, draft spliced alone into a scratch
   copy of the TU, in-tree so verify.py sees this TU's migrated .rodata).
   468 words against the ROM's 464 and a frame of 0x68 against 0x58, so the
   Vector the SRT read lands in sits at sp+0x5C where the ROM has it at 0x44:
   the ROM keeps 0x14 of locals above it that no declaration order I tried
   reproduces (moving the Vector to the end of the declaration list, LEVERS 13
   and 32, changed nothing -- IDO keeps every scalar here in a register).
   Swept: m2c's ten `temp_v1_N = omCurrentObj->objId` caches inlined
   (LEVERS 4) -- KEEPING them measures 435/464 with a 0x90 frame, so inlining
   is what buys the 0x28 of frame back and it is worth the four extra words.
   Corrected against the listing, not m2c: utilGetTransformSRT takes TWO
   arguments (m2c invented a third, `D_800DFBD0`), and its first is a Vector,
   so m2c's sp44/sp48/sp4C are that Vector's x/y/z; `->unk4`/`->unk8` are
   D_800DFBD0[id][1] and [2], and 0x1C/0x20/0x24 are pos.v.x/y/z. */
void func_801E0A90_ovl13(GObj *arg0) {
    Vector sp44;
    struct EnemyRecord *temp_s4;
    GObj *temp_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    struct DObj *temp_v0;
    struct DObj *temp_v1;

    temp_s4 = D_800E1B50[omCurrentObj->objId];
    D_800EBF60[omCurrentObj->objId] = func_8019E0E8_ovl7(2U, 5U);
    D_800E98E0[D_800EBF60[omCurrentObj->objId]] = 1;
    D_800D7098.unk4 = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    utilGetTransformSRT(&sp44, D_800DFBD0[omCurrentObj->objId][1]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f0 = temp_v0->pos.v.z;
    temp_v0->pos.v.y = temp_f0;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f0;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    temp_v1 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f0_2 = temp_v1->pos.v.z;
    temp_v1->pos.v.y = temp_f0_2;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = temp_f0_2;
    temp_s4->unk80->unk10 = 60.0f;
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw * 0.5f);
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18;
    func_801A2ADC_ovl7(&D_801DAB18);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    play_sound(0x1E7);
    func_800BB468(2, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800FD754(4, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_f0_3 = D_800EAFA0[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = temp_f0_3;
    D_800EAC20[omCurrentObj->objId] = temp_f0_3;
    func_800AA018(0x10427);
    temp_s0 = omCurrentObj;
    D_800E3750[temp_s0->objId] = -0.2f;
    D_800E3C90[temp_s0->objId] = 2.0f;
    D_800E6690[temp_s0->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[temp_s0->objId] = 65535.0f;
    D_800EAFA0[temp_s0->objId] = 0.017453292f;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        do {
            ohSleep(1);
        } while (D_800E8920[omCurrentObj->objId] == 0);
    }
    D_800E3750[temp_s0->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[temp_s0->objId] = 65535.0f;
    func_800FB914(2);
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800D70D8.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D7098.unk4 = 1;
    ohSleep(0x14);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    if (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0) {
        do {
            ohSleep(1);
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800EBF60[omCurrentObj->objId]];
        } while (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0);
    }
    curObjSleepForever();
}
#elif defined(PORT)
void func_801E0A90_ovl13(GObj *arg0) {
    Vector sp44;
    struct EnemyRecord *temp_s4;
    GObj *temp_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    struct DObj *temp_v0;
    struct DObj *temp_v1;

    temp_s4 = D_800E1B50[omCurrentObj->objId];
    D_800EBF60[omCurrentObj->objId] = func_8019E0E8_ovl7(2U, 5U);
    D_800E98E0[D_800EBF60[omCurrentObj->objId]] = 1;
    D_800D7098.unk4 = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    utilGetTransformSRT(&sp44, D_800DFBD0[omCurrentObj->objId][1]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    temp_v0 = D_800DFBD0[omCurrentObj->objId][1];
    temp_f0 = temp_v0->pos.v.z;
    temp_v0->pos.v.y = temp_f0;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.x = temp_f0;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.z = 0.0f;
    temp_v1 = D_800DFBD0[omCurrentObj->objId][2];
    temp_f0_2 = temp_v1->pos.v.z;
    temp_v1->pos.v.y = temp_f0_2;
    D_800DFBD0[omCurrentObj->objId][2]->pos.v.x = temp_f0_2;
    temp_s4->unk80->unk10 = 60.0f;
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw * 0.5f);
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18;
    func_801A2ADC_ovl7(&D_801DAB18);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId];
    D_800E3AD0[omCurrentObj->objId] = 65535.0f;
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    play_sound(0x1E7);
    func_800BB468(2, 0);
    func_800FD754(2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800FD754(4, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_f0_3 = D_800EAFA0[omCurrentObj->objId];
    D_800EADE0[omCurrentObj->objId] = temp_f0_3;
    D_800EAC20[omCurrentObj->objId] = temp_f0_3;
    func_800AA018(0x10427);
    temp_s0 = omCurrentObj;
    D_800E3750[temp_s0->objId] = -0.2f;
    D_800E3C90[temp_s0->objId] = 2.0f;
    D_800E6690[temp_s0->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[temp_s0->objId] = 65535.0f;
    D_800EAFA0[temp_s0->objId] = 0.017453292f;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        do {
            ohSleep(1);
        } while (D_800E8920[omCurrentObj->objId] == 0);
    }
    D_800E3750[temp_s0->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    D_800E3C90[temp_s0->objId] = 65535.0f;
    func_800FB914(2);
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800D70D8.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D7098.unk4 = 1;
    ohSleep(0x14);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    if (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0) {
        do {
            ohSleep(1);
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800EBF60[omCurrentObj->objId]];
        } while (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0);
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E0A90_ovl13.s")
#endif

void func_801E11D0_ovl13(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x += D_800EADE0[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    if (0.0f != D_800E3210[omCurrentObj->objId]) {
        func_801E3A84_ovl13(
            D_800DFBD0[omCurrentObj->objId][23],
            D_800DFBD0[omCurrentObj->objId][4],
            D_800DFBD0[omCurrentObj->objId][6]
        );
    }
    func_801E3958_ovl13(arg0);
    if (D_800D7098.unk4 != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    }
}

void func_801E135C_ovl13(GObj *arg0) {
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = 0.0f;
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10426);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 3) {
        ohSleep(1);
    }
    func_800AF27C();
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E15DC_ovl13(GObj *arg0) {
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801E1680_ovl13(GObj *arg0) {
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
    if (random_soft_s32_range(2) != 0) {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E185C_ovl13(GObj *arg0) {
    s32 i;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 9;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x10426);
    for (i = 60; i; i--) {
        ohSleep(1);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 11;
}

void func_801E19AC_ovl13(GObj *arg0) {
    f32 temp;

    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        D_800EAC20[omCurrentObj->objId] =
            3.1415927f / ((D_800E64D0[omCurrentObj->objId] > 0.0f) ? 180.0f : -180.0f);
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y > 3.926991f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.926991f;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y < 2.3561945f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 2.3561945f;
    }
    if (D_800E6690[omCurrentObj->objId] < 0.0f) {
        if (D_800E64D0[omCurrentObj->objId] <= -4.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        }
    } else if (D_800E64D0[omCurrentObj->objId] >= 4.0f) {
        D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 15;
    }
    if (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 40.0f <
        gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -ABS(D_800E3750[omCurrentObj->objId]);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] <
               gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 80.0f) {
        D_800E3750[omCurrentObj->objId] = ABS(D_800E3750[omCurrentObj->objId]);
    }
    temp = func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]);
    if (ABS(temp) > 120.0f) {
        if (temp > 0.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        } else {
            D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
        }
    }
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

void func_801E1ED8_ovl13(GObj *arg0) {
    f32 *temp_v1;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1 = &D_800E64D0[omCurrentObj->objId];
    *temp_v1 = -*temp_v1;
}

extern s32 D_801E5BF0_ovl13[];
void func_801E1F1C_ovl13(GObj *arg0) {
    switch ((s32) D_800E9AA0[omCurrentObj->objId]) {
    case 0:
        D_800E9AA0[omCurrentObj->objId] = 1;
        break;
    case 1:
        if (random_soft_s32_range(2) == 0) {
            D_800E9AA0[omCurrentObj->objId] = 0;
        } else {
            D_800E9AA0[omCurrentObj->objId] = 2;
        }
        break;
    case 2:
        D_800E9AA0[omCurrentObj->objId] = 0;
        break;
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = D_801E5BF0_ovl13[(s32) D_800E9AA0[omCurrentObj->objId]];
}

#if defined(MIPS_TO_C) || defined(PORT)
extern s32 D_801D93A8;
extern f32 *D_801DAB04;
#endif

#ifdef MIPS_TO_C
/* FACTORY: 104/384 words DIFFER (measured, draft spliced alone into a scratch
   copy of the TU, in-tree so verify.py sees this TU's migrated .rodata).
   Word count 383 against the ROM's 384. Residue is one register: the ROM keeps
   the `omCurrentObj` POINTER in $v1 across each straight run and this draft
   lands it in $a1, then loses it at the second half of the descent where the
   ROM still has it -- one missing re-use, and a $t-register renaming cascade
   behind it. Swept and rejected: keeping m2c's `temp_v1 = omCurrentObj` local
   (it is the obvious fix for exactly that re-use and measures 209/386 -- the
   local takes a saved register the ROM does not spend). Also applied: m2c's
   eight `temp_v0N = omCurrentObj->objId` caches inlined (LEVERS 4), and its
   `D_800DFBD0[id]->unk4->unkNN` chains respelled against the real DObj
   layout -- [1]/[2] are the DObj slots, 0x24 is pos.v.z, 0x30 angle.v.x,
   0x34 angle.v.y. */
void func_801E2034_ovl13(GObj *arg0) {
    f32 *temp_v0_9;
    f32 var_f0;

    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800EA360[omCurrentObj->objId] = 1;
    func_800AA018(0x10426);
    D_800E3750[omCurrentObj->objId] = -0.1f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.1f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 260.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 260.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    play_sound(0x1A1);
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    if (random_soft_s32_range(2) != 0) {
        var_f0 = 18.0f;
    } else {
        var_f0 = -18.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 3.1415927f / var_f0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 500.0f)) {
        do {
            ohSleep(1);
        } while (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 500.0f));
    }
    D_800EA360[omCurrentObj->objId] = 1;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = -1000.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = 1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = -16.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 680.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 680.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    func_800B33F4();
    temp_v0_9 = &gEntitiesNextPosYArray[omCurrentObj->objId];
    *temp_v0_9 += 440.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
}
#elif defined(PORT)
void func_801E2034_ovl13(GObj *arg0) {
    f32 *temp_v0_9;
    f32 var_f0;

    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800EA360[omCurrentObj->objId] = 1;
    func_800AA018(0x10426);
    D_800E3750[omCurrentObj->objId] = -0.1f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.1f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 260.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 260.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    play_sound(0x1A1);
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    if (random_soft_s32_range(2) != 0) {
        var_f0 = 18.0f;
    } else {
        var_f0 = -18.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 3.1415927f / var_f0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 500.0f)) {
        do {
            ohSleep(1);
        } while (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 500.0f));
    }
    D_800EA360[omCurrentObj->objId] = 1;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = -1000.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = 1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = -16.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 680.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 680.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    func_800B33F4();
    temp_v0_9 = &gEntitiesNextPosYArray[omCurrentObj->objId];
    *temp_v0_9 += 440.0f;
    D_800DFBD0[omCurrentObj->objId][1]->pos.v.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = -1.5707964f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2034_ovl13.s")
#endif

/* 149/157 -- an early m2c draft, retyped for the current DObj header
   (its `unk34` is angle.v.y at 0x34 and `unk24` is pos.v.z at 0x24, and
   D_800DFBD0[i] is a DObj ** whose [1] is the DObj m2c called `->unk4`).
   Saved rather than discarded because the retyping is the tedious part.
   The structural gap is that the ROM RE-MATERIALISES %hi/%lo(D_800DFBD0) and
   re-indexes it inside each arm where this draft computes it once -- the
   source reads D_800DFBD0[objId] separately in every branch. */
#ifdef NON_MATCHING
void func_801E2630_ovl13(GObj *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    struct DObj **var_a3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    struct DObj *temp_v0;
    struct DObj *temp_v0_2;
    struct DObj *var_v0;

    temp_v1 = omCurrentObj->objId;
    if (D_800EA360[temp_v1] != 0) {
        temp_f0 = D_800DFBD0[temp_v1][1]->angle.v.y;
        if (temp_f0 != 3.1415927f) {
            if (temp_f0 > 3.1415927f) {
                var_f0 = -180.0f;
            } else {
                var_f0 = 180.0f;
            }
            D_800EAC20[temp_v1] = 3.1415927f / var_f0;
        } else {
            D_800EAC20[temp_v1] = 0.0f;
        }
        temp_v1_2 = omCurrentObj->objId;
        temp_v0 = D_800DFBD0[temp_v1_2][1];
        temp_v0->angle.v.y = temp_v0->angle.v.y + D_800EAC20[temp_v1_2];
        var_a3 = D_800DFBD0[omCurrentObj->objId];
        var_v0 = var_a3[1];
        var_f0_2 = var_v0->angle.v.y;
        if (var_f0_2 > 3.926991f) {
            var_v0->angle.v.y = 3.926991f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            var_v0 = var_a3[1];
            var_f0_2 = var_v0->angle.v.y;
        }
        if (var_f0_2 < 2.3561945f) {
            var_v0->angle.v.y = 2.3561945f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            goto block_12;
        }
    } else {
        temp_v0_2 = D_800DFBD0[temp_v1][1];
        temp_v0_2->angle.v.y = temp_v0_2->angle.v.y + D_800EAC20[temp_v1];
        var_a3 = D_800DFBD0[omCurrentObj->objId];
block_12:
        var_v0 = var_a3[1];
    }
    temp_f2 = var_v0->pos.v.z;
    if (temp_f2 < 0.0f) {
        var_f0_3 = -temp_f2;
    } else {
        var_f0_3 = temp_f2;
    }
    if (var_f0_3 < 40.0f) {
        func_801E3A84_ovl13(var_a3[23], var_a3[4], var_a3[6]);
        temp_v1_3 = omCurrentObj->objId;
        if (D_800E83E0[temp_v1_3] == 1) {
            gEntityFuncListIDArray[temp_v1_3] = 0xE;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
        }
    }
    func_801E3958_ovl13(arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E2630_ovl13.s")
#endif

void func_801E28A8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04_ovl8;
    func_801A2ADC_ovl7(&D_801DAB04_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40_ovl8;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x1041E);
    D_800DF310[omCurrentObj->objId] = func_801E2F0C_ovl13;
    func_800AEFFC(3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}

void func_801E29E0_ovl13(GObj *arg0) {
    f32 temp;

    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        D_800EAC20[omCurrentObj->objId] =
            3.1415927f / ((D_800E64D0[omCurrentObj->objId] > 0.0f) ? 180.0f : -180.0f);
    }
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y > 3.926991f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 3.926991f;
    }
    if (D_800DFBD0[omCurrentObj->objId][1]->angle.v.y < 2.3561945f) {
        D_800DFBD0[omCurrentObj->objId][1]->angle.v.y = 2.3561945f;
    }
    if (D_800E6690[omCurrentObj->objId] < 0.0f) {
        if (D_800E64D0[omCurrentObj->objId] <= -4.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        }
    } else if (D_800E64D0[omCurrentObj->objId] >= 4.0f) {
        D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
    }
    if (D_800E9E20[omCurrentObj->objId] > 0) {
        D_800E9E20[omCurrentObj->objId] -= 1;
    }
    if (D_800E9E20[omCurrentObj->objId] <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 15;
    }
    if (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 40.0f <
        gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -ABS(D_800E3750[omCurrentObj->objId]);
    } else if (gEntitiesNextPosYArray[omCurrentObj->objId] <
               gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 80.0f) {
        D_800E3750[omCurrentObj->objId] = ABS(D_800E3750[omCurrentObj->objId]);
    }
    temp = func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]);
    if (ABS(temp) > 120.0f) {
        if (temp > 0.0f) {
            D_800E6690[omCurrentObj->objId] = ABS(D_800E6690[omCurrentObj->objId]);
        } else {
            D_800E6690[omCurrentObj->objId] = -ABS(D_800E6690[omCurrentObj->objId]);
        }
    }
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    if (D_800E83E0[omCurrentObj->objId] == 1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}

extern s32 func_801BA32C_ovl7(void);
void func_801E2F0C_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if ((arg1 == 0) && ((s32) arg2 == 2)) {
        temp = func_801BA32C_ovl7();
        if (temp != -1) {
            D_800E76C0[temp] = 0xFF;
            D_800E7730[temp] = 0;
            D_800E77A0[temp] = 0x25;
            D_800E7880[temp] = 1;
            gEntitiesAngleZArray[temp] = 0.0f;
            gEntityFuncListIDArray[temp] = 1;
            gEntitiesNextPosYArray[temp] = gEntitiesNextPosYArray[omCurrentObj->objId] + 30.0f;
            D_800E8E60[temp] = 0;
            D_800E8AE0[temp] |= 1;
            D_800E9E20[temp] = 1;
            play_sound(0x188);
        }
    }
}

#if defined(MIPS_TO_C) || defined(PORT)
extern s32 D_801D93F0;
extern f32 *D_801DAB04;
extern s32 D_800D6B54;
extern void func_8019F1EC_ovl7(void);
extern s32 func_801BC794_ovl7(s32, f32 *);
extern u32 func_800FD570(s32, u32, f32, f32, f32);
extern void func_800BB468(s32, s32);
/* struct Ovl13Unk800D7118 / D_800D7118 come from func_801E0A90_ovl13's block
   above -- IDO and gcc both reject a second definition in the same TU. */
#endif

#ifdef MIPS_TO_C
/* FACTORY: 214/371 words DIFFER (measured, draft spliced alone into a scratch
   copy of the TU). Word count is 368 against the ROM's 371 and the block
   structure is right; two things are left. (1) A three-word gap in the last
   if-body: the ROM recomputes `D_800E6BD0[D_800E0D50[objId]]` from scratch for
   the second copy where IDO here shares the first copy's index, even written
   inline at every use (LEVERS 26 already applied). (2) Everything else is one
   held base register too many: the ROM keeps &D_800E1B50, &omCurrentObj and
   three array bases and lands the omCurrentObj temp in $v1, while this draft
   pushes it to $a2 and renames every $t register downstream.
   Levers that paid: deleting m2c's `temp_v1 = omCurrentObj` local (it took a
   fourth saved register and turned the ROM's stack-homed `arg0` into an $s2
   copy) fixed the whole prologue; inlining m2c's eight
   `temp_v0N = omCurrentObj->objId` caches (LEVERS 4) went 341 -> 315; and
   spelling func_800FD570's prototype the way its DEFINITION in ovl2 does --
   `u32 (s32, u32, f32, f32, f32)`, not m2c's `(s32, s32, s32, f32, f32)` --
   went 315 -> 214. That third parameter is an f32, and because arg0 is
   integral the o32 ABI hands it over in an INTEGER register, so the ROM has
   `mfc1 $a2, $f22`; declared `s32` the same literal 0 came out as
   `move $a2, $zero` and shifted a hundred words behind it. A wrong prototype
   is worth a hundred words here -- check the definition, not m2c. */
void func_801E3028_ovl13(GObj *arg0) {
    struct EnemyRecord *temp_s1;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0_9;
    s32 var_v0;

    temp_s1 = D_800E1B50[omCurrentObj->objId];
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_f0_2 = D_800E6690[omCurrentObj->objId];
    D_800E3910[omCurrentObj->objId] = temp_f0_2;
    D_800E3750[omCurrentObj->objId] = temp_f0_2;
    D_800E3590[omCurrentObj->objId] = temp_f0_2;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    if (D_800D6B54 == 0) {
        func_8019F1EC_ovl7();
    }
    play_sound(0x1E6);
    func_800BB468(3, 0);
    func_800FD570(0, 2, 0, *(f32 *) temp_s1->unk88->unk10, 0.0f);
    func_800FD570(0, 4, 0, *(f32 *) temp_s1->unk88->unk10, 0.0f);
    D_800EAC20[omCurrentObj->objId] = 0.017453292f;
    D_800EAFA0[omCurrentObj->objId] = 0.017453292f;
    func_800AECC0(gameTicksPerDraw * 0.5f);
    func_800AA018(0x10427);
    D_800E3750[omCurrentObj->objId] = -0.6f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    D_800E7B20[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.05f;
    ohSleep(2);
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    ohSleep(0x12);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    var_v0 = omCurrentObj->objId * 4;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 280.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
                    var_v0 = omCurrentObj->objId * 4;
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 280.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    D_800E98E0[*(s32 *) ((u8 *) D_800E0D50 + var_v0)] = 5;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EAC20[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
    D_800D70D8.unk0 = gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 280.0f;
    temp_v0_9 = func_801BC794_ovl7(2, D_800EAFA0);
    if (temp_v0_9 != -1) {
        D_800E5F90[temp_v0_9] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
        D_800E6BD0[temp_v0_9] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosYArray[temp_v0_9] = gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 160.0f;
    }
    curObjSleepForever();
}
#elif defined(PORT)
void func_801E3028_ovl13(GObj *arg0) {
    struct EnemyRecord *temp_s1;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0_9;

    temp_s1 = D_800E1B50[omCurrentObj->objId];
    func_800AED20(0.0f);
    func_800AECC0(gameTicksPerDraw);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp_f0 = D_800E3910[omCurrentObj->objId];
    D_800E3590[omCurrentObj->objId] = temp_f0;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_f0_2 = D_800E6690[omCurrentObj->objId];
    D_800E3910[omCurrentObj->objId] = temp_f0_2;
    D_800E3750[omCurrentObj->objId] = temp_f0_2;
    D_800E3590[omCurrentObj->objId] = temp_f0_2;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    if (D_800D6B54 == 0) {
        func_8019F1EC_ovl7();
    }
    play_sound(0x1E6);
    func_800BB468(3, 0);
    func_800FD570(0, 2, 0, *(f32 *) temp_s1->unk88->unk10, 0.0f);
    func_800FD570(0, 4, 0, *(f32 *) temp_s1->unk88->unk10, 0.0f);
    D_800EAC20[omCurrentObj->objId] = 0.017453292f;
    D_800EAFA0[omCurrentObj->objId] = 0.017453292f;
    func_800AECC0(gameTicksPerDraw * 0.5f);
    func_800AA018(0x10427);
    D_800E3750[omCurrentObj->objId] = -0.6f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    D_800E7B20[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.05f;
    ohSleep(2);
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    ohSleep(0x12);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 280.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        do {
            ohSleep(1);
        } while ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 280.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]);
    }
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 5;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800EAC20[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId];
    D_800D70D8.unk0 = gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 280.0f;
    temp_v0_9 = func_801BC794_ovl7(2, D_800EAFA0);
    if (temp_v0_9 != -1) {
        D_800E5F90[temp_v0_9] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
        D_800E6BD0[temp_v0_9] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosYArray[temp_v0_9] = gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 160.0f;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3028_ovl13.s")
#endif

void func_801E35F4_ovl13(GObj *arg0) {
    D_800DFBD0[omCurrentObj->objId][1]->angle.v.y += D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z += D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    func_801E3A84_ovl13(
        D_800DFBD0[omCurrentObj->objId][23],
        D_800DFBD0[omCurrentObj->objId][4],
        D_800DFBD0[omCurrentObj->objId][6]
    );
    func_801E3958_ovl13(arg0);
}

extern s32 D_801D93F0;
void func_801E36D8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 14;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E1B50[omCurrentObj->objId]->unk98 = (struct EnemyEventTable *) &D_801DAE1C;
    func_800B33F4();
    ohSleep(0x1E);
    func_800F6C78();
    curObjSleepForever();
}

void func_801E3778_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0[23], temp_v0[4], temp_v0[6]);
    func_801E3958_ovl13(arg0);
}

extern void func_801A3E80_ovl7(GObj *);
/* 9999.0f, 0.09000000358f: literals, this TU owns its .rodata */

void func_801E37E8_ovl13(GObj *arg0) {
    s32 i;
    s32 m;
    f32 temp_f20;
    f32 temp_f22;

    m = -1;
    temp_f20 = 0.09000000358f;
    temp_f22 = 9999.0f;

    for (i = 14; i != 0x3C; i++) {
        if ((D_800DD710[i] != m) && ((D_800E7730[i] == 0) || (D_800E7730[i] == 4)) &&
            (D_800E77A0[i] != 0x39) && (D_800E77A0[i] != 0x3A) && (temp_f20 < D_800E7B20[i]) &&
            (D_800E7B20[i] < temp_f22) && (D_800E83E0[i] != 1) && (D_800E0D50[i] != 0)) {
            gEntityFuncListIDArray[i] = m;
            assign_new_process_entry(gEntityGObjProcessArray[i], func_801A3E80_ovl7);
        }
    }
}

void func_801E3958_ovl13(GObj *arg0) {
    D_800E9C60[omCurrentObj->objId] += 1;
    D_800E9C60[omCurrentObj->objId] %= 6;
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][12]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][14]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][16]);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][8]);
    }
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_801E3A84_ovl13(struct DObj *arg0, struct DObj *arg1, struct DObj *arg2) {
    struct Ovl13AnimInfo sp38;
    EnemyRecord *sp30;
    s32 *sp28;
    EnemyRecord *temp_t0;
    s32 *var_t2;
    s32 temp_a0;
    s32 var_a3;
    struct Ovl13AnimObj *temp_v0;
    u32 temp_a3;
    u32 temp_a3_2;
    u32 var_v1;

    var_v1 = omCurrentObj->objId;
    temp_t0 = D_800E1B50[var_v1];
    var_t2 = NULL;
    if (temp_t0->unk88 == NULL) {
        return 0;
    }
    temp_a0 = D_800EBDA0[var_v1];
    if ((temp_a0 != -1) && (var_v1 == D_800E0D50[temp_a0]) && (D_800DD710[temp_a0] != -1U) && (D_800E98E0[temp_a0] != 0)) {
        var_t2 = temp_t0->unk8C;
        temp_t0->unk8C = &D_801D9384;
        var_v1 = omCurrentObj->objId;
    }
    sp30 = temp_t0;
    sp28 = var_t2;
    func_80111550((s32) var_v1);
    temp_v0 = func_80111C88(temp_t0->unk8C, (s32) omCurrentObj->objId);
    if (temp_v0 != NULL) {
        /* The joint slots are 4 bytes wide by construction (ovl13.h), so the
           node addresses go in truncated, exactly as func_8011D4A4 stores
           them; func_8010E740 zero-extends them back. */
        if (arg0 != NULL) {
            temp_v0->unk24->unk8 = (s32) (uintptr_t) arg0;
        }
        if (arg1 != NULL) {
            temp_v0->unk24->unk30 = (s32) (uintptr_t) arg1;
        }
        if (arg2 != NULL) {
            temp_v0->unk24->unk58 = (s32) (uintptr_t) arg2;
        }
        sp30 = temp_t0;
        func_80111ECC(temp_v0);
    }
    sp30 = temp_t0;
    if (func_80110150(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else if (func_80110B00(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else if (func_80110FD4(&sp38) != 0) {
        if (sp38.unk2 == 0xA) {
            D_800E83E0[omCurrentObj->objId] = 0;
            goto block_24;
        }
        D_800E83E0[omCurrentObj->objId] = (s32) sp38.unk2;
        sp30->unk43 = sp38.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
block_24:
        sp30->unk43 = 0;
    }
    temp_a3 = omCurrentObj->objId;
    var_a3 = temp_a3 * 4;
    if (D_800E83E0[temp_a3] == 2) {
        D_800EBDA0[omCurrentObj->objId] = func_8019E0E8_ovl7(2U, 2U);
        temp_a3_2 = omCurrentObj->objId;
        var_a3 = temp_a3_2 * 4;
        if ((D_800EBDA0[temp_a3_2] != -1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[temp_a3_2]);
            var_a3 = omCurrentObj->objId * 4;
        }
    }
    if (sp28 != NULL) {
        (*(D_800E1B50 + var_a3))->unk8C = sp28;
        var_a3 = omCurrentObj->objId * 4;
    }
    return *(D_800E83E0 + var_a3);
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl13/code_1F3160/func_801E3A84_ovl13.s")
#endif
