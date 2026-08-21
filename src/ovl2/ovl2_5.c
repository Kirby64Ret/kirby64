#include <PR/gbi.h>
#include "common.h"
#include "macros.h"
#include "GObj.h"
#include "DObj.h"
#include "track_arrays.h"
#include "main/render.h"
#include "main/math.h"
#include "main/gtl.h"
#include "unk_structs/D_800E1B50.h"

struct UnkD_8012B9AC {
    /* 0x00 */ Vector unk0[4];
    /* 0x30 */ u32 unk30;
};

extern struct UnkD_8012B9AC *D_8012B9AC;
extern void **D_8012B990;
extern Gfx D_801246C0[];
extern Gfx D_80124708[];
extern u8 *D_8012B99C;

struct Ovl2Particle {
    /* 0x00 */ struct Ovl2Particle *unk0;
    /* 0x04 */ Vector unk4;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ u8 unk20;
    /* 0x21 */ u8 unk21;
    /* 0x22 */ u8 pad22[2];
    /* 0x24 */ DObj *unk24;
};

extern GObj *D_8012B998;

void func_800FE154(void *, s32 *, void *);
void func_80104958(void);
void func_80104A08(void);

void func_800FDA40(Vtx *curVtx, f32 arg1, f32 arg2) {
    Vtx *vtxList = curVtx;

    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg1;
    (curVtx++)->v.ob[1] = arg1;
    gSPVertex(gDisplayListHeads[0]++, vtxList, 4, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 1, 0, 0, 2, 1, 0);
}

void func_800FDAB8(Vtx *curVtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 temp_z;
    Vtx *vtxList = curVtx += 4;
    f32 temp_tc;
    f32 arg4_tmp;

    temp_z = (-40.0f * arg3) + 20.0f;
    arg4_tmp = arg4;

    (curVtx  )->v.ob[1] = arg2;
    (curVtx  )->v.ob[2] = (-40.0f * arg4_tmp) + 20.0f;
    temp_tc = 4032.0f * arg4;
    (curVtx++)->v.tc[1] = temp_tc;

    (curVtx  )->v.ob[1] = arg2;
    (curVtx  )->v.ob[2] = (-40.0f * arg4) + 20.0f;
    (curVtx++)->v.tc[1] = temp_tc;

    (curVtx  )->v.ob[1] = arg1;
    (curVtx  )->v.ob[2] = temp_z;
    (curVtx++)->v.tc[1] = 4032.0f * arg3;

    (curVtx  )->v.ob[1] = arg1;
    (curVtx  )->v.ob[2] = temp_z;
    (curVtx++)->v.tc[1] = 4032.0f * arg3;

    gSPVertex(gDisplayListHeads[0]++, vtxList, 4, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 1, 0, 0, 2, 1, 0);
}

void func_800FDBB0(Vtx *curVtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    Vtx *vtxList = curVtx;
    f32 temp_z = (-40.0f * arg4) + 20.0f;
    f32 temp_tc = 4032.0f * arg4;

    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg1;
    (curVtx++)->v.ob[1] = arg1;

    (curVtx  )->v.ob[1] = arg3;
    (curVtx  )->v.ob[2] = temp_z;
    (curVtx++)->v.tc[1] = temp_tc;

    (curVtx  )->v.ob[1] = arg3;
    (curVtx  )->v.ob[2] = temp_z;
    (curVtx++)->v.tc[1] = temp_tc;

    gSPVertex(gDisplayListHeads[0]++, vtxList, 6, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 5, 0, 4, 2, 5, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 4, 5, 1, 0, 0, 4, 1, 0);
}

void func_800FDCB0(Vtx *curVtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, s32 arg7, s32 arg8) {
    Vtx *vtxList = curVtx;
    f32 temp_z6 = (-40.0f * arg6) + 20.0f;
    f32 temp_tc6 = 4032.0f * arg6;
    f32 temp_z5 = (-40.0f * arg5) + 20.0f;
    f32 temp_tc5 = 4032.0f * arg5;

    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg1;
    (curVtx++)->v.ob[1] = arg1;

    (curVtx  )->v.ob[1] = arg4;
    (curVtx  )->v.ob[2] = temp_z6;
    (curVtx++)->v.tc[1] = temp_tc6;

    (curVtx  )->v.ob[1] = arg4;
    (curVtx  )->v.ob[2] = temp_z6;
    (curVtx++)->v.tc[1] = temp_tc6;

    (curVtx  )->v.ob[1] = arg3;
    (curVtx  )->v.ob[2] = temp_z5;
    (curVtx++)->v.tc[1] = temp_tc5;

    (curVtx  )->v.ob[1] = arg3;
    (curVtx  )->v.ob[2] = temp_z5;
    (curVtx++)->v.tc[1] = temp_tc5;

    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, arg7);
    gSPVertex(gDisplayListHeads[0]++, vtxList, 8, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 7, 0, 6, 2, 7, 0);
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, arg8);
    gSP2Triangles(gDisplayListHeads[0]++, 4, 5, 1, 0, 0, 4, 1, 0);
}

