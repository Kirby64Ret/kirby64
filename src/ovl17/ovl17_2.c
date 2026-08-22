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

extern f32 D_801E55E8_ovl17;
extern f32 D_801E567C_ovl17;
extern f32 D_801E55EC_ovl17;
extern f32 D_801E55F0_ovl17;
extern f32 D_801E55F4_ovl17;
extern f32 D_801E55F8_ovl17;

extern f32 D_800D7170;
extern f32 D_801E5700_ovl17;
extern f32 D_801E5704_ovl17;
void func_801DDB8C_ovl17(struct GObj *);
void func_801DDC40_ovl17(struct GObj *);
void func_801DFABC_ovl17(void);
void func_801E069C_ovl17(void);
void func_801E0704_ovl17(void);
void func_801E073C_ovl17(void);
void func_801DEA5C_ovl17(void);
void func_801DF768_ovl17(f32);
void func_800A9EA4(s32, s32);
void func_800AA608(struct DObj *, s32, f32, u32, f32);
void func_800A9F98(s32, f32);
void func_801DE9A8_ovl17(struct GObj *);
void func_800FD570(s32, s32, f32, f32, f32);
void func_801AE7E0_ovl7(s32);
void func_800BB468(s32, s32);
void func_8019F1EC_ovl7(void);
void func_800F6C88(void);
void play_music(s32, u32);
void auFunc80020C88(void);

/* func_801DD8F0_ovl17 assembles at the end of ovl17.c -- see the note there. */

void func_801DD920_ovl17(struct GObj *arg0) {
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, D_801E5400_ovl17);
}

void func_801DD964_ovl17(struct GObj *arg0) {
    void func_800B4924(s32);
    D_800DEF90[omCurrentObj->objId] = func_800B4924;
    D_800E8E60[omCurrentObj->objId] = 1;
    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleXArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    D_800EAA60[omCurrentObj->objId] = 0.0f;
    gEntitiesAngleZArray[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId];
    D_800E98E0[omCurrentObj->objId] = 0;
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0;
    D_800E9C60[omCurrentObj->objId] = 0;
    D_800E9E20[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800EA1A0[omCurrentObj->objId] = 0;
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800EAC20[omCurrentObj->objId] = 0.0;
    D_800EADE0[omCurrentObj->objId] = 0.0;
    D_800EAFA0[omCurrentObj->objId] = 0.0;
    D_800D7098.unk4 = 0;
    D_800E7B20[omCurrentObj->objId] = 60.0f;
    D_800E0D50[omCurrentObj->objId] = -1;
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801DDB8C_ovl17(arg0);
}

void func_801DDB8C_ovl17(struct GObj *arg0) {
    while (1) {
        D_800DF150[omCurrentObj->objId] = func_801DDC40_ovl17;
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 5, D_801E5404_ovl17);
    }
}
void func_801DDC40_ovl17(struct GObj *arg0) {
    func_801DFABC_ovl17();
    func_801E069C_ovl17();
    func_801E0704_ovl17();
    utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 5, D_801E5418_ovl17);
    if (D_800E9FE0[omCurrentObj->objId].as_u32 != 0) {
        D_800E98E0[omCurrentObj->objId] = 0;
        D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
        D_800EA1A0[omCurrentObj->objId] = 0xA;
        gEntityFuncListIDArray[omCurrentObj->objId] = 3;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDB8C_ovl17);
    }
    func_801E073C_ovl17();
}

void func_801DDD38_ovl17(struct GObj *arg0) {
    s32 func_801E0B38_ovl17(s32, s32);
    void func_801ACD48_ovl7(s32, s32);
    void func_800BC1FC(s32);
    void func_800AF27C(void);
    extern s32 D_800D6E48;

    D_800DDFD0[omCurrentObj->objId] = 0;
    func_801ACD48_ovl7(0x41, 0);
    if (D_800D6E48 == 0) {
        func_800AA018(0x104FE);
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
        ohSleep(0x10);
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        func_800AA018(0x104FE);
        func_800AA018(0x104FF);
        ohSleep(0x80);
        ohSleep(0x1E);
    } else {
        func_800A9F98(0x1050B, 64.0f);
        func_800A9F98(0x1050C, 64.0f);
        ohSleep(0x1E);
    }
    D_800D6E48 = 1;
    func_800BC1FC((s32) D_800E7B20[omCurrentObj->objId]);
    func_800AF27C();
    D_800EBBE0[omCurrentObj->objId] = func_801E0B38_ovl17(0x3E, 0);
    D_800EBDA0[omCurrentObj->objId] = func_801E0B38_ovl17(0x3F, 0);
    D_800EBF60[omCurrentObj->objId] = func_801E0B38_ovl17(0x40, 0);
    D_800EC120[omCurrentObj->objId] = func_801E0B38_ovl17(0x40, 1);
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DDF24_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if ((D_800E9AA0[omCurrentObj->objId] == NULL) && (temp_v0 != NULL)) {
        temp_v0->flags = 0;
    }
}

void func_801DDF6C_ovl17(struct GObj *arg0) {
    D_800DDFD0[omCurrentObj->objId] = 1;
    func_800AA018(0x1050C);
    func_800AA608(arg0->data.dobj->firstChild, 0x1050B, 8.0f, 0x10083, 8.0f);
    func_800A9F98(0x1050B, 8.0f);
    while (1) {
        *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 2;
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] = 0;
        while (D_800E9560[omCurrentObj->objId] < 0xC) {
            *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 1;
            if (D_800E98E0[omCurrentObj->objId] != 0) {
                break;
            }
            ohSleep(1);
            D_800E9560[omCurrentObj->objId] += 1;
        }
        *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0;
        ohSleep(0x1C);
    }
}
void func_801DE104_ovl17(struct GObj *arg0) {
    struct DObj *sp1C;

    sp1C = D_800DFBD0[omCurrentObj->objId][0x19];
    func_801DEA5C_ovl17();
    switch (D_800E98E0[omCurrentObj->objId]) {
    case 0:
        if (D_800E9AA0[omCurrentObj->objId] == (struct EntityThing800E9AA0 *) 1) {
            if (sp1C != NULL) {
                sp1C->flags = 2;
            }
        } else {
            if (sp1C != NULL) {
                sp1C->flags = 0;
            }
        }
        break;
    case 1:
        if (sp1C != NULL) {
            sp1C->flags = 2;
        }
        break;
    case 2:
        if (sp1C != NULL) {
            sp1C->flags = 0;
        }
        gEntityFuncListIDArray[omCurrentObj->objId] = 2;
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801DDB8C_ovl17);
        break;
    }
}

