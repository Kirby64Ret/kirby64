#include "common.h"
#include "types.h"
#include <macros.h>
#include <ultra64.h>
#include <PR/gs2dex.h>
#include "PR/gbi.h"
#include "ovl1/ovl1_5.h"
#include "main/gtl.h"

struct UNK_D_8012BBF8 {
    struct UNK_D_8012BBF8_unk0 *unk0;
    float unk4;
    u16 unk8;
    u16 unkA;
    u32 unkC;
};

struct UNK_D_8012B9B8 {
    /*0x00*/ u32 unk0;
    /*0x04*/ u32 unk4;
    /*0x08*/ u16 unk8;
    /*0x0A*/ u16 unkA;
    /*0x0C*/ u32 unkC;
    /*0x10*/ float unk10;
    /*0x14*/ float unk14;
    /*0x18*/ u32 unk18;
    /*0x1C*/ u32 unk1C;
    /*0x20*/ u32 unk20;
    /*0x24*/ u32 unk24;
    /*0x28*/ u32 unk28;
    /*0x2C*/ u32 unk2C;
};

struct UNK_D_8012BBF8_unk0 {
    /*0x00*/ float unk0;
    /*0x04*/ u32 unk4;
    /*0x08*/ float unk8;
    /*0x0C*/ float unkC;
    /*0x10*/ float unk10;
    /*0x14*/ u8 unk14;
    /*0x15*/ u8 unk15;
    /*0x16*/ u8 unk16;
    /*0x17*/ u8 unk17;
    /*0x18*/ u8 unk18;
    /*0x19*/ u8 unk19;
    /*0x1A*/ u8 unk1A;
    /*0x1B*/ u8 unk1B;
    /*0x1C*/ float unk1C;
    /*0x20*/ float unk20;
    /*0x24*/ float unk24;
    /*0x28*/ float unk28;
    /*0x2C*/ float unk2C;
};

extern struct UNK_D_8012BBF8 D_8012BBF8[10];
extern struct UNK_D_8012B9B8 D_8012B9B8[];
extern u32 D_8012B9B0;
extern u32 D_80124740[];

s32 HS64_omMakeGObj(s32, void *, s32, s32);
void omCreateProcess(s32, void *, s32, s32);
void *func_80100AC8(void *arg0);
f32 func_80100EE4(s32 arg0);

void func_800FF5E0(s32 arg0, f32 arg1, f32 arg2) {
    struct UNK_D_8012B9B8 *temp_a1;
    struct UNK_D_8012BBF8 *temp_v0;
    struct UNK_D_8012BBF8_unk0 *temp_v1;

    temp_v0 = &D_8012BBF8[arg0];
    temp_v1 = temp_v0->unk0;
    temp_v0->unk4 = temp_v0->unk4 + arg2;
    temp_a1 = &D_8012B9B8[arg0];
    temp_v1->unk20 = temp_v1->unk20 + arg1;
    temp_v1->unk24 = temp_v1->unk24 + arg2;
    temp_v1->unk28 = temp_a1->unk10;
    temp_v1->unk2C = temp_a1->unk14;
}

void func_800FF64C(u32 arg0) {
    extern u8 D_800D478C[];
    struct UNK_D_8012BBF8_unk0 *temp_v1;
    u8 *temp_a3;
    u8 *temp_t1;
    u16 temp_a1;
    u32 i;

    for (i = 0; i < *(vu32 *)&D_8012B9B0; i++) {
        temp_a1 = D_8012B9B8[i].unk8;
        if ((temp_a1 & 0xC0) == 0) {
            continue;
        }
        if (arg0 != D_8012B9B8[i].unkA) {
            continue;
        }
        temp_v1 = D_8012BBF8[i].unk0;
        if (temp_v1 == NULL) {
            continue;
        }
        temp_a3 = &D_800D478C[arg0 * 12];
        temp_v1->unk14 = temp_a3[0];
        temp_v1->unk15 = temp_a3[1];
        temp_v1->unk16 = temp_a3[2];
        temp_t1 = temp_a3 + 2;
        if (temp_a1 & 0x40) {
            temp_v1->unk18 = temp_t1[1];
            temp_v1->unk19 = temp_t1[2];
            temp_t1 += 3;
            temp_v1->unk1A = temp_t1[0];
        }
    }
}

#define G_CC_UNK1 PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, TEXEL0
#define G_CC_UNK2 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0

#define TRANSPARENT_SURFACE (1 << 1)

void func_800FF71C(struct UnkStruct800AC954 *arg0, u8 arg1, u8 arg2) {
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE)
    if (arg0->renderFlags & TRANSPARENT_SURFACE) {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        gSPObjRenderMode(gDisplayListHeads[0]++, (G_OBJRM_BILERP | G_OBJRM_XLU));
    } else {
        gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
        gSPObjRenderMode(gDisplayListHeads[0]++, G_OBJRM_BILERP);
    }
    if (arg2 & (1 | 2)) {
        if (arg2 & 1) {
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha);
            gDPSetEnvColor(gDisplayListHeads[0]++,
                           arg0->envColorRed,
                           arg0->envColorGreen,
                           arg0->envColorBlue,
                           arg0->envColorAlpha);
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_BLENDPEDECALA, G_CC_BLENDPEDECALA);
            return;
        } else {
            gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                            arg0->primColorRed,
                            arg0->primColorGreen,
                            arg0->primColorBlue,
                            arg0->primColorAlpha);
            gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_UNK1, G_CC_UNK1);
            return;
        }
    }
    if (arg1 == 4) {
        gDPSetPrimColor(gDisplayListHeads[0]++, 0, 0,
                        arg0->primColorRed,
                        arg0->primColorGreen,
                        arg0->primColorBlue,
                        arg0->primColorAlpha);
        gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_UNK2, G_CC_UNK2);
        return;
    }
    gDPSetCombineMode(gDisplayListHeads[0]++, G_CC_DECALRGBA, G_CC_DECALRGBA);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_800FF9B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100AC8.s")

u32 func_80100DF8(s32 arg0) {
    u32 phi_v0;
    u32 i;

    phi_v0 = D_80124740[arg0];
    for (i = 0; i < D_8012B9B0; i++) {
        if (phi_v0 == D_8012B9B8[i].unk4) {
            return 1;
        }
    }
    return 0;
}

void func_80100E50(u32 arg0) {
    HS64_omMakeGObj(arg0, &func_80100AC8, 0, 0);
}

u32 func_80100E7C(f32 arg0) {
    if (0.0f <= arg0) {
        if (arg0 <= 1.570796371f) {
            return 0;
        }
        return 1;
    }
    if (-1.570796371f <= arg0) {
        return 3;
    }
    return 2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_6/func_80100EE4.s")

void func_8010133C(void) {
    u32 i;

    for (i = 0; i < 10; i++) {
        D_8012BBF8[i].unk0 = NULL;
    }
}

void func_8010137C(void) {
    s32 i;

    func_8010133C();
    for (i = 0; i < 4; i++) {
        if (func_80100DF8(i) != 0) {
            func_80100E50(i);
        }
    }
    omCreateProcess(HS64_omMakeGObj(0, 0, 0x1A, 0x80000000), &func_80100EE4, 1, 0);
}