void func_800FDE64(UNUSED s32 arg0) {
}

void func_800FDE6C(struct Ovl2Particle *arg0) {
    f32 temp_cos;
    f32 temp_sin;
    f32 temp_u10;
    Vector sp18;

    temp_cos = cosf(arg0->unk1C);
    temp_sin = sinf(arg0->unk1C);
    temp_u10 = arg0->unk10;
    sp18 = arg0->unk4;
    D_8012B9AC->unk0[0].x = (temp_u10 * temp_sin) + sp18.x;
    D_8012B9AC->unk0[0].y = arg0->unk14 + sp18.y;
    D_8012B9AC->unk0[0].z = (temp_u10 * temp_cos) + sp18.z;
    D_8012B9AC->unk0[1].x = D_8012B9AC->unk0[0].x;
    D_8012B9AC->unk0[1].y = arg0->unk18 + sp18.y;
    D_8012B9AC->unk0[1].z = D_8012B9AC->unk0[0].z;
    D_8012B9AC->unk0[2].x = sp18.x - (temp_u10 * temp_sin);
    D_8012B9AC->unk0[2].y = D_8012B9AC->unk0[0].y;
    D_8012B9AC->unk0[2].z = sp18.z - (temp_u10 * temp_cos);
    D_8012B9AC->unk0[3].x = D_8012B9AC->unk0[2].x;
    D_8012B9AC->unk0[3].y = D_8012B9AC->unk0[1].y;
    D_8012B9AC->unk0[3].z = D_8012B9AC->unk0[2].z;
}

void func_800FDF88(DObj *dobj, struct Ovl2Particle *arg1, s32 *arg2) {
    dobj->scale.v.x = dobj->scale.v.z = arg1->unk10 / 20.0f;
    dobj->pos.v.x = arg1->unk4.x;
    dobj->pos.v.z = arg1->unk4.z;
    dobj->angle.v.y = arg1->unk1C;
    *arg2 = renderPrepareModelMatrix(&gDisplayListHeads[0], dobj);
}

void func_800FDFF4(s32 arg0) {
    if (arg0 != D_8012B9AC->unk30) {
        if (arg0 != 0) {
            gDPPipeSync(gDisplayListHeads[0]++);
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
        } else {
            gDPPipeSync(gDisplayListHeads[0]++);
            gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_ZB_OVL_SURF, G_RM_ZB_OVL_SURF2);
        }
        D_8012B9AC->unk30 = arg0;
    }
}

void func_800FE0AC(f32 arg0, f32 arg1) {
    f32 max = 80.0f;
    f32 val = arg1 - arg0;

    if (max <= val) {
        gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, 0xFF);
        return;
    }
    if (val < 0.0f) {
        val = 0.0f;
    }
    gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, (s32) ((val / max) * 255));
}

#ifdef PORT
/* PORT (behavioral): the particle ground-shadow renderer. The ROM raycasts
 * the quad's two side columns straight down (arg2 is func_80104958/A08, the
 * collision casts writing hit point / floor plane / triangle through the
 * out slots), validates the floor with func_80101920, seats the DObj with
 * func_800FDF88, picks CLD render mode when the floor is a moving platform
 * (collisionType 0x14), fades alpha by height with func_800FE0AC, and
 * patches the hit heights into the particle's prebuilt double-buffered Vtx
 * block (+0x28 / +0xA8) via func_800FDA40. When only one column hits, the
 * found floor plane is extended under the other column; the ROM's sloped-
 * floor subdivision (func_800FDBB0/FDCB0 splits) is approximated by the
 * same plane extension -- shadows on a floor seam are a straight quad
 * instead of a bent one, everything else is exact. The line-particle
 * variant (unk21 == 1) mirrors the ROM directly. */