/* Byte-exact as written, but ovl17's rodata is an unmigrated asm blob, so the
 * float literals below make IDO emit a second copy into this TU's .rodata
 * and the segment grows. Referencing D_801E55E8/F0/F4/F8_ovl17 instead
 * reschedules the loads (IDO reloads a global where it CSEs a literal), so
 * the body stays parked until ovl17_2's rodata can be migrated. */
void func_801DE214_ovl17(struct GObj *arg0) {
    f32 temp_f20;

    D_800DDFD0[omCurrentObj->objId] = 2;
    func_800AA018(0x1050A);
    func_800AA608(arg0->data.dobj->firstChild, 0x10509, 4.0f, 0x10083, 4.0f);
    func_800A9F98(0x10509, 4.0f);
    func_800AF27C();
    func_800AA018(0x10507);
    func_800AA018(0x10508);
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 6) {
        func_801DF768_ovl17((D_800D7170 * 1.8f) * 3.0f);
        ohSleep(1);
        D_800E9560[omCurrentObj->objId] += 1;
    }
    ohSleep(0xC2);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}

void func_801DE3D4_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
}

#ifdef NON_MATCHING
/* 45/208, and the residue is ONE register rotation repeated: the ROM holds
 * omCurrentObj in $v1 and objId*4 in $a1, IDO takes $a1 and $a2 -- every
 * instruction is otherwise exact, including the frame.  The `u8 pad[16]` IS
 * load-bearing: the ROM's frame is 0x68 with the Vector at 0x5C, and without
 * the pad IDO gives 0x58/0x4C (48 -> 45 diffs).  Swept: 1-5 leading s32 pads,
 * a leading unused scalar, temp declared first, no temp local at all (214),
 * an explicit objId local (199), `x = x + 1` vs `x++`, and dropping the
 * redundant block-scope func_801ACD90_ovl7 prototype.  No implicit-declaration
 * or return-type lever exists here -- every callee is prototyped in a header,
 * and the rotation needs temps one slot DOWN, which only freeing $v0 gives. */
void func_801DE40C_ovl17(struct GObj *arg0) {
    Vector sp5C;
    u8 pad[16];
    struct DObj *temp;

    temp = D_800DFBD0[omCurrentObj->objId][31];
    D_800DDFD0[omCurrentObj->objId] = 3;
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = 0;
    func_800AA018(0x10501);
    func_800AA608(arg0->data.dobj->firstChild, 0x10500, 4.0f, 0x10083, 4.0f);
    func_800A9F98(0x10500, 4.0f);
    D_800E93A0[omCurrentObj->objId] = 0x14;
    ohSleep(8);
    utilGetTransformSRT(&sp5C, temp);
    func_801ACD90_ovl7(0x3D, 1, &sp5C);
    play_sound(0x25E);
    D_800E9560[omCurrentObj->objId] = 0;
    while (D_800E9560[omCurrentObj->objId] < 2) {
        ohSleep((random_soft_s32_range(0xA) * 7) + 7);
        utilGetTransformSRT(&sp5C, temp);
        func_801ACD90_ovl7(0x3D, 0, &sp5C);
        play_sound(0x25E);
        D_800E9560[omCurrentObj->objId]++;
    }
    D_800EA1A0[omCurrentObj->objId] = 9;
    while (D_800EA1A0[omCurrentObj->objId] >= 6) {
        D_800E9560[omCurrentObj->objId] = 0;
        while (D_800E9560[omCurrentObj->objId] < 3) {
            ohSleep((random_soft_s32_range(8) * 7) + 0xE);
            utilGetTransformSRT(&sp5C, temp);
            func_801ACD90_ovl7(0x3D, 0, &sp5C);
            play_sound(0x25E);
            D_800E9560[omCurrentObj->objId]++;
        }
        D_800EA1A0[omCurrentObj->objId]--;
    }
    D_800EA1A0[omCurrentObj->objId] = 0;
    ohSleep(9);
    D_800D7098.unk4 = 0;
    ohSleep(1);
    func_800AA018(0x10504);
    D_800EA360[omCurrentObj->objId] = 0;
    D_800EA520[omCurrentObj->objId] = 0x3C;
    gEntityFuncListIDArray[omCurrentObj->objId] = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DE40C_ovl17.s")
#endif

void func_801DE74C_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;
    s32 temp_a1;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
    if (D_800E93A0[omCurrentObj->objId] > 0) {
        func_801DF768_ovl17(-(D_800D7170 * 1.8f) * 3.0f);
        D_800E93A0[omCurrentObj->objId] -= 1;
    }
    temp_a1 = D_800EA360[omCurrentObj->objId];
    if (temp_a1 > 0) {
        D_800EA360[omCurrentObj->objId] = temp_a1 - 1;
        func_800A9EA4(0x10502, temp_a1);
        return;
    }
    func_800A9EA4(0x10504, temp_a1);
}

void func_801DE850_ovl17(struct GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801DE9A8_ovl17;
    D_800D7098.unk0 = 1;
    func_800AA018(0x10506);
    play_sound(0x2A);
    func_800FD570(0, 2, 0.0f, 0.0f, 0.0f);
    func_801AE7E0_ovl7(0x11);
    func_800BB468(3, 0);
    D_800EA1A0[omCurrentObj->objId] = 0;
    func_8019F1EC_ovl7();
    func_800AA608(arg0->data.dobj->firstChild, 0x10505, 4.0f, 0x10083, 4.0f);
    func_800A9F98(0x10505, 4.0f);
    ohSleep(0x12);
    play_sound(0x25D);
    ohSleep(0x2D);
    func_800F6C88();
    play_music(0, 0x99999999);
    ohSleep(0xFA);
    auFunc80020C88();
    ohSleep(-0x15);
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    curObjSleepForever();
}

/* Byte-exact as written, but ovl17's rodata is an unmigrated asm blob, so the
 * float literals below make IDO emit a second copy into this TU's .rodata
 * and the segment grows. Referencing D_801E55E8/F0/F4/F8_ovl17 instead
 * reschedules the loads (IDO reloads a global where it CSEs a literal), so
 * the body stays parked until ovl17_2's rodata can be migrated. */
void func_801DE9A8_ovl17(struct GObj *arg0) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x19];
    if (temp_v0 != NULL) {
        temp_v0->flags = 0;
    }
    func_801DFABC_ovl17();
    func_801E069C_ovl17();
    func_801E0704_ovl17();
    D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.3f;
    D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.3f;
    func_801DEA5C_ovl17();
    func_801E073C_ovl17();
}

