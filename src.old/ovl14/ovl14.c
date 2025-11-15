#include <ultra64.h>
#include <macros.h>
#define D_800E9FE0_PTR
#include "ovl1/ovl1_6.h"
#include "omCurrentObj.h"

#include "buffers.h"
#include "ovl14.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "ovl2/ovl2_8.h"

// #define NEEDS_RODATA

FUNCLIST D_801E2EA0_ovl14 = {
    func_801DB228_ovl14,
    func_801DCBCC_ovl14,
    func_801DF9EC_ovl14
};

void func_801DB1E0_ovl14(GObj *arg0) {
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801E2EA0_ovl14);
}


#ifdef NON_MATCHING
extern s32 D_800B7790;
void func_801DB228_ovl14(GObj *arg0) {
    D_800EC120[omCurrentObj->objId] = func_801DC954_ovl14();
    D_800DEF90[omCurrentObj->objId] = &D_800B7790;
    func_801A0D50(func_801DB3B0_ovl14);
    func_800A9760(0x1006B);
    func_801DCB48_ovl14();
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] -= 20.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] -= 800.0f;
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800EC660[omCurrentObj->objId] = 0.0f;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DB3B0_ovl14(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/1.s")
#endif

FUNCLIST D_801E2EAC_ovl14 = {
    func_801DB684_ovl14,
    func_801DB788_ovl14,
    func_801DB804_ovl14,
    func_801DBA00_ovl14,
    func_801DBC34_ovl14,
    func_801DBEAC_ovl14,
    func_801DC1C4_ovl14,
};

void func_801DB3B0_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DB460_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_801E2EAC_ovl14);
    }
}

FUNCLIST D_801E2EC8_ovl14 = {
    func_801DB780_ovl14,
    func_801DB7FC_ovl14,
    func_801DB9F8_ovl14,
    func_801DBC2C_ovl14,
    func_801DBEA4_ovl14,
    func_801DC1BC_ovl14,
    func_801DC298_ovl14,
};
#ifdef MIPS_TO_C
extern f32 D_800D6E5C;
void func_801DB460_ovl14(GObj *arg0) {
    D_800EA520[omCurrentObj->objId] -= 1;
    if (D_800EA520[omCurrentObj->objId] <= 0) {
        D_800EA520[omCurrentObj->objId] = 0x23;
        play_sound(0x18D);
    }
    if (D_800EC660[omCurrentObj->objId] != 0.0f) {
        D_800E7B20[omCurrentObj->objId] -= D_800EC660[omCurrentObj->objId];
        D_800EC660[omCurrentObj->objId] = 0.0f;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        play_sound(0x189);
    }
    if (D_800E7CE0[omCurrentObj->objId] != 0) {
        if (((D_800E7CE0[omCurrentObj->objId] % 4) < 2) || (D_800E7CE0[omCurrentObj->objId] <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0.0f);
        } else {
            func_801DE548_ovl14(arg0, 1.0f);
        }
    }
    if (D_800E7B20[omCurrentObj->objId] <= 0.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB3B0_ovl14);
        return;
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, D_801E2EC8_ovl14);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/3.s")
#endif

extern u32 D_801CB470;
void func_801DB684_ovl14(GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    tmp->unk98 = &D_801CB470;
    func_801DCB84_ovl14();
    func_800AA018(0x10434);
    func_800AA018(0x10435);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    ohSleep(0x1E);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    play_sound(0x190);
    func_800BC1FC((s32)D_800E7B20[omCurrentObj->objId]);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DB780_ovl14(GObj *arg0) {

}

void func_801DB788_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800A9EA4(0x10438);
    ohSleep(0x3C);
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 2;
}

void func_801DB7FC_ovl14(GObj *arg0) {

}

#ifdef NON_MATCHING
void func_801DB804_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800EBBE0[omCurrentObj->objId] =
        D_800EBDA0[omCurrentObj->objId] =
        D_800EBF60[omCurrentObj->objId] = 0;
    func_800A9EA4(0x10438);
    D_800EBBE0[omCurrentObj->objId] = func_801DC38C_ovl14(random_soft_s32_range(5));
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        s32 rand;
        ohSleep(0x14);
        do {
            rand = random_soft_s32_range(5);
        } while (rand == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32);
        D_800EBDA0[omCurrentObj->objId] = func_801DC38C_ovl14(rand);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            ohSleep(0x14);
            do {
                rand = random_soft_s32_range(5);
            }
            while (rand == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32);
            D_800EBF60[omCurrentObj->objId] = func_801DC38C_ovl14(rand);
        }
    }
    func_801DC2A0_ovl14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/8.s")
#endif

void func_801DB9F8_ovl14(GObj *arg0) {

}

#ifdef MIPS_TO_C
void func_801DBA00_ovl14(void *arg0) {
    s32 sp24;
    s32 sp20;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_v0_2;
    s32 var_a1;
    u32 temp_v0;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800EBDA0[omCurrentObj->objId] = 0;
    temp_v0 = omCurrentObj->objId;
    D_800EBBE0[temp_v0] = D_800EBDA0[temp_v0];
    func_800AA608(arg0->unk3C->unk10, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 0x40C00000);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    temp_v0_2 = random_soft_s32_range(4);
    var_a1 = temp_v0_2;
    if (temp_v0_2 == 3) {
        var_a1 = 1;
    }
    sp24 = var_a1;
    sp20 = random_soft_s32_range(2);
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(0, var_a1);
    temp_a2 = D_800EBBE0[omCurrentObj->objId];
    if (temp_a2 != -1) {
        D_800EC2E0[temp_a2] = 0;
        D_800EC4A0[D_800EBBE0[omCurrentObj->objId]] = sp20;
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(0, var_a1 + 2, temp_a2, D_800EBBE0);
        temp_a0 = D_800EBDA0[omCurrentObj->objId];
        if (temp_a0 != -1) {
            D_800EC2E0[temp_a0] = 1;
            D_800EC4A0[D_800EBDA0[omCurrentObj->objId]] = sp20 ^ 1;
        }
    }
    ohSleep(0x14);
    func_800A9EA4(0x10438);
    ohSleep(0x32);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/10.s")
#endif

void func_801DBC2C_ovl14(GObj *arg0) {

}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

void func_801DBC34_ovl14(void *arg0) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u32 temp_v1;
    u32 temp_v1_2;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800EBF60[omCurrentObj->objId] = 0;
    temp_v1 = omCurrentObj->objId;
    temp_v0 = D_800EBF60[temp_v1];
    D_800EBDA0[temp_v1] = temp_v0;
    D_800EBBE0[omCurrentObj->objId] = temp_v0;
    func_800AA608(arg0->unk3C->unk10, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 0x40C00000);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(1, random_soft_s32_range(4));
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        do {
            temp_v0_2 = random_soft_s32_range(4);
        } while (temp_v0_2 == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]]);
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(1, temp_v0_2);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            do {
loop_3:
                temp_v0_3 = random_soft_s32_range(4);
                temp_v1_2 = omCurrentObj->objId;
                if (temp_v0_3 == D_800EC2E0[D_800EBBE0[temp_v1_2]]) {
                    goto loop_3;
                }
            } while (temp_v0_3 == D_800EC2E0[D_800EBDA0[temp_v1_2]]);
            D_800EBF60[omCurrentObj->objId] = func_801DC674_ovl14(1, temp_v0_3);
            play_sound(0x18A);
        }
    }
    ohSleep(0x14);
    func_800A9EA4(0x10438);
    ohSleep(0x3C);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/12.s")
