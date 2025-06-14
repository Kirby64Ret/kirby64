#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl13.h"
#include "ovl13.data"

void func_801DB1E0_ovl13(GObj *arg0) {
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    D_800DF150[omCurrentObj->objId] = func_801DB358_ovl13;
    func_801A0D50(&func_801DB2D8_ovl13);
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

// very funny loop+switch case (better not be duff's device)
#ifdef NON_MATCHING
void func_801DB3A0_ovl13(GObj *arg0) {
    f32 temp_f0;

    func_800AED80(0.0f, D_801290D0);
    func_800AA038(0x70050, 0, D_801290D0);
    D_800D7098.unk0 = 0;
    func_8019BB58_ovl7();
    func_800B19F4(0x79, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B33F4();
    D_800E98E0[omCurrentObj->objId] = 0;
    // while ((u32)D_800E98E0[omCurrentObj->objId] < 8) {
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
                while (D_800E98E0[omCurrentObj->objId] == 6) {
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
        }
        if (((u32)D_800E98E0[omCurrentObj->objId] >= 8)) {
            break;
        }
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/3.s")
#endif

#ifdef MIPS_TO_C
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
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s0_4;
    s32 var_v0;
    u32 temp_s0_10;
    u32 temp_s0_11;
    u32 temp_s0_12;
    u32 temp_s0_13;
    u32 temp_s0_14;
    u32 temp_s0_15;
    u32 temp_s0_2;
    u32 temp_s0_3;
    u32 temp_s0_4;
    u32 temp_s0_5;
    u32 temp_s0_6;
    u32 temp_s0_7;
    u32 temp_s0_8;
    u32 temp_s0_9;

    D_800E0D50[omCurrentObj->objId] = D_800E0D50[omCurrentObj->objId];
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = D_800B7138;
    D_800DF150[omCurrentObj->objId] = func_801DC788_ovl13;
    func_800B1F68(*(&gEntityGObjProcessArray5 + (omCurrentObj->objId * 4)), &D_800B1434);
    func_800B19F4(0x71, omCurrentObj->objId);
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
    temp_s5 = &D_800E98E0[D_800E0D50[omCurrentObj->objId]];
    while (1) {
loop_2:
        switch (D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
            case 0:
                D_800E8920[omCurrentObj->objId] = 0;
                D_800E0490[omCurrentObj->objId] = &D_801DAAB4;
                func_801A2ADC_ovl7(&D_801DAAB4);
                D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DADB0;
                D_800E3210[omCurrentObj->objId] = -2.0f;
                while (D_800E8920[omCurrentObj->objId] == 0) {
                    ohSleep(1);
                }
                D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 1;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                break;
            case 1:
                D_800E0490[omCurrentObj->objId] = &D_801DAAB4;
                func_801A2ADC_ovl7(&D_801DAAB4);
                D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DADD4;
                while (D_800E98E0[temp_s0] == 1) {
                    ohSleep(1);
                }
                for (var_s0 = 0xA; var_s0 > 0; var_s0--) {
                    D_800E64D0[omCurrentObj->objId] = var_s0 * (D_800E64D0[omCurrentObj->objId] * 0.1f);
                    ohSleep(1);
                }
                D_800E6690[omCurrentObj->objId] = 0.0f;
                D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
                D_800E6850[omCurrentObj->objId] = 65535.0f;
                break;
            case 2:
                D_800E8920[omCurrentObj->objId] = 0;
                D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
                func_801A2ADC_ovl7(&D_801DAAC8);
                D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
                D_800E3910[omCurrentObj->objId] = 0.0f;
                temp_f0 = D_800E3910[omCurrentObj->objId];
                D_800E3750[omCurrentObj->objId] = temp_f0;
                D_800E3590[omCurrentObj->objId] = temp_f0;
                D_800E33D0[omCurrentObj->objId] = temp_f0;
                D_800E3210[omCurrentObj->objId] = temp_f0;
                D_800E3050[omCurrentObj->objId] = temp_f0;
                D_800E3E50[omCurrentObj->objId] = 65535.0f;
                temp_f2 = D_800E3E50[omCurrentObj->objId];
                D_800E3C90[omCurrentObj->objId] = temp_f2;
                D_800E3AD0[omCurrentObj->objId] = temp_f2;
                play_sound(0x186);
                func_800FB914(4);
                ohSleep(0x14);
                D_800D7098.unk0 = 1;
                ohSleep(1);
                func_800AED80(D_800D6B10, D_801290D0);
                func_800FB914(5);
                ohSleep(0xC8);
                if (func_8019DA70_ovl7(D_800E0D50[omCurrentObj->objId]) > 0.0f) {
                    D_800E6A10[omCurrentObj->objId] = 1.0f;
                } else {
                    D_800E6A10[omCurrentObj->objId] = -1.0f;
                }
                D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.1f;
                D_800E6850[omCurrentObj->objId] = 2.0f;
                D_800E3210[omCurrentObj->objId] = 0.0f;
                D_800E3750[omCurrentObj->objId] = 0.1f;
                D_800E3C90[omCurrentObj->objId] = 2.0f;
                while (gEntitiesNextPosYArray[omCurrentObj->objId] < 1198.0f) {
                    f32 var_f20 = gEntitiesNextPosYArray[omCurrentObj->objId] - 599.0f;
                    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 599.0f) {
                        var_f20 = -(gEntitiesNextPosYArray[omCurrentObj->objId] - 599.0f);
                    }
                    if (var_f20 < 1.5f) {
                        D_800EA520[omCurrentObj->objId] = 1;
                    } else {
                        D_800EA520[omCurrentObj->objId] = 0;
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
                }
                func_800FB914(0);
                func_800B3520();
                D_800E98E0[temp_s0] = 3;
                D_800DFBD0[D_801290D0]->unk8->unk20 = -3;
                break;
            case 3:
                D_800EC9E4 = 2.0f;
                D_800EA6E0[omCurrentObj->objId] = 2.0f;
                if (D_800E98E0[temp_s0] == 3) {
                    do {
                        ohSleep(1);
                    } while (D_800E98E0[temp_s0] == 3);
                }
                break;
            case 4:
                D_800E6A10[omCurrentObj->objId] = 1.0f;
                D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
                func_801A2ADC_ovl7(&D_801DAAC8);
                D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
                D_800EC9E4 = 2.0f;
                D_800EA6E0[omCurrentObj->objId] = 2.0f;
                if (D_800E98E0[temp_s0] == 4) {
                    do {
                        temp_s0_12 = omCurrentObj->objId;
                        if ((D_800E9AA0[temp_s0_12] == NULL) && (D_800E7B20[D_800EBBE0[D_800E0D50[temp_s0_12]]] > 0.0f)) {
                            temp_v0 = random_soft_s32_range(3);
                            temp_v0_2 = func_801DDC18_ovl13(D_801E5B14_ovl13[temp_v0], D_801E5B24_ovl13[temp_v0], temp_v0 * 4);
                            if (temp_v0_2 != -1) {
                                switch (temp_v0) {  /* switch 1; irregular */
                                    case 0:         /* switch 1 */
                                    case 1:         /* switch 1 */
                                    case 2:         /* switch 1 */
                                        func_800F9974(&D_800E5F90[temp_v0_2], &D_800E6BD0[temp_v0_2], D_801E5B34_ovl13[random_soft_s32_range(2)]);
                                        gEntitiesNextPosYArray[temp_v0_2] = gEntitiesNextPosYArray[omCurrentObj->objId] + 320.0f;
                                        break;
                                    case 3:         /* switch 1 */
                                        D_800E8E60[temp_v0_2] = 1;
                                        temp_a0 = &D_800E8AE0[temp_v0_2];
                                        *temp_a0 |= 1;
                                        temp_v1 = &D_800E17D0[temp_v0_2];
                                        *temp_v1 = D_800E17D0[omCurrentObj->objId];
                                        while (*temp_v1 >= 6.2831855f) {
                                            *temp_v1 -= 6.2831855f;
                                        }
                                        while (*temp_v1 < 0.0f) {
                                            *temp_v1 += 6.2831855f;
                                        }
                                        temp_f22_2 = D_800E17D0[omCurrentObj->objId] + 1.5707964f;
                                        temp_f22_3 = temp_f22_2 + D_801E5B3C_ovl13[random_soft_s32_range(7)];
                                        if (cosf(temp_f22_3) == 0.0f) {
                                            var_f20_3 = 0.00001f;
                                        } else {
                                            var_f20_3 = cosf(temp_f22_3);
                                        }
                                        temp_f24 = -400.0f / var_f20_3;
                                        gEntitiesNextPosXArray[temp_v0_2] = (sinf(temp_f22_3) * temp_f24) + gEntitiesNextPosXArray[omCurrentObj->objId];
                                        gEntitiesNextPosZArray[temp_v0_2] = (cosf(temp_f22_3) * temp_f24) + gEntitiesNextPosZArray[omCurrentObj->objId];
                                        gEntitiesNextPosYArray[temp_v0_2] = gEntitiesNextPosYArray[omCurrentObj->objId] + 320.0f;
                                        gEntitiesAngleYArray[temp_v0_2] = D_800E17D0[omCurrentObj->objId] - 1.5707964f;
                                        break;
                                }
                            }
                        }
                        func_801DC8CC_ovl13(arg0);
                        ohSleep(1);
                    } while (D_800E98E0[temp_s0] == 4);
                }
                break;
            case 5:
                if (D_800E98E0[temp_s0] == 5) {
                    do {
                        func_801DC8CC_ovl13(arg0);
                        ohSleep(1);
                    } while (D_800E98E0[temp_s0] == 5);
                }
                break;
            case 6:
                D_800E0490[omCurrentObj->objId] = &D_801DAAC8;
                func_801A2ADC_ovl7(&D_801DAAC8);
                D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
                func_800B33F4();
                D_800EC9E4 = 0.0f;
                D_800EA6E0[omCurrentObj->objId] = D_800EC9E4;
                D_800E3210[omCurrentObj->objId] = 2.0f;
                temp_s0_13 = omCurrentObj->objId;
                var_s0_4 = temp_s0_13 * 4;
                while (gEntitiesNextPosYArray[temp_s0_13] < D_800D70D8.unk0) {
                    ohSleep(1);
                }
                *(D_800E3750 + var_s0_4) = *(D_800E3210 + var_s0_4) * -0.1f;
                ohSleep(0xA);
                D_800E98E0[temp_s0] = 7;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                temp_s0_15 = omCurrentObj->objId;
                D_800E3210[temp_s0_15] = D_800E3750[temp_s0_15];
                D_800E3C90[omCurrentObj->objId] = 65535.0f;
                D_800E98E0[temp_s0] = 7;
                break;
            case 7:
                while (D_800E98E0[temp_s0] == 7) {
                    ohSleep(1);
                }
                break;
        }
    }
    func_800AFA14();
    goto loop_1;
}
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/4.s")
#endif

// regalloc, potential jtbl reordering
#ifdef NON_MATCHING
void func_801DC788_ovl13(void) {
    ((s32*)D_800E9AA0)[omCurrentObj->objId]++;
    ((s32*)D_800E9AA0)[omCurrentObj->objId] %= 180;

    switch (D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
        case 0:
        case 1:
            func_801A0D74_ovl7();
            break;
        case 4:
            D_800DFBD0[D_801290D0][2]->pos.y -= D_800EA6E0[omCurrentObj->objId];
            if (D_800DFBD0[D_801290D0][2]->pos.y < -960.0f) {
                D_800DFBD0[D_801290D0][2]->pos.y += 480.0f;
            }
            break;
        case 2: case 3:
        case 6: case 7:
            break;
        case 5:
            D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 6;
            break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/5.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

s32 func_801DC8CC_ovl13(GObj *arg0) {
    f32 temp_f0;
    s32 *var_s2;
    s32 var_s0;
    s32 var_s1;
    s32 var_v0;
    s32 var_v1;

    var_v1 = -1;
    var_s2 = &D_800DD788;
    var_s0 = 0x1E;
    var_s1 = 0x78;
    do {
        if ((*var_s2 != -1) && (D_800E7730[var_s0] == 0)) {
            temp_f0 = *(D_800E7B20 + var_s1);
            if ((temp_f0 > 0.2f) && (temp_f0 < 9999.0f)) {
                if (*(D_800E83E0 + var_s1) != 1) {
                    if (omCurrentObj->objId == *(D_800E0D50 + var_s1)) {
                        var_v0 = func_801DCA40_ovl13(var_s0);
                        goto block_10;
                    }
                } else if (&D_801A4C0C == *(D_800DF150 + var_s1)) {
                    var_v0 = func_801DCA40_ovl13(var_s0);
block_10:
                    var_v1 = var_v0;
                }
            }
        }
        var_s0 += 1;
        var_s1 += 4;
        var_s2 += 4;
    } while (var_s0 != 0x3C);
    return var_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/6.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
? func_801DCA40_ovl13(GObj *arg0) {
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    u16 temp_v0;

    temp_v0 = D_800E77A0[arg0];
    switch (temp_v0) {                              /* irregular */
        default:
            return 0;
        case 27:
            temp_v0_2 = &D_800EA6E0[arg0];
            *temp_v0_2 -= D_800EA6E0[omCurrentObj->objId];
            /* fallthrough */
        case 25:
            temp_v0_3 = &D_800EA8A0[arg0];
            *temp_v0_3 -= D_800EA6E0[omCurrentObj->objId];
            /* fallthrough */
        case 33:
            temp_v0_4 = &gEntitiesNextPosYArray[arg0];
            *temp_v0_4 -= D_800EA6E0[omCurrentObj->objId];
            return 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/7.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801DCB28_ovl13(GObj *arg0) {
    s32 temp_s0;

    temp_s0 = D_800E0D50[omCurrentObj->objId];
    func_801A3280_ovl7();
    func_8019BB58_ovl7();
    D_800DEF90[omCurrentObj->objId] = NULL;
    D_800DF150[omCurrentObj->objId] = NULL;
    func_800B1F68(*(&gEntityGObjProcessArray5 + (omCurrentObj->objId * 4)), &D_800B1434);
    func_800B19F4(0x7D, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x28);
    D_800E98E0[omCurrentObj->objId] = 2;
    func_800AEDD0(D_800D6B10, temp_s0);
    func_800AA038(0x10412, 0, temp_s0);
    ohSleep(0x2A);
    func_800AA038(0x1041F, 0, temp_s0);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EBDA0[temp_s0] = -1;
    func_8019D958_ovl7(omCurrentObj->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/8.s")
#endif

void func_801DCC7C_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];

    temp_v0->unk80->unk18 = -800.0f;
    temp_v0->unk80->unk10 = 60.0f;
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B7138;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(4);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
}

void func_801DCDA8_ovl13(GObj *arg0) {
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], func_800B17B8);
    D_800EA520[omCurrentObj->objId] = 1;
    func_800A9864(0x10069, 0x23, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B72AC;
    D_800E9AA0[omCurrentObj->objId] = random_soft_s32_range(3);
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800D7154 = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 8;
}

// regalloc AGAIN!
#ifdef NON_MATCHING
void func_801DCE9C_ovl13(GObj *arg0) {
    func_8019BB58_ovl7();
    func_800B1F68(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800B19F4(0x71, omCurrentObj->objId);
    func_800AFBB4(0, omCurrentObj);
    D_800E98E0[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B6CF8;
    D_800DDFD0[omCurrentObj->objId] = 0xD;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18_ovl8;
    func_801A2ADC_ovl7(&D_801DAB18_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    gEntitiesPosZArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesPosZArray[omCurrentObj->objId];
    func_800B33F4();
    while (D_800E98E0[D_800E98E0[D_800E0D50[omCurrentObj->objId]]] != 2) {
        ohSleep(1);
    }
    func_800F9974(
        &D_800E5F90[omCurrentObj->objId],
        &D_800E6BD0[omCurrentObj->objId],
        gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId]
    );
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    ohSleep(0x258);
    D_800E98E0[omCurrentObj->objId] = 0;
    ohSleep(0x1E);
    func_8019D958_ovl7(omCurrentObj->objId);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/11.s")
#endif

void func_801DD148_ovl13(void) {
    D_800E8920[omCurrentObj->objId] = 1;
    func_801A0D74_ovl7();
}

#ifdef NON_MATCHING
void func_801DD184_ovl13(GObj *arg0) {
    func_800AED20(0.0f);
    func_800AECC0(D_800D6B10);
    D_800DDFD0[omCurrentObj->objId] = 0;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    D_800EA1A0[omCurrentObj->objId] = random_soft_s32_range(3);
    D_800E64D0[omCurrentObj->objId] = 160.0f;
    D_800E3210[omCurrentObj->objId] = 80.0f;
    ohSleep(1);

    // the pattern (more regalloc)
    D_800E64D0[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = 0.0f;
    func_800A9F98(0x10412, 3.0f);
    func_800AA018(0x10427);
    ohSleep(0x1E);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    ohSleep(0x30);
    while (D_800E98E0[D_800E0D50[omCurrentObj->objId]] == 0) {
        ohSleep(1);
    }
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/13.s")
#endif

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801DD46C_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    func_800B33F4();
    func_800AA154(0x10427);
    func_800AA154(0x10429);
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/15.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801DD550_ovl13(GObj *arg0) {
    struct DObj **temp_v0;
    u32 temp_v1;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0->unk5C, temp_v0->unk10, temp_v0->unk18);
    temp_v1 = omCurrentObj->objId;
    if (D_800E83E0[temp_v1] == 1) {
        gEntityFuncListIDArray[temp_v1] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/16.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

s32 *func_801DD614_ovl13(GObj *arg0) {
    GObj *temp_v1;
    s32 *temp_v0;
    s32 *temp_v0_2;
    s32 *var_v0;
    s32 temp_t1;
    s32 var_a0;
    s32 var_t2;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    u32 temp_a0_5;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAADC;
    func_801A2ADC_ovl7(&D_801DAADC);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DADF8;
    func_800B33F4();
    temp_v1 = omCurrentObj;
    D_800E3C90[temp_v1->objId] = 2.0f;
    temp_a0 = temp_v1->objId;
    D_800E64D0[temp_a0] = D_800E6A10[temp_a0] * -2.0f;
    temp_a0_2 = temp_v1->objId;
    D_800E64D0[D_800EBBE0[temp_a0_2]] = D_800E64D0[temp_a0_2];
    D_800EA360[temp_v1->objId] = 1;
    temp_a0_3 = temp_v1->objId;
    D_800E9E20[temp_a0_3] = D_800EA360[temp_a0_3];
    temp_a0_4 = temp_v1->objId;
    var_a0 = temp_a0_4 * 4;
    var_v0 = &D_800EA360[temp_a0_4];
    if (gEntityFuncListIDArray[temp_a0_4] == 2) {
        do {
            temp_v0 = D_800EA360 + var_a0;
            *temp_v0 += 1;
            temp_v0_2 = &D_800EA360[temp_v1->objId];
            temp_t1 = *temp_v0_2;
            var_t2 = temp_t1 & 1;
            if ((temp_t1 < 0) && (var_t2 != 0)) {
                var_t2 -= 2;
            }
            *temp_v0_2 = var_t2;
            if (D_800EA360[temp_v1->objId] != 0) {
                func_800AA018(0x1041D);
                D_800DF310[omCurrentObj->objId] = func_801DDADC_ovl13;
                var_v0 = func_800AF27C();
            } else {
                var_v0 = func_800AA864(0x1042A, 2);
            }
            temp_a0_5 = omCurrentObj->objId;
            var_a0 = temp_a0_5 * 4;
        } while (gEntityFuncListIDArray[temp_a0_5] == 2);
    }
    return var_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/17.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static f32 D_801E5B58_ovl13[8] = { 0.25f, 0.2f, 0.15f, 0.1f, -0.1f, -0.15f, -0.2f, -0.25f };

void func_801DD888_ovl13(GObj *arg0) {
    GObj *temp_a2;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f2;
    s32 *temp_a1;
    s32 var_v0;
    s32 var_v1;
    struct DObj **temp_v1_3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_4;

    temp_a2 = omCurrentObj;
    temp_v1 = temp_a2->objId;
    var_v1 = temp_v1 * 4;
    temp_a1 = &D_800E9E20[temp_v1];
    var_v0 = *temp_a1;
    if (var_v0 > 0) {
        *temp_a1 = var_v0 - 1;
        temp_v1_2 = temp_a2->objId;
        var_v1 = temp_v1_2 * 4;
        var_v0 = D_800E9E20[temp_v1_2];
    }
    if (var_v0 <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 0xF;
        var_v1 = omCurrentObj->objId * 4;
    }
    temp_f0 = gEntitiesNextPosYArray[*(D_800EBBE0 + var_v1)];
    temp_f2 = *(gEntitiesNextPosYArray + var_v1);
    temp_v0 = var_v1 + D_800E3750;
    if ((temp_f0 + 160.0f) < temp_f2) {
        temp_f0_2 = *temp_v0;
        if (temp_f0_2 < 0.0f) {
            *temp_v0 = --temp_f0_2;
        } else {
            *temp_v0 = -temp_f0_2;
        }
        goto block_13;
    }
    temp_v0_2 = var_v1 + D_800E3750;
    if (temp_f2 < (temp_f0 + 20.0f)) {
        temp_f0_3 = *temp_v0_2;
        if (temp_f0_3 < 0.0f) {
            *temp_v0_2 = -temp_f0_3;
        } else {
            *temp_v0_2 = temp_f0_3;
        }
block_13:
        var_v1 = temp_a2->objId * 4;
    }
    *(D_800E8920 + var_v1) = 0;
    func_801A0D74_ovl7(arg0);
    temp_v1_3 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v1_3->unk5C, temp_v1_3->unk10, temp_v1_3->unk18);
    temp_v1_4 = omCurrentObj->objId;
    if (D_800E83E0[temp_v1_4] == 1) {
        gEntityFuncListIDArray[temp_v1_4] = 7;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/18.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static s32 D_801E5B78_ovl13[6] = { 0x60, 0x61, 0x62, 0x60, 0x61, 0x62 };

void func_801DDADC_ovl13(GObj *arg0, s32 arg1, f32 arg2) {
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_a0;
    s32 temp_v0;

    if ((arg1 == 0) && (arg2 == 1)) {
        temp_v0 = random_soft_s32_range(3);
        temp_v1 = &D_800EA1A0[omCurrentObj->objId];
        temp_a0 = *temp_v1;
        if (temp_v0 == temp_a0) {
            *temp_v1 = temp_a0 + 3;
        } else if (D_801E5B78_ovl13[temp_a0] == D_801E5B78_ovl13[temp_v0]) {
            temp_v1_2 = &D_800EA1A0[omCurrentObj->objId];
            *temp_v1_2 = *temp_v1_2 + random_soft_s32_range(2) + 1;
            temp_v1_3 = &D_800EA1A0[omCurrentObj->objId];
            *temp_v1_3 = *temp_v1_3 % 3;
        } else {
            *temp_v1 = temp_v0;
        }
        play_sound(0x188);
        func_801DDC18_ovl13(D_801E5B78_ovl13[D_800EA1A0[omCurrentObj->objId]], 0, D_800EA1A0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/19.s")
#endif

s32 func_801DDC18_ovl13(void) {
    s32 track;

    track = func_8019DD78_ovl7();
    if (track != -1) {
        D_800E8E60[track] = 0;
    }
    return track;
}

void func_801DDC58_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8_ovl8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C_ovl8;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.1f;
    D_800E3750[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] * -0.1f;
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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static s32 D_801E5B90_ovl13[4] = { 5, 5, 6, 6 };

void func_801DDE54_ovl13(GObj *arg0) {
    s32 var_v1;
    struct EntityThing800E9AA0 **temp_a2;
    struct EntityThing800E9AA0 **var_a1_2;
    struct EntityThing800E9AA0 *var_a1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0;
    func_801A2ADC_ovl7(&D_801DAAF0);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
    func_800B33F4();
    func_800AA154(0x10423);
    func_800AA864(0x10427, 2);
    func_800AA154(0x10429);
    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_a2 = &D_800E9AA0[temp_v1];
    var_a1 = D_800E9AA0[temp_v1];
    switch (var_a1) {                               /* irregular */
        case 0:
            if (random_soft_s32_range(2) == 0) {
                D_800E9AA0[omCurrentObj->objId] = 1;
            } else {
                D_800E9AA0[omCurrentObj->objId] = 2;
            }
            temp_v1_2 = omCurrentObj->objId;
            var_v1 = temp_v1_2 * 4;
            var_a1_2 = &D_800E9AA0[temp_v1_2];
block_15:
            var_a1 = *var_a1_2;
            break;
        case 1:
            D_800E9AA0[temp_v1] = 2;
            temp_v1_3 = omCurrentObj->objId;
            var_v1 = temp_v1_3 * 4;
            var_a1_2 = &D_800E9AA0[temp_v1_3];
            goto block_15;
        case 2:
            if (random_soft_s32_range(2) == 0) {
                D_800E9AA0[omCurrentObj->objId] = 3;
            } else {
                D_800E9AA0[omCurrentObj->objId] = NULL;
            }
            temp_v1_4 = omCurrentObj->objId;
            var_v1 = temp_v1_4 * 4;
            var_a1_2 = &D_800E9AA0[temp_v1_4];
            goto block_15;
        case 3:
            D_800E9AA0[temp_v1] = NULL;
            temp_v1_5 = omCurrentObj->objId;
            var_v1 = temp_v1_5 * 4;
            var_a1_2 = &D_800E9AA0[temp_v1_5];
            goto block_15;
    }
    *(gEntityFuncListIDArray + var_v1) = D_801E5B90_ovl13[var_a1];
}
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/23.s")
#endif

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

// regalloc :'(
#ifdef NON_MATCHING
void func_801DE148_ovl13(GObj *arg0) {
    struct UnkStruct800E1B50 *sp3C = D_800E1B50[omCurrentObj->objId];
    u32 pad[2];
    f32 i;
    s32 rand;

    D_800DDFD0[omCurrentObj->objId] = 5;

    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93CC;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0_ovl8;
    func_801A2ADC_ovl7(&D_801DAAF0_ovl8);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800B33F4();

    // the pattern
    D_800EA8A0[omCurrentObj->objId] =
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    
    func_800AA154(0x10415);
    play_sound(0x184);
    func_800AA864(0x10416, 2);
    func_800AA154(0x10418);
    play_sound(0x187);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 12.0f;
    func_800AA154(0x1042A);
    func_800AA018(D_800E6A10[omCurrentObj->objId] == 1.0f ? 0x00010425 : 0x00010424);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.48f;
    ohSleep(0x19);

    // the pattern
    D_800E64D0[omCurrentObj->objId] =
    D_800E6690[omCurrentObj->objId] = 0.0f;
    
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AF27C();
    D_800DFBD0[omCurrentObj->objId][1]->angle.y = D_800E6A10[omCurrentObj->objId] * 1.5707964f;
    func_800AA018(0x10414);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800EAA60[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2;
    ohSleep(0xA);
    D_800EA8A0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 20.0f;
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    ohSleep(0x14);
    func_800AECC0(D_800D6B10 * 0.25f);
    rand = random_soft_s32_range(3);
    D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -(1.0f / D_801E5BAC_ovl13[rand]);
    D_800EAC20[omCurrentObj->objId] = 3.1415927f / (D_800E6A10[omCurrentObj->objId] * (D_801E5BAC_ovl13[rand] * 2.0f));
    D_800EAFA0[omCurrentObj->objId] = D_801E5BC4_ovl13[rand] / (D_800E6A10[omCurrentObj->objId] * -D_801E5BAC_ovl13[rand]);
    D_800E6690[omCurrentObj->objId] = -(1.0f / D_801E5BAC_ovl13[rand]) * D_801E5BA0_ovl13[rand] * D_800E6A10[omCurrentObj->objId];
    ohSleep((s32)D_801E5BAC_ovl13[rand]);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800EAFA0[omCurrentObj->objId] = -D_800EAFA0[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = (1.0f / D_801E5BAC_ovl13[rand]) * D_801E5BA0_ovl13[rand] * D_800E6A10[omCurrentObj->objId];
    ohSleep((s32)D_801E5BAC_ovl13[rand]);

    // the pattern
    D_800E64D0[omCurrentObj->objId] =
    D_800E6690[omCurrentObj->objId] = 0.0f;
    
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    func_800AECC0(D_800D6B10);
    play_sound(0x187);
    if ((gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 40.0f) < gEntitiesNextPosYArray[omCurrentObj->objId]) {
        D_800E3210[omCurrentObj->objId] = -2.0f;
    }
    D_800EA8A0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -20.0f;
    D_800EAA60[omCurrentObj->objId] = 0.0f;

    // the pattern
    D_800DFBD0[omCurrentObj->objId][2]->angle.z =
    D_800EAA60[omCurrentObj->objId] =
    D_800EAC20[omCurrentObj->objId] =
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    
    D_800DFBD0[omCurrentObj->objId][1]->angle.y = D_800E6A10[omCurrentObj->objId] * 1.5f * 3.1415927f;
    
    ohSleep(0x1E);
    func_800AA018(0x10420);
    D_800EAA60[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * -0.05f;
    D_800EADE0[omCurrentObj->objId] = -0.07853982f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.6f;
    ohSleep(0x14);
    D_800DFBD0[omCurrentObj->objId][2]->angle.x = -1.5707964f;

    // the pattern
    D_800EA8A0[omCurrentObj->objId] =
    D_800EAA60[omCurrentObj->objId] =
    D_800EAC20[omCurrentObj->objId] =
    D_800EADE0[omCurrentObj->objId] =
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    
    D_800E3210[omCurrentObj->objId] = 12.0f;
    while (gEntitiesNextPosYArray[omCurrentObj->objId] < (gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] + 400.0f)) {
        ohSleep(1);
    }
    D_800DFBD0[omCurrentObj->objId][1]->pos.x = 0.0f;

    // the pattern
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
    
    D_800E3C90[omCurrentObj->objId] = 65535.0f;
    sp3C->unk80->unk10 = 0.0f;
    D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
    D_800E5F90[omCurrentObj->objId] = D_800E5F90[D_800EBBE0[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800EBBE0[omCurrentObj->objId]];
    func_800F9974(
        &D_800E5F90[omCurrentObj->objId],
        &D_800E6BD0[omCurrentObj->objId],
        D_801E5BB8_ovl13[random_soft_s32_range(3)] * D_800E6A10[omCurrentObj->objId]
    );
    
    D_800DFBD0[omCurrentObj->objId][1]->angle.y = D_800E6A10[omCurrentObj->objId] * -1.5707964f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.x = 1.5707964f;
    for (i = 0.0f; i < 60.0f; i += 2.0f) {
        sp3C->unk80->unk10 = i;
        ohSleep(1);
    }
    sp3C->unk80->unk10 = 60.0f;
    func_800AA018(0x10419);
    
    // the pattern
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E3210[omCurrentObj->objId] = -12.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    play_sound(0x187);
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = 1;
    func_800A9F98(0x1041A, 4.0f);
    D_800DF310[omCurrentObj->objId] = func_801DF588_ovl13;
    func_800B33F4();
    func_800FB914(1);
    play_sound(0x185);
    func_800BB468(0, 0);
    func_801ACC34_ovl7(0x1C, 0);
    func_801ACC34_ovl7(0x1C, 1);
    while (D_800E9FE0[omCurrentObj->objId].as_s32 != 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800EAC20[omCurrentObj->objId] = -(D_800DFBD0[omCurrentObj->objId][1]->angle.y / 20.0f);
    D_800EADE0[omCurrentObj->objId] = -(D_800DFBD0[omCurrentObj->objId][2]->angle.x / 20.0f);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.2f;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(0x14);

    // the pattern
    D_800DFBD0[omCurrentObj->objId][2]->angle.x =
    D_800DFBD0[omCurrentObj->objId][1]->angle.y =
    D_800EAC20[omCurrentObj->objId] =
    D_800EADE0[omCurrentObj->objId] = 0.0f;

    
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -4.0f;
    
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    func_800AF27C();
    func_800AA018(0x10427);
    while (ABS(func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId])) < 200.0f) {
        ohSleep(1);
    }
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.1f;
    ohSleep(0xA);
    func_800B3520();
    func_800AF27C();
    
    D_800DFBD0[omCurrentObj->objId][1]->pos.x =
    D_800DFBD0[omCurrentObj->objId][1]->pos.y =
    D_800DFBD0[omCurrentObj->objId][1]->pos.z = 0.0f;
    
    D_800DFBD0[omCurrentObj->objId][2]->pos.x =
    D_800DFBD0[omCurrentObj->objId][2]->pos.y =
    D_800DFBD0[omCurrentObj->objId][2]->pos.z = 0.0f;

    D_800DFBD0[omCurrentObj->objId][1]->angle.x =
    D_800DFBD0[omCurrentObj->objId][1]->angle.y =
    D_800DFBD0[omCurrentObj->objId][1]->angle.z = 0.0f;
    
    D_800DFBD0[omCurrentObj->objId][2]->angle.x =
    D_800DFBD0[omCurrentObj->objId][2]->angle.y =
    D_800DFBD0[omCurrentObj->objId][2]->angle.z = 0.0f;


    // the pattern
    D_800EA8A0[omCurrentObj->objId] =
    D_800EAA60[omCurrentObj->objId] =
    D_800EAC20[omCurrentObj->objId] =
    D_800EADE0[omCurrentObj->objId] =
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/25.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801DF294_ovl13(GObj *arg0) {
    GObj *var_a3;
    f32 *temp_a1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f0;
    s32 temp_v0_4;
    s32 var_a2;
    struct DObj **temp_v0_3;
    struct DObj **temp_v0_6;
    struct DObj **temp_v0_7;
    u32 temp_a2;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_5;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;

    temp_a2 = omCurrentObj->objId;
    temp_a1 = &D_800EA8A0[temp_a2];
    temp_f0 = *temp_a1 + D_800EAA60[temp_a2];
    *temp_a1 = temp_f0;
    temp_v0 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_v0->unk1C = temp_v0->unk1C + temp_f0;
    temp_a2_2 = omCurrentObj->objId;
    temp_v0_2 = D_800DFBD0[temp_a2_2]->unk4;
    temp_v0_2->unk34 = temp_v0_2->unk34 + D_800EAC20[temp_a2_2];
    temp_a2_3 = omCurrentObj->objId;
    temp_v1 = D_800DFBD0[temp_a2_3]->unk8;
    temp_v1->unk30 = temp_v1->unk30 + D_800EADE0[temp_a2_3];
    temp_a2_4 = omCurrentObj->objId;
    temp_v1_2 = D_800DFBD0[temp_a2_4]->unk8;
    temp_v1_2->unk38 = temp_v1_2->unk38 + D_800EAFA0[temp_a2_4];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0, temp_a1, temp_a2_4 * 4, omCurrentObj);
    var_a3 = omCurrentObj;
    temp_a2_5 = var_a3->objId;
    var_a2 = temp_a2_5 * 4;
    temp_v0_3 = D_800DFBD0[temp_a2_5];
    temp_f2 = temp_v0_3->unk4->unk1C;
    if (temp_f2 < 0.0f) {
        var_f0 = -temp_f2;
    } else {
        var_f0 = temp_f2;
    }
    if (var_f0 < 80.0f) {
        func_801E3A84_ovl13(temp_v0_3->unk5C, temp_v0_3->unk10, temp_v0_3->unk18, var_a3);
        var_a3 = omCurrentObj;
        var_a2 = var_a3->objId * 4;
    }
    if (*(D_800E83E0 + var_a2) == 1) {
        temp_v0_4 = *(D_800DFF50 + var_a2);
        if ((temp_v0_4 == 0x10425) || (temp_v0_4 == 0x10424)) {
            temp_v0_5 = *(D_800DFBD0 + var_a2);
            temp_v0_5->unk8->unk30 = temp_v0_5->unkC->unk30;
            temp_v0_6 = D_800DFBD0[omCurrentObj->objId];
            temp_v0_6->unk4->unk34 = temp_v0_6->unkC->unk34;
            temp_v0_7 = D_800DFBD0[omCurrentObj->objId];
            temp_v0_7->unk8->unk38 = temp_v0_7->unkC->unk38;
            D_800DFBD0[omCurrentObj->objId]->unkC->unk38 = 0.0f;
            temp_v1_3 = D_800DFBD0[omCurrentObj->objId]->unkC;
            temp_f0_2 = temp_v1_3->unk38;
            temp_v1_3->unk34 = temp_f0_2;
            D_800DFBD0[omCurrentObj->objId]->unkC->unk30 = temp_f0_2;
            var_a3 = omCurrentObj;
            var_a2 = var_a3->objId * 4;
        }
        *(gEntityFuncListIDArray + var_a2) = 7;
        assign_new_process_entry(gEntityGObjProcessArray[var_a3->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/26.s")
#endif

void func_801DF588_ovl13(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && ((s32)arg2 == 1)) {
        D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801DF5D0_ovl13(GObj *arg0) {
    f32 sp68;
    f32 sp64;
    s32 sp60;
    ? sp54;
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
    f32 temp_f12_5;
    f32 temp_f12_6;
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
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;

    D_800DDFD0[omCurrentObj->objId] = 6;
    sp1C->unk8C = &D_801D93CC;
    D_800E0490[omCurrentObj->objId] = &D_801DAAF0;
    func_801A2ADC_ovl7(&D_801DAAF0, omCurrentObj);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAD8C;
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
        if ((var_t3 * 4.0f) != 0.0f) {
            D_800E3750[temp_v1] = -0.1f;
        } else {
            D_800E3750[temp_v1] = 0.1f;
        }
        ohSleep(0xA);
        temp_v1_2 = omCurrentObj->objId;
        var_v1 = temp_v1_2 * 4;
        temp_f0_2 = gEntitiesNextPosYArray[temp_v1_2];
        temp_f12_2 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1_2]] + 40.0f;
        if (temp_f0_2 < temp_f12_2) {
            var_f2_2 = -(temp_f0_2 - temp_f12_2);
        } else {
            var_f2_2 = temp_f0_2 - temp_f12_2;
        }
        if (var_f2_2 > 18.0f) {
            do {
                ohSleep(1);
                temp_v1_3 = omCurrentObj->objId;
                var_v1 = temp_v1_3 * 4;
                temp_f0_3 = gEntitiesNextPosYArray[temp_v1_3];
                temp_f12_3 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1_3]] + 40.0f;
                if (temp_f0_3 < temp_f12_3) {
                    var_f2_3 = -(temp_f0_3 - temp_f12_3);
                } else {
                    var_f2_3 = temp_f0_3 - temp_f12_3;
                }
            } while (var_f2_3 > 18.0f);
        }
        *(D_800E3750 + var_v1) = *(D_800E3210 + var_v1) * -0.1f;
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
        ohSleep(var_f2_4);
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
    func_800AA154(0x1042B, omCurrentObj);
    utilGetTransformSRT(&sp54, D_800DFBD0[omCurrentObj->objId]->unk4);
    temp_v1_7 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_v1_7], &D_800E6BD0[temp_v1_7], D_800E6A10[temp_v1_7] * D_800DFBD0[temp_v1_7]->unk4->unk24);
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp58;
    temp_v1_8 = omCurrentObj->objId;
    temp_f0_4 = D_800EB320[temp_v1_8];
    temp_f12_4 = D_800EA6E0[temp_v1_8];
    if (temp_f0_4 < temp_f12_4) {
        D_800E3210[temp_v1_8] = --(temp_f0_4 - temp_f12_4);
    } else {
        D_800E3210[temp_v1_8] = -(temp_f0_4 - temp_f12_4);
    }
    temp_v1_9 = omCurrentObj->objId;
    temp_f0_5 = D_800EB320[temp_v1_9];
    temp_f12_5 = D_800EA6E0[temp_v1_9];
    if (temp_f0_5 < temp_f12_5) {
        var_f14 = temp_f0_5 - temp_f12_5;
        sp4C = -var_f14;
    } else {
        var_f14 = temp_f0_5 - temp_f12_5;
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
        if (temp_f0_5 < temp_f12_5) {
            var_f2_6 = -var_f14;
        } else {
            var_f2_6 = var_f14;
        }
        if (temp_f16 < temp_f0_5) {
            var_f0 = -var_f18;
        } else {
            var_f0 = var_f18;
        }
        D_800E3750[temp_v1_9] = --(var_f2_6 - var_f0);
    } else {
        if (temp_f0_5 < temp_f12_5) {
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
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    temp_v0 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f2_2 = temp_v0->unk24;
    temp_v0->unk20 = temp_f2_2;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk1C = temp_f2_2;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8920[omCurrentObj->objId] == 0) {
        do {
            ohSleep(1);
        } while (D_800E8920[omCurrentObj->objId] == 0);
    }
    func_800AECC0(D_800D6B10);
    func_800A9F98(0x1041C, 0x40400000);
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
    ohSleep(0x12);
    D_800EADE0[omCurrentObj->objId] = -0.17453294f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    temp_v1_10 = omCurrentObj->objId;
    D_800E6690[temp_v1_10] = D_800E6A10[temp_v1_10] * 0.4f;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(3);
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    ohSleep(7);
    D_800EADE0[omCurrentObj->objId] = 0.05235988f;
    ohSleep(0xA);
    D_800EADE0[omCurrentObj->objId] = 0.0f;
    temp_v1_11 = omCurrentObj->objId;
    D_800DFBD0[temp_v1_11]->unk8->unk30 = D_800EADE0[temp_v1_11];
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
    func_800AA154(0x1042D, omCurrentObj);
    utilGetTransformSRT(&sp54, D_800DFBD0[omCurrentObj->objId]->unk4);
    temp_v1_16 = omCurrentObj->objId;
    func_800F9974(&D_800E5F90[temp_v1_16], &D_800E6BD0[temp_v1_16], D_800E6A10[temp_v1_16] * D_800DFBD0[temp_v1_16]->unk4->unk24);
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp58;
    temp_v1_17 = omCurrentObj->objId;
    temp_f16_2 = D_800EB160[temp_v1_17];
    temp_f0_6 = D_800EB320[temp_v1_17];
    if (temp_f16_2 < temp_f0_6) {
        D_800E3210[temp_v1_17] = --(temp_f16_2 - temp_f0_6);
    } else {
        D_800E3210[temp_v1_17] = -(temp_f16_2 - temp_f0_6);
    }
    temp_v1_18 = omCurrentObj->objId;
    temp_f0_7 = D_800EB320[temp_v1_18];
    temp_f12_6 = D_800EA6E0[temp_v1_18];
    if (temp_f0_7 < temp_f12_6) {
        var_f14_2 = temp_f0_7 - temp_f12_6;
        sp4C = -var_f14_2;
    } else {
        var_f14_2 = temp_f0_7 - temp_f12_6;
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
        if (temp_f0_7 < temp_f12_6) {
            var_f2_9 = -var_f14_2;
        } else {
            var_f2_9 = var_f14_2;
        }
        if (temp_f16_3 < temp_f0_7) {
            var_f0_3 = -var_f18_2;
        } else {
            var_f0_3 = var_f18_2;
        }
        D_800E3750[temp_v1_18] = --(var_f2_9 - var_f0_3);
    } else {
        if (temp_f0_7 < temp_f12_6) {
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
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    temp_v0_2 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f2_4 = temp_v0_2->unk24;
    temp_v0_2->unk20 = temp_f2_4;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk1C = temp_f2_4;
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
    (*(D_800DFBD0 + var_v1_2))->unk4->unk38 = 0.0f;
    temp_v0_3 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f2_5 = temp_v0_3->unk38;
    temp_v0_3->unk34 = temp_f2_5;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk30 = temp_f2_5;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk38 = 0.0f;
    temp_a0 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_f2_6 = temp_a0->unk38;
    temp_a0->unk34 = temp_f2_6;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk30 = temp_f2_6;
    temp_a1 = &D_800E6A10[omCurrentObj->objId];
    *temp_a1 = -*temp_a1;
    func_800AECC0(D_800D6B10);
    func_800A9F98(0x1041C, 0x40400000);
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
    ohSleep(0x12);
    D_800E3210[omCurrentObj->objId] = 8.0f;
    temp_v1_21 = omCurrentObj->objId;
    D_800E6690[temp_v1_21] = D_800E6A10[temp_v1_21] * -0.20000000298023224;
    D_800E3750[omCurrentObj->objId] = -0.4f;
    ohSleep(0x14);
    temp_v1_22 = omCurrentObj->objId;
    D_800E64D0[temp_v1_22] = D_800E6A10[temp_v1_22] * -4.0f;
    D_800E3210[omCurrentObj->objId] = 0.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (func_8019DA70_ovl7(D_800EBBE0[omCurrentObj->objId], omCurrentObj) < 0.0f) {
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
    ohSleep(0xA);
    func_800B3520();
    func_800AF27C();
    func_800AA154(0x10423);
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    temp_v0_4 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f2_7 = temp_v0_4->unk24;
    temp_v0_4->unk20 = temp_f2_7;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk1C = temp_f2_7;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk24 = 0.0f;
    temp_a0_2 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_f2_8 = temp_a0_2->unk24;
    temp_a0_2->unk20 = temp_f2_8;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk1C = temp_f2_8;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk38 = 0.0f;
    temp_v0_5 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f2_9 = temp_v0_5->unk38;
    temp_v0_5->unk34 = temp_f2_9;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk30 = temp_f2_9;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk38 = 0.0f;
    temp_a0_3 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_f2_10 = temp_a0_3->unk38;
    temp_a0_3->unk34 = temp_f2_10;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk30 = temp_f2_10;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_v1_24 = omCurrentObj->objId;
    temp_f0_8 = D_800EAFA0[temp_v1_24];
    D_800EADE0[temp_v1_24] = temp_f0_8;
    D_800EAC20[omCurrentObj->objId] = temp_f0_8;
    D_800EAA60[omCurrentObj->objId] = temp_f0_8;
    D_800EA8A0[omCurrentObj->objId] = temp_f0_8;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/28.s")
#endif

void func_801E0928_ovl13(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] = D_800EB320[omCurrentObj->objId];
    D_800EB320[omCurrentObj->objId] = D_800EB160[omCurrentObj->objId];
    D_800EB160[omCurrentObj->objId] = D_800DFBD0[omCurrentObj->objId][1]->pos.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.x += D_800EADE0[omCurrentObj->objId];
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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static f32 D_801E5D60_ovl13[2] = { 65535.0f, 65535.0f }; /* const */

void func_801E0A90_ovl13(GObj *arg0) {
    f32 sp44;
    GObj *temp_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 var_v1;
    struct UnkStruct800E1B50 *temp_s4;
    u32 temp_v1_10;
    u32 temp_v1_11;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    void *temp_v0;
    void *temp_v1;

    temp_s4 = D_800E1B50[omCurrentObj->objId];
    D_800EBF60[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 5);
    D_800E98E0[D_800EBF60[omCurrentObj->objId]] = 1;
    D_800D709C = 0;
    D_800DEF90[omCurrentObj->objId] = D_800B7790;
    utilGetTransformSRT(&sp44, D_800DFBD0[omCurrentObj->objId]->unk4, D_800DFBD0);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp44;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp48;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp4C;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    temp_v0 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_f0 = temp_v0->unk24;
    temp_v0->unk20 = temp_f0;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk1C = temp_f0;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk24 = 0.0f;
    temp_v1 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_f0_2 = temp_v1->unk24;
    temp_v1->unk20 = temp_f0_2;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk1C = temp_f0_2;
    temp_s4->unk80->unk10 = 60.0f;
    func_800AED20(0.0f);
    func_800AECC0(D_800D6B10 * 0.5f);
    D_800DDFD0[omCurrentObj->objId] = 7;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB18;
    func_801A2ADC_ovl7(&D_801DAB18);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v1_2 = omCurrentObj->objId;
    D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
    D_800E6850[omCurrentObj->objId] = *D_801E5D60_ovl13;
    D_800E3590[omCurrentObj->objId] = 0.0f;
    temp_v1_3 = omCurrentObj->objId;
    D_800E3050[temp_v1_3] = D_800E3590[temp_v1_3];
    D_800E3AD0[omCurrentObj->objId] = *D_801E5D60_ovl13;
    D_800E33D0[omCurrentObj->objId] = 0.0f;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3E50[omCurrentObj->objId] = *D_801E5D60_ovl13;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = *D_801E5D60_ovl13;
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[omCurrentObj->objId]);
    }
    play_sound(0x1E7);
    func_800BB468(2, 0);
    temp_v1_4 = omCurrentObj->objId;
    func_800FD754(2, gEntitiesNextPosXArray[temp_v1_4], gEntitiesNextPosYArray[temp_v1_4], gEntitiesNextPosZArray[temp_v1_4]);
    temp_v1_5 = omCurrentObj->objId;
    func_800FD754(4, gEntitiesNextPosXArray[temp_v1_5], gEntitiesNextPosYArray[temp_v1_5], gEntitiesNextPosZArray[temp_v1_5]);
    func_801E37E8_ovl13(arg0);
    D_800D7154 = 0;
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    temp_v1_6 = omCurrentObj->objId;
    temp_f0_3 = D_800EAFA0[temp_v1_6];
    D_800EADE0[temp_v1_6] = temp_f0_3;
    D_800EAC20[omCurrentObj->objId] = temp_f0_3;
    func_800AA018(0x10427);
    temp_s0 = omCurrentObj;
    D_800E3750[temp_s0->objId] = -0.2f;
    D_800E3C90[temp_s0->objId] = 2.0f;
    D_800E6690[temp_s0->objId] = 0.0f;
    temp_v1_7 = temp_s0->objId;
    D_800E64D0[temp_v1_7] = D_800E6690[temp_v1_7];
    D_800E6850[temp_s0->objId] = 65535.0f;
    D_800EAFA0[temp_s0->objId] = 0.017453292f;
    temp_v1_8 = temp_s0->objId;
    var_v1 = temp_v1_8 * 4;
    if (D_800E8920[temp_v1_8] == 0) {
        do {
            ohSleep(1);
            temp_v1_9 = omCurrentObj->objId;
            var_v1 = temp_v1_9 * 4;
        } while (D_800E8920[temp_v1_9] == 0);
    }
    *(D_800E3750 + var_v1) = 0.0f;
    temp_v1_10 = temp_s0->objId;
    D_800E3210[temp_v1_10] = D_800E3750[temp_v1_10];
    D_800E3C90[temp_s0->objId] = 65535.0f;
    func_800FB914(2);
    D_800EAFA0[omCurrentObj->objId] = 0.0f;
    D_800D70D8.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_800D70D8.unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800D709C = 1;
    ohSleep(0x14);
    D_800E98E0[D_800E0D50[omCurrentObj->objId]] = 2;
    if (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0) {
        do {
            ohSleep(1);
            temp_v1_11 = omCurrentObj->objId;
            gEntitiesNextPosYArray[temp_v1_11] = gEntitiesNextPosYArray[D_800EBF60[temp_v1_11]];
        } while (D_800E98E0[D_800EBF60[omCurrentObj->objId]] != 0);
    }
    func_800AFA14();
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/30.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E11D0_ovl13(GObj *arg0) {
    struct DObj **temp_v1_3;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    void *temp_a1;
    void *temp_v1;
    void *temp_v1_2;

    temp_v1 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_v1->unk30 = temp_v1->unk30 + D_800EADE0[omCurrentObj->objId];
    temp_a1 = D_800DFBD0[omCurrentObj->objId]->unk4;
    temp_a1->unk34 = temp_a1->unk34 + D_800EAC20[omCurrentObj->objId];
    temp_v1_2 = D_800DFBD0[omCurrentObj->objId]->unk8;
    temp_v1_2->unk38 = temp_v1_2->unk38 + D_800EAFA0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0);
    if (D_800E3210[omCurrentObj->objId] != 0.0f) {
        temp_v1_3 = D_800DFBD0[omCurrentObj->objId];
        func_801E3A84_ovl13(temp_v1_3->unk5C, temp_v1_3->unk10, temp_v1_3->unk18, &omCurrentObj);
    }
    func_801E3958_ovl13(arg0);
    if (D_800D709C != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_800D70D8.unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_800D70D8.unk8;
    }
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/31.s")
#endif

void func_801E135C_ovl13(GObj *arg0) {
    func_800AED20(0.0f);
    func_800AECC0(D_800D6B10);
    D_800DDFD0[omCurrentObj->objId] = 8;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D9384_ovl8;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C_ovl8;
    func_800B33F4();
    D_800DFBD0[omCurrentObj->objId][1]->pos.z = 0.0f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.x = -1.5707964f;
    D_800DFBD0[omCurrentObj->objId][1]->angle.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.z = 0.0f;
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
    D_800DFBD0[omCurrentObj->objId][1]->pos.z = D_800EAC20[omCurrentObj->objId];
    D_800DFBD0[omCurrentObj->objId][1]->angle.y = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId][2]->angle.x = -1.5707964f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.1f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 10;
}

void func_801E185C_ovl13(GObj *arg0) {
    s32 i;
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

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

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static f32 D_801E5B58_ovl13[8] = { 0.25f, 0.2f, 0.15f, 0.1f, -0.1f, -0.15f, -0.2f, -0.25f };

void func_801E19AC_ovl13(GObj *arg0) {
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    s32 *temp_a0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    struct DObj **temp_v0_7;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    void *temp_v0;
    void *var_v0;

    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_f0 = D_800E64D0[temp_v1];
    if (temp_f0 != 0.0f) {
        if (temp_f0 > 0.0f) {
            var_f2 = 180.0f;
        } else {
            var_f2 = -180.0f;
        }
        D_800EAC20[temp_v1] = 3.1415927f / var_f2;
        var_v1 = omCurrentObj->objId * 4;
    }
    temp_v0 = (*(D_800DFBD0 + var_v1))->unk4;
    temp_v0->unk34 = temp_v0->unk34 + *(D_800EAC20 + var_v1);
    temp_v1_2 = omCurrentObj->objId;
    var_v1_2 = temp_v1_2 * 4;
    var_v0 = D_800DFBD0[temp_v1_2]->unk4;
    var_f0 = var_v0->unk34;
    if (var_f0 > 3.926991f) {
        var_v0->unk34 = 3.926991f;
        temp_v1_3 = omCurrentObj->objId;
        var_v1_2 = temp_v1_3 * 4;
        var_v0 = D_800DFBD0[temp_v1_3]->unk4;
        var_f0 = var_v0->unk34;
    }
    if (var_f0 < 2.3561945f) {
        var_v0->unk34 = 2.3561945f;
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_v0_2 = var_v1_2 + D_800E6690;
    temp_f0_2 = *temp_v0_2;
    if (temp_f0_2 < 0.0f) {
        if (*(D_800E64D0 + var_v1_2) <= -4.0f) {
            if (temp_f0_2 < 0.0f) {
                *temp_v0_2 = -temp_f0_2;
            } else {
                *temp_v0_2 = temp_f0_2;
            }
            goto block_18;
        }
    } else if (*(D_800E64D0 + var_v1_2) >= 4.0f) {
        if (temp_f0_2 < 0.0f) {
            *temp_v0_2 = --temp_f0_2;
        } else {
            *temp_v0_2 = -temp_f0_2;
        }
block_18:
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_a0 = var_v1_2 + D_800E9E20;
    var_v0_2 = *temp_a0;
    if (var_v0_2 > 0) {
        *temp_a0 = var_v0_2 - 1;
        temp_v1_4 = omCurrentObj->objId;
        var_v1_2 = temp_v1_4 * 4;
        var_v0_2 = D_800E9E20[temp_v1_4];
    }
    if (var_v0_2 <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 0xF;
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_f0_3 = gEntitiesNextPosYArray[*(D_800EBBE0 + var_v1_2)];
    temp_f2 = *(gEntitiesNextPosYArray + var_v1_2);
    temp_v0_3 = var_v1_2 + D_800E3750;
    if ((temp_f0_3 + 40.0f) < temp_f2) {
        temp_f0_4 = *temp_v0_3;
        if (temp_f0_4 < 0.0f) {
            *temp_v0_3 = --temp_f0_4;
        } else {
            *temp_v0_3 = -temp_f0_4;
        }
        goto block_32;
    }
    temp_v0_4 = var_v1_2 + D_800E3750;
    if (temp_f2 < (temp_f0_3 - 80.0f)) {
        temp_f0_5 = *temp_v0_4;
        if (temp_f0_5 < 0.0f) {
            *temp_v0_4 = -temp_f0_5;
        } else {
            *temp_v0_4 = temp_f0_5;
        }
block_32:
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_f0_6 = func_8019DA70_ovl7(*(D_800E0D50 + var_v1_2));
    if (temp_f0_6 < 0.0f) {
        var_f2_2 = -temp_f0_6;
    } else {
        var_f2_2 = temp_f0_6;
    }
    if (var_f2_2 > 120.0f) {
        if (temp_f0_6 > 0.0f) {
            temp_v0_5 = &D_800E6690[omCurrentObj->objId];
            temp_f0_7 = *temp_v0_5;
            if (temp_f0_7 < 0.0f) {
                *temp_v0_5 = -temp_f0_7;
            } else {
                *temp_v0_5 = temp_f0_7;
            }
        } else {
            temp_v0_6 = &D_800E6690[omCurrentObj->objId];
            temp_f0_8 = *temp_v0_6;
            if (temp_f0_8 < 0.0f) {
                *temp_v0_6 = --temp_f0_8;
            } else {
                *temp_v0_6 = -temp_f0_8;
            }
        }
    }
    temp_v0_7 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(0.0f, temp_v0_7->unk5C, temp_v0_7->unk10, temp_v0_7->unk18, &omCurrentObj);
    temp_v1_5 = omCurrentObj->objId;
    if (D_800E83E0[temp_v1_5] == 1) {
        gEntityFuncListIDArray[temp_v1_5] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/36.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
void func_801E1ED8_ovl13(GObj *arg0) {
    f32 *temp_v1;

    D_800E8920[omCurrentObj->objId] = 0;
    temp_v1 = &D_800E64D0[omCurrentObj->objId];
    *temp_v1 = -*temp_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/37.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E1F1C_ovl13(GObj *arg0) {
    s32 var_v1;
    struct EntityThing800E9AA0 **temp_a1;
    struct EntityThing800E9AA0 **var_a2_2;
    struct EntityThing800E9AA0 *var_a2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;

    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_a1 = &D_800E9AA0[temp_v1];
    var_a2 = *temp_a1;
    switch (var_a2) {                               /* irregular */
        case 0:
            *temp_a1 = 1;
            temp_v1_2 = omCurrentObj->objId;
            var_v1 = temp_v1_2 * 4;
            var_a2_2 = &D_800E9AA0[temp_v1_2];
block_10:
            var_a2 = *var_a2_2;
            break;
        case 1:
            if (random_soft_s32_range(2) == 0) {
                D_800E9AA0[omCurrentObj->objId] = NULL;
            } else {
                D_800E9AA0[omCurrentObj->objId] = 2;
            }
            temp_v1_3 = omCurrentObj->objId;
            var_v1 = temp_v1_3 * 4;
            var_a2_2 = &D_800E9AA0[temp_v1_3];
            goto block_10;
        case 2:
            *temp_a1 = NULL;
            temp_v1_4 = omCurrentObj->objId;
            var_v1 = temp_v1_4 * 4;
            var_a2_2 = &D_800E9AA0[temp_v1_4];
            goto block_10;
    }
    *(gEntityFuncListIDArray + var_v1) = *(&D_801E5BF0_ovl13 + (var_a2 * 4));
}
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/38.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E2034_ovl13(GObj *arg0) {
    GObj *temp_v1;
    f32 *temp_v0_9;
    f32 var_f0;
    s32 var_v0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;

    D_800DDFD0[omCurrentObj->objId] = 0xA;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    D_800EA360[omCurrentObj->objId] = 1;
    func_800AA018(0x10426);
    D_800E3750[omCurrentObj->objId] = -0.1f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    temp_v0 = omCurrentObj->objId;
    D_800E6690[temp_v0] = D_800E64D0[temp_v0] * -0.1f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v0_2 = omCurrentObj->objId;
    D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    temp_v0_3 = omCurrentObj->objId;
    if ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_3]] - 260.0f) < gEntitiesNextPosYArray[temp_v0_3]) {
        do {
            ohSleep(1);
            temp_v0_4 = omCurrentObj->objId;
        } while ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_4]] - 260.0f) < gEntitiesNextPosYArray[temp_v0_4]);
    }
    play_sound(0x1A1);
    D_800EA360[omCurrentObj->objId] = 0;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk34 = 3.1415927f;
    if (random_soft_s32_range(2) != 0) {
        var_f0 = 18.0f;
    } else {
        var_f0 = -18.0f;
    }
    D_800EAC20[omCurrentObj->objId] = 3.1415927f / var_f0;
    D_800E3210[omCurrentObj->objId] = 10.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk30 = -1.5707964f;
    temp_v1 = omCurrentObj;
    temp_v0_5 = temp_v1->objId;
    var_v0 = temp_v0_5 * 4;
    if (gEntitiesNextPosYArray[temp_v0_5] < (gEntitiesNextPosYArray[D_800EBBE0[temp_v0_5]] + 500.0f)) {
        do {
            ohSleep(1);
            temp_v0_6 = omCurrentObj->objId;
            var_v0 = temp_v0_6 * 4;
        } while (gEntitiesNextPosYArray[temp_v0_6] < (gEntitiesNextPosYArray[D_800EBBE0[temp_v0_6]] + 500.0f));
    }
    *(D_800EA360 + var_v0) = 1;
    D_800DFBD0[temp_v1->objId]->unk4->unk24 = -1000.0f;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk30 = 1.5707964f;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk34 = 3.1415927f;
    D_800EAC20[omCurrentObj->objId] = 0.0f;
    D_800E3210[omCurrentObj->objId] = -16.0f;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    D_800E3C90[omCurrentObj->objId] = 16.0f;
    temp_v0_7 = omCurrentObj->objId;
    if ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_7]] - 680.0f) < gEntitiesNextPosYArray[temp_v0_7]) {
        do {
            ohSleep(1);
            temp_v0_8 = omCurrentObj->objId;
        } while ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_8]] - 680.0f) < gEntitiesNextPosYArray[temp_v0_8]);
    }
    func_800B33F4();
    temp_v0_9 = &gEntitiesNextPosYArray[omCurrentObj->objId];
    *temp_v0_9 += 440.0f;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk24 = 0.0f;
    D_800DFBD0[omCurrentObj->objId]->unk4->unk34 = 3.1415927f;
    D_800DFBD0[omCurrentObj->objId]->unk8->unk30 = -1.5707964f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 9;
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/39.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

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
    void *temp_v0;
    void *temp_v0_2;
    void *var_v0;

    temp_v1 = omCurrentObj->objId;
    if (D_800EA360[temp_v1] != 0) {
        temp_f0 = D_800DFBD0[temp_v1]->unk4->unk34;
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
        temp_v0 = D_800DFBD0[temp_v1_2]->unk4;
        temp_v0->unk34 = temp_v0->unk34 + *(D_800EAC20 + (temp_v1_2 * 4));
        var_a3 = D_800DFBD0[omCurrentObj->objId];
        var_v0 = var_a3->unk4;
        var_f0_2 = var_v0->unk34;
        if (var_f0_2 > 3.926991f) {
            var_v0->unk34 = 3.926991f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            var_v0 = var_a3->unk4;
            var_f0_2 = var_v0->unk34;
        }
        if (var_f0_2 < 2.3561945f) {
            var_v0->unk34 = 2.3561945f;
            var_a3 = D_800DFBD0[omCurrentObj->objId];
            goto block_12;
        }
    } else {
        temp_v0_2 = D_800DFBD0[temp_v1]->unk4;
        temp_v0_2->unk34 = temp_v0_2->unk34 + D_800EAC20[temp_v1];
        var_a3 = D_800DFBD0[omCurrentObj->objId];
block_12:
        var_v0 = var_a3->unk4;
    }
    temp_f2 = var_v0->unk24;
    if (temp_f2 < 0.0f) {
        var_f0_3 = -temp_f2;
    } else {
        var_f0_3 = temp_f2;
    }
    if (var_f0_3 < 40.0f) {
        func_801E3A84_ovl13(var_a3->unk5C, var_a3->unk10, var_a3->unk18, var_a3);
        temp_v1_3 = omCurrentObj->objId;
        if (D_800E83E0[temp_v1_3] == 1) {
            gEntityFuncListIDArray[temp_v1_3] = 0xE;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
        }
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/40.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E28A8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xB;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93A8;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE40;
    D_800E6850[omCurrentObj->objId] = 4.0f;
    D_800E3C90[omCurrentObj->objId] = 2.0f;
    func_800AA018(0x1041E);
    D_800DF310[omCurrentObj->objId] = func_801E2F0C_ovl13;
    func_800AEFFC(3);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0xA;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/41.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2
static f32 D_801E5B58_ovl13[8] = { 0.25f, 0.2f, 0.15f, 0.1f, -0.1f, -0.15f, -0.2f, -0.25f };

void func_801E29E0_ovl13(GObj *arg0) {
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    s32 *temp_a0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    struct DObj **temp_v0_7;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    void *temp_v0;
    void *var_v0;

    temp_v1 = omCurrentObj->objId;
    var_v1 = temp_v1 * 4;
    temp_f0 = D_800E64D0[temp_v1];
    if (temp_f0 != 0.0f) {
        if (temp_f0 > 0.0f) {
            var_f2 = 180.0f;
        } else {
            var_f2 = -180.0f;
        }
        D_800EAC20[temp_v1] = 3.1415927f / var_f2;
        var_v1 = omCurrentObj->objId * 4;
    }
    temp_v0 = (*(D_800DFBD0 + var_v1))->unk4;
    temp_v0->unk34 = temp_v0->unk34 + *(D_800EAC20 + var_v1);
    temp_v1_2 = omCurrentObj->objId;
    var_v1_2 = temp_v1_2 * 4;
    var_v0 = D_800DFBD0[temp_v1_2]->unk4;
    var_f0 = var_v0->unk34;
    if (var_f0 > 3.926991f) {
        var_v0->unk34 = 3.926991f;
        temp_v1_3 = omCurrentObj->objId;
        var_v1_2 = temp_v1_3 * 4;
        var_v0 = D_800DFBD0[temp_v1_3]->unk4;
        var_f0 = var_v0->unk34;
    }
    if (var_f0 < 2.3561945f) {
        var_v0->unk34 = 2.3561945f;
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_v0_2 = var_v1_2 + D_800E6690;
    temp_f0_2 = *temp_v0_2;
    if (temp_f0_2 < 0.0f) {
        if (*(D_800E64D0 + var_v1_2) <= -4.0f) {
            if (temp_f0_2 < 0.0f) {
                *temp_v0_2 = -temp_f0_2;
            } else {
                *temp_v0_2 = temp_f0_2;
            }
            goto block_18;
        }
    } else if (*(D_800E64D0 + var_v1_2) >= 4.0f) {
        if (temp_f0_2 < 0.0f) {
            *temp_v0_2 = --temp_f0_2;
        } else {
            *temp_v0_2 = -temp_f0_2;
        }
block_18:
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_a0 = var_v1_2 + D_800E9E20;
    var_v0_2 = *temp_a0;
    if (var_v0_2 > 0) {
        *temp_a0 = var_v0_2 - 1;
        temp_v1_4 = omCurrentObj->objId;
        var_v1_2 = temp_v1_4 * 4;
        var_v0_2 = D_800E9E20[temp_v1_4];
    }
    if (var_v0_2 <= 0) {
        D_800E3750[omCurrentObj->objId] = D_801E5B58_ovl13[random_soft_s32_range(8)];
        D_800E9E20[omCurrentObj->objId] = random_soft_s32_range(0x1F) + 0xF;
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_f0_3 = gEntitiesNextPosYArray[*(D_800EBBE0 + var_v1_2)];
    temp_f2 = *(gEntitiesNextPosYArray + var_v1_2);
    temp_v0_3 = var_v1_2 + D_800E3750;
    if ((temp_f0_3 + 40.0f) < temp_f2) {
        temp_f0_4 = *temp_v0_3;
        if (temp_f0_4 < 0.0f) {
            *temp_v0_3 = --temp_f0_4;
        } else {
            *temp_v0_3 = -temp_f0_4;
        }
        goto block_32;
    }
    temp_v0_4 = var_v1_2 + D_800E3750;
    if (temp_f2 < (temp_f0_3 - 80.0f)) {
        temp_f0_5 = *temp_v0_4;
        if (temp_f0_5 < 0.0f) {
            *temp_v0_4 = -temp_f0_5;
        } else {
            *temp_v0_4 = temp_f0_5;
        }
block_32:
        var_v1_2 = omCurrentObj->objId * 4;
    }
    temp_f0_6 = func_8019DA70_ovl7(*(D_800E0D50 + var_v1_2));
    if (temp_f0_6 < 0.0f) {
        var_f2_2 = -temp_f0_6;
    } else {
        var_f2_2 = temp_f0_6;
    }
    if (var_f2_2 > 120.0f) {
        if (temp_f0_6 > 0.0f) {
            temp_v0_5 = &D_800E6690[omCurrentObj->objId];
            temp_f0_7 = *temp_v0_5;
            if (temp_f0_7 < 0.0f) {
                *temp_v0_5 = -temp_f0_7;
            } else {
                *temp_v0_5 = temp_f0_7;
            }
        } else {
            temp_v0_6 = &D_800E6690[omCurrentObj->objId];
            temp_f0_8 = *temp_v0_6;
            if (temp_f0_8 < 0.0f) {
                *temp_v0_6 = --temp_f0_8;
            } else {
                *temp_v0_6 = -temp_f0_8;
            }
        }
    }
    temp_v0_7 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(0.0f, temp_v0_7->unk5C, temp_v0_7->unk10, temp_v0_7->unk18, &omCurrentObj);
    temp_v1_5 = omCurrentObj->objId;
    if (D_800E83E0[temp_v1_5] == 1) {
        gEntityFuncListIDArray[temp_v1_5] = 0xE;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB2D8_ovl13);
    }
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/42.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E2F0C_ovl13(GObj *arg0, s32 arg1, f32 arg2) {
    s32 *temp_a1;
    s32 temp_v0;

    if ((arg1 == 0) && (arg2 == 2)) {
        temp_v0 = func_801BA32C_ovl7(arg2);
        if (temp_v0 != -1) {
            D_800E76C0[temp_v0] = 0xFF;
            D_800E7730[temp_v0] = 0;
            D_800E77A0[temp_v0] = 0x25;
            D_800E7880[temp_v0] = 1;
            gEntitiesAngleZArray[temp_v0] = 0.0f;
            gEntityFuncListIDArray[temp_v0] = 1;
            gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId] + 30.0f;
            D_800E8E60[temp_v0] = 0;
            temp_a1 = &D_800E8AE0[temp_v0];
            *temp_a1 |= 1;
            D_800E9E20[temp_v0] = 1;
            play_sound(0x188);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/43.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E3028_ovl13(GObj *arg0) {
    GObj *temp_v1;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_v0_9;
    s32 var_v0;
    struct UnkStruct800E1B50 *temp_s1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;

    temp_s1 = D_800E1B50[omCurrentObj->objId];
    func_800AED20(0.0f);
    func_800AECC0(D_800D6B10);
    D_800DDFD0[omCurrentObj->objId] = 0xC;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E0490[omCurrentObj->objId] = &D_801DAB04;
    func_801A2ADC_ovl7(&D_801DAB04);
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3910[omCurrentObj->objId] = 0.0f;
    temp_v0 = omCurrentObj->objId;
    temp_f0 = D_800E3910[temp_v0];
    D_800E3590[temp_v0] = temp_f0;
    D_800E33D0[omCurrentObj->objId] = temp_f0;
    D_800E3050[omCurrentObj->objId] = temp_f0;
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    temp_v0_2 = omCurrentObj->objId;
    D_800E3AD0[temp_v0_2] = D_800E3E50[temp_v0_2];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v0_3 = omCurrentObj->objId;
    temp_f0_2 = D_800E6690[temp_v0_3];
    D_800E3910[temp_v0_3] = temp_f0_2;
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
    func_800FD570(0, 2, 0.0f, *temp_s1->unk88->unk10, 0.0f);
    func_800FD570(0, 4, 0.0f, *temp_s1->unk88->unk10, 0.0f);
    D_800EAC20[omCurrentObj->objId] = 0.017453292f;
    D_800EAFA0[omCurrentObj->objId] = 0.017453292f;
    func_800AECC0(D_800D6B10 * 0.5f);
    func_800AA018(0x10427);
    D_800E3750[omCurrentObj->objId] = -0.6f;
    D_800E3C90[omCurrentObj->objId] = 6.0f;
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    D_800E7B20[omCurrentObj->objId] = 0.0f;
    temp_v0_4 = omCurrentObj->objId;
    D_800E6690[temp_v0_4] = D_800E64D0[temp_v0_4] * -0.05f;
    ohSleep(2);
    func_801E37E8_ovl13(arg0);
    D_800D7118.unk3C = 0;
    ohSleep(0x12);
    temp_v1 = omCurrentObj;
    D_800E6690[temp_v1->objId] = 0.0f;
    temp_v0_5 = temp_v1->objId;
    D_800E64D0[temp_v0_5] = D_800E6690[temp_v0_5];
    D_800E6850[temp_v1->objId] = 65535.0f;
    temp_v0_6 = temp_v1->objId;
    var_v0 = temp_v0_6 * 4;
    if ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_6]] - 280.0f) < gEntitiesNextPosYArray[temp_v0_6]) {
        do {
            ohSleep(1);
            temp_v0_7 = omCurrentObj->objId;
            var_v0 = temp_v0_7 * 4;
        } while ((gEntitiesNextPosYArray[D_800EBBE0[temp_v0_7]] - 280.0f) < gEntitiesNextPosYArray[temp_v0_7]);
    }
    D_800E98E0[*(D_800E0D50 + var_v0)] = 5;
    D_800EAFA0[temp_v1->objId] = 0.0f;
    temp_v0_8 = temp_v1->objId;
    D_800EAC20[temp_v0_8] = D_800EAFA0[temp_v0_8];
    D_800D70D8.unk0 = gEntitiesNextPosYArray[D_800EBBE0[temp_v1->objId]] + 280.0f;
    temp_v0_9 = func_801BC794_ovl7(2, D_800EAFA0);
    if (temp_v0_9 != -1) {
        D_800E5F90[temp_v0_9] = D_800E5F90[D_800E0D50[omCurrentObj->objId]];
        D_800E6BD0[temp_v0_9] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosYArray[temp_v0_9] = gEntitiesNextPosYArray[D_800EBBE0[omCurrentObj->objId]] - 160.0f;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/44.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E35F4_ovl13(GObj *arg0) {
    struct DObj **temp_v0_3;
    u32 temp_v0;
    u32 temp_v0_2;
    void *temp_a1;
    void *temp_v1;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800DFBD0[temp_v0]->unk4;
    temp_v1->unk34 = temp_v1->unk34 + D_800EAC20[temp_v0];
    temp_v0_2 = omCurrentObj->objId;
    temp_a1 = D_800DFBD0[temp_v0_2]->unk8;
    temp_a1->unk38 = temp_a1->unk38 + D_800EAFA0[temp_v0_2];
    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7(arg0, temp_a1, D_800DFBD0, &omCurrentObj);
    temp_v0_3 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0_3->unk5C, temp_v0_3->unk10, temp_v0_3->unk18, &omCurrentObj);
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/45.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E36D8_ovl13(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0xE;
    D_800E1B50[omCurrentObj->objId]->unk8C = &D_801D93F0;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAE1C;
    func_800B33F4(D_800E1B50);
    ohSleep(0x1E);
    func_800F6C78();
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/46.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E3778_ovl13(GObj *arg0) {
    struct DObj **temp_v0;

    D_800E8920[omCurrentObj->objId] = 0;
    func_801A0D74_ovl7();
    temp_v0 = D_800DFBD0[omCurrentObj->objId];
    func_801E3A84_ovl13(temp_v0->unk5C, temp_v0->unk10, temp_v0->unk18);
    func_801E3958_ovl13(arg0);
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/47.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E37E8_ovl13(GObj *arg0) {
    f32 temp_f0;
    s32 *var_s2;
    s32 var_s0;
    s32 var_s1;
    u16 temp_v0_2;
    u8 temp_v0;

    var_s2 = &D_800DD748;
    var_s0 = 0x38;
    var_s1 = 0xE;
    do {
        if ((*var_s2 != -1) && ((temp_v0 = D_800E7730[var_s1], (temp_v0 == 0)) || (temp_v0 == 4))) {
            temp_v0_2 = D_800E77A0[var_s1];
            if ((temp_v0_2 != 0x39) && (temp_v0_2 != 0x3A)) {
                temp_f0 = *(D_800E7B20 + var_s0);
                if ((temp_f0 > 0.09f) && (temp_f0 < 9999.0f) && (*(D_800E83E0 + var_s0) != 1) && (*(D_800E0D50 + var_s0) != 0)) {
                    *(gEntityFuncListIDArray + var_s0) = -1;
                    assign_new_process_entry(*(gEntityGObjProcessArray + var_s0), func_801A3E80);
                }
            }
        }
        var_s1 += 1;
        var_s0 += 4;
        var_s2 += 4;
    } while (var_s1 != 0x3C);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/48.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

void func_801E3958_ovl13(GObj *arg0) {
    s32 *temp_v0;
    s32 *temp_v0_2;
    u32 temp_t0;

    temp_v0 = &D_800E9C60[omCurrentObj->objId];
    *temp_v0 += 1;
    temp_v0_2 = &D_800E9C60[omCurrentObj->objId];
    *temp_v0_2 = *temp_v0_2 % 6;
    temp_t0 = omCurrentObj->objId;
    if (D_800E9C60[temp_t0] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[temp_t0]->unk30);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId]->unk38);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId]->unk40);
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId]->unk20);
    }
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/49.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 4318c07b988d2a9f27f3dba366df73b9340fc5e2

s32 func_801E3A84_ovl13(GObj *arg0, s32 arg1, s32 arg2) {
    ? sp38;
    struct UnkStruct800E1B50 *sp30;
    s32 *sp28;
    s32 *var_t2;
    s32 temp_a0;
    s32 temp_a3;
    s32 var_a3;
    struct UnkStruct800E1B50 *temp_t0;
    u32 temp_a3_2;
    u32 temp_a3_3;
    u32 var_v1;
    void *temp_v0;

    omCurrentObj->objId = omCurrentObj->objId;
    omCurrentObj->objId = omCurrentObj->objId * 4;
    temp_t0 = D_800E1B50[omCurrentObj->objId];
    var_t2 = NULL;
    if (temp_t0->unk88 == NULL) {
        return 0;
    }
    temp_a0 = D_800EBDA0[omCurrentObj->objId];
    if ((temp_a0 != -1) && (omCurrentObj->objId == D_800E0D50[temp_a0]) && (D_800DD710[temp_a0] != -1) && (D_800E98E0[temp_a0] != 0)) {
        var_t2 = temp_t0->unk8C;
        temp_t0->unk8C = &D_801D9384;
        omCurrentObj->objId = omCurrentObj->objId;
    }
    sp30 = temp_t0;
    sp28 = var_t2;
    func_80111550(omCurrentObj->objId, -1, omCurrentObj->objId);
    temp_v0 = func_80111C88(temp_t0->unk8C, omCurrentObj->objId);
    if (temp_v0 != NULL) {
        if (arg0 != 0) {
            temp_v0->unk24->unk8 = arg0;
        }
        if (arg1 != 0) {
            temp_v0->unk24->unk30 = arg1;
        }
        if (arg2 != 0) {
            temp_v0->unk24->unk58 = arg2;
        }
        sp30 = temp_t0;
        func_80111ECC(temp_v0);
    }
    sp30 = temp_t0;
    if (func_80110150(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp3A;
        sp30->unk43 = sp3B;
    } else if (func_80110B00(&sp38) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp3A;
        sp30->unk43 = sp3B;
    } else if (func_80110FD4(&sp38) != 0) {
        if (sp3A == 10) {
            D_800E83E0[omCurrentObj->objId] = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = sp3A;
            sp30->unk43 = sp3B;
        }
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        sp30->unk43 = 0;
    }
    omCurrentObj->objId = omCurrentObj->objId;
    omCurrentObj->objId = omCurrentObj->objId * 4;
    if (D_800E83E0[omCurrentObj->objId] == 2) {
        D_800EBDA0[omCurrentObj->objId] = func_8019E0E8_ovl7(2, 2, &omCurrentObj, omCurrentObj->objId);
        if ((D_800EBDA0[omCurrentObj->objId] != -1) && (D_800D6E5C != 0.0f)) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
    }
    if (sp28 != NULL) {
        D_800E1B50[omCurrentObj->objId]->unk8C = sp28;
    }
    return *(D_800E83E0 + omCurrentObj->objId);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl13/0/ovl13/50.s")
#endif
