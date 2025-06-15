#include <ultra64.h>
#include <macros.h>
#include <PR/gbi.h>

#include "unk_structs/D_800E1B50.h"

extern Gfx *gDisplayListHeads[4];

void func_800FDA40(Vtx *curVtx, f32 arg1, f32 arg2) {
    Vtx* vtxList = curVtx;

    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg2;
    (curVtx++)->v.ob[1] = arg1;
    (curVtx++)->v.ob[1] = arg1;
    gSPVertex(gDisplayListHeads[0]++, vtxList, 4, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 1, 0x0, 0, 2, 1, 0x0);

}

void func_800FDAB8(Vtx *curVtx, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 vtx_3_4_tmp_z;
    Vtx *vtxList = curVtx += 4;
    f32 vtx_1_2_tmp_v;
    f32 arg4_tmp;

    vtx_3_4_tmp_z = ((-40.0f) * arg3) + 20.0f;
    arg4_tmp = arg4;

    (curVtx  )->v.ob[1] = arg2;
    (curVtx  )->v.ob[2] = ((-40.0f) * arg4_tmp) + 20.0f;
    vtx_1_2_tmp_v = 4032.0f * arg4;
    (curVtx++)->v.tc[1] = vtx_1_2_tmp_v;

    (curVtx  )->v.ob[1] = arg2;
    (curVtx  )->v.ob[2] = ((-40.0f) * arg4) + 20.0f;
    (curVtx++)->v.tc[1] = vtx_1_2_tmp_v;

    (curVtx  )->v.ob[1] = arg1;
    (curVtx  )->v.ob[2] = vtx_3_4_tmp_z;
    (curVtx++)->v.tc[1] = 4032.0f * arg3;

    (curVtx  )->v.ob[1] = arg1;
    (curVtx  )->v.ob[2] = vtx_3_4_tmp_z;
    (curVtx++)->v.tc[1] = 4032.0f * arg3;

    gSPVertex(gDisplayListHeads[0]++, vtxList, 4, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 1, 0x0, 0, 2, 1, 0x0);
}

#ifdef NON_MATCHING
void *func_800FDBB0 (Vtx *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    Vtx *list = arg0 += 4;

    (list++)->v.ob[1] = arg2;
    (list++)->v.ob[1] = arg2;
    (list++)->v.ob[1] = arg1;
    (list++)->v.ob[1] = arg1;

    (list  )->v.ob[1] = arg3;
    (list  )->v.ob[2] = (-40.0f * arg4) + 20.0f;
    (list++)->v.tc[1] = 4032.0f * arg4;

    (list  )->v.ob[1] = arg3;
    (list  )->v.ob[2] = (-40.0f * arg4) + 20.0f;
    (list++)->v.tc[1] = 4032.0f * arg4;

    gSPVertex(gDisplayListHeads[0]++, arg0, 6, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 2, 3, 5, 0, 4, 2, 5, 0);
    gSP2Triangles(gDisplayListHeads[0]++, 4, 5, 1, 0, 0, 4, 1, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FDBB0.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FDCB0.s")

void func_800FDE64(UNUSED s32 arg0) {

}

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FDE6C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FDF88.s")

struct UNK_D_8012B9AC {
    u8 filler[0x30];
    u32 unk30;
};

extern struct UNK_D_8012B9AC *D_8012B9AC;

void func_800FDFF4(s32 arg0) {
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;

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
    f32 max_val = 80.0f;
    f32 phi_f0 = arg1 - arg0;

    if (max_val <= phi_f0) {
        gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, 0xFF);
        return;
    }
    if (phi_f0 < 0.0f) {
        phi_f0 = 0.0f;
    }
    gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0, 0, 0, 0, (s32)((phi_f0 / max_val) * 255));
}

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FE154.s")

extern u32 D_80104A08;
extern u32 D_80104958;

struct UNK_FUNC_800FEE6C {
    u8 filler[0x08];
    struct UNK_FUNC_800FEE6C* unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u8 filler2[0x84 - 0x04 - 0x14];
    struct UNK_FUNC_800FEE6C_2 *unk84;
};

struct UNK_FUNC_800FEE6C_2 {
    u8 filler[0x20];
    u8 unk20;
};


