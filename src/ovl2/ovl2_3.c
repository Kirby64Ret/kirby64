#include <ultra64.h>
#include <PR/rcp.h>
#include "common.h"
#include "types.h"
#include "GObj.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "main/math.h"
#include "ovl1/game.h"
#include "unk_structs/D_80129114.h"

extern s32 D_800D6E10;
extern u32 D_801D02AC[][8];
extern s32 D_80129118;

extern u32 D_800D7088;
extern u32 D_800D6F4C;
extern s32 D_800D6E40;
extern f32 *D_801242B4[];
extern s32 D_801293F8;
extern s32 D_801293FC;
extern f32 D_80129400;
extern f32 D_80129404;
extern s32 D_80129408;

struct Ovl2CamPos {
    Vector unk0;
    Vector unkC;
};

extern struct Ovl2CamPos D_800D7B20;
extern struct Ovl2CamPos D_800D7B38;
extern Vector D_800D7B2C;
extern f32 D_80129370[6];
extern f32 D_801292C8[6];
extern f32 D_801293DC[6];
extern f32 D_801293C0;
extern f32 D_801293D0;
s32 func_800FC03C(f32 *, f32 *, f32 *);

f32 utilVec3Dist(Vector *v1, Vector *v2);
f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3);
s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2);
void func_801DC98C_ovl17(void);

struct TrackCameraNode {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ s16 unkA;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ f32 unk2C;
    /* 0x30 */ f32 unk30;
    /* 0x34 */ f32 unk34;
    /* 0x38 */ f32 unk38;
    /* 0x3C */ f32 unk3C;
    /* 0x40 */ f32 unk40;
    /* 0x44 */ f32 unk44;
    /* 0x48 */ f32 unk48;
    /* 0x4C */ f32 unk4C;
    /* 0x50 */ f32 unk50;
    /* 0x54 */ f32 unk54;
    /* 0x58 */ f32 unk58;
    /* 0x5C */ f32 unk5C;
    /* 0x60 */ f32 unk60;
    /* 0x64 */ f32 unk64;
    /* 0x68 */ f32 unk68;
    /* 0x6C */ f32 unk6C;
};

struct TrackKirbyNode {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u8 unk4;
    /* 0x05 */ u8 unk5;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ u8 unk8;
    /* 0x09 */ u8 unk9;
    /* 0x0A */ u8 unkA;
    /* 0x0B */ u8 unkB;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
    /* 0x10 */ s16 unk10;
    /* 0x12 */ s16 unk12;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ u32 unk1C;
    /* 0x20 */ struct TrackCameraNode unk20;
};

struct TrackConnection {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 unk2;
    /* 0x03 */ u8 unk3;
};

struct TrackPathPoint {
    /* 0x00 */ f32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
};

struct TrackFooter {
    /* 0x00 */ u8 unk0;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ struct TrackPathPoint *unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 *unk10;
    /* 0x14 */ f32 (*unk14)[5];
};

struct TrackNodeHeader {
    /* 0x00 */ struct TrackKirbyNode *unk0;
    /* 0x04 */ struct TrackFooter *unk4;
    /* 0x08 */ struct TrackConnection *unk8;
    /* 0x0C */ s16 unkC;
    /* 0x0E */ s16 unkE;
};

struct TrackHit {
    /* 0x00 */ u8 unk0[0xE];
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u16 unk12;
};

s32 func_801046A0(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4, struct TrackHit **arg5);

/* Field names established from every consumer in this file: func_800FA608
 * places the eye, func_800FA7EC clamps it, func_800FA92C limits eye yaw/pitch
 * relative to the look-at point and applies fixed at-point overrides,
 * func_800FAC74/func_800FB164 apply the manual L/R orbit and final smoothing,
 * and func_800FA2D4/func_800FC164 (matched, ground truth) write
 * eyeX/Y/Z + drift -> cam->viewMtx.lookAt.eye and atX/Y/Z + drift ->
 * cam->viewMtx.lookAt.at. */
struct Ovl2CamState {
    /* 0x00 */ s16 mode;          /* func_800FA608: 0 = fixed yaw, 1 = track-tangent yaw */
    /* 0x02 */ s16 unk2;          /* from track node's unk1; no other reader found in this file */
    /* 0x04 */ f32 pitch;         /* degrees; func_800FA608/func_800FA92C: (pitch - 90) * pi/180 rotation */
    /* 0x08 */ f32 yaw;           /* degrees; func_800FA608 mode 0 direction / mode 1 extra rotation */
    /* 0x0C */ f32 eyeDistance;   /* func_800FA608: dir scaled by -eyeDistance from the focus point */
    /* 0x10 */ f32 fovy;          /* func_800FA2D4/func_800FC164 (matched): cam->perspMtx.persp.fovy */
    /* 0x14 */ f32 heightOffset;  /* Y offset added to the tracked focus point and to atYOverride */
    /* 0x18 */ u8 eyeXClampEnable;  /* func_800FA7EC: enables eyeXMin/eyeXMax clamp */
    /* 0x19 */ u8 eyeYClampEnable;  /* func_800FA7EC: enables eyeYMin/eyeYMax clamp */
    /* 0x1A */ u8 eyeZClampEnable;  /* func_800FA7EC: enables eyeZMin/eyeZMax clamp */
    /* 0x1B */ u8 unk1B;          /* never written by func_800FA438's per-tick reload; no reader found */
    /* 0x1C */ u8 pitchLimitEnable;  /* func_800FA92C: enables the pitchMin/pitchMax limit block */
    /* 0x1D */ u8 yawLimitEnable;    /* func_800FA92C: enables the yawMin/yawMax limit block */
    /* 0x1E */ u8 manualOrbitEnable; /* func_800FAC74/func_800FB164: gates the L/R (and shoulder) orbit input */
    /* 0x1F */ u8 unk1F;          /* func_800FAC74: nonzero resets the settle counter and forces the
                                    * D_801293C0-smoothed path every tick (skips the snap-once-settled
                                    * D_801293D8 path); exact meaning unconfirmed */
    /* 0x20 */ f32 eyeXMin;
    /* 0x24 */ f32 eyeXMax;
    /* 0x28 */ f32 eyeYMin;
    /* 0x2C */ f32 eyeYMax;
    /* 0x30 */ f32 eyeZMin;
    /* 0x34 */ f32 eyeZMax;
    /* 0x38 */ f32 pitchMin;      /* degrees */
    /* 0x3C */ f32 pitchMax;
    /* 0x40 */ f32 yawMin;        /* degrees */
    /* 0x44 */ f32 yawMax;
    /* 0x48 */ f32 atXOverride;   /* 9999.0f sentinel = no override, use the dynamic at point */
    /* 0x4C */ f32 atYOverride;   /* + heightOffset when applied */
    /* 0x50 */ f32 atZOverride;
    /* 0x54 */ f32 near;
    /* 0x58 */ f32 far;
    /* 0x5C */ f32 orbitYawLimit; /* func_800FAC74/func_800FB164: clamps the manual orbit angle magnitude */
};

/* Field names established the same way as Ovl2CamState above. focus is the
 * tracked entity's position (func_800FA5C0); rawEye is the pre-clamp eye
 * candidate func_800FA608 derives from focus; at/eye are the published pair
 * that func_800FA2D4/func_800FC164 (matched) feed to cam->viewMtx.lookAt --
 * see the struct comment above. */
struct Ovl2CamOut {
    /* 0x00 */ f32 focusX;
    /* 0x04 */ f32 focusY;
    /* 0x08 */ f32 focusZ;
    /* 0x0C */ f32 rawEyeX;
    /* 0x10 */ f32 rawEyeY;
    /* 0x14 */ f32 rawEyeZ;
    /* 0x18 */ f32 atX;
    /* 0x1C */ f32 atY;
    /* 0x20 */ f32 atZ;
    /* 0x24 */ f32 eyeX;
    /* 0x28 */ f32 eyeY;
    /* 0x2C */ f32 eyeZ;
    /* 0x30 */ u32 eyeXClampFlags; /* func_800FA7EC: bit0 = min-clamped, bit1 = max-clamped */
    /* 0x34 */ u32 eyeYClampFlags;
    /* 0x38 */ u32 eyeZClampFlags;
};

extern struct Ovl2CamState D_80129150;
extern struct Ovl2CamState D_801291B0;
extern struct Ovl2CamState D_80129210;
extern struct Ovl2CamOut D_80129270;
extern struct Ovl2CamOut D_801292B0;
extern struct Ovl2CamOut D_801292F0;

void func_800FBBB8(void);
void func_800FA2D4(struct Ovl2CamState *, struct Ovl2CamOut *);
s32 func_800FC164(struct Ovl2CamState *);
void func_800FA438(s32, struct Ovl2CamState *);
void func_800FA608(s32, struct Ovl2CamState *, struct Ovl2CamOut *);
void func_800FA7EC(s32, struct Ovl2CamState *, struct Ovl2CamOut *);
void func_800FA92C(s32, struct Ovl2CamState *, struct Ovl2CamOut *);
void func_800FAC74(struct Ovl2CamOut *, struct Ovl2CamState *, struct Ovl2CamOut *);
extern s32 D_80129138;

// another self-verification check
s32 func_800F88A0(void) {
    s32 ret;

    if (IO_READ(0x200) == 0xAC290000) {
        ret = 1;
    } else {
        ret = 0;
    }
    return ret;
}

void func_800F88C8(GObj *g, s32 arg1, f32 arg2) {
    s32 objId = g->objId;
    struct Unk80129114_4_4 *sub4_4;
    struct Unk80129114_4 *sub4;
    s32 var_v0;

    D_800E6150[objId] = arg1;
    D_800E5F90[objId] = arg1;
#ifdef PORT
    /* D_80129114->unk4 is a NATIVE record array on this build (built by
     * func_800F78E4's PORT arm in ovl2_2.c); the 0x10 byte stride is the
     * N64 record size, so index instead. */
    sub4 = &D_80129114->unk4[arg1];
#else
    sub4 = (struct Unk80129114_4 *) ((arg1 * 0x10) + (s32) D_80129114->unk4);
#endif
    sub4_4 = sub4->unk4;
    if (arg2 <= 0.0f) {
        arg2 = 0.001f;
    }
    if (arg2 >= 1.0f) {
        arg2 = 0.999f;
    }
    var_v0 = 0;
    if (sub4_4->unk0 != 0) {
        var_v0 = 1;
    }
    if (arg2 > 0.5f) {
        var_v0 += sub4_4->unk2 - 1;
    }
    gEntitiesNextPosYArray[objId] = sub4_4->unk8[var_v0].unk4 + sub4->unk0->unkC;
    D_800E6D90[objId] = arg2;
    D_800E6BD0[objId] = arg2;
}

f32 vec3_abs_angle_diff(Vector *v1, Vector *v2) {
    Vector tmp;

    vec3_normalized_cross_product(v1, v2, &tmp);
    if (tmp.y > 0.0f) {
        return lbvector_Angle(v2, v1);
    }
    return -lbvector_Angle(v2, v1);
}

void func_800F8A24(s32 arg0) {
    D_800E6310[arg0] = 0;
    if (D_80129114->unk4[D_800E5F90[arg0]].unkE != 0) {
        if (D_800E6BD0[arg0] > 1.0f) {
            D_800E6BD0[arg0] -= 1.0f;
        }
        if (D_800E6BD0[arg0] < 0.0f) {
            D_800E6BD0[arg0] += 1.0f;
        }
    } else {
        if (D_800E6BD0[arg0] > 1.0f) {
            D_800E6BD0[arg0] = 1.0f;
            D_800E6310[arg0] += 1;
        }
        if (D_800E6BD0[arg0] < 0.0f) {
            D_800E6BD0[arg0] = 0.0f;
            D_800E6310[arg0] += 1;
        }
    }
}

#ifdef PORT
/* PORT: same body, but through the NATIVE node records func_800F78E4's PORT
 * arm builds (ovl2_2.c). TrackNodeHeader's LP64 layout does not match those
 * records (its unk8 pointer widens to 8 bytes and pushes unkC/unkE), so the
 * node accesses go through struct Unk80129114_4: the connection count is the
 * big-endian s16 the record keeps as its two raw bytes (unkC<<8|unkD), the
 * connection array pointer lives in the u32 unk8 slot (arena < 4 GiB), and
 * the footer is the native descriptor whose LP64 TrackFooter view is
 * asserted layout-identical in ovl2_2.c. */
