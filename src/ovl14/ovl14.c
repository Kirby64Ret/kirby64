#include <ultra64.h>
#include <macros.h>
#define D_800E9FE0_PTR
#include "ovl1/ovl1_6.h"
#include "GObj.h"

#include "buffers.h"
#include "ovl14.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "ovl2/ovl2_8.h"

/* 0.30967742f = 0.30967742f : now emitted by this TU */
/* 3.096774f = 3.096774f : now emitted by this TU */
/* -0.30967742f = -0.30967742f : now emitted by this TU */

extern u32 D_801CB470;
extern s32 D_800D7154;

/* The segment's rodata is an unmigrated asm block, so the format string must
   be referenced as a data symbol; writing the literal emits a second copy. */
/* "enemy req over 18. Track Num:%d\n" = "enemy req over 18. Track Num:%d\n" : now emitted by this TU */

void func_801DB1E0_ovl14(GObj *arg0) {
    func_8019BB58_ovl7();
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 3, &D_801E2EA0_ovl14);
}

extern void func_800B7790(GObj *);
extern void func_800A9760(s32);
void func_801DB228_ovl14(GObj *arg0) {
    D_800EC120[omCurrentObj->objId] = func_801DC954_ovl14();
    D_800DEF90[omCurrentObj->objId] = func_800B7790;
    func_801A0D50_ovl7(func_801DB3B0_ovl14);
    func_800A9760(0x1006B);
    func_801DCB48_ovl14();
    D_800E8E60[omCurrentObj->objId] = 1;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] - 20.0f;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[omCurrentObj->objId] - 800.0f;
    D_800E98E0[omCurrentObj->objId] = 2;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800EC660[omCurrentObj->objId] = 0.0;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DB3B0_ovl14(arg0);
}

void func_801DB3B0_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DB460_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 7, D_801E2EAC_ovl14);
    }
}

extern f32 D_800D6E5C;
extern void func_800BC11C(f32);
extern void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
extern struct GObjProcess *gEntityGObjProcessArray[];

void func_801DB460_ovl14(GObj *arg0) {
    s32 temp;

    D_800EA520[omCurrentObj->objId] = D_800EA520[omCurrentObj->objId] - 1;
    if (D_800EA520[omCurrentObj->objId] <= 0) {
        D_800EA520[omCurrentObj->objId] = 0x23;
        play_sound(0x18D);
    }
    if (0.0f != D_800EC660[omCurrentObj->objId]) {
        D_800E7B20[omCurrentObj->objId] =
            D_800E7B20[omCurrentObj->objId] - D_800EC660[omCurrentObj->objId];
        D_800EC660[omCurrentObj->objId] = 0.0;
        D_800E7CE0[omCurrentObj->objId] = 0x2D;
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        play_sound(0x189);
    }
    temp = D_800E7CE0[omCurrentObj->objId];
    if (temp != 0) {
        if (((temp % 4) < 2) || ((f32) temp <= 1.0f)) {
            func_801DE548_ovl14(arg0, 0.0);
        } else {
            func_801DE548_ovl14(arg0, 1.0);
        }
    }
    if (D_800E7B20[omCurrentObj->objId] <= 0.0f) {
        gEntityFuncListIDArray[omCurrentObj->objId] = 6;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DB3B0_ovl14);
    } else {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 7, D_801E2EC8_ovl14);
    }
}

void func_801DB684_ovl14(GObj *arg0) {
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

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

void func_801DB804_ovl14(GObj *arg0) {
    s32 r;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800EBF60[omCurrentObj->objId] = 0;
    D_800EBBE0[omCurrentObj->objId] = D_800EBDA0[omCurrentObj->objId] = D_800EBF60[omCurrentObj->objId];
    func_800A9EA4(0x10438);
    D_800EBBE0[omCurrentObj->objId] = func_801DC38C_ovl14(random_soft_s32_range(5));
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        ohSleep(0x14);
        do {
            r = random_soft_s32_range(5);
        } while (r == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32);
        D_800EBDA0[omCurrentObj->objId] = func_801DC38C_ovl14(r);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            ohSleep(0x14);
            do {
                r = random_soft_s32_range(5);
            } while ((r == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32) ||
                     (r == D_800EC2E0[D_800EBDA0[omCurrentObj->objId]].as_s32));
            D_800EBF60[omCurrentObj->objId] = func_801DC38C_ovl14(r);
        }
    }
    func_801DC2A0_ovl14();
}

void func_801DB9F8_ovl14(GObj *arg0) {

}

extern void func_800AA608(struct DObj *, s32, f32, u32, f32);
extern void func_800A9F98(s32, f32);

void func_801DBA00_ovl14(void *arg0) {
    s32 temp;
    s32 sp20;

    D_800DDFD0[omCurrentObj->objId] = 3;
    D_800EBDA0[omCurrentObj->objId] = 0;
    D_800EBBE0[omCurrentObj->objId] = D_800EBDA0[omCurrentObj->objId];
    func_800AA608(((GObj *) arg0)->data.dobj->firstChild, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 6.0f);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    temp = random_soft_s32_range(4);
    if (temp == 3) {
        temp = 1;
    }
    sp20 = random_soft_s32_range(2);
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(0, temp);
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = 0;
        D_800EC4A0[D_800EBBE0[omCurrentObj->objId]] = sp20;
        temp += 2;
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(0, temp);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            D_800EC2E0[D_800EBDA0[omCurrentObj->objId]].as_s32 = 1;
            D_800EC4A0[D_800EBDA0[omCurrentObj->objId]] = sp20 ^ 1;
        }
    }
    ohSleep(0x14);
    func_800A9EA4(0x10438);
    ohSleep(0x32);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DBC2C_ovl14(GObj *arg0) {

}

void func_801DBC34_ovl14(void *arg0) {
    s32 r;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800EBF60[omCurrentObj->objId] = 0;
    D_800EBBE0[omCurrentObj->objId] = D_800EBDA0[omCurrentObj->objId] = D_800EBF60[omCurrentObj->objId];
    func_800AA608(((GObj *) arg0)->data.dobj->firstChild, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 6.0f);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(1, random_soft_s32_range(4));
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        do {
            r = random_soft_s32_range(4);
        } while (r == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32);
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(1, r);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            do {
                r = random_soft_s32_range(4);
            } while ((r == D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32) ||
                     (r == D_800EC2E0[D_800EBDA0[omCurrentObj->objId]].as_s32));
            D_800EBF60[omCurrentObj->objId] = func_801DC674_ovl14(1, r);
            play_sound(0x18A);
        }
    }
    ohSleep(0x14);
    func_800A9EA4(0x10438);
    ohSleep(0x3C);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DBEA4_ovl14(GObj *arg0) {

}

