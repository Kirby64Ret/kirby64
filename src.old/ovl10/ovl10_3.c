#include <ultra64.h>
#include <macros.h>
#include "omCurrentObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl18/ovl18_1.h"
#include "ovl18/ovl18_3.h"
#include "ovl18/ovl18_5.h"

extern s32 D_801CB470;
extern s32 D_800EC2E0[];
extern f32 D_801F4C30, D_801F4C34, D_801F4C38;

void func_801EF760_ovl10(void);

void func_801EF3F0_ovl10(struct GObj *this) {
    struct UnkStruct800E1B50 *temp_s0 = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = &func_801EF760_ovl10;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_8019B9B0_ovl10();
    temp_s0->unk98 = &D_801CB470;
    func_800AA018(0x10521);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    if (D_800EC2E0[omCurrentObj->objId] == 1) {
        D_800E64D0[omCurrentObj->objId] *= 0.65f;
        D_800E3750[omCurrentObj->objId] *= 0.65f;
        D_800E3210[omCurrentObj->objId] *= 0.65f;
    }
    if (D_800EC2E0[omCurrentObj->objId] == 2) {
        D_800E64D0[omCurrentObj->objId] *= 0.8f;
        D_800E3750[omCurrentObj->objId] *= 0.8f;
        D_800E3210[omCurrentObj->objId] *= 0.8f;
    }
    if (D_800EC2E0[omCurrentObj->objId] == 3) {
        gEntitiesNextPosYArray[omCurrentObj->objId] += 20.0f;
        D_800E64D0[omCurrentObj->objId] *= 1.2f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E64D0[omCurrentObj->objId] *= 0.7f;
    D_800E3210[omCurrentObj->objId] = 5.6f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    D_800E8920[omCurrentObj->objId] = 0;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800B3520();
    ohSleep(0x3C);
    func_801ACF84_ovl7(this);
}

void func_801EF760_ovl10(void) {
    func_801A0D74_ovl10();
    func_801A03B4_ovl10();
}
