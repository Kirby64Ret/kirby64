#include "common.h"

#include "GObj.h"
#include "track_arrays.h"
#include "unk_structs/D_800E1B50.h"

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 *unk8;
    f32 *unkC;
    u8 unk10;
    u8 unk11;
    u16 unk12;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
} YakuLibStruct;

extern u32 D_801CD820_ovl7[];
extern YakuLibStruct D_801CE750_ovl7, D_801D0A38_ovl7;
extern YakuLibStruct D_801C7DDC_ovl7, D_801CA7DC_ovl7, D_801CA7FC_ovl7;
extern YakuLibStruct D_801CE770_ovl7, D_801C7E84_ovl7;
extern YakuLibStruct D_801D0A58_ovl7;
extern YakuLibStruct D_801CA6F4_ovl7;
extern YakuLibStruct D_801CA738_ovl7;

extern void utilPrintf(const char *fmt, ...);

extern s32 D_800D7090;
/* D_801CE578_ovl7 = 1.5707964f : now emitted by this TU */
/* D_801CE4A0_ovl7 = "NmlBlock Request Error![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE4C8_ovl7 = "reqDumpStarTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE4F4_ovl7 = "reqMixStarTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE520_ovl7 = "reqStarShotTrk Request Error!![yakulib.cc]\n" : now emitted by this TU */
/* D_801CE54C_ovl7 = "reqCrystal2Trk Request Error!![yakulib.cc]\n" : now emitted by this TU */

extern f32 eneGetPlayerHeight(void);
s32 request_track_general(s32, s32, s32);

void utilGetTransformSRT(Vector *, s32);
void func_800A4DB8(Vector *, s32);

// this file
void func_801BC1AC_ovl7(s32 arg0);
void func_801BC44C_ovl7(s32 arg0);
void func_801BC72C_ovl7(s32 arg0);

s32 func_801BBE50_ovl7(s32 arg0, s32 arg1, u32 arg2) {
    s32 idx;
    Vector posVec;
    Vector angleVec;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("NmlBlock Request Error![yakulib.cc]\n");
        return -1;
    }
    D_800E0D50[idx] = arg2;
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = 0;
    D_800E7880[idx] = 0;

    D_800E8E60[idx] = 1;
    ((s32 *) &D_800E1B50[0x70])[idx] = arg1;
    utilGetTransformSRT(&posVec, arg0);
    gEntitiesNextPosXArray[idx] = posVec.x;
    gEntitiesNextPosYArray[idx] = posVec.y;
    gEntitiesNextPosZArray[idx] = posVec.z;
    func_800A4DB8(&angleVec, arg0);
    gEntitiesAngleXArray[idx] = angleVec.x;
    gEntitiesAngleYArray[idx] = angleVec.y + 1.5707964f;
    gEntitiesAngleZArray[idx] = angleVec.z;
    D_800E17D0[idx] = D_800E17D0[arg2];
    D_800E6A10[idx] = D_800E6A10[arg2];
    return idx;
}

s32 func_801BBFE4_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqDumpStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC1AC_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC1AC_ovl7(s32 arg0) {
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A58_ovl7 = D_801CA6F4_ovl7;
    } else {
        D_801D0A58_ovl7 = D_801CA738_ovl7;
    }
    D_801D0A58_ovl7.unk1C = arg0;
}

s32 func_801BC27C_ovl7(s32 arg0, s32 arg1) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqMixStarTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0;
    D_800E7880[idx] = arg1;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    D_800E8220[omCurrentObj->objId] = 1;
    sp1C = idx;
    func_801BC44C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC44C_ovl7(s32 arg0) {
    D_801CE750_ovl7 = D_801C7DDC_ovl7;
    D_801CE750_ovl7.unk1C = D_801CD820_ovl7[arg0];
    if (D_800E8220[omCurrentObj->objId] == 0) {
        D_801D0A38_ovl7 = D_801CA7DC_ovl7;
    } else {
        D_801D0A38_ovl7 = D_801CA7FC_ovl7;
    }
    D_801D0A38_ovl7.unk1C = arg0;
}

s32 func_801BC580_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1F, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqStarShotTrk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 6;
    D_800E77A0[idx] = arg0 + 0x24;
    D_800E7880[idx] = 0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = 0;
    sp1C = idx;
    func_801BC72C_ovl7(arg0);
    D_800D7090 = sp1C;
    return sp1C;
}

void func_801BC72C_ovl7(s32 arg0) {
    D_801CE770_ovl7 = D_801C7E84_ovl7;
    D_801CE770_ovl7.unk1C = D_801CD820_ovl7[arg0];
}

s32 func_801BC794_ovl7(s32 arg0) {
    s32 idx;
    s32 sp1C;

    idx = request_track_general(0x1C, 0x1E, 0x3C);
    if (idx == -1) {
        utilPrintf("reqCrystal2Trk Request Error!![yakulib.cc]\n");
        return -1;
    }
    D_800E76C0[idx] = 0xFF;
    D_800E7730[idx] = 3;
    D_800E77A0[idx] = 8;
    D_800E7880[idx] = arg0;
    D_800E5F90[idx] = D_800E5F90[D_800E0D50[idx]];
    D_800E6BD0[idx] = D_800E6BD0[D_800E0D50[idx]];
    D_800E6A10[idx] = D_800E6A10[D_800E0D50[idx]];
    if (D_800E0D50[idx] == 0) {
        sp1C = idx;
        gEntitiesNextPosYArray[idx] = eneGetPlayerHeight();
    } else {
        gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    }
    gEntitiesAngleXArray[idx] = gEntitiesAngleXArray[D_800E0D50[idx]];
    gEntitiesAngleYArray[idx] = gEntitiesAngleYArray[D_800E0D50[idx]];
    gEntitiesAngleZArray[idx] = gEntitiesAngleZArray[D_800E0D50[idx]];
    D_800E8E60[idx] = D_800E8E60[D_800E0D50[idx]];
    gEntitiesNextPosXArray[idx] = gEntitiesNextPosXArray[D_800E0D50[idx]];
    gEntitiesNextPosYArray[idx] = gEntitiesNextPosYArray[D_800E0D50[idx]];
    gEntitiesNextPosZArray[idx] = gEntitiesNextPosZArray[D_800E0D50[idx]];
    return idx;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/yakulib/func_801BC978_ovl7.s")