#endif

void func_801DBEA4_ovl14(GObj *arg0) {

}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

void func_801DBEAC_ovl14(GObj *arg0) {
    s32 sp34;
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_a2;
    u32 temp_v1;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;

    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800EBF60[omCurrentObj->objId] = 0;
    temp_v0 = D_800EBF60[omCurrentObj->objId];
    D_800EBDA0[omCurrentObj->objId] = temp_v0;
    D_800EBBE0[omCurrentObj->objId] = temp_v0;
    func_800AA608(arg0->unk3C->unk10, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 0x40C00000);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    temp_v0_2 = random_soft_s32_range(4);
    sp34 = temp_v0_2;
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(2, temp_v0_2);
    temp_v1_2 = &D_800EBBE0[omCurrentObj->objId];
    if (*temp_v1_2 != -1) {
        *temp_v1_2 = sp34;
        ohSleep(0x14);
        func_800A9EA4(0x10438);
        ohSleep(random_soft_s32_range(0x1E) + 0xA);
        do {
            temp_v0_3 = random_soft_s32_range(4);
        } while (temp_v0_3 == D_800EBBE0[omCurrentObj->objId]);
        sp34 = temp_v0_3;
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(2, temp_v0_3);
        temp_v1_3 = &D_800EBDA0[omCurrentObj->objId];
        if (*temp_v1_3 != -1) {
            *temp_v1_3 = sp34;
            ohSleep(random_soft_s32_range(0x1E) + 0x1E);
            do {
loop_5:
                temp_v0_4 = random_soft_s32_range(4);
                if (temp_v0_4 == D_800EBBE0[omCurrentObj->objId]) {
                    goto loop_5;
                }
            } while (temp_v0_4 == D_800EBDA0[omCurrentObj->objId]);
            sp34 = temp_v0_4;
            D_800EBF60[omCurrentObj->objId] = func_801DC674_ovl14(2, temp_v0_4);
            temp_v1_5 = omCurrentObj->objId;
            if (D_800EBDA0[temp_v1_5] != -1) {
                D_800EBF60[temp_v1_5] = sp34;
                ohSleep(random_soft_s32_range(0x1E) + 0x1E);
                temp_v1_6 = omCurrentObj->objId;
                var_a2 = 0;
                while (var_a2 != D_800EBBE0[temp_v1_6]
                 && var_a2 != D_800EBDA0[temp_v1_6]
                 && var_a2 != D_800EBF60[temp_v1_6]
                ) {
                    var_a2 += 1;
                }
                func_801DC674_ovl14(2, var_a2, var_a2);
            }
        }
    }
    ohSleep(0x28);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/14.s")
#endif

void func_801DC1BC_ovl14(GObj *arg0) {

}

extern s32 D_800D7154;
void func_801DC1C4_ovl14(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DC298_ovl14;
    func_800AA018(0x10439);
    func_800AA018(0x1043A);
    D_800D7154 = 0;
    play_sound(0x1E7);
    func_800FD570(0, 2, 0.0f, 160.0f, 0.0f);
    func_800BB468(2, 0);
    func_800AF27C();
    ohSleep(0xF);
    func_800FB914(4);
    ohSleep(0x28);
    D_800E7880[omCurrentObj->objId] = 1;
    func_801DCBCC_ovl14(arg0);
}

void func_801DC298_ovl14(GObj *arg0) {

}

#ifdef NON_MATCHING
void func_801DC2A0_ovl14(void) {
    s32 rand;

    do {
        rand = random_soft_s32_range(8);
        if (rand < 2) {
            rand = 0; // 25% chance
        } else if (rand < 5) {
            rand = 1; // 37.5% chance
        } else {
            rand = 2; // 37.5% chance
        }
    } while (D_800E98E0[omCurrentObj->objId] == rand);
    
    switch (D_800E98E0[omCurrentObj->objId] = rand) {
        case 0: gEntityFuncListIDArray[omCurrentObj->objId] = 3; break;
        case 1: gEntityFuncListIDArray[omCurrentObj->objId] = 4; break;
        case 2: gEntityFuncListIDArray[omCurrentObj->objId] = 5; break;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/18.s")
#endif

#ifdef NEEDS_RODATA
// extern char D_801E2FA0_ovl14[];
s32 func_801DC38C_ovl14(u32 arg0) {
    s32 track;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 0;
    D_800E77A0[track] = 0x3C;
    D_800E7880[track] = 1;
    switch (arg0) {
        case 0:
            gEntitiesNextPosXArray[track] =
                gEntitiesPosXArray[track] = -320.0f;
            break;
        case 1:
            gEntitiesNextPosXArray[track] =
                gEntitiesPosXArray[track] = -160.0f;
            break;
        case 2:
            gEntitiesNextPosXArray[track] =
                gEntitiesPosXArray[track] = 0.0f;
            break;
        case 3:
            gEntitiesNextPosXArray[track] =
                gEntitiesPosXArray[track] = 160.0f;
            break;
        case 4:
            gEntitiesNextPosXArray[track] =
                gEntitiesPosXArray[track] = 320.0f;
            break;
        default:
            while (1) {

            }
    }

    gEntitiesNextPosYArray[track] =
        gEntitiesPosYArray[track] = 0.0f;
    gEntitiesNextPosZArray[track] =
        gEntitiesPosZArray[track] = 0.0f;
    D_800E8E60[omCurrentObj->objId] = 0;
    // sp24 = D_800E5F90[omCurrentObj->objId];
    // sp28 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&D_800E5F90[omCurrentObj->objId], gEntitiesNextPosXArray[track]) == 0) {
        D_800E5F90[track] =
            D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] =
            D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    } else {
        D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
    }
    D_800EC2E0[track].as_u32 = arg0;
    play_sound(0x191);
    return track;
}
#else
const char D_801E2FA0_ovl14[36] = "enemy req over 18. Track Num:%d\n\0\0\0";
GLOBAL_ASM("asm/non_matchings/ovl14/19.s")
#endif

#ifdef NEEDS_RODATA
s32 func_801DC674_ovl14(GObj *arg0, u32 arg1) {
    f32 nextX;
    s32 track;

    track = request_track_general(0x1A, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 4;
    D_800E77A0[track] = 0x2B;
    D_800E7880[track] = arg0;
    if (arg0 == 0) {
        switch (arg1) {
            case 0:
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = -320.0f;
                break;
            case 1:
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = -160.0f;
                break;
            case 2:
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = 0.0f;
                break;
            case 3:
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = 160.0f;
                break;
            case 4:
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = 320.0f;
                break;
        }
    } else {
        switch (arg1) {                             /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = -240.0f;
                break;
            case 1:                                 /* switch 1 */
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = -80.0f;
                break;
            case 2:                                 /* switch 1 */
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = 80.0f;
                break;
            case 3:                                 /* switch 1 */
                gEntitiesNextPosXArray[track] =
                    gEntitiesPosXArray[track] = 240.0f;
                break;
        }
    }

    gEntitiesNextPosYArray[track] =
        gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] =
        gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[track] = 1;
    D_800EC2E0[track].as_u32 = arg1;
    return track;
}
#else
const char D_801E2FC4_ovl14[36] = "enemy req over 18. Track Num:%d\n\0\0\0";
GLOBAL_ASM("asm/non_matchings/ovl14/20.s")
#endif

s32 func_801DC954_ovl14(void) {
    s32 track;

    track = request_track_general(0x19, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 2;
    D_800E77A0[track] = 3;
    D_800E7880[track] = 2;
    gEntitiesNextPosXArray[track] =
    gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] =
    gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId] + 160.0f;
    gEntitiesNextPosZArray[track] =
    gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[track] = 0;
    D_800E5F90[track] =
    D_800E6150[track] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[track] =
    D_800E6D90[track] = D_800E6BD0[omCurrentObj->objId];
    return track;
}