#ifdef MIPS_TO_C
/* FACTORY: 29/835, frame 0x140 vs the ROM's 0x138.
   One real lever landed here and is worth carrying to the other matrix
   functions in this overlay: writing the two zero arguments of the first
   HS64_MkRotationMtxF call as DOUBLE literals (0.0, not 0.0f) stops IDO
   CSEing them with the later zero stores into a callee-saved $f20 -- that
   removes an sdc1/ldc1 pair and 23 diffs (829 -> 806, LEVERS 7).  The ROM
   re-materialises `mtc1 $zero` at each use, which is now what we do too.
   Remaining: 8 bytes of locals we reserve and the ROM does not, which slides
   the three matrices (ROM: sp+0xE0 and below) and renames the body. */
/* PORT: per-frame boss orientation steering, from asm/nonmatchings/ovl17/
 * ovl17_2/func_801DEA5C_ovl17.s. Builds the target basis (Kirby's rotation,
 * entity slot 0, flipped pi about Y) and the boss's current basis, then runs
 * three axis servos -- yaw (forward row2 toward the target's about the up
 * row1, rate D_800EAC20), pitch (row2 toward the target's about the rebuilt
 * right row0, rate D_800EADE0), roll (row1 toward the target's about row2,
 * rate D_800EAFA0, 5x step) -- each with the same accelerate /
 * counter-steer-1.8x / clamp shape (the clamp helper below). The basis is
 * then re-orthonormalized and decomposed back into the D_800EA6E0/8A0/AA60
 * Euler angles and the entity angle arrays. */
f32 asinf(f32);
f32 atan2f(f32, f32);
Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);

/* remaining-angle brake, C-button speed base, symmetric clamp; returns the
 * clamped rate (the asm repeats this block verbatim for all three axes) */
static f32 pc_boss_steer_clamp(f32 *velp, f32 angle) {
    f32 vel = *velp;
    f32 mag = (vel < 0.0f) ? -vel : vel;
    f32 lim;

    if (D_801E5704_ovl17 < (angle - mag)) {
        lim = D_801E5704_ovl17;
    } else {
        if ((gKirbyController.buttonHeld & 0xC00) && (gKirbyController.buttonHeld & 0x300)) {
            lim = D_800D7170 / 1.4142135f;
        } else {
            lim = D_800D7170;
        }
        if (D_801E5704_ovl17 < lim) {
            lim = D_801E5704_ovl17;
        }
    }
    if (vel > lim) {
        *velp = vel = lim;
    } else if (vel < -lim) {
        *velp = vel = -lim;
    }
    return vel;
}

