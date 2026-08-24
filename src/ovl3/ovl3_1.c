#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "ovl1/ovl1_2_2.h"

extern u8 *func_8011BABC();
#include "GObj.h"
#include "track_arrays.h"

extern void func_8011BF4C(f32 *, s32);
#include "Player.h"

extern void func_8015439C_ovl3(f32 *);
extern s32 func_80154428_ovl3(f32 *);
/* K&R form is load-bearing here: its real signature is
 * void func_80154CFC_ovl3(struct PositionState *), but this file calls it
 * with both 0 args (line ~2089) and 1 arg elsewhere -- the ROM relies on
 * whatever PositionState* is already sitting in $a0 at the 0-arg site. An
 * ANSI prototype breaks compilation with "too few arguments". */
extern void func_80154CFC_ovl3();
#ifdef PORT
/* On N64 the three shot collision passes below receive the shot's state
 * buffer in $a0, threaded untouched through the void-declared wrappers;
 * the PORT arms spell that hidden argument out, so the declarations must
 * stay unprototyped here. */
extern void func_801548DC_ovl3();
extern void func_80155088_ovl3();
#else
extern void func_801548DC_ovl3();
extern void func_80155088_ovl3();
#endif
extern s32 func_801BBE50_ovl7(u8 *, void *, s32);
extern void func_801529C0_ovl3(void);
#include "ovl1/util.h"

/* D_80196E10_ovl3[] now emitted by this TU */
/* D_80196E3C_ovl3[] now emitted by this TU */
/* D_80196E68_ovl3[] now emitted by this TU */
/* D_80196E94_ovl3[] now emitted by this TU */

extern s32 func_80155C68_ovl3(s32, f32 *);

extern s32 func_8010DA28(void *);

/* Shot collision sweep + result unpack (ovl2_7 / ovl2_10). Only
 * func_80152828_ovl3 calls these in the N64 arm, so file scope here is
 * equivalent to the block-scope copies m2c emitted inside it. */
extern s32 func_80109E44(f32 *);
extern s32 func_8010B11C(f32 *);
extern void func_80105238(f32 *, u8 *);

/* The rest of the ovl2_7 / ovl2_10 collision entry points this file uses.
 * m2c emitted these inside the function bodies that call them; a block-scope
 * function declaration has file-scope linkage, so they were never local. */
struct PositionState;
extern void func_80105180(struct PositionState *);
extern void func_801051AC(struct PositionState *);
extern void func_801051DC(struct PositionState *);
extern s32 func_80109DD8(struct PositionState *);
extern s32 func_8010BBD4(struct PositionState *);
extern s32 func_8010BFAC(struct PositionState *);
extern s32 func_8010C274(struct PositionState *);
extern s32 func_8010D668(struct PositionState *);
extern s32 func_801128A4(struct PositionState *);
extern s32 func_8010DF9C(f32 *);
extern s32 func_8010E048(void *, s32, f32 *, f32 *, void *, f32 *);
extern u16 func_8010DC24(struct CollisionTriangle *);
extern void func_8011D40C(void);
extern f32 func_800F8728(s32, f32, f32);
extern s32 func_80103EA0(Vector *, Vector *, void *, void *, s32, s32, s32, s32);
extern void func_801530BC_ovl3(f32 *);


s32 func_80152070_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

s32 func_80152124_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3, f32 arg4, f32 arg5) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = (arg0[i][0] * arg3) + arg4;
        arg1[i][1] = (arg0[i][1] * arg3) + arg5;
        arg1[i][2] = (arg0[i][2] * arg3) + arg4;
        arg1[i][3] = (arg0[i][3] * arg3) + arg5;
    }
    return 1;
}

s32 func_801521F0_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0];
        arg1[i][1] = arg0[i][1] * arg3;
        arg1[i][2] = arg0[i][2];
        arg1[i][3] = arg0[i][3] * arg3;
    }
    return 1;
}

s32 func_8015229C_ovl3(f32 (*arg0)[4], f32 (*arg1)[4], u8 arg2, f32 arg3) {
    u8 i;

    if (arg2 >= 0x11) {
        utilPrintf("generate bg break line over. max line %d.\n", 0x10);
        return 0;
    }
    for (i = 0; i < arg2; i++) {
        arg1[i][0] = arg0[i][0] * arg3;
        arg1[i][1] = arg0[i][1];
        arg1[i][2] = arg0[i][2] * arg3;
        arg1[i][3] = arg0[i][3];
    }
    return 1;
}

#ifdef MIPS_TO_C
/* FACTORY: 311/312, RE-MEASURED -- the prior "1/312" note was stale/wrong;
 * verify.py shows total mismatch from insn [0], not a 1-word residue.
 * Real findings from the listing, for whoever attempts a rewrite:
 *   (1) gKirbyState.unk134/unk138/unk13C are written with swc1 (float
 *       store, mtc1 $zero then a reload chain: store 0x13C, reload it into
 *       f6, store to 0x138, reload into f8, store to 0x134 delayed into
 *       func_80105180's jal delay slot) -- these three fields are f32, not
 *       the header's u32 (same bug flagged in REFOUND.md for this struct).
 *   (2) gKirbyState.unk10C is written as TWO sh (0x10E then 0x10C), so it
 *       is really two u16 fields (unk10C/unk10E), not the header's one u32
 *       -- header change is a whole-tree job, not attempted here.
 *   (3) The zero-store order for the 7 collision words is DESCENDING by
 *       offset (0xFC,0xF8,...,0xE4 -- horizontalCollision first,
 *       ceilingCollisionNext last), the REVERSE of this draft's ascending
 *       source order; same for both sh groups (0x106..0x100, then
 *       0x10E..0x108).
 *   (4) omCurrentObj->objId is never cached in a local across the function
 *       -- the ROM holds &omCurrentObj in a3/other regs and re-derives the
 *       index (lw+sll) at nearly every use, unlike this draft's `s32 id =
 *       omCurrentObj->objId` hoist that bakes `id` into one register for
 *       the whole function. Frame is -0x58 with only s0 saved (ROM) vs this
 *       draft's -0x78..-0x50 with a wider saved set.
 * None of (1)-(4) were fixed here; this needs a full rewrite, not a
 * word-level nudge. Leaving guarded. */
void func_80152348_ovl3(f32 arg0) {
    extern struct PositionState gPositionState;
    extern f32 D_800E6A10[];
    extern f32 D_800E17D0[];
    extern s32 D_800E8920[];
    extern s32 D_800E8AE0[];
    extern f32 D_8012E948[];
    s32 id = omCurrentObj->objId;
    f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
    struct PositionState *st = &gPositionState;
    f32 dx;
    f32 dz;
    s32 hits;
    u32 wi;
    f32 probe[3];

    (void) arg0;
    gKirbyState.unk13C = 0;
    gKirbyState.unk138 = 0;
    gKirbyState.unk134 = 0;
    gKirbyState.ceilingCollisionNext = 0;
    gKirbyState.floorCollisionNext = 0;
    gKirbyState.rightCollisionNext = 0;
    gKirbyState.leftCollisionNext = 0;
    gKirbyState.levelCollisionFlags = 0;
    gKirbyState.verticalCollision = 0;
    gKirbyState.horizontalCollision = 0;
    gKirbyState.ceilingType = 0;
    gKirbyState.floorType = 0;
    gKirbyState.unk104 = 0;
    gKirbyState.unk106 = 0;
    gKirbyState.unk108 = 0;
    gKirbyState.unk10A = 0;
    gKirbyState.unk10C = 0;
    gKirbyState.unk140 = 0;
    gKirbyState.unk152 = 0;
    func_80105180(st);
    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[id] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    st->faceAngle[2] = D_800E17D0[id];
    func_801051DC(st);
    D_800E8920[id] = func_80109DD8(st);
    if (D_800E8920[id] == 0) {
        D_800E8920[id] = func_8010D668(st);
    }
    dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if (dx != 0.0f || dz != 0.0f) {
        func_800F8728(id, dx, dz);
    }
    gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
    gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
    gEntitiesNextPosYArray[id] = st->kirbyFootPos[1];
    func_801051AC(st);
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id] - fr[0];
    probe[2] = gEntitiesNextPosZArray[id];
    hits = func_8010DF9C(probe);
    D_800E8AE0[id] = 0;
    /* Spawn-into-water: any active water volume under the spawn point sets
     * the surface flag. Derived from asm (not the byte-128/stride-8 guess
     * below): the annex is a flat pointer array at byte 0x40 of the result
     * block, stride 4, walked for the full hit count (no cap at 3) -- see
     * func_80154CFC_ovl3's water scan for the same shape. */
    {
        extern u8 D_8012BCA0[];
        u8 **arr = (u8 **) (D_8012BCA0 + 0x40);

        for (wi = 0; wi < (u32) hits; wi++) {
            u8 *w = arr[wi];

            if (w[4] == 1) {
                D_800E8AE0[id] = 7;
            }
        }
    }
    D_8012E948[3] = gEntitiesNextPosXArray[id];
    D_8012E948[0] = D_8012E948[3];
    D_8012E948[4] = gEntitiesNextPosYArray[id];
    D_8012E948[1] = D_8012E948[4];
    D_8012E948[5] = gEntitiesNextPosZArray[id];
    D_8012E948[2] = D_8012E948[5];
    D_8012E948[6] = D_800E17D0[id];
    D_8012E948[7] = 0;
}
#elif defined(PORT)
/* PORT: player landing snap. Clears the per-frame collision state on
 * gKirbyState, seats gPositionState from the entity's next position and its
 * spawn record, runs the ground pass (func_80109DD8, falling back to the
 * ledge pass func_8010D668), re-derives track progress when the snap moved
 * the player in X/Z, commits the snapped position, and refreshes the
 * position-history block at D_8012E948.
 *
 * The spawn record: D_800E0490[objId] points into widened ovl3 data (one
 * 8-byte cell per N64 word), and the float record pointer is CELL 1; the
 * record itself is a native scalar float block. The ROM's tail also scans
 * the collision result blocks to flag water surfaces into D_800E8AE0
 * (value 7); that scan's block layout is draft-only so far, so the flag
 * stays 0 here -- spawn-into-water reactions are the one deferred piece. */

