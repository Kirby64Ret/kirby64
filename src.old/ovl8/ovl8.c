#include <ultra64.h>
#include <macros.h>

#include "D_8004A7C4.h"
#include "ovl1/ovl1_6.h"

extern void func_800B3234(f32, f32, f32);

void func_801D0C60_ovl8(struct GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[D_8004A7C4->objId] += (D_800E2090[D_8004A7C4->objId] + D_800E3050[D_8004A7C4->objId]);
    gEntitiesNextPosYArray[D_8004A7C4->objId] += (D_800E2250[D_8004A7C4->objId] + D_800E3210[D_8004A7C4->objId]);
    gEntitiesNextPosZArray[D_8004A7C4->objId] += (D_800E2410[D_8004A7C4->objId] + D_800E33D0[D_8004A7C4->objId]);
    func_800B5FBC(arg0);
}

extern const f32 D_801DB060_ovl8;
void func_801D0D44_ovl8(struct GObj *arg0) {
    func_801D0C60_ovl8(arg0);
    while (D_801DB060_ovl8 <= gEntitiesAngleYArray[D_8004A7C4->objId]) {
        gEntitiesAngleYArray[D_8004A7C4->objId] -= D_801DB060_ovl8;
    }
    while (gEntitiesAngleYArray[D_8004A7C4->objId] < 0.0f) {
        gEntitiesAngleYArray[D_8004A7C4->objId] += D_801DB060_ovl8;
    }
    D_800E17D0[D_8004A7C4->objId] = gEntitiesAngleYArray[D_8004A7C4->objId];
    func_800B3234(gEntitiesNextPosXArray[D_8004A7C4->objId], gEntitiesNextPosYArray[D_8004A7C4->objId], gEntitiesNextPosZArray[D_8004A7C4->objId]);
}

#ifdef NON_MATCHING
extern const f32 D_801DB064_ovl8;
extern void func_800B62AC(f32);
void func_801D0E3C_ovl8(struct GObj *arg0) {
    f32 temp_f0;

    D_800E5890[D_8004A7C4->objId] = 0.0f;
    temp_f0 = D_800E5890[D_8004A7C4->objId];
    D_800E5C10[D_8004A7C4->objId] = temp_f0;
    D_800E56D0[D_8004A7C4->objId] = temp_f0;
    D_800E5510[D_8004A7C4->objId] = temp_f0;
    func_800B62AC(0.0f);
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E17D0[D_8004A7C4->objId] + D_800E9020[D_8004A7C4->objId];

    while (D_801DB064_ovl8 <= gEntitiesAngleYArray[D_8004A7C4->objId]) {
        gEntitiesAngleYArray[D_8004A7C4->objId] -= D_801DB064_ovl8;
    }
    while (gEntitiesAngleYArray[D_8004A7C4->objId] < 0.0f) {
        gEntitiesAngleYArray[D_8004A7C4->objId] += D_801DB064_ovl8;
    }
    func_800B3234(gEntitiesNextPosXArray[D_8004A7C4->objId], gEntitiesNextPosYArray[D_8004A7C4->objId], gEntitiesNextPosZArray[D_8004A7C4->objId]);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D0E3C_ovl8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D0FB0_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1094_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1160_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D12A4_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1334_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D152C_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1648_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D17F4_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D184C_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D19B8_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1A64_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1BB0_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1CAC_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1E58_ovl8.s")

GLOBAL_ASM("asm/non_matchings/ovl8/ovl8/func_801D1E98_ovl8.s")
