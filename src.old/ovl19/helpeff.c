#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "D_8004A7C4.h"

void func_8021EA20_ovl19(void) {
    func_800B63C0();
}

extern void (*D_8022F070[])(struct GObj *);

void func_8021EA40_ovl19(struct GObj *arg0) {
    D_800E10D0[D_8004A7C4->objId] = D_800E10D0[D_800E0D50[D_8004A7C4->objId]];
    D_800E1290[D_8004A7C4->objId] = D_800E1290[D_800E0D50[D_8004A7C4->objId]];
    D_800E1450[D_8004A7C4->objId] = D_800E1450[D_800E0D50[D_8004A7C4->objId]];
    D_800E6A10[D_8004A7C4->objId] = D_800E6A10[D_800E0D50[D_8004A7C4->objId]];
    D_800E6BD0[D_8004A7C4->objId] = D_800E6BD0[D_800E0D50[D_8004A7C4->objId]];
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 2, &D_8022F070[0]);
}

void func_8021EC64_ovl19(struct GObj *arg0);
void func_800B5094(s32, s32, f32);

void func_8021EB6C_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;

    temp_f0 = 0.2f;
    D_800DEF90[D_8004A7C4->objId] = func_800B5094;
    D_800DF150[D_8004A7C4->objId] = func_8021EC64_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x20062, 0x1869F, 0x10);
    func_800AA154(0x20324);
    temp_v0_2 = D_8004A7C4;
    D_800E9FE0[D_800EBBE0[D_8004A7C4->objId]].as_s32 = 0;
    func_800B1900((u16) D_8004A7C4->objId);
}

void func_8021EC64_ovl19(struct GObj *arg0) {
    if (D_800E8060[0] == -1) {
        D_800E9FE0[D_800EBBE0[D_8004A7C4->objId]].as_s32 = 0;
        func_800B1900((u16) D_8004A7C4->objId);
    }
}


void func_8021ED80_ovl19(struct GObj *arg0);

void func_8021ECC4_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DF150[D_8004A7C4->objId] = func_8021ED80_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x20063, 0x1869F, 0x10);
    func_800AA018(0x20327);
    func_800AA018(0x20326);
    func_800AFA14();
}

void func_8021ED80_ovl19(struct GObj *arg0) {
    if (D_800E8920[D_800E0D50[D_8004A7C4->objId]] != 0) {
        gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]];
        gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
        gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]];
        gEntitiesAngleYArray[D_8004A7C4->objId] = gEntitiesAngleYArray[D_800E0D50[D_8004A7C4->objId]];
        func_800AFBB4(1, D_8004A7C4);
    } else {
        func_800AFBB4(0, D_8004A7C4);
    }
}

s32 func_8021EE88_ovl19(s32 arg0) {
    s32 temp_v0;

    temp_v0 = request_track_general(0x16, 0x3C, 0x4A);
    if (temp_v0 != -1) {
        gEntityVtableIndexArray[temp_v0] = arg0;
    } else {
        print_error_stub("Helper Effect Request Error![helpeff.cc]\n");
    }
    return temp_v0;
}