void func_800FE154(void *arg0, s32 *flagOut, void *castFn) {
    extern u8 D_8012B9A0[];
    void (*cast)(Vector *, Vector *, void *, void *, void *) =
        (void (*)(Vector *, Vector *, void *, void *, void *)) castFn;
    DObj *dobj = arg0;
    struct Ovl2Particle *ent = (struct Ovl2Particle *) (uintptr_t) dobj->unk84;
    struct CollisionTriangle *triA;
    struct CollisionTriangle *triB;
    f32 *planeA;
    f32 *planeB;
    Vector hitA;
    Vector hitB;
    Vtx *buf;
    Vector *q;
    s32 visA;
    s32 visB;

    if (ent->unk20 & 4) {
        return;
    }
    buf = (Vtx *) ((u8 *) ent + (gtlCurrentContextID ? 0xB0 : 0x30));

    if (ent->unk21 == 1) {
        Vector a;
        Vector b;
        f32 d0;
        f32 d1;

        a = ent->unk4;
        a.y += ent->unk14;
        b = ent->unk4;
        b.y += ent->unk18;
        triA = NULL;
        planeA = NULL;
        cast(&a, &b, &hitA, &planeA, &triA);
        if (triA == NULL) {
            return;
        }
        if (func_80101920((void *) triA, (void *) planeA, 0, &D_8012B9A0) == 0) {
            return;
        }
        func_800FDE6C(ent);
        func_800FDF88(dobj, ent, flagOut);
        q = D_8012B9AC->unk0;
        d0 = -(q[0].x * planeA[0] + q[0].z * planeA[2] + planeA[3]) / planeA[1];
        d1 = -(q[2].x * planeA[0] + q[2].z * planeA[2] + planeA[3]) / planeA[1];
        func_800FE0AC(b.y, (d0 + d1) * 0.5f);
        func_800FDA40(buf, d0, d1);
        return;
    }

    func_800FDE6C(ent);
    q = D_8012B9AC->unk0;
    triA = NULL;
    planeA = NULL;
    cast(&q[0], &q[1], &hitA, &planeA, &triA);
    visA = triA != NULL;
    if (visA && func_80101920((void *) triA, (void *) planeA, 0, &D_8012B9A0) == 0) {
        return;
    }
    triB = NULL;
    planeB = NULL;
    cast(&q[2], &q[3], &hitB, &planeB, &triB);
    visB = triB != NULL;
    if (visB && func_80101920((void *) triB, (void *) planeB, 0, &D_8012B9A0) == 0) {
        return;
    }
    if (!visA && !visB) {
        return;
    }
    func_800FDF88(dobj, ent, flagOut);
    func_800FDFF4((visA && triA->collisionType == 0x14) ||
                  (visB && triB->collisionType == 0x14));
    if (!visA) {
        hitA.y = -(q[0].x * planeB[0] + q[0].z * planeB[2] + planeB[3]) / planeB[1];
    }
    if (!visB) {
        hitB.y = -(q[2].x * planeA[0] + q[2].z * planeA[2] + planeA[3]) / planeA[1];
    }
    func_800FE0AC(q[1].y, (hitA.y + hitB.y) * 0.5f);
    func_800FDA40(buf, hitA.y, hitB.y);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_5/func_800FE154.s")
#endif

struct UnkFunc800FEE6C_2 {
    u8 filler[0x20];
    u8 unk20;
};

struct UnkFunc800FEE6C {
    u8 filler[0x8];
    struct UnkFunc800FEE6C *unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u8 filler2[0x84 - 0x18];
    struct UnkFunc800FEE6C_2 *unk84;
};

#ifdef PORT
/* PORT: same body through the REAL DObj/Ovl2Particle types. The N64-offset
 * overlay structs above shear on LP64 (their leading pointer fields widen),
 * so unk84/unk8/unkC/unk14 landed mid-field: the first particle DObj this
 * build ever created (Kirby's shadow, allocated by the now-ported
 * func_800FF2C8/func_8016BF60_ovl3 chain) crashed the render pass here.
 * unk84 is the truncated Ovl2Particle pointer func_800FF144 stores; unk8/
 * unkC/unk14 are DObj next/prev/parent. */
void func_800FEE6C(DObj *arg0) {
    s32 sp34;
    void *phi_a2;
    DObj *phi_s0;
    u8 phi_v0;

    sp34 = 0;
    phi_v0 = ((struct Ovl2Particle *) (uintptr_t) arg0->unk84)->unk20;
    if ((phi_v0 & 3) == 0) {
        if ((phi_v0 & 8) != 0) {
            phi_a2 = func_80104A08;
        } else {
            phi_a2 = func_80104958;
        }
        func_800FE154(arg0, &sp34, phi_a2);
    }
    if (sp34 != 0) {
        if (((uintptr_t) arg0->parent == 1) || (arg0->next != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
    }
    if (arg0->prev == NULL) {
        phi_s0 = arg0->next;
        while (phi_s0 != NULL) {
            func_800FEE6C(phi_s0);
            phi_s0 = phi_s0->next;
        }
    }
}
#else
void func_800FEE6C(struct UnkFunc800FEE6C *arg0) {
    s32 sp34;
    void *phi_a2;
    struct UnkFunc800FEE6C *phi_s0;
    u8 phi_v0;

    sp34 = 0;
    phi_v0 = arg0->unk84->unk20;
    if ((phi_v0 & 3) == 0) {
        if ((phi_v0 & 8) != 0) {
            phi_a2 = func_80104A08;
        } else {
            phi_a2 = func_80104958;
        }
        func_800FE154(arg0, &sp34, phi_a2);
    }
    if (sp34 != 0) {
        if ((arg0->unk14 == 1) || (arg0->unk8 != NULL)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
    }
    if (arg0->unkC == 0) {
        phi_s0 = arg0->unk8;
        while (phi_s0 != NULL) {
            func_800FEE6C(phi_s0);
            phi_s0 = phi_s0->unk8;
        }
    }
}
#endif

struct UnkFunc800FEF44 {
    u8 filler[0x3C];
    struct UnkFunc800FEE6C *unk3C;
};

#ifdef PORT
/* PORT: the particle draw-list entry (gDrawFuncList slot). arg0->unk3C is
 * the GObj's data.dobj on the N64; the overlay struct's 0x3C offset lands
 * inside the host GObj's process pointers, so it is spelled through the
 * real GObj here.
 *
 * The two static setup lists this function branches to (D_801246C0 and
 * D_80124708) are PACKED 8-byte N64 commands in the data emission, and
 * D_801246C0 additionally relies on falling through into D_801246F0 for
 * its EndDL -- neither survives the fork's 16-byte native Gfx stream (the
 * interpreter walked into the neighbouring vertex tables and spammed
 * "Unhandled OP 0x10"). Their handful of RDP state commands are emitted
 * inline instead. */
static void pc_dl_cmd(u32 w0, u32 w1) {
    Gfx *g = gDisplayListHeads[0]++;

    g->words.w0 = w0;
    g->words.w1 = w1;
}

void func_800FEF44(GObj *arg0) {
    struct UnkD_8012B9AC sp3C;

    if (arg0->data.dobj != NULL) {
        D_8012B9AC = &sp3C;
        sp3C.unk30 = 0;
        /* D_801246C0 (+ fallthrough head of D_801246F0), minus EndDL */
        pc_dl_cmd(0xE7000000, 0x00000000);
        pc_dl_cmd(0xE3001001, 0x00000000);
        pc_dl_cmd(0xE200001C, 0x00504F50);
        pc_dl_cmd(0xFCFF97FF, 0xFF2FFFFF);
        pc_dl_cmd(0xD7000002, 0x80008000);
        pc_dl_cmd(0xF9000000, 0x0000000F);
        pc_dl_cmd(0xE2001E01, 0x00000001);
        pc_dl_cmd(0xD9DDFFFB, 0x00000000);
        gDPSetTextureImage(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_8012B99C);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, G_TX_MIRROR | G_TX_WRAP, 5, 0,
                   G_TX_MIRROR | G_TX_WRAP, 5, 0);
        gDPLoadSync(gDisplayListHeads[0]++);
        gDPLoadBlock(gDisplayListHeads[0]++, G_TX_LOADTILE, 0x000, 0x000, 0x1FF, 0x200);
        gDPPipeSync(gDisplayListHeads[0]++);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_8b, 4, 0, 0, 0, G_TX_MIRROR | G_TX_WRAP, 5, 0,
                   G_TX_MIRROR | G_TX_WRAP, 5, 0);
        gDPSetTileSize(gDisplayListHeads[0]++, 0, 0 << 2, 0 << 2, (32 - 1) << 2, (32 - 1) << 2);
        func_800FEE6C(arg0->data.dobj);
        /* D_80124708, minus EndDL */
        pc_dl_cmd(0xE7000000, 0x00000000);
        pc_dl_cmd(0xE200001C, 0x00552078);
        pc_dl_cmd(0xD7000000, 0x00000000);
        pc_dl_cmd(0xE2001E01, 0x00000000);
        pc_dl_cmd(0xD9FFFFFF, 0x00220004);
    }
}
#else
void func_800FEF44(struct UnkFunc800FEF44 *arg0) {
    struct UnkD_8012B9AC sp3C;

    if (arg0->unk3C != NULL) {
        D_8012B9AC = &sp3C;
        sp3C.unk30 = 0;
        gSPDisplayList(gDisplayListHeads[0]++, D_801246C0);
        gDPSetTextureImage(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_8012B99C);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, G_TX_MIRROR | G_TX_WRAP, 5, 0,
                   G_TX_MIRROR | G_TX_WRAP, 5, 0);
        gDPLoadSync(gDisplayListHeads[0]++);
        gDPLoadBlock(gDisplayListHeads[0]++, G_TX_LOADTILE, 0x000, 0x000, 0x1FF, 0x200);
        gDPPipeSync(gDisplayListHeads[0]++);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_8b, 4, 0, 0, 0, G_TX_MIRROR | G_TX_WRAP, 5, 0,
                   G_TX_MIRROR | G_TX_WRAP, 5, 0);
        gDPSetTileSize(gDisplayListHeads[0]++, 0, 0 << 2, 0 << 2, (32 - 1) << 2, (32 - 1) << 2);
        func_800FEE6C(arg0->unk3C);
        gSPDisplayList(gDisplayListHeads[0]++, D_80124708);
    }
}
#endif

