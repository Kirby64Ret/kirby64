#include <ultra64.h>
#include <macros.h>
#include "GObj.h"
#include "DObj.h"
#include "sounds.h"
#include "main/lbvector.h"
#include "main/object_helpers.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/track.h"
#include "ovl1/util.h"
#include "ovl2/ovl2_3.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_800D7098.h"
#include "unk_structs/D_800DE350.h"
#include "unk_structs/D_800E1B50.h"
#include "unk_structs/D_80129114.h"
#include "buffers.h"

#include "ovl17.h"

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DB1E0_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBA8C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBDA8_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC2D0_ovl17.s")

void func_801DC3F4_ovl17(void) {
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC460_ovl17.s")

void func_801DC71C_ovl17(struct GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC724_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC91C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC98C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DCB44_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DCFD4_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DD040_ovl17.s")

void func_801DD09C_ovl17(Vector *arg0, Vector *arg1) {
    Mat4 sp60;
    Mat4 sp20;

    guMtxIdentF(sp60);
    HS64_MkTranslateMtxF(sp20, arg0->x, arg0->y, arg0->z);
    guMtxCatF(sp60, sp20, sp60);
    HS64_MkRotationMtxF(sp20, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(sp60, sp20, sp60);
    HS64_MkTranslateMtxF(sp20, gEntitiesNextPosXArray[0], gEntitiesNextPosYArray[0], gEntitiesNextPosZArray[0]);
    guMtxCatF(sp60, sp20, sp60);
    arg1->x = sp60[3][0];
    arg1->y = sp60[3][1];
    arg1->z = sp60[3][2];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DD17C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DD2B0_ovl17.s")

void func_801DD440_ovl17(struct GObj *arg0) {
    func_800A9864(0x100EC, 0x23, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], &procMainStub);
    func_800AA018(0x1067C);
    func_800AA018(0x1067D);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    ohSleep(0x126);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    curObjSleepForever();
}

void func_801DD60C_ovl17(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = &func_800B5094;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    D_800E0F10[omCurrentObj->objId] = 0x19;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    func_800A9864(0x100F1, 0x23, 0x10);
    func_800AA018(0x1068D);
    func_800AA018(0x1068E);
    func_800AF27C();
    func_800B1900((u16) omCurrentObj->objId);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DD704_ovl17.s")

void func_801DD88C_ovl17(struct GObj *arg0) {
    GObj *temp_v1;
    struct DObj *temp_t7;
    s32 temp_v0;

    temp_v1 = (GObj *) D_800E98E0[omCurrentObj->objId];
    temp_t7 = D_800DFBD0[omCurrentObj->objId][5];
    if (temp_v1 != NULL) {
        temp_v0 = (s32) temp_v1->unk4C;
        if (temp_v0 != 0) {
            func_800B2340((Vector *) (temp_v0 + 4), temp_t7, 0xFFFF);
        }
    }
}
