#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"
#include "ovl2/ovl2_8.h"

#include "ovl13.h"

s32 func_801E4424_ovl13(f32 arg0);
extern struct Ovl13AnimObj *func_801A0464_ovl7(void);
extern void func_801A04B8_ovl7(void);
extern void func_801A3280_ovl7(void);
extern void func_8019B9B0_ovl7(void);
extern void func_801ACF84_ovl7(GObj *);
extern void func_800B6E84(s32);
extern s32 D_801DAF60;
void func_801E426C_ovl13(GObj *);

void func_801E3DC0_ovl13(GObj *arg0) {
    s32 pad;
    s32 temp;

    func_801A3280_ovl7();
    D_800DEF90[omCurrentObj->objId] = func_800B6E84;
    D_800DF150[omCurrentObj->objId] = func_801E426C_ovl13;
    D_800E1B50[omCurrentObj->objId]->unk98 = &D_801DAF60;
    D_800E1B50[omCurrentObj->objId]->unk39 = -1;
    func_8019B9B0_ovl7();
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_800B33F4();
    D_800E8920[omCurrentObj->objId] = 0;
    temp = D_800E7880[omCurrentObj->objId] & 1;
    if (temp != 0) {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    }
    func_800AECC0(temp ? gameTicksPerDraw : -gameTicksPerDraw);
    func_800AED20(temp ? gameTicksPerDraw : -gameTicksPerDraw);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA6E0[omCurrentObj->objId] = 0.5f;
    func_800A9864(0x1009F, 0x23, 0x10);
    func_800AA018(0x10558);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 40.0f;
    D_800E3210[omCurrentObj->objId] = -40.0f;
    ohSleep(1);
    D_800E6850[omCurrentObj->objId] = 7.0f;
    D_800E3C90[omCurrentObj->objId] = 7.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
    D_800E3210[omCurrentObj->objId] = 7.0f;
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.7f;
    D_800E3750[omCurrentObj->objId] = -0.7f;
    ohSleep(5);
    D_800E3750[omCurrentObj->objId] = -0.325f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    D_800E6690[omCurrentObj->objId] = D_800E64D0[omCurrentObj->objId] * -0.05f;
    ohSleep(0x14);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = 65535.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E3210[omCurrentObj->objId] = 4.0f;
    D_800E3750[omCurrentObj->objId] = -0.325f;
    D_800E3C90[omCurrentObj->objId] = 5.0f;
    while (D_800E8920[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800B33F4();
    ohSleep(0x1E);
    func_801ACF84_ovl7(arg0);
}

void func_801E426C_ovl13(GObj *arg0) {
    D_800EA6E0[omCurrentObj->objId] += 0.05f;
    if (1.0f < D_800EA6E0[omCurrentObj->objId]) {
        D_800EA6E0[omCurrentObj->objId] = 1.0f;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] =
        gEntitiesScaleYArray[omCurrentObj->objId] =
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] += 1;
    D_800E98E0[omCurrentObj->objId] %= 6;
    if (D_800E98E0[omCurrentObj->objId] == 0) {
        func_800A8100(6, 2, 0, D_800DFBD0[omCurrentObj->objId][2]);
    }
    D_800E8920[omCurrentObj->objId] = 0;
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < 16.0f) {
        gEntitiesNextPosYArray[omCurrentObj->objId] = 16.0f;
        D_800E8920[omCurrentObj->objId] = 1;
    }
    func_801E4424_ovl13(D_800EA6E0[omCurrentObj->objId]);
}

s32 func_801E4424_ovl13(f32 arg0) {
    struct Ovl13AnimObj *temp_v0;
    struct Ovl13AnimCmd *temp_v1;
    struct EnemyRecord *tmp = D_800E1B50[omCurrentObj->objId];

    if (tmp->unk8C == NULL) {
        return 0;
    }
    temp_v0 = func_801A0464_ovl7();
    temp_v1 = temp_v0->unk24;
    temp_v1->unk18 = temp_v1->unk18 * arg0;
    func_80111ECC(temp_v0);
    func_801A04B8_ovl7();
}