void func_800FF0A8(struct Sub800E1B50_80 *arg0) {
    if (arg0 != NULL) {
        arg0->unk20 |= 2;
    }
}

void func_800FF0C4(struct Sub800E1B50_80 *arg0) {
    if (arg0 != NULL) {
        arg0->unk20 &= ~2;
    }
}

void func_800FF0E0(struct Sub800E1B50_80 *arg0) {
    if (arg0 != NULL) {
        arg0->unk20 |= 8;
    }
}

void **func_800FF0FC(void) {
    void **temp_v1;

    temp_v1 = D_8012B990;
    if (temp_v1 == NULL) {
        return NULL;
    }
    D_8012B990 = *temp_v1;
    return temp_v1;
}

void func_800FF12C(void *arg0) {
    *(void **)arg0 = D_8012B990;
    D_8012B990 = arg0;
}

struct Ovl2Particle *func_800FF144(void) {
    struct Ovl2Particle *particle;
    DObj *dobj;

    particle = func_800FF0FC();
    if (particle == NULL) {
        return NULL;
    }
    dobj = omGObjAddDObj(D_8012B998, NULL);
    if (dobj == NULL) {
        func_800FF12C(particle);
        return NULL;
    }
    omDObjAppendMtx(dobj, 0x1C, 0);
    dobj->unk84 = (u32) particle;
    particle->unk20 = 0;
    particle->unk24 = dobj;
    return particle;
}

