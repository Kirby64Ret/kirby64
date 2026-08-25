#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl18_1.h"
#include "ovl18_3.h"

extern s32 D_801CB4DC_ovl7;
extern u32 D_800E0D50[];

/* K&R form is load-bearing here: its real signature is
 * void func_800A9864(u32, u32, u32), but its call site below passes 4
 * args -- the ROM ignores the extra value. An ANSI prototype breaks
 * compilation with "too many arguments". */
void func_800A9864();
void func_800AA018(s32);
void curObjSleepForever(void);
void func_801ACF5C_ovl7(void);
void func_801ACF84_ovl7(void);
void func_802244FC_ovl18(void);

void func_80224320_ovl18(UNUSED s32 arg0) {
    struct EnemyRecord *temp_a3 = D_800E1B50[omCurrentObj->objId];

    D_800E98E0[omCurrentObj->objId] = 0x3C;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleYArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleZArray[D_800E0D50[omCurrentObj->objId]];
    D_800DF150[omCurrentObj->objId] = &func_802244FC_ovl18;
    temp_a3->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008E, 0x23, 0x10, temp_a3);
    func_800AA018(0x10523);
    func_800AECC0(gameTicksPerDraw * 0.75f);
    func_800AED20(gameTicksPerDraw * 0.75f);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 9.0f;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 9.0f;
    curObjSleepForever();
}

#ifdef NON_MATCHING
void func_802244FC_ovl18(void) {
    s32 count = D_800E98E0[omCurrentObj->objId];

    if (count == 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_801ACF84_ovl7);
    } else {
        D_800E98E0[omCurrentObj->objId] = count - 1;
        func_801ACF5C_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl18/code_236CC0/func_802244FC_ovl18.s")
#endif