void func_80152348_ovl3(f32 arg0) {
    extern struct PositionState gPositionState;
    extern f32 D_800E6A10[];
    extern f32 D_800E17D0[];
    extern s32 D_800E8920[];
    extern s32 D_800E8AE0[];
    extern f32 D_8012E948[];
    s32 id = omCurrentObj->objId;
    f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
    struct PositionState *st = &gPositionState;
    f32 dx;
    f32 dz;
    s32 hits;
    u32 wi;
    f32 probe[3];

    (void) arg0;
    gKirbyState.unk13C = 0;
    gKirbyState.unk138 = 0;
    gKirbyState.unk134 = 0;
    gKirbyState.ceilingCollisionNext = 0;
    gKirbyState.floorCollisionNext = 0;
    gKirbyState.rightCollisionNext = 0;
    gKirbyState.leftCollisionNext = 0;
    gKirbyState.levelCollisionFlags = 0;
    gKirbyState.verticalCollision = 0;
    gKirbyState.horizontalCollision = 0;
    gKirbyState.ceilingType = 0;
    gKirbyState.floorType = 0;
    gKirbyState.unk104 = 0;
    gKirbyState.unk106 = 0;
    gKirbyState.unk108 = 0;
    gKirbyState.unk10A = 0;
    gKirbyState.unk10C = 0;
    gKirbyState.unk140 = 0;
    gKirbyState.unk152 = 0;
    func_80105180(st);
    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[id] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    st->faceAngle[2] = D_800E17D0[id];
    func_801051DC(st);
    D_800E8920[id] = func_80109DD8(st);
    if (D_800E8920[id] == 0) {
        D_800E8920[id] = func_8010D668(st);
    }
    dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if (dx != 0.0f || dz != 0.0f) {
        func_800F8728(id, dx, dz);
    }
    gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
    gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
    gEntitiesNextPosYArray[id] = st->kirbyFootPos[1];
    func_801051AC(st);
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id] - fr[0];
    probe[2] = gEntitiesNextPosZArray[id];
    hits = func_8010DF9C(probe);
    D_800E8AE0[id] = 0;
    /* Spawn-into-water: any active water volume under the spawn point sets
     * the surface flag. The annex (filled by func_8010DDA4) lives at byte
     * 128 of the result block; +4 in the record is Water_Box_Active. Both
     * offsets are locked by static asserts in src/pc/pc_bss_whole.c. */
    {
        extern u8 D_8012BCA0[];

        for (wi = 0; wi < (u32) hits && wi < 3; wi++) {
            u8 *w = *(u8 **) (D_8012BCA0 + 128 + wi * 8);

            if (w != NULL && w[4] == 1) {
                D_800E8AE0[id] = 7;
            }
        }
    }
    D_8012E948[3] = gEntitiesNextPosXArray[id];
    D_8012E948[0] = D_8012E948[3];
    D_8012E948[4] = gEntitiesNextPosYArray[id];
    D_8012E948[1] = D_8012E948[4];
    D_8012E948[5] = gEntitiesNextPosZArray[id];
    D_8012E948[2] = D_8012E948[5];
    D_8012E948[6] = D_800E17D0[id];
    D_8012E948[7] = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80152348_ovl3.s")
#endif

s32 func_80152828_ovl3(f32 *arg0, f32 *arg1) {
    s32 ret;
    extern u8 D_8012BCA0[];

    arg1[1] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg1[2] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg1[3] = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg1[4] = arg0[0];
    arg1[5] = arg0[0] + arg0[1];
    arg1[6] = arg0[0] + arg0[2];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg1[7] = arg0[3];
        arg1[8] = arg0[4];
    } else {
        arg1[7] = arg0[4];
        arg1[8] = arg0[3];
    }
    if (gKirbyState.isTurning & 1) {
        arg1[9] = gKirbyState.unk7C;
    } else {
        arg1[9] = D_800E17D0[omCurrentObj->objId];
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        ret = func_80109E44(arg1);
    } else {
        ret = func_8010B11C(arg1);
    }
    func_80105238(arg1, D_8012BCA0);
    return ret;
}

#ifdef MIPS_TO_C
/* FACTORY: 13/446, whole-function callee-saved permutation (same floor
 * class as func_80152348_ovl3/func_801530BC_ovl3 in this TU -- correct
 * instruction count and control flow, near-total register-naming/frame
 * mismatch, -0xA0 vs -0x70 frame). Queued for the permuter. */
/* PORT: the per-tick player collision commit, from asm/nonmatchings/ovl3/
 * ovl3_1/func_801529C0_ovl3.s. Runs the movement pass through
 * func_80152828_ovl3 above (which fills gPositionState and the collision
 * result block D_8012BCA0), lets ovl2_10's trigger scan (func_801128A4)
 * veto faces (zeroing the face's record and folding its class bit back into
 * the flags word with the ROM's exact halfword idiom, as ovl2_7.c spells
 * it), commits the resolved position to the entity track arrays, runs the
 * ledge auto-grab probe when Kirby is falling, unpacks the flags word into
 * gKirbyState's per-face collision state, and scans the four faces for a
 * hazardous triangle class (func_8010DC24) into unk140.
 *
 * Port notes: D_8012BCA0 is viewed through an LP64 mirror of ovl2_7.c's
 * struct UnkBCA0 (the whole object lives in src/pc/pc_bss_whole.c; the
 * mirror below is offset-locked against the asserts there). The spawn
 * record comes from the widened D_800E0490 table: cell 1 of the wrapper is
 * the native float record, same spelling as func_80152348_ovl3's PORT arm.
 * The ROM stores the face triangle/normal pointers into 32-bit Player
 * fields; they are stored truncated via (u32)(uintptr_t) like the shadow
 * slot in kirby.c (all game statics sit below 4 GiB), except the floor
 * triangle at unk114 which Player.h already declares as a real pointer.
 * The two halfword writes at Player +0x10C/+0x10E land in the u32 unk10C
 * cell as sub-word stores, same treatment as the D_80198830 block. The
 * ledge probe's out-vector goes through a static (not the stack): ovl2_7's
 * func_80104B70 forwards it through an s32 parameter, which would shear a
 * 64-bit stack address; its s32 result is the ROM's own $v0 pass-through
 * from func_80103B58 (the C in ovl2_7.c declares it void). */
struct PortColRec3 { s32 type; struct CollisionTriangle *tri; void *norm; };
struct PortColBlock3 {
#ifdef PORT
    union { u32 w; struct { u16 hwpad_; u16 hw; }; } flags;  /* hw = top half, see ovl2_7.c */
#else
    union { u32 w; u16 hw; } flags;
#endif
    struct PortColRec3 rec[5];
    void *waterRec[3];
    u32 waterSrc[3];
};
s32 func_801128A4(struct PositionState *);
void func_8011D40C(void);
u16 func_8010DC24(struct CollisionTriangle *);
s32 func_80104B70(f32 *, f32 *, s32, void *, s32, s32, s32);
void func_801530BC_ovl3(f32 *);
void func_80153668_ovl3(void);
void func_80153808_ovl3(void);
void func_801538C8_ovl3(void);
extern s32 D_800D6E44;

static Vector sPortLedgeProbeHit;

void func_801529C0_ovl3(void) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    f32 **rec;
    f32 *fr;
    s32 id;
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 ceilM;
    u32 floorM;
    u32 rightM;
    u32 leftM;
    u16 *hm = (u16 *) &gKirbyState.unk10C;
    struct CollisionTriangle *tri;
    u16 r;

    id = omCurrentObj->objId;
    rec = D_800E0490[id];
    fr = rec[1];
    D_800E8920[id] = func_80152828_ovl3(fr, (f32 *) &gPositionState);
    hits = func_801128A4(&gPositionState);
    dx = gPositionState.kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = gPositionState.kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = gPositionState.kirbyFootPos[0];
        gEntitiesNextPosZArray[id] = gPositionState.kirbyFootPos[2];
    }
    if (hits != 0) {
        if ((hits & 1) && (D_800D6E44 != 2)) {
            cb->rec[2].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 1) * 8) | (cb->flags.hw & 7));
        }
        if ((hits & 2) && (D_800D6E44 != 4)) {
            cb->rec[3].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 8) * 8) | (cb->flags.hw & 7));
        }
        if ((hits & 4) && (D_800D6E44 != 1)) {
            cb->rec[1].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x40) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    gEntitiesNextPosYArray[id] = gPositionState.kirbyFootPos[1];
    if (((D_800E8920[id] == 0) && (D_800E3210[id] <= 0.0f) && (D_800E64D0[id] != 0.0f) &&
         (gKirbyState.abilityInUse == 0)) || (gKirbyState.abilityInUse == 0x12)) {
        f32 reach;
        f32 cur[3];
        f32 nxt[3];

        if (D_800E6A10[id] == 1.0f) {
            reach = gPositionState.faceAngle[0];
        } else {
            reach = gPositionState.faceAngle[1];
        }
        cur[0] = nxt[0] = (sinf(gPositionState.faceAngle[2]) * reach) + gEntitiesNextPosXArray[id];
        cur[2] = nxt[2] = (cosf(gPositionState.faceAngle[2]) * reach) + gEntitiesNextPosZArray[id];
        nxt[1] = gEntitiesNextPosYArray[id] + fr[0] + fr[2];
        cur[1] = gEntitiesNextPosYArray[id] + fr[0] + fr[1];
        if (func_80104B70(cur, nxt, 0, &sPortLedgeProbeHit, 0, 0, 0) != 0) {
            if ((sPortLedgeProbeHit.y - gEntitiesNextPosYArray[id]) < fr[0]) {
                D_800E8920[id] = 1;
                cb->rec[0].tri = NULL;
                cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x200) * 8) | (cb->flags.hw & 7));
                gEntitiesNextPosYArray[id] = sPortLedgeProbeHit.y;
                gPositionState.kirbyFootPos[1] = gEntitiesNextPosYArray[id];
            }
        }
    }
    f = cb->flags.w >> 0x13;
    ceilM = f & 0x1C0;
    floorM = f & 0xE00;
    rightM = f & 7;
    leftM = f & 0x38;
    gKirbyState.ceilingCollisionNext = ceilM;
    gKirbyState.floorCollisionNext = floorM;
    gKirbyState.rightCollisionNext = rightM;
    gKirbyState.leftCollisionNext = leftM;
    gKirbyState.verticalCollision = ceilM | floorM;
    gKirbyState.horizontalCollision = rightM | leftM;
    gKirbyState.levelCollisionFlags = ceilM | floorM | rightM | leftM;
    tri = cb->rec[1].tri;
    if ((tri != NULL) && (ceilM != 0)) {
        gKirbyState.ceilingType = tri->collisionType;
        gKirbyState.unk110 = (u32) (uintptr_t) tri;
        gKirbyState.unk120 = (u32) (uintptr_t) cb->rec[1].norm;
        gKirbyState.unk108 = tri->Halt_Movement;
    } else {
        gKirbyState.ceilingType = 0;
        gKirbyState.unk108 = 0;
    }
    tri = cb->rec[0].tri;
    if ((tri != NULL) && (floorM != 0)) {
        gKirbyState.floorType = tri->collisionType;
        gKirbyState.unk114 = (struct KirbyState_114 *) tri;
        gKirbyState.unk124 = (u32) (uintptr_t) cb->rec[0].norm;
        gKirbyState.unk10A = tri->Halt_Movement;
    } else {
        gKirbyState.floorType = 0;
        gKirbyState.unk10A = 0;
    }
    tri = cb->rec[2].tri;
    if ((tri != NULL) && (rightM != 0)) {
        gKirbyState.unk104 = tri->collisionType;
        gKirbyState.unk118 = (u32) (uintptr_t) tri;
        gKirbyState.unk128 = (u32) (uintptr_t) cb->rec[2].norm;
        hm[0] = tri->Halt_Movement;
    } else {
        gKirbyState.unk104 = 0;
        hm[0] = 0;
    }
    tri = cb->rec[3].tri;
    if ((tri != NULL) && (leftM != 0)) {
        gKirbyState.unk106 = tri->collisionType;
        gKirbyState.unk11C = (u32) (uintptr_t) tri;
        gKirbyState.unk12C = (u32) (uintptr_t) cb->rec[3].norm;
        hm[1] = tri->Halt_Movement;
    } else {
        gKirbyState.unk106 = 0;
        hm[1] = 0;
    }
    if (rightM != 0) {
        r = func_8010DC24(cb->rec[2].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x40000;
            goto done;
        }
    }
    if (gKirbyState.leftCollisionNext != 0) {
        r = func_8010DC24(cb->rec[3].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x80000;
            goto done;
        }
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        r = func_8010DC24(cb->rec[1].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x10000;
            goto done;
        }
    }
    if (gKirbyState.floorCollisionNext != 0) {
        r = func_8010DC24(cb->rec[0].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x20000;
            goto done;
        }
    }
    if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