s32 func_800F8B1C(s32 arg0) {
    s32 *nodePtr;
    s32 cur;
    struct Unk80129114_4 *node;
    s32 n;
    f32 *progressPtr;
    f32 progress;
    s32 dir;
    s32 idx;
    struct TrackConnection *conn;
    f32 len;
    f32 dist;
    f32 nextLen;
    f32 newProgress;

    nodePtr = &D_800E5F90[arg0];
    cur = *nodePtr;
    node = &D_80129114->unk4[cur];
    n = (s16)((node->unkC << 8) | node->unkD);
    if (n == 0) {
        return 0;
    }
    dir = 0;
    progressPtr = &D_800E6BD0[arg0];
    progress = *progressPtr;
    idx = -1;
    if (progress > 1.0f) {
        dir = 1;
    }
    if (progress < 0.0f) {
        dir = -1;
    }
    if (dir == 0) {
        return 0;
    }
    conn = (struct TrackConnection *)(uintptr_t)node->unk8;
    if (dir > 0) {
        if ((n != 0) && (conn[n - 1].unk0 != 0)) {
            idx = n - 1;
        }
    } else if (conn->unk0 == 0) {
        idx = 0;
    }
    if (idx == -1) {
        return 0;
    }
    len = ((struct TrackFooter *)node->unk4)->unkC;
    if (dir > 0) {
        dist = (progress * len) - len;
    } else {
        dist = progress * len;
    }
    n = conn[idx].unk2;
    node = &D_80129114->unk4[n];
    nextLen = ((struct TrackFooter *)node->unk4)->unkC;
    if (dir > 0) {
        newProgress = dist / nextLen;
    } else {
        newProgress = (nextLen + dist) / nextLen;
    }
    D_800E6150[arg0] = cur;
    *nodePtr = n;
    D_800E6D90[arg0] = newProgress;
    *progressPtr = newProgress;
    return 1;
}
#else
s32 func_800F8B1C(s32 arg0) {
    s32 *nodePtr;
    s32 cur;
    struct TrackNodeHeader *node;
    s32 n;
    f32 *progressPtr;
    f32 progress;
    s32 dir;
    s32 idx;
    struct TrackConnection *conn;
    f32 len;
    f32 dist;
    f32 nextLen;
    f32 newProgress;

    nodePtr = &D_800E5F90[arg0];
    cur = *nodePtr;
    node = (struct TrackNodeHeader *) ((cur * 0x10) + (s32) D_80129114->unk4);
    n = node->unkC;
    if (n == 0) {
        return 0;
    }
    dir = 0;
    progressPtr = &D_800E6BD0[arg0];
    progress = *progressPtr;
    idx = -1;
    if (progress > 1.0f) {
        dir = 1;
    }
    if (progress < 0.0f) {
        dir = -1;
    }
    if (dir == 0) {
        return 0;
    }
    conn = node->unk8;
    if (dir > 0) {
        if ((n != 0) && (conn[n - 1].unk0 != 0)) {
            idx = n - 1;
        }
    } else if (conn->unk0 == 0) {
        idx = 0;
    }
    if (idx == -1) {
        return 0;
    }
    len = node->unk4->unkC;
    if (dir > 0) {
        dist = (progress * len) - len;
    } else {
        dist = progress * len;
    }
    n = conn[idx].unk2;
    node = &((struct TrackNodeHeader *) D_80129114->unk4)[n];
    nextLen = node->unk4->unkC;
    if (dir > 0) {
        newProgress = dist / nextLen;
    } else {
        newProgress = (nextLen + dist) / nextLen;
    }
    D_800E6150[arg0] = cur;
    *nodePtr = n;
    D_800E6D90[arg0] = newProgress;
    *progressPtr = newProgress;
    return 1;
}
#endif /* PORT */

