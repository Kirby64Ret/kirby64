#include <ultra64.h>
#include <macros.h>
#include "D_8004A7C4.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl18/ovl18_1.h"
#include "ovl18/ovl18_3.h"
#include "ovl18/ovl18_5.h"

extern s32 D_801CB470;
extern s32 D_800EC2E0[];
extern f32 D_801F4C30, D_801F4C34, D_801F4C38;

void func_801EF760_ovl10(void);

void func_801EF3F0_ovl10(struct GObj *this) {
    struct UnkStruct800E1B50 *temp_s0 = D_800E1B50[D_8004A7C4->objId];

    D_800DF150[D_8004A7C4->objId] = &func_801EF760_ovl10;
    func_800A9864(0x1008D, 0x23, 0x10);
    func_8019B9B0_ovl10();
    temp_s0->unk98 = &D_801CB470;
    func_800AA018(0x10521);
    D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * 4.0f;
    D_800E3210[D_8004A7C4->objId] = 8.0f;
    D_800E3750[D_8004A7C4->objId] = -0.8f;
    D_800E3C90[D_8004A7C4->objId] = 8.0f;
    if (D_800EC2E0[D_8004A7C4->objId] == 1) {
        D_800E64D0[D_8004A7C4->objId] *= 0.65f;
        D_800E3750[D_8004A7C4->objId] *= 0.65f;
        D_800E3210[D_8004A7C4->objId] *= 0.65f;
    }
    if (D_800EC2E0[D_8004A7C4->objId] == 2) {
        D_800E64D0[D_8004A7C4->objId] *= 0.8f;
        D_800E3750[D_8004A7C4->objId] *= 0.8f;
        D_800E3210[D_8004A7C4->objId] *= 0.8f;
    }
    if (D_800EC2E0[D_8004A7C4->objId] == 3) {
        gEntitiesNextPosYArray[D_8004A7C4->objId] += 20.0f;
        D_800E64D0[D_8004A7C4->objId] *= 1.2f;
    }
    D_800E8920[D_8004A7C4->objId] = 0;
    while (D_800E8920[D_8004A7C4->objId] == 0) {
        finish_current_thread(1);
    }
    D_800E64D0[D_8004A7C4->objId] *= 0.7f;
    D_800E3210[D_8004A7C4->objId] = 5.6f;
    D_800E3750[D_8004A7C4->objId] = -0.8f;
    D_800E3C90[D_8004A7C4->objId] = 8.0f;
    D_800E8920[D_8004A7C4->objId] = 0;
    while (D_800E8920[D_8004A7C4->objId] == 0) {
        finish_current_thread(1);
    }
    func_800B3520();
    finish_current_thread(0x3C);
    func_801ACF84_ovl7(this);
}

void func_801EF760_ovl10(void) {
    func_801A0D74_ovl10();
    func_801A03B4_ovl10();
}