struct UnkFunc800FF1CC {
    u8 filler[0x24];
    void *unk24;
};

void func_800FF1CC(struct UnkFunc800FF1CC *arg0) {
    if (arg0 != NULL) {
        func_80009DF4(arg0->unk24);
        func_800FF12C(arg0);
    }
}

void func_800FF200(struct Ovl2Particle *arg0) {
    s32 objId;
    GObj *gobj;
    DObj *dobj;
    s32 visible;

    if (arg0 != NULL) {
        objId = omCurrentObj->objId;
        arg0->unk4.x = gEntitiesNextPosXArray[objId];
        arg0->unk4.y = gEntitiesNextPosYArray[objId];
        arg0->unk4.z = gEntitiesNextPosZArray[objId];
        arg0->unk1C = D_800E17D0[objId];
        gobj = D_800DE350[objId];
        visible = 0;
        if (gobj != NULL) {
            if (!(gobj->flags & 1)) {
                dobj = gobj->data.dobj;
                if (dobj != NULL) {
                    if (!(dobj->flags & 3)) {
                        visible = 1;
                    }
                }
            }
        }
        if (visible != 0) {
            arg0->unk20 &= ~1;
        } else {
            arg0->unk20 |= 1;
        }
    }
}

#ifdef PORT
/* PORT: the level's particle-pool init (the "player spawn entry" the scene
 * postInit runs before the track objects start ticking), from
 * asm/nonmatchings/ovl2/ovl2_5/func_800FF2C8.s.
 *
 *   - loads the particle texture bank (0x20004) into D_8012B99C and claims
 *     a track slot (0x23) whose GObj D_8012B998 carries the particle DObjs;
 *     its default motion/update/user processes are ended and a 0x29/0x10
 *     animation is bound with omCurrentObj temporarily swapped, exactly as
 *     the ROM does;
 *   - builds the 32-record freelist D_8012B990. On the N64 the records are
 *     D_80129490 (one) and D_801295B8 (31 more, contiguous); this build's
 *     bss blocks are separate symbols, so the links are spelled explicitly
 *     -- consumers (func_800FF0FC/func_800FF12C/func_800FF144) only chase
 *     the links, never the addresses;
 *   - interleaves the four 16-byte Vtx template columns into each record at
 *     +0x28/+0xA8. The N64 reads the second template row at base+0x40,
 *     which lands inside the D_80124670 emission on this build, so row 1
 *     comes from D_80124670[4 + j*4]. Only the (still unported)
 *     func_800FE154 renderer reads these bytes back. */