#ifdef NON_MATCHING
/* 36/196. Guarded by the manager: converted but not byte-exact, and it
   grew ovl14.c by 32 bytes, shifting every segment after it. */
void func_801DBEAC_ovl14(void *arg0) {
    s32 r;
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 5;
    D_800EBF60[omCurrentObj->objId] = 0;
    D_800EBBE0[omCurrentObj->objId] = D_800EBDA0[omCurrentObj->objId] = D_800EBF60[omCurrentObj->objId];
    func_800AA608(((GObj *) arg0)->data.dobj->firstChild, 0x10430, 6.0f, 0x1006B, 6.0f);
    func_800A9F98(0x10430, 6.0f);
    ohSleep(0x22);
    play_sound(0x1AA);
    func_800AF27C();
    func_800AA018(0x10432);
    r = random_soft_s32_range(4);
    D_800EBBE0[omCurrentObj->objId] = func_801DC674_ovl14(2, r);
    if (D_800EBBE0[omCurrentObj->objId] != -1) {
        D_800EBBE0[omCurrentObj->objId] = r;
        ohSleep(0x14);
        func_800A9EA4(0x10438);
        ohSleep(random_soft_s32_range(0x1E) + 0xA);
        do {
            r = random_soft_s32_range(4);
        } while (r == D_800EBBE0[omCurrentObj->objId]);
        D_800EBDA0[omCurrentObj->objId] = func_801DC674_ovl14(2, r);
        if (D_800EBDA0[omCurrentObj->objId] != -1) {
            D_800EBDA0[omCurrentObj->objId] = r;
            ohSleep(random_soft_s32_range(0x1E) + 0x1E);
            do {
                r = random_soft_s32_range(4);
            } while ((r == D_800EBBE0[omCurrentObj->objId]) || (r == D_800EBDA0[omCurrentObj->objId]));
            D_800EBF60[omCurrentObj->objId] = func_801DC674_ovl14(2, r);
            if (D_800EBDA0[omCurrentObj->objId] != -1) {
                D_800EBF60[omCurrentObj->objId] = r;
                ohSleep(random_soft_s32_range(0x1E) + 0x1E);
                i = 0;
                while (1) {
                    if (i != D_800EBBE0[omCurrentObj->objId]) {
                        if (i != D_800EBDA0[omCurrentObj->objId]) {
                            if (i != D_800EBF60[omCurrentObj->objId]) {
                                break;
                            }
                        }
                    }
                    i++;
                }
                func_801DC674_ovl14(2, i);
            }
        }
    }
    ohSleep(0x28);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DBEAC_ovl14.s")
#endif

void func_801DC1BC_ovl14(GObj *arg0) {

}

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

void func_801DC2A0_ovl14(void) {
    s32 rand;

    while (1) {
        rand = random_soft_s32_range(8);
        if (rand < 2) {
            rand = 0;
        } else if (rand < 5) {
            rand = 1;
        } else {
            rand = 2;
        }
        if (D_800E98E0[omCurrentObj->objId] != rand) {
            break;
        }
    }
    D_800E98E0[omCurrentObj->objId] = rand;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            break;
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            break;
        case 2:
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            break;
    }
}

struct Ovl14TrackPosition {
    s32 unk0;
    f32 unk4;
};

s32 func_801DC38C_ovl14(s32 arg0) {
    s32 track;
    struct Ovl14TrackPosition sp24;

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
            gEntitiesPosXArray[track] = -320.0f;
            gEntitiesNextPosXArray[track] = -320.0f;
            break;
        case 1:
            gEntitiesPosXArray[track] = -160.0f;
            gEntitiesNextPosXArray[track] = -160.0f;
            break;
        case 2:
            gEntitiesPosXArray[track] = 0.0f;
            gEntitiesNextPosXArray[track] = 0.0f;
            break;
        case 3:
            gEntitiesPosXArray[track] = 160.0f;
            gEntitiesNextPosXArray[track] = 160.0f;
            break;
        case 4:
            gEntitiesPosXArray[track] = 320.0f;
            gEntitiesNextPosXArray[track] = 320.0f;
            break;
        default:
            while (1) {}
    }
    gEntitiesPosYArray[track] = 0.0;
    gEntitiesNextPosYArray[track] = 0.0;
    gEntitiesPosZArray[track] = 0.0;
    gEntitiesNextPosZArray[track] = 0.0;
    D_800E8E60[omCurrentObj->objId] = 0;
    sp24.unk0 = D_800E5F90[omCurrentObj->objId];
    sp24.unk4 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888((s32 *) &sp24, gEntitiesNextPosXArray[track]) == 0) {
        D_800E5F90[track] = D_800E6150[track] = sp24.unk0;
        D_800E6BD0[track] = D_800E6D90[track] = sp24.unk4;
    } else {
        D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
    }
    D_800EC2E0[track].as_s32 = arg0;
    play_sound(0x191);
    return track;
}



s32 func_801DC674_ovl14(s32 arg0, s32 arg1) {
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
                gEntitiesPosXArray[track] = -320.0f;
                gEntitiesNextPosXArray[track] = -320.0f;
                break;
            case 1:
                gEntitiesPosXArray[track] = -160.0f;
                gEntitiesNextPosXArray[track] = -160.0f;
                break;
            case 2:
                gEntitiesPosXArray[track] = 0.0f;
                gEntitiesNextPosXArray[track] = 0.0f;
                break;
            case 3:
                gEntitiesPosXArray[track] = 160.0f;
                gEntitiesNextPosXArray[track] = 160.0f;
                break;
            case 4:
                gEntitiesPosXArray[track] = 320.0f;
                gEntitiesNextPosXArray[track] = 320.0f;
                break;
        }
    } else {
        switch (arg1) {
            case 0:
                gEntitiesPosXArray[track] = -240.0f;
                gEntitiesNextPosXArray[track] = -240.0f;
                break;
            case 1:
                gEntitiesPosXArray[track] = -80.0f;
                gEntitiesNextPosXArray[track] = -80.0f;
                break;
            case 2:
                gEntitiesPosXArray[track] = 80.0f;
                gEntitiesNextPosXArray[track] = 80.0f;
                break;
            case 3:
                gEntitiesPosXArray[track] = 240.0f;
                gEntitiesNextPosXArray[track] = 240.0f;
                break;
        }
    }
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[track] = 1;
    D_800EC2E0[track].as_s32 = arg1;
    return track;
}


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

