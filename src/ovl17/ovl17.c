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
extern f32 D_801E55A0_ovl17;
extern f32 D_801E55A4_ovl17;
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
extern Vector D_801E4E6C_ovl17;
extern s32 D_800D6B54;
extern s32 D_800D6B58;
extern s32 D_800BE4F8;
extern void auFunc80020C88(void);
extern void func_800A7EB4(void);
extern void func_8011DA34(void);
extern void play_music(s32, s32);
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

void func_801DC460_ovl17(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = &func_801DC71C_ovl17;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    D_800DF310[omCurrentObj->objId] = NULL;
    auFunc80020C88();
    func_800A7EB4();
    D_800E3910[omCurrentObj->objId] = 0.0f;
    D_800E3050[omCurrentObj->objId] = D_800E3210[omCurrentObj->objId] = D_800E33D0[omCurrentObj->objId] = D_800E3590[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId] = D_800E3910[omCurrentObj->objId];
    D_800E3E50[omCurrentObj->objId] = 65535.0f;
    D_800E3AD0[omCurrentObj->objId] = D_800E3C90[omCurrentObj->objId] = D_800E3E50[omCurrentObj->objId];
    func_8011DA34();
    play_sound(0xD8);
    play_music(0, 5);
    func_801DC724_ovl17();
    D_800D6B58 = 0x400;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    func_800AA018(0x10684);
    func_800AA018(0x10685);
    func_800AF27C();
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] <= 0) {
        func_800AA018(0x10686);
        func_800AA018(0x10687);
        func_800AF27C();
        D_800E9560[omCurrentObj->objId] += 1;
    }
    D_800D6B58 = 0x1E;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    curObjSleepForever();
}

void func_801DC71C_ovl17(struct GObj *arg0) {
}