extern u8 D_80129490[];
extern u8 D_801295B8[];
extern u8 D_8012B9A0[];
extern u32 D_80124640[];
extern u32 D_80124650[];
extern u32 D_80124660[];
extern u32 D_80124670[];
s32 func_800A8BAC(s32);
s32 request_track_general(s32, s32, s32);
void omEndProcess(struct GObjProcess *);
void func_800AF9B8(u16, u8);
extern struct GObjProcess *gEntityGObjProcessArray[];
extern struct GObjProcess *gEntityGObjProcessArray2[];
extern struct GObjProcess *gEntityGObjProcessArray5[];

void func_800FF2C8(void) {
    GObj *savedCur = omCurrentObj;
    u32 *cols[4];
    u8 *rec;
    s32 slot;
    s32 i;
    s32 j;
    s32 k;

    D_8012B99C = (u8 *) (uintptr_t) func_800A8BAC(0x20004);
    slot = request_track_general(0x23, 0x3C, 0x50);
    D_8012B998 = D_800DE350[slot];
    omEndProcess(gEntityGObjProcessArray2[slot]);
    omEndProcess(gEntityGObjProcessArray[slot]);
    omEndProcess(gEntityGObjProcessArray5[slot]);
    omCurrentObj = D_8012B998;
    func_800AF9B8(0x29, 0x10);
    omCurrentObj = savedCur;
    *(f32 *) &D_8012B9A0[0] = 0.0f;
    *(f32 *) &D_8012B9A0[4] = -1.0f;
    *(f32 *) &D_8012B9A0[8] = 0.0f;

    /* freelist: record 0, then the 31 records in D_801295B8 */
    D_8012B990 = (void **) D_80129490;
    *(void **) D_80129490 = D_801295B8;
    for (i = 0; i < 30; i++) {
        *(void **) (D_801295B8 + (i * 0x130)) = D_801295B8 + ((i + 1) * 0x130);
    }
    *(void **) (D_801295B8 + (30 * 0x130)) = NULL;

    cols[0] = D_80124640;
    cols[1] = D_80124650;
    cols[2] = D_80124660;
    cols[3] = D_80124670;
    for (i = 0; i < 32; i++) {
        rec = (i == 0) ? D_80129490 : (D_801295B8 + ((i - 1) * 0x130));
        for (k = 0; k < 2; k++) {
            for (j = 0; j < 4; j++) {
                u32 *src = (k == 0) ? cols[j] : &D_80124670[4 + (j * 4)];
                u32 *dstA = (u32 *) (rec + 0x30 + (k * 0x40) + (j * 0x10));
                u32 *dstB = (u32 *) (rec + 0xB0 + (k * 0x40) + (j * 0x10));
                dstA[0] = dstB[0] = src[0];
                dstA[1] = dstB[1] = src[1];
                dstA[2] = dstB[2] = src[2];
                dstA[3] = dstB[3] = src[3];
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_5/func_800FF2C8.s")
#endif
