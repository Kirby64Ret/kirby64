#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "main/math.h"
#include "ovl1/ovl1_6.h"

extern void func_800B5C28(void);
extern void func_800B5FBC(struct GObj *);
extern void func_800B3234(f32, f32, f32);

void func_801D0C60_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += (D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId]);
    gEntitiesNextPosYArray[omCurrentObj->objId] += (D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId]);
    gEntitiesNextPosZArray[omCurrentObj->objId] += (D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId]);
    func_800B5FBC(arg0);
}

void func_801D0D44_ovl8(struct GObj *arg0) {
    func_801D0C60_ovl8(arg0);
    while (M_TAU <= gEntitiesAngleYArray[omCurrentObj->objId]) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= M_TAU;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += M_TAU;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D0E3C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D0FB0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1094_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1160_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D12A4_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1334_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D152C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1648_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D17F4_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D184C_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D19B8_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1A64_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1BB0_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1CAC_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1E58_ovl8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl8/ovl8/func_801D1E98_ovl8.s")
