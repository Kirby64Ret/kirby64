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

struct Ovl2CamState {
    /* 0x00 */ s16 unk0;
    /* 0x02 */ s16 unk2;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ u8 unk18;
    /* 0x19 */ u8 unk19;
    /* 0x1A */ u8 unk1A;
    /* 0x1B */ u8 unk1B;
    /* 0x1C */ u8 unk1C;
    /* 0x1D */ u8 unk1D;
    /* 0x1E */ u8 unk1E;
    /* 0x1F */ u8 unk1F;
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
};

struct Ovl2CamOut {
    /* 0x00 */ f32 unk0;
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ f32 unk2C;
    /* 0x30 */ u32 unk30;
    /* 0x34 */ u32 unk34;
    /* 0x38 */ u32 unk38;
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

void func_800F8E6C(s32 *arg0) {
    s32 sp78;
    s32 sp74;
    f32 sp64;
    f32 sp5C;
    ? sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    s32 *sp34;
    f32 *sp2C;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    s32 *temp_t0;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_t1;
    s32 var_a3;
    void *temp_a1;
    void *temp_v1;

    temp_a2 = *arg0;
    temp_t0 = &D_800E5F90[temp_a2];
    temp_t1 = *temp_t0;
    if (temp_t1 != -1) {
        temp_v1 = D_80129114;
        var_a3 = temp_t1 * 0x10;
        temp_a1 = (temp_v1->unk4 + var_a3)->unk4;
        temp_v0 = &D_800E6BD0[temp_a2];
        temp_f0 = *temp_v0;
        *temp_v0 = temp_f0 + ((D_800E64D0[temp_a2] * 0.1f) / temp_a1->unkC);
        var_f0 = *temp_v0;
        if (temp_f0 != var_f0) {
            D_800E6D90[temp_a2] = temp_f0;
            sp2C = temp_v0;
            sp74 = temp_a2;
            sp34 = temp_t0;
            func_800F8B1C(temp_a2, temp_a1, temp_a2, var_a3);
            func_800F8A24(sp74);
            var_f0 = *temp_v0;
            var_a3 = *temp_t0 * 0x10;
        } else {
            D_800E6D90[temp_a2] = var_f0;
        }
        temp_a1_2 = (temp_v1->unk4 + var_a3)->unk4;
        sp2C = temp_v0;
        sp78 = temp_a1_2;
        mtxGetInterpolatedPosition(&sp64, temp_a1_2, var_f0, var_a3);
        gEntitiesNextPosXArray[temp_a2] = sp64;
        gEntitiesNextPosZArray[temp_a2] = sp6C;
        sp4C = 0.0f;
        sp50 = 0.0f;
        sp54 = D_800E6A10[temp_a2];
        func_8001E344(&sp58, sp78, *sp2C);
        sp5C = 0.0f;
        temp_f0_2 = vec3_abs_angle_diff(&sp4C, &sp58);
        temp_v0_2 = &D_800E17D0[temp_a2];
        *temp_v0_2 = temp_f0_2;
        if (temp_f0_2 < 0.0f) {
            *temp_v0_2 += 6.2831855f;
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

void func_800F90C0(s32 arg0, f32 arg1) {
    s8 sp3F;
    s8 sp3E;
    s8 sp3D;
    ? sp3A;
    ? sp34;
    ? *var_v0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f2;
    f32 var_f4;
    s16 temp_a1;
    s16 temp_v1;
    s32 temp_f6;
    s32 var_a1;
    s32 var_f18;
    s8 *var_a0_2;
    s8 *var_v1_2;
    u8 *temp_t0;
    u8 *temp_t1;
    u8 *var_a0;
    u8 *var_v1;
    u8 temp_a1_2;
    u8 temp_t8;
    u8 var_a2;
    u8 var_a2_2;
    u8 var_a3;
    void *temp_v0;
    void *var_v0_2;

    temp_v0 = *(D_80129114->unk4 + (D_800E5F90[arg0] * 0x10));
    if (temp_v0->unkE & 0x10) {
        var_a2 = temp_v0->unk9;
        temp_a1 = temp_v0->unk10;
        temp_f6 = gEntitiesNextPosYArray[arg0];
        var_a3 = temp_v0->unkA;
        if (temp_f6 >= temp_a1) {
            func_800A5404(arg1, (var_a2 * 0xC) + &D_800D478C, var_a2, var_a3);
            return;
        }
        temp_v1 = temp_v0->unk12;
        if (temp_v1 >= temp_f6) {
            func_800A5404(arg1, (var_a3 * 0xC) + &D_800D478C, var_a2, var_a3);
            return;
        }
        var_f2 = (temp_a1 - temp_f6) / (temp_a1 - temp_v1);
        goto block_9;
    }
    temp_f2 = D_800E6BD0[arg0];
    if (temp_f2 <= 0.5f) {
        var_a2 = temp_v0->unk9;
        var_a3 = temp_v0->unkA;
        var_f2 = 2.0f * temp_f2;
    } else {
        var_a2 = temp_v0->unkA;
        var_a3 = temp_v0->unkB;
        var_f2 = (temp_f2 - 0.5f) * 2.0f;
    }
block_9:
    temp_t1 = (var_a2 * 0xC) + &D_800D478C;
    temp_t0 = (var_a3 * 0xC) + &D_800D478C;
    var_v1 = temp_t0;
    var_a0 = temp_t1;
    var_v0 = &sp34;
    do {
        temp_a1_2 = *var_a0;
        temp_t8 = *var_v1;
        var_v1 += 1;
        var_f4 = temp_a1_2;
        if (temp_a1_2 < 0) {
            var_f4 += 4294967296.0f;
        }
        var_a0 += 1;
        var_v0 += 1;
        var_v0->unk-1 = ((temp_t8 - temp_a1_2) * var_f2) + var_f4;
    } while (var_v0 < &sp3A);
    var_v1_2 = temp_t0 + 6;
    var_a0_2 = temp_t1 + 6;
    var_v0_2 = &sp3A + 1;
    var_a1 = *var_a0_2 + 0x64;
    var_a2_2 = *var_v1_2 + 0x64;
    var_f18 = var_a2_2 - var_a1;
    if (var_v0_2 != &sp3D) {
        do {
            var_v0_2 += 1;
            temp_f14 = var_a1;
            temp_f16 = var_f18 * var_f2;
            var_a1 = var_a0_2->unk1 + 0x64;
            var_a2_2 = var_v1_2->unk1 + 0x64;
            var_f18 = var_a2_2 - var_a1;
            var_v1_2 += 1;
            var_a0_2 += 1;
            var_v0_2->unk-2 = (temp_f14 + temp_f16) - 100.0f;
        } while (var_v0_2 != &sp3D);
    }
    temp_f14_2 = var_a1;
    var_v0_2->unk-1 = (temp_f14_2 + (var_f18 * var_f2)) - 100.0f;
    sp3E = 0;
    sp3D = 0;
    sp3F = 0;
    func_800A5404(temp_f14_2, (bitwise void *) arg1, &sp34, var_a2_2, &sp3D);
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

f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3) {
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f2;
    f32 var_f2_2;
    s32 temp_t1;
    s32 temp_v0;
    u8 temp_v1_2;
    void *temp_v1;

    if (arg0 < 0) {
        return 9999.0f;
    }
    if (arg2 < 0) {
        return 9999.0f;
    }
    temp_v0 = D_80129114->unk4;
    temp_v1 = temp_v0 + (arg0 * 0x10);
    temp_f16 = temp_v1->unk4->unkC;
    if (arg0 == arg2) {
        if (temp_v1->unkE != 0) {
            temp_f18_2 = arg3 - arg1;
            if (arg3 <= arg1) {
                var_f2_2 = (1.0f - arg1) + arg3;
            } else {
                var_f2_2 = ((1.0f - arg3) + arg1) * -1.0f;
            }
            if (temp_f18_2 < 0.0f) {
                var_f0 = -temp_f18_2;
            } else {
                var_f0 = temp_f18_2;
            }
            if (var_f2_2 < 0.0f) {
                var_f12 = -var_f2_2;
            } else {
                var_f12 = var_f2_2;
            }
            if (var_f0 < var_f12) {
                return temp_f18_2 * 10.0f * temp_f16;
            }
            return var_f2_2 * 10.0f * temp_f16;
        }
        return (arg3 - arg1) * temp_f16 * 10.0f;
    }
    temp_t1 = (arg0 * D_80129118) + arg2;
    temp_v1_2 = *(temp_t1 + D_8012912C);
    if (temp_v1_2 == 0) {
        return 9999.0f;
    }
    temp_f0 = (temp_v0 + (arg2 * 0x10))->unk4->unkC;
    if (*D_80129130 == 0.0f) {
        temp_f18 = (D_80129130[temp_v1_2 & 0x7F] + ((arg1 * temp_f16) + ((1.0f - arg3) * temp_f0))) * -10.0f;
        temp_f2 = (D_80129130[*(temp_t1 + (D_80129118 * D_80129118) + D_8012912C) & 0x7F] + (((1.0f - arg1) * temp_f16) + (arg3 * temp_f0))) * 10.0f;
        if (temp_f18 < 0.0f) {
            var_f0_2 = -temp_f18;
        } else {
            var_f0_2 = temp_f18;
        }
        if (temp_f2 < 0.0f) {
            var_f12_2 = -temp_f2;
        } else {
            var_f12_2 = temp_f2;
        }
        if (var_f0_2 < var_f12_2) {
            return temp_f18;
        }
        return temp_f2;
    }
    temp_f2_2 = D_80129130[temp_v1_2 & 0x7F];
    if (temp_v1_2 & 0x80) {
        var_f2 = (temp_f2_2 + ((arg1 * temp_f16) + ((1.0f - arg3) * temp_f0))) * -10.0f;
    } else {
        var_f2 = (temp_f2_2 + (((1.0f - arg1) * temp_f16) + (arg3 * temp_f0))) * 10.0f;
    }
    return var_f2;
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

s32 func_800F9974(s32 *arg0, f32 *arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f2;
    s16 temp_a2_2;
    s16 temp_a2_4;
    s32 temp_a2;
    s32 temp_a2_3;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_t1;
    s32 var_t1_2;
    u8 temp_v1;
    u8 temp_v1_2;
    u8 var_v1_2;
    void *var_t0;
    void *var_t0_2;
    void *var_v1;

    temp_v0 = *arg0;
    if (temp_v0 < 0) {
        return 0x270F;
    }
    temp_f0 = *arg1;
    if ((temp_f0 < 0.0f) || (temp_f0 > 1.0f)) {
        return 0x270F;
    }
    temp_a3 = D_80129114->unk4;
    temp_a2 = temp_v0 * 0x10;
    temp_f16 = arg2 * 0.1f;
    var_v1 = temp_a2 + temp_a3;
    temp_f2 = var_v1->unk4->unkC;
    temp_f12 = temp_f0 + (temp_f16 / temp_f2);
    if ((temp_a3 + temp_a2)->unkE != 0) {
        *arg1 = temp_f12;
        if (temp_f12 < 0.0f) {
            *arg1 = 1.0f + temp_f12;
        }
        if (temp_f12 > 1.0f) {
            *arg1 = temp_f12 - 1.0f;
        }
        return 0;
    }
    if ((temp_f12 >= 0.0f) && (temp_f12 <= 1.0f)) {
        *arg1 = temp_f12;
        return 0;
    }
    if (temp_f12 < 0.0f) {
        var_f12 = (arg2 * -0.1f) - (temp_f0 * temp_f2);
loop_16:
        temp_a2_2 = var_v1->unkC;
        var_t1 = 0;
        if (temp_a2_2 == 0) {
            return 1;
        }
        var_t0 = var_v1->unk8;
        if (temp_a2_2 > 0) {
loop_19:
            temp_v1 = var_t0->unk0;
            if ((temp_v1 != 0) || (var_t0->unk1 & 0xF0)) {
                var_t1 += 1;
                if (temp_v1 != 0) {
                    return 1;
                }
                var_t0 += 4;
                if (var_t1 == temp_a2_2) {
                    goto block_24;
                }
                goto loop_19;
            }
            goto block_24;
        }
block_24:
        if (var_t1 == temp_a2_2) {
            return 1;
        }
        var_v1_2 = var_t0->unk2;
        temp_a2_3 = var_v1_2 * 0x10;
        temp_f0_2 = (temp_a3 + temp_a2_3)->unk4->unkC;
        if (var_f12 <= temp_f0_2) {
            var_f2 = (temp_f0_2 - var_f12) / temp_f0_2;
            goto block_43;
        }
        var_f12 -= temp_f0_2;
        var_v1 = temp_a3 + temp_a2_3;
        goto loop_16;
    }
    var_f12_2 = temp_f16 - (temp_f2 - (temp_f0 * temp_f2));
loop_30:
    temp_a2_4 = var_v1->unkC;
    if (temp_a2_4 == 0) {
        return 1;
    }
    var_t1_2 = temp_a2_4 - 1;
    var_t0_2 = (var_v1->unk8 + (temp_a2_4 * 4)) - 4;
    temp_t2 = var_v1->unk4->unk2 - 1;
    if (var_t1_2 >= 0) {
loop_33:
        temp_v1_2 = var_t0_2->unk0;
        if ((temp_t2 != temp_v1_2) || (var_t0_2->unk1 & 0xF0)) {
            var_t1_2 += 1;
            if (temp_t2 != temp_v1_2) {
                return 1;
            }
            var_t0_2 -= 4;
            if (var_t1_2 < 0) {
                goto block_38;
            }
            goto loop_33;
        }
        goto block_38;
    }
block_38:
    if (var_t1_2 < 0) {
        return 1;
    }
    var_v1_2 = var_t0_2->unk2;
    temp_a2_5 = var_v1_2 * 0x10;
    temp_f0_3 = (temp_a3 + temp_a2_5)->unk4->unkC;
    if (var_f12_2 <= temp_f0_3) {
        var_f2 = var_f12_2 / temp_f0_3;
block_43:
        if (*((temp_v0 * D_80129118) + var_v1_2 + D_8012912C) == 0) {
            return 1;
        }
        *arg0 = var_v1_2;
        *arg1 = var_f2;
        return 0;
    }
    var_f12_2 -= temp_f0_3;
    var_v1 = temp_a3 + temp_a2_5;
    goto loop_30;
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

f32 func_800F9C94(s32 arg0, s32 arg1, f32 arg2, f32 arg3, s32 arg4) {
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp48;
    f32 sp44;
    u32 sp3C;
    f32 *var_s0;
    f32 *var_v0;
    f32 *var_v0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f16;
    f32 temp_f18;
    f32 var_f14;
    f32 var_f20;
    f32 var_f2;
    s32 var_v1;

    var_f20 = arg2;
    if (arg3 > 2e-05) {
        temp_f18 = arg3 * 0.5f;
        var_f14 = temp_f18 + var_f20;
        temp_f16 = var_f20 - temp_f18;
        if (arg4 == 1) {
            if (var_f20 < 0.0f) {
                var_f20 += 1.0f;
            } else if (var_f20 > 1.0f) {
                var_f20 -= 1.0f;
            }
            if (var_f14 < 0.0f) {
                var_f14 += 1.0f;
                goto block_10;
            }
            sp54 = var_f14;
            if (var_f14 > 1.0f) {
                var_f14 -= 1.0f;
block_10:
                sp54 = var_f14;
            }
            if (temp_f16 < 0.0f) {
                sp58 = temp_f16 + 1.0f;
            } else {
                sp58 = temp_f16;
                if (temp_f16 > 1.0f) {
                    sp58 = temp_f16 - 1.0f;
                }
            }
        } else {
            if (var_f20 < 0.0f) {
                var_f20 = 0.0f;
            } else if (var_f20 > 1.0f) {
                var_f20 = 1.0f;
            }
            if (var_f14 < 0.0f) {
                sp54 = 0.0f;
            } else {
                sp54 = var_f14;
                if (var_f14 > 1.0f) {
                    sp54 = 1.0f;
                }
            }
            if (temp_f16 < 0.0f) {
                sp58 = 0.0f;
            } else {
                sp58 = temp_f16;
                if (temp_f16 > 1.0f) {
                    sp58 = 1.0f;
                }
            }
        }
        sp44 = temp_f18;
        var_f2 = func_800F9C54(arg3, var_f14, arg0, var_f20, arg1);
        var_s0 = &sp54;
        var_v0 = &sp48;
        do {
            sp50 = var_f2;
            sp3C = var_v0;
            temp_f0 = func_800F9C54((bitwise f32) arg0, *var_s0, arg1);
            var_v0 += 4;
            var_s0 += 4;
            var_v0->unk-4 = temp_f0;
        } while (var_v0 < &sp50);
        var_v1 = 0;
        var_v0_2 = &sp48;
        do {
            temp_f0_2 = *var_v0_2;
            var_v0_2 += 4;
            if (temp_f0_2 < var_f2) {
                var_f20 = *(&sp54 + var_v1);
                var_f2 = temp_f0_2;
            }
            var_v1 += 4;
        } while (var_v0_2 != &sp50);
        var_f20 = func_800F9C94(arg0, arg1, var_f20, sp44, arg4);
    }
    return var_f20;
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

#ifdef MIPS_TO_C

void func_800F9FDC(void *arg0, Vector *arg1, s32 arg2, s32 arg3) {
    f32 spAC;
    f32 spA8;
    f32 spA0;
    f32 sp9C;
    f32 sp90;
    f32 sp8C;
    Vector sp7C;
    Vector sp70;
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    f32 *temp_v0;
    f32 temp_f0;
    f32 var_f12;
    f32 var_f20;
    f32 var_f2;
    f32 var_f2_2;
    s16 temp_a0;
    void *temp_v1;

    temp_v0 = arg0->unk10;
    temp_v1 = temp_v0 + (arg2 * 4);
    var_f20 = temp_v1->unk0;
    if (arg2 == 0) {
        var_f2 = *temp_v0;
        var_f20 = var_f2 + 0.002;
    } else {
        var_f2 = temp_v1->unk-4;
    }
    temp_a0 = arg0->unk2;
    if (arg2 >= (temp_a0 - 1)) {
        sp9C = (temp_v0 + (temp_a0 * 4))->unk-4;
        var_f20 = sp9C - 0.002;
    } else {
        sp9C = temp_v1->unk4;
    }
    spA0 = var_f2;
    mtxGetInterpolatedPosition(&sp70, arg0, var_f2);
    mtxGetInterpolatedPosition(&sp7C, arg0, var_f20);
    mtxGetInterpolatedPosition(&sp64, arg0, sp9C);
    spAC = (func_800F9F80(arg1, &sp70, &sp7C) * (var_f20 - spA0)) + spA0;
    spA8 = (func_800F9F80(arg1, &sp7C, &sp64) * (sp9C - var_f20)) + var_f20;
    spAC = func_800F9F10(spAC, arg3);
    spA8 = func_800F9F10(spA8, arg3);
    mtxGetInterpolatedPosition(&sp4C, arg0, spAC);
    mtxGetInterpolatedPosition(&sp40, arg0, spA8);
    mtxGetInterpolatedPosition(&sp58, arg0, var_f20);
    sp8C = utilVec3Dist(&sp4C, arg1);
    sp90 = utilVec3Dist(&sp58, arg1);
    temp_f0 = utilVec3Dist(&sp40, arg1);
    if (sp8C < temp_f0) {
        var_f2_2 = spAC;
        var_f12 = sp8C;
    } else {
        var_f2_2 = spA8;
        var_f12 = temp_f0;
    }
    if (sp90 < var_f12) {
        var_f2_2 = var_f20;
    }
    func_800F9C94(var_f12, sp8C, arg0, arg1, var_f2_2, 0x3CA3D70A, arg3);
}
#elif defined(PORT)
/* PORT: nearest track param around keyframe arg2 for world point arg1, from
 * the m2c sketch above. The sketch's tail call drops the return value the
 * asm actually forwards (func_800FA1D4 consumes it as the entity's initial
 * progress), so this spells it out. The footer (arg0) and its keyframe
 * table unk10 are native on this build. */
f32 func_800F9FDC(void *arg0, Vector *arg1, s32 arg2, s32 arg3) {
    struct TrackFooter *footer = arg0;
    f32 *times = footer->unk10;
    Vector pPrev;
    Vector pCur;
    Vector pNext;
    Vector pA;
    Vector pB;
    Vector pC;
    f32 tPrev;
    f32 tCur;
    f32 tNext;
    f32 tA;
    f32 tB;
    f32 dA;
    f32 dB;
    f32 dC;
    f32 best;
    f32 dMin;
    s16 n;

    tCur = times[arg2];
    if (arg2 == 0) {
        tPrev = times[0];
        tCur = tPrev + 0.002f;
    } else {
        tPrev = times[arg2 - 1];
    }
    n = footer->unk2;
    if (arg2 >= (n - 1)) {
        tNext = times[n - 1];
        tCur = tNext - 0.002f;
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800F9FDC.s")
#endif

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
    cam->viewMtx.lookAt.eye.x = arg1->unk24 + (D_80129400 * temp_f0);
    cam->viewMtx.lookAt.eye.y = arg1->unk28 + (D_80129404 * temp_f0);
    cam->viewMtx.lookAt.eye.z = arg1->unk2C;
    cam->viewMtx.lookAt.at.x = arg1->unk18 + (D_80129400 * temp_f2);
    cam->viewMtx.lookAt.at.y = arg1->unk1C + (D_80129404 * temp_f2);
    cam->viewMtx.lookAt.at.z = arg1->unk20;
    D_800D7B20.unk0 = cam->viewMtx.lookAt.at;
    D_800D7B2C = cam->viewMtx.lookAt.eye;
    cam->perspMtx.persp.fovy = arg0->unk10;
    cam->perspMtx.persp.near = arg0->unk54;
    cam->perspMtx.persp.far = arg0->unk58;
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
    arg1->unk0 = cam->unk0;
    arg1->unk2 = cam->unk1;
    arg1->unk4 = ((cam->unk24 - cam->unk20) * t) + cam->unk20;
    arg1->unk8 = ((cam->unk2C - cam->unk28) * t) + cam->unk28;
    arg1->unkC = ((cam->unk34 - cam->unk30) * t) + cam->unk30;
    arg1->unk10 = ((cam->unk3C - cam->unk38) * t) + cam->unk38;
    arg1->unk14 = ((cam->unk44 - cam->unk40) * t) + cam->unk40;
    arg1->unk18 = cam->unk2;
    arg1->unk19 = cam->unk3;
    arg1->unk1A = cam->unk4;
    arg1->unk1C = cam->unk6;
    arg1->unk1D = cam->unk7;
    arg1->unk1E = cam->unk8;
    arg1->unk1F = cam->unk9;
    arg1->unk20 = cam->unk48;
    arg1->unk24 = cam->unk4C;
    arg1->unk28 = cam->unk50;
    arg1->unk2C = cam->unk54;
    arg1->unk30 = cam->unk58;
    arg1->unk34 = cam->unk5C;
    arg1->unk38 = cam->unk60;
    arg1->unk3C = cam->unk64;
    arg1->unk40 = cam->unk68;
    arg1->unk44 = cam->unk6C;
    arg1->unk48 = cam->unkC;
    arg1->unk4C = cam->unk10;
    arg1->unk50 = cam->unk14;
    arg1->unk54 = cam->unk18;
    arg1->unk58 = cam->unk1C;
    arg1->unk5C = cam->unkA;
}

void func_800FA5C0(s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    arg2->unk0 = gEntitiesNextPosXArray[arg0];
    arg2->unk4 = gEntitiesNextPosYArray[arg0];
    arg2->unk8 = gEntitiesNextPosZArray[arg0];
    arg2->unk4 = arg2->unk4 + arg1->unk14;
}

#ifdef MIPS_TO_C

void func_800FA608(s32 arg0, void *arg1, void *arg2) {
    s32 sp54;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    ? sp38;
    f32 sp2C;
    s16 temp_v0;

    sp54 = D_800D799C->data;
    temp_v0 = arg1->unk0;
    switch (temp_v0) {                              /* irregular */
        case 0:
            sp44 = cosf((arg1->unk8 * 3.1415927f) / 180.0f);
            sp4C = -sinf((arg1->unk8 * 3.1415927f) / 180.0f);
            sp48 = 0.0f;
            break;
        case 1:
            func_8001E344(&sp44, (D_80129114->unk4 + (D_800E5F90[arg0] * 0x10))->unk4, D_800E6BD0[arg0], arg0);
            sp48 = 0.0f;
            lbvector_Normalize(&sp44);
            lbvector_Rotate(&sp44, 2, (arg1->unk8 * 3.1415927f) / 180.0f);
            break;
    }
    lbvector_Scale(&sp44, -arg1->unkC);
    lbvector_Add(&sp44, arg2);
    lbvector_Diff(&sp2C, arg2, &sp44);
    vec3_normalized_cross_product(sp54 + 0x54, &sp2C, &sp38);
    func_800191F8(&sp2C, &sp38, ((arg1->unk4 - 90.0f) * 3.1415927f) / 180.0f);
    arg2->unkC = arg2->unk0 - sp2C;
    arg2->unk10 = arg2->unk4 - sp30;
    arg2->unk14 = arg2->unk8 - sp34;
}
#elif defined(PORT)
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
    switch (arg1->unk0) {
        case 0:
            dir.x = cosf((arg1->unk8 * 3.1415927f) / 180.0f);
            dir.z = -sinf((arg1->unk8 * 3.1415927f) / 180.0f);
            dir.y = 0.0f;
            break;
        case 1:
            func_8001E344(&dir, D_80129114->unk4[D_800E5F90[arg0]].unk4,
                          D_800E6BD0[arg0]);
            dir.y = 0.0f;
            lbvector_Normalize(&dir);
            lbvector_Rotate(&dir, 2, (arg1->unk8 * 3.1415927f) / 180.0f);
            break;
    }
    lbvector_Scale(&dir, -arg1->unkC);
    lbvector_Add(&dir, (Vector *) &arg2->unk0);
    lbvector_Diff(&diff, (Vector *) &arg2->unk0, &dir);
    vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &diff, &axis);
    func_800191F8(&diff, &axis, ((arg1->unk4 - 90.0f) * 3.1415927f) / 180.0f);
    arg2->unkC = arg2->unk0 - diff.x;
    arg2->unk10 = arg2->unk4 - diff.y;
    arg2->unk14 = arg2->unk8 - diff.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA608.s")
#endif

void func_800FA7EC(UNUSED s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;

    arg2->unk30 = 0;
    arg2->unk34 = 0;
    arg2->unk38 = 0;
    arg2->unk24 = arg2->unkC;
    arg2->unk28 = arg2->unk10;
    arg2->unk2C = arg2->unk14;
    if (arg1->unk18 != 0) {
        temp_f0 = arg1->unk20;
        if (arg2->unk24 <= temp_f0) {
            arg2->unk24 = temp_f0;
            arg2->unk30 |= 1;
        }
        temp_f0_2 = arg1->unk24;
        if (temp_f0_2 <= arg2->unk24) {
            arg2->unk24 = temp_f0_2;
            arg2->unk30 |= 2;
        }
    }
    if (arg1->unk19 != 0) {
        temp_f0_3 = arg1->unk28;
        if (arg2->unk28 <= temp_f0_3) {
            arg2->unk28 = temp_f0_3;
            arg2->unk34 |= 1;
        }
        temp_f0_4 = arg1->unk2C;
        if (temp_f0_4 <= arg2->unk28) {
            arg2->unk28 = temp_f0_4;
            arg2->unk34 |= 2;
        }
    }
    if (arg1->unk1A != 0) {
        temp_f0_5 = arg1->unk30;
        if (arg2->unk2C <= temp_f0_5) {
            arg2->unk2C = temp_f0_5;
            arg2->unk38 |= 1;
        }
        temp_f0_6 = arg1->unk34;
        if (temp_f0_6 <= arg2->unk2C) {
            arg2->unk2C = temp_f0_6;
            arg2->unk38 |= 2;
        }
    }
}

#ifdef MIPS_TO_C

void func_800FA92C(s32 arg0, void *arg1, void *arg2) {
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    ? sp40;
    f32 sp3C;
    f32 sp38;
    void *sp28;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f12;
    f32 temp_f14;
    f32 var_f12;
    f32 var_f2;
    s32 var_v0;
    void *temp_a2;

    sp64 = 0;
    sp6C = D_800D799C->data;
    arg2->unk18 = arg2->unk0;
    arg2->unk1C = arg2->unk4;
    arg2->unk20 = arg2->unk8;
    temp_f0 = arg1->unk48;
    if (temp_f0 != 9999.0f) {
        arg2->unk18 = temp_f0;
    }
    temp_f0_2 = arg1->unk4C;
    if (temp_f0_2 != 9999.0f) {
        arg2->unk1C = temp_f0_2 + arg1->unk14;
    }
    temp_f0_3 = arg1->unk50;
    if (temp_f0_3 != 9999.0f) {
        arg2->unk20 = temp_f0_3;
    }
    if (arg1->unk1D != 0) {
        temp_a2 = arg2 + 0x24;
        if ((arg2->unk30 | arg2->unk38) != 0) {
            sp68 = 0;
            sp28 = temp_a2;
            lbvector_Diff(&sp4C, arg2, temp_a2, arg1);
            var_v0 = sp68;
            temp_f12 = (atan2f(sp54, -sp4C) / 3.1415927f) * 180.0f;
            var_f2 = temp_f12;
            if (temp_f12 < 0.0f) {
                var_f2 = temp_f12 + 360.0f;
            }
            temp_f0_4 = arg1->unk40;
            if (var_f2 < temp_f0_4) {
                var_f2 = temp_f0_4;
                var_v0 = 1;
            }
            temp_f0_5 = arg1->unk44;
            if (temp_f0_5 < var_f2) {
                var_f2 = temp_f0_5;
                var_v0 |= 2;
            }
            if (var_v0 != 0) {
                sp3C = var_f2;
                sp4C = -sqrtf((sp54 * sp54) + (sp4C * sp4C));
                sp50 = 0.0f;
                sp54 = 0.0f;
                func_800191F8(0.0f, &sp4C, sp6C + 0x54, (var_f2 * 3.1415927f) / 180.0f);
                lbvector_Add(&sp4C, sp28);
                arg2->unk18 = sp4C;
                arg2->unk20 = sp54;
            }
        }
    }
    if ((arg1->unk1C != 0) && (arg2->unk34 != 0)) {
        lbvector_Diff(&sp4C, arg2 + 0x18, arg2 + 0x24, arg1);
        temp_f14 = arg1->unk38;
        var_f12 = 180.0f - ((atan2f(sqrtf((sp54 * sp54) + (sp4C * sp4C)), sp50) / 3.1415927f) * 180.0f);
        if (var_f12 < temp_f14) {
            var_f12 = temp_f14;
            sp64 = 1;
        }
        temp_f0_6 = arg1->data;
        if (temp_f0_6 < var_f12) {
            var_f12 = temp_f0_6;
            sp64 |= 2;
        }
        if (sp64 != 0) {
            sp38 = var_f12;
            sp50 = 0.0f;
            vec3_normalized_cross_product(var_f12, temp_f14, sp6C + 0x54, &sp4C, &sp40, arg1);
            func_800191F8(sp38, &sp4C, &sp40, ((sp38 - 90.0f) * 3.1415927f) / 180.0f);
            arg2->unk18 = arg2->unk24 + sp4C;
            arg2->unk1C = arg2->unk28 - sp50;
            arg2->unk20 = arg2->unk2C + sp54;
        }
    }
}
#elif defined(PORT)
/* PORT: camera eye yaw/pitch limiting, from asm/nonmatchings/ovl2/ovl2_3/
 * func_800FA92C.s (the m2c sketch above mangles every vector-helper call).
 * arg2->unk18..20 is the eye, +24..2C the look-at target; unk30/34/38 are
 * the clamp flags func_800FA7EC set this tick. Yaw outside
 * [unk40, unk44] and pitch outside [unk38, unk3C] are pulled back onto the
 * limit by rotating the eye offset around the camera up vector (host
 * Camera.viewMtx.lookAt.up, N64 +0x54). */
void func_800FA92C(UNUSED s32 arg0, struct Ovl2CamState *arg1, struct Ovl2CamOut *arg2) {
    Camera *cam = D_800D799C->data.cam;
    Vector d;
    Vector axis;
    s32 flags;
    f32 ang;
    f32 mag;

    arg2->unk18 = arg2->unk0;
    arg2->unk1C = arg2->unk4;
    arg2->unk20 = arg2->unk8;
    if (arg1->unk48 != 9999.0f) {
        arg2->unk18 = arg1->unk48;
    }
    if (arg1->unk4C != 9999.0f) {
        arg2->unk1C = arg1->unk4C + arg1->unk14;
    }
    if (arg1->unk50 != 9999.0f) {
        arg2->unk20 = arg1->unk50;
    }
    if (arg1->unk1D != 0) {
        if ((arg2->unk30 | arg2->unk38) != 0) {
            flags = 0;
            lbvector_Diff(&d, (Vector *) &arg2->unk18, (Vector *) &arg2->unk24);
            ang = (atan2f(d.z, -d.x) / 3.1415927f) * 180.0f;
            if (ang < 0.0f) {
                ang += 360.0f;
            }
            if (ang < arg1->unk40) {
                ang = arg1->unk40;
                flags = 1;
            }
            if (arg1->unk44 < ang) {
                ang = arg1->unk44;
                flags |= 2;
            }
            if (flags != 0) {
                mag = sqrtf((d.z * d.z) + (d.x * d.x));
                d.x = -mag;
                d.y = 0.0f;
                d.z = 0.0f;
                func_800191F8(&d, &cam->viewMtx.lookAt.up,
                              (ang * 3.1415927f) / 180.0f);
                lbvector_Add(&d, (Vector *) &arg2->unk24);
                arg2->unk18 = d.x;
                arg2->unk20 = d.z;
            }
        }
    }
    if ((arg1->unk1C != 0) && (arg2->unk34 != 0)) {
        flags = 0;
        lbvector_Diff(&d, (Vector *) &arg2->unk18, (Vector *) &arg2->unk24);
        ang = 180.0f -
              ((atan2f(sqrtf((d.z * d.z) + (d.x * d.x)), d.y) / 3.1415927f) *
               180.0f);
        if (ang < arg1->unk38) {
            ang = arg1->unk38;
            flags = 1;
        }
        if (arg1->unk3C < ang) {
            ang = arg1->unk3C;
            flags |= 2;
        }
        if (flags != 0) {
            d.y = 0.0f;
            vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &d, &axis);
            func_800191F8(&d, &axis, ((ang - 90.0f) * 3.1415927f) / 180.0f);
            arg2->unk18 = arg2->unk24 + d.x;
            arg2->unk1C = arg2->unk28 - d.y;
            arg2->unk20 = arg2->unk2C + d.z;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FA92C.s")
#endif

#ifdef MIPS_TO_C

void func_800FAC74(void *arg0, void *arg1, void *arg2) {
    s32 sp5C;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    s32 var_v0;

    sp5C = D_800D799C->data;
    if (D_801292E0 == 9999.0f) {
        M2C_MEMCPY_ALIGNED(arg0, arg2, 0x3C);
    }
    var_v0 = 0;
    if (gPlayerControllers->buttonHeld & 0x100) {
        var_v0 = 1;
    }
    if (gPlayerControllers->buttonHeld & 0x200) {
        var_v0 -= 1;
    }
    if (D_800BE4F8 == 1) {
        if ((var_v0 != 0) && (arg1->unk1E != 0)) {
            var_f2 = D_801293C4;
            if (var_v0 > 0) {
                if (D_801293BC < 0.0f) {
                    var_f2 *= D_801293CC;
                }
                D_801293BC += var_f2;
                var_f0 = D_801293BC;
                if (D_801293B4 <= var_f0) {
                    D_801293BC = D_801293B4;
                    goto block_18;
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
block_18:
                    var_f0 = D_801293BC;
                }
            }
            D_801293AC += var_f0;
        } else if (D_801293AC > 0.0f) {
            D_801293BC -= D_801293C4;
            if (D_801293BC <= -1.0f) {
                D_801293BC = -1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC <= 0.0f) {
                D_801293AC = 0.0f;
                goto block_31;
            }
        } else if (D_801293AC < 0.0f) {
            D_801293BC += D_801293C4;
            if (D_801293BC >= 1.0f) {
                D_801293BC = 1.0f;
            }
            D_801293AC += D_801293BC;
            if (D_801293AC >= 0.0f) {
                D_801293AC = 0.0f;
                goto block_31;
            }
        } else {
            D_801293AC = 0.0f;
block_31:
            D_801293BC = 0.0f;
        }
    }
    var_f0_2 = arg1->unk5C;
    if (var_f0_2 <= D_801293AC) {
        D_801293AC = var_f0_2;
        var_f0_2 = arg1->unk5C;
    }
    temp_f12_2 = -var_f0_2;
    if (D_801293AC <= temp_f12_2) {
        D_801293AC = temp_f12_2;
    }
    lbvector_Diff(temp_f12_2, &sp38, arg2 + 0x18, arg2 + 0x24, arg0);
    temp_f12_3 = (atan2f(sp40, -sp38) / 3.1415927f) * 180.0f;
    var_f2_2 = temp_f12_3;
    if (temp_f12_3 < 0.0f) {
        var_f2_2 = temp_f12_3 + 360.0f;
    }
    var_f2_3 = var_f2_2 + 90.0f;
    if (var_f2_3 >= 360.0f) {
        var_f2_3 -= 360.0f;
    }
    sp3C = 0.0f;
    sp40 = 0.0f;
    sp38 = -D_801293AC;
    func_800191F8(temp_f12_3, 3.1415927f, &sp38, sp5C + 0x54, (var_f2_3 * 3.1415927f) / 180.0f, arg0);
    arg0->unk24 = arg2->unk24;
    arg0->unk2C = arg2->unk2C;
    arg0->unk18 = arg2->unk18 - sp38;
    arg0->unk20 = arg2->unk20 - sp40;
    if (arg1->unk1F != 0) {
        D_801293D8 = 0;
        arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293C0, arg0);
        arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293C0, arg0);
        return;
    }
    if (D_801293D8 != 0) {
        arg0->unk28 = arg2->unk28;
        arg0->unk1C = arg2->unk1C;
        return;
    }
    arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293D4, arg0);
    arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293D4, arg0);
    if (arg2->unk28 == arg0->unk28) {
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
        if ((v != 0) && (arg1->unk1E != 0)) {
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
    if (arg1->unk5C <= D_801293AC) {
        D_801293AC = arg1->unk5C;
    }
    if (D_801293AC <= -arg1->unk5C) {
        D_801293AC = -arg1->unk5C;
    }
    lbvector_Diff(&d, (Vector *) &arg2->unk18, (Vector *) &arg2->unk24);
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
    arg0->unk24 = arg2->unk24;
    arg0->unk2C = arg2->unk2C;
    arg0->unk18 = arg2->unk18 - d.x;
    arg0->unk20 = arg2->unk20 - d.z;
    if (arg1->unk1F != 0) {
        D_801293D8 = 0;
        arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293C0);
        arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293C0);
        return;
    }
    if (D_801293D8 != 0) {
        arg0->unk28 = arg2->unk28;
        arg0->unk1C = arg2->unk1C;
        return;
    }
    arg0->unk28 = func_800FB814(arg0->unk28, arg2->unk28, D_801293D4);
    arg0->unk1C = func_800FB814(arg0->unk1C, arg2->unk1C, D_801293D4);
    if (arg2->unk28 == arg0->unk28) {
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

#ifdef MIPS_TO_C

void func_800FBBB8(void) {
    s32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    ? sp34;
    f32 sp28;

    sp4C = D_800D799C->data;
    M2C_MEMCPY_ALIGNED(&D_80129150, &D_80129210, 0x60);
    M2C_MEMCPY_ALIGNED(&D_80129270, &D_801292B0, 0x3C);
    D_80129330.unk0 = D_801292B0.unk0;
    D_80129330.unk8 = D_801292B0.unk8;
    D_80129330.unk4 = D_801292B0.unk4 + D_80129210.unk14;
    sp40 = cosf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    sp48 = -sinf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    sp44 = 0.0f;
    lbvector_Scale(&sp40, -D_80129210.unkC);
    lbvector_Add(&sp40, &D_80129330);
    lbvector_Diff(&sp28, &D_80129330, &sp40);
    vec3_normalized_cross_product(sp4C + 0x54, &sp28, &sp34);
    func_800191F8(&sp28, &sp34, ((D_80129210.unk4 - 90.0f) * 3.1415927f) / 180.0f);
    D_80129330.unkC = D_80129330.unk0 - sp28;
    D_80129330.unk10 = D_80129330.unk4 - sp2C;
    D_80129330.unk14 = D_80129330.unk8 - sp30;
    func_800FA7EC(0, &D_80129210, &D_80129330);
    func_800FA92C(0, &D_80129210, &D_80129330);
    D_801292B0.unk18 = D_80129330.unk18;
    D_801292B0.unk1C = D_80129330.unk1C;
    D_801292B0.unk20 = D_80129330.unk20;
    D_801292B0.unk24 = D_80129330.unk24;
    D_801292B0.unk28 = D_80129330.unk28;
    D_801292B0.unk2C = D_80129330.unk2C;
}
#elif defined(PORT)
/* Free-look camera step (draft above): snapshot the live cam state and
 * output block (D_80129150/D_80129270 saves; D_801292B0 is now a whole
 * 0x3C-byte object, see src/pc/pc_bss_whole.c), aim a scratch output
 * D_80129330 at the config's target raised by unk14, place the eye with
 * the same yaw/pitch math as func_800FA608's PORT arm, then run the
 * standard smoothing/publish pair and write the resolved eye/at fields
 * back into the config. */
void func_800FBBB8(void) {
    extern struct Ovl2CamOut D_80129330;
    Camera *cam = D_800D799C->data.cam;
    Vector dir;
    Vector diff;
    Vector axis;

    D_80129150 = D_80129210;
    D_80129270 = D_801292B0;
    D_80129330.unk0 = D_801292B0.unk0;
    D_80129330.unk8 = D_801292B0.unk8;
    D_80129330.unk4 = D_801292B0.unk4 + D_80129210.unk14;
    dir.x = cosf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    dir.z = -sinf((D_80129210.unk8 * 3.1415927f) / 180.0f);
    dir.y = 0.0f;
    lbvector_Scale(&dir, -D_80129210.unkC);
    lbvector_Add(&dir, (Vector *) &D_80129330.unk0);
    lbvector_Diff(&diff, (Vector *) &D_80129330.unk0, &dir);
    vec3_normalized_cross_product(&cam->viewMtx.lookAt.up, &diff, &axis);
    func_800191F8(&diff, &axis, ((D_80129210.unk4 - 90.0f) * 3.1415927f) / 180.0f);
    D_80129330.unkC = D_80129330.unk0 - diff.x;
    D_80129330.unk10 = D_80129330.unk4 - diff.y;
    D_80129330.unk14 = D_80129330.unk8 - diff.z;
    func_800FA7EC(0, &D_80129210, &D_80129330);
    func_800FA92C(0, &D_80129210, &D_80129330);
    D_801292B0.unk18 = D_80129330.unk18;
    D_801292B0.unk1C = D_80129330.unk1C;
    D_801292B0.unk20 = D_80129330.unk20;
    D_801292B0.unk24 = D_80129330.unk24;
    D_801292B0.unk28 = D_80129330.unk28;
    D_801292B0.unk2C = D_80129330.unk2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_3/func_800FBBB8.s")
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
    D_80129210.unk0 = cam->unk0;
    D_80129210.unk2 = cam->unk1;
    D_80129210.unk4 = cam->unk20;
    D_80129210.unk8 = cam->unk28;
    D_80129210.unkC = cam->unk30;
    D_80129210.unk10 = cam->unk38;
    D_80129210.unk14 = cam->unk40;
    D_80129210.unk18 = cam->unk2;
    D_80129210.unk19 = cam->unk3;
    D_80129210.unk1A = cam->unk4;
    D_80129210.unk1C = cam->unk6;
    D_80129210.unk1D = cam->unk7;
    D_80129210.unk1E = cam->unk8;
    D_80129210.unk1F = cam->unk9;
    D_80129210.unk20 = cam->unk48;
    D_80129210.unk24 = cam->unk4C;
    D_80129210.unk28 = cam->unk50;
    D_80129210.unk2C = cam->unk54;
    D_80129210.unk30 = cam->unk58;
    D_80129210.unk34 = cam->unk5C;
    D_80129210.unk38 = cam->unk60;
    D_80129210.unk3C = cam->unk64;
    D_80129210.unk40 = cam->unk68;
    D_80129210.unk44 = cam->unk6C;
    D_80129210.unk48 = cam->unkC;
    D_80129210.unk4C = cam->unk10;
    D_80129210.unk50 = cam->unk14;
    D_80129210.unk54 = cam->unk18;
    D_80129210.unk58 = cam->unk1C;
    D_80129210.unk5C = cam->unkA;
}

/* FACTORY: 20/74, length and control flow exact. Residue is one cyclic FP rotation seeded at the
   *arg1 load (ROM temp_f2=$f2/temp_f14=$f14/temp_f12=$f12; IDO gives $f12/$f0/$f14) plus the
   three c.eq.s operand orders. Retested literal-first spelling on all three compares: zero
   change, so c.eq.s operand order is invariant like mul.s and addu. Hoisting
   temp_f12 = *arg0 + 20000.0f ABOVE the *arg2 store is what took this from 51 to 20 (the store
   may alias, so IDO cannot sink the load past it) -- keep that order. */
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
    cam->perspMtx.persp.fovy = arg0->unk10;
    cam->perspMtx.persp.near = arg0->unk54;
    cam->perspMtx.persp.far = arg0->unk58;
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
    cam->perspMtx.persp.fovy = D_801291B0.unk10;
    cam->perspMtx.persp.near = D_801291B0.unk54;
    cam->perspMtx.persp.far = D_801291B0.unk58;
}

#ifdef MIPS_TO_C

void func_800FC62C() {
    void *sp1C;
    f32 temp_f0;
    f32 temp_f2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;

    temp_v0 = D_800D799C->data;
    D_800D7B38 = D_800D7B20;
    if (D_800D6B54 == 0) {
        sp1C = temp_v0;
        animUpdateCameraAnimation(&D_800D7B20);
        temp_v1 = &D_800D7B38 + 0x18;
        if (temp_v0->unk74 == -3.4028235e38f) {
            temp_v0->unk48 = temp_v1->unk0;
            temp_v0->unk4C = temp_v1->unk4;
            temp_v0->unk50 = temp_v1->unk8;
            temp_v0->data = temp_v1->unkC;
            temp_v0->unk40 = temp_v1->unk10;
            temp_v0->unk44 = temp_v1->unk14;
        } else {
            temp_v1_2 = &D_800D7B38 + 0x18;
            temp_v1_2->unk0 = temp_v0->unk48;
            temp_v1_2->unk4 = temp_v0->unk4C;
            temp_v1_2->unk8 = temp_v0->unk50;
            temp_v1_2->unkC = temp_v0->data;
            temp_v1_2->unk10 = temp_v0->unk40;
            temp_v1_2->unk14 = temp_v0->unk44;
        }
        temp_f0 = *(s32 *) &D_8012940C * 0.01f;
        temp_f2 = D_80129408 * 0.01f;
        temp_v0->unk48 = temp_v0->unk48 + (D_80129400 * temp_f2);
        D_800D7B20.unk0 = temp_v0->unk48;
        temp_v0->unk4C = temp_v0->unk4C + (D_80129404 * temp_f2);
        D_800D7B20.unk4 = temp_v0->unk4C;
        D_800D7B20.unk8 = temp_v0->unk50;
        temp_v0->data = temp_v0->data + (D_80129400 * temp_f0);
        D_800D7B20.unkC = temp_v0->data;
        temp_v0->unk40 = temp_v0->unk40 + (D_80129404 * temp_f0);
        D_800D7B20.unk10 = temp_v0->unk40;
        D_800D7B20.unk14 = temp_v0->unk44;
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