void func_801DCB00_ovl14(s32 arg0) {
    s32 temp_v0;

    temp_v0 = ((s32*)&D_800D7098)[arg0];
    if (temp_v0 != 0) {
        D_800E98E0[temp_v0] = 2;
    }
    func_800FB914(3);
}

void func_801DCB48_ovl14(void) {
    D_800E9FE0[omCurrentObj->objId].as_s32 = func_800A94F4(0x10437);
}

void func_801DCB84_ovl14(void) {
    if (*D_800E9FE0[omCurrentObj->objId].as_s32p != 0) {
        func_800B2288(*D_800E9FE0[omCurrentObj->objId].as_s32p, 0.0f);
    }
}

#ifdef MIPS_TO_C
extern s32 D_800D70A8;
void func_801DCBCC_ovl14(GObj *arg0) {
    f32 sp34;
    s32 sp30;
    struct UnkStruct800E1B50 *temp_v0 = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk84 *temp_s0;

    temp_s0 = temp_v0->unk84;
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_801A0D50(func_801DCE1C_ovl14);
    func_800A9760(0x1006C);
    func_801AE7E0_ovl7(0xE);
    func_801DF514_ovl14();
    func_801DF720_ovl14();
    D_800DDA90[omCurrentObj->objId] = 0x24;
    D_800D7154 = -1;
    sp30 = D_800E5F90[omCurrentObj->objId];
    sp34 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp30, -320.0f) == 0) {
        D_800E6150[omCurrentObj->objId] = sp30;
        D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
        D_800E6D90[omCurrentObj->objId] = sp34;
        D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    }
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E7B20[omCurrentObj->objId] = temp_v0->unk88->unk0;
    D_800E9AA0[omCurrentObj->objId] = NULL;
    D_800D70A8 = 0;
    if (temp_s0 != NULL) {
        temp_s0->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        temp_s0->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        temp_s0->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        func_801051AC(temp_s0);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DCE1C_ovl14(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/25.s")
#endif

FUNCLIST D_801E2EE4_ovl14 = {
    func_801DD018_ovl14,
    func_801DD4D0_ovl14,
    func_801DD590_ovl14,
    func_801DDBD8_ovl14,
    func_801DDE60_ovl14,
    func_801DE218_ovl14,
};

void func_801DCE1C_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DCEC0_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_801E2EE4_ovl14);
    }
}

FUNCLIST D_801E2EFC_ovl14 = {
    func_801DD4C8_ovl14,
    func_801DD588_ovl14,
    func_801DDBD0_ovl14,
    func_801DDE58_ovl14,
    func_801DE210_ovl14,
    func_801DE484_ovl14,
};

void func_801DCEC0_ovl14(GObj *arg0) {
    s32 temp_v0;

    D_800EA520[omCurrentObj->objId] -= 1;
    if (D_800EA520[omCurrentObj->objId] <= 0) {
        D_800EA520[omCurrentObj->objId] = 0x2D;
        play_sound(0x18D);
    }
    temp_v0 = D_800E7CE0[omCurrentObj->objId];
    if (temp_v0 != 0) {
        if (((temp_v0 % 4) < 2) || (temp_v0 <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0);
        } else {
            func_801DE548_ovl14(arg0, 1);
        }
    }
    if (D_800E9E20[omCurrentObj->objId] != 0) {
        func_801A0D74_ovl7(arg0);
    }
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 6, D_801E2EFC_ovl14);
    func_801DE6C8_ovl14();
}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