extern void func_801AE7E0_ovl7(s32);
extern void func_801051AC(struct EnemyProbe *);
void func_801DCBCC_ovl14(GObj *arg0) {
    struct Ovl14TrackPosition sp30;
    struct EnemyRecord *rec;
    struct EnemyProbe *probe;

    rec = D_800E1B50[omCurrentObj->objId];
    probe = rec->unk84;
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_801A0D50_ovl7(func_801DCE1C_ovl14);
    func_800A9760(0x1006C);
    func_801AE7E0_ovl7(0xE);
    func_801DF514_ovl14();
    func_801DF720_ovl14();
    D_800DDA90[omCurrentObj->objId] = 0x24;
    D_800D7154 = -1;
    sp30.unk0 = D_800E5F90[omCurrentObj->objId];
    sp30.unk4 = D_800E6BD0[omCurrentObj->objId];
    if (func_800F9888((s32 *) &sp30, -320.0f) == 0) {
        D_800E6150[omCurrentObj->objId] = sp30.unk0;
        D_800E5F90[omCurrentObj->objId] = D_800E6150[omCurrentObj->objId];
        D_800E6D90[omCurrentObj->objId] = sp30.unk4;
        D_800E6BD0[omCurrentObj->objId] = D_800E6D90[omCurrentObj->objId];
    }
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E7B20[omCurrentObj->objId] = rec->unk88->rangeGate;
    D_800E9AA0[omCurrentObj->objId] = 0;
    D_800D7098.unk10 = 0;
    if (probe != NULL) {
        probe->posX = gEntitiesNextPosXArray[omCurrentObj->objId];
        probe->posY = gEntitiesNextPosYArray[omCurrentObj->objId];
        probe->posZ = gEntitiesNextPosZArray[omCurrentObj->objId];
        func_801051AC(probe);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DCE1C_ovl14(arg0);
}

void func_801DCE1C_ovl14(GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DCEC0_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 6, D_801E2EE4_ovl14);
    }
}

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

void func_801DD018_ovl14(GObj *arg0) {
    struct EnemyRecord *rec;

    rec = D_800E1B50[omCurrentObj->objId];
    D_800DDFD0[omCurrentObj->objId] = 0;
    rec->unk98 = &D_801CB470;
    func_801DF580_ovl14(0.0f);
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
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    func_800AF27C();
    func_800AA018(0x10455);
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.3151515126f;
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
    D_800E98E0[omCurrentObj->objId] = 0;
    while (D_800E98E0[omCurrentObj->objId] < 0x136) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.151515245f;
        if (D_800E98E0[omCurrentObj->objId] == 5) {
            func_801DCB00_ovl14(1);
            play_sound(0x1CD);
        }
        if (D_800E98E0[omCurrentObj->objId] == 0x37) {
            func_801DCB00_ovl14(2);
            play_sound(0x1CD);
        }
        if (D_800E98E0[omCurrentObj->objId] == 0x69) {
            func_801DCB00_ovl14(3);
            play_sound(0x1CD);
        }
        if (D_800E98E0[omCurrentObj->objId] == 0xA) {
            D_800E9C60[omCurrentObj->objId] = 1;
        }
        if (-160.0f < gEntitiesNextPosXArray[omCurrentObj->objId]) {
            if (gEntitiesNextPosYArray[omCurrentObj->objId] < D_800EA6E0[omCurrentObj->objId]) {
                gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[omCurrentObj->objId] + 5.0f;
                func_800FB914(0);
            }
        }
        ohSleep(1);
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[omCurrentObj->objId] + 1;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.3151515126f;
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    ohSleep(0xA);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    func_801A2558_ovl7(rec->unk88->unk10);
    D_800E9E20[omCurrentObj->objId] = 1;
    ohSleep(0x3C);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    func_800AF27C();
    func_801DED24_ovl14();
}

void func_801DD4C8_ovl14(GObj *arg0) {

}

