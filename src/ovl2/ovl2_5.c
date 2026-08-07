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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_5/func_800FE154.s")

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

struct UnkFunc800FEF44 {
    u8 filler[0x3C];
    struct UnkFunc800FEE6C *unk3C;
};

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_5/func_800FF2C8.s")
