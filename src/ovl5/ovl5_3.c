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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165A4C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165AD0_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165B84_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165D30_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165E14_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165E98_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165F1C_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80165FB8_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_80166054_ovl5.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_3/func_8016626C_ovl5.s")

void func_8016689C_ovl5(GObj *arg0) {
    func_800A9F98(D_8018736C_ovl5[D_8018E298_ovl5], 5.0f);
    curObjSleepForever();
}

