#include "common.h"

#include "GObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "unk_structs/D_800E1B50.h"

#include "ovl1/track.h"

struct Ovl7Unk94 {
    u8 filler0[0xC];
    s32 unkC;
    s32 unk10;
    f32 unk14;
    s32 unk18;
    u32 unk1C;
};


extern f32 D_801CE1DC_ovl7;
extern f32 D_800E10D0[], D_800E1290[], D_800E1450[];
extern FUNCLIST D_801CD4D0_ovl7;
void func_800B4924(s32);
void func_800B4954(s32);
s32 func_800F98EC(s32, f32);
void func_800F8E6C(GObj *);
extern s32 D_800E0D50[];
extern f32 D_800E17D0[], D_800E6A10[];

void procMainStub(struct GObj *);
extern struct GObjProcess *gEntityGObjProcessArray5[];

void func_800AF27C(void);
void play_sound(s32);
void func_800FD570(s32, s32, f32, f32, f32);

void func_800AA018(s32);
void func_800AA864(s32, s32);
void func_800B1900(u16);

void func_800A9864(s32, s32, s32);
void func_800AF408(void);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800A9F98(s32, f32);
extern f32 D_801CE1E8_ovl7;
void func_801ACFD0_ovl7(GObj *arg0) {
    if (D_800E8E60[omCurrentObj->objId] == 0) {
        D_800DEF90[omCurrentObj->objId] = func_800B4954;
    } else {
        D_800DEF90[omCurrentObj->objId] = func_800B4924;
    }
    D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
    D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
    D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x15, &D_801CD4D0_ovl7);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD0E8_ovl7.s")

void func_801AD2EC_ovl7(GObj *arg0) {
    func_800A9864(0x100D7, 0x1869F, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x10610);
    func_800AA018(0x10611);
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801AD4A8_ovl7(GObj *arg0) {
    func_800A9864(0x100DB, 0x1869F, 0x10);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x1061B);
    func_800AA864(0x1061A, 1);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801AD63C_ovl7(GObj *arg0) {
    func_800A9864(0x1003D, 0x1869F, 0x10);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA864(0x101A8, 1);
    func_800FD570(0, 0, 0.0f, 0.0f, 0.0f);
    play_sound(0x159);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801AD7E8_ovl7(GObj *arg0) {
    func_800A9864(0x100E0, 0x1869F, 0x10);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x10627);
    func_800AA018(0x10628);
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AD980_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ADC60_ovl7.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801ADE10_ovl7.s")

void func_801ADF58_ovl7(GObj *arg0) {
    func_800A9864(0x100C2, 0x1869F, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]] + (D_800E6A10[D_800E0D50[omCurrentObj->objId]] * D_801CE1DC_ovl7);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x105E9);
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801AE154_ovl7(GObj *arg0) {
    func_800A9864(0x100C2, 0x1869F, 0x10);
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = gEntitiesAngleXArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.y = gEntitiesAngleYArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.z = gEntitiesAngleZArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.x = gEntitiesScaleXArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.y = gEntitiesScaleYArray[omCurrentObj->objId];
    arg0->data.dobj->scale.v.z = gEntitiesScaleZArray[omCurrentObj->objId];
    func_800AA018(0x105EA);
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

extern f32 D_801CE1E0_ovl7;
void func_800B5064(s32);
void func_800AA018(s32);
void func_800AF27C(void);
void func_800B1900(u16);

void func_801AE304_ovl7(s32 arg0) {
    func_800A9864(0x100CD, 0x1869F, 0x10);
    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800E0F10[omCurrentObj->objId] = 1;
    D_800DDA90[omCurrentObj->objId] = 0x25;
    func_800AA018(0x105FB);
    gEntitiesAngleYArray[omCurrentObj->objId] += D_801CE1E0_ovl7;
    func_800AF27C();
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

extern f32 D_801CE1E4_ovl7;
void func_800B8550(s32);
void func_801AE4E4_ovl7(struct GObj *);
void func_801AE52C_ovl7(void);
void func_801AE5D4_ovl7(void);
void func_800A7F74(u32, u32, u16, f32, f32, f32);

void func_801AE3DC_ovl7(s32 arg0) {
    D_800DF150[omCurrentObj->objId] = func_801AE4E4_ovl7;
    D_800DEF90[omCurrentObj->objId] = func_800B8550;
    func_801AE52C_ovl7();
    func_801AE5D4_ovl7();
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_801CE1E4_ovl7;
    ohSleep(0xC);
    func_800A7F74(3, 2, 0xEC, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    play_sound(0x158);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801AE4E4_ovl7(GObj *arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] -= D_801CE1E8_ovl7 * D_800E6A10[omCurrentObj->objId];
}

void func_801AE52C_ovl7(void) {
    struct Ovl7Unk94 *p;
    struct Sub800E1B50_Unk88 *q;

    q = (struct Sub800E1B50_Unk88 *) D_800E9E20[omCurrentObj->objId];
    p = (struct Ovl7Unk94 *) q->unk18;
    func_800A9864(D_800E9AA0[omCurrentObj->objId], 0x1869F, 0x10);
    if (p->unkC != -1) {
        func_800AECC0(p->unk14);
        func_800AED20(p->unk14);
        func_800A9F98(p->unkC, 1.0f);
        if (p->unk10 != -1) {
            func_800A9F98(p->unk10, 1.0f);
        }
    }
    func_800AF408();
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_6/func_801AE5D4_ovl7.s")

s32 func_801AE73C_ovl7(s32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    s32 idx;

    idx = request_track_general(0x1B, 0x3C, 0x4A);
    if (idx == -1) {
        return -1;
    }
    gEntityFuncListIDArray[idx] = arg0;
    gEntitiesNextPosXArray[idx] = arg1;
    gEntitiesNextPosYArray[idx] = arg2;
    gEntitiesNextPosZArray[idx] = arg3;
    D_800E8E60[idx] = 1;
    return idx;
}

s32 func_801AE7E0_ovl7(s32 arg0) {
    s32 ret = func_801AE73C_ovl7(arg0, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);

    if (ret == -1) {
        return -1;
    }
    D_800E5F90[ret] = D_800E6150[ret] = D_800E5F90[omCurrentObj->objId];
    D_800E6BD0[ret] = D_800E6D90[ret] = D_800E6BD0[omCurrentObj->objId];
    return ret;
}

s32 func_801AE8AC_ovl7(s32 arg0, Vector *arg1) {
    s32 idx;
    f32 *px;
    f32 *py;
    f32 *pz;

    idx = func_801AE7E0_ovl7(arg0);
    if (idx == -1) {
        return -1;
    }
    px = &gEntitiesNextPosXArray[idx];
    *px = *px + arg1->x;
    py = &gEntitiesNextPosYArray[idx];
    *py = *py + arg1->y;
    pz = &gEntitiesNextPosZArray[idx];
    *pz = *pz + arg1->z;
    return idx;
}

s32 func_801AE940_ovl7(s32 arg0, f32 arg1, f32 arg2) {
    s32 ret = func_801AE7E0_ovl7(arg0);

    if (ret == -1) {
        return -1;
    }
    D_800E8E60[ret] = 0;
    gEntitiesNextPosYArray[ret] += arg2;
    if (func_800F98EC(ret, D_800E6A10[omCurrentObj->objId] * arg1) != 0) {
        func_800B1900((u16) ret);
        return -1;
    }
    func_800F8E6C(D_800DE350[ret]);
    return ret;
}

