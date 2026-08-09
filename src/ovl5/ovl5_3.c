#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/util.h"
#include "ovl1/track.h"
#include "main/object_helpers.h"

extern s32 D_8018E2A0_ovl5[];
extern s32 D_8018E268_ovl5[];
extern u8 D_8018E298_ovl5;
extern s32 D_8018736C_ovl5[];
void play_music(s32, s32);
void func_800A9F98(s32, f32);
extern u8 D_8018E3C0_ovl5;
extern u8 D_8018E3C1_ovl5;
extern u8 D_8018E3C2_ovl5;
extern u8 D_8018E3C3_ovl5;
extern f32 D_8018D6A8_ovl5;

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165440_ovl5.s")

void func_80165610_ovl5(void) {
    play_music(0, 0x19);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165634_ovl5.s")

struct DObj *func_801658C4_ovl5(s32 arg0) {
    if (arg0 >= 0x41) {
        return 0;
    }
    return D_800DE350[D_8018E2A0_ovl5[arg0]]->data.dobj;
}

s32 func_80165900_ovl5(s32 arg0) {
    if (gEntitiesNextPosYArray[D_8018E2A0_ovl5[arg0]] < 0.0f) {
        return 0;
    }
    return 1;
}

s32 func_80165948_ovl5(s32 arg0) {
    return D_800E98E0[D_8018E2A0_ovl5[arg0]];
}

Vector *func_8016596C_ovl5(Vector *arg0, s32 arg1) {
    Vector sp4;

    sp4.x = gEntitiesNextPosXArray[D_8018E2A0_ovl5[arg1]];
    sp4.y = gEntitiesNextPosYArray[D_8018E2A0_ovl5[arg1]];
    sp4.z = gEntitiesNextPosZArray[D_8018E2A0_ovl5[arg1]];
    *arg0 = sp4;
    return arg0;
}

Vector *func_801659DC_ovl5(Vector *arg0, s32 arg1) {
    Vector sp4;

    sp4.x = gEntitiesNextPosXArray[D_8018E268_ovl5[arg1]];
    sp4.y = gEntitiesNextPosYArray[D_8018E268_ovl5[arg1]];
    sp4.z = gEntitiesNextPosZArray[D_8018E268_ovl5[arg1]];
    *arg0 = sp4;
    return arg0;
}

#ifdef MIPS_TO_C
/* 2 diffs: IDO schedules `li at, 1` before `lui t9, %hi(D_8018E3C3_ovl5)`,
   the ROM has them the other way round. Everything else is exact. */
s32 func_80165A4C_ovl5(s32 arg0) {
    s32 count = 0;

    if ((D_8018E3C0_ovl5 != 0) && (arg0 != 0)) {
        count = 1;
    }
    if ((D_8018E3C1_ovl5 != 0) && (arg0 != 1)) {
        count++;
    }
    if ((D_8018E3C2_ovl5 != 0) && (arg0 != 2)) {
        count++;
    }
    if ((D_8018E3C3_ovl5 != 0) && (arg0 != 3)) {
        count++;
    }
    return count;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165A4C_ovl5.s")
#endif

s32 func_80165AD0_ovl5(s32 arg0) {
    f32 v = gEntitiesAngleYArray[D_8018E268_ovl5[arg0]] / D_8018D6A8_ovl5 * 180.0f;

    if (v == 0.0f) {
        return 0;
    }
    if (v == 90.0f) {
        return 2;
    }
    if (v == 180.0f) {
        return 1;
    }
    if (v == 270.0f) {
        return 3;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165B84_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165D30_ovl5.s")

s32 func_80165E14_ovl5(s32 arg0, f32 arg1) {
    Vector sp1C;

    func_800B2340(&sp1C, func_801658C4_ovl5(arg0), D_8018E2A0_ovl5[arg0]);
    if ((sp1C.x - 150.0f <= arg1) && (arg1 <= sp1C.x + 150.0f)) {
        return 1;
    }
    return 0;
}

s32 func_80165E98_ovl5(s32 arg0, f32 arg1) {
    Vector sp1C;

    func_800B2340(&sp1C, func_801658C4_ovl5(arg0), D_8018E2A0_ovl5[arg0]);
    if ((sp1C.z - 150.0f <= arg1) && (arg1 <= sp1C.z + 150.0f)) {
        return 1;
    }
    return 0;
}

s32 func_80165F1C_ovl5(s32 arg0) {
    Vector sp24;
    s32 i;

    func_801659DC_ovl5(&sp24, arg0);
    for (i = 0; i != 8; i++) {
        if (func_80165E14_ovl5(i, sp24.x) != 0) {
            break;
        }
    }
    if (i == 8) {
        return 0x29A;
    }
    for (; i < 0x40; i += 8) {
        if (func_80165E98_ovl5(i, sp24.z) != 0) {
            return i;
        }
    }
    return 0x29A;
}

s32 func_80165FB8_ovl5(s32 arg0) {
    Vector sp24;
    s32 i;

    func_801659DC_ovl5(&sp24, arg0);
    for (i = 0; i != 8; i++) {
        if (func_80165E14_ovl5(i, sp24.x) != 0) {
            break;
        }
    }
    if (i == 8) {
        return 0x29A;
    }
    for (; i < 0x40; i += 8) {
        if (func_80165E98_ovl5(i, sp24.z) != 0) {
            return i;
        }
    }
    return 0x29A;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80166054_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_8016626C_ovl5.s")

void func_8016689C_ovl5(GObj *arg0) {
    func_800A9F98(D_8018736C_ovl5[D_8018E298_ovl5], 5.0f);
    curObjSleepForever();
}

