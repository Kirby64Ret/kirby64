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

extern f32 D_801E5558_ovl17;
extern f32 D_801E5578_ovl17;
extern f32 D_801E557C_ovl17;
extern f32 D_801E5580_ovl17;

struct Ovl17CamPos {
    Vector unk0;
    s32 unkC;
    s32 unk10;
    s32 unk14;
};

extern struct Ovl17CamPos D_800D7B20;
extern Vector D_800D7B2C;
extern struct Ovl17CamPos D_800D7B38;
extern Vector D_801E4E60_ovl17;
extern s32 D_800D6B54;
extern f32 D_800D715C;
extern f32 D_800D7160;
extern f32 D_800D7164;
extern f32 D_800D7168;
extern f32 D_800D716C;
extern f32 D_801E56F0_ovl17;
extern f32 D_801E56F4_ovl17;
extern f32 D_801E56F8_ovl17;
void func_800A71A0(s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DB1E0_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBA8C_ovl17.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DBDA8_ovl17.s")


void func_801DC2D0_ovl17(void) {
    Vector sp1C;

    sp1C = D_801E4E60_ovl17;
    lbvector_Normalize(&sp1C);
    lbvector_Rotate(&sp1C, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(&sp1C, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(&sp1C, 4, D_800EAA60[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = -sp1C.x * D_800D716C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = -sp1C.y * D_800D716C;
    gEntitiesNextPosZArray[omCurrentObj->objId] = -sp1C.z * D_800D716C;
}

void func_801DC3F4_ovl17(void) {
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC460_ovl17.s")

void func_801DC71C_ovl17(struct GObj *arg0) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC724_ovl17.s")

#ifdef MIPS_TO_C
void func_801DC91C_ovl17(struct GObj *arg0) {
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = D_800E7CE0[omCurrentObj->objId];
    if (temp_v0 != 0) {
        D_800E7CE0[omCurrentObj->objId] = temp_v0 - 1;
        if (temp_v0 <= 0) {
            D_800E7CE0[omCurrentObj->objId] = 0;
        }
    }
    temp_v1 = omCurrentObj->objId;
    if (temp_v1 == 0) {
        func_80111534(temp_v1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DC91C_ovl17.s")
#endif


void func_801DC98C_ovl17(void) {
    Vector sp2C;
    Camera *cam;

    cam = D_800D799C->data.cam;
    if (D_800D7098.unk0 == 2) {
        func_801DD17C_ovl17();
        return;
    }
    if (D_800D6B54 == 1) {
        func_801DD2B0_ovl17();
        return;
    }
    if (D_800D7098.unk0 == 1) {
        D_800D7168 += D_801E5558_ovl17;
    }
    D_800D7B38 = D_800D7B20;
    func_801DCB44_ovl17(&sp2C);
    cam->viewMtx.lookAt.eye.x = sp2C.x;
    cam->viewMtx.lookAt.eye.y = sp2C.y;
    cam->viewMtx.lookAt.eye.z = sp2C.z;
    func_801DCFD4_ovl17(&sp2C);
    cam->viewMtx.lookAt.at.x = sp2C.x;
    cam->viewMtx.lookAt.at.y = sp2C.y;
    cam->viewMtx.lookAt.at.z = sp2C.z;
    func_801DD040_ovl17(&sp2C);
    cam->viewMtx.lookAt.up.x = sp2C.x;
    cam->viewMtx.lookAt.up.y = sp2C.y;
    cam->viewMtx.lookAt.up.z = sp2C.z;
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    D_801E56F0_ovl17 = cam->viewMtx.lookAt.eye.x;
    D_801E56F4_ovl17 = cam->viewMtx.lookAt.eye.y;
    D_801E56F8_ovl17 = cam->viewMtx.lookAt.eye.z;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DCB44_ovl17.s")


void func_801DCFD4_ovl17(Vector *arg0) {
    Vector sp1C;

    sp1C.x = -D_801E56D0_ovl17 * 0.8f;
    sp1C.y = -(D_801E56D4_ovl17 - D_800D7164) * 0.8f;
    sp1C.z = D_800D716C;
    func_801DD09C_ovl17(&sp1C, arg0);
}

void func_801DD040_ovl17(Vector *arg0) {
    Vector sp1C;

    sp1C.x = 0.0f;
    sp1C.y = D_800D7164 + D_801E557C_ovl17;
    sp1C.z = D_800D716C - D_800D7168;
    func_801DD09C_ovl17(&sp1C, arg0);
}

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


void func_801DD17C_ovl17(void) {
    Camera *cam;

    cam = D_800D799C->data.cam;
    D_800D7B38 = D_800D7B20;
    func_800A71A0(0x10);
    cam->viewMtx.lookAt.eye.x *= 0.2f;
    cam->viewMtx.lookAt.eye.y = (cam->viewMtx.lookAt.eye.y * 0.2f) + D_800D7164;
    cam->viewMtx.lookAt.eye.z *= 0.2f;
    cam->viewMtx.lookAt.at.x *= 0.2f;
    cam->viewMtx.lookAt.at.y *= 0.2f;
    cam->viewMtx.lookAt.at.z *= 0.2f;
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
}

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

s32 func_800A8234(s32, s32, s32);
void func_800A22D4(struct GObj *);
void func_800BC0F0(s32);
void func_800B4924(struct GObj *);

void func_801DD704_ovl17(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
    D_800DEF90[omCurrentObj->objId] = &func_800B4924;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp_f0;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp_f0;
    D_800DDA90[omCurrentObj->objId] = 0x22;
    D_800DF150[omCurrentObj->objId] = &func_801DD88C_ovl17;
    func_800A9864(0x100F3, 0x23, 0x10);
    func_800AA018(0x10690);
    func_800AA018(0x10692);
    D_800E98E0[omCurrentObj->objId] = func_800A8234(0, 0, 0x42);
    ohSleep(0x82);
    play_sound(0x264);
    func_800BC0F0(1);
    ohSleep(0x20);
    play_sound(0x266);
    func_800BC0F0(2);
    func_800AF27C();
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_800A22D4((struct GObj *) D_800E98E0[omCurrentObj->objId]);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

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
