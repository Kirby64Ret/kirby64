#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"

extern s32 D_8012E860;

extern void func_800B1900(s32);
extern void func_80111C4C(s32);
extern s32 func_80168408_ovl3(s32, s32, f32);
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "ovl1/util.h"

extern char D_80197028_ovl3[];

extern void func_800A22D4(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
extern char D_80196FF0_ovl3[];
extern f32 D_8019715C_ovl3;

extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_80164130_ovl3(struct GObj *);
extern void func_800B4B9C(s32);
extern void func_800AA154(s32);
extern void func_800A9864(s32, s32, s32);
extern void func_801230E8(s32, s32, s32);
extern void func_801654CC_ovl3(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015AC90_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ADF8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B060_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B190_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015BBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C7F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CC84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CF9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E43C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E754_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E8E0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ED2C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015F950_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160378_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160A50_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160D84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161058_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s")

void func_80161CE0_ovl3(s32 arg0) {
    s32 id = D_800E0D50[omCurrentObj->objId];

    D_800E5F90[omCurrentObj->objId] = D_800E5F90[id];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[id];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[id];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[id];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161D94_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161EC0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162000_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162150_ovl3.s")

void func_801625B8_ovl3(f32 *arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp == -1) {
        utilPrintf(D_80196FF0_ovl3);
        return;
    }
    gEntitiesNextPosXArray[temp] = arg0[0];
    gEntitiesNextPosYArray[temp] = arg0[1];
    gEntitiesNextPosZArray[temp] = arg0[2];
    gEntityFuncListIDArray[temp] = 3;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016264C_ovl3.s")

s32 func_801632B8_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x14, 4, 0xE);

    if (temp == -1) {
        utilPrintf(D_80197028_ovl3);
    } else {
        gEntityFuncListIDArray[temp] = arg0;
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801634D4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801636A4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163AC0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163C48_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163D84_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80163ED0_ovl3.s")

void func_80164058_ovl3(s32 arg0) {
    s32 sp20[0x40];
    f32 temp = D_8019715C_ovl3;

    D_800E98E0[omCurrentObj->objId] = (s32) sp20;
    D_800DF150[omCurrentObj->objId] = func_80164130_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20042, 0x22, 0x10);
    func_801230E8(0x20292, 0x20293, 1);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164130_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164320_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801644EC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801646A4_ovl3.s")

void func_80164890_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = func_800A8100(1, 1, 0x28, D_800DFBD0[omCurrentObj->objId][1]);
        }
    }
}

void func_80164914_ovl3(s32 arg0) {
    if (gKirbyState.action != 0x1A) {
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
        }
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164980_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80164EA8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801651FC_ovl3.s")

void func_801653AC_ovl3(s32 arg0) {
    if ((gKirbyState.unk30 != 0) || (gKirbyState.action != 0xE)) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

void func_801653F4_ovl3(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801654CC_ovl3;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800A9864(0x20050, 0x22, 0x10);
        func_800AA154(0x202B5);
    } else {
        func_800A9864(0x20051, 0x22, 0x10);
        func_801230E8(0x202B7, 0x202B8, 1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801654CC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165504_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801657BC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016593C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80165CD8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801660F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166210_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166588_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166768_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166BB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80166E2C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016714C_ovl3.s")

void func_80167290_ovl3(s32 arg0) {
    if (D_8012E860 != 0) {
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167330_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167578_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016769C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167800_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167974_ovl3.s")

void func_80167B48_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167B80_ovl3.s")

void func_80167CCC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167D04_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80167F54_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80168408_ovl3.s")

s32 func_8016854C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp = func_80168408_ovl3(arg0, arg1, arg2);

    if (temp != 0) {
        func_80111C4C(temp);
    }
    return temp;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8016858C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801693C4_ovl3.s")

