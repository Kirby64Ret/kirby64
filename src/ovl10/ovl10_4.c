#include "common.h"
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "buffers.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

extern struct Sub800E1B50_Unk98 D_801CB470_ovl7;
/* D_801F4C20_ovl10 = -0.8f : now emitted by this TU */
/* D_801F4C24_ovl10 = 0.65f : now emitted by this TU */
/* D_801F4C28_ovl10 = 0.8f : now emitted by this TU */
/* D_801F4C2C_ovl10 = 1.2f : now emitted by this TU */
/* D_801F4C30_ovl10 = 0.7f : now emitted by this TU */
/* D_801F4C34_ovl10 = 5.6f : now emitted by this TU */
/* D_801F4C38_ovl10 = -0.8f : now emitted by this TU */

void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_8019B9B0_ovl7(void);
void func_800B3520(void);
extern void func_801ACF84_ovl7(struct GObj *);
void func_801EF760_ovl10(void);

void func_801EF3F0_ovl10(struct GObj *this) {
    struct UnkStruct800E1B50 *temp_s0 = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = &func_801EF760_ovl10;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_8019B9B0_ovl7();
    temp_s0->unk98 = &D_801CB470_ovl7;
    func_800AA018(0x10521);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    D_800E3210[omCurrentObj->objId] = 8.0f;
    D_800E3750[omCurrentObj->objId] = -0.8f;
    D_800E3C90[omCurrentObj->objId] = 8.0f;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 1) {
        D_800E64D0[omCurrentObj->objId] *= 0.65f;
        D_800E3750[omCurrentObj->objId] *= 0.65f;
        D_800E3210[omCurrentObj->objId] *= 0.65f;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 2) {
        D_800E64D0[omCurrentObj->objId] *= 0.8f;
        D_800E3750[omCurrentObj->objId] *= 0.8f;
        D_800E3210[omCurrentObj->objId] *= 0.8f;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 3) {
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
    func_801A0D74_ovl7();
    func_801A03B4_ovl7();
}