void func_801DD4D0_ovl14(GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    ((s32*)&D_800D7098)[4] = 0;
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
/* FACTORY: 6/400 measured, INSTRUCTION COUNT EXACT.  The whole residue is one
   caller-saved temp name: the ROM parks &((s32 *)D_800E9AA0)[objId] in $v0 for
   the two read-modify-write flag statements at the tail, IDO picks $a1.  Swept
   and rejected: the expanded `x = x | 8` form, `*(s32 *)&D_800E9AA0[i]`,
   `*((s32 *)D_800E9AA0 + i)`, a u32 element type, an explicit `s32 *flags`
   local (that one costs 2 instructions and rotates $v1->$a1 across the whole
   tail, 72/402), a second f32 local for the second chain, and swapping the
   local declaration order -- all six give the identical $a1.
   Worth keeping from this derivation: `gen->unk4C->pos.x` must be written
   `gEntitiesNextPosXArray[i] + (D_800E6A10[i] * 90.0f)`, NOT the other way
   round -- lever 2, and that single operand swap was worth 20 of the 26 words
   the first compile was out (26/400 -> 6/400), because the FP temp names of
   all six emitter stores cascade off it. */
struct Ovl14GenXform {
    u8 filler0[4];
    Vector pos;
    Vector angle;
};

struct Ovl14Generator {
    u8 filler0[0x4C];
    struct Ovl14GenXform *unk4C;
};

void func_801DD590_ovl14(GObj *arg0) {
    struct Ovl14Generator *gen;
    f32 spin;

    D_800DDFD0[omCurrentObj->objId] = 2;
    D_800D7098.unk10 = 1;
    if (arg0->animTimer < 4.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 8.0f) {
        spin = 6.0f;
    } else if (arg0->animTimer < 12.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 16.0f) {
        spin = 2.0f;
    } else if (arg0->animTimer < 20.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 24.0f) {
        spin = 14.0f;
    } else if (arg0->animTimer < 28.0f) {
        spin = 12.0f;
    } else {
        spin = 10.0f;
    }
    func_801DF75C_ovl14(spin);
    func_800AA018(0x1043D);
    func_800AA018(0x1043E);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9D80;
    ohSleep(0x24);
    play_sound(0x18A);
    ohSleep(0xF);
    D_800EC4A0[omCurrentObj->objId] = func_800A8234(6, 3, 6);
    gen = (struct Ovl14Generator *) D_800EC4A0[omCurrentObj->objId];
    if (gen->unk4C != NULL) {
        gen->unk4C->pos.x = gEntitiesNextPosXArray[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * 90.0f);
        gen->unk4C->pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] + 170.0f;
        gen->unk4C->pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        gen->unk4C->angle.x = gEntitiesAngleXArray[omCurrentObj->objId];
        gen->unk4C->angle.y = gEntitiesAngleYArray[omCurrentObj->objId];
        gen->unk4C->angle.z = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    func_800AF27C();
    func_800AA018(0x1043F);
    func_800AA018(0x10440);
    func_800AF27C();
    if (arg0->animTimer < 2.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 4.0f) {
        spin = 12.0f;
    } else if (arg0->animTimer < 6.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 8.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 10.0f) {
        spin = 0.0f;
    } else if (arg0->animTimer < 12.0f) {
        spin = 28.0f;
    } else if (arg0->animTimer < 14.0f) {
        spin = 24.0f;
    } else if (arg0->animTimer < 16.0f) {
        spin = 20.0f;
    } else if (arg0->animTimer < 18.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 20.0f) {
        spin = 12.0f;
    } else if (arg0->animTimer < 22.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 24.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 26.0f) {
        spin = 0.0f;
    } else if (arg0->animTimer < 28.0f) {
        spin = 28.0f;
    } else if (arg0->animTimer < 30.0f) {
        spin = 24.0f;
    } else {
        spin = 20.0f;
    }
    func_801DF580_ovl14(spin);
    func_800AA018(0x10441);
    func_800AA018(0x10442);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 8;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    play_sound(0x18B);
    func_800AF27C();
    func_800AF27C();
    func_800AF27C();
    func_800AA018(0x10443);
    func_800AA018(0x10444);
    ohSleep(5);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] &= ~8;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#elif defined(PORT)
/* PORT: behavioural port of the listing.  Two things diverge from the N64 arm:
   the generator/emitter node offsets (the host's 8-byte `next` pointer moves
   the emitter pointer from +0x4C to +0x58 and the vectors from +0x4/+0x10 to
   +0x8/+0x14 -- the LP64 view ovl1_2_2.c pins with pc_gennode_check), and
   D_800EC4A0 is a 4-byte slot, so the handle is stored as the tree's
   deliberately truncated sub-4GiB pointer.  The N64 code dereferences the
   generator unchecked; this arm guards NULL. */
struct PcOvl14Emitter {
    struct PcOvl14Emitter *next;
    Vector pos;
    Vector angle;
};

struct PcOvl14Gen {
    u8 pad0[0x58];
    struct PcOvl14Emitter *xf;
};

struct PcOvl14Gen *func_800A8234(s32, s32, s32);

void func_801DD590_ovl14(GObj *arg0) {
    struct PcOvl14Gen *gen;
    f32 spin;
    s32 objId;

    objId = omCurrentObj->objId;
    D_800DDFD0[objId] = 2;
    D_800D7098.unk10 = 1;
    if (arg0->animTimer < 4.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 8.0f) {
        spin = 6.0f;
    } else if (arg0->animTimer < 12.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 16.0f) {
        spin = 2.0f;
    } else if (arg0->animTimer < 20.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 24.0f) {
        spin = 14.0f;
    } else if (arg0->animTimer < 28.0f) {
        spin = 12.0f;
    } else {
        spin = 10.0f;
    }
    func_801DF75C_ovl14(spin);
    func_800AA018(0x1043D);
    func_800AA018(0x1043E);
    D_800E9AA0[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = (s32) (uintptr_t) &D_801D9D80;
    ohSleep(0x24);
    play_sound(0x18A);
    ohSleep(0xF);
    gen = func_800A8234(6, 3, 6);
    D_800EC4A0[omCurrentObj->objId] = (s32) (uintptr_t) gen;
    if ((gen != NULL) && (gen->xf != NULL)) {
        gen->xf->pos.x = gEntitiesNextPosXArray[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * 90.0f);
        gen->xf->pos.y = gEntitiesNextPosYArray[omCurrentObj->objId] + 170.0f;
        gen->xf->pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        gen->xf->angle.x = gEntitiesAngleXArray[omCurrentObj->objId];
        gen->xf->angle.y = gEntitiesAngleYArray[omCurrentObj->objId];
        gen->xf->angle.z = gEntitiesAngleZArray[omCurrentObj->objId];
    }
    func_800AF27C();
    func_800AA018(0x1043F);
    func_800AA018(0x10440);
    func_800AF27C();
    if (arg0->animTimer < 2.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 4.0f) {
        spin = 12.0f;
    } else if (arg0->animTimer < 6.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 8.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 10.0f) {
        spin = 0.0f;
    } else if (arg0->animTimer < 12.0f) {
        spin = 28.0f;
    } else if (arg0->animTimer < 14.0f) {
        spin = 24.0f;
    } else if (arg0->animTimer < 16.0f) {
        spin = 20.0f;
    } else if (arg0->animTimer < 18.0f) {
        spin = 16.0f;
    } else if (arg0->animTimer < 20.0f) {
        spin = 12.0f;
    } else if (arg0->animTimer < 22.0f) {
        spin = 8.0f;
    } else if (arg0->animTimer < 24.0f) {
        spin = 4.0f;
    } else if (arg0->animTimer < 26.0f) {
        spin = 0.0f;
    } else if (arg0->animTimer < 28.0f) {
        spin = 28.0f;
    } else if (arg0->animTimer < 30.0f) {
        spin = 24.0f;
    } else {
        spin = 20.0f;
    }
    func_801DF580_ovl14(spin);
    func_800AA018(0x10441);
    func_800AA018(0x10442);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 8;
    D_800EA360[omCurrentObj->objId] = (s32) (uintptr_t) &D_801D9CCC;
    play_sound(0x18B);
    func_800AF27C();
    func_800AF27C();
    func_800AF27C();
    func_800AA018(0x10443);
    func_800AA018(0x10444);
    ohSleep(5);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] &= ~8;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DD590_ovl14.s")
#endif

void func_801DDBD0_ovl14(GObj *arg0) {

}

void func_801DDBD8_ovl14(GObj *arg0) {
    s32 pad[4];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ((s32*)&D_800D7098)[4] = 0;
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

s32 func_801DEDE8_ovl14(void);
s32 func_801DF01C_ovl14(f32);
#ifdef MIPS_TO_C
/* FACTORY: 15/236 measured (verify.py on a scratch copy prints 16; ONE of
   those is a phantom own-.rodata note -- ovl14.c is a dotted
   `.rodata, ovl14/ovl14` segment, so the late_rodata floats it emits ARE the
   ROM's 0.05f/65535.0f.  The second own-.rodata line, at word 138, is a real
   FP-register difference that merely happens to sit on such a reference.)
   INSTRUCTION COUNT and FRAME (0x50) EXACT; the residue is one FP temp
   rotation over the six words of `D_800E6A10[i] * (-n * rate)` and the three
   stores after it -- the ROM restarts its FP temps at $f4 and puts the
   cvt.s.w result in $f0, IDO starts at $f8 and never touches $f0.
   Derivation notes worth keeping:
   - the ROM parks the constants 4 and 3 in $s0/$s1 across calls and shares the
     3 with the loop bound.  That only happens when D_800E9AA0 is written
     through the file's `((s32 *) D_800E9AA0)[...]` spelling: with ovl1_6.h's
     `struct EntityThing800E9AA0 *[]` type the constants do not CSE with the
     s32 loop bound (lever 45) and the score is 161/236 instead of 19/236.
   - `0.05f` and `10` must be LOCALS.  Written as literals IDO folds
     `10.0f * 0.05f` to 0.5f at compile time (205/236) and the ROM's held
     $f22 / cvt.s.w-into-$f20 pair never appears.
   - two trailing unreferenced words are load-bearing: without them the frame
     is 0x48, not the ROM's 0x50 (lever 30/43).
   Swept and rejected for the FP rotation: `(f32) -n * rate`, `rate * -n`,
   the literal `-10 * rate` (65/236), a second `s32 m = -10` local (that one
   costs its own stack word, frame 0x58), and pads declared first instead of
   last (identical). */
void func_801DDE60_ovl14(GObj *arg0) {
    s32 i;
    s32 n;
    f32 rate;
    s32 pad[2];

    n = 10;
    rate = 0.05f;
    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800D7098.unk10 = 0;
    func_800AA018(0x10457);
    func_800AA018(0x10458);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x23);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
    func_800AF27C();
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (10.0f * rate);
    D_800E6850[omCurrentObj->objId] = n;
    D_800E9E20[omCurrentObj->objId] = 1;
    play_sound(0x190);
    ohSleep(0x14);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * n;
    ohSleep(0x1E);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (-n * rate);
    D_800E6850[omCurrentObj->objId] = n;
    ohSleep(0x14);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    play_sound(0x18E);
    func_800FB914(4);
    for (i = 0; i < 3; i++) {
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
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    func_800AA018(0x1044B);
    func_800AA018(0x1044C);
    ohSleep(0xA);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
    D_800EA360[omCurrentObj->objId] = &D_801D9CCC;
    ohSleep(0x14);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 1;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#elif defined(PORT)
/* PORT: same behaviour; only D_800EA360's 4-byte slot needs the tree's
   deliberately truncated sub-4GiB pointer spelling. */
void func_801DDE60_ovl14(GObj *arg0) {
    s32 i;

    D_800DDFD0[omCurrentObj->objId] = 4;
    D_800D7098.unk10 = 0;
    func_800AA018(0x10457);
    func_800AA018(0x10458);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 3;
    D_800EA360[omCurrentObj->objId] = (s32) (uintptr_t) &D_801D9CCC;
    D_800E9E20[omCurrentObj->objId] = 0;
    ohSleep(0x23);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 4;
    func_800AF27C();
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (10.0f * 0.05f);
    D_800E6850[omCurrentObj->objId] = 10.0f;
    D_800E9E20[omCurrentObj->objId] = 1;
    play_sound(0x190);
    ohSleep(0x14);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
    ohSleep(0x1E);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * (-10.0f * 0.05f);
    D_800E6850[omCurrentObj->objId] = 10.0f;
    ohSleep(0x14);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    D_800E9E20[omCurrentObj->objId] = 0;
    play_sound(0x18E);
    func_800FB914(4);
    for (i = 0; i < 3; i++) {
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
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    func_800AA018(0x1044B);
    func_800AA018(0x1044C);
    ohSleep(0xA);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] = 2;
    D_800EA360[omCurrentObj->objId] = (s32) (uintptr_t) &D_801D9CCC;
    ohSleep(0x14);
    ((s32 *) D_800E9AA0)[omCurrentObj->objId] |= 1;
    func_800AF27C();
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DDE60_ovl14.s")
#endif

void func_801DE210_ovl14(GObj *arg0) {

}

extern void func_800AF314(void);
extern void func_8019F1EC_ovl7(void);
extern void func_800AA608(struct DObj *, s32, f32, u32, f32);
extern void func_800A9F98(s32, f32);
extern void func_800AF408(void);
extern void func_801BC794_ovl7(s32);
extern void func_800AFBB4(s32, struct GObj *);
struct UnkStruct800D7118_ovl14 {
    char pad[0x3C];
    s32 unk3C;
};
extern struct UnkStruct800D7118_ovl14 D_800D7118;
void func_801DE218_ovl14(void *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE484_ovl14;
    func_800AF314();
    if (D_800DFF50[omCurrentObj->objId] == 0x1044E) {
        func_801DF580_ovl14(0.0f);
    }
    D_800D7118.unk3C = 0;
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
    func_800AA608(((GObj *) arg0)->data.dobj->firstChild, 0x10447, 10.0f, 0x1006C, 10.0f);
    func_800A9F98(0x10447, 10.0f);
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
    curObjSleepForever();
}

void func_801DE484_ovl14(GObj *arg0) {
    s32 temp_v0;

    func_801DE548_ovl14(arg0, D_800EA1A0[omCurrentObj->objId]);
    temp_v0 = D_800EA1A0[omCurrentObj->objId];
    if (temp_v0 == 0) {
        func_801DE608_ovl14(arg0, 0.5f);
    } else if (temp_v0 < 7) {
        func_801DE608_ovl14(arg0, 0.5f - (arg0->animTimer / 120.0f));
    } else {
        func_801DE608_ovl14(arg0, 0.0f);
    }
}

void func_801DE548_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            tmp->unk88 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
    }
}

void func_801DE5A8_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            *(f32 *)&tmp->unk84 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
    }
}

void func_801DE608_ovl14(GObj *arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *tmp;
    struct UnkStruct8004A7C4_3C *tmp_0 = arg0->data.ptr;

    while (tmp_0 != 0) {
        tmp = tmp_0->unk80;
        while (tmp != 0) {
            *(f32 *)&tmp->unk84 = arg1;
            tmp = tmp->unk0;
        }
        tmp_0 = animModelTreeNextNode(tmp_0);
        if ((D_800D7098.unk10 == 0) && ((u32)tmp_0 >= (u32)D_800DFBD0[omCurrentObj->objId][11])) {
            break;
        }
    }
}

/* Moved up from below func_801DE6C8_ovl14: that function needs it too.
   Type definition only -- no prototype crosses the move. */
struct Ovl14AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

struct Ovl14AnimSlot {
    u8 unk0;
    u8 pad1[3];
    s32 unk4;
    s32 unk8;
    s32 unkC;
    f32 unk10;
    u8 pad14[0x14];
};

struct Ovl14AnimObj {
    void *unk0;
    s32 unk4[6];
    struct Ovl14AnimSlot *unk1C;
    struct Ovl14AnimSlot *unk20;
    struct Ovl14AnimSlot *unk24;
};

struct Ovl14ContactInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0xC];
};