void func_801DC724_ovl17(void) {
    Vector sp24;
    f32 temp_f0;

    sp24 = D_801E4E6C_ovl17;
    lbvector_Normalize(&sp24);
    lbvector_Rotate(&sp24, 1, D_800EA6E0[omCurrentObj->objId]);
    lbvector_Rotate(&sp24, 2, D_800EA8A0[omCurrentObj->objId]);
    lbvector_Rotate(&sp24, 4, D_800EAA60[omCurrentObj->objId]);
    D_800E3590[omCurrentObj->objId] = sp24.x * 0.5f;
    D_800E3750[omCurrentObj->objId] = sp24.y * 0.5f;
    D_800E3910[omCurrentObj->objId] = sp24.z * 0.5f;
    temp_f0 = sp24.x * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3AD0[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3AD0[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp24.y * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3C90[omCurrentObj->objId] = temp_f0;
    }
    temp_f0 = sp24.z * 12.0f;
    if (temp_f0 < 0.0f) {
        D_800E3E50[omCurrentObj->objId] = -temp_f0;
    } else {
        D_800E3E50[omCurrentObj->objId] = temp_f0;
    }
}

#ifdef NON_MATCHING
/* FACTORY: 6/28, one-slot rotation of the ARGUMENT registers, nothing else.
 * 6 diffs (was 16): hoisting omCurrentObj into a local is what puts it in $v0.
 * What is left is that the ROM keeps $a0 reserved (base in $a2, element address
 * in $a1) while IDO reuses $a0 for the element address -- the same two values,
 * the same order, one slot lower.  All 6 diffs are that pair renamed; every
 * other instruction, both branch-likelies and the parameter home store are
 * exact.  Two variants spent and BOTH measured 6/28 unchanged: a K&R definition
 * (the lever that is load-bearing for parameter homing elsewhere in ovl17/ovl18
 * does nothing here -- the home store is already emitted by the prototyped
 * form), and an explicit `s32 *p = &D_800E7CE0[obj->objId]` pointer local for
 * the element address.  Permuter food. */
void func_801DC91C_ovl17(struct GObj *arg0) {
    struct GObj *obj;
    s32 temp_v1;

    obj = omCurrentObj;
    temp_v1 = D_800E7CE0[obj->objId];
    if (temp_v1 != 0) {
        D_800E7CE0[obj->objId] = temp_v1 - 1;
        if (temp_v1 <= 0) {
            D_800E7CE0[obj->objId] = 0;
        }
    }
    if (obj->objId == 0) {
        func_80111534(obj->objId);
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
        D_800D7168 += 1.2f;
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

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
extern f32 D_801E56D8_ovl17;
extern f32 D_801E56DC_ovl17;
extern f32 D_801E56E0_ovl17;
extern f32 D_801E56E4_ovl17;
extern f32 D_801E56E8_ovl17;
extern f32 D_801E56EC_ovl17;
extern u16 gPlayerControllers;

void func_801DCB44_ovl17(Vector *arg0) {
    f32 sp44;
    f32 sp40;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f12_3;
    f32 var_f2;
    f32 var_f6;
    s32 temp_a1;
    s32 var_v1;

    temp_a1 = gPlayerControllers & 0x300;
    if (temp_a1 != 0) {
        D_801E56E8_ovl17 = 8.0f;
        if (gPlayerControllers & 0x100) {
            D_801E56D8_ovl17 = 210.0f;
        } else {
            D_801E56D8_ovl17 = -210.0f;
        }
        var_v1 = gPlayerControllers & 0xC00;
        if (var_v1 != 0) {
            var_f6 = D_801E56D8_ovl17 / 1.4142135f;
            goto block_9;
        }
    } else if (D_801E56E8_ovl17 > 0.0f) {
        var_v1 = gPlayerControllers & 0xC00;
        D_801E56E8_ovl17 -= 1.0f;
    } else {
        var_f6 = 0.0f;
        var_v1 = gPlayerControllers & 0xC00;
block_9:
        D_801E56D8_ovl17 = var_f6;
    }
    if (var_v1 != 0) {
        D_801E56EC_ovl17 = 8.0f;
        if (gPlayerControllers & 0x800) {
            D_801E56DC_ovl17 = -200.0f + D_800D7164;
        } else {
            D_801E56DC_ovl17 = 100.0f + D_800D7164;
        }
        if (temp_a1 != 0) {
            D_801E56DC_ovl17 /= 1.4142135f;
        }
    } else if (D_801E56EC_ovl17 > 0.0f) {
        D_801E56EC_ovl17 -= 1.0f;
    } else {
        D_801E56DC_ovl17 = D_800D7164;
    }
    if (D_800D6B54 == 1) {
        D_801E56D8_ovl17 = 0.0f;
        D_801E56DC_ovl17 = D_800D7164;
    }
    temp_f2 = (D_801E56D8_ovl17 - D_801E56D0_ovl17) * 0.05f;
    temp_f18 = (D_801E56DC_ovl17 - D_801E56D4_ovl17) * 0.05f;
    sp44 = temp_f2;
    sp40 = temp_f18;
    temp_f12 = (temp_f2 * temp_f2) + (temp_f18 * temp_f18);
    sp28 = temp_f12;
    temp_f14 = temp_f2 * 0.5f;
    temp_f16 = sqrtf(temp_f12) * 0.5f;
    temp_f0 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
    if (temp_f2 < 0.0f) {
        var_f12 = -temp_f2;
    } else {
        var_f12 = temp_f2;
    }
    if (var_f12 > 0.0001f) {
        D_801E56E0_ovl17 += temp_f2 * 0.1f;
        var_f12_2 = D_801E56E0_ovl17;
        if (temp_f0 < var_f12_2) {
            D_801E56E0_ovl17 = temp_f0;
            goto block_29;
        }
        temp_f14_2 = -temp_f0;
        if (var_f12_2 < temp_f14_2) {
            D_801E56E0_ovl17 = temp_f14_2;
block_29:
            var_f12_2 = D_801E56E0_ovl17;
        }
        D_801E56D0_ovl17 += var_f12_2;
    } else {
        D_801E56E0_ovl17 = 0.0f;
        D_801E56D0_ovl17 = D_801E56D8_ovl17;
    }
    sp40 = temp_f18;
    temp_f2_2 = temp_f18 * 0.5f;
    temp_f16_2 = sqrtf(sp28) * 0.5f;
    temp_f0_2 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f16_2 * temp_f16_2));
    if (temp_f18 < 0.0f) {
        var_f12_3 = -temp_f18;
    } else {
        var_f12_3 = temp_f18;
    }
    if (var_f12_3 > 0.0001f) {
        D_801E56E4_ovl17 += temp_f18 * 0.1f;
        var_f2 = D_801E56E4_ovl17;
        if (temp_f0_2 < var_f2) {
            D_801E56E4_ovl17 = temp_f0_2;
            goto block_40;
        }
        temp_f14_3 = -temp_f0_2;
        if (var_f2 < temp_f14_3) {
            D_801E56E4_ovl17 = temp_f14_3;
block_40:
            var_f2 = D_801E56E4_ovl17;
        }
        D_801E56D4_ovl17 += var_f2;
    } else {
        D_801E56E4_ovl17 = 0.0f;
        D_801E56D4_ovl17 = D_801E56DC_ovl17;
    }
    sp30 = D_801E56D0_ovl17;
    sp34 = D_801E56D4_ovl17;
    sp38 = D_800D716C - D_800D7168;
    func_801DD09C_ovl17((Vector *) &sp30, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17/func_801DCB44_ovl17.s")
#endif


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
    sp1C.y = D_800D7164 + 10000.0f;
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
    f32 s;

    cam = D_800D799C->data.cam;
    D_800D7B38 = D_800D7B20;
    func_800A71A0(0x10);
    s = 0.2f;
    cam->viewMtx.lookAt.eye.x *= s;
    cam->viewMtx.lookAt.eye.y = (cam->viewMtx.lookAt.eye.y * s) + D_800D7164;
    cam->viewMtx.lookAt.eye.z *= s;
    cam->viewMtx.lookAt.at.x *= s;
    cam->viewMtx.lookAt.at.y *= s;
    cam->viewMtx.lookAt.at.z *= s;
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
}

/* Camera seat used while D_800D6B54 == 1 (the boss intro hold).  The eye
   snaps to the cached func_801DC98C eye, the look-at point eases 15% per
   frame toward Kirby's next position (entity slot 0), and the up vector
   decays by 0.9 -- a DOUBLE-precision product on the N64 (cvt.d.s / mul.d /
   cvt.s.d), which is why the constant is 0.9 and not 0.9f. */
void func_801DD2B0_ovl17(void) {
    Camera *cam = D_800D799C->data.cam;

    D_800D7B38 = D_800D7B20;
    cam->viewMtx.lookAt.eye.x = D_801E56F0_ovl17;
    cam->viewMtx.lookAt.eye.y = D_801E56F4_ovl17;
    cam->viewMtx.lookAt.eye.z = D_801E56F8_ovl17;
    cam->viewMtx.lookAt.at.x = (gEntitiesNextPosXArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.x * 0.85f);
    cam->viewMtx.lookAt.at.y = (gEntitiesNextPosYArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.y * 0.85f);
    cam->viewMtx.lookAt.at.z = (gEntitiesNextPosZArray[0] * 0.15f) + (cam->viewMtx.lookAt.at.z * 0.85f);
    cam->viewMtx.lookAt.up.x = (f32) (cam->viewMtx.lookAt.up.x * 0.9);
    cam->viewMtx.lookAt.up.y = (f32) (cam->viewMtx.lookAt.up.y * 0.9);
    cam->viewMtx.lookAt.up.z = (f32) (cam->viewMtx.lookAt.up.z * 0.9);
    cam->perspMtx.persp.fovy = D_800D7158[0];
    cam->perspMtx.persp.near = D_800D715C;
    cam->perspMtx.persp.far = D_800D7160;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
}

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

/* ovl17.c's trailing alignment padding: 48 bytes that splat put at the head
 * of ovl17_2. It has to assemble at the END of THIS translation unit, or
 * ovl17_2's .text base is 16 mod 32 and every dead epilogue in it is
 * misaligned (func_801DDB8C_ovl17, func_801DDF6C_ovl17). */
/* The listing lives in asm_manual/ (committed) because a fresh splat split of
 * the current yaml no longer emits it, and asm/ is gitignored. */
#pragma GLOBAL_ASM("asm_manual/ovl17/func_801DD8F0_ovl17.s")