done:
    func_801530BC_ovl3(fr);
    func_80153668_ovl3();
    func_80153808_ovl3();
    func_801538C8_ovl3();
}
#elif defined(PORT)
/* PORT: the per-tick player collision commit, from asm/nonmatchings/ovl3/
 * ovl3_1/func_801529C0_ovl3.s. Runs the movement pass through
 * func_80152828_ovl3 above (which fills gPositionState and the collision
 * result block D_8012BCA0), lets ovl2_10's trigger scan (func_801128A4)
 * veto faces (zeroing the face's record and folding its class bit back into
 * the flags word with the ROM's exact halfword idiom, as ovl2_7.c spells
 * it), commits the resolved position to the entity track arrays, runs the
 * ledge auto-grab probe when Kirby is falling, unpacks the flags word into
 * gKirbyState's per-face collision state, and scans the four faces for a
 * hazardous triangle class (func_8010DC24) into unk140.
 *
 * Port notes: D_8012BCA0 is viewed through an LP64 mirror of ovl2_7.c's
 * struct UnkBCA0 (the whole object lives in src/pc/pc_bss_whole.c; the
 * mirror below is offset-locked against the asserts there). The spawn
 * record comes from the widened D_800E0490 table: cell 1 of the wrapper is
 * the native float record, same spelling as func_80152348_ovl3's PORT arm.
 * The ROM stores the face triangle/normal pointers into 32-bit Player
 * fields; they are stored truncated via (u32)(uintptr_t) like the shadow
 * slot in kirby.c (all game statics sit below 4 GiB), except the floor
 * triangle at unk114 which Player.h already declares as a real pointer.
 * The two halfword writes at Player +0x10C/+0x10E land in the u32 unk10C
 * cell as sub-word stores, same treatment as the D_80198830 block. The
 * ledge probe's out-vector goes through a static (not the stack): ovl2_7's
 * func_80104B70 forwards it through an s32 parameter, which would shear a
 * 64-bit stack address; its s32 result is the ROM's own $v0 pass-through
 * from func_80103B58 (the C in ovl2_7.c declares it void). */
struct PortColRec3 { s32 type; struct CollisionTriangle *tri; void *norm; };
struct PortColBlock3 {
#ifdef PORT
    union { u32 w; struct { u16 hwpad_; u16 hw; }; } flags;  /* hw = top half, see ovl2_7.c */
#else
    union { u32 w; u16 hw; } flags;
#endif
    struct PortColRec3 rec[5];
    void *waterRec[3];
    u32 waterSrc[3];
};
s32 func_801128A4(struct PositionState *);
void func_8011D40C(void);
u16 func_8010DC24(struct CollisionTriangle *);
s32 func_80104B70(f32 *, f32 *, s32, void *, s32, s32, s32);
void func_801530BC_ovl3(f32 *);
void func_80153668_ovl3(void);
void func_80153808_ovl3(void);
void func_801538C8_ovl3(void);
extern s32 D_800D6E44;

static Vector sPortLedgeProbeHit;

void func_801529C0_ovl3(void) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    f32 **rec;
    f32 *fr;
    s32 id;
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 ceilM;
    u32 floorM;
    u32 rightM;
    u32 leftM;
    u16 *hm = (u16 *) &gKirbyState.unk10C;
    struct CollisionTriangle *tri;
    u16 r;

    id = omCurrentObj->objId;
    rec = D_800E0490[id];
    fr = rec[1];
    D_800E8920[id] = func_80152828_ovl3(fr, (f32 *) &gPositionState);
    hits = func_801128A4(&gPositionState);
    dx = gPositionState.kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = gPositionState.kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = gPositionState.kirbyFootPos[0];
        gEntitiesNextPosZArray[id] = gPositionState.kirbyFootPos[2];
    }
    if (hits != 0) {
        if ((hits & 1) && (D_800D6E44 != 2)) {
            cb->rec[2].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 1) * 8) | (cb->flags.hw & 7));
        }
        if ((hits & 2) && (D_800D6E44 != 4)) {
            cb->rec[3].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 8) * 8) | (cb->flags.hw & 7));
        }
        if ((hits & 4) && (D_800D6E44 != 1)) {
            cb->rec[1].tri = NULL;
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x40) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    gEntitiesNextPosYArray[id] = gPositionState.kirbyFootPos[1];
    if (((D_800E8920[id] == 0) && (D_800E3210[id] <= 0.0f) && (D_800E64D0[id] != 0.0f) &&
         (gKirbyState.abilityInUse == 0)) || (gKirbyState.abilityInUse == 0x12)) {
        f32 reach;
        f32 cur[3];
        f32 nxt[3];

        if (D_800E6A10[id] == 1.0f) {
            reach = gPositionState.faceAngle[0];
        } else {
            reach = gPositionState.faceAngle[1];
        }
        cur[0] = nxt[0] = (sinf(gPositionState.faceAngle[2]) * reach) + gEntitiesNextPosXArray[id];
        cur[2] = nxt[2] = (cosf(gPositionState.faceAngle[2]) * reach) + gEntitiesNextPosZArray[id];
        nxt[1] = gEntitiesNextPosYArray[id] + fr[0] + fr[2];
        cur[1] = gEntitiesNextPosYArray[id] + fr[0] + fr[1];
        if (func_80104B70(cur, nxt, 0, &sPortLedgeProbeHit, 0, 0, 0) != 0) {
            if ((sPortLedgeProbeHit.y - gEntitiesNextPosYArray[id]) < fr[0]) {
                D_800E8920[id] = 1;
                cb->rec[0].tri = NULL;
                cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x200) * 8) | (cb->flags.hw & 7));
                gEntitiesNextPosYArray[id] = sPortLedgeProbeHit.y;
                gPositionState.kirbyFootPos[1] = gEntitiesNextPosYArray[id];
            }
        }
    }
    f = cb->flags.w >> 0x13;
    ceilM = f & 0x1C0;
    floorM = f & 0xE00;
    rightM = f & 7;
    leftM = f & 0x38;
    gKirbyState.ceilingCollisionNext = ceilM;
    gKirbyState.floorCollisionNext = floorM;
    gKirbyState.rightCollisionNext = rightM;
    gKirbyState.leftCollisionNext = leftM;
    gKirbyState.verticalCollision = ceilM | floorM;
    gKirbyState.horizontalCollision = rightM | leftM;
    gKirbyState.levelCollisionFlags = ceilM | floorM | rightM | leftM;
    tri = cb->rec[1].tri;
    if ((tri != NULL) && (ceilM != 0)) {
        gKirbyState.ceilingType = tri->collisionType;
        gKirbyState.unk110 = (u32) (uintptr_t) tri;
        gKirbyState.unk120 = (u32) (uintptr_t) cb->rec[1].norm;
        gKirbyState.unk108 = tri->Halt_Movement;
    } else {
        gKirbyState.ceilingType = 0;
        gKirbyState.unk108 = 0;
    }
    tri = cb->rec[0].tri;
    if ((tri != NULL) && (floorM != 0)) {
        gKirbyState.floorType = tri->collisionType;
        gKirbyState.unk114 = (struct KirbyState_114 *) tri;
        gKirbyState.unk124 = (u32) (uintptr_t) cb->rec[0].norm;
        gKirbyState.unk10A = tri->Halt_Movement;
    } else {
        gKirbyState.floorType = 0;
        gKirbyState.unk10A = 0;
    }
    tri = cb->rec[2].tri;
    if ((tri != NULL) && (rightM != 0)) {
        gKirbyState.unk104 = tri->collisionType;
        gKirbyState.unk118 = (u32) (uintptr_t) tri;
        gKirbyState.unk128 = (u32) (uintptr_t) cb->rec[2].norm;
        hm[0] = tri->Halt_Movement;
    } else {
        gKirbyState.unk104 = 0;
        hm[0] = 0;
    }
    tri = cb->rec[3].tri;
    if ((tri != NULL) && (leftM != 0)) {
        gKirbyState.unk106 = tri->collisionType;
        gKirbyState.unk11C = (u32) (uintptr_t) tri;
        gKirbyState.unk12C = (u32) (uintptr_t) cb->rec[3].norm;
        hm[1] = tri->Halt_Movement;
    } else {
        gKirbyState.unk106 = 0;
        hm[1] = 0;
    }
    if (rightM != 0) {
        r = func_8010DC24(cb->rec[2].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x40000;
            goto done;
        }
    }
    if (gKirbyState.leftCollisionNext != 0) {
        r = func_8010DC24(cb->rec[3].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x80000;
            goto done;
        }
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        r = func_8010DC24(cb->rec[1].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x10000;
            goto done;
        }
    }
    if (gKirbyState.floorCollisionNext != 0) {
        r = func_8010DC24(cb->rec[0].tri);
        if (r != 0) {
            gKirbyState.unk140 = (u32) r | 0x20000;
            goto done;
        }
    }
    if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