void func_801DD018_ovl14(GObj *arg0) {
    struct UnkStruct800E1B50 *sp2C;
    ? *sp20;
    GObj *temp_a1;
    f32 *temp_v1_2;
    f32 temp_f0;
    s32 *temp_v1_3;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    struct UnkStruct800E1B50 *temp_v1;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    u32 temp_v0_9;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800E1B50[temp_v0];
    D_800DDFD0[temp_v0] = 0;
    temp_v1->unk98 = &D_801CB470;
    sp2C = temp_v1;
    func_801DF580_ovl14(0);
    func_800AA018(0x10449);
    func_800AA018(0x1044A);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_801DCB00_ovl14(0);
    play_sound(0x1CD);
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x14);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    play_sound(0x190);
    ohSleep(5);
    D_800E9AA0[omCurrentObj->objId] = 4;
    ohSleep(0x19);
    D_800E9AA0[omCurrentObj->objId] = 2;
    sp20 = &D_801D9CCC;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    func_800AF27C();
    func_800AA018(0x10455);
    D_800E8920[omCurrentObj->objId] = 0;
    temp_v0_2 = omCurrentObj->objId;
    D_800E6690[temp_v0_2] = D_800E6A10[temp_v0_2] * 0.3151515f;
    ohSleep(0xA);
    temp_a1 = omCurrentObj;
    D_800E6690[temp_a1->objId] = 0.0f;
    temp_v0_3 = temp_a1->objId;
    D_800EA6E0[temp_v0_3] = gEntitiesNextPosYArray[temp_v0_3] + 20.0f;
    D_800E98E0[temp_a1->objId] = 0;
    temp_v0_4 = temp_a1->objId;
    var_v0 = temp_v0_4 * 4;
    if (D_800E98E0[temp_v0_4] < 0x136) {
        do {
            *(D_800E64D0 + var_v0) = *(D_800E6A10 + var_v0) * 3.1515152f;
            temp_v0_6 = temp_a1->objId;
            var_v0_2 = temp_v0_6 * 4;
            var_v1 = D_800E98E0[temp_v0_6];
            if (var_v1 == 5) {
                func_801DCB00_ovl14(1, temp_a1);
                play_sound(0x1CD);
                temp_v0_7 = omCurrentObj->objId;
                var_v0_2 = temp_v0_7 * 4;
                var_v1 = D_800E98E0[temp_v0_7];
            }
            if (var_v1 == 0x37) {
                func_801DCB00_ovl14(2, temp_a1);
                play_sound(0x1CD);
                temp_v0_8 = omCurrentObj->objId;
                var_v0_2 = temp_v0_8 * 4;
                var_v1 = D_800E98E0[temp_v0_8];
            }
            if (var_v1 == 0x69) {
                func_801DCB00_ovl14(3, temp_a1);
                play_sound(0x1CD);
                temp_v0_9 = omCurrentObj->objId;
                var_v0_2 = temp_v0_9 * 4;
                var_v1 = D_800E98E0[temp_v0_9];
            }
            if (var_v1 == 0xA) {
                *(D_800E9C60 + var_v0_2) = 1;
                var_v0_2 = temp_a1->objId * 4;
            }
            temp_v1_2 = var_v0_2 + gEntitiesNextPosYArray;
            if (*(gEntitiesNextPosXArray + var_v0_2) > -160.0f) {
                temp_f0 = *temp_v1_2;
                if (temp_f0 < *(D_800EA6E0 + var_v0_2)) {
                    *temp_v1_2 = temp_f0 + 5.0f;
                    func_800FB914(0, temp_a1);
                }
            }
            ohSleep(1);
            temp_v1_3 = &D_800E98E0[omCurrentObj->objId];
            *temp_v1_3 += 1;
            temp_v0_5 = omCurrentObj->objId;
            var_v0 = temp_v0_5 * 4;
        } while (D_800E98E0[temp_v0_5] < 0x136);
    }
    *(D_800E6690 + var_v0) = *(D_800E6A10 + var_v0) * -0.3151515f;
    func_800BC1FC(D_800E7B20[temp_a1->objId]);
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    temp_v0_10 = omCurrentObj->objId;
    D_800E64D0[temp_v0_10] = D_800E6690[temp_v0_10];
    func_801A2558_ovl7(sp2C->unk88->unk10, omCurrentObj);
    D_800E9E20[omCurrentObj->objId] = 1;
    ohSleep(0x3C);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = sp20;
    func_800AF27C();
    func_801DED24_ovl14();
}
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl14/28.s")
#endif

void func_801DD4C8_ovl14(GObj *arg0) {

}

extern s32 D_800D70A8;
void func_801DD4D0_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800D70A8 = 0;
    func_800A9EA4(0x10455);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x3C);
    func_800AF27C();
    func_801DED24_ovl14();
}

void func_801DD588_ovl14(GObj *arg0) {

}

