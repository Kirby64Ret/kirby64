#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800DE350.h"
#include "buffers.h"

extern void func_800B4B9C();

void func_801DB1E0_ovl10(void) {
    func_800B62AC();
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E9020[omCurrentObj->objId] + D_800E17D0[omCurrentObj->objId] + 1.5707964f;
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= 6.2831855f) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= 6.2831855f;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += 6.2831855f;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801DB2FC_ovl10(void) {
    func_800B5A7C();
    D_800E64D0[omCurrentObj->objId] += D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    func_800F8E6C(D_800DE350[omCurrentObj->objId]);
    D_800E64D0[omCurrentObj->objId] -= D_800E5510[omCurrentObj->objId] + D_800E56D0[omCurrentObj->objId];
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId];
    D_800E2250[omCurrentObj->objId] += D_800E3210[omCurrentObj->objId] + D_800E5C10[omCurrentObj->objId] + D_800E5890[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_800E2250[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId];
}

void func_801DB478_ovl10(void) {
    func_801DB2FC_ovl10();
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + (D_800E6A10[omCurrentObj->objId] * -1.5707964f);
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= 6.2831855f) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= 6.2831855f;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += 6.2831855f;
    }
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801DB594_ovl10(GObj *arg0) {
    func_800B5C28();
    gEntitiesNextPosXArray[omCurrentObj->objId] += D_800E2090[omCurrentObj->objId] + D_800E3050[omCurrentObj->objId];
    gEntitiesNextPosYArray[omCurrentObj->objId] += D_800E2250[omCurrentObj->objId] + D_800E3210[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] += D_800E2410[omCurrentObj->objId] + D_800E33D0[omCurrentObj->objId];
    func_800B5FBC(arg0);
}

void func_801DB678_ovl10(GObj *obj) {
    func_801DB594_ovl10(obj);
    while (gEntitiesAngleYArray[omCurrentObj->objId] >= 6.2831855f) {
        gEntitiesAngleYArray[omCurrentObj->objId] -= 6.2831855f;
    }
    while (gEntitiesAngleYArray[omCurrentObj->objId] < 0.0f) {
        gEntitiesAngleYArray[omCurrentObj->objId] += 6.2831855f;
    }
    D_800E17D0[omCurrentObj->objId] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_801DB770_ovl10(GObj *obj) {
    func_800A9864(0x100E2, 0x1869F, 0x10);
    if (D_800EC2E0[omCurrentObj->objId].as_u32 == 0) {
        setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
        (obj->data)->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        (obj->data)->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        (obj->data)->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        (obj->data)->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
        (obj->data)->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
        (obj->data)->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
        (obj->data)->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
        (obj->data)->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
        (obj->data)->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
        func_800AA018(0x1062E);
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
        D_800DDA90[omCurrentObj->objId] = 0x25;
        func_800AA018(0x1062F);
    }
    while (func_800AF230() == 0) {
        if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] <= 0.0f) {
            break;
        } else {
            ohSleep(1);
        }
    }
    func_800B1900(omCurrentObj->objId);
}

void func_801DB9DC_ovl10(GObj *obj) {
    func_800A9864(0x100E3, 0x1869F, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    (obj->data)->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    (obj->data)->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    (obj->data)->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    (obj->data)->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    (obj->data)->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    (obj->data)->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    (obj->data)->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    (obj->data)->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    (obj->data)->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x10630);
    while (func_800AF230() == 0) {
        if (D_800E7B20[D_800E0D50[omCurrentObj->objId]] <= 0.0f) {
            break;
        } else {
            ohSleep(1);
        }
    }
    func_800B1900(omCurrentObj->objId);
}