done:
    func_801530BC_ovl3(fr);
    func_80153668_ovl3();
    func_80153808_ovl3();
    func_801538C8_ovl3();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801529C0_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 360/362, RE-MEASURED -- the prior "2/362" note was stale/wrong;
 * verify.py shows total mismatch from insn [0]. Frame is -0x128 (ROM) vs
 * this draft's -0xF0, and the ROM's prologue re-derives &omCurrentObj via
 * `lui/lw %hi/%lo(omCurrentObj)` directly into $v0 (not cached across the
 * whole function the way this draft's `s32 id = omCurrentObj->objId`
 * hoist does), then re-reads *omCurrentObj/->objId at nearly every access.
 * Also: `$ra, -1, -1, -1` are materialised and spilled to the stack (sw at
 * 0x70/0x78/0x7C) very early, before any of the three probe blocks --
 * likely the idx0/idx1/idxIn/idx2/chosen initialisers hoisted as a group,
 * not interleaved with each probe the way this draft declares them. A
 * rewrite needs the no-id-caching pattern (see func_80152348_ovl3 and
 * func_80161058_ovl3's notes for the same finding) plus matching that
 * up-front spill group; not attempted here given the scope. Leaving
 * guarded. */
void func_801530BC_ovl3(f32 *h) {
    extern u8 D_8012BCA0[];
    extern s32 D_800E8AE0[];
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    f32 prev3[3];
    f32 cur3[3];
    f32 outN[24 / 4];
    u8 *snap0rec[3], *snap1rec[3];
    u32 snap0src[3], snap1src[3];
    s32 idx0 = -1, idx1 = -1, idxIn = -1, idx2 = -1, chosen = -1;
    u32 n, i;
    s32 v;

    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);

        if (rec != NULL && rec[4] == 1) {
            idx0 = i;
            for (n = 0; n < 3; n++) {
                snap0rec[n] = *(u8 **) (D_8012BCA0 + 128 + n * 8);
                snap0src[n] = *(u32 *) (D_8012BCA0 + 152 + n * 4);
            }
            break;
        }
    }
    probe[1] = gEntitiesNextPosYArray[id] + h[0];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);
        u32 k;

        if (rec == NULL) {
            continue;
        }
        if (rec[4] == 1) {
            idx1 = i;
            idxIn = -1;
            for (k = 0; k < 3; k++) {
                snap1rec[k] = *(u8 **) (D_8012BCA0 + 128 + k * 8);
                snap1src[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
            }
            break;
        }
        if (rec[4] == 0 && idxIn == -1) {
            idxIn = i;
            for (k = 0; k < 3; k++) {
                snap1rec[k] = *(u8 **) (D_8012BCA0 + 128 + k * 8);
                snap1src[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
            }
        }
    }
    probe[1] = gEntitiesNextPosYArray[id] + h[0] + h[1];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);

        if (rec != NULL && rec[4] == 1) {
            idx2 = i;
            break;
        }
    }
    if (idx1 != -1 && snap1rec[idx1][5] == 1) {
        chosen = idx1;
    } else if (idxIn != -1 && snap1rec[idxIn][5] == 1) {
        chosen = idxIn;
    }
    gKirbyState.unk152 = 0;
    if (chosen != -1) {
        u8 *rec = snap1rec[chosen];

        if (rec[6] != 0) {
            gKirbyState.unk152 = 1;
            *(f32 *) &gKirbyState.unk134 = (f32) rec[7];
            *(f32 *) &gKirbyState.unk130 = (f32) (rec[6] - 1) * 0.3926991f;
        }
    }
    if (idx2 == -1 && idx1 == -1 && idx0 == -1) {
        gKirbyState.unk14C = 0.0f;
        gKirbyState.unk148 = 0.0f;
        gKirbyState.unk144 = 0.0f;
        D_800E8AE0[id] = 0;
        return;
    }
    if (idx2 != -1 && idx1 != -1 && idx0 != -1) {
        v = 7;
        probe[0] = 0.0f;
        probe[1] = 0.0f;
        probe[2] = 0.0f;
    } else {
        if (idx2 == -1 && idx0 != -1) {
            prev3[0] = gEntitiesPosXArray[id];
            prev3[1] = gEntitiesNextPosYArray[id] + h[0] + h[1];
            prev3[2] = gEntitiesPosZArray[id];
            cur3[0] = gEntitiesNextPosXArray[id];
            cur3[1] = gEntitiesNextPosYArray[id];
            cur3[2] = gEntitiesNextPosZArray[id];
            func_8010E048(snap0rec[idx0], snap0src[idx0], prev3, cur3, outN, probe);
        }
        v = (idx1 != -1) ? 3 : 1;
    }
    {
        s32 was = D_800E8AE0[id] & 2;

        if (was == 0 && (v & 2)) {
            v |= 0xC0;
        } else if (was != 0 && !(v & 2)) {
            v |= 0xA0;
        }
    }
    D_800E8AE0[id] = v;
    gKirbyState.unk144 = probe[0];
    gKirbyState.unk148 = probe[1];
    gKirbyState.unk14C = probe[2];
}
#elif defined(PORT)
/* Swim-state watcher (via m2c): probes the water annex at foot, foot+h1 and
 * foot+h1+h2, snapshotting the annex between probes (each func_8010DF9C
 * call rewrites it), derives the in/entering/leaving state bits with the
 * splash triggers, the water-flow push (direction * 22.5 degrees, speed as
 * unsigned float), and the crossing velocity via func_8010E048 when only
 * the foot is submerged. Annex offsets 128/152 are locked by the asserts in
 * src/pc/pc_bss_whole.c; record fields are the native WaterData layout. */
void func_801530BC_ovl3(f32 *h) {
    extern u8 D_8012BCA0[];
    extern s32 D_800E8AE0[];
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    f32 prev3[3];
    f32 cur3[3];
    f32 outN[24 / 4];
    u8 *snap0rec[3], *snap1rec[3];
    u32 snap0src[3], snap1src[3];
    s32 idx0 = -1, idx1 = -1, idxIn = -1, idx2 = -1, chosen = -1;
    u32 n, i;
    s32 v;

    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);

        if (rec != NULL && rec[4] == 1) {
            idx0 = i;
            for (n = 0; n < 3; n++) {
                snap0rec[n] = *(u8 **) (D_8012BCA0 + 128 + n * 8);
                snap0src[n] = *(u32 *) (D_8012BCA0 + 152 + n * 4);
            }
            break;
        }
    }
    probe[1] = gEntitiesNextPosYArray[id] + h[0];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);
        u32 k;

        if (rec == NULL) {
            continue;
        }
        if (rec[4] == 1) {
            idx1 = i;
            idxIn = -1;
            for (k = 0; k < 3; k++) {
                snap1rec[k] = *(u8 **) (D_8012BCA0 + 128 + k * 8);
                snap1src[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
            }
            break;
        }
        if (rec[4] == 0 && idxIn == -1) {
            idxIn = i;
            for (k = 0; k < 3; k++) {
                snap1rec[k] = *(u8 **) (D_8012BCA0 + 128 + k * 8);
                snap1src[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
            }
        }
    }
    probe[1] = gEntitiesNextPosYArray[id] + h[0] + h[1];
    n = func_8010DF9C(probe);
    for (i = 0; i < n && i < 3; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + i * 8);

        if (rec != NULL && rec[4] == 1) {
            idx2 = i;
            break;
        }
    }
    if (idx1 != -1 && snap1rec[idx1][5] == 1) {
        chosen = idx1;
    } else if (idxIn != -1 && snap1rec[idxIn][5] == 1) {
        chosen = idxIn;
    }
    gKirbyState.unk152 = 0;
    if (chosen != -1) {
        u8 *rec = snap1rec[chosen];

        if (rec[6] != 0) {
            gKirbyState.unk152 = 1;
            *(f32 *) &gKirbyState.unk134 = (f32) rec[7];
            *(f32 *) &gKirbyState.unk130 = (f32) (rec[6] - 1) * 0.3926991f;
        }
    }
    if (idx2 == -1 && idx1 == -1 && idx0 == -1) {
        gKirbyState.unk14C = 0.0f;
        gKirbyState.unk148 = 0.0f;
        gKirbyState.unk144 = 0.0f;
        D_800E8AE0[id] = 0;
        return;
    }
    if (idx2 != -1 && idx1 != -1 && idx0 != -1) {
        v = 7;
        probe[0] = 0.0f;
        probe[1] = 0.0f;
        probe[2] = 0.0f;
    } else {
        if (idx2 == -1 && idx0 != -1) {
            prev3[0] = gEntitiesPosXArray[id];
            prev3[1] = gEntitiesNextPosYArray[id] + h[0] + h[1];
            prev3[2] = gEntitiesPosZArray[id];
            cur3[0] = gEntitiesNextPosXArray[id];
            cur3[1] = gEntitiesNextPosYArray[id];
            cur3[2] = gEntitiesNextPosZArray[id];
            func_8010E048(snap0rec[idx0], snap0src[idx0], prev3, cur3, outN, probe);
        }
        v = (idx1 != -1) ? 3 : 1;
    }
    {
        s32 was = D_800E8AE0[id] & 2;

        if (was == 0 && (v & 2)) {
            v |= 0xC0;
        } else if (was != 0 && !(v & 2)) {
            v |= 0xA0;
        }
    }
    D_800E8AE0[id] = v;
    gKirbyState.unk144 = probe[0];
    gKirbyState.unk148 = probe[1];
    gKirbyState.unk14C = probe[2];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801530BC_ovl3.s")
#endif