#ifdef MIPS_TO_C
void func_801DD590_ovl14(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    s32 temp_a0;
    struct EntityThing800E9AA0 **temp_v0;
    struct EntityThing800E9AA0 **temp_v0_2;
    u32 temp_a1;
    void *temp_a2;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800D70A8 = 1;
    temp_f0 = arg0->unk40;
    if (temp_f0 < 4.0f) {
        var_f12 = 8.0f;
    } else if (temp_f0 < 8.0f) {
        var_f12 = 6.0f;
    } else if (temp_f0 < 12.0f) {
        var_f12 = 4.0f;
    } else if (temp_f0 < 16.0f) {
        var_f12 = 2.0f;
    } else if (temp_f0 < 20.0f) {
        var_f12 = 16.0f;
    } else if (temp_f0 < 24.0f) {
        var_f12 = 14.0f;
    } else if (temp_f0 < 28.0f) {
        var_f12 = 12.0f;
    } else {
        var_f12 = 10.0f;
    }
    func_801DF75C_ovl14(var_f12);
    func_800AA018(0x1043D);
    func_800AA018(0x1043E);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9D80;
    ohSleep(0x24);
    play_sound(0x18A);
    ohSleep(0xF);
    D_800EC4A0[omCurrentObj->objId] = func_800A8234(6, 3, 6);
    temp_a1 = omCurrentObj->objId;
    temp_a0 = D_800EC4A0[temp_a1];
    temp_a2 = temp_a0->unk4C;
    if (temp_a2 != NULL) {
        temp_a2->unk4 = (D_800E6A10[temp_a1] * 90.0f) + gEntitiesNextPosXArray[temp_a1];
        temp_a0->unk4C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 170.0f;
        temp_a0->unk4C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        temp_a0->unk4C->unk10 = gEntitiesAngleXArray[omCurrentObj->objId];
        temp_a0->unk4C->unk14 = gEntitiesAngleYArray[omCurrentObj->objId];
        temp_a0->unk4C->unk18 = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    func_800AF27C(temp_a0, temp_a1 * 4, temp_a2, D_800EC4A0);
    func_800AA018(0x1043F);
    func_800AA018(0x10440);
    func_800AF27C();
    temp_f0_2 = arg0->unk40;
    if (temp_f0_2 < 2.0f) {
        var_f12_2 = 16.0f;
    } else if (temp_f0_2 < 4.0f) {
        var_f12_2 = 12.0f;
    } else if (temp_f0_2 < 6.0f) {
        var_f12_2 = 8.0f;
    } else if (temp_f0_2 < 8.0f) {
        var_f12_2 = 4.0f;
    } else if (temp_f0_2 < 10.0f) {
        var_f12_2 = 0.0f;
    } else if (temp_f0_2 < 12.0f) {
        var_f12_2 = 28.0f;
    } else if (temp_f0_2 < 14.0f) {
        var_f12_2 = 24.0f;
    } else if (temp_f0_2 < 16.0f) {
        var_f12_2 = 20.0f;
    } else if (temp_f0_2 < 18.0f) {
        var_f12_2 = 16.0f;
    } else if (temp_f0_2 < 20.0f) {
        var_f12_2 = 12.0f;
    } else if (temp_f0_2 < 22.0f) {
        var_f12_2 = 8.0f;
    } else if (temp_f0_2 < 24.0f) {
        var_f12_2 = 4.0f;
    } else if (temp_f0_2 < 26.0f) {
        var_f12_2 = 0.0f;
    } else if (temp_f0_2 < 28.0f) {
        var_f12_2 = 28.0f;
    } else if (temp_f0_2 < 30.0f) {
        var_f12_2 = 24.0f;
    } else {
        var_f12_2 = 20.0f;
    }
    func_801DF580_ovl14(var_f12_2);
    func_800AA018(0x10441);
    func_800AA018(0x10442);
    temp_v0 = &D_800E9AA0[omCurrentObj->objId];
    *temp_v0 = *temp_v0 | 8;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    play_sound(0x18B);
    func_800AF27C();
    func_800AF27C();
    func_800AF27C();
    func_800AA018(0x10443);
    func_800AA018(0x10444);
    ohSleep(5);
    temp_v0_2 = &D_800E9AA0[omCurrentObj->objId];
    *temp_v0_2 = *temp_v0_2 & ~8;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl14/32.s")
#endif

void func_801DDBD0_ovl14(GObj *arg0) {

}

void func_801DDBD8_ovl14(GObj *arg0) {
    s32 pad[4];

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800D70A8 = 0;
    func_800AA018(0x10453);
    ((s32*)D_800E9AA0)[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9D80;
    func_800AF27C();
    func_800AA018(0x10445);
    ((s32*)D_800E9AA0)[omCurrentObj->objId] |= 0x10;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(5);
    play_sound(0x193);
    func_800FB914(3);
    func_800BB468(0, 0);
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    func_800AF27C();
    func_800AECC0(0.0f);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800AA018(0x10451);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(5);
    func_801DF290_ovl14();
    ohSleep(0x1E);
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    func_800AF27C();
    func_800A9EA4(0x10455);
    ohSleep(0x1E);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DDE58_ovl14(GObj *arg0) {

}

#ifdef NEEDS_RODATA
void func_801DDE60_ovl14(GObj *arg0) {
    s32 *sp38;
    u32 var_s0;
    f32 temp_f20;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800D70A8 = 0;
    func_800AA018(0x10457);
    func_800AA018(0x10458);
    *(s32*)(&D_800E9AA0[omCurrentObj->objId]) = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    sp38 = &D_801D9CCC;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x23);
    D_800E9AA0[omCurrentObj->objId] = 4;
    func_800AF27C();
    temp_f20 = 10;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (10.0f * 0.05f);
    D_800E6850[omCurrentObj->objId] = temp_f20;
    D_800E9E20[omCurrentObj->objId] = 1;
    play_sound(0x190);
    ohSleep(0x14);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * temp_f20;
    ohSleep(0x1E);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (-10.0f * 0.05f);
    D_800E6850[omCurrentObj->objId] = temp_f20;
    ohSleep(0x14);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    play_sound(0x18E);
    func_800FB914(4);

    for (var_s0 = 0; var_s0 < 4; var_s0++) {
        func_801DF01C_ovl14(1.0f);
        func_801DF01C_ovl14(-1.0f);
        ohSleep(8);
        func_801DEDE8_ovl14();
        ohSleep(2);
        func_801DF01C_ovl14(1.0f);
        func_801DF01C_ovl14(-1.0f);
        ohSleep(0x16);
    }
    func_800FB914(0);
    ohSleep(0x1E);
    D_800E6A10[omCurrentObj->objId] *= -1.0f;
    func_800AA018(0x1044B);
    func_800AA018(0x1044C);
    ohSleep(0xA);
    *(s32*)(&D_800E9AA0[omCurrentObj->objId]) = 2;
    D_800EA360[omCurrentObj->objId] = sp38;
    ohSleep(0x14);
    *(s32*)(&D_800E9AA0[omCurrentObj->objId]) |= 1;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/36.s")
#endif

void func_801DE210_ovl14(GObj *arg0) {

}

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

void func_801DE218_ovl14(void *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE484_ovl14;
    func_800AF314();
    if (D_800DFF50[omCurrentObj->objId] == 0x1044E) {
        func_801DF580_ovl14(0);
    }
    D_800D7154 = 0;
    func_8019F1EC_ovl7();
    play_sound(0x1E6);
    func_800FD570(0, 2, 0.0f, 160.0f, 0.0f);
    func_800FB914(4);
    func_800BB468(3, 0);
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    ohSleep(0x1E);
    func_800AECC0(1.0f);
    func_800AED20(1.0f);
    func_800AA018(0x10448);
    func_800AA608(arg0->unk3C->unk10, 0x10447, 10.0f, 0x1006C, 10.0f);
    func_800A9F98(0x10447, 0x41200000);
    D_800EA1A0[omCurrentObj->objId] = 2;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 3;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 4;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 5;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 6;
    ohSleep(0xA);
    D_800EA1A0[omCurrentObj->objId] = 7;
    func_801BC794_ovl7(3);
    func_800AF27C();
    func_800AF408();
    func_800FB914(0);
    func_800AFBB4(0, omCurrentObj);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/38.s")
#endif

#ifdef MIPS_TO_C
void func_801DE484_ovl14(void *arg0) {
    s32 temp_v0;

    func_801DE548_ovl14(D_800EA1A0[omCurrentObj->objId]);
    temp_v0 = D_800EA1A0[omCurrentObj->objId];
    if (temp_v0 == 0) {
        func_801DE608_ovl14(arg0, 0.5f);
        return;
    }
    if (temp_v0 < 7) {
        func_801DE608_ovl14(arg0, 0.5f - (arg0->unk40 / 120.0f));
        return;
    }
    func_801DE608_ovl14(arg0, 0.0f);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/39.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
void func_801DE548_ovl14(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void *var_v0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            var_v0 = var_s0->unk80;
            if (var_v0 != NULL) {
                do {
                    var_v0->unk88 = arg1;
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
            temp_v0 = animModelTreeNextNode(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/40.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
void func_801DE5A8_ovl14(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void *var_v0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
        do {
            var_v0 = var_s0->unk80;
            if (var_v0 != NULL) {
                do {
                    var_v0->unk84 = arg1;
                    var_v0 = var_v0->unk0;
                } while (var_v0 != NULL);
            }
            temp_v0 = animModelTreeNextNode(var_s0);
            var_s0 = temp_v0;
        } while (temp_v0 != NULL);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/41.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
void func_801DE608_ovl14(void *arg0, f32 arg1) {
    UserData8000BE90 *temp_v0;
    UserData8000BE90 *var_s0;
    void *var_v0;

    var_s0 = arg0->unk3C;
    if (var_s0 != NULL) {
loop_2:
        var_v0 = var_s0->unk80;
        if (var_v0 != NULL) {
            do {
                var_v0->unk84 = arg1;
                var_v0 = var_v0->unk0;
            } while (var_v0 != NULL);
        }
        temp_v0 = animModelTreeNextNode(var_s0);
        var_s0 = temp_v0;
        if (((D_800D7098.unk10 != 0) || (temp_v0 < D_800DFBD0[omCurrentObj->objId]->unk2C)) && (var_s0 != NULL)) {
            goto loop_2;
        }
    }
}
/* Warning: struct DObj is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl14/42.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

s32 func_801DE6C8_ovl14(void) {
    s32 sp6C;
    ? sp60;
    struct UnkStruct800E1B50 *sp5C;
    void *sp58;
    void *sp54;
    ? sp38;
    s32 sp34;
    s32 sp30;
    s32 temp_a0;
    struct EntityThing800E9AA0 *var_a0;
    struct EntityThing800E9AA0 *var_a0_2;
    struct DObj **temp_v1;
    struct UnkStruct800E1B50 *temp_t6;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1_2;
    u32 var_v1;
    u32 var_v1_2;
    void *temp_v0_3;

    temp_v0 = omCurrentObj->objId;
    temp_t6 = D_800E1B50[temp_v0];
    temp_v1 = D_800DFBD0[temp_v0];
    sp5C = temp_t6;
    sp34 = temp_v1->unk28;
    sp30 = temp_v1->unk1C;
    if (temp_t6 == NULL) {
        return 0;
    }
    if (sp5C->unk8C == NULL) {
        return 0;
    }
    D_800E83E0[temp_v0] = 0;
    temp_v0_2 = omCurrentObj->objId;
    if (D_800E9AA0[temp_v0_2] & 2) {
        if (func_801DECAC_ovl14(D_800DE350[temp_v0_2], omCurrentObj) != 0) {
            return 1;
        }
        func_80111550(omCurrentObj->objId);
        temp_v1_2 = omCurrentObj->objId;
        sp54 = func_80111C88(D_800EA360[temp_v1_2], temp_v1_2);
        func_800B2340(&sp60, sp34, 0xFFFF);
        sp54->unk24->unk10 = (sp64 - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
        sp54->unk24->unk38 = ((sp64 - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        sp54->unk24->unk60 = ((sp64 - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        func_80111ECC(sp54);
        if ((func_80110B00(&sp38) == 0) && (func_80110FD4(&sp38) == 0)) {
            func_80110150(&sp38);
        }
        goto block_10;
    }
block_10:
    var_v1 = omCurrentObj->objId;
    var_a0 = D_800E9AA0[var_v1];
    if (var_a0 & 4) {
        func_801DEC34_ovl14(D_800DE350[var_v1]);
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_801D9E58, omCurrentObj->objId));
        func_80110B00(&sp38);
        var_v1 = omCurrentObj->objId;
        var_a0 = D_800E9AA0[var_v1];
    }
    if (var_a0 & 8) {
        func_80111550(var_v1);
        temp_v0_3 = func_80111C88(&D_801D9F0C, omCurrentObj->objId);
        temp_v0_3->unk24->unk8 = sp30;
        temp_v0_3->unk24->unk30 = sp30;
        temp_v0_3->unk24->unk58 = sp30;
        temp_v0_3->unk24->unk80 = sp30;
        func_80111ECC(temp_v0_3);
        if ((func_80110B00(&sp38) == 0) && (func_80110FD4(&sp38) == 0)) {
            func_80110150(&sp38);
        }
    }
    var_v1_2 = omCurrentObj->objId;
    var_a0_2 = D_800E9AA0[var_v1_2];
    if (var_a0_2 & 1) {
        func_80111550(var_v1_2);
        sp54 = func_80111C88(sp5C->unk8C, omCurrentObj->objId);
        func_800B2340(&sp60, sp30, 0xFFFF);
        sp54->unk24->unk10 = (sp64 - gEntitiesNextPosYArray[omCurrentObj->objId]) + 20.0f;
        func_80111ECC(sp54);
        if (func_80110B00(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp3A;
            sp5C->unk43 = sp3B;
        } else if (func_80110FD4(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp3A;
            sp5C->unk43 = sp3B;
        } else if (func_80110150(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp3A;
            sp5C->unk43 = sp3B;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            sp5C->unk43 = 0;
        }
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        var_v1_2 = omCurrentObj->objId;
        temp_a0 = D_800E83E0[var_v1_2];
        switch (temp_a0) {                          /* irregular */
            case 1:
                gEntityFuncListIDArray[var_v1_2] = 5;
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCE1C_ovl14);
                return 1;
            case 2:
                play_sound(0x189);
                return 1;
            default:
                var_a0_2 = D_800E9AA0[var_v1_2];
                sp6C = 0;
                goto block_32;
        }
    } else {
block_32:
        if (var_a0_2 & 0x10) {
            sp58 = func_801117BC(&D_801D9FC0, var_v1_2);
            func_800B2340(&sp60, sp34, 0xFFFF);
            sp58->unk20->unk10 = (sp64 - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
            func_80111C4C(sp58);
        }
        return sp6C;
    }
}
/* Warning: struct DObj is not defined (only forward-declared) */
/* Warning: struct EntityThing800E9AA0 is not defined (only forward-declared) */
#else
GLOBAL_ASM("asm/non_matchings/ovl14/43.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

? func_801DEC34_ovl14(GObj *arg0) {
    u8 sp18;

    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801D9E34, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp24, sp18, sp19, 0xF);
        return 1;
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/44.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c

? func_801DECAC_ovl14(GObj *arg0) {
    ? sp18;

    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801D9DC8, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp24, 0, 0, 0x10);
        return 1;
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/45.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
void func_801DED24_ovl14(void) {
    s32 *temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    u32 temp_a2;

    do {
        temp_v0 = random_soft_s32_range(3);
        temp_a0 = &D_800E98E0[omCurrentObj->objId];
    } while (temp_v0 == *temp_a0);
    *temp_a0 = temp_v0;
    temp_a2 = omCurrentObj->objId;
    temp_a1 = D_800E98E0[temp_a2];
    switch (temp_a1) {                              /* irregular */
        case 0:
            gEntityFuncListIDArray[temp_a2] = 2;
            return;
        case 1:
            gEntityFuncListIDArray[temp_a2] = 3;
            return;
        case 2:
            gEntityFuncListIDArray[temp_a2] = 4;
            return;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/46.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
static ? D_801E300C_ovl14;                          /* unable to generate initializer; const */

s32 func_801DEDE8_ovl14(void) {
    f32 sp34;
    s32 sp30;
    s32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v0;

    temp_v0 = request_track_general(0x17, 0x1E, 0x50);
    if ((temp_v0 >= 0x3C) || (temp_v0 == -1)) {
        utilPrintf(&D_801E300C_ovl14, temp_v0);
        func_800B1900(temp_v0 & 0xFFFF);
        return -1;
    }
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 0;
    D_800E77A0[temp_v0] = 0x2C;
    D_800E7880[temp_v0] = 4;
    temp_f0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = temp_f0;
    gEntitiesNextPosXArray[temp_v0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[temp_v0] = temp_f0_2;
    gEntitiesNextPosYArray[temp_v0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = temp_f0_3;
    gEntitiesNextPosZArray[temp_v0] = temp_f0_3;
    D_800E8E60[temp_v0] = 0;
    sp30 = D_800E5F90[omCurrentObj->objId];
    sp28 = temp_v0 * 4;
    sp34 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp30, (random_soft_s32_range(3) - 1) * 40.0f) == 0) {
        *(D_800E6150 + sp28) = sp30;
        *(D_800E5F90 + sp28) = sp30;
        *(D_800E6D90 + sp28) = sp34;
        *(D_800E6BD0 + sp28) = sp34;
    } else {
        *(D_800E5F90 + sp28) = D_800E5F90[omCurrentObj->objId];
        *(D_800E6BD0 + sp28) = D_800E6BD0[omCurrentObj->objId];
    }
    return temp_v0;
}
#else
const char D_801E300C_ovl14[36] = "enemy req over 18. Track Num:%d\n";
GLOBAL_ASM("asm/non_matchings/ovl14/47.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
static ? D_801E3030_ovl14;                          /* unable to generate initializer; const */

s32 func_801DF01C_ovl14(f32 arg0) {
    f32 sp34;
    s32 sp30;
    s32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v0;

    temp_v0 = request_track_general(0x1A, 0xE, 0x50);
    if ((temp_v0 >= 0x1E) || (temp_v0 == -1)) {
        utilPrintf(&D_801E3030_ovl14, temp_v0);
        func_800B1900(temp_v0 & 0xFFFF);
        return -1;
    }
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 4;
    D_800E77A0[temp_v0] = 0x2C;
    D_800E7880[temp_v0] = 0;
    temp_f0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = temp_f0;
    gEntitiesNextPosXArray[temp_v0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[temp_v0] = temp_f0_2;
    gEntitiesNextPosYArray[temp_v0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = temp_f0_3;
    gEntitiesNextPosZArray[temp_v0] = temp_f0_3;
    D_800E8E60[omCurrentObj->objId] = 0;
    sp30 = D_800E5F90[omCurrentObj->objId];
    sp28 = temp_v0 * 4;
    sp34 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp30, random_soft_s32_range(2) * 40.0f * arg0) == 0) {
        *(D_800E6150 + sp28) = sp30;
        *(D_800E5F90 + sp28) = sp30;
        *(D_800E6D90 + sp28) = sp34;
        *(D_800E6BD0 + sp28) = sp34;
    } else {
        *(D_800E5F90 + sp28) = D_800E5F90[omCurrentObj->objId];
        *(D_800E6BD0 + sp28) = D_800E6BD0[omCurrentObj->objId];
    }
    *(D_800EC2E0 + sp28) = random_soft_s32_range(3);
    *(D_800EC660 + sp28) = arg0;
    return temp_v0;
}
#else
const char D_801E3030_ovl14[] = "eneshot req over 18. Track Num:%d\n";
GLOBAL_ASM("asm/non_matchings/ovl14/48.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit 08138748803d75e73e4a94bb0c619a273754ee9c
static ? D_801E3054_ovl14;                          /* unable to generate initializer; const */

s32 func_801DF290_ovl14(void) {
    f32 sp34;
    s32 sp30;
    s32 sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v0;

    temp_v0 = request_track_general(0x1A, 0xE, 0x50);
    if ((temp_v0 >= 0x1E) || (temp_v0 == -1)) {
        utilPrintf(&D_801E3054_ovl14, temp_v0);
        func_800B1900(temp_v0 & 0xFFFF);
        return -1;
    }
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 4;
    D_800E77A0[temp_v0] = 0x2D;
    D_800E7880[temp_v0] = 0;
    temp_f0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = temp_f0;
    gEntitiesNextPosXArray[temp_v0] = temp_f0;
    temp_f0_2 = gEntitiesNextPosYArray[omCurrentObj->objId] + 360.0f;
    gEntitiesPosYArray[temp_v0] = temp_f0_2;
    gEntitiesNextPosYArray[temp_v0] = temp_f0_2;
    temp_f0_3 = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = temp_f0_3;
    gEntitiesNextPosZArray[temp_v0] = temp_f0_3;
    D_800E8E60[omCurrentObj->objId] = 0;
    sp30 = D_800E5F90[omCurrentObj->objId];
    sp24 = temp_v0 * 4;
    sp34 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888(&sp30, D_800E6A10[omCurrentObj->objId] * ((random_soft_s32_range(0x10) - 1) * 40.0f)) == 0) {
        *(D_800E6150 + sp24) = sp30;
        *(D_800E5F90 + sp24) = sp30;
        *(D_800E6D90 + sp24) = sp34;
        *(D_800E6BD0 + sp24) = sp34;
    } else {
        *(D_800E5F90 + sp24) = D_800E5F90[omCurrentObj->objId];
        *(D_800E6BD0 + sp24) = D_800E6BD0[omCurrentObj->objId];
    }
    *(D_800EC2E0 + sp24) = random_soft_s32_range(3);
    return temp_v0;
}
#else
const char D_801E3054_ovl14[] = "eneshot req over 18. Track Num:%d\n";
GLOBAL_ASM("asm/non_matchings/ovl14/49.s")
#endif

void func_801DF514_ovl14(void) {
    s32 temp_v0;

    temp_v0 = D_800E9FE0[omCurrentObj->objId].as_s32;
    if (temp_v0 != -1) {
        func_800A8578(temp_v0 | 2);
    }
    D_800E9FE0[omCurrentObj->objId].as_s32 = func_800A94F4(0x1044D);
}

void func_801DF580_ovl14(f32 arg0) {
    s32 **temp_s0;

    temp_s0 = *((s32***)D_800E9FE0[omCurrentObj->objId].as_ptr);
    if (D_800DFBD0[omCurrentObj->objId][4]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->unk80, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->unk80, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->unk80, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->unk80, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->unk80, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->unk80, *temp_s0[9], arg0);
    }
}

void func_801DF720_ovl14(void) {
    D_800EC2E0[omCurrentObj->objId].as_s32 = func_800A94F4(0x1044E);
}

void func_801DF75C_ovl14(f32 arg0) {
    s32 **temp_s0;

    temp_s0 = *((s32***)D_800EC2E0[omCurrentObj->objId].as_ptr);
    if (D_800DFBD0[omCurrentObj->objId][4]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->unk80, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->unk80, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->unk80, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->unk80, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->unk80, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->unk80 != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->unk80, *temp_s0[9], arg0);
    }
}

#ifdef MIPS_TO_C
void func_801DF8FC_ovl14(? arg1) {
    ? *var_s0_2;
    UserData8000BE90 *var_v0;
    s32 **var_s2;
    s32 *temp_v1;
    s32 *var_s1;
    s32 temp_a1;
    s32 var_s0;
    struct UnkStruct8004A7C4_3C *var_s3;

    if (func_800A9B48() != 0) {
        var_s0 = 0;
        var_s3 = omCurrentObj->unk3C;
        var_s2 = *D_800DF850[omCurrentObj->objId];
        do {
            var_v0 = animModelTreeNextNode(var_s3);
            var_s0 += 1;
            var_s3 = var_v0;
        } while (var_s0 != 0xA);
        if (var_v0 != NULL) {
            do {
                if (var_s2 != NULL) {
                    temp_v1 = *var_s2;
                    if (temp_v1 != NULL) {
                        var_s0_2 = var_v0->unk80;
                        var_s1 = temp_v1;
                        if (var_s0_2 != NULL) {
                            do {
                                temp_a1 = *var_s1;
                                if (temp_a1 != 0) {
                                    animSetTextureAnimation(var_s0_2, temp_a1, arg1);
                                }
                                var_s0_2 = *var_s0_2;
                                var_s1 += 4;
                            } while (var_s0_2 != NULL);
                        }
                    }
                    var_s2 += 4;
                }
                var_v0 = animModelTreeNextNode(var_s3);
                var_s3 = var_v0;
            } while (var_v0 != NULL);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/54.s")
#endif

void func_801DF9EC_ovl14(GObj *arg0) {
    func_800B19F4(0x71, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DFA5C_ovl14(arg0);
}

FUNCLIST D_801E2F14_ovl14 = {
    func_801DFB48_ovl14,
    func_801DFC30_ovl14
};
void func_801DFA5C_ovl14(GObj *arg0) {
    while(1) {
        D_800DF150[omCurrentObj->objId] = func_801DFB00_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_801E2F14_ovl14);
    }
}

FUNCLIST D_801E2F1C_ovl14 = {
    func_801DFC28_ovl14,
    func_801DFD7C_ovl14,
};
void func_801DFB00_ovl14(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, D_801E2F1C_ovl14);
}

#ifdef NON_MATCHING
void func_801DFB48_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 0;
    func_801129AC();
    func_800FA414(2);
    D_80129138 = omCurrentObj->objId;
    D_800E6A10[omCurrentObj->objId] = 1;
    do {
        ohSleep(1);
    } while (D_800E9C60[D_800E0D50[omCurrentObj->objId]] != 1);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/58.s")
#endif

void func_801DFC28_ovl14(GObj *arg0) {

}

#ifdef NEEDS_RODATA
// D_801E30B4_ovl14 to D_801E30BC_ovl14
void func_801DFC30_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.30967742f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.096774f;
    ohSleep(0x122);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.30967742f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl14/60.s")
#endif

void func_801DFD7C_ovl14(GObj *arg0) {

}