#ifdef NON_MATCHING
// close but not matching: stack layout and register allocation differ
void func_800F8C70(s32 *arg0) {
    Vector spA;
    Vector spB;
    struct TrackHit *hit;
    s32 *nodePtr;
    struct TrackFooter *footer;
    s32 objId;
    u16 newNode;
    u16 cell;
    s32 idx;
    f32 dx;
    f32 dz;
    f32 dist;
    f32 delta;

    objId = *arg0;
    spA.y = spB.y = (gEntitiesPosYArray[objId] + gEntitiesNextPosYArray[objId] + 20.0f) / 2;
    spA.x = gEntitiesPosXArray[objId];
    spA.z = gEntitiesPosZArray[objId];
    spB.x = gEntitiesNextPosXArray[objId];
    spB.z = gEntitiesNextPosZArray[objId];
    if (func_801046A0(&spA, &spB, 0, 0, 0, &hit) == 0) {
        return;
    }
    nodePtr = &D_800E5F90[objId];
    newNode = hit->unkE;
    if (newNode == *nodePtr) {
        return;
    }
#ifdef PORT
    /* native records: index with the real stride (see func_800F8B1C) */
    footer = (struct TrackFooter *) D_80129114->unk4[newNode].unk4;
#else
    footer = ((struct TrackNodeHeader *) D_80129114->unk4)[newNode].unk4;
#endif
    cell = hit->unk12;
    idx = cell;
    if (footer->unk0 != 0) {
        idx = cell + 1;
    }
    dx = spB.x - footer->unk8[idx].unk0;
    dz = spB.z - footer->unk8[idx].unk8;
    dist = sqrtf((dx * dx) + (dz * dz));
    *nodePtr = newNode;
    D_800E6BD0[objId] = footer->unk10[cell];
    if (D_800E6A10[objId] >= 0.0f) {
        delta = (dist / footer->unkC) * 0.1f;
    } else {
        delta = (dist / footer->unkC) * -0.1f;
    }
    D_800E6BD0[objId] += delta;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F8C70.s")
#endif
#ifdef MIPS_TO_C
/* FACTORY: 73/109, regalloc (temp rotation v0<->a3, FP load-copy ownership +
 * add.s operand orientation, spill-slot/locals base offsets) */
void func_800F8E6C(GObj *arg0) {
    s32 objId;
    s32 nodeOfs;
    s32 *nodeP;
    f32 *progressP;
    f32 *angleP;
    struct TrackFooter *footer;
    f32 old;
    f32 cur;
    f32 ang;
    Vector pos;
    Vector tang;
    Vector ref;
    void func_8001E344(Vector *, struct TrackFooter *, f32);

    objId = arg0->objId;
    nodeP = &D_800E5F90[objId];
    if (*nodeP != -1) {
        nodeOfs = *nodeP * 0x10;
        footer = ((struct TrackNodeHeader *) ((s32) D_80129114->unk4 + nodeOfs))->unk4;
        progressP = &D_800E6BD0[objId];
        cur = *progressP;
        old = cur;
        *progressP = ((D_800E64D0[objId] * 0.1f) / footer->unkC) + cur;
        cur = *progressP;
        if (old != cur) {
            D_800E6D90[objId] = old;
            func_800F8B1C(objId);
            func_800F8A24(objId);
            nodeOfs = *nodeP * 0x10;
            cur = *progressP;
        } else {
            D_800E6D90[objId] = cur;
        }
        footer = ((struct TrackNodeHeader *) ((s32) D_80129114->unk4 + nodeOfs))->unk4;
        mtxGetInterpolatedPosition(&pos, footer, cur);
        gEntitiesNextPosXArray[objId] = pos.x;
        gEntitiesNextPosZArray[objId] = pos.z;
        ref.x = 0.0f;
        ref.y = 0.0f;
        ref.z = D_800E6A10[objId];
        func_8001E344(&tang, footer, *progressP);
        tang.y = 0.0f;
        ang = vec3_abs_angle_diff(&ref, &tang);
        angleP = &D_800E17D0[objId];
        *angleP = ang;
        if (ang < 0.0f) {
            *angleP += 6.2831855f;
        }
    }
}
#elif defined(PORT)
/* PORT: advance an entity along its track node, from asm/nonmatchings/ovl2/
 * ovl2_3/func_800F8E6C.s (the m2c sketch above garbles the reload after the
 * node hop and the tangent/heading tail). Node records are the NATIVE array
 * func_800F78E4's PORT arm builds (see func_800F8B1C above), so the 0x10
 * stride becomes an index and the footer pointer is the native TrackFooter.
 * This is the per-frame seat: progress += (speed * 0.1) / node length, hop
 * across the node boundary if it wrapped, then world X/Z from the footer
 * interpolation and the heading angle from the track tangent. */
void func_8001E344(Vector *, void *, f32);

void func_800F8E6C(GObj *arg0) {
    s32 objId = arg0->objId;
    s32 node = D_800E5F90[objId];
    struct TrackFooter *footer;
    Vector pos;
    Vector ref;
    Vector tang;
    f32 old;
    f32 cur;
    f32 ang;

    if (node == -1) {
        return;
    }
    footer = (struct TrackFooter *) D_80129114->unk4[node].unk4;
    old = D_800E6BD0[objId];
    D_800E6BD0[objId] = old + ((D_800E64D0[objId] * 0.1f) / footer->unkC);
    cur = D_800E6BD0[objId];
    if (old != cur) {
        D_800E6D90[objId] = old;
        func_800F8B1C(objId);
        func_800F8A24(objId);
        node = D_800E5F90[objId];
        cur = D_800E6BD0[objId];
    } else {
        D_800E6D90[objId] = cur;
    }
    footer = (struct TrackFooter *) D_80129114->unk4[node].unk4;
    mtxGetInterpolatedPosition(&pos, footer, cur);
    gEntitiesNextPosXArray[objId] = pos.x;
    gEntitiesNextPosZArray[objId] = pos.z;
    ref.x = 0.0f;
    ref.y = 0.0f;
    ref.z = D_800E6A10[objId];
    func_8001E344(&tang, footer, D_800E6BD0[objId]);
    tang.y = 0.0f;
    ang = vec3_abs_angle_diff(&ref, &tang);
    D_800E17D0[objId] = ang;
    if (ang < 0.0f) {
        D_800E17D0[objId] += 6.2831855f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F8E6C.s")
#endif

s32 func_800F9020(Vector *v, s32 arg1, f32 param) {
    if ((arg1 >= D_80129118) || (arg1 < 0) || (param < 0.0f) || (param > 1.0f)) {
        v->x = v->y = v->z = 0.0f;
        return 1;
    } else {
        mtxGetInterpolatedPosition(v, D_80129114->unk4[arg1].unk4, param);
        return 0;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 20/202 positional; residue is regalloc naming cascade (idx vars t1/t2 vs ROM a2/a3 + 2-3 live-range-split moves) and temp-area layout (frame 0x78 vs 0x68, buf 0x28 vs 0x34); control flow, shifts-not-multu *0xC, loop bodies and float conversions all align */
void func_800F90C0(s32 arg0, u8 *arg1) {
    struct TrackKirbyNode *node;
    u8 *pa;
    u8 *pb;
    u8 *ca;
    u8 *cb;
    s8 *sa;
    s8 *sb;
    u8 *dst;
    u8 idxA;
    u8 idxB;
    u32 a;
    s32 d;
    s32 a2;
    s32 b2;
    f32 fa;
    f32 t;
    f32 p;
    s16 y;
    u8 buf[12];
    extern u8 D_800D478C[];
    void func_800A5404(u8 *, u8 *);

    node = (struct TrackKirbyNode *) D_80129114->unk4[D_800E5F90[arg0]].unk0;
    if (node->unkE & 0x10) {
        y = gEntitiesNextPosYArray[arg0];
        idxA = node->unk9;
        idxB = node->unkA;
        if (y >= node->unk10) {
            func_800A5404(arg1, (u8 *) ((idxA * 4 - idxA) * 4 + (s32) D_800D478C));
            return;
        }
        if (node->unk12 >= y) {
            func_800A5404(arg1, (u8 *) ((idxB * 4 - idxB) * 4 + (s32) D_800D478C));
            return;
        }
        t = (f32) (node->unk10 - y) / (f32) (node->unk10 - node->unk12);
    } else {
        p = D_800E6BD0[arg0];
        if (p <= 0.5f) {
            idxA = node->unk9;
            idxB = node->unkA;
            t = p + p;
        } else {
            idxA = node->unkA;
            idxB = node->unkB;
            t = (p - 0.5f) * 2.0f;
        }
    }
    pa = (u8 *) ((idxA * 4 - idxA) * 4 + (s32) D_800D478C);
    pb = (u8 *) ((idxB * 4 - idxB) * 4 + (s32) D_800D478C);
    ca = pa;
    cb = pb;
    dst = buf;
    do {
        a = *ca;
        fa = a;
        d = *cb - a;
        cb++;
        ca++;
        dst++;
        dst[-1] = (u32) ((d * t) + fa);
    } while (dst < &buf[6]);
    sa = (s8 *) (pa + 6);
    sb = (s8 *) (pb + 6);
    dst = &buf[6];
    do {
        a2 = *sa + 100;
        b2 = *sb + 100;
        sa++;
        sb++;
        dst++;
        dst[-1] = (s32) (((f32) a2 + ((f32) (b2 - a2) * t)) - 100.0f);
    } while (dst != &buf[9]);
    buf[9] = 0;
    buf[10] = 0;
    buf[11] = 0;
    func_800A5404(arg1, buf);
}
#elif defined(PORT)
/* PORT: blend two 12-byte D_800D478C color records and hand the result to
 * func_800A5404, from asm/nonmatchings/ovl2/ovl2_3/func_800F90C0.s (the m2c
 * sketch above garbles the byte loops and the call args). Record selection:
 * a kirby node flagged 0x10 blends by the entity's next Y between the
 * node's unk10/unk12 heights, clamping to record unk9 above and unkA below;
 * otherwise the track parameter D_800E6BD0 picks unk9->unkA on the first
 * half and unkA->unkB on the second. D_800D478C is emitted as native u32
 * words on this build, so the N64 byte reads become word shifts ((w >> 24)
 * is the N64 byte 0) -- same rule as func_800F6830's PORT arm -- and the
 * blended record is built in N64 byte order because func_800A5404 reads
 * r,g,b BYTES. Bytes 0-5 blend unsigned, 6-8 blend as signed offsets biased
 * by +100 (ROM truncates each the same way: first loop through the u32
 * convert, second through trunc.w.s), bytes 9-11 are zeroed. */
static void pc_read_478c(u8 *dst, u32 idx) {
    extern u32 D_800D478C[];
    s32 j;

    for (j = 0; j < 12; j++) {
        dst[j] = (u8) (D_800D478C[idx * 3 + (j / 4)] >> (24 - 8 * (j % 4)));
    }
}

void func_800F90C0(s32 arg0, u8 *arg1) {
    void func_800A5404(u8 *, u8 *);
    struct TrackKirbyNode *node =
        (struct TrackKirbyNode *) D_80129114->unk4[D_800E5F90[arg0]].unk0;
    u8 recA[12];
    u8 recB[12];
    u8 out[12];
    u32 idxA, idxB;
    f32 t;
    s32 j;

    if (node->unkE & 0x10) {
        s16 y = (s16) gEntitiesNextPosYArray[arg0];

        idxA = node->unk9;
        idxB = node->unkA;
        if (y >= node->unk10) {
            pc_read_478c(recA, idxA);
            func_800A5404(arg1, recA);
            return;
        }
        if (node->unk12 >= y) {
            pc_read_478c(recA, idxB);
            func_800A5404(arg1, recA);
            return;
        }
        t = (f32) (node->unk10 - y) / (f32) (node->unk10 - node->unk12);
    } else {
        f32 par = D_800E6BD0[arg0];

        if (par <= 0.5f) {
            idxA = node->unk9;
            idxB = node->unkA;
            t = 2.0f * par;
        } else {
            idxA = node->unkA;
            idxB = node->unkB;
            t = (par - 0.5f) * 2.0f;
        }
    }
    pc_read_478c(recA, idxA);
    pc_read_478c(recB, idxB);
    for (j = 0; j < 6; j++) {
        out[j] = (u8) (u32) (((f32) (recB[j] - recA[j]) * t) + (f32) recA[j]);
    }
    for (j = 6; j < 9; j++) {
        s32 a = (s8) recA[j] + 100;
        s32 b = (s8) recB[j] + 100;

        out[j] = (u8) (s32) (((f32) a + ((f32) (b - a) * t)) - 100.0f);
    }
    out[9] = out[10] = out[11] = 0;
    func_800A5404(arg1, out);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F90C0.s")
#endif

s32 func_800F93EC(s32 arg0) {
    struct TrackKirbyNode *node = (struct TrackKirbyNode *) D_80129114->unk4[D_800E5F90[arg0]].unk0;

    if (node->unkE & 1) {
        return 1;
    }
    return 0;
}

s32 func_800F9438(s32 arg0) {
    struct TrackKirbyNode *node;
    s32 shade;
    s32 max;

    if (D_800D6F4C != 0) {
        return 0;
    }
    if (D_800BE4F8 != 1) {
        return 0;
    }
#ifdef PORT
    /* native records: index with the real stride (see func_800F8B1C) */
    node = (struct TrackKirbyNode *) D_80129114->unk4[arg0].unk0;
#else
    node = ((struct TrackNodeHeader *) D_80129114->unk4)[arg0].unk0;
#endif
    if (!(node->unkE & 1)) {
        return 0;
    }
    max = 0x1F;
    if ((max == node->unk7) && (D_800D6E40 == 0)) {
        return 0;
    }
    D_800BE52C = node->unk4;
    D_800BE530 = node->unk5;
    D_800BE534 = node->unk6;
    shade = node->unk7;
    if (max == shade) {
        D_800BE538 = max - shade;
    } else {
        D_800BE538 = shade;
    }
    D_800BE4FC = 2;
    return 1;
}

#ifdef MIPS_TO_C
/* FACTORY: 13/202 positional; logic fully derived and believed correct (three SEPARATE 'return 9999.0f' statements confirmed by the three distinct rodata floats D_801287B8/BC/C0; N64 record access is plain recs[i].unk4->unkC since struct Unk80129114_4 is exactly 0x10; D_8012912C/D_80129130 are POINTERS, lw not lui/addiu). Residue is one allocator decision that cascades everywhere: the ROM is a frameless leaf that moves the float params straight into the scratch arg registers (mtc1 a1,f14 / mtc1 a3,f12), while IDO here puts them in callee-saved f20/f22, which forces a 0x18 frame, turns all three early 'jr ra' returns into branches to a shared epilogue, and rotates every FP temp. Tried: if/else abs vs ternary abs, fewer named locals */
f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3) {
    struct Unk80129114_4 *recs;
    f32 len0;
    f32 len2;
    f32 fwd;
    f32 back;
    s32 base;
    u8 route;
    extern u8 *D_8012912C;
    extern f32 *D_80129130;

    if (arg0 < 0) {
        return 9999.0f;
    }
    if (arg2 < 0) {
        return 9999.0f;
    }
    recs = D_80129114->unk4;
    len0 = recs[arg0].unk4->unkC;
    if (arg0 == arg2) {
        if (recs[arg0].unkE != 0) {
            fwd = arg3 - arg1;
            if (arg3 <= arg1) {
                back = (1.0f - arg1) + arg3;
            } else {
                back = ((1.0f - arg3) + arg1) * -1.0f;
            }
            if (((fwd < 0.0f) ? -fwd : fwd) < ((back < 0.0f) ? -back : back)) {
                return fwd * 10.0f * len0;
            }
            return back * 10.0f * len0;
        }
        return (arg3 - arg1) * len0 * 10.0f;
    }
    base = (arg0 * D_80129118) + arg2;
    route = D_8012912C[base];
    if (route == 0) {
        return 9999.0f;
    }
    len2 = recs[arg2].unk4->unkC;
    if (*D_80129130 == 0.0f) {
        fwd = (D_80129130[route & 0x7F] +
               ((arg1 * len0) + ((1.0f - arg3) * len2))) * -10.0f;
        back = (D_80129130[D_8012912C[base + (D_80129118 * D_80129118)] & 0x7F] +
                (((1.0f - arg1) * len0) + (arg3 * len2))) * 10.0f;
        if (((fwd < 0.0f) ? -fwd : fwd) < ((back < 0.0f) ? -back : back)) {
            return fwd;
        }
        return back;
    }
    if (route & 0x80) {
        return (D_80129130[route & 0x7F] +
                ((arg1 * len0) + ((1.0f - arg3) * len2))) * -10.0f;
    }
    return (D_80129130[route & 0x7F] +
            (((1.0f - arg1) * len0) + (arg3 * len2))) * 10.0f;
}
#elif defined(PORT)
/* PORT: signed track distance between two (node, progress) seats, from the
 * m2c sketch above with the accesses respelled for this build: node records
 * are the NATIVE array (index, not the 0x10 byte stride), the routing matrix
 * D_8012912C is raw bytes in memory order and the per-route length table
 * D_80129130 is native f32s (both published by func_800F78E4's PORT arm).
 * The camera-distance logic itself is byte-for-byte the sketch. */
extern u8 *D_8012912C;
extern f32 *D_80129130;

f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3) {
    struct Unk80129114_4 *recs;
    f32 len0;
    f32 len2;
    u8 route;
    f32 fwd;
    f32 back;
    f32 afwd;
    f32 aback;

    if (arg0 < 0) {
        return 9999.0f;
    }
    if (arg2 < 0) {
        return 9999.0f;
    }
    recs = D_80129114->unk4;
    len0 = ((struct TrackFooter *) recs[arg0].unk4)->unkC;
    if (arg0 == arg2) {
        if (recs[arg0].unkE != 0) {
            fwd = arg3 - arg1;
            if (arg3 <= arg1) {
                back = (1.0f - arg1) + arg3;
            } else {
                back = ((1.0f - arg3) + arg1) * -1.0f;
            }
            afwd = (fwd < 0.0f) ? -fwd : fwd;
            aback = (back < 0.0f) ? -back : back;
            if (afwd < aback) {
                return fwd * 10.0f * len0;
            }
            return back * 10.0f * len0;
        }
        return (arg3 - arg1) * len0 * 10.0f;
    }
    route = D_8012912C[(arg0 * D_80129118) + arg2];
    if (route == 0) {
        return 9999.0f;
    }
    len2 = ((struct TrackFooter *) recs[arg2].unk4)->unkC;
    if (*D_80129130 == 0.0f) {
        u8 route2 = D_8012912C[(arg0 * D_80129118) + arg2 +
                               (D_80129118 * D_80129118)];
        fwd = (D_80129130[route & 0x7F] +
               ((arg1 * len0) + ((1.0f - arg3) * len2))) * -10.0f;
        back = (D_80129130[route2 & 0x7F] +
                (((1.0f - arg1) * len0) + (arg3 * len2))) * 10.0f;
        afwd = (fwd < 0.0f) ? -fwd : fwd;
        aback = (back < 0.0f) ? -back : back;
        if (afwd < aback) {
            return fwd;
        }
        return back;
    }
    if (route & 0x80) {
        return (D_80129130[route & 0x7F] +
                ((arg1 * len0) + ((1.0f - arg3) * len2))) * -10.0f;
    }
    return (D_80129130[route & 0x7F] +
            (((1.0f - arg1) * len0) + (arg3 * len2))) * 10.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F951C.s")
#endif

f32 func_800F9828(s32 arg0, s32 arg1) {
    return func_800F951C(D_800E5F90[arg0], D_800E6BD0[arg0], D_800E5F90[arg1], D_800E6BD0[arg1]);
}

struct TrackPosition {
    s32 unk0;
    f32 unk4;
};

s32 func_800F9888(struct TrackPosition *arg0, f32 arg1) {
    s32 pad[1];
    s32 sp20;
    f32 sp1C;
    s32 ret;

    sp20 = arg0->unk0;
    sp1C = arg0->unk4;
    ret = func_800F9974(&sp20, &sp1C, arg1);
    if (ret == 0) {
        arg0->unk0 = sp20;
        arg0->unk4 = sp1C;
    }
    return ret;
}

s32 func_800F98EC(s32 arg0, f32 arg1) {
    s32 ret;
    s32 sp28;
    f32 sp24;

    sp28 = D_800E5F90[arg0];
    sp24 = D_800E6BD0[arg0];
    ret = func_800F9974(&sp28, &sp24, arg1);
    if (ret == 0) {
        D_800E5F90[arg0] = sp28;
        D_800E6BD0[arg0] = sp24;
    }
    return ret;
}


#ifdef MIPS_TO_C
/* FACTORY: 24/192 positional; control flow, both hop loops and every field access decoded from the asm. Key N64 facts recovered (the PORT arm reads them differently): the link COUNT at +0xC is a single s16 (lh), not the BE pair of u8s the PORT arm rebuilds, so the N64 view of the record is struct TrackNodeHeader, not struct Unk80129114_4; the forward-hop loop really does 'i++' while looping on 'i >= 0' (confirmed addiu t1,t1,1 at 800F9BB0 against bgez at 800F9BBC) -- a latent ROM infinite loop the PORT arm 'fixed' to i--; and the forward cursor is &conn[cnt]-1 (sll cnt,2 then -4 disp), not &conn[cnt-1]. Residue: arg2 lands in f12 instead of the ROM's f14, which reorders the prologue (the 0.1f multiply schedules after the node addressing instead of before) and rotates FP temps for the rest of the function. Same allocator floor as func_800F951C in this file */
s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2) {
    struct TrackNodeHeader *recs;
    struct TrackNodeHeader *tp;
    struct TrackConnection *conn;
    s32 node;
    s32 cnt;
    s32 i;
    s32 last;
    u8 next;
    f32 t;
    f32 len;
    f32 want;
    f32 scaled;
    f32 rem;
    f32 frac;
    extern s32 D_80129118;
    extern u8 *D_8012912C;

    node = *arg0;
    if (node < 0) {
        return 0x270F;
    }
    t = *arg1;
    if ((t < 0.0f) || (t > 1.0f)) {
        return 0x270F;
    }
    recs = (struct TrackNodeHeader *) D_80129114->unk4;
    scaled = arg2 * 0.1f;
    tp = &recs[node];
    len = tp->unk4->unkC;
    want = t + (scaled / len);
    if (recs[node].unkE == 0) {
        goto notLoop;
    }
    {
        *arg1 = want;
        if (want < 0.0f) {
            *arg1 = 1.0f + want;
        }
        if (want > 1.0f) {
            *arg1 = want - 1.0f;
        }
        return 0;
    }
notLoop:
    if ((want >= 0.0f) && (want <= 1.0f)) {
        *arg1 = want;
        return 0;
    }
    if (want < 0.0f) {
        rem = (arg2 * -0.1f) - (t * len);
        for (;;) {
            cnt = tp->unkC;
            i = 0;
            if (cnt == 0) {
                return 1;
            }
            conn = tp->unk8;
            while (i < cnt) {
                if ((conn->unk0 == 0) && !(conn->unk1 & 0xF0)) {
                    break;
                }
                i++;
                if (conn->unk0 != 0) {
                    return 1;
                }
                conn++;
            }
            if (i == cnt) {
                return 1;
            }
            next = conn->unk2;
            if (rem <= recs[next].unk4->unkC) {
                frac = (recs[next].unk4->unkC - rem) / recs[next].unk4->unkC;
                break;
            }
            rem -= recs[next].unk4->unkC;
            tp = &recs[next];
        }
    } else {
        rem = scaled - (len - (t * len));
        for (;;) {
            cnt = tp->unkC;
            if (cnt == 0) {
                return 1;
            }
            i = cnt - 1;
            conn = &tp->unk8[cnt] - 1;
            last = tp->unk4->unk2 - 1;
            while (i >= 0) {
                if ((conn->unk0 == last) && !(conn->unk1 & 0xF0)) {
                    break;
                }
                i++;
                if (conn->unk0 != last) {
                    return 1;
                }
                conn--;
            }
            if (i < 0) {
                return 1;
            }
            next = conn->unk2;
            if (rem <= recs[next].unk4->unkC) {
                frac = rem / recs[next].unk4->unkC;
                break;
            }
            rem -= recs[next].unk4->unkC;
            tp = &recs[next];
        }
    }
    if (D_8012912C[(node * D_80129118) + next] == 0) {
        return 1;
    }
    *arg0 = next;
    *arg1 = frac;
    return 0;
}
#elif defined(PORT)
/* Track-position advance (draft above): move fraction *arg1 along node
 * *arg0's segment by arg2*0.1 world units normalized by segment length,
 * hopping across node links when the fraction leaves [0,1]. Native record
 * facts (ovl2_2.c's loader): D_80129114->unk4 is a native
 * struct Unk80129114_4 array; unk8 holds the raw 4-byte link records
 * {role, flags, nextIndex, pad} as blob bytes; the N64 read the link
 * count as the BE halfword covering unkC/unkD; unk4->unkC is the segment
 * length, unk4->unk2 the point count. Backward hops take the first
 * unflagged role-0 link (any other role blocks); forward hops scan the
 * link list tail-first for an unflagged link whose role equals the last
 * point index. The D_8012912C routing matrix gets the final say. */
s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2) {
    extern s32 D_80129118;
    extern u8 *D_8012912C;
    struct Unk80129114_4 *recs = D_80129114->unk4;
    s32 node = *arg0;
    struct Unk80129114_4 *tp;
    f32 t;
    f32 len;
    f32 want;
    f32 frac = 0.0f;
    s32 next = 0;

    if (node < 0) {
        return 0x270F;
    }
    t = *arg1;
    if (t < 0.0f || t > 1.0f) {
        return 0x270F;
    }
    tp = &recs[node];
    len = tp->unk4->unkC;
    want = t + (arg2 * 0.1f) / len;
    if (tp->unkE != 0) { /* looping segment: wrap in place */
        *arg1 = want;
        if (want < 0.0f) {
            *arg1 = 1.0f + want;
        }
        if (want > 1.0f) {
            *arg1 = want - 1.0f;
        }
        return 0;
    }
    if (want >= 0.0f && want <= 1.0f) {
        *arg1 = want;
        return 0;
    }
    if (want < 0.0f) {
        f32 rem = (arg2 * -0.1f) - (t * len);

        for (;;) {
            s32 cnt = (s16) ((tp->unkC << 8) | tp->unkD);
            u8 *lnk;
            s32 i = 0;
            f32 len2;

            if (cnt <= 0) {
                return 1;
            }
            lnk = (u8 *) (uintptr_t) tp->unk8;
            while (i < cnt && (lnk[0] != 0 || (lnk[1] & 0xF0))) {
                if (lnk[0] != 0) {
                    return 1;
                }
                i++;
                lnk += 4;
            }
            if (i == cnt) {
                return 1;
            }
            next = lnk[2];
            len2 = recs[next].unk4->unkC;
            if (rem <= len2) {
                frac = (len2 - rem) / len2;
                break;
            }
            rem -= len2;
            tp = &recs[next];
        }
    } else {
        f32 rem = (arg2 * 0.1f) - (len - t * len);

        for (;;) {
            s32 cnt = (s16) ((tp->unkC << 8) | tp->unkD);
            u8 *lnk;
            s32 last;
            f32 len2;

            if (cnt <= 0) {
                return 1;
            }
            lnk = (u8 *) (uintptr_t) tp->unk8 + (cnt - 1) * 4;
            last = tp->unk4->unk2 - 1;
            for (;;) {
                if (last != lnk[0]) {
                    return 1;
                }
                if ((lnk[1] & 0xF0) == 0) {
                    break;
                }
                lnk -= 4;
            }
            next = lnk[2];
            len2 = recs[next].unk4->unkC;
            if (rem <= len2) {
                frac = rem / len2;
                break;
            }
            rem -= len2;
            tp = &recs[next];
        }
    }
    if (D_8012912C[node * D_80129118 + next] == 0) {
        return 1;
    }
    *arg0 = next;
    *arg1 = frac;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9974.s")
#endif

f32 func_800F9C54(s32 *arg0, f32 arg1, Vector *arg2) {
    s32 pad[1];
    Vector tmp;

    mtxGetInterpolatedPosition(&tmp, arg0, arg1);
    return utilVec3Dist(arg2, &tmp);
}

#ifdef MIPS_TO_C
/* FACTORY: 28/166 positional. Structure fully solved from the asm and NOT from the PORT arm, which is semantically wrong here: the ROM keeps hi/lo in a cand[2] array and their distances in dist[2], runs two real pointer loops over them, and the second loop updates BOTH arg2 and best (the PORT arm's 'if (dLo < dBest) arg2 = lo;' drops the best update). Also fixed: 2e-05 and the recursion window are DOUBLE comparisons, and arg0/arg1 must be cached into locals so they land in s1/s2 instead of the parameter home slots (that change alone moved 8 prologue words). Residue: frame 0x70 vs 0x60 -- 16 bytes of locals the ROM register-allocates that IDO here keeps slots for -- which then rotates the FP temps one slot (half f16 vs f18) throughout */
f32 func_800F9C94(void *arg0, Vector *arg1, f32 arg2, f32 arg3, s32 arg4) {
    f32 cand[2];
    f32 best;
    f32 dist[2];
    f32 half;
    f32 *cp;
    f32 *dp;
    f32 hi;
    f32 lo;
    s32 i;

    if (arg3 > 2e-05) {
        half = arg3 * 0.5f;
        hi = half + arg2;
        lo = arg2 - half;
        if (arg4 == 1) {
            if (arg2 < 0.0f) {
                arg2 += 1.0f;
            } else if (arg2 > 1.0f) {
                arg2 -= 1.0f;
            }
            if (hi < 0.0f) {
                cand[0] = hi + 1.0f;
            } else if (hi > 1.0f) {
                cand[0] = hi - 1.0f;
            } else {
                cand[0] = hi;
            }
            if (lo < 0.0f) {
                cand[1] = lo + 1.0f;
            } else if (lo > 1.0f) {
                cand[1] = lo - 1.0f;
            } else {
                cand[1] = lo;
            }
        } else {
            if (arg2 < 0.0f) {
                arg2 = 0.0f;
            } else if (arg2 > 1.0f) {
                arg2 = 1.0f;
            }
            if (hi < 0.0f) {
                cand[0] = 0.0f;
            } else if (hi > 1.0f) {
                cand[0] = 1.0f;
            } else {
                cand[0] = hi;
            }
            if (lo < 0.0f) {
                cand[1] = 0.0f;
            } else if (lo > 1.0f) {
                cand[1] = 1.0f;
            } else {
                cand[1] = lo;
            }
        }
        best = func_800F9C54(arg0, arg2, arg1);
        cp = cand;
        dp = dist;
        do {
            *dp++ = func_800F9C54(arg0, *cp++, arg1);
        } while (dp < &dist[2]);
        i = 0;
        dp = dist;
        do {
            if (*dp < best) {
                arg2 = *(f32 *) ((s32) cand + i);
                best = *dp;
            }
            dp++;
            i += 4;
        } while (dp != &dist[2]);
        arg2 = func_800F9C94(arg0, arg1, arg2, half, arg4);
    }
    return arg2;
}
#elif defined(PORT)
/* PORT: recursive nearest-point refinement on a track footer, from the m2c
 * sketch above (which mangles the argument list -- the real one matches the
 * call in func_800F9FDC below: footer, world point, seed param, window,
 * wrap flag). Each step evaluates the seed and seed +/- half-window
 * (wrapped into [0,1] on looping tracks, clamped otherwise), keeps the
 * closest, and recurses with the halved window until it is below 2e-05.
 * The footer is native on this build, so func_800F9C54 works unchanged. */
f32 func_800F9C94(void *arg0, Vector *arg1, f32 arg2, f32 arg3, s32 arg4) {
    f32 half;
    f32 hi;
    f32 lo;
    f32 dBest;
    f32 dHi;
    f32 dLo;

    if (arg3 > 2e-05) {
        half = arg3 * 0.5f;
        hi = arg2 + half;
        lo = arg2 - half;
        if (arg4 == 1) {
            if (arg2 < 0.0f) {
                arg2 += 1.0f;
            } else if (arg2 > 1.0f) {
                arg2 -= 1.0f;
            }
            if (hi < 0.0f) {
                hi += 1.0f;
            } else if (hi > 1.0f) {
                hi -= 1.0f;
            }
            if (lo < 0.0f) {
                lo += 1.0f;
            } else if (lo > 1.0f) {
                lo -= 1.0f;
            }
        } else {
            if (arg2 < 0.0f) {
                arg2 = 0.0f;
            } else if (arg2 > 1.0f) {
                arg2 = 1.0f;
            }
            if (hi < 0.0f) {
                hi = 0.0f;
            } else if (hi > 1.0f) {
                hi = 1.0f;
            }
            if (lo < 0.0f) {
                lo = 0.0f;
            } else if (lo > 1.0f) {
                lo = 1.0f;
            }
        }
        dBest = func_800F9C54(arg0, arg2, arg1);
        dHi = func_800F9C54(arg0, hi, arg1);
        dLo = func_800F9C54(arg0, lo, arg1);
        if (dHi < dBest) {
            dBest = dHi;
            arg2 = hi;
        }
        if (dLo < dBest) {
            arg2 = lo;
        }
        arg2 = func_800F9C94(arg0, arg1, arg2, half, arg4);
    }
    return arg2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9C94.s")
#endif

f32 func_800F9F10(f32 arg0, s32 arg1) {
    if (arg0 > 1.0f) {
        if (arg1 == 1) {
            arg0 -= 1.0f;
        } else {
            arg0 = 1.0f;
        }
    } else if (arg0 < 0.0f) {
        if (arg1 == 1) {
            arg0 += 1.0f;
        } else {
            arg0 = 0.0f;
        }
    }
    return arg0;
}

f32 func_800F9F80(Vector *arg0, Vector *arg1, Vector *arg2) {
    Vector sp2C;
    Vector sp20;

    lbvector_Diff(&sp2C, arg2, arg1);
    lbvector_Diff(&sp20, arg0, arg1);
    return utilVec3Dot(&sp2C, &sp20) / utilVec3Mag(&sp2C);
}

f32 func_800F9FDC(void *arg0, Vector *arg1, s32 arg2, s32 arg3) {
    f32 tA;
    f32 tB;
    f32 dMin;
    f32 tPrev;
    f32 tNext;
    f32 best;
    f32 dB;
    f32 dC;
    f32 dA;
    f32 tCur;
    Vector pCur;
    Vector pPrev;
    Vector pNext;
    Vector pC;
    Vector pA;
    Vector pB;
    s16 n;
    f32 *times;
    struct TrackFooter *footer;
    f32 func_800F9C94(void *, Vector *, f32, f32, s32);

    footer = arg0;
    times = footer->unk10;
    tCur = times[arg2];
    if (arg2 == 0) {
        tPrev = times[0];
        tCur = tPrev + 0.002;
    } else {
        tPrev = times[arg2 - 1];
    }
    n = footer->unk2;
    if (arg2 >= (n - 1)) {
        tNext = times[n - 1];
        tCur = tNext - 0.002;
    } else {
        tNext = times[arg2 + 1];
    }
    mtxGetInterpolatedPosition(&pPrev, footer, tPrev);
    mtxGetInterpolatedPosition(&pCur, footer, tCur);
    mtxGetInterpolatedPosition(&pNext, footer, tNext);
    tA = (func_800F9F80(arg1, &pPrev, &pCur) * (tCur - tPrev)) + tPrev;
    tB = (func_800F9F80(arg1, &pCur, &pNext) * (tNext - tCur)) + tCur;
    tA = func_800F9F10(tA, arg3);
    tB = func_800F9F10(tB, arg3);
    mtxGetInterpolatedPosition(&pA, footer, tA);
    mtxGetInterpolatedPosition(&pB, footer, tB);
    mtxGetInterpolatedPosition(&pC, footer, tCur);
    dA = utilVec3Dist(&pA, arg1);
    dC = utilVec3Dist(&pC, arg1);
    dB = utilVec3Dist(&pB, arg1);
    if (dA < dB) {
        best = tA;
        dMin = dA;
    } else {
        best = tB;
        dMin = dB;
    }
    if (dC < dMin) {
        best = tCur;
    }
    return func_800F9C94(footer, arg1, best, 0.02f, arg3);
}

f32 func_800FA1D4(struct Unk80129114_4_4 *arg0, Vector *arg1, s32 arg2) {
    f32 lbvector_DiffLen(Vector *, Vector *);
    f32 func_800F9FDC(void *, Vector *, s32, s32);
    f32 best;
    f32 d;
    s32 idx;
    s32 i;
    s32 pad;
    s16 n;

    n = arg0->unk2;
    best = 1000000.0f;
    idx = -1;
    for (i = 0; i < n; i++) {
        Vector sp44;

        sp44 = *(Vector *) ((u8 *) arg0->unk8 + (i * 0xC));
        d = lbvector_DiffLen(arg1, &sp44);
        if (d < best) {
            best = d;
            idx = i;
        }
    }
    if (idx != -1) {
        return func_800F9FDC(arg0, arg1, idx, arg2);
    }
    return -1.0f;
}











void func_800FA2D4(struct Ovl2CamState *arg0, struct Ovl2CamOut *arg1) {
    Camera *cam;
    f32 temp_f0;
    f32 temp_f2;

    cam = D_800D799C->data.cam;
    temp_f0 = *(s32 *) &D_8012940C * 0.01f;
    temp_f2 = D_80129408 * 0.01f;
    D_800D7B38 = D_800D7B20;
    cam->viewMtx.lookAt.eye.x = arg1->eyeX + (D_80129400 * temp_f0);
    cam->viewMtx.lookAt.eye.y = arg1->eyeY + (D_80129404 * temp_f0);
    cam->viewMtx.lookAt.eye.z = arg1->eyeZ;
    cam->viewMtx.lookAt.at.x = arg1->atX + (D_80129400 * temp_f2);
    cam->viewMtx.lookAt.at.y = arg1->atY + (D_80129404 * temp_f2);
    cam->viewMtx.lookAt.at.z = arg1->atZ;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    cam->perspMtx.persp.fovy = arg0->fovy;
    cam->perspMtx.persp.near = arg0->near;
    cam->perspMtx.persp.far = arg0->far;
}

void func_800FA414(s32 arg0) {
    if (!(D_800D7088 & 0x80000000)) {
        D_800D7088 = arg0;
    }
}


void func_800FA438(s32 arg0, struct Ovl2CamState *arg1) {
    struct TrackCameraNode *cam;
    f32 t;

    t = D_800E6BD0[arg0];
#ifdef PORT
    /* native records: index with the real stride (see func_800F8B1C).
     * Until the player-spawn chain (func_800FF2C8 / ovl3 player init) is
     * ported, nothing seats a track object on a node and D_800E5F90 entries
     * are still -1 on the first camera tick; clamp to the track's first node
     * so the camera stands somewhere real instead of dereferencing wild. */
    {
        s32 pcNode = D_800E5F90[arg0];

        if (pcNode < 0 || (u32) pcNode >= D_80129114->unk0) {
            pcNode = 0;
        }
        cam = &((struct TrackKirbyNode *) D_80129114->unk4[pcNode].unk0)->unk20;
    }
#else
    cam = &((struct TrackNodeHeader *) D_80129114->unk4)[D_800E5F90[arg0]].unk0->unk20;
#endif
    arg1->mode = cam->unk0;
    arg1->unk2 = cam->unk1;
    arg1->pitch = ((cam->unk24 - cam->unk20) * t) + cam->unk20;
    arg1->yaw = ((cam->unk2C - cam->unk28) * t) + cam->unk28;
    arg1->eyeDistance = ((cam->unk34 - cam->unk30) * t) + cam->unk30;
    arg1->fovy = ((cam->unk3C - cam->unk38) * t) + cam->unk38;
    arg1->heightOffset = ((cam->unk44 - cam->unk40) * t) + cam->unk40;
    arg1->eyeXClampEnable = cam->unk2;
    arg1->eyeYClampEnable = cam->unk3;
    arg1->eyeZClampEnable = cam->unk4;
    arg1->pitchLimitEnable = cam->unk6;
    arg1->yawLimitEnable = cam->unk7;
    arg1->manualOrbitEnable = cam->unk8;
    arg1->unk1F = cam->unk9;
    arg1->eyeXMin = cam->unk48;
    arg1->eyeXMax = cam->unk4C;
    arg1->eyeYMin = cam->unk50;
    arg1->eyeYMax = cam->unk54;
    arg1->eyeZMin = cam->unk58;
    arg1->eyeZMax = cam->unk5C;
    arg1->pitchMin = cam->unk60;
    arg1->pitchMax = cam->unk64;
    arg1->yawMin = cam->unk68;
    arg1->yawMax = cam->unk6C;
    arg1->atXOverride = cam->unkC;
    arg1->atYOverride = cam->unk10;
    arg1->atZOverride = cam->unk14;
    arg1->near = cam->unk18;
    arg1->far = cam->unk1C;
    arg1->orbitYawLimit = cam->unkA;
}

void func_800FA5C0(s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    arg2->focusX = gEntitiesNextPosXArray[arg0];
    arg2->focusY = gEntitiesNextPosYArray[arg0];
    arg2->focusZ = gEntitiesNextPosZArray[arg0];
    arg2->focusY = arg2->focusY + arg1->heightOffset;
}

#ifdef PORT
/* PORT: camera eye placement behind the target, from asm/nonmatchings/ovl2/
 * ovl2_3/func_800FA608.s. The N64 byte pokes become their host accesses:
 * the camera up vector is Camera.viewMtx.lookAt.up (N64 +0x54) and the
 * track tangent comes from the NATIVE node records (see func_800F8B1C).
 * Mode 0 aims along a fixed yaw, mode 1 along the track tangent rotated by
 * the node's yaw offset; anything else keeps the previous direction (the
 * ROM reads the uninitialized stack slot -- here `dir` simply stays
 * whatever the compiler left, matching that don't-care). */
void func_800FA608(s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    Camera *cam = D_800D799C->data.cam;
    Vector dir;
    Vector diff;
    Vector axis;

    dir.x = dir.y = dir.z = 0.0f;
    switch (arg1->mode) {
        case 0:
            dir.x = cosf((arg1->yaw * 3.1415927f) / 180.0f);
            dir.z = -sinf((arg1->yaw * 3.1415927f) / 180.0f);
            dir.y = 0.0f;
            break;
        case 1:
            func_8001E344(&dir, D_80129114->unk4[D_800E5F90[arg0]].unk4,
                          D_800E6BD0[arg0]);
            dir.y = 0.0f;
            lbvector_Normalize(&dir);
            lbvector_Rotate(&dir, 2, (arg1->yaw * 3.1415927f) / 180.0f);
            break;
    }
    lbvector_Scale(&dir, -arg1->eyeDistance);
    lbvector_Add(&dir, (Vector *) &arg2->focusX);
    lbvector_Diff(&diff, (Vector *) &arg2->focusX, &dir);
    vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &diff, &axis);
    func_800191F8(&diff, &axis, ((arg1->pitch - 90.0f) * 3.1415927f) / 180.0f);
    arg2->rawEyeX = arg2->focusX - diff.x;
    arg2->rawEyeY = arg2->focusY - diff.y;
    arg2->rawEyeZ = arg2->focusZ - diff.z;
}
#else
void func_800FA608(s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    DObj *dobj;
    s32 pad;
    Vector dir;
    Vector axis;
    Vector diff;
    struct Unk80129114_4_4 *footer;
    void func_8001E344(Vector *, struct Unk80129114_4_4 *, f32);

    dobj = D_800D799C->data.dobj;
    switch (arg1->mode) {
    case 0:
        dir.x = cosf((arg1->yaw * 3.1415927f) / 180.0f);
        dir.z = -sinf((arg1->yaw * 3.1415927f) / 180.0f);
        dir.y = 0.0f;
        break;
    case 1:
        footer = D_80129114->unk4[D_800E5F90[arg0]].unk4;
        func_8001E344(&dir, footer, D_800E6BD0[arg0]);
        dir.y = 0.0f;
        lbvector_Normalize(&dir);
        lbvector_Rotate(&dir, 2, (arg1->yaw * 3.1415927f) / 180.0f);
        break;
    }
    lbvector_Scale(&dir, -arg1->eyeDistance);
    lbvector_Add(&dir, (Vector *) arg2);
    lbvector_Diff(&diff, (Vector *) arg2, &dir);
    vec3_normalized_cross_product((Vector *) ((s32) dobj + 0x54), &diff, &axis);
    func_800191F8(&diff, &axis, ((arg1->pitch - 90.0f) * 3.1415927f) / 180.0f);
    arg2->rawEyeX = arg2->focusX - diff.x;
    arg2->rawEyeY = arg2->focusY - diff.y;
    arg2->rawEyeZ = arg2->focusZ - diff.z;
}
#endif

void func_800FA7EC(UNUSED s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;

    arg2->eyeXClampFlags = 0;
    arg2->eyeYClampFlags = 0;
    arg2->eyeZClampFlags = 0;
    arg2->eyeX = arg2->rawEyeX;
    arg2->eyeY = arg2->rawEyeY;
    arg2->eyeZ = arg2->rawEyeZ;
    if (arg1->eyeXClampEnable != 0) {
        temp_f0 = arg1->eyeXMin;
        if (arg2->eyeX <= temp_f0) {
            arg2->eyeX = temp_f0;
            arg2->eyeXClampFlags |= 1;
        }
        temp_f0_2 = arg1->eyeXMax;
        if (temp_f0_2 <= arg2->eyeX) {
            arg2->eyeX = temp_f0_2;
            arg2->eyeXClampFlags |= 2;
        }
    }
    if (arg1->eyeYClampEnable != 0) {
        temp_f0_3 = arg1->eyeYMin;
        if (arg2->eyeY <= temp_f0_3) {
            arg2->eyeY = temp_f0_3;
            arg2->eyeYClampFlags |= 1;
        }
        temp_f0_4 = arg1->eyeYMax;
        if (temp_f0_4 <= arg2->eyeY) {
            arg2->eyeY = temp_f0_4;
            arg2->eyeYClampFlags |= 2;
        }
    }
    if (arg1->eyeZClampEnable != 0) {
        temp_f0_5 = arg1->eyeZMin;
        if (arg2->eyeZ <= temp_f0_5) {
            arg2->eyeZ = temp_f0_5;
            arg2->eyeZClampFlags |= 1;
        }
        temp_f0_6 = arg1->eyeZMax;
        if (temp_f0_6 <= arg2->eyeZ) {
            arg2->eyeZ = temp_f0_6;
            arg2->eyeZClampFlags |= 2;
        }
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 207/210, scheduler rotation only: the 360.0f 'lui at' sits one
 * slot BEFORE the post-atan2f v0/a3 reloads in the ROM and one slot after
 * in the draft. Frame 0x70, every stack slot, both flag forms (flagA
 * register / flagB memory) and all 3 spill sites already exact.
 * Re-confirmed 2026-08-23 via verify.py in-place (3/210 diff, all three
 * words at this one site): tried ternary for the ang<0 clamp (worse,
 * 26/210), reordering the compare operand (0.0f > ang), and an equivalent
 * `ang = ang + 360.0f` rephrasing -- none move the scheduler. v0 holds
 * flagA and a3 holds arg1, both spilled across the lbvector_Diff/atan2f
 * calls and reloaded for the next `if`; the ROM's list-scheduler places the
 * unconditional 360.0f lui ahead of those two reloads where IDO here places
 * it after. Not reachable from source spelling. */
void func_800FA92C(UNUSED s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    DObj *dobj;
    s32 flagA;
    s32 flagB;
    Vector pad1;
    Vector vec;
    Vector axis;
    f32 ang;
    f32 ang2;
    Vector *tgt;
    s32 pad2;

    dobj = D_800D799C->data.dobj;
    flagB = 0;
    arg2->atX = arg2->focusX;
    arg2->atY = arg2->focusY;
    arg2->atZ = arg2->focusZ;
    flagA = 0;
    if (arg1->atXOverride != 9999.0f) {
        arg2->atX = arg1->atXOverride;
    }
    if (arg1->atYOverride != 9999.0f) {
        arg2->atY = arg1->atYOverride + arg1->heightOffset;
    }
    if (arg1->atZOverride != 9999.0f) {
        arg2->atZ = arg1->atZOverride;
    }
    if (arg1->yawLimitEnable != 0) {
        tgt = (Vector *) &arg2->eyeX;
        if ((arg2->eyeXClampFlags | arg2->eyeZClampFlags) != 0) {
            lbvector_Diff(&vec, (Vector *) arg2, tgt);
            ang = (atan2f(vec.z, -vec.x) / 3.1415927f) * 180.0f;
            if (ang < 0.0f) {
                ang += 360.0f;
            }
            if (arg1->yawMin > ang) {
                ang = arg1->yawMin;
                flagA = 1;
            }
            if (arg1->yawMax < ang) {
                ang = arg1->yawMax;
                flagA |= 2;
            }
            if (flagA != 0) {
                vec.x = -sqrtf((vec.z * vec.z) + (vec.x * vec.x));
                vec.y = 0.0f;
                vec.z = 0.0f;
                func_800191F8(&vec, (Vector *) ((s32) dobj + 0x54),
                              (ang * 3.1415927f) / 180.0f);
                lbvector_Add(&vec, tgt);
                arg2->atX = vec.x;
                arg2->atZ = vec.z;
            }
        }
    }
    if (arg1->pitchLimitEnable != 0) {
        if (arg2->eyeYClampFlags != 0) {
            lbvector_Diff(&vec, (Vector *) &arg2->atX, (Vector *) &arg2->eyeX);
            ang2 = 180.0f - ((atan2f(sqrtf((vec.z * vec.z) + (vec.x * vec.x)), vec.y)
                              / 3.1415927f) * 180.0f);
            if (ang2 < arg1->pitchMin) {
                ang2 = arg1->pitchMin;
                flagB = 1;
            }
            if (arg1->pitchMax < ang2) {
                ang2 = arg1->pitchMax;
                flagB |= 2;
            }
            if (flagB != 0) {
                vec.y = 0.0f;
                vec3_normalized_cross_product((Vector *) ((s32) dobj + 0x54), &vec, &axis);
                func_800191F8(&vec, &axis, ((ang2 - 90.0f) * 3.1415927f) / 180.0f);
                arg2->atX = arg2->eyeX + vec.x;
                arg2->atY = arg2->eyeY - vec.y;
                arg2->atZ = arg2->eyeZ + vec.z;
            }
        }
    }
}
#elif defined(PORT)
/* PORT: camera eye yaw/pitch limiting, from asm/nonmatchings/ovl2/ovl2_3/
 * func_800FA92C.s (the m2c sketch above mangles every vector-helper call).
 * arg2->atX..atZ is the published look-at point, eyeX..eyeZ the clamped eye
 * (see the Ovl2CamOut struct comment); eyeXClampFlags/eyeYClampFlags/
 * eyeZClampFlags are the clamp flags func_800FA7EC set this tick. Yaw
 * outside [yawMin, yawMax] and pitch outside [pitchMin, pitchMax] are
 * pulled back onto the limit by rotating the at-eye offset around the
 * camera up vector (host Camera.viewMtx.lookAt.up, N64 +0x54). */
void func_800FA92C(UNUSED s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    Camera *cam = D_800D799C->data.cam;
    Vector d;
    Vector axis;
    s32 flags;
    f32 ang;
    f32 mag;

    arg2->atX = arg2->focusX;
    arg2->atY = arg2->focusY;
    arg2->atZ = arg2->focusZ;
    if (arg1->atXOverride != 9999.0f) {
        arg2->atX = arg1->atXOverride;
    }
    if (arg1->atYOverride != 9999.0f) {
        arg2->atY = arg1->atYOverride + arg1->heightOffset;
    }
    if (arg1->atZOverride != 9999.0f) {
        arg2->atZ = arg1->atZOverride;
    }
    if (arg1->yawLimitEnable != 0) {
        if ((arg2->eyeXClampFlags | arg2->eyeZClampFlags) != 0) {
            flags = 0;
            lbvector_Diff(&d, (Vector *) &arg2->atX, (Vector *) &arg2->eyeX);
            ang = (atan2f(d.z, -d.x) / 3.1415927f) * 180.0f;
            if (ang < 0.0f) {
                ang += 360.0f;
            }
            if (ang < arg1->yawMin) {
                ang = arg1->yawMin;
                flags = 1;
            }
            if (arg1->yawMax < ang) {
                ang = arg1->yawMax;
                flags |= 2;
            }
            if (flags != 0) {
                mag = sqrtf((d.z * d.z) + (d.x * d.x));
                d.x = -mag;
                d.y = 0.0f;
                d.z = 0.0f;
                func_800191F8(&d, &cam->viewMtx.lookAt.up,
                              (ang * 3.1415927f) / 180.0f);
                lbvector_Add(&d, (Vector *) &arg2->eyeX);
                arg2->atX = d.x;
                arg2->atZ = d.z;
            }
        }
    }
    if ((arg1->pitchLimitEnable != 0) && (arg2->eyeYClampFlags != 0)) {
        flags = 0;
        lbvector_Diff(&d, (Vector *) &arg2->atX, (Vector *) &arg2->eyeX);
        ang = 180.0f -
              ((atan2f(sqrtf((d.z * d.z) + (d.x * d.x)), d.y) / 3.1415927f) *
               180.0f);
        if (ang < arg1->pitchMin) {
            ang = arg1->pitchMin;
            flags = 1;
        }
        if (arg1->pitchMax < ang) {
            ang = arg1->pitchMax;
            flags |= 2;
        }
        if (flags != 0) {
            d.y = 0.0f;
            vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &d, &axis);
            func_800191F8(&d, &axis, ((ang - 90.0f) * 3.1415927f) / 180.0f);
            arg2->atX = arg2->eyeX + d.x;
            arg2->atY = arg2->eyeY - d.y;
            arg2->atZ = arg2->eyeZ + d.z;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA92C.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 43/317 positional; all control flow, both goto-merge zero-velocity paths, the s32->f32 cvt.s.w compare on D_801292E0, the lhu-at-offset-0 controller read (extern u16 gPlayerControllers, NOT the Controller_800D6FE8[] view -- the ROM reads one halfword and CSEs it for both button tests), the arg1->unk5C re-read in the clamp pair, and frame 0x60 all reproduce. Residue: the ROM parks arg2 in s0 (its only callee-saved register) while IDO here spills it to the a2 home slot and saves nothing, so every later reference is a reload from a different base and the whole body shifts. Tried: explicit src local, with/without, pad sizing to fix the frame first */
void func_800FAC74(struct Ovl2CamOut *arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    DObj *dobj;
    Vector d;
    s32 v;
    f32 step;
    f32 ang;
    f32 yaw;
    f32 lim;
    s32 pad[7];
    f32 func_800FB814(f32, f32, f32);
    extern u16 gPlayerControllers;
    extern s32 D_801292E0;
    extern f32 D_801293AC;
    extern f32 D_801293B4;
    extern f32 D_801293BC;
    extern f32 D_801293C4;
    extern f32 D_801293CC;
    extern f32 D_801293D4;
    extern s32 D_801293D8;

    dobj = D_800D799C->data.dobj;
    if ((f32) D_801292E0 == 9999.0f) {
        *arg0 = *arg2;
    }
    v = 0;
    if (gPlayerControllers & 0x100) {
        v = 1;
    }
    if (gPlayerControllers & 0x200) {
        v -= 1;
    }
    if (D_800BE4F8 == 1) {
        if ((v != 0) && (arg1->manualOrbitEnable != 0)) {
            step = D_801293C4;
            if (v > 0) {
                if (D_801293BC < 0.0f) {
                    step *= D_801293CC;
                }
                D_801293BC += step;
                if (D_801293B4 <= D_801293BC) {
                    D_801293BC = D_801293B4;
                }
            } else {
                if (D_801293BC > 0.0f) {
                    step *= D_801293CC;
                }
                D_801293BC -= step;
                if (D_801293BC <= -D_801293B4) {
                    D_801293BC = -D_801293B4;
                }
            }
            D_801293AC += D_801293BC;
        } else if (D_801293AC > 0.0f) {
            D_801293BC -= D_801293C4;
            if (D_801293BC <= -1.0f) {
                D_801293BC = -1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC <= 0.0f) {
                D_801293AC = 0.0f;
                goto zeroVel;
            }
        } else if (D_801293AC < 0.0f) {
            D_801293BC += D_801293C4;
            if (D_801293BC >= 1.0f) {
                D_801293BC = 1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC >= 0.0f) {
                D_801293AC = 0.0f;
                goto zeroVel;
            }
        } else {
            D_801293AC = 0.0f;
        zeroVel:
            D_801293BC = 0.0f;
        }
    }
    lim = arg1->orbitYawLimit;
    if (lim <= D_801293AC) {
        D_801293AC = lim;
        lim = arg1->orbitYawLimit;
    }
    if (D_801293AC <= -lim) {
        D_801293AC = -lim;
    }
    lbvector_Diff(&d, (Vector *) &arg2->atX, (Vector *) &arg2->eyeX);
    ang = (atan2f(d.z, -d.x) / 3.1415927f) * 180.0f;
    if (ang < 0.0f) {
        ang += 360.0f;
    }
    yaw = ang + 90.0f;
    if (360.0f <= yaw) {
        yaw -= 360.0f;
    }
    d.y = 0.0f;
    d.z = 0.0f;
    d.x = -D_801293AC;
    func_800191F8(&d, (Vector *) ((s32) dobj + 0x54), (yaw * 3.1415927f) / 180.0f);
    arg0->eyeX = arg2->eyeX;
    arg0->eyeZ = arg2->eyeZ;
    arg0->atX = arg2->atX - d.x;
    arg0->atZ = arg2->atZ - d.z;
    if (arg1->unk1F != 0) {
        D_801293D8 = 0;
        arg0->eyeY = func_800FB814(arg0->eyeY, arg2->eyeY, D_801293C0);
        arg0->atY = func_800FB814(arg0->atY, arg2->atY, D_801293C0);
        return;
    }
    if (D_801293D8 != 0) {
        arg0->eyeY = arg2->eyeY;
        arg0->atY = arg2->atY;
        return;
    }
    arg0->eyeY = func_800FB814(arg0->eyeY, arg2->eyeY, D_801293D4);
    arg0->atY = func_800FB814(arg0->atY, arg2->atY, D_801293D4);
    if (arg2->eyeY == arg0->eyeY) {
        D_801293D8 += 1;
    }
}
#elif defined(PORT)
/* PORT: camera chase smoothing + manual L/R orbit, from asm/nonmatchings/
 * ovl2/ovl2_3/func_800FAC74.s (the m2c sketch above mangles the vector
 * calls and misses that D_801292E0 is an s32 compared via cvt.s.w). arg0
 * is the smoothed output record, arg2 the raw target one; buttons 0x100/
 * 0x200 drive the orbit offset D_801293AC with velocity D_801293BC. */
extern Controller_800D6FE8 gPlayerControllers[];
extern s32 D_801292E0;
extern f32 D_801293AC;
extern f32 D_801293B4;
extern f32 D_801293BC;
extern f32 D_801293C4;
extern f32 D_801293CC;
extern f32 D_801293D4;
extern s32 D_801293D8;
f32 func_800FB814(f32, f32, f32);

void func_800FAC74(struct Ovl2CamOut *arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    Camera *cam = D_800D799C->data.cam;
    Vector d;
    s32 v;
    f32 step;
    f32 ang;
    f32 yaw;

    if ((f32) D_801292E0 == 9999.0f) {
        *arg0 = *arg2;
    }
    v = 0;
    if (gPlayerControllers[0].buttonHeld & 0x100) {
        v = 1;
    }
    if (gPlayerControllers[0].buttonHeld & 0x200) {
        v -= 1;
    }
    if (D_800BE4F8 == 1) {
        if ((v != 0) && (arg1->manualOrbitEnable != 0)) {
            step = D_801293C4;
            if (v > 0) {
                if (D_801293BC < 0.0f) {
                    step *= D_801293CC;
                }
                D_801293BC += step;
                if (D_801293B4 <= D_801293BC) {
                    D_801293BC = D_801293B4;
                }
            } else {
                if (D_801293BC > 0.0f) {
                    step *= D_801293CC;
                }
                D_801293BC -= step;
                if (D_801293BC <= -D_801293B4) {
                    D_801293BC = -D_801293B4;
                }
            }
            D_801293AC += D_801293BC;
        } else if (D_801293AC > 0.0f) {
            D_801293BC -= D_801293C4;
            if (D_801293BC <= -1.0f) {
                D_801293BC = -1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC <= 0.0f) {
                D_801293AC = 0.0f;
                D_801293BC = 0.0f;
            }
        } else if (D_801293AC < 0.0f) {
            D_801293BC += D_801293C4;
            if (D_801293BC >= 1.0f) {
                D_801293BC = 1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC >= 0.0f) {
                D_801293AC = 0.0f;
                D_801293BC = 0.0f;
            }
        } else {
            D_801293AC = 0.0f;
            D_801293BC = 0.0f;
        }
    }
    if (arg1->orbitYawLimit <= D_801293AC) {
        D_801293AC = arg1->orbitYawLimit;
    }
    if (D_801293AC <= -arg1->orbitYawLimit) {
        D_801293AC = -arg1->orbitYawLimit;
    }
    lbvector_Diff(&d, (Vector *) &arg2->atX, (Vector *) &arg2->eyeX);
    ang = (atan2f(d.z, -d.x) / 3.1415927f) * 180.0f;
    if (ang < 0.0f) {
        ang += 360.0f;
    }
    yaw = ang + 90.0f;
    if (360.0f <= yaw) {
        yaw -= 360.0f;
    }
    d.x = -D_801293AC;
    d.y = 0.0f;
    d.z = 0.0f;
    func_800191F8(&d, &cam->viewMtx.lookAt.up, (yaw * 3.1415927f) / 180.0f);
    arg0->eyeX = arg2->eyeX;
    arg0->eyeZ = arg2->eyeZ;
    arg0->atX = arg2->atX - d.x;
    arg0->atZ = arg2->atZ - d.z;
    if (arg1->unk1F != 0) {
        D_801293D8 = 0;
        arg0->eyeY = func_800FB814(arg0->eyeY, arg2->eyeY, D_801293C0);
        arg0->atY = func_800FB814(arg0->atY, arg2->atY, D_801293C0);
        return;
    }
    if (D_801293D8 != 0) {
        arg0->eyeY = arg2->eyeY;
        arg0->atY = arg2->atY;
        return;
    }
    arg0->eyeY = func_800FB814(arg0->eyeY, arg2->eyeY, D_801293D4);
    arg0->atY = func_800FB814(arg0->atY, arg2->atY, D_801293D4);
    if (arg2->eyeY == arg0->eyeY) {
        D_801293D8 += 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FAC74.s")
#endif

#ifdef MIPS_TO_C

void func_800FB164(void *arg0, void *arg1, void *arg2) {
    s32 sp4C;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f2_5;
    s32 var_a0;
    s32 var_v1;

    sp4C = D_800D799C->data;
    if (D_801292E0 == 9999.0f) {
        M2C_MEMCPY_ALIGNED(arg0, arg2, 0x3C);
    }
    D_801293B4 = 8.0f;
    D_801293B8 = 8.0f;
    D_801293CC = 8.0f;
    D_801293C4 = 4.0f;
    D_801293C8 = 4.0f;
    var_v1 = 0;
    if (gPlayerControllers->buttonHeld & 0x100) {
        var_v1 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x200) {
        var_v1 -= 1;
    }
    var_a0 = 0;
    if (gPlayerControllers->buttonHeld & 0x800) {
        var_a0 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x400) {
        var_a0 -= 1;
    }
    if ((var_v1 != 0) && (arg1->unk1E != 0)) {
        var_f2 = D_801293C4;
        if (var_v1 > 0) {
            if (D_801293BC < 0.0f) {
                var_f2 *= D_801293CC;
            }
            D_801293BC += var_f2;
            var_f0 = D_801293BC;
            if (D_801293B4 <= var_f0) {
                D_801293BC = D_801293B4;
                goto block_21;
            }
        } else {
            if (D_801293BC > 0.0f) {
                var_f2 *= D_801293CC;
            }
            D_801293BC -= var_f2;
            var_f0 = D_801293BC;
            temp_f12 = -D_801293B4;
            if (var_f0 <= temp_f12) {
                D_801293BC = temp_f12;
block_21:
                var_f0 = D_801293BC;
            }
        }
        D_801293AC += var_f0;
        var_f2_2 = D_801293AC;
    } else if (D_801293AC > 0.0f) {
        D_801293BC -= D_801293C4;
        if (D_801293BC <= -1.0f) {
            D_801293BC = -1.0f;
        }
        D_801293AC += D_801293BC;
        var_f2_2 = D_801293AC;
        if (var_f2_2 <= 0.0f) {
            D_801293AC = 0.0f;
            var_f2_2 = D_801293AC;
            D_801293BC = 0.0f;
        }
    } else if (D_801293AC < 0.0f) {
        D_801293BC += D_801293C4;
        if (D_801293BC >= 1.0f) {
            D_801293BC = 1.0f;
        }
        D_801293AC += D_801293BC;
        var_f2_2 = D_801293AC;
        if (var_f2_2 >= 0.0f) {
            D_801293AC = 0.0f;
            var_f2_2 = D_801293AC;
            D_801293BC = 0.0f;
        }
    } else {
        D_801293AC = 0.0f;
        var_f2_2 = D_801293AC;
        D_801293BC = 0.0f;
    }
    var_f0_2 = arg1->unk5C;
    if (var_f0_2 <= var_f2_2) {
        D_801293AC = var_f0_2;
        var_f2_2 = D_801293AC;
        var_f0_2 = arg1->unk5C;
    }
    temp_f12_2 = -var_f0_2;
    if (var_f2_2 <= temp_f12_2) {
        D_801293AC = temp_f12_2;
    }
    if ((var_a0 != 0) && (arg1->unk1E != 0)) {
        var_f2_3 = D_801293C8;
        if (var_a0 > 0) {
            if (D_801293C0 < 0.0f) {
                var_f2_3 *= D_801293CC;
            }
            D_801293C0 += var_f2_3;
            var_f0_3 = D_801293C0;
            if (D_801293B8 <= var_f0_3) {
                D_801293C0 = D_801293B8;
                goto block_51;
            }
        } else {
            if (D_801293C0 > 0.0f) {
                var_f2_3 *= D_801293CC;
            }
            D_801293C0 -= var_f2_3;
            var_f0_3 = D_801293C0;
            temp_f12_3 = -D_801293B8;
            if (var_f0_3 <= temp_f12_3) {
                D_801293C0 = temp_f12_3;
block_51:
                var_f0_3 = D_801293C0;
            }
        }
        D_801293B0 += var_f0_3;
        var_f2_4 = D_801293B0;
    } else if (D_801293B0 > 0.0f) {
        D_801293C0 -= D_801293C8;
        if (D_801293C0 <= -1.0f) {
            D_801293C0 = -1.0f;
        }
        D_801293B0 += D_801293C0;
        var_f2_4 = D_801293B0;
        if (var_f2_4 <= 0.0f) {
            D_801293B0 = 0.0f;
            var_f2_4 = D_801293B0;
            goto block_64;
        }
    } else if (D_801293B0 < 0.0f) {
        D_801293C0 += D_801293C8;
        if (D_801293C0 >= 1.0f) {
            D_801293C0 = 1.0f;
        }
        D_801293B0 += D_801293C0;
        var_f2_4 = D_801293B0;
        if (var_f2_4 >= 0.0f) {
            D_801293B0 = 0.0f;
            var_f2_4 = D_801293B0;
            goto block_64;
        }
    } else {
        D_801293B0 = 0.0f;
        var_f2_4 = D_801293B0;
block_64:
        D_801293C0 = 0.0f;
    }
    var_f0_4 = arg1->unk5C;
    temp_f12_4 = var_f0_4 * 0.6f;
    if (temp_f12_4 <= var_f2_4) {
        D_801293B0 = temp_f12_4;
        var_f2_4 = D_801293B0;
        var_f0_4 = arg1->unk5C;
    }
    temp_f12_5 = -var_f0_4 * 0.6f;
    if (var_f2_4 <= temp_f12_5) {
        D_801293B0 = temp_f12_5;
    }
    lbvector_Diff(temp_f12_5, 0.6f, &sp28, arg2 + 0x18, arg2 + 0x24, &D_801293AC);
    temp_f12_6 = (atan2f(sp30, -sp28) / 3.1415927f) * 180.0f;
    var_f2_5 = temp_f12_6;
    if (temp_f12_6 < 0.0f) {
        var_f2_5 = temp_f12_6 + 360.0f;
    }
    sp30 = 0.0f;
    sp28 = -D_801293AC;
    sp2C = D_801293B0;
    func_800191F8(temp_f12_6, 3.1415927f, &sp28, sp4C + 0x54, ((var_f2_5 + 90.0f) * 3.1415927f) / 180.0f, &D_801293AC);
    arg0->unk24 = arg2->unk24;
    arg0->unk28 = arg2->unk28;
    arg0->unk2C = arg2->unk2C;
    arg0->unk18 = arg2->unk18 - sp28;
    arg0->unk1C = arg2->unk1C - sp2C;
    arg0->unk20 = arg2->unk20 - sp30;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB164.s")
#endif

f32 func_800FB814(f32 arg0, f32 arg1, f32 arg2) {
    f32 var_f0;
    f32 var_f2;

    if (arg1 < arg0) {
        var_f0 = -(arg1 - arg0);
        var_f2 = arg1 - arg0;
    } else {
        var_f2 = arg1 - arg0;
        var_f0 = var_f2;
    }
    if (D_801293C0 < var_f0) {
        if (var_f2 > 0.0f) {
            arg0 = arg0 + arg2;
            if (arg1 <= arg0) {
                arg0 = arg1;
            }
        } else {
            arg0 = arg0 - arg2;
            if (arg0 <= arg1) {
                arg0 = arg1;
            }
        }
    } else {
        arg0 = arg1;
    }
    if (arg1 < arg0) {
        var_f0 = -(arg1 - arg0);
        var_f2 = arg1 - arg0;
    } else {
        var_f2 = arg1 - arg0;
        var_f0 = var_f2;
    }
    if (D_801293D0 < var_f0) {
        if (var_f2 > 0.0f) {
            var_f0 = var_f2 - D_801293D0;
        } else {
            var_f0 = var_f2 + D_801293D0;
        }
        arg0 += var_f0;
    }
    return arg0;
}


s32 func_800FB914(s32 arg0) {
    if (arg0 == 0) {
        D_801293F8 = 0;
        D_801293FC = -2;
        D_80129404 = 0.0f;
        D_80129400 = D_80129404;
        return 1;
    }
    if ((arg0 & 0x8000) || ((arg0 & 0xF) >= D_801293F8)) {
        D_801293F8 = arg0 & 0xF;
        D_801293FC = -2;
        D_80129404 = 0.0f;
        D_80129400 = D_80129404;
        return 1;
    }
    return 0;
}

/* FACTORY: 5/49, structure + registers exact. Residue is three commutative-operand parities that
   are invariant to source order (retested both spellings, zero change): addu $a0,$v1,$t0 vs
   $t0,$v1, and c.eq.s $f4,$f0 vs $f0,$f4 at both literal compares, plus the addu/sw schedule
   swap at the 9999 arm. Dropping the counter local (D_801293FC += 2 inline) is what took this
   from 21 to 5 -- it is what frees $a0 for var_a0; do not reintroduce a named temp. */
#ifdef MIPS_TO_C
/* FACTORY: 48/49, single commutative addu operand orientation (base+idx with store-forwarded zero index; both source orders canonicalize to idx-first, ROM has base-first) */
void func_800FB9B4(void) {
    f32 *vec;
    f32 *ptr;
    s32 idx;

    if (D_801293F8 != 0) {
        vec = D_801242B4[D_801293F8];
        D_801293FC += 2;
        ptr = (f32 *) ((s32) vec + D_801293FC * 4);
        if (*ptr == 8888.0f) {
            D_801293F8 = 0;
            D_801293FC = -2;
            D_80129404 = 0.0f;
            D_80129400 = D_80129404;
            return;
        }
        if (*ptr == 9999.0f) {
            ptr = (f32 *) ((D_801293FC = 0) * 4 + (s32) vec);
        }
        D_80129400 = *ptr;
        D_80129404 = ptr[1];
    }
}
#elif defined(PORT)
/* PORT: camera-shake playback tick -- the factory-guarded draft above,
 * byte-for-byte. D_801242B4 is emitted as a native pointer array on this
 * build and its shake tables are value-preserving u32 words, so reading
 * them through f32* works unchanged (8888.0/9999.0 sentinels included). */
void func_800FB9B4(void) {
    f32 *var_a0;
    f32 var_f0;
    f32 *temp_v1;

    if (D_801293F8 != 0) {
        temp_v1 = D_801242B4[D_801293F8];
        D_801293FC += 2;
        var_a0 = &temp_v1[D_801293FC];
        var_f0 = *var_a0;
        if (var_f0 == 8888.0f) {
            D_801293F8 = 0;
            D_801293FC = -2;
            D_80129404 = 0.0f;
            D_80129400 = D_80129404;
            return;
        }
        if (var_f0 == 9999.0f) {
            D_801293FC = 0;
            var_a0 = &temp_v1[D_801293FC];
            var_f0 = *var_a0;
        }
        D_80129400 = var_f0;
        D_80129404 = var_a0[1];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FB9B4.s")
#endif

/* The empty parameter list is load-bearing: func_800FC804 passes its own arg0
 * to every one of these and the ROM reloads it into $a0 before the jump table.
 * The definitions take no parameter, so K&R `()` is what lets the call sites
 * pass it; `(void)` costs func_800FC804 that one `lw $a0, 0x18($sp)`. */
void func_800FBA78() {
    func_801DC98C_ovl17();
}


void func_800FBA98() {
    D_80129150 = D_801291B0;
    D_80129270 = D_801292F0;
    func_800FA438(D_80129138, &D_801291B0);
    func_800FA5C0(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA608(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA7EC(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA92C(D_80129138, &D_801291B0, &D_801292F0);
    func_800FAC74(&D_801292B0, &D_801291B0, &D_801292F0);
    func_800FA2D4(&D_801291B0, &D_801292B0);
}

#ifdef PORT
/* Free-look camera step: snapshot the live cam state and output block
 * (D_80129150/D_80129270 saves; D_801292B0 is now a whole 0x3C-byte object,
 * see src/pc/pc_bss_whole.c), aim a scratch output D_80129330 at the
 * config's target raised by unk14, place the eye with the same yaw/pitch
 * math as func_800FA608's PORT arm, then run the standard smoothing/publish
 * pair and write the resolved eye/at fields back into the config. */
void func_800FBBB8(void) {
    extern struct Ovl2CamOut D_80129330;
    Camera *cam = D_800D799C->data.cam;
    Vector dir;
    Vector diff;
    Vector axis;

    D_80129150 = D_80129210;
    D_80129270 = D_801292B0;
    D_80129330.focusX = D_801292B0.focusX;
    D_80129330.focusZ = D_801292B0.focusZ;
    D_80129330.focusY = D_801292B0.focusY + D_80129210.heightOffset;
    dir.x = cosf((D_80129210.yaw * 3.1415927f) / 180.0f);
    dir.z = -sinf((D_80129210.yaw * 3.1415927f) / 180.0f);
    dir.y = 0.0f;
    lbvector_Scale(&dir, -D_80129210.eyeDistance);
    lbvector_Add(&dir, (Vector *) &D_80129330.focusX);
    lbvector_Diff(&diff, (Vector *) &D_80129330.focusX, &dir);
    vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &diff, &axis);
    func_800191F8(&diff, &axis, ((D_80129210.pitch - 90.0f) * 3.1415927f) / 180.0f);
    D_80129330.rawEyeX = D_80129330.focusX - diff.x;
    D_80129330.rawEyeY = D_80129330.focusY - diff.y;
    D_80129330.rawEyeZ = D_80129330.focusZ - diff.z;
    func_800FA7EC(0, &D_80129210, &D_80129330);
    func_800FA92C(0, &D_80129210, &D_80129330);
    D_801292B0.atX = D_80129330.atX;
    D_801292B0.atY = D_80129330.atY;
    D_801292B0.atZ = D_80129330.atZ;
    D_801292B0.eyeX = D_80129330.eyeX;
    D_801292B0.eyeY = D_80129330.eyeY;
    D_801292B0.eyeZ = D_80129330.eyeZ;
}
#else
void func_800FBBB8(void) {
    DObj *dobj;
    Vector dir;
    Vector axis;
    Vector diff;
    extern struct Ovl2CamOut D_80129330;

    dobj = D_800D799C->data.dobj;
    D_80129150 = D_80129210;
    D_80129270 = D_801292B0;
    D_80129330.focusX = D_801292B0.focusX;
    D_80129330.focusY = D_801292B0.focusY + D_80129210.heightOffset;
    D_80129330.focusZ = D_801292B0.focusZ;
    dir.x = cosf((D_80129210.yaw * 3.1415927f) / 180.0f);
    dir.z = -sinf((D_80129210.yaw * 3.1415927f) / 180.0f);
    dir.y = 0.0f;
    lbvector_Scale(&dir, -D_80129210.eyeDistance);
    lbvector_Add(&dir, (Vector *) &D_80129330);
    lbvector_Diff(&diff, (Vector *) &D_80129330, &dir);
    vec3_normalized_cross_product((Vector *) ((s32) dobj + 0x54), &diff, &axis);
    func_800191F8(&diff, &axis, ((D_80129210.pitch - 90.0f) * 3.1415927f) / 180.0f);
    D_80129330.rawEyeX = D_80129330.focusX - diff.x;
    D_80129330.rawEyeY = D_80129330.focusY - diff.y;
    D_80129330.rawEyeZ = D_80129330.focusZ - diff.z;
    func_800FA7EC(0, &D_80129210, &D_80129330);
    func_800FA92C(0, &D_80129210, &D_80129330);
    D_801292B0.atX = D_80129330.atX;
    D_801292B0.atY = D_80129330.atY;
    D_801292B0.atZ = D_80129330.atZ;
    D_801292B0.eyeX = D_80129330.eyeX;
    D_801292B0.eyeY = D_80129330.eyeY;
    D_801292B0.eyeZ = D_80129330.eyeZ;
}
#endif


void func_800FBDE8() {
    func_800FBBB8();
    func_800FA2D4(&D_80129210, &D_801292B0);
}

extern Vector D_8012937C;
extern f32 D_801293E0;
extern f32 D_801293E4;
extern f32 D_801293E8;
extern f32 D_801293EC;
extern f32 D_801293F0;
extern f32 D_801293F4;

void func_800FBE1C(void) {
    Camera *cam;

    cam = D_800D799C->data.cam;
    D_801293F0 = 0.0f;
    D_801293EC = D_801293F0;
    D_801293E8 = D_801293EC;
    D_801293E4 = D_801293E8;
    D_801293E0 = D_801293E4;
    D_801293DC[0] = D_801293E0;
    *(Vector *)&D_80129370[0] = cam->viewMtx.lookAt.at;
    D_8012937C = cam->viewMtx.lookAt.eye;
    D_801293F4 = 1.0f;
    D_800D7B38 = D_800D7B20;
}


void func_800FBF18(s32 arg0) {
    struct TrackCameraNode *cam;

#ifdef PORT
    /* native records: index with the real stride (see func_800F8B1C) */
    cam = &((struct TrackKirbyNode *) D_80129114->unk4[arg0].unk0)->unk20;
#else
    cam = &((struct TrackNodeHeader *) D_80129114->unk4)[arg0].unk0->unk20;
#endif
    D_80129210.mode = cam->unk0;
    D_80129210.unk2 = cam->unk1;
    D_80129210.pitch = cam->unk20;
    D_80129210.yaw = cam->unk28;
    D_80129210.eyeDistance = cam->unk30;
    D_80129210.fovy = cam->unk38;
    D_80129210.heightOffset = cam->unk40;
    D_80129210.eyeXClampEnable = cam->unk2;
    D_80129210.eyeYClampEnable = cam->unk3;
    D_80129210.eyeZClampEnable = cam->unk4;
    D_80129210.pitchLimitEnable = cam->unk6;
    D_80129210.yawLimitEnable = cam->unk7;
    D_80129210.manualOrbitEnable = cam->unk8;
    D_80129210.unk1F = cam->unk9;
    D_80129210.eyeXMin = cam->unk48;
    D_80129210.eyeXMax = cam->unk4C;
    D_80129210.eyeYMin = cam->unk50;
    D_80129210.eyeYMax = cam->unk54;
    D_80129210.eyeZMin = cam->unk58;
    D_80129210.eyeZMax = cam->unk5C;
    D_80129210.pitchMin = cam->unk60;
    D_80129210.pitchMax = cam->unk64;
    D_80129210.yawMin = cam->unk68;
    D_80129210.yawMax = cam->unk6C;
    D_80129210.atXOverride = cam->unkC;
    D_80129210.atYOverride = cam->unk10;
    D_80129210.atZOverride = cam->unk14;
    D_80129210.near = cam->unk18;
    D_80129210.far = cam->unk1C;
    D_80129210.orbitYawLimit = cam->unkA;
}

/* FACTORY: 20/74, length and control flow exact. Residue is one cyclic FP rotation seeded at the
   *arg1 load (ROM temp_f2=$f2/temp_f14=$f14/temp_f12=$f12; IDO gives $f12/$f0/$f14) plus the
   three c.eq.s operand orders. Retested literal-first spelling on all three compares: zero
   change, so c.eq.s operand order is invariant like mul.s and addu. Hoisting
   temp_f12 = *arg0 + 20000.0f ABOVE the *arg2 store is what took this from 51 to 20 (the store
   may alias, so IDO cannot sink the load past it) -- keep that order.
   Re-confirmed 2026-08-23 via verify.py in-place: still exactly 20/74, the
   same cyclic FP register rotation ($f2/$f12/$f0/$f14 permuted throughout).
   Genuine temp-rotation floor. */
#ifdef NON_MATCHING
s32 func_800FC03C(f32 *arg0, f32 *arg1, f32 *arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f14;
    f32 temp_f12;

    temp_f0 = *arg2;
    if (temp_f0 == 9999.0f) {
        *arg0 = *arg1;
        return 1;
    }
    temp_f2 = *arg1;
    if ((temp_f2 == 9999.0f) || (temp_f2 == -9999.0f)) {
        return 1;
    }
    temp_f14 = temp_f2 + 20000.0f;
    temp_f12 = *arg0 + 20000.0f;
    *arg2 = temp_f0 + D_801293F4;
    if (20.0f <= *arg2) {
        *arg2 = 20.0f;
    }
    if (temp_f12 < temp_f14) {
        temp_f12 += *arg2;
        if (temp_f14 <= temp_f12) {
            *arg2 = 9999.0f;
            *arg0 = *arg1;
            return 1;
        }
    } else {
        temp_f12 -= *arg2;
        if (temp_f12 <= temp_f14) {
            *arg2 = 9999.0f;
            *arg0 = *arg1;
            return 1;
        }
    }
    *arg0 = temp_f12 - 20000.0f;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC03C.s")
#endif
#ifdef NON_MATCHING
s32 func_800FC164(struct Ovl2CamState *arg0) {
    f32 sp30;
    f32 sp2C;
    s32 count;
    s32 ret;
    Camera *cam;

    cam = D_800D799C->data.cam;
    count = 0;
    sp30 = *(s32 *) &D_8012940C * 0.01f;
    sp2C = D_80129408 * 0.01f;
    if (func_800FC03C(&D_80129370[0], &D_801292C8[0], &D_801293DC[0]) != 0) {
        count = 1;
    }
    if (func_800FC03C(&D_80129370[1], &D_801292C8[1], &D_801293DC[1]) != 0) {
        count += 1;
    }
    if (func_800FC03C(&D_80129370[2], &D_801292C8[2], &D_801293DC[2]) != 0) {
        count += 1;
    }
    if (func_800FC03C(&D_80129370[3], &D_801292C8[3], &D_801293DC[3]) != 0) {
        count += 1;
    }
    if (func_800FC03C(&D_80129370[4], &D_801292C8[4], &D_801293DC[4]) != 0) {
        count += 1;
    }
    if (func_800FC03C(&D_80129370[5], &D_801292C8[5], &D_801293DC[5]) != 0) {
        count += 1;
    }
    D_800D7B38 = D_800D7B20;
    cam->viewMtx.lookAt.at.x = (D_80129400 * sp2C) + D_80129370[0];
    cam->viewMtx.lookAt.at.y = (D_80129404 * sp2C) + D_80129370[1];
    cam->viewMtx.lookAt.at.z = D_80129370[2];
    cam->viewMtx.lookAt.eye.x = (D_80129400 * sp30) + D_80129370[3];
    cam->viewMtx.lookAt.eye.y = (D_80129404 * sp30) + D_80129370[4];
    cam->viewMtx.lookAt.eye.z = D_80129370[5];
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    ret = 0;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    cam->perspMtx.persp.fovy = arg0->fovy;
    cam->perspMtx.persp.near = arg0->near;
    cam->perspMtx.persp.far = arg0->far;
    if (count == 6) {
        ret = 1;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC164.s")
#endif
void func_800FC3D8() {
    D_80129150 = D_801291B0;
    D_80129270 = D_801292F0;
    func_800FA438(D_80129138, &D_801291B0);
    func_800FA5C0(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA608(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA7EC(D_80129138, &D_801291B0, &D_801292F0);
    func_800FA92C(D_80129138, &D_801291B0, &D_801292F0);
    func_800FAC74(&D_801292B0, &D_801291B0, &D_801292F0);
    if (func_800FC164(&D_801291B0) != 0) {
        D_800D7088 = 2;
    }
}


void func_800FC500() {
    func_800FBBB8();
    if (func_800FC164(&D_80129210) != 0) {
        D_800D7088 = 0xB;
    }
}


void func_800FC53C(void) {
    Camera *cam;
    f32 temp_f0;
    f32 temp_f2;

    cam = D_800D799C->data.cam;
    func_800FA438(D_80129138, &D_801291B0);
    temp_f0 = *(s32 *) &D_8012940C * 0.01f;
    temp_f2 = D_80129408 * 0.01f;
    cam->viewMtx.lookAt.at.x += D_80129400 * temp_f2;
    cam->viewMtx.lookAt.at.y += D_80129404 * temp_f2;
    cam->viewMtx.lookAt.eye.x += D_80129400 * temp_f0;
    cam->viewMtx.lookAt.eye.y += D_80129404 * temp_f0;
    cam->perspMtx.persp.fovy = D_801291B0.fovy;
    cam->perspMtx.persp.near = D_801291B0.near;
    cam->perspMtx.persp.far = D_801291B0.far;
}

#ifdef MIPS_TO_C
/* FACTORY: 25/117. Structure/offsets solved: DObj was the wrong payload type -- 0x3C..0x53 are Camera.viewMtx.lookAt.eye/.at (0x48=at, drifted by D_80129408; 0x3C=eye, drifted by D_8012940C) and 0x74 is timeRemaining, and the (s32)&D_800D7B38+0x18 cast is what puts the save block base in a register with %lo(sym+0x18) and 0x0.. offsets. Residue: IDO CSEs the D_800D7B38 copy base into 'addiu v1,a2,24' where the ROM re-materialises lui/addiu %lo(D_800D7B38+0x18) in each arm, which then rotates the copy's temp registers. No source spelling reached it in 5 tries (whole-struct copy, two-Vector copy, per-branch save, u8*/s32/struct-ptr casts); a separate D_800D7B50 symbol would do it but is not in symbol_addrs.txt */
void func_800FC62C(GObj *arg0) {
    Camera *cam;
    struct Ovl2CamPos *save;
    f32 tf0;
    f32 tf2;
    extern s32 D_800D6B54;

    cam = D_800D799C->data.cam;
    D_800D7B38 = D_800D7B20;
    if (D_800D6B54 == 0) {
        animUpdateCameraAnimation(arg0);
        if (cam->timeRemaining == -3.4028235e38f) {
            save = (struct Ovl2CamPos *) ((s32) &D_800D7B38 + 0x18);
            cam->viewMtx.lookAt.at.x = save->unk0.x;
            cam->viewMtx.lookAt.at.y = save->unk0.y;
            cam->viewMtx.lookAt.at.z = save->unk0.z;
            cam->viewMtx.lookAt.eye.x = save->unkC.x;
            cam->viewMtx.lookAt.eye.y = save->unkC.y;
            cam->viewMtx.lookAt.eye.z = save->unkC.z;
        } else {
            save = (struct Ovl2CamPos *) ((s32) &D_800D7B38 + 0x18);
            save->unk0.x = cam->viewMtx.lookAt.at.x;
            save->unk0.y = cam->viewMtx.lookAt.at.y;
            save->unk0.z = cam->viewMtx.lookAt.at.z;
            save->unkC.x = cam->viewMtx.lookAt.eye.x;
            save->unkC.y = cam->viewMtx.lookAt.eye.y;
            save->unkC.z = cam->viewMtx.lookAt.eye.z;
        }
        tf0 = *(s32 *) &D_8012940C * 0.01f;
        tf2 = D_80129408 * 0.01f;
        cam->viewMtx.lookAt.at.x += D_80129400 * tf2;
        D_800D7B20.unk0.x = cam->viewMtx.lookAt.at.x;
        cam->viewMtx.lookAt.at.y += D_80129404 * tf2;
        D_800D7B20.unk0.y = cam->viewMtx.lookAt.at.y;
        D_800D7B20.unk0.z = cam->viewMtx.lookAt.at.z;
        cam->viewMtx.lookAt.eye.x += D_80129400 * tf0;
        D_800D7B20.unkC.x = cam->viewMtx.lookAt.eye.x;
        cam->viewMtx.lookAt.eye.y += D_80129404 * tf0;
        D_800D7B20.unkC.y = cam->viewMtx.lookAt.eye.y;
        D_800D7B20.unkC.z = cam->viewMtx.lookAt.eye.z;
    }
}
#elif defined(PORT)
/* Camera animation + drift step (draft above; m2c typed the payload as a
 * DObj, but the asm offsets 0x3C..0x50 are Camera.viewMtx.lookAt.eye/.at
 * and 0x74 is Camera.timeRemaining -- decoded from the raw asm). Copies
 * the live pair into the previous-frame slot, runs the camera anim, and
 * while D_800D6B54 is clear applies the pan drift to eye/at (x/y only)
 * and mirrors them into D_800D7B20. The six floats at D_800D7B38+0x18
 * park the live pair across an anim (restored when timeRemaining hits
 * the -FLT_MAX end marker). */
void func_800FC62C(GObj *arg0) {
    extern s32 D_800D6B54;
    Camera *cam = D_800D799C->data.cam;
    f32 *save = (f32 *) ((u8 *) &D_800D7B38 + 0x18);
    f32 tf0, tf2;

    D_800D7B38.unk0 = D_800D7B20.unk0;
    D_800D7B38.unkC = D_800D7B20.unkC;
    if (D_800D6B54 == 0) {
        animUpdateCameraAnimation(arg0);
        if (cam->timeRemaining == -3.4028235e38f) {
            cam->viewMtx.lookAt.eye.x = save[0];
            cam->viewMtx.lookAt.eye.y = save[1];
            cam->viewMtx.lookAt.eye.z = save[2];
            cam->viewMtx.lookAt.at.x = save[3];
            cam->viewMtx.lookAt.at.y = save[4];
            cam->viewMtx.lookAt.at.z = save[5];
        } else {
            save[0] = cam->viewMtx.lookAt.eye.x;
            save[1] = cam->viewMtx.lookAt.eye.y;
            save[2] = cam->viewMtx.lookAt.eye.z;
            save[3] = cam->viewMtx.lookAt.at.x;
            save[4] = cam->viewMtx.lookAt.at.y;
            save[5] = cam->viewMtx.lookAt.at.z;
        }
        tf0 = *(s32 *) &D_8012940C * 0.01f;
        tf2 = (f32) D_80129408 * 0.01f;
        cam->viewMtx.lookAt.eye.x += D_80129400 * tf2;
        D_800D7B20.unk0.x = cam->viewMtx.lookAt.eye.x;
        cam->viewMtx.lookAt.eye.y += D_80129404 * tf2;
        D_800D7B20.unk0.y = cam->viewMtx.lookAt.eye.y;
        D_800D7B20.unk0.z = cam->viewMtx.lookAt.eye.z;
        cam->viewMtx.lookAt.at.x += D_80129400 * tf0;
        D_800D7B20.unkC.x = cam->viewMtx.lookAt.at.x;
        cam->viewMtx.lookAt.at.y += D_80129404 * tf0;
        D_800D7B20.unkC.y = cam->viewMtx.lookAt.at.y;
        D_800D7B20.unkC.z = cam->viewMtx.lookAt.at.z;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FC62C.s")
#endif

extern u32 D_800D708C;
extern s32 D_800D7B68;

void func_800FC804(s32 arg0) {
    func_800FB9B4();
    switch (D_800D7088 & 0xFF) {
        case 2:
            func_800FBA98(arg0);
            break;
        case 3:
            func_800FC3D8(arg0);
            break;
        case 4:
            func_800FC500(arg0);
            break;
        case 11:
            func_800FBDE8(arg0);
            break;
        case 6:
            D_800D708C -= (u32) gameTicksPerDraw;
            if ((s32) D_800D708C >= 0) {
                D_800D799C->data.cam->viewMtx.lookAt.at.y += D_800E3210[0];
            }
            D_800D7B38 = D_800D7B20;
            break;
        case 13:
            func_800FC62C(arg0);
            break;
        case 12:
            func_800FBA78(arg0);
            break;
        default:
            animUpdateCameraAnimation(arg0);
            break;
        case 0:
        case 1:
        case 5:
            break;
    }
    D_800D7B68 = 1;
}
