#include <ultra64.h>
#include <macros.h>
#include "ovl18_3.h"
#include "ovl18_1.h"
#include "omCurrentObj.h"

void func_802244FC_ovl18(void);
extern s32 D_801CB4DC;
extern u32 D_800E0D50[];

void func_80224320_ovl18(s32 arg0) {
    struct UnkStruct800E1B50 *temp_a3 = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0x3C;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleZArray[D_800E0D50[omCurrentObj->objId]];
    D_800DF150[omCurrentObj->objId] = &func_802244FC_ovl18;
    temp_a3->unk98 = &D_801CB4DC;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008E, 0x23, 0x10, temp_a3);
    func_800AA018(0x10523);
    func_800AECC0(gameTicksPerDraw * 0.75f);
    func_800AED20(gameTicksPerDraw * 0.75f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 9.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 9.0f;
    func_800AFA14();
}

extern void func_801ACF84_ovl7(void);

// weird
#ifdef NON_MATCHING
void func_802244FC_ovl18(void) {
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801ACF84_ovl7);
    } else {
        func_801ACF5C_ovl7(D_800E98E0[omCurrentObj->objId]--);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl18/ovl18_4/func_802244FC_ovl18.s")
#endif