extern void func_80111550(u32);
extern struct Ovl14AnimObj *func_80111C88(s32 *, u32);
extern void func_80111ECC(struct Ovl14AnimObj *);
extern s32 func_80110150(struct Ovl14AnimInfo *);
extern s32 func_80110B00(struct Ovl14ContactInfo *);
extern s32 func_80110FD4(struct Ovl14ContactInfo *);
extern s32 func_800B2340(Vector *, struct DObj *, s32);
extern struct Ovl14AnimObj *func_801117BC(void *, u32);
extern void func_80111C4C(struct Ovl14AnimObj *);
extern s32 D_801D9E58;
extern s32 D_801D9F0C;
extern s32 D_801D9FC0;
extern s32 func_801DEC34_ovl14(GObj *);
extern s32 func_801DECAC_ovl14(GObj *);

#ifdef MIPS_TO_C
/* FACTORY: 125/346, THREE words short of the ROM's 347 (plus one spurious
   parameter home store, see below).  Structure verified instruction-for-
   instruction against the listing with a mnemonic-level diff; what remains is
   register naming plus three scheduling holes:
     - the ROM leaves a `nop` in the switch's `beq ..., 2` delay slot and puts
       `lui $a0,%hi(D_800E9AA0)` in the following `b`'s slot, deferring the
       `addu` to the merge label; IDO fills both slots and saves the nop;
     - the ROM emits `or $a1,$v1,$zero` to move objId into place for
       func_801117BC where IDO already has it in $a1;
     - the parameter.  The ROM NEVER homes $a0, i.e. this function really takes
       no argument (its only caller, func_801DCEC0_ovl14 above, calls it bare).
       But declaring it `(void)` frees $a0 for IDO, which then parks
       &D_800DFBD0 there where the ROM uses $v1, and the rename cascades:
       measured 304/346 against this arm's 125/346.  The MIPS_TO_C arm keeps
       the parameter purely because it reproduces the ROM's register pressure;
       the PORT arm below is the honest `(void)`.
   Solid findings worth keeping:
     - func_801117BC RETURNS the anim object (the ROM stores its $v0 to
       sp+0x58 in func_800B2340's delay slot and dereferences it afterwards),
       while BOTH func_800B2340 results here are DISCARDED.  m2c-shaped drafts
       read that backwards; getting it right was worth 2 words and the whole
       tail's shape.
     - the anim object's +0x1C/+0x20/+0x24 are three separate arrays of
       0x28-byte contact records (ovl2_9.c's Shape28); the ROM's 0x10/0x38/0x60
       and 0x8/0x30/0x58/0x80 runs are elements 0..3 of two different fields,
       not seven unrelated offsets.
     - `head`/`body` must be declared in that order: later locals take the
       lower stack address, and the ROM has D_800DFBD0[i][10] at 0x34 and
       [7] at 0x30. */
