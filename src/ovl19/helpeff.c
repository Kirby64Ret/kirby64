#include <ultra64.h>
#include <macros.h>

#include "main/object_manager.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

extern FUNCLIST D_8022F070_ovl19;

extern void func_800B5094(s32, s32, f32);
void func_8021EC64_ovl19(GObj *arg0);
void func_8021ED80_ovl19(GObj *arg0);
void func_8021EB6C_ovl19(GObj *arg0);
void func_8021ECC4_ovl19(GObj *arg0);

void func_8021EA20_ovl19() {
    func_800B63C0();
}

void func_8021EA40_ovl19(s32 arg0) {
    static FUNCLIST D_8022F070_ovl19 = {
        func_8021EB6C_ovl19,
        func_8021ECC4_ovl19,
    };

    D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
    D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
    D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 2, &D_8022F070_ovl19);
}

void func_8021EB6C_ovl19(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800DF150[omCurrentObj->objId] = func_8021EC64_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20062, 0x1869F, 0x10);
    func_800AA154(0x20324);
    D_800E9FE0[D_800EBBE0[omCurrentObj->objId]].as_u32 = 0;
    func_800B1900(omCurrentObj->objId);
}

void func_8021EC64_ovl19(GObj *arg0) {
    if (D_800E8060[0] == -1) {
        D_800E9FE0[D_800EBBE0[omCurrentObj->objId]].as_u32 = 0;
        func_800B1900(omCurrentObj->objId);
    }
}

void func_8021ECC4_ovl19(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_8021ED80_ovl19;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20063, 0x1869F, 0x10);
    func_800AA018(0x20327);
    func_800AA018(0x20326);
    curObjSleepForever();
}

void func_8021ED80_ovl19(GObj *arg0) {
    if (D_800E8920[D_800E0D50[omCurrentObj->objId]] != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
        func_800AFBB4(1, omCurrentObj);
    } else {
        func_800AFBB4(0, omCurrentObj);
    }
}


s32 func_8021EE88_ovl19(GObj *arg0) {
    s32 track;

    track = request_track_general(0x16, 0x3C, 0x4A);
    if (track != -1) {
        gEntityFuncListIDArray[track] = arg0;
    } else {
        print_error_stub("Helper Effect Request Error![helpeff.cc]\n");
    }
    return track;
}