void func_800FEE6C(struct UNK_FUNC_800FEE6C *arg0) {
    s32 sp34;
    void *phi_a2;
    struct UNK_FUNC_800FEE6C *phi_s0;
    u8 phi_v0;

    sp34 = 0;
    phi_v0 = arg0->unk84->unk20;
    if ((phi_v0 & 3) == 0) {
        if ((phi_v0 & 8) != 0) {
            phi_a2 = &D_80104A08;
        } else {
            phi_a2 = &D_80104958;
        }
        func_800FE154(arg0, &sp34, phi_a2);
    }
    if (sp34 != 0) {
        if ((arg0->unk14 == 1) || (arg0->unk8 != 0)) {
            gSPPopMatrix(gDisplayListHeads[0]++, G_MTX_MODELVIEW);
        }
    }
    if (arg0->unkC == 0) {
        phi_s0 = arg0->unk8;
        while (phi_s0 != 0) {
            func_800FEE6C(phi_s0);
            phi_s0 = phi_s0->unk8;
        }
    }
}

extern Gfx D_801246C0[];
extern Gfx D_80124708[];
extern u8 *D_8012B99C;

struct UNK_FUNC_800FEF44 {
    u8 filler[0x3C];
    struct UNK_FUNC_800FEE6C *unk3C;
};

void func_800FEF44(struct UNK_FUNC_800FEF44 *arg0) {
    struct UNK_D_8012B9AC sp3C;

    if (arg0->unk3C != 0) {
        D_8012B9AC = &sp3C;
        sp3C.unk30 = 0;
        gSPDisplayList(gDisplayListHeads[0]++, D_801246C0);
        gDPSetTextureImage(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 1, D_8012B99C);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_16b, 0, 0, 7, 0, G_TX_MIRROR|G_TX_WRAP, 5, 0, G_TX_MIRROR|G_TX_WRAP, 5, 0);
        gDPLoadSync(gDisplayListHeads[0]++);
        gDPLoadBlock(gDisplayListHeads[0]++, G_TX_LOADTILE, 0x000, 0x000, 0x1FF, 0x200)
        gDPPipeSync(gDisplayListHeads[0]++);
        gDPSetTile(gDisplayListHeads[0]++, G_IM_FMT_I, G_IM_SIZ_8b, 4, 0, 0, 0, G_TX_MIRROR|G_TX_WRAP, 5, 0, G_TX_MIRROR|G_TX_WRAP, 5, 0);
        gDPSetTileSize(gDisplayListHeads[0]++, 0, 0 << 2, 0 << 2, (32 - 1) << 2, (32 - 1) << 2);
        func_800FEE6C(arg0->unk3C);
        gSPDisplayList(gDisplayListHeads[0]++, D_80124708);
    }
}

void func_800FF0A8(struct Sub800E1B50 *arg0) {
    if (arg0 != 0) {
        arg0->unk20 = arg0->unk20 | 2;
    }
}

void func_800FF0C4(struct Sub800E1B50 *arg0) {
    if (arg0 != 0) {
        arg0->unk20 = arg0->unk20 & ~2;
    }
}

void func_800FF0E0(struct Sub800E1B50 *arg0) {
    if (arg0 != 0) {
        arg0->unk20 = arg0->unk20 | 8;
    }
}

// Obviously not the correct type
extern void **D_8012B990;

void **func_800FF0FC(void) {
    void **temp_v1;

    temp_v1 = D_8012B990;
    if (temp_v1 == 0) {
        return NULL;
    }
    D_8012B990 = *temp_v1;
    return temp_v1;
}

void func_800FF12C(void **arg0) {
    *arg0 = D_8012B990;
    D_8012B990 = arg0;
}

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FF144.s")

struct UNK_FUNC_80FF1CC {
    u8 filler[0x24];
    void *unk24;
};

void func_800FF1CC(struct UNK_FUNC_80FF1CC *arg0) {
    if (arg0 != 0) {
        func_80009DF4_ovl2(arg0->unk24, arg0);
        func_800FF12C(arg0);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FF200.s")

GLOBAL_ASM("asm/non_matchings/ovl2_5/func_800FF2C8.s")