s32 func_801DE6C8_ovl14(GObj *arg0) {
    s32 ret;
    Vector sp60;
    struct EnemyRecord *rec;
    struct Ovl14AnimObj *obj2;
    struct Ovl14AnimObj *obj;
    struct Ovl14ContactInfo sp38;
    struct DObj *head;
    struct DObj *body;

    rec = D_800E1B50[omCurrentObj->objId];
    head = D_800DFBD0[omCurrentObj->objId][10];
    body = D_800DFBD0[omCurrentObj->objId][7];
    if (rec == NULL) {
        return 0;
    }
    if (rec->unk8C == NULL) {
        return 0;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 2) != 0) {
        if (func_801DECAC_ovl14(D_800DE350[omCurrentObj->objId]) != 0) {
            return 1;
        }
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88((s32 *) D_800EA360[omCurrentObj->objId], omCurrentObj->objId);
        func_800B2340(&sp60, head, 0xFFFF);
        obj->unk24[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
        obj->unk24[1].unk10 =
            ((sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        obj->unk24[2].unk10 =
            ((sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) == 0) {
            if (func_80110FD4(&sp38) == 0) {
                func_80110150((struct Ovl14AnimInfo *) &sp38);
            }
        }
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 4) != 0) {
        func_801DEC34_ovl14(D_800DE350[omCurrentObj->objId]);
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_801D9E58, omCurrentObj->objId));
        func_80110B00(&sp38);
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 8) != 0) {
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88(&D_801D9F0C, omCurrentObj->objId);
        obj->unk24[0].unk8 = (s32) body;
        obj->unk24[1].unk8 = (s32) body;
        obj->unk24[2].unk8 = (s32) body;
        obj->unk24[3].unk8 = (s32) body;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) == 0) {
            if (func_80110FD4(&sp38) == 0) {
                func_80110150((struct Ovl14AnimInfo *) &sp38);
            }
        }
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 1) != 0) {
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88(rec->unk8C, omCurrentObj->objId);
        func_800B2340(&sp60, body, 0xFFFF);
        obj->unk24[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) + 20.0f;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else if (func_80110FD4(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else if (func_80110150((struct Ovl14AnimInfo *) &sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            rec->unk43 = 0;
        }
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCE1C_ovl14);
            return 1;
        case 2:
            play_sound(0x189);
            return 1;
        }
        ret = 0;
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 0x10) != 0) {
        obj2 = func_801117BC(&D_801D9FC0, omCurrentObj->objId);
        func_800B2340(&sp60, head, 0xFFFF);
        obj2->unk20[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
        func_80111C4C(obj2);
    }
    return ret;
}
#elif defined(PORT)
/* PORT: same body with the signature its only caller actually uses. */
s32 func_801DE6C8_ovl14(void) {
    s32 ret;
    Vector sp60;
    struct EnemyRecord *rec;
    struct Ovl14AnimObj *obj2;
    struct Ovl14AnimObj *obj;
    struct Ovl14ContactInfo sp38;
    struct DObj *head;
    struct DObj *body;

    rec = D_800E1B50[omCurrentObj->objId];
    head = D_800DFBD0[omCurrentObj->objId][10];
    body = D_800DFBD0[omCurrentObj->objId][7];
    if (rec == NULL) {
        return 0;
    }
    if (rec->unk8C == NULL) {
        return 0;
    }
    D_800E83E0[omCurrentObj->objId] = 0;
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 2) != 0) {
        if (func_801DECAC_ovl14(D_800DE350[omCurrentObj->objId]) != 0) {
            return 1;
        }
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88((s32 *) D_800EA360[omCurrentObj->objId], omCurrentObj->objId);
        func_800B2340(&sp60, head, 0xFFFF);
        obj->unk24[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
        obj->unk24[1].unk10 =
            ((sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        obj->unk24[2].unk10 =
            ((sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) * 0.5f) + 10.0f;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) == 0) {
            if (func_80110FD4(&sp38) == 0) {
                func_80110150((struct Ovl14AnimInfo *) &sp38);
            }
        }
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 4) != 0) {
        func_801DEC34_ovl14(D_800DE350[omCurrentObj->objId]);
        func_80111550(omCurrentObj->objId);
        func_80111ECC(func_80111C88(&D_801D9E58, omCurrentObj->objId));
        func_80110B00(&sp38);
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 8) != 0) {
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88(&D_801D9F0C, omCurrentObj->objId);
        obj->unk24[0].unk8 = (s32) body;
        obj->unk24[1].unk8 = (s32) body;
        obj->unk24[2].unk8 = (s32) body;
        obj->unk24[3].unk8 = (s32) body;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) == 0) {
            if (func_80110FD4(&sp38) == 0) {
                func_80110150((struct Ovl14AnimInfo *) &sp38);
            }
        }
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 1) != 0) {
        func_80111550(omCurrentObj->objId);
        obj = func_80111C88(rec->unk8C, omCurrentObj->objId);
        func_800B2340(&sp60, body, 0xFFFF);
        obj->unk24[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) + 20.0f;
        func_80111ECC(obj);
        if (func_80110B00(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else if (func_80110FD4(&sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else if (func_80110150((struct Ovl14AnimInfo *) &sp38) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp38.unk2;
            rec->unk43 = sp38.unk3;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            rec->unk43 = 0;
        }
        if (D_800D6E5C != 0.0f) {
            func_800BC11C(D_800E7B20[omCurrentObj->objId]);
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 5;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DCE1C_ovl14);
            return 1;
        case 2:
            play_sound(0x189);
            return 1;
        }
        ret = 0;
    }
    if ((((s32) D_800E9AA0[omCurrentObj->objId]) & 0x10) != 0) {
        obj2 = func_801117BC(&D_801D9FC0, omCurrentObj->objId);
        func_800B2340(&sp60, head, 0xFFFF);
        obj2->unk20[0].unk10 = (sp60.y - gEntitiesNextPosYArray[omCurrentObj->objId]) - 60.0f;
        func_80111C4C(obj2);
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DE6C8_ovl14.s")
#endif

struct Ovl14AnimObj;
extern void func_80111550(u32);
extern struct Ovl14AnimObj *func_80111C88(s32 *, u32);
extern void func_80111ECC(struct Ovl14AnimObj *);
extern s32 func_80110150(struct Ovl14AnimInfo *);
extern void func_80169430_ovl3(s32, s32, s32, s32);
extern s32 D_801D9E34;
extern s32 D_801D9DC8;

/* BLOCKED by the +8 frame anomaly, decided not swept. Every instruction is
 * correct; the only residue is the frame constant and the four sp offsets that
 * follow from it. The ROM is frame 0x38 with the struct at 0x18, i.e. locals
 * base 0x18 and L = 0x20; IDO computes align8(0x1C + L) = 0x40 and puts the
 * struct at 0x20. 0x20 mod 8 == 0, so this shape cannot match. Shrinking the
 * struct to 0x1C does restore frame 0x38 but then the struct sits at 0x1C and
 * all four offsets are +4 (measured 4/30 and 2/30). Nothing below 0x18 is
 * available to absorb the difference -- $ra is at 0x14 and the outgoing-arg
 * area is 0x00..0x0F. */
#ifdef NON_MATCHING
s32 func_801DEC34_ovl14(arg0)
GObj *arg0;
{
    struct Ovl14AnimInfo sp18;

    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801D9E34, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp18.unkC, sp18.unk0, sp18.unk1, 0xF);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DEC34_ovl14.s")
#endif

/* Same +8 frame block as func_801DEC34_ovl14 above; 2/30. */
#ifdef NON_MATCHING
s32 func_801DECAC_ovl14(arg0)
GObj *arg0;
{
    struct Ovl14AnimInfo sp18;

    func_80111550(omCurrentObj->objId);
    func_80111ECC(func_80111C88(&D_801D9DC8, omCurrentObj->objId));
    if (func_80110150(&sp18) != 0) {
        func_80169430_ovl3(sp18.unkC, 0, 0, 0x10);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DECAC_ovl14.s")
#endif

void func_801DED24_ovl14(void) {
    s32 temp;

    do {
        temp = random_soft_s32_range(3);
    } while (temp == D_800E98E0[omCurrentObj->objId]);
    D_800E98E0[omCurrentObj->objId] = temp;
    switch (D_800E98E0[omCurrentObj->objId]) {
        case 0:
            gEntityFuncListIDArray[omCurrentObj->objId] = 2;
            break;
        case 1:
            gEntityFuncListIDArray[omCurrentObj->objId] = 3;
            break;
        case 2:
            gEntityFuncListIDArray[omCurrentObj->objId] = 4;
            break;
    }
}

s32 func_801DEDE8_ovl14(void) {
    s32 track;
    s32 temp;
    struct Ovl14TrackPosition sp30;

    track = request_track_general(0x17, 0x1E, 0x50);
    if ((track >= 0x3C) || (track == -1)) {
        utilPrintf("enemy req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 0;
    D_800E77A0[track] = 0x2C;
    D_800E7880[track] = 4;
    gEntitiesNextPosXArray[track] = gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[track] = 0;
    sp30.unk0 = D_800E5F90[omCurrentObj->objId];
    sp30.unk4 = D_800E6BD0[omCurrentObj->objId];
    temp = random_soft_s32_range(3);
    if (func_800F9888((s32 *) &sp30, (f32) (temp - 1) * 40.0f) == 0) {
        D_800E5F90[track] = D_800E6150[track] = sp30.unk0;
        D_800E6BD0[track] = D_800E6D90[track] = sp30.unk4;
    } else {
        D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
    }
    return track;
}

s32 func_801DF01C_ovl14(f32 arg0) {
    s32 track;
    s32 temp;
    struct Ovl14TrackPosition sp30;

    track = request_track_general(0x1A, 0xE, 0x50);
    if ((track >= 0x1E) || (track == -1)) {
        utilPrintf("eneshot req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 4;
    D_800E77A0[track] = 0x2C;
    D_800E7880[track] = 0;
    gEntitiesNextPosXArray[track] = gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[omCurrentObj->objId] = 0;
    sp30.unk0 = D_800E5F90[omCurrentObj->objId];
    sp30.unk4 = D_800E6BD0[omCurrentObj->objId];
    temp = random_soft_s32_range(2);
    if (func_800F9888((s32 *) &sp30, (f32) temp * 40.0f * arg0) == 0) {
        D_800E5F90[track] = D_800E6150[track] = sp30.unk0;
        D_800E6BD0[track] = D_800E6D90[track] = sp30.unk4;
    } else {
        D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
    }
    D_800EC2E0[track].as_s32 = random_soft_s32_range(3);
    D_800EC660[track] = arg0;
    return track;
}


#ifdef NON_MATCHING
/* FACTORY: 4/161 (verify.py prints 5; one is a PHANTOM -- the
   D_801E3054_ovl14 string is reported as `<.rodata>+0xB4` because the
   measurement runs on a scratch COPY and verify.py derives the rodata base
   from the file's PATH. ovl14.o's .rodata links at 0x801E2FA0, so +0xB4 IS
   D_801E3054_ovl14 and that byte is already right; scored on the real path
   it does not appear.)
   The frame temp slot 0x28-vs-0x24 half of the old 8/161 residue is SOLVED by
   the trailing `s32 pad` below: later declarations take the lower addresses,
   so a dead word declared LAST is what lifts the compiler's own temp onto the
   ROM's slot. Remaining 4 are a one-slot FP temp rotation ($f0/$f8 on the
   func_800F9888 argument, $f8/$f10 on the copy pair) -- permuter food. */
s32 func_801DF290_ovl14(void) {
    s32 track;
    s32 temp;
    struct Ovl14TrackPosition sp30;
    s32 pad;

    track = request_track_general(0x1A, 0xE, 0x50);
    if ((track >= 0x1E) || (track == -1)) {
        utilPrintf("eneshot req over 18. Track Num:%d\n", track);
        func_800B1900(track);
        return -1;
    }
    D_800E76C0[track] = 0xFF;
    D_800E7730[track] = 4;
    D_800E77A0[track] = 0x2D;
    D_800E7880[track] = 0;
    gEntitiesNextPosXArray[track] = gEntitiesPosXArray[track] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[track] = gEntitiesPosYArray[track] = gEntitiesNextPosYArray[omCurrentObj->objId] + 360.0f;
    gEntitiesNextPosZArray[track] = gEntitiesPosZArray[track] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8E60[omCurrentObj->objId] = 0;
    sp30.unk0 = D_800E5F90[omCurrentObj->objId];
    sp30.unk4 = D_800E6BD0[omCurrentObj->objId];
    temp = random_soft_s32_range(0x10);
    if (func_800F9888((s32 *) &sp30,
                      D_800E6A10[omCurrentObj->objId] * ((f32) (temp - 1) * 40.0f)) == 0) {
        D_800E5F90[track] = D_800E6150[track] = sp30.unk0;
        D_800E6BD0[track] = D_800E6D90[track] = sp30.unk4;
    } else {
        D_800E5F90[track] = D_800E5F90[omCurrentObj->objId];
        D_800E6BD0[track] = D_800E6BD0[omCurrentObj->objId];
    }
    D_800EC2E0[track].as_s32 = random_soft_s32_range(3);
    return track;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl14/ovl14/func_801DF290_ovl14.s")
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
    if (D_800DFBD0[omCurrentObj->objId][4]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->mobjList, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->mobjList, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->mobjList, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->mobjList, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->mobjList, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->mobjList, *temp_s0[9], arg0);
    }
}

void func_801DF720_ovl14(void) {
    D_800EC2E0[omCurrentObj->objId].as_s32 = func_800A94F4(0x1044E);
}

void func_801DF75C_ovl14(f32 arg0) {
    s32 **temp_s0;

    temp_s0 = *((s32***)D_800EC2E0[omCurrentObj->objId].as_ptr);
    if (D_800DFBD0[omCurrentObj->objId][4]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][4]->mobjList, *temp_s0[4], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][5]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][5]->mobjList, *temp_s0[5], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][6]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][6]->mobjList, *temp_s0[6], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][7]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][7]->mobjList, *temp_s0[7], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][8]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][8]->mobjList, *temp_s0[8], arg0);
    }
    if (D_800DFBD0[omCurrentObj->objId][9]->mobjList != NULL) {
        animSetTextureAnimation(D_800DFBD0[omCurrentObj->objId][9]->mobjList, *temp_s0[9], arg0);
    }
}