void func_801DEA5C_ovl17(void) {
    Mat4 cur;
    Mat4 tmp;
    Mat4 tgt;
    Vector a;
    Vector b;
    Vector axis;
    Vector cr;
    Vector ang;
    f32 angle;
    f32 step;
    f32 vel;
    s32 objId;

    guMtxIdentF(cur);
    HS64_MkRotationMtxF(tmp, 0.0, 3.1415927f, 0.0);
    guMtxCatF(cur, tmp, cur);
    HS64_MkRotationMtxF(tmp, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(cur, tmp, tgt);
    guMtxIdentF(cur);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(cur, tmp, cur);

    /* yaw: forward (row2) toward target forward, about up (row1) */
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    axis.x = cur[1][0]; axis.y = cur[1][1]; axis.z = cur[1][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    step = 0.0f;
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17
                                                             : -D_801E5700_ovl17;
        }
        vel = D_800EAC20[objId];
    } else {
        vel = D_800EAC20[objId];
        if (((vel < 0.0f) ? -vel : vel) < D_801E5704_ovl17) {
            D_800EAC20[objId] = 0.0f;
            vel = 0.0f;
        }
    }
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EAC20[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EAC20[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
    } else {
        step = 0.0f;
    }

    /* pitch: rebuild right row0 = row1 x row2, steer row2 about it */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17
                                                             : -D_801E5700_ovl17;
        }
        /* cross == 0 keeps the previous step, as on N64 */
    } else {
        step = 0.0f;
        D_800EADE0[objId] = 0.0f;
    }
    vel = D_800EADE0[objId];
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EADE0[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EADE0[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
    } else {
        step = 0.0f;
    }

    /* roll: up (row1) toward target up, about forward (row2), 5x step */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = tgt[1][0]; b.y = tgt[1][1]; b.z = tgt[1][2];
    axis.x = cur[2][0]; axis.y = cur[2][1]; axis.z = cur[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17 * 5.0f
                                                             : -D_801E5700_ovl17 * 5.0f;
        }
    } else {
        step = 0.0f;
        D_800EAFA0[objId] = 0.0f;
    }
    vel = D_800EAFA0[objId];
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EAFA0[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EAFA0[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[1][0] = a.x; cur[1][1] = a.y; cur[1][2] = a.z;
    }

    /* re-orthonormalize: row0 = row1 x row2, then row1 = row2 x row0 */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;

    /* Euler decomposition: pitch from -row0.z, gimbal-lock special-cased */
    ang.y = asinf(-cur[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(cur[1][0], cur[1][1]);
        } else {
            ang.x = atan2f(-cur[1][0], cur[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(cur[1][2], cur[2][2]);
        ang.z = atan2f(cur[0][1], cur[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#elif defined(PORT)
/* PORT: per-frame boss orientation steering, from asm/nonmatchings/ovl17/
 * ovl17_2/func_801DEA5C_ovl17.s. Builds the target basis (Kirby's rotation,
 * entity slot 0, flipped pi about Y) and the boss's current basis, then runs
 * three axis servos -- yaw (forward row2 toward the target's about the up
 * row1, rate D_800EAC20), pitch (row2 toward the target's about the rebuilt
 * right row0, rate D_800EADE0), roll (row1 toward the target's about row2,
 * rate D_800EAFA0, 5x step) -- each with the same accelerate /
 * counter-steer-1.8x / clamp shape (the clamp helper below). The basis is
 * then re-orthonormalized and decomposed back into the D_800EA6E0/8A0/AA60
 * Euler angles and the entity angle arrays. */
f32 asinf(f32);
f32 atan2f(f32, f32);
Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);

/* remaining-angle brake, C-button speed base, symmetric clamp; returns the
 * clamped rate (the asm repeats this block verbatim for all three axes) */
static f32 pc_boss_steer_clamp(f32 *velp, f32 angle) {
    f32 vel = *velp;
    f32 mag = (vel < 0.0f) ? -vel : vel;
    f32 lim;

    if (D_801E5704_ovl17 < (angle - mag)) {
        lim = D_801E5704_ovl17;
    } else {
        if ((gKirbyController.buttonHeld & 0xC00) && (gKirbyController.buttonHeld & 0x300)) {
            lim = D_800D7170 / 1.4142135f;
        } else {
            lim = D_800D7170;
        }
        if (D_801E5704_ovl17 < lim) {
            lim = D_801E5704_ovl17;
        }
    }
    if (vel > lim) {
        *velp = vel = lim;
    } else if (vel < -lim) {
        *velp = vel = -lim;
    }
    return vel;
}

void func_801DEA5C_ovl17(void) {
    Mat4 cur;
    Mat4 tmp;
    Mat4 tgt;
    Vector a;
    Vector b;
    Vector axis;
    Vector cr;
    Vector ang;
    f32 angle;
    f32 step;
    f32 vel;
    s32 objId;

    guMtxIdentF(cur);
    HS64_MkRotationMtxF(tmp, 0.0f, 3.1415927f, 0.0f);
    guMtxCatF(cur, tmp, cur);
    HS64_MkRotationMtxF(tmp, D_800EA6E0[0], D_800EA8A0[0], D_800EAA60[0]);
    guMtxCatF(cur, tmp, tgt);
    guMtxIdentF(cur);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(cur, tmp, cur);

    /* yaw: forward (row2) toward target forward, about up (row1) */
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    axis.x = cur[1][0]; axis.y = cur[1][1]; axis.z = cur[1][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    step = 0.0f;
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17
                                                             : -D_801E5700_ovl17;
        }
        vel = D_800EAC20[objId];
    } else {
        vel = D_800EAC20[objId];
        if (((vel < 0.0f) ? -vel : vel) < D_801E5704_ovl17) {
            D_800EAC20[objId] = 0.0f;
            vel = 0.0f;
        }
    }
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EAC20[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EAC20[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
    } else {
        step = 0.0f;
    }

    /* pitch: rebuild right row0 = row1 x row2, steer row2 about it */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    axis = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    b.x = tgt[2][0]; b.y = tgt[2][1]; b.z = tgt[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17
                                                             : -D_801E5700_ovl17;
        }
        /* cross == 0 keeps the previous step, as on N64 */
    } else {
        step = 0.0f;
        D_800EADE0[objId] = 0.0f;
    }
    vel = D_800EADE0[objId];
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EADE0[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EADE0[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[2][0] = a.x; cur[2][1] = a.y; cur[2][2] = a.z;
    } else {
        step = 0.0f;
    }

    /* roll: up (row1) toward target up, about forward (row2), 5x step */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = tgt[1][0]; b.y = tgt[1][1]; b.z = tgt[1][2];
    axis.x = cur[2][0]; axis.y = cur[2][1]; axis.z = cur[2][2];
    cr.x = cr.y = cr.z = 0.0f;
    angle = lbvector_Angle(&a, &b);
    if (angle > 0.008726646f) {
        vec3_normalized_cross_product(&a, &b, &cr);
        if ((cr.x != 0.0f) || (cr.y != 0.0f) || (cr.z != 0.0f)) {
            step = (lbvector_Angle(&axis, &cr) < 1.5707964f) ? D_801E5700_ovl17 * 5.0f
                                                             : -D_801E5700_ovl17 * 5.0f;
        }
    } else {
        step = 0.0f;
        D_800EAFA0[objId] = 0.0f;
    }
    vel = D_800EAFA0[objId];
    if (((vel > 0.0f) && (step < 0.0f)) || ((vel < 0.0f) && (step > 0.0f))) {
        step *= 1.8f;
    }
    D_800EAFA0[objId] = vel + step;
    vel = pc_boss_steer_clamp(&D_800EAFA0[objId], angle);
    if ((vel > 0.0000017453292f) || (vel < -0.0000017453292f)) {
        func_800191F8(&a, &axis, vel);
        cur[1][0] = a.x; cur[1][1] = a.y; cur[1][2] = a.z;
    }

    /* re-orthonormalize: row0 = row1 x row2, then row1 = row2 x row0 */
    a.x = cur[1][0]; a.y = cur[1][1]; a.z = cur[1][2];
    b.x = cur[2][0]; b.y = cur[2][1]; b.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    cur[0][0] = cr.x; cur[0][1] = cr.y; cur[0][2] = cr.z;
    a.x = cur[2][0]; a.y = cur[2][1]; a.z = cur[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    cur[1][0] = cr.x; cur[1][1] = cr.y; cur[1][2] = cr.z;

    /* Euler decomposition: pitch from -row0.z, gimbal-lock special-cased */
    ang.y = asinf(-cur[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(cur[1][0], cur[1][1]);
        } else {
            ang.x = atan2f(-cur[1][0], cur[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(cur[1][2], cur[2][2]);
        ang.z = atan2f(cur[0][1], cur[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DEA5C_ovl17.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 3/213, one callee-saved register.  Frame is now the ROM's 0x128
   with arg0 homed at 0x128; the residue is that our IDO parks the objId in
   $s0 (adding an s0 save the ROM does not have) where the ROM re-materialises
   omCurrentObj.  Inlining objId at every use is worse -- it grows the
   function to 241 instructions and moves the frame to 0x110.
   Layout read off the listing: the ROM uses THREE Mat4 temporaries, at
   sp+0x44, sp+0x90 and sp+0xD0, plus four Vectors at 0x20/0x2C/0x38/0x110.
   The draft originally declared two matrices and sat at a 0xE8 frame; adding
   the third is what lines the whole body up. */
/* PORT: pitch impulse on the boss orientation, from asm/nonmatchings/ovl17/
 * ovl17_2/func_801DF768_ovl17.s (callers pass +/-(D_800D7170*1.8)*3). Halves
 * all three steering rates, forces the pitch rate to arg0, rotates the
 * forward row about the right row by that amount, re-orthonormalizes and
 * writes the Euler angles back (same decomposition as func_801DEA5C). */
void func_801DF768_ovl17(f32 arg0) {
    Mat4 m;
    Mat4 tmp;
    Mat4 tmp2;
    Vector a;
    Vector b;
    Vector cr;
    Vector ang;
    s32 objId;

    guMtxIdentF(m);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(m, tmp, m);
    D_800EAC20[objId] *= 0.5f;
    D_800EADE0[objId] *= 0.5f;
    D_800EAFA0[objId] *= 0.5f;
    a.x = m[2][0]; a.y = m[2][1]; a.z = m[2][2];
    b.x = m[0][0]; b.y = m[0][1]; b.z = m[0][2];
    cr.x = cr.y = cr.z = 0.0f;
    D_800EADE0[objId] = arg0;
    func_800191F8(&a, &b, D_800EADE0[objId]);
    m[2][0] = a.x; m[2][1] = a.y; m[2][2] = a.z;
    b = a;
    a.x = m[1][0]; a.y = m[1][1]; a.z = m[1][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    m[0][0] = cr.x; m[0][1] = cr.y; m[0][2] = cr.z;
    a.x = m[2][0]; a.y = m[2][1]; a.z = m[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    m[1][0] = cr.x; m[1][1] = cr.y; m[1][2] = cr.z;
    ang.y = asinf(-m[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(m[1][0], m[1][1]);
        } else {
            ang.x = atan2f(-m[1][0], m[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(m[1][2], m[2][2]);
        ang.z = atan2f(m[0][1], m[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#elif defined(PORT)
/* PORT: pitch impulse on the boss orientation, from asm/nonmatchings/ovl17/
 * ovl17_2/func_801DF768_ovl17.s (callers pass +/-(D_800D7170*1.8)*3). Halves
 * all three steering rates, forces the pitch rate to arg0, rotates the
 * forward row about the right row by that amount, re-orthonormalizes and
 * writes the Euler angles back (same decomposition as func_801DEA5C). */
void func_801DF768_ovl17(f32 arg0) {
    Mat4 m;
    Mat4 tmp;
    Vector a;
    Vector b;
    Vector cr;
    Vector ang;
    s32 objId;

    guMtxIdentF(m);
    objId = omCurrentObj->objId;
    HS64_MkRotationMtxF(tmp, D_800EA6E0[objId], D_800EA8A0[objId], D_800EAA60[objId]);
    guMtxCatF(m, tmp, m);
    D_800EAC20[objId] *= 0.5f;
    D_800EADE0[objId] *= 0.5f;
    D_800EAFA0[objId] *= 0.5f;
    a.x = m[2][0]; a.y = m[2][1]; a.z = m[2][2];
    b.x = m[0][0]; b.y = m[0][1]; b.z = m[0][2];
    cr.x = cr.y = cr.z = 0.0f;
    D_800EADE0[objId] = arg0;
    func_800191F8(&a, &b, D_800EADE0[objId]);
    m[2][0] = a.x; m[2][1] = a.y; m[2][2] = a.z;
    b = a;
    a.x = m[1][0]; a.y = m[1][1]; a.z = m[1][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    b = cr;
    m[0][0] = cr.x; m[0][1] = cr.y; m[0][2] = cr.z;
    a.x = m[2][0]; a.y = m[2][1]; a.z = m[2][2];
    vec3_normalized_cross_product(&a, &b, &cr);
    m[1][0] = cr.x; m[1][1] = cr.y; m[1][2] = cr.z;
    ang.y = asinf(-m[0][2]);
    if ((ang.y == 1.5707964f) || (ang.y == -1.5707964f)) {
        if (ang.y == 1.5707964f) {
            ang.x = atan2f(m[1][0], m[1][1]);
        } else {
            ang.x = atan2f(-m[1][0], m[1][1]);
        }
        ang.z = 0.0f;
    } else {
        ang.x = atan2f(m[1][2], m[2][2]);
        ang.z = atan2f(m[0][1], m[0][0]);
    }
    utilWrapRotation(&ang);
    D_800EA6E0[objId] = ang.x;
    D_800EA8A0[objId] = ang.y;
    D_800EAA60[objId] = ang.z;
    gEntitiesAngleXArray[objId] = D_800EA6E0[objId];
    gEntitiesAngleYArray[objId] = D_800EA8A0[objId];
    gEntitiesAngleZArray[objId] = D_800EAA60[objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DF768_ovl17.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 4/759, and the draft's shape is wrong in one specific way worth
   fixing before any permuter time: the ROM runs this whole 759-instruction
   function on a 0x18 frame whose ONLY stack slot is the $ra save at 0x14 --
   every value stays in registers.  This draft holds six locals (dobjs,
   objId, c, e, t, s), which forces a 0x40 frame and spills, and from there
   the code layout diverges so far that the first dispatch branch is 0x2EF
   words away in the ROM and 0xF1 here.
   The fix is to stop holding dobjs and objId across the body -- re-read
   D_800DFBD0[omCurrentObj->objId] at each group of stores the way the ROM
   does -- rather than to nudge registers. */
/* PORT: per-frame wing fold/steering-rate update, from asm/nonmatchings/
 * ovl17/ovl17_2/func_801DFABC_ovl17.s. Each wing's DObj chain (left slots
 * 5,6,8,9,0xB,0xC / right slots 0x10,0x11,0x13,0x14,0x16,0x17 in the host
 * D_800DFBD0 DObj* table) gets scale.y/z from its flap counter D_800E9C60 /
 * D_800E9E20: 1 = folded (0.01), 0 = idle (1.0), otherwise flared (1.5) and
 * the counter ticks down (skipping 1). The steering step/limit pair
 * D_801E5700/D_801E5704 rebuilds from D_800D7170 (0.45x while both wings
 * are folded, 0.8x for one), and the rage timer D_800EA520 boosts both
 * rates and the anim speed while it runs down. */
void func_801DFABC_ovl17(void) {
    struct DObj **dobjs;
    s32 objId;
    s32 c;
    s32 e;
    s32 t;
    f32 s;

    if (D_800D7098.unk0 == 2) {
        return;
    }
    objId = omCurrentObj->objId;
    dobjs = D_800DFBD0[objId];

    c = D_800E9C60[objId];
    s = (c == 1) ? 0.01f : (c == 0) ? 1.0f : 1.5f;
    dobjs[5]->scale.v.y = s;   dobjs[5]->scale.v.z = s;
    dobjs[6]->scale.v.y = s;   dobjs[6]->scale.v.z = s;
    dobjs[8]->scale.v.y = s;   dobjs[8]->scale.v.z = s;
    dobjs[9]->scale.v.y = s;   dobjs[9]->scale.v.z = s;
    dobjs[0xB]->scale.v.y = s; dobjs[0xB]->scale.v.z = s;
    dobjs[0xC]->scale.v.y = s; dobjs[0xC]->scale.v.z = s;
    if ((c != 1) && (c != 0)) {
        D_800E9C60[objId] = c - 1;
        if (D_800E9C60[objId] == 1) {
            D_800E9C60[objId] = 0;
        }
    }

    e = D_800E9E20[objId];
    s = (e == 1) ? 0.01f : (e == 0) ? 1.0f : 1.5f;
    dobjs[0x10]->scale.v.y = s; dobjs[0x10]->scale.v.z = s;
    dobjs[0x11]->scale.v.y = s; dobjs[0x11]->scale.v.z = s;
    dobjs[0x13]->scale.v.y = s; dobjs[0x13]->scale.v.z = s;
    dobjs[0x14]->scale.v.y = s; dobjs[0x14]->scale.v.z = s;
    dobjs[0x16]->scale.v.y = s; dobjs[0x16]->scale.v.z = s;
    dobjs[0x17]->scale.v.y = s; dobjs[0x17]->scale.v.z = s;
    if ((e != 1) && (e != 0)) {
        D_800E9E20[objId] = e - 1;
        if (D_800E9E20[objId] == 1) {
            D_800E9E20[objId] = 0;
        }
    }

    c = D_800E9C60[objId];
    e = D_800E9E20[objId];
    if ((c != 1) && (e != 1)) {
        D_801E5700_ovl17 = D_800D7170 * 0.09f;
        D_801E5704_ovl17 = D_800D7170 * 1.8f;
    } else if ((c == 1) && (e == 1)) {
        D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.45f;
        D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.45f;
    } else {
        D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.8f;
        D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.8f;
    }

    c = gEntityFuncListIDArray[objId];
    if ((c == 3) || (c == 4)) {
        D_800EA520[objId] = 0;
    }
    t = D_800EA520[objId];
    if ((t > 0) && ((D_800E9C60[objId] != 1) || (D_800E9E20[objId] != 1))) {
        D_801E5700_ovl17 *= 1.0f + ((f32) t / 60.0f);
        D_801E5704_ovl17 *= 1.0f + ((f32) D_800EA520[objId] / 60.0f);
        func_800AECC0(((f32) D_800EA520[objId] / 30.0f) + 4.0f);
        func_800AED20(((f32) D_800EA520[objId] / 30.0f) + 4.0f);
        D_800EA520[objId] -= 1;
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800EA520[objId] = 0;
}
#elif defined(PORT)
/* PORT: per-frame wing fold/steering-rate update, from asm/nonmatchings/
 * ovl17/ovl17_2/func_801DFABC_ovl17.s. Each wing's DObj chain (left slots
 * 5,6,8,9,0xB,0xC / right slots 0x10,0x11,0x13,0x14,0x16,0x17 in the host
 * D_800DFBD0 DObj* table) gets scale.y/z from its flap counter D_800E9C60 /
 * D_800E9E20: 1 = folded (0.01), 0 = idle (1.0), otherwise flared (1.5) and
 * the counter ticks down (skipping 1). The steering step/limit pair
 * D_801E5700/D_801E5704 rebuilds from D_800D7170 (0.45x while both wings
 * are folded, 0.8x for one), and the rage timer D_800EA520 boosts both
 * rates and the anim speed while it runs down. */
void func_801DFABC_ovl17(void) {
    struct DObj **dobjs;
    s32 objId;
    s32 c;
    s32 e;
    s32 t;
    f32 s;

    if (D_800D7098.unk0 == 2) {
        return;
    }
    objId = omCurrentObj->objId;
    dobjs = D_800DFBD0[objId];

    c = D_800E9C60[objId];
    s = (c == 1) ? 0.01f : (c == 0) ? 1.0f : 1.5f;
    dobjs[5]->scale.v.y = s;   dobjs[5]->scale.v.z = s;
    dobjs[6]->scale.v.y = s;   dobjs[6]->scale.v.z = s;
    dobjs[8]->scale.v.y = s;   dobjs[8]->scale.v.z = s;
    dobjs[9]->scale.v.y = s;   dobjs[9]->scale.v.z = s;
    dobjs[0xB]->scale.v.y = s; dobjs[0xB]->scale.v.z = s;
    dobjs[0xC]->scale.v.y = s; dobjs[0xC]->scale.v.z = s;
    if ((c != 1) && (c != 0)) {
        D_800E9C60[objId] = c - 1;
        if (D_800E9C60[objId] == 1) {
            D_800E9C60[objId] = 0;
        }
    }

    e = D_800E9E20[objId];
    s = (e == 1) ? 0.01f : (e == 0) ? 1.0f : 1.5f;
    dobjs[0x10]->scale.v.y = s; dobjs[0x10]->scale.v.z = s;
    dobjs[0x11]->scale.v.y = s; dobjs[0x11]->scale.v.z = s;
    dobjs[0x13]->scale.v.y = s; dobjs[0x13]->scale.v.z = s;
    dobjs[0x14]->scale.v.y = s; dobjs[0x14]->scale.v.z = s;
    dobjs[0x16]->scale.v.y = s; dobjs[0x16]->scale.v.z = s;
    dobjs[0x17]->scale.v.y = s; dobjs[0x17]->scale.v.z = s;
    if ((e != 1) && (e != 0)) {
        D_800E9E20[objId] = e - 1;
        if (D_800E9E20[objId] == 1) {
            D_800E9E20[objId] = 0;
        }
    }

    c = D_800E9C60[objId];
    e = D_800E9E20[objId];
    if ((c != 1) && (e != 1)) {
        D_801E5700_ovl17 = D_800D7170 * 0.09f;
        D_801E5704_ovl17 = D_800D7170 * 1.8f;
    } else if ((c == 1) && (e == 1)) {
        D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.45f;
        D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.45f;
    } else {
        D_801E5700_ovl17 = (D_800D7170 * 0.09f) * 0.8f;
        D_801E5704_ovl17 = (D_800D7170 * 1.8f) * 0.8f;
    }

    c = gEntityFuncListIDArray[objId];
    if ((c == 3) || (c == 4)) {
        D_800EA520[objId] = 0;
    }
    t = D_800EA520[objId];
    if ((t > 0) && ((D_800E9C60[objId] != 1) || (D_800E9E20[objId] != 1))) {
        D_801E5700_ovl17 *= 1.0f + ((f32) t / 60.0f);
        D_801E5704_ovl17 *= 1.0f + ((f32) D_800EA520[objId] / 60.0f);
        func_800AECC0(((f32) D_800EA520[objId] / 30.0f) + 4.0f);
        func_800AED20(((f32) D_800EA520[objId] / 30.0f) + 4.0f);
        D_800EA520[objId] -= 1;
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
    D_800EA520[objId] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801DFABC_ovl17.s")
#endif

void func_801E069C_ovl17(void) {
    struct DObj *temp_v0;
    s32 temp_a0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1E];
    if (temp_v0 != NULL) {
        temp_a0 = D_800EA1A0[omCurrentObj->objId];
        if (temp_a0 <= 0) {
            temp_v0->scale.v.y = 0.0f;
            return;
        }
        temp_v0->scale.v.y = temp_a0 * 0.1f;
    }
}

void func_801E0704_ovl17(void) {
    struct DObj *temp_v0;

    temp_v0 = D_800DFBD0[omCurrentObj->objId][0x1D];
    if (temp_v0 != NULL) {
        temp_v0->flags = 2;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 3/205, one callee-saved register.  The ROM saves only $ra (at 0x14)
   and spills the record and hand pointers to 0x4C and 0x48; ours keeps one of
   them in $s0, which adds the save and renames the body.
   Everything else is now the ROM's, and the layout facts below were read off
   the listing rather than carried over from the PC arm -- they are the useful
   part of this draft:
   - the attach record hangs off the anim slot at 0x24 (`lw $t4,0x24($v0)`),
     and its two written fields are at 0x8 (the pinned DObj) and 0x18 (reach).
     The PORT arm's PcOvl17CollSlot is the widened LP64 view -- 56 bytes with
     the body shapes at 48 -- and does not apply here.
   - the shape table is word 2 of the anim header (`lw 0x8($t2)`) and the
     joint it tests is that table's word 1.
   - the anim-event record is 0x18 bytes with code at +2, param at +3 and the
     target track at +0xC; that size is load-bearing for the 0x60 frame (0x20
     gives 0x68, 0x10 gives 0x58). */
/* N64 view of the two records this walks.  The PC arm's PcOvl17* structs are
   the widened LP64 layout (CollSlot 56 bytes, body shapes at 48); on the N64
   the attach record hangs off the slot at 0x24 and its fields are at 0x8/0x18,
   read straight off the listing. */
struct Ovl17HandAttach {
    u8 filler0[8];
    struct DObj *pinnedTo;      /* 0x08: DObj the hand model is pinned to */
    u8 fillerC[0xC];
    f32 reach;                  /* 0x18: extends with the charge level */
};

struct Ovl17AnimSlot {
    u8 filler0[0x24];
    struct Ovl17HandAttach *attach;
};

struct Ovl17AnimEvent {
    u8 filler0[2];
    u8 code;                    /* 0x02 -> D_800E83E0 event code */
    u8 param;                   /* 0x03 -> ent->unk43 */
    u8 filler4[8];
    s32 target;                 /* 0x0C: track to flag in D_800E98E0 */
    u8 filler10[8];
};

extern void *D_801E510C_ovl17[];
extern f32 D_800D6E5C;

/* Boss hand per-frame anim pump: step the shared anim script, flag whatever
   track the script names, and once the charge level D_800EA1A0 reaches 5 also
   run the hand's own script -- pinning the attach record to the hand DObj and
   growing its reach with the charge -- then drain the resulting event into
   D_800E83E0/unk43.  Event 1 hands the process to func_801DDB8C_ovl17, event 2
   latches the old contact timer and plays the grab cue. */
void func_801E073C_ovl17(void) {
    void func_80111550(s32);
    struct Ovl17AnimSlot *func_80111C88(void *, s32);
    void func_80111ECC(struct Ovl17AnimSlot *);
    s32 func_80110B00(struct Ovl17AnimEvent *);
    void func_800BC11C(f32);
    struct EnemyRecord *ent;
    struct Ovl17AnimSlot *slot;
    struct DObj *hand;
    u32 *shape;
    s32 objId;
    struct Ovl17AnimEvent event;

    objId = omCurrentObj->objId;
    hand = D_800DFBD0[objId][0x1F];
    ent = D_800E1B50[objId];
    if (ent == NULL) {
        return;
    }
    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(objId);
    func_80111ECC(func_80111C88(D_801E510C_ovl17, omCurrentObj->objId));
    if ((func_80110B00(&event) != 0) && (D_800E7B20[objId] <= 0.0f) && (event.target != 0)) {
        D_800E98E0[event.target] = 1;
    }
    if (D_800EA1A0[objId] < 5) {
        return;
    }
    func_80111550(objId);
    slot = func_80111C88(ent->unk8C, omCurrentObj->objId);
    /* word 2 of the anim header is the shape table; its word 1 is the joint */
    shape = ((u32 **) ent->unk8C)[2];
    if ((shape[1] == 0) && (hand != NULL)) {
        slot->attach->pinnedTo = hand;
        slot->attach->reach = ((f32) D_800EA1A0[objId] * 3.0f) + 30.0f;
    }
    func_80111ECC(slot);
    if (func_80110B00(&event) != 0) {
        D_800E83E0[objId] = event.code;
        ent->unk43 = event.param;
    } else {
        D_800E83E0[objId] = 0;
        ent->unk43 = 0;
    }
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[objId]);
    }
    if (D_800E83E0[objId] == 1) {
        gEntityFuncListIDArray[objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[objId], func_801DDB8C_ovl17);
        if (event.target != 0) {
            D_800E98E0[event.target] = 1;
        }
    } else if (D_800E83E0[objId] == 2) {
        D_800EA360[objId] = D_800E7CE0[objId];
        D_800E7CE0[objId] = 1;
        play_sound(0x1BF);
        if (event.target != 0) {
            D_800E98E0[event.target] = 1;
        }
    }
}
#elif defined(PORT)
/* PORT: boss body collision service, from asm/nonmatchings/ovl17/ovl17_2/
 * func_801E073C_ovl17.s. Registers the fixed body CollEntry D_801E510C
 * (a gen_data void*[] table: one native 8-byte cell per N64 word, its
 * shape table a plain u32[] Shape24), sweeps it against Kirby, and flags
 * D_800E98E0[info.unkC] when the boss is already dead. While the rage
 * counter D_800EA1A0 >= 5 it also registers the AI-selected entry
 * ent->unk8C -- if that entry's shape has no joint of its own and hand
 * DObj slot 0x1F exists, the slot's first body Shape28 gets that DObj as
 * its joint anchor (a truncated 32-bit address, the established
 * pointer-in-u32 idiom, lossless under -no-pie) and a radius of
 * 30 + 3*rage -- then dispatches the sweep result: 1 = boss knocked into
 * state 4, 2 = hurt flash + sound 0x1BF. Slot rows are HOST CollSlots
 * (ovl2_9.c, stride 56, Shape28* at +48); layout locked below. */
struct PcOvl17AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};
struct PcOvl17Shape28 {             /* host Shape28 arena entry, 40 bytes */
    u8 unk0;
    u8 pad1[3];
    u32 unk4;                       /* N64 head word: type in bits 24-31 */
    u32 unk8;                       /* joint index or truncated DObj* */
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;                      /* sphere radius */
    f32 unk1C;
    f32 unk20;
    f32 unk24;
};
struct PcOvl17CollSlot {            /* host CollSlot (ovl2_9.c) on LP64 */
    void *unk0;
    s32 unk4[6];
    struct PcOvl17Shape28 *unk1C;
    s32 unk20;
    struct PcOvl17Shape28 *unk24;
};
_Static_assert(sizeof(struct PcOvl17Shape28) == 0x28, "shape stride");
_Static_assert(sizeof(struct PcOvl17CollSlot) == 56, "host CollSlot size");
_Static_assert(__builtin_offsetof(struct PcOvl17CollSlot, unk24) == 48, "body shapes");

extern void *D_801E510C_ovl17[];
extern f32 D_800D6E5C;

void func_801E073C_ovl17(void) {
    void func_80111550(s32);
    struct PcOvl17CollSlot *func_80111C88(void *, void *);
    void func_80111ECC(void *);
    s32 func_80110B00(struct PcOvl17AnimInfo *);
    void func_800BC11C(f32);
    struct PcOvl17AnimInfo sp28;
    struct EnemyRecord *ent;
    struct PcOvl17CollSlot *slot;
    struct DObj *hand;
    u32 *shape;
    s32 objId;
    s32 kind;

    objId = omCurrentObj->objId;
    hand = D_800DFBD0[objId][0x1F];
    ent = D_800E1B50[objId];
    if (ent == NULL) {
        return;
    }
    if (ent->unk8C == NULL) {
        return;
    }
    func_80111550(objId);
    func_80111ECC(func_80111C88(D_801E510C_ovl17, (void *) (uintptr_t) omCurrentObj->objId));
    if ((func_80110B00(&sp28) != 0) && (D_800E7B20[objId] <= 0.0f) && (sp28.unkC != 0)) {
        D_800E98E0[sp28.unkC] = 1;
    }
    if (D_800EA1A0[objId] < 5) {
        return;
    }
    func_80111550(objId);
    slot = func_80111C88(ent->unk8C, (void *) (uintptr_t) omCurrentObj->objId);
    /* entry cell 2 (N64 word 2) is the native pointer to the u32[] shape
     * table; its word 1 is the shape's own joint word */
    shape = (u32 *) ((void **) ent->unk8C)[2];
    if ((shape[1] == 0) && (hand != NULL)) {
        slot->unk24->unk8 = (u32) (uintptr_t) hand;
        slot->unk24->unk18 = ((f32) D_800EA1A0[objId] * 3.0f) + 30.0f;
    }
    func_80111ECC(slot);
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else {
        D_800E83E0[objId] = 0;
        ent->unk43 = 0;
    }
    if (D_800D6E5C != 0.0f) {
        func_800BC11C(D_800E7B20[objId]);
    }
    kind = D_800E83E0[objId];
    if (kind == 1) {
        gEntityFuncListIDArray[objId] = 4;
        assign_new_process_entry(gEntityGObjProcessArray[objId], func_801DDB8C_ovl17);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
    } else if (kind == 2) {
        D_800EA360[objId] = D_800E7CE0[objId];
        D_800E7CE0[objId] = 1;
        play_sound(0x1BF);
        if (sp28.unkC != 0) {
            D_800E98E0[sp28.unkC] = 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E073C_ovl17.s")
#endif

void func_801E0A74_ovl17(void) {
    s32 temp_v0;

    temp_v0 = request_track_general(0x19, 0x1E, 0x50);
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 2;
    D_800E77A0[temp_v0] = 6;
    D_800E7880[temp_v0] = 0;
    gEntitiesNextPosXArray[temp_v0] = 0.0f;
    gEntitiesPosXArray[temp_v0] = 0.0f;
    gEntitiesNextPosYArray[temp_v0] = 0.0f;
    gEntitiesPosYArray[temp_v0] = 0.0f;
    gEntitiesNextPosZArray[temp_v0] = 0.0f;
    gEntitiesPosZArray[temp_v0] = 0.0f;
    D_800E8E60[temp_v0] = 1;
}

#ifdef NON_MATCHING
/* m2c draft, for the PORT only. Not byte-exact and not
   claimed to be: the N64 build takes the pragma below. */
s32 func_801E0B38_ovl17(s32 arg0, s32 arg1) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = request_track_general(0x1A, 0x1E, 0x3C);
    if (temp_v0 == -1) {
        utilPrintf("Akuma Joint Request Error!\n", temp_v0);
        return 0;
    }
    if (temp_v0 >= 0x3C) {
        sp1C = temp_v0;
        utilPrintf("Akuma Joint Track Over!\n", temp_v0);
        func_800B1900(temp_v0 & 0xFFFF);
        return 0;
    }
    gEntityFuncListIDArray[temp_v0] = arg0;
    D_800E76C0[temp_v0] = 0xFF;
    D_800E7730[temp_v0] = 4;
    D_800E77A0[temp_v0] = arg0 & 0xFF;
    D_800E7880[temp_v0] = (u8) arg1;
    gEntitiesNextPosXArray[temp_v0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    gEntitiesPosXArray[temp_v0] = gEntitiesPosXArray[omCurrentObj->objId];
    gEntitiesNextPosYArray[temp_v0] = gEntitiesNextPosYArray[omCurrentObj->objId];
    gEntitiesPosYArray[temp_v0] = gEntitiesPosYArray[omCurrentObj->objId];
    gEntitiesNextPosZArray[temp_v0] = gEntitiesNextPosZArray[omCurrentObj->objId];
    gEntitiesPosZArray[temp_v0] = gEntitiesPosZArray[omCurrentObj->objId];
    D_800E8E60[temp_v0] = 1;
    return temp_v0;
}
/* Warning: struct AnimCmd is not defined (only forward-declared) */
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl17/ovl17_2/func_801E0B38_ovl17.s")
#endif
