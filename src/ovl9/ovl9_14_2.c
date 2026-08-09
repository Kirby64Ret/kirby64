#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "buffers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "main/object_helpers.h"
#include "unk_structs/D_800E1B50.h"

extern void func_800B1900(u16);
extern void func_800B78AC(struct GObj *);
extern void func_801ACF5C_ovl7(void);
extern void func_801ACF84_ovl7(struct GObj *);
extern s32 D_801CB4DC_ovl7;
extern f32 D_8021DDD0_ovl9;
extern f32 D_8021DDD4_ovl9;
extern f32 D_8021DDD8_ovl9;
extern f32 D_8021DDDC_ovl9;
extern f32 D_8021DDE0_ovl9;

void func_80214A00_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x1008A, 0x23, 0x10);
    func_800AA018(0x1051E);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 7.0f;
    D_800E3210[omCurrentObj->objId] = 11.0f;
    D_800E3750[omCurrentObj->objId] = -1.0f;
    D_800E3C90[omCurrentObj->objId] = D_8021DDD0_ovl9;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_80214B2C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B78AC;
    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A1, 0x23, 0x10);
    func_800AA018(0x1055E);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DDD4_ovl9;
    D_800E3210[omCurrentObj->objId] = -1.0f;
    D_800E3750[omCurrentObj->objId] = D_8021DDD8_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_80214C9C_ovl9(struct GObj *arg0) {
    struct UnkStruct800E1B50 *tmp = D_800E1B50[omCurrentObj->objId];

    D_800DEF90[omCurrentObj->objId] = func_800B78AC;
    D_800DF150[omCurrentObj->objId] = func_801ACF5C_ovl7;
    tmp->unk98 = &D_801CB4DC_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A9864(0x100A2, 0x23, 0x10);
    func_800AA018(0x10560);
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
    D_800E6850[omCurrentObj->objId] = D_8021DDDC_ovl9;
    D_800E3210[omCurrentObj->objId] = -1.0f;
    D_800E3750[omCurrentObj->objId] = D_8021DDE0_ovl9;
    D_800E3C90[omCurrentObj->objId] = 10.0f;
    ohSleep(0x3C);
    func_801ACF84_ovl7(arg0);
}

void func_80214E0C_ovl9(struct GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_80214E38_ovl9(struct GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_80214E64_ovl9(struct GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

void func_80214E90_ovl9(struct GObj *arg0) {
    func_800B1900(omCurrentObj->objId);
}