extern s32 func_800A9B48(s32);
extern u32 D_800DF850[];

void func_801DF8FC_ovl14(s32 arg0, f32 arg1) {
    struct UnkStruct8004A7C4_3C_80 *mobj;
    s32 *p;
    s32 **list;
    struct UnkStruct8004A7C4_3C *node;
    s32 i;

    if (func_800A9B48(arg0) != 0) {
        list = *(s32 ***) D_800DF850[omCurrentObj->objId];
        node = omCurrentObj->data.ptr;
        for (i = 0; i < 10; i++) {
            node = animModelTreeNextNode(node);
        }
        while (node != NULL) {
            if (list != NULL) {
                if (*list != NULL) {
                    mobj = node->unk80;
                    p = *list;
                    if (mobj != NULL) {
                        do {
                            if (*p != 0) {
                                animSetTextureAnimation(mobj, *p, arg1);
                            }
                            mobj = mobj->unk0;
                            p++;
                        } while (mobj != NULL);
                    }
                }
                list++;
            }
            node = animModelTreeNextNode(node);
        }
    }
}

void func_801DF9EC_ovl14(GObj *arg0) {
    func_800B19F4(0x71, omCurrentObj->objId);
    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DFA5C_ovl14(arg0);
}

void func_801DFA5C_ovl14(GObj *arg0) {
    while(1) {
        D_800DF150[omCurrentObj->objId] = func_801DFB00_ovl14;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, D_801E2F14_ovl14);
    }
}