#ifdef NON_MATCHING
void func_80153668_ovl3(void) {
    f32 sp20[3];
    register u16 count;
    register u16 i;
    extern u8 *D_8012BCA0_p[];

    if (gKirbyState.unk140 != 0) {
        return;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    count = func_8010DF9C(sp20);
    if (count != 0) {
        for (i = 0; i < count; i++) {
            if ((D_8012BCA0_p[i + 0x10][4] == 0) && (D_8012BCA0_p[i + 0x10][5] == 2)) {
                gKirbyState.unk140 = 0x20001;
            }
        }
    } else {
        sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
        count = func_8010DF9C(sp20);
        if (count != 0) {
            for (i = 0; i < count; i++) {
                if ((D_8012BCA0_p[i + 0x10][4] == 0) && (D_8012BCA0_p[i + 0x10][5] == 2)) {
                    gKirbyState.unk140 = 0x20001;
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153668_ovl3.s")
#endif

void func_80153808_ovl3(void) {
    if (gKirbyState.floorCollisionNext & 0xC00) {
        if (gKirbyState.floorCollisionNext & 0x400) {
            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                gKirbyState.unk150 = 2;
            } else {
                gKirbyState.unk150 = 1;
            }
        } else {
            if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
                gKirbyState.unk150 = 2;
            } else {
                gKirbyState.unk150 = 1;
            }
        }
    } else {
        gKirbyState.unk150 = 0;
    }
}

void func_801538C8_ovl3(void) {
    if ((gKirbyState.ceilingCollisionNext == 0)
     && (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (gKirbyState.rightCollisionNext & 4))
      || ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (gKirbyState.leftCollisionNext & 0x20)))
     && (func_8010DA28(&gPositionState) == 0)) {
        gKirbyState.unk151 = 1;
    } else {
        gKirbyState.unk151 = 0;
    }
}

s32 func_80153984_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    func_801529C0_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80153A18_ovl3(void) {
    s32 unused;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_801529C0_ovl3();
    return func_80154428_ovl3((f32 *) &sp20);
}

s32 func_80153AD4_ovl3(void) {
    s32 ret;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8AE0[omCurrentObj->objId] = 0;
        D_800E8920[omCurrentObj->objId] = D_800E8AE0[omCurrentObj->objId];
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ret = func_80154428_ovl3((f32 *) &sp20);
    func_801529C0_ovl3();
    return ret;
}

#ifdef MIPS_TO_C
/* FACTORY: 275/277, RE-MEASURED -- the prior "2/277" note was stale/wrong;
 * verify.py shows total mismatch from insn [0]. Frame is -0x40 with s0
 * saved (ROM, s0 = &omCurrentObj held across the whole function) vs this
 * draft's -0x30 with no saved regs -- same no-id-caching finding as
 * func_80152348_ovl3/func_801530BC_ovl3 in this TU: the ROM never hoists
 * `omCurrentObj->objId` into a local, it holds the omCurrentObj POINTER
 * in s0 and re-derives `lw v1,0(s0); lw a0,0(v1)` (objId) at each use.
 * Not attempted here. Leaving guarded. */
s32 func_80153B98_ovl3(void) {
    struct PCRec { s32 type; struct CollisionTriangle *tri; void *norm; };
    struct PCBlk {
        union { u32 w; struct { u16 hwpad_; u16 hw; }; } flags;
        struct PCRec rec[5];
    };
    extern u8 D_8012BCA0[];
    struct PCBlk *cb = (struct PCBlk *) D_8012BCA0;
    struct PositionState *st = &gPositionState;
    GObj *obj = omCurrentObj;
    f32 **rec = D_800E0490[obj->objId];
    f32 *fr = rec[1];
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 ceilM;
    u32 floorM;
    struct CollisionTriangle *tri;
    u16 r;

    st->kirbyFootPos[0] = gEntitiesNextPosXArray[obj->objId];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[obj->objId];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[obj->objId];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[obj->objId] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    if (gKirbyState.isTurning & 1) {
        st->faceAngle[2] = gKirbyState.unk7C;
    } else {
        st->faceAngle[2] = D_800E17D0[obj->objId];
    }
    func_8010BBD4(st);
    func_80105238((f32 *) st, D_8012BCA0);
    hits = func_801128A4(st);
    if (hits != 0) {
        dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[omCurrentObj->objId];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(omCurrentObj->objId, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = st->kirbyFootPos[0];
            gEntitiesNextPosZArray[omCurrentObj->objId] = st->kirbyFootPos[2];
        }
        if (hits & 1) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 7) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 2) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x38) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 4) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x1C0) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = st->kirbyFootPos[1];
    f = cb->flags.w >> 0x13;
    ceilM = f & 0x1C0;
    floorM = f & 0xE00;
    gKirbyState.ceilingCollisionNext = ceilM;
    gKirbyState.floorCollisionNext = floorM;
    gKirbyState.verticalCollision = ceilM | floorM;
    if (floorM != 0) {
        D_800E8920[omCurrentObj->objId] = 1;
    }
    tri = cb->rec[1].tri;
    if ((tri != NULL) && (ceilM != 0)) {
        gKirbyState.ceilingType = tri->collisionType;
        gKirbyState.unk108 = tri->Halt_Movement;
    } else {
        gKirbyState.ceilingType = 0;
        gKirbyState.unk108 = 0;
    }
    tri = cb->rec[0].tri;
    if ((tri != NULL) && (floorM != 0)) {
        gKirbyState.floorType = tri->collisionType;
        gKirbyState.unk10A = tri->Halt_Movement;
    } else {
        gKirbyState.floorType = 0;
        gKirbyState.unk10A = 0;
    }
    if ((ceilM != 0) && ((r = func_8010DC24(cb->rec[1].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x10000;
    } else if ((gKirbyState.floorCollisionNext != 0) && ((r = func_8010DC24(cb->rec[0].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x20000;
    } else if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
    func_801530BC_ovl3(fr);
    return gKirbyState.verticalCollision;
}
#elif defined(PORT)
/* PORT: vertical-only collision pass (via m2c). Seats gPositionState from
 * the entity track arrays and the spawn record, runs the vertical sweep
 * (func_8010BBD4) and the result unpack (func_80105238), lets the ovl2_10
 * trigger scan veto whole face groups (full 3-bit masks 7/0x38/0x1C0 here,
 * with no record clearing, unlike func_801529C0_ovl3's per-bit form),
 * commits the resolved position, unpacks only the vertical face state into
 * gKirbyState (floor contact also grounds D_800E8920), scans ceiling then
 * floor for hazardous triangle classes, and runs the swim watcher. */

s32 func_80153B98_ovl3(void) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    struct PositionState *st = &gPositionState;
    s32 id = omCurrentObj->objId;
    f32 **rec = D_800E0490[id];
    f32 *fr = rec[1];
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 ceilM;
    u32 floorM;
    struct CollisionTriangle *tri;
    u16 r;

    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[id] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    if (gKirbyState.isTurning & 1) {
        st->faceAngle[2] = gKirbyState.unk7C;
    } else {
        st->faceAngle[2] = D_800E17D0[id];
    }
    func_8010BBD4(st);
    func_80105238((f32 *) st, D_8012BCA0);
    hits = func_801128A4(st);
    if (hits != 0) {
        dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
        dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[id];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(id, dx, dz);
            gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
            gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
        }
        if (hits & 1) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 7) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 2) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x38) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 4) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x1C0) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    gEntitiesNextPosYArray[id] = st->kirbyFootPos[1];
    f = cb->flags.w >> 0x13;
    ceilM = f & 0x1C0;
    floorM = f & 0xE00;
    gKirbyState.ceilingCollisionNext = ceilM;
    gKirbyState.floorCollisionNext = floorM;
    gKirbyState.verticalCollision = ceilM | floorM;
    if (floorM != 0) {
        D_800E8920[id] = 1;
    }
    tri = cb->rec[1].tri;
    if ((tri != NULL) && (ceilM != 0)) {
        gKirbyState.ceilingType = tri->collisionType;
        gKirbyState.unk108 = tri->Halt_Movement;
    } else {
        gKirbyState.ceilingType = 0;
        gKirbyState.unk108 = 0;
    }
    tri = cb->rec[0].tri;
    if ((tri != NULL) && (floorM != 0)) {
        gKirbyState.floorType = tri->collisionType;
        gKirbyState.unk10A = tri->Halt_Movement;
    } else {
        gKirbyState.floorType = 0;
        gKirbyState.unk10A = 0;
    }
    if ((ceilM != 0) && ((r = func_8010DC24(cb->rec[1].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x10000;
    } else if ((gKirbyState.floorCollisionNext != 0) && ((r = func_8010DC24(cb->rec[0].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x20000;
    } else if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
    func_801530BC_ovl3(fr);
    return gKirbyState.verticalCollision;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153B98_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 7/260, whole-function callee-saved permutation. The ROM caches
 * &D_8012BCA0 early into a saved reg ($s0, -0x40 frame) for the
 * func_80105238 call; this draft lets IDO compute it lazily (-0x30 frame,
 * no s0 save) and otherwise picks the neighbouring temp registers
 * ($a2/$t2 vs $a3/$t0) for gPositionState/gKirbyState -- correct
 * instruction count and control flow, near-total register-naming diff.
 * Queued for the
 * permuter. */
s32 func_80153FC8_ovl3(void) {
    struct PCRec { s32 type; struct CollisionTriangle *tri; void *norm; };
    struct PCBlk {
        union { u32 w; struct { u16 hwpad_; u16 hw; }; } flags;
        struct PCRec rec[5];
    };
    extern u8 D_8012BCA0[];
    struct PCBlk *cb = (struct PCBlk *) D_8012BCA0;
    struct PositionState *st = &gPositionState;
    GObj *obj = omCurrentObj;
    f32 **rec = D_800E0490[obj->objId];
    f32 *fr = rec[1];
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 rightM;
    u32 leftM;
    u16 *hm = (u16 *) &gKirbyState.unk10C;
    struct CollisionTriangle *tri;
    u16 r;

    st->kirbyFootPos[0] = gEntitiesNextPosXArray[obj->objId];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[obj->objId];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[obj->objId];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[obj->objId] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    if (gKirbyState.isTurning & 1) {
        st->faceAngle[2] = gKirbyState.unk7C;
    } else {
        st->faceAngle[2] = D_800E17D0[obj->objId];
    }
    func_8010BFAC(st);
    func_80105238((f32 *) st, D_8012BCA0);
    hits = func_801128A4(st);
    dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(omCurrentObj->objId, dx, dz);
        gEntitiesNextPosXArray[omCurrentObj->objId] = st->kirbyFootPos[0];
        gEntitiesNextPosZArray[omCurrentObj->objId] = st->kirbyFootPos[2];
    }
    if (hits != 0) {
        if (hits & 1) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 7) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 2) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x38) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 4) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x1C0) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    f = cb->flags.w >> 0x13;
    rightM = f & 7;
    leftM = f & 0x38;
    gKirbyState.rightCollisionNext = rightM;
    gKirbyState.leftCollisionNext = leftM;
    gKirbyState.horizontalCollision = rightM | leftM;
    tri = cb->rec[2].tri;
    if ((tri != NULL) && (rightM != 0)) {
        gKirbyState.unk104 = tri->collisionType;
        hm[0] = tri->Halt_Movement;
    } else {
        gKirbyState.unk104 = 0;
        hm[0] = 0;
    }
    tri = cb->rec[3].tri;
    if ((tri != NULL) && (leftM != 0)) {
        gKirbyState.unk106 = tri->collisionType;
        hm[1] = tri->Halt_Movement;
    } else {
        gKirbyState.unk106 = 0;
        hm[1] = 0;
    }
    if ((rightM != 0) && ((r = func_8010DC24(cb->rec[2].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x40000;
    } else if ((gKirbyState.leftCollisionNext != 0) && ((r = func_8010DC24(cb->rec[3].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x80000;
    } else if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
    return gKirbyState.horizontalCollision;
}
#elif defined(PORT)
/* PORT: horizontal-only collision pass (via m2c). Mirror of
 * func_80153B98_ovl3 for the side faces: runs the horizontal sweep
 * (func_8010BFAC), commits any trigger-scan pushback unconditionally,
 * applies the same full-mask face vetoes, unpacks right/left face state
 * into gKirbyState (halfword pair at unk10C, the func_801529C0_ovl3
 * spelling), scans right then left for hazard classes, and returns the
 * horizontal contact mask. No ground flag, no swim watcher here. */
s32 func_80153FC8_ovl3(void) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    struct PositionState *st = &gPositionState;
    s32 id = omCurrentObj->objId;
    f32 **rec = D_800E0490[id];
    f32 *fr = rec[1];
    s32 hits;
    f32 dx;
    f32 dz;
    u32 f;
    u32 rightM;
    u32 leftM;
    u16 *hm = (u16 *) &gKirbyState.unk10C;
    struct CollisionTriangle *tri;
    u16 r;

    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[id] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    if (gKirbyState.isTurning & 1) {
        st->faceAngle[2] = gKirbyState.unk7C;
    } else {
        st->faceAngle[2] = D_800E17D0[id];
    }
    func_8010BFAC(st);
    func_80105238((f32 *) st, D_8012BCA0);
    hits = func_801128A4(st);
    dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
        gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
    }
    if (hits != 0) {
        if (hits & 1) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 7) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 2) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x38) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 4) {
            cb->flags.hw = (u16) ((((cb->flags.w >> 0x13) | 0x1C0) * 8) | (cb->flags.hw & 7));
        }
        if (hits & 8) {
            func_8011D40C();
        }
    }
    f = cb->flags.w >> 0x13;
    rightM = f & 7;
    leftM = f & 0x38;
    gKirbyState.rightCollisionNext = rightM;
    gKirbyState.leftCollisionNext = leftM;
    gKirbyState.horizontalCollision = rightM | leftM;
    tri = cb->rec[2].tri;
    if ((tri != NULL) && (rightM != 0)) {
        gKirbyState.unk104 = tri->collisionType;
        hm[0] = tri->Halt_Movement;
    } else {
        gKirbyState.unk104 = 0;
        hm[0] = 0;
    }
    tri = cb->rec[3].tri;
    if ((tri != NULL) && (leftM != 0)) {
        gKirbyState.unk106 = tri->collisionType;
        hm[1] = tri->Halt_Movement;
    } else {
        gKirbyState.unk106 = 0;
        hm[1] = 0;
    }
    if ((rightM != 0) && ((r = func_8010DC24(cb->rec[2].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x40000;
    } else if ((gKirbyState.leftCollisionNext != 0) && ((r = func_8010DC24(cb->rec[3].tri)) != 0)) {
        gKirbyState.unk140 = (u32) r | 0x80000;
    } else if (gKirbyState.action != 0x16) {
        gKirbyState.unk140 = 0;
    }
    return gKirbyState.horizontalCollision;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80153FC8_ovl3.s")
#endif

void func_8015439C_ovl3(f32 *arg0) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = arg0[0];
    dst[1] = arg0[1];
    dst[2] = arg0[2];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = D_800E17D0[omCurrentObj->objId];
}

#ifdef NON_MATCHING
/* FACTORY: 17/28 (was 19/29), re-confirmed 2026-08-23, identical 17/28.
   Two residues, both measured in wave 8 after ovl3's rodata
   migration:
     1. IDO folds the single store through the constant address into
        `lui $at; sw ..., %lo(sym+0x1C)($at)`; the ROM materialises the base
        into $a2 with lui+addiu and stores at 0x1C($a2). Swept: D_8012E948 vs
        &D_8012E944[1], a named dst local vs the symbol inline, and a struct
        pointer.
     2. the ROM hoists ONE `or $v0, $zero, $zero` above both early exits and
        emits a duplicated `lw $ra` epilogue (29 insns); every `||`-merged
        form comes out 28. The separate-if form (variant a) reaches the right
        LENGTH at 19/29 but is WORSE register-wise when actually tried
        (23/29, confirmed 2026-08-23) -- if you attack this again, that
        variant needs further register work, not just the length fix. Swept:
        `s32 ret = 0` at declaration and as a statement, goto into a shared
        return block, trailing `return 0` vs falling off, and the literal
        separate-if split (worse, 23/29).
   Re-swept 2026-08-24, and the shape space is now closed rather than merely
   sampled -- the `||` form below is the BEST of everything tried, and every
   single-exit rewrite is strictly worse: `goto done` from two separate ifs,
   the same with a `s32 ret` local, the `||` test branching to a `done:`
   label, and nested ifs with a `ret` local ALL come out at exactly 22/28,
   and the separate-if forms (with dst hoisted, with dst assigned late, with
   &D_8012E944[1], and with the pointer store split out of the test) at
   23/29, 23/29, 23/29 and 25/31. The length fix and the register fix are not
   reachable from the same shape. Good permuter seed. */
s32 func_80154428_ovl3(f32 *arg0) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;
    f32 **temp;

    temp = D_800E0490[omCurrentObj->objId];
    if ((temp == NULL) || ((*(f32 **) &dst[7] = temp[0]) == NULL)) {
        return 0;
    }
    func_8015439C_ovl3(arg0);
    func_8011BF4C(dst, 0);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154428_ovl3.s")
#endif
void func_8015449C_ovl3(void *arg0, s32 arg1) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    dst[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    dst[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = D_800E17D0[omCurrentObj->objId];
    *(void **) &dst[7] = arg0;
    func_8011BF4C(dst, arg1);
}

void func_80154578_ovl3(void *arg0, s32 arg1, f32 arg2) {
    extern f32 D_8012E948[];
    f32 *dst = D_8012E948;

    dst[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    dst[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    dst[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = arg2;
    *(void **) &dst[7] = arg0;
    func_8011BF4C(dst, arg1);
}

void func_80154648_ovl3(s32 arg0, f32 *arg1, f32 *arg2) {
    f32 *temp;
    f32 **p;

    func_80105180(arg1);
    p = D_800E0490[omCurrentObj->objId];
    temp = p[1];
    arg1[1] = gEntitiesNextPosXArray[arg0];
    arg1[2] = gEntitiesNextPosYArray[arg0] + 20.0f;
    arg1[3] = gEntitiesNextPosZArray[arg0];
    arg1[4] = temp[0];
    arg1[5] = temp[0] + temp[1];
    arg1[6] = temp[0] + temp[2];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg1[7] = temp[3];
        arg1[8] = temp[4];
    } else {
        arg1[7] = temp[4];
        arg1[8] = temp[3];
    }
    arg1[9] = D_800E17D0[omCurrentObj->objId];
    func_801051AC(arg1);
    arg1[1] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg1[2] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg1[3] = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[arg0] & 6;
    if (arg2 != 0) {
        arg2[0] = arg2[3] = gEntitiesNextPosXArray[arg0];
        arg2[1] = arg2[4] = gEntitiesNextPosYArray[arg0];
        arg2[2] = arg2[5] = gEntitiesNextPosZArray[arg0];
        arg2[6] = 0.0f;
        *(s32 *) &arg2[7] = 0;
    }
}

void func_8015488C_ovl3(s32 arg0, f32 *arg1) {
    arg1[0] = arg1[3] = gEntitiesNextPosXArray[arg0];
    arg1[1] = arg1[4] = gEntitiesNextPosYArray[arg0];
    arg1[2] = arg1[5] = gEntitiesNextPosZArray[arg0];
    arg1[6] = 0.0f;
    *(s32 *) &arg1[7] = 0;
}

#ifdef PORT
/* PORT: the three shot/projectile collision passes (via m2c). On N64 each
 * receives the shot's persistent state buffer (layout = PositionState;
 * plyshot passes &D_80197F60_ovl3[...]) as a hidden $a0 threaded through
 * void-declared wrappers; the PORT arms take it explicitly. All three seat
 * the buffer from the entity track arrays and the spawn record, run their
 * sweep, unpack into D_8012BCA0 via func_80105238, and finish with the
 * shared water probe: shift the shot's water flag right once, then re-set
 * bit 2 for every active water volume at foot height (annex spelling as in
 * func_80152348_ovl3's arm). */
/* func_80109E44 / func_8010B11C are declared at the top of the file. */

static void portShotWaterScan(f32 h0) {
    extern u8 D_8012BCA0[];
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    s32 hits;
    u32 wi;

    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id] + h0;
    probe[2] = gEntitiesNextPosZArray[id];
    hits = func_8010DF9C(probe);
    D_800E8AE0[id] = (u32) D_800E8AE0[id] >> 1;
    for (wi = 0; wi < (u32) hits && wi < 3; wi++) {
        u8 *w = *(u8 **) (D_8012BCA0 + 128 + wi * 8);

        if (w != NULL && w[4] == 1) {
            D_800E8AE0[id] |= 4;
        }
    }
}

static void portShotSeatState(struct PositionState *st, f32 *fr) {
    s32 id = omCurrentObj->objId;

    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    st->scale[0] = fr[0];
    st->scale[1] = fr[1] + fr[0];
    st->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[id] == 1.0f) {
        st->faceAngle[0] = fr[3];
        st->faceAngle[1] = fr[4];
    } else {
        st->faceAngle[0] = fr[4];
        st->faceAngle[1] = fr[3];
    }
    st->faceAngle[2] = D_800E17D0[id];
}

/* Moving-shot pass: ground sweep when grounded flag clear, air sweep
 * otherwise; commits the resolved position (with track-progress rederive
 * on X/Z pushback) and rescans the water annex. */
void func_801548DC_ovl3(struct PositionState *st) {
    extern u8 D_8012BCA0[];
    s32 id = omCurrentObj->objId;
    f32 **rec = D_800E0490[id];
    f32 *fr = rec[1];
    s32 res;
    f32 dx;
    f32 dz;

    portShotSeatState(st, fr);
    if (D_800E8920[id] == 0) {
        res = func_80109E44((f32 *) st);
    } else {
        res = func_8010B11C((f32 *) st);
    }
    func_80105238((f32 *) st, D_8012BCA0);
    D_800E8920[id] = res;
    dx = st->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
    dz = st->kirbyFootPos[2] - gEntitiesNextPosZArray[id];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
        gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
    }
    gEntitiesNextPosYArray[id] = st->kirbyFootPos[1];
    portShotWaterScan(fr[0]);
}
#elif defined(MIPS_TO_C)
/* FACTORY: 66/263, whole-function callee-saved permutation (same floor
 * class as func_80154CFC_ovl3 next to it -- see that draft's note).
 * Sealed after the file-scope extern was loosened from `(void)` to
 * unspecified-args `()` (matching func_80154CFC_ovl3's existing form)
 * per the LEVERS protocol: baseline verify.py --all / check_tu_size.py
 * taken before the prototype edit and re-checked after, no regression
 * (ovl3_1.c stayed 0 match / not-wrong-size both times; the one
 * wrong-size TU flagged, ovl2_7.c, is pre-existing and unrelated --
 * confirmed by reverting and re-checking). */
/* K&R definition kept, MEASURED: func_80155498_ovl3 (ovl3_1.c:2122) calls this
 * with no argument and relies on the PositionState* already in $a0.
 * Prototyping the signature makes the build fail at ovl3_1.c:2122 with
 * "too few arguments to function 'func_801548DC_ovl3'". */
void func_801548DC_ovl3(arg0)
    struct PositionState *arg0;
{
    extern u8 D_8012BCA0[];
    extern s32 D_800E8920[];
    f32 *fr = D_800E0490[omCurrentObj->objId][1];
    s32 res;
    f32 dx;
    f32 dz;

    arg0->kirbyFootPos[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->kirbyFootPos[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->kirbyFootPos[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->scale[0] = fr[0];
    arg0->scale[1] = fr[1] + fr[0];
    arg0->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg0->faceAngle[0] = fr[3];
        arg0->faceAngle[1] = fr[4];
    } else {
        arg0->faceAngle[0] = fr[4];
        arg0->faceAngle[1] = fr[3];
    }
    arg0->faceAngle[2] = D_800E17D0[omCurrentObj->objId];
    if (D_800E8920[omCurrentObj->objId] == 0) {
        res = func_80109E44((f32 *) arg0);
    } else {
        res = func_8010B11C((f32 *) arg0);
    }
    func_80105238((f32 *) arg0, D_8012BCA0);
    D_800E8920[omCurrentObj->objId] = res;
    dx = arg0->kirbyFootPos[0] - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = arg0->kirbyFootPos[2] - gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(omCurrentObj->objId, dx, dz);
        gEntitiesNextPosXArray[omCurrentObj->objId] = arg0->kirbyFootPos[0];
        gEntitiesNextPosZArray[omCurrentObj->objId] = arg0->kirbyFootPos[2];
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = arg0->kirbyFootPos[1];
    {
        extern s32 D_800E8AE0[];
        f32 sp3C[3];
        s32 hits;
        s32 wi;
        u8 **arr;

        sp3C[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp3C[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + fr[0];
        sp3C[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        hits = func_8010DF9C(sp3C);
        D_800E8AE0[omCurrentObj->objId] = (u32) D_800E8AE0[omCurrentObj->objId] >> 1;
        arr = (u8 **) (D_8012BCA0 + 0x40);
        for (wi = 0; wi < hits; wi++) {
            u8 *w = arr[wi];
            if (w[4] == 1) {
                D_800E8AE0[omCurrentObj->objId] |= 4;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801548DC_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 17/226, whole-function callee-saved permutation. The ROM holds
 * &omCurrentObj in a caller-saved reg ($a3) that it recomputes (lui+addiu)
 * after each call rather than spilling it to a saved register; this draft's
 * repeated omCurrentObj->objId gets IDO to allocate a callee-saved $s0
 * instead (extra sw/lw pair, +8 frame). Matches the "whole-function
 * callee-saved permutation" floor in LEVERS.md -- queued for the permuter. */
/* K&R definition kept, MEASURED: func_80155424_ovl3 (ovl3_1.c:2113) calls this
 * with no argument and relies on the PositionState* already in $a0.
 * Prototyping the signature makes the build fail at ovl3_1.c:2113 with
 * "too few arguments to function 'func_80154CFC_ovl3'". */
void func_80154CFC_ovl3(arg0)
    struct PositionState *arg0;
{
    extern u8 D_8012BCA0[];
    extern s32 D_800E8920[];
    extern s32 D_800E8AE0[];
    extern f32 D_800E6A10[];
    extern f32 D_800E17D0[];
    f32 *fr = D_800E0490[omCurrentObj->objId][1];
    f32 sp3C[3];
    s32 hits;
    s32 wi;
    u8 **arr;

    arg0->kirbyFootPos[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->kirbyFootPos[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->kirbyFootPos[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->scale[0] = fr[0];
    arg0->scale[1] = fr[1] + fr[0];
    arg0->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg0->faceAngle[0] = fr[3];
        arg0->faceAngle[1] = fr[4];
    } else {
        arg0->faceAngle[0] = fr[4];
        arg0->faceAngle[1] = fr[3];
    }
    arg0->faceAngle[2] = D_800E17D0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_8010C274(arg0);
    func_80105238((f32 *) arg0, D_8012BCA0);
    if ((*(u32 *) D_8012BCA0 >> 0x13) != 0) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = arg0->kirbyFootPos[0];
        gEntitiesNextPosYArray[omCurrentObj->objId] = arg0->kirbyFootPos[1];
        gEntitiesNextPosZArray[omCurrentObj->objId] = arg0->kirbyFootPos[2];
        D_800E8920[omCurrentObj->objId] = 1;
    }
    sp3C[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp3C[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + fr[0];
    sp3C[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    hits = func_8010DF9C(sp3C);
    D_800E8AE0[omCurrentObj->objId] = (u32) D_800E8AE0[omCurrentObj->objId] >> 1;
    arr = (u8 **) (D_8012BCA0 + 0x40);
    for (wi = 0; wi < hits; wi++) {
        u8 *w = arr[wi];
        if (w[4] == 1) {
            D_800E8AE0[omCurrentObj->objId] |= 4;
        }
    }
}
#elif defined(PORT)
/* Contact sweep pass: runs func_8010C274's moving-contact cast and, on any
 * face contact (flags top bits), commits the swept position and grounds
 * the shot's contact flag. */
void func_80154CFC_ovl3(struct PositionState *st) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    s32 id = omCurrentObj->objId;
    f32 **rec = D_800E0490[id];
    f32 *fr = rec[1];

    portShotSeatState(st, fr);
    D_800E8920[id] = 0;
    func_8010C274(st);
    func_80105238((f32 *) st, D_8012BCA0);
    if ((cb->flags.w >> 0x13) != 0) {
        gEntitiesNextPosXArray[id] = st->kirbyFootPos[0];
        gEntitiesNextPosYArray[id] = st->kirbyFootPos[1];
        gEntitiesNextPosZArray[id] = st->kirbyFootPos[2];
        D_800E8920[id] = 1;
    }
    portShotWaterScan(fr[0]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80154CFC_ovl3.s")
#endif

#ifdef PORT
/* Contact-test-only pass: same sweep as func_80154CFC_ovl3, but the shot's
 * position is restored before the unpack, so a contact only raises
 * D_800E8920 without moving the shot. */
void func_80155088_ovl3(struct PositionState *st) {
    extern u8 D_8012BCA0[];
    struct PortColBlock3 *cb = (struct PortColBlock3 *) D_8012BCA0;
    s32 id = omCurrentObj->objId;
    f32 **rec = D_800E0490[id];
    f32 *fr = rec[1];

    portShotSeatState(st, fr);
    D_800E8920[id] = 0;
    func_8010C274(st);
    st->kirbyFootPos[0] = gEntitiesNextPosXArray[id];
    st->kirbyFootPos[1] = gEntitiesNextPosYArray[id];
    st->kirbyFootPos[2] = gEntitiesNextPosZArray[id];
    func_80105238((f32 *) st, D_8012BCA0);
    if ((cb->flags.w >> 0x13) != 0) {
        D_800E8920[id] = 1;
    }
    portShotWaterScan(fr[0]);
}
#elif defined(MIPS_TO_C)
/* FACTORY: 230/230, RE-MEASURED -- the prior "0/230" note was stale/wrong;
 * verify.py shows total mismatch from insn [0], not a near-match. Frame is
 * -0x48 (ROM) vs this draft producing -0x50, and critically the ROM NEVER
 * caches the `omCurrentObj` pointer or `objId` in a held register across
 * this function -- it re-does `lui/addiu %hi/%lo(omCurrentObj); lw; lw
 * 0($t); sll 2` at EVERY single field access (at least 8 separate re-derivations
 * visible in the listing), unlike this draft's single `s32 id =
 * omCurrentObj->objId` hoist. A rewrite needs every omCurrentObj->objId use
 * spelled out inline with no local caching the id or the pointer -- not
 * attempted here; leaving guarded, not a D<=8 target as labeled. */
/* K&R definition kept, MEASURED: func_80155664_ovl3 (ovl3_1.c:2208) calls this
 * with no argument and relies on the PositionState* already in $a0.
 * Prototyping the signature makes the build fail at ovl3_1.c:2208 with
 * "too few arguments to function 'func_80155088_ovl3'". */
void func_80155088_ovl3(arg0)
    struct PositionState *arg0;
{
    extern u8 D_8012BCA0[];
    extern s32 D_800E8920[];
    extern s32 D_800E8AE0[];
    f32 *fr = D_800E0490[omCurrentObj->objId][1];
    f32 sp3C[3];
    s32 hits;
    s32 wi;
    u8 **arr;

    arg0->kirbyFootPos[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->kirbyFootPos[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->kirbyFootPos[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->scale[0] = fr[0];
    arg0->scale[1] = fr[1] + fr[0];
    arg0->scale[2] = fr[2] + fr[0];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        arg0->faceAngle[0] = fr[3];
        arg0->faceAngle[1] = fr[4];
    } else {
        arg0->faceAngle[0] = fr[4];
        arg0->faceAngle[1] = fr[3];
    }
    arg0->faceAngle[2] = D_800E17D0[omCurrentObj->objId];
    D_800E8920[omCurrentObj->objId] = 0;
    func_8010C274(arg0);
    arg0->kirbyFootPos[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->kirbyFootPos[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->kirbyFootPos[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80105238((f32 *) arg0, D_8012BCA0);
    if ((*(u32 *) D_8012BCA0 >> 0x13) != 0) {
        D_800E8920[omCurrentObj->objId] = 1;
    }
    sp3C[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp3C[1] = gEntitiesNextPosYArray[omCurrentObj->objId] + fr[0];
    sp3C[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    hits = func_8010DF9C(sp3C);
    D_800E8AE0[omCurrentObj->objId] = (u32) D_800E8AE0[omCurrentObj->objId] >> 1;
    arr = (u8 **) (D_8012BCA0 + 0x40);
    for (wi = 0; wi < hits; wi++) {
        u8 *w = arr[wi];
        if (w[4] == 1) {
            D_800E8AE0[omCurrentObj->objId] |= 4;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155088_ovl3.s")
#endif

#ifdef PORT
/* PORT: on N64 these wrappers leave $a0 untouched, so the shot state
 * buffer their callers pass (plyshot's &D_80197F60_ovl3[...]) flows
 * straight into the collision pass; in C that hidden argument has to be
 * forwarded explicitly. */
s32 func_80155424_ovl3(struct PositionState *arg0) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80154CFC_ovl3(arg0);
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80155498_ovl3(struct PositionState *arg0) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_801548DC_ovl3(arg0);
    return D_800E8920[omCurrentObj->objId];
}
#else
/* The N64 arms of func_80155424_ovl3 / func_80155498_ovl3 / func_80155664_ovl3
 * take NO parameter: the shot's state buffer arrives in $a0 and is threaded
 * untouched into the K&R-declared collision passes above. Their callers in
 * plyshot.c therefore prototype them with one argument, and that mismatch is
 * deliberate -- see the note on func_80154CFC_ovl3 at the top of this file.
 * Do not "reconcile" either side in isolation. */
s32 func_80155424_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80154CFC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}

s32 func_80155498_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_801548DC_ovl3();
    return D_800E8920[omCurrentObj->objId];
}
#endif

#ifdef PORT
/* PORT: arg0 is the shot state buffer (a pointer the matched C narrows to
 * s32 -- an LP64 shear), forwarded into the contact sweep. */
s32 func_8015550C_ovl3(struct PositionState *arg0, s32 arg1) {
    f32 sp20[4];

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80154CFC_ovl3(arg0);
    return func_80155C68_ovl3(arg1, sp20);
}
#else
s32 func_8015550C_ovl3(s32 arg0, s32 arg1) {
    f32 sp20[4];

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80154CFC_ovl3(arg0);
    return func_80155C68_ovl3(arg1, sp20);
}
#endif

#ifdef PORT
/* PORT: arg0 here is really the shot state buffer, not a GObj (hidden-$a0
 * pass-through in the matched C). */
s32 func_801555B0_ovl3(GObj *arg0, s32 arg1) {
    s32 ret;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ret = func_80155C68_ovl3(arg1, &sp20);
    func_80154CFC_ovl3((struct PositionState *) arg0);
    return ret;
}

s32 func_80155664_ovl3(struct PositionState *arg0) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80155088_ovl3(arg0);
    return D_800E8920[omCurrentObj->objId];
}
#else
s32 func_801555B0_ovl3(GObj *arg0, s32 arg1) {
    s32 ret;
    Vector sp20;

    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    sp20.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp20.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp20.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    ret = func_80155C68_ovl3(arg1, &sp20);
    func_80154CFC_ovl3(arg0);
    return ret;
}

s32 func_80155664_ovl3(void) {
    if (D_800E0490[omCurrentObj->objId] == NULL) {
        D_800E8920[omCurrentObj->objId] = 0;
        return 0;
    }
    func_80155088_ovl3();
    return D_800E8920[omCurrentObj->objId];
}
#endif

#ifdef NON_MATCHING
/* FACTORY: 22/88, register-allocation-cluster floor -- re-confirmed
   2026-08-23, identical 22/88. Frame, stack layout, control flow and the
   FP block are all exact. Residue is one register-allocation cluster: the
   ROM puts the D_800E0490 element in $a1 and its ->[1] deref in $a0, which
   frees $t8 and leaves every later objId temp one slot lower (t8/t9/t0/t1
   vs t9/t0/t1/t2), plus a tail scheduling difference (the ROM hoists
   `or $v1, zero, zero` above the branch and reorders the $ra reload
   against the sp6C/D_800EA... check). Swept: p as a named local (in and
   out of the 4-scalar block), obj hoisted vs omCurrentObj inline, ternary
   vs if/else vs pre-initialised temp, all four tail shapes. Good permuter
   seed. */
s32 func_801556D8_ovl3(f32 arg0) {
    s32 sp6C;
    GObj *obj;
    f32 temp;
    s32 ret;
    f32 sp54[3];
    f32 sp48[3];
    f32 sp3C[3];
    s32 d0;
    s32 d1;
    s32 d2;

    obj = omCurrentObj;
    temp = (D_800E0490[obj->objId] != NULL) ? D_800E0490[obj->objId][1][0] : 0.0f;
    sp3C[2] = 0.0f;
    sp3C[0] = 0.0f;
    sp48[0] = gEntitiesNextPosXArray[obj->objId];
    sp54[0] = sp48[0];
    sp48[2] = gEntitiesNextPosZArray[obj->objId];
    sp54[2] = sp48[2];
    sp54[1] = gEntitiesNextPosYArray[obj->objId] + temp;
    sp3C[1] = 1.0f;
    sp48[1] = sp54[1] + arg0;
    sp6C = func_80103EA0(sp54, sp48, sp3C, 0, 0, 0, 0, 0);
    sp3C[1] = -1.0f;
    sp48[1] = sp54[1] - arg0;
    if (func_80103EA0(sp54, sp48, sp3C, 0, 0, 0, 0, 0) != 0) {
        ret = 1;
    } else {
        ret = 0;
    }
    if (sp6C != 0) {
        ret |= 2;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_801556D8_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 9/268, whole-function callee-saved permutation plus a frame
 * delta (-0x68 vs -0x58, 4-word over-allocation) through the trig probe.
 * Queued for the permuter. */
s32 func_8010423C(Vector *, Vector *, void *, void *, void *, void *, void *, void *);
s32 func_80103EA0(Vector *, Vector *, void *, void *, s32, s32, s32, s32);

s32 func_80155838_ovl3(Vector *arg0, f32 arg1, s32 arg2) {
    extern f32 D_800E17D0[];
    s32 mask = arg2 & 0xFF;
    s32 res = 0;
    Vector p2;
    f32 n[4];
    f32 c;

    if (mask & 4) {
        n[1] = 0.0f;
        p2.y = arg0->y;
        if (!(mask & 1)) {
            n[0] = sinf(D_800E17D0[omCurrentObj->objId]);
            c = cosf(D_800E17D0[omCurrentObj->objId]);
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * c);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res = 8;
            }
            n[0] = sinf(D_800E17D0[omCurrentObj->objId] + 3.1415927f);
            c = cosf(D_800E17D0[omCurrentObj->objId] + 3.1415927f);
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * c);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 4;
            }
        } else {
            if (arg1 > 0.0f) {
                n[0] = sinf(D_800E17D0[omCurrentObj->objId]);
                c = cosf(D_800E17D0[omCurrentObj->objId]);
            } else {
                n[0] = sinf(D_800E17D0[omCurrentObj->objId] + 1.5707964f);
                c = cosf(D_800E17D0[omCurrentObj->objId] + 1.5707964f);
            }
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * n[2]);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res = 4;
                if (arg1 > 0.0f) {
                    res = 8;
                }
            }
        }
    }
    if (mask & 2) {
        n[2] = 0.0f;
        n[0] = 0.0f;
        p2.x = arg0->x;
        p2.z = arg0->z;
        if (!(mask & 1)) {
            n[1] = 1.0f;
            p2.y = arg0->y + arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 2;
            }
            n[1] = -1.0f;
            p2.y = arg0->y - arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 1;
            }
        } else {
            if (arg1 > 0.0f) {
                n[1] = 1.0f;
            } else {
                n[1] = -1.0f;
            }
            p2.y = arg0->y + arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                if (arg1 > 0.0f) {
                    res |= 2;
                } else {
                    res |= 1;
                }
            }
        }
    }
    return res;
}
#elif defined(PORT)
/* PORT: directional clearance probe (via m2c). Casts line segments from
 * arg0 out to distance arg1; mask bit 4 = horizontal pair along the track
 * facing (D_800E17D0), bit 2 = vertical pair, bit 1 = single-sided (the
 * sign of arg1 picks the side; a non-positive horizontal distance probes
 * facing+90deg). Result bits: 8 forward/up-positive, 4 backward, 2 up, 1
 * down. func_8010423C/func_80103EA0 are ovl2_7's segment casts (their s32
 * result is the ROM's $v0 pass-through from func_80103B58, the
 * func_80104B70 precedent above). */
s32 func_8010423C(Vector *, Vector *, void *, void *, void *, void *, void *, void *);
s32 func_80103EA0(Vector *, Vector *, void *, void *, s32, s32, s32, s32);

s32 func_80155838_ovl3(Vector *arg0, f32 arg1, s32 arg2) {
    extern f32 D_800E17D0[];
    s32 mask = arg2 & 0xFF;
    s32 res = 0;
    Vector p2;
    f32 n[4];
    f32 c;

    if (mask & 4) {
        n[1] = 0.0f;
        p2.y = arg0->y;
        if (!(mask & 1)) {
            n[0] = sinf(D_800E17D0[omCurrentObj->objId]);
            c = cosf(D_800E17D0[omCurrentObj->objId]);
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * c);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res = 8;
            }
            n[0] = sinf(D_800E17D0[omCurrentObj->objId] + 3.1415927f);
            c = cosf(D_800E17D0[omCurrentObj->objId] + 3.1415927f);
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * c);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 4;
            }
        } else {
            if (arg1 > 0.0f) {
                n[0] = sinf(D_800E17D0[omCurrentObj->objId]);
                c = cosf(D_800E17D0[omCurrentObj->objId]);
            } else {
                n[0] = sinf(D_800E17D0[omCurrentObj->objId] + 1.5707964f);
                c = cosf(D_800E17D0[omCurrentObj->objId] + 1.5707964f);
            }
            n[2] = c;
            p2.x = arg0->x + (arg1 * n[0]);
            p2.z = arg0->z + (arg1 * n[2]);
            if (func_8010423C(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res = 4;
                if (arg1 > 0.0f) {
                    res = 8;
                }
            }
        }
    }
    if (mask & 2) {
        n[2] = 0.0f;
        n[0] = 0.0f;
        p2.x = arg0->x;
        p2.z = arg0->z;
        if (!(mask & 1)) {
            n[1] = 1.0f;
            p2.y = arg0->y + arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 2;
            }
            n[1] = -1.0f;
            p2.y = arg0->y - arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                res |= 1;
            }
        } else {
            if (arg1 > 0.0f) {
                n[1] = 1.0f;
            } else {
                n[1] = -1.0f;
            }
            p2.y = arg0->y + arg1;
            if (func_80103EA0(arg0, &p2, n, 0, 0, 0, 0, 0) != 0) {
                if (arg1 > 0.0f) {
                    res |= 2;
                } else {
                    res |= 1;
                }
            }
        }
    }
    return res;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155838_ovl3.s")
#endif

/* 47/58: the ROM hoists one `or $v0, $zero, $zero` above both early exits and
   keeps arg1 in $a1 until the last read; IDO instead relocates arg1 into $a3 at
   entry, materialises the `a1 = 0` for func_8011BF4C two slots early, and emits
   a per-exit `move v0,zero`. Swept: separate ifs vs `||` vs nested ifs vs `&&`,
   a `ret` local (init 0 and plain), a goto into a shared return block, the
   fused `(*(f32**)&dst[7] = p[0]) == NULL` vs a separate store, an extra local
   for p[0], declaration order and position of dst/p, dropping the (f32*)arg0
   cast, and a K&R prototype for func_8011BF4C. */
#ifdef NON_MATCHING
s32 func_80155C68_ovl3(s32 arg0, f32 *arg1) {
    f32 *dst = (f32 *) arg0;
    f32 **p = D_800E0490[omCurrentObj->objId];

    if ((p == NULL) || ((*(f32 **) &dst[7] = p[0]) == NULL)) {
        return 0;
    }
    dst[0] = arg1[0];
    dst[1] = arg1[1];
    dst[2] = arg1[2];
    dst[3] = gEntitiesPosXArray[omCurrentObj->objId];
    dst[4] = gEntitiesPosYArray[omCurrentObj->objId];
    dst[5] = gEntitiesPosZArray[omCurrentObj->objId];
    dst[6] = gEntitiesAngleYArray[omCurrentObj->objId];
    func_8011BF4C(dst, 0);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_1/func_80155C68_ovl3.s")
#endif
void func_80155D50_ovl3(f32 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0[0] = gEntitiesNextPosXArray[arg3];
    arg0[1] = gEntitiesNextPosYArray[arg3];
    arg0[2] = gEntitiesNextPosZArray[arg3];
    arg0[3] = gEntitiesPosXArray[arg3];
    arg0[4] = gEntitiesPosYArray[arg3];
    arg0[5] = gEntitiesPosZArray[arg3];
    arg0[6] = gEntitiesAngleYArray[arg3];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg2);
}

void func_80155DF0_ovl3(f32 *arg0, s32 arg1, f32 *arg2, s32 arg3, s32 arg4) {
    arg0[0] = arg0[3] = arg2[0];
    arg0[1] = arg0[4] = arg2[1];
    arg0[2] = arg0[5] = arg2[2];
    arg0[6] = gEntitiesAngleYArray[arg4];
    *(s32 *) &arg0[7] = arg1;
    func_8011BF4C(arg0, arg3);
}

s32 func_80155E58_ovl3(void) {
    u8 *temp;
    s32 idx;
    s32 ret;

    temp = func_8011BABC();
    temp[0x54] = 2;
    idx = D_800E0D50[omCurrentObj->objId];
    ret = func_801BBE50_ovl7(temp, D_800DE350[idx]->data.ptr, idx);
    D_800E83E0[ret] = 3;
    D_800E8220[ret] = 0;
    return 0;
}

s32 func_80155ED8_ovl3(void) {
    func_8011BABC()[0x54] = 2;
    play_sound(0x25A);
    return 1;
}

extern s32 D_8012E7FC;
extern u8 *func_8011BD30();
extern void func_800A4DB8(Vector *, void *);
extern void func_800A802C(s32, s32, s32, Vector *, Vector *);
/* Definition (src/ovl1/ovl1_2_2.c:321) is
 * `Ovl1Generator *func_800A7F74(s32, s32, s32, f32, f32, f32)`; Ovl1Generator
 * is private to that TU, so the tree declares it void here. */
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern void func_800BB468(s32, s32);

s32 func_80155F0C_ovl3(struct CollisionTriangle *tri) {
    u8 *temp;
    Vector sp38;
    Vector sp2C;

    if ((*(s32 *) ((u8 *) &D_8012E7FC + 8) == 2) || (tri->collisionParameter == 0)) {
        temp = func_8011BABC(tri);
        temp[0x54] = 2;
        play_sound(0xA);
        utilGetTransformSRT(&sp38, temp);
        func_800A4DB8(&sp2C, temp);
        func_800A802C(6, 3, tri->breakParticle * 2, &sp38, &sp2C);
        func_800BB468(0, 0);
        goto ret0;
    }
    utilGetTransformSRT(&sp38, func_8011BD30(tri));
    func_800A7F74(6, 3, tri->breakParticle * 2 + 1, D_800EA6E0[omCurrentObj->objId],
                  D_800EA8A0[omCurrentObj->objId], D_800EAA60[omCurrentObj->objId]);
    D_800E8220[omCurrentObj->objId] = 1;
    return 1;
ret0:
    return 0;
}