void func_801DFB00_ovl14(GObj *arg0) {
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 2, D_801E2F1C_ovl14);
}

void func_801DFB48_ovl14(GObj *arg0) {
    extern void func_801129AC(void);
    extern void func_800FA414(s32);

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_801129AC();
    func_800FA414(2);
    D_80129138 = omCurrentObj->objId;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    while (1) {
        if (D_800E9C60[D_800E0D50[omCurrentObj->objId]] == 1) {
            break;
        }
        ohSleep(1);
    }
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}


void func_801DFC28_ovl14(GObj *arg0) {

}

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
    curObjSleepForever();
}

void func_801DFD7C_ovl14(GObj *arg0) {

}

// The 28 zero bytes at 0x801DFD84..0x801DFDA0 are this TU's trailing padding.
// GNU as pads a section's SIZE only to 16, so the last 16 of them do not come
// back on their own -- measured: dropping this pragma leaves ovl14.o at 0x4BB0
// and breaks the ROM. They belong to ovl14.o, NOT to ovl14_2: splat named them
// func_801DFD90_ovl14 and put that listing at the head of ovl14_2, which left
// every dead epilogue in that file 16 bytes out of phase and cost four
// functions the `.align 5` nops IDO emits after an infinite loop.
// kirby64.yaml starts ovl14/ovl14_2 at 0x202990 to match. The label lands 12
// bytes low (the 0x4BA4->0x4BB0 gap is section padding C cannot emit before a
// following pragma); every byte is zero either way and nothing references the
// symbol, so check_layout's note on it is a label position, not a defect.
// The listing lives in asm_manual/ (committed) because a fresh splat split of
// the current yaml no longer emits it, and asm/ is gitignored.
#pragma GLOBAL_ASM("asm_manual/ovl14/func_801DFD90_ovl14.s")
