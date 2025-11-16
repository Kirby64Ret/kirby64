#include <PR/gbi.h>

#include "common.h"
#include "GObj.h"
#include "main/gtl.h"

typedef struct {
    u32 unk0;
    u16 unk4;
    u16 drawRate;
} UnkStruct8015A560_ovl6;

extern UnkStruct8015A560_ovl6 *D_8015A560_ovl6;

extern void *D_8015A694_ovl6;
extern u32 D_800D6AB8[];

extern Lights1 D_8015A670_ovl6;
extern void *D_8015A56C_ovl6; // possible also a lights1?

void func_80151100_ovl6(void) {
    if (D_8015A694_ovl6 != 0) {
        func_800067B8();
    }
    omUpdateAll();
}

#ifdef MIPS_TO_C

s32 func_80151138_ovl6(s32 arg0) {
    void *sp1C;
    s32 temp_a0;
    s32 var_v1;
    void *temp_v0;

    if (scNextFrameBuffer != 0) {
        return 1;
    }
    sp1C = osViGetNextFramebuffer();
    temp_v0 = osViGetCurrentFramebuffer();
    if (gCurrFrameBuffer == gFrameBuffers.unk0) {
        var_v1 = 1;
    } else if (gCurrFrameBuffer == gFrameBuffers.unk4) {
        var_v1 = 2;
    } else {
        if (gCurrFrameBuffer == gFrameBuffers.unk8) {

        }
        var_v1 = 0;
    }
    temp_a0 = *(&gFrameBuffers + (var_v1 * 4));
    if ((temp_v0 != temp_a0) && (sp1C != temp_a0)) {
        scNextFrameBuffer = temp_a0;
        scTimestampSetFb = osGetCount();
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80151138_ovl6.s")
#endif

void func_80151204_ovl6(GObj *gobj) {
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    func_8009E8F4(gobj, 2, &gDisplayListHeads[1]);
    gDPPipeSync(gDisplayListHeads[1]++);
    gDPSetColorDither(gDisplayListHeads[1]++, G_CD_MAGICSQ);
    gDPSetAlphaDither(gDisplayListHeads[1]++, G_AD_DISABLE);
    gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_AA_ZB_XLU_SURF2);
}

void func_801512F0_ovl6(void) {
    GObj *gobj;
    u32 i;

    func_8009B99C(0x200);
    func_800A04B8(0x10);
    gobj = HS64_omMakeGObj(0, 0, 0x18, 0x80000000);
    omLinkGObjDL(gobj, func_80151204_ovl6, 0x10, 8, 0x10);
    gobj->unk30 = 1;

    gobj = HS64_omMakeGObj(0, 0, 0x18, 0x80000000);
    omLinkGObjDL(gobj, func_80151204_ovl6, 0x10, 0x10, 0x10);
    gobj->unk30 = 2;

    for (i = 0; i < 8; i++) {
        D_800D6AB8[i] = 0;
    }
}

#ifdef MIPS_TO_C
void func_801513C8_ovl6(void) {
    func_800A7A70(0, 0x40001, 0x40002);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801513C8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801513F8_ovl6(s32 arg0, s32 arg1, s32 arg2) {
    void *sp2C;
    f32 sp20;
    s32 temp_a1;
    void *temp_v0;

    if (arg1 == 0xD) {
        temp_a1 = arg2 & 0xFFFF;
        if (temp_a1 >= 0) {
            temp_v0 = func_800A19EC((arg2 >> 0x10) * 8, temp_a1, arg0);
            if (temp_v0 != NULL) {
                if (temp_v0->unk4C != 0) {
                    sp2C = temp_v0;
                    func_800B2340(&sp20, arg0, 0xFFFF, arg0);
                    sp2C->unk4C->unk4 = sp20;
                    sp2C->unk4C->unk8 = sp24;
                    sp2C->unk4C->unkC = sp28;
                    return;
                }
                temp_v0->unk48 = arg0;
            }
        }
    } else {
        func_800B0F28(arg0, arg2, arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801513F8_ovl6.s")
#endif

#ifdef MIPS_TO_C
void func_801514A0_ovl6(void *arg0, void *arg1) {
    u8 temp_v1;
    u8 temp_v1_2;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 temp_v1_5;
    u8 temp_v1_6;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk3C->unk80;
    temp_v1 = temp_v0->unk68;
    temp_v0_2 = temp_v0 + 8;
    arg1->unkC = temp_v1;
    arg1->unk8 = temp_v1;
    temp_v1_2 = temp_v0_2->unk61;
    arg1->unkD = temp_v1_2;
    arg1->unk9 = temp_v1_2;
    temp_v1_3 = temp_v0_2->unk62;
    arg1->unkE = temp_v1_3;
    arg1->unkA = temp_v1_3;
    temp_v1_4 = temp_v0_2->unk64;
    arg1->unk4 = temp_v1_4;
    arg1->unk0 = temp_v1_4;
    temp_v1_5 = temp_v0_2->unk65;
    arg1->unk5 = temp_v1_5;
    arg1->unk1 = temp_v1_5;
    temp_v1_6 = temp_v0_2->unk66;
    arg1->unkB = 0;
    arg1->unkF = 0;
    arg1->unk13 = 0;
    arg1->unk3 = 0;
    arg1->unk7 = 0;
    arg1->unk6 = temp_v1_6;
    arg1->unk2 = temp_v1_6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801514A0_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015150C_ovl6(void) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f8;
    void *temp_t8;

    temp_t8 = D_8015A56C_ovl6->unk3C;
    sp34.unk0 = temp_t8->unk30;
    sp34.unk4 = temp_t8->unk34;
    sp34.unk8 = temp_t8->unk38;
    sp30 = sinf(sp34);
    sp2C = cosf(sp34);
    sp28 = sinf(sp38);
    sp24 = cosf(sp38);
    sp20 = sinf(sp3C);
    temp_f0 = cosf(sp3C);
    temp_f2 = sp2C * sp28;
    temp_f16 = (temp_f2 * temp_f0) + (sp30 * sp20);
    sp34 = temp_f16;
    temp_f18 = (temp_f2 * sp20) - (sp30 * temp_f0);
    temp_f8 = sp2C * sp24;
    sp38 = temp_f18;
    sp3C = temp_f8;
    temp_f2_2 = 100.0f / sqrtf((temp_f16 * temp_f16) + (temp_f18 * temp_f18) + (temp_f8 * temp_f8));
    D_8015A670_ovl6->unk10 = -(sp34 * temp_f2_2);
    D_8015A670_ovl6->unk11 = -(sp38 * temp_f2_2);
    D_8015A670_ovl6->unk12 = -(sp3C * temp_f2_2);
}
#else
void func_8015150C_ovl6(void);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015150C_ovl6.s")
#endif

#ifdef NON_MATCHING
void func_8015166C_ovl6(Gfx **glistp) {
    func_8015150C_ovl6();
    func_801514A0_ovl6(D_8015A56C_ovl6, D_8015A670_ovl6);

    gSPSetLights1(*glistp++, D_8015A670_ovl6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015166C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015170C_ovl6(s32 *arg0) {
    s32 temp_v0_6;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    gDPPipeSync(gDisplayListHeads[0]++);
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xDB060010;
    temp_v0_2->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
    temp_v0_3 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x18;
    temp_v0_3->unk0 = 0xDB020000;
    temp_v0_4 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xDC08060A;
    temp_v0_4->unk4 = D_8015A670_ovl6 + 8;
    temp_v0_5 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xDC08090A;
    temp_v0_5->unk4 = D_8015A670_ovl6;
    temp_v0_6 = func_800AB0F4();
    switch (temp_v0_6) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(arg0);
            return;
        case 27:
        case 29:
            func_8001585C(arg0);
            return;
        case 20:
        case 22:
        case 24:
        case 26:
            temp_v0_7 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0;
            temp_v0_7->unk0 = 0xE7000000;
            temp_v0_8 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_8 + 8;
            temp_v0_8->unk0 = 0xDB060010;
            temp_v0_8->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_9 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0x18;
            temp_v0_9->unk0 = 0xDB020000;
            temp_v0_10 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_10 + 8;
            temp_v0_10->unk0 = 0xDC08060A;
            temp_v0_10->unk4 = D_8015A670_ovl6 + 8;
            temp_v0_11 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_11 + 8;
            temp_v0_11->unk0 = 0xDC08090A;
            temp_v0_11->unk4 = D_8015A670_ovl6;
            func_80014AD4(arg0);
            return;
        case 28:
        case 30:
            temp_v0_12 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_12 + 8;
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xDB060010;
            temp_v0_13->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_14 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0x18;
            temp_v0_14->unk0 = 0xDB020000;
            temp_v0_15 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xDC08060A;
            temp_v0_15->unk4 = D_8015A670_ovl6 + 8;
            temp_v0_16 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_16 + 8;
            temp_v0_16->unk0 = 0xDC08090A;
            temp_v0_16->unk4 = D_8015A670_ovl6;
            func_80015BCC(arg0);
            /* fallthrough */
        default:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015170C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015198C_ovl6(s32 *arg0) {
    s32 temp_v0_7;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0 + 8;
    temp_v0->unk0 = 0xE7000000;
    temp_v0->unk4 = 0;
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xDB060010;
    temp_v0_2->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
    temp_v0_3 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x18;
    temp_v0_3->unk0 = 0xDB020000;
    temp_v0_4 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xDC08060A;
    temp_v0_4->unk4 = D_8015A670_ovl6 + 8;
    temp_v0_5 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_5 + 8;
    temp_v0_5->unk0 = 0xDC08090A;
    temp_v0_5->unk4 = D_8015A670_ovl6;
    temp_v0_6 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_6 + 8;
    temp_v0_6->unk0 = 0xFB000000;
    temp_v0_6->unk4 = (D_8015A670_ovl6->unkA << 8) | (D_8015A670_ovl6->unk8 << 0x18) | (D_8015A670_ovl6->unk9 << 0x10) | 0xFF;
    temp_v0_7 = func_800AB0F4(D_8015A670_ovl6);
    switch (temp_v0_7) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(arg0);
            return;
        case 27:
        case 29:
            func_8001585C(arg0);
            return;
        case 20:
        case 22:
        case 24:
        case 26:
            temp_v0_8 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            temp_v0_9 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_9 + 8;
            temp_v0_9->unk0 = 0xDB060010;
            temp_v0_9->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_10 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_10 + 8;
            temp_v0_10->unk4 = 0x18;
            temp_v0_10->unk0 = 0xDB020000;
            temp_v0_11 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_11 + 8;
            temp_v0_11->unk0 = 0xDC08060A;
            temp_v0_11->unk4 = D_8015A670_ovl6 + 8;
            temp_v0_12 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0xDC08090A;
            temp_v0_12->unk4 = D_8015A670_ovl6;
            temp_v0_13 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xFB000000;
            temp_v0_13->unk4 = (D_8015A670_ovl6->unkA << 8) | (D_8015A670_ovl6->unk8 << 0x18) | (D_8015A670_ovl6->unk9 << 0x10) | 0xFF;
            func_80014AD4(arg0, D_8015A670_ovl6);
            return;
        case 28:
        case 30:
            temp_v0_14 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE7000000;
            temp_v0_15 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xDB060010;
            temp_v0_15->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_16 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0x18;
            temp_v0_16->unk0 = 0xDB020000;
            temp_v0_17 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_17 + 8;
            temp_v0_17->unk0 = 0xDC08060A;
            temp_v0_17->unk4 = D_8015A670_ovl6 + 8;
            temp_v0_18 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_18 + 8;
            temp_v0_18->unk0 = 0xDC08090A;
            temp_v0_18->unk4 = D_8015A670_ovl6;
            temp_v0_19 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_19 + 8;
            temp_v0_19->unk0 = 0xFB000000;
            temp_v0_19->unk4 = (D_8015A670_ovl6->unkA << 8) | (D_8015A670_ovl6->unk8 << 0x18) | (D_8015A670_ovl6->unk9 << 0x10) | 0xFF;
            func_80015BCC(arg0, D_8015A670_ovl6);
            /* fallthrough */
        default:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015198C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80151CD0_ovl6(s32 arg0, ? arg1) {
    f32 sp24;
    f32 temp_f0;
    f32 temp_f2;

    lbvector_Diff(&sp24, (*(&D_8015A570_ovl6 + (arg0 * 4)))->unk3C + 0x1C, arg1, arg0);
    temp_f0 = sqrtf((sp24 * sp24) + (sp28 * sp28) + (sp2C * sp2C));
    if (temp_f0 == 0.0f) {
        gDynamicBuffer1.unkC->unk12 = 0;
        gDynamicBuffer1.unkC->unk10 = gDynamicBuffer1.unkC->unk12;
        gDynamicBuffer1.unkC->unk11 = 0x64;
        return;
    }
    temp_f2 = 100.0f / temp_f0;
    gDynamicBuffer1.unkC->unk10 = sp24 * temp_f2;
    gDynamicBuffer1.unkC->unk11 = sp28 * temp_f2;
    gDynamicBuffer1.unkC->unk12 = sp2C * temp_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80151CD0_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80151DDC_ovl6(s32 arg0) {
    func_80151CD0_ovl6((*(&D_800DE350 + (arg0 * 4)))->unk3C + 0x1C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80151DDC_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80151E10_ovl6(s32 arg0) {
    ? sp1C;

    utilGetTransformSRT(&sp1C, (*(&D_800DE350 + (arg0 * 4)))->unk3C->unk10->unk10);
    func_80151CD0_ovl6(arg0, &sp1C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80151E10_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80151E60_ovl6(s32 *arg0, s32 arg1) {
    s32 *sp2C;
    s32 sp28;
    s32 *temp_t3;
    s32 temp_t4;
    s32 temp_v0_6;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0 + 8;
    temp_v0->unk0 = 0xE7000000;
    temp_v0->unk4 = 0;
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_t3 = (*arg0 * 4) + &gSegment4StartArray;
    temp_v0_2->unk0 = 0xDB060010;
    temp_v0_2->unk4 = *temp_t3;
    temp_v0_3 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x18;
    temp_v0_3->unk0 = 0xDB020000;
    temp_v0_4 = gDisplayListHeads.unk0;
    temp_t4 = arg1 + 8;
    gDisplayListHeads.unk0 = temp_v0_4 + 8;
    temp_v0_4->unk4 = temp_t4;
    temp_v0_4->unk0 = 0xDC08060A;
    temp_v0_5 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_5 + 8;
    temp_v0_5->unk4 = arg1;
    temp_v0_5->unk0 = 0xDC08090A;
    sp28 = temp_t4;
    sp2C = temp_t3;
    temp_v0_6 = func_800AB0F4();
    switch (temp_v0_6) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            temp_v0_7 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_7 + 8;
            temp_v0_7->unk4 = 0;
            temp_v0_7->unk0 = 0xE7000000;
            temp_v0_8 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_8 + 8;
            temp_v0_8->unk0 = 0xDB060010;
            temp_v0_8->unk4 = *temp_t3;
            temp_v0_9 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0x18;
            temp_v0_9->unk0 = 0xDB020000;
            temp_v0_10 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_10 + 8;
            temp_v0_10->unk4 = temp_t4;
            temp_v0_10->unk0 = 0xDC08060A;
            temp_v0_11 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_11 + 8;
            temp_v0_11->unk4 = arg1;
            temp_v0_11->unk0 = 0xDC08090A;
            func_80014AD4(arg0);
            temp_v0_12 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_12 + 8;
            temp_v0_12->unk4 = 0;
            temp_v0_12->unk0 = 0xE7000000;
            temp_v0_13 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xDC08060A;
            temp_v0_13->unk4 = D_8015A670_ovl6 + 8;
            break;
        case 28:
        case 30:
            temp_v0_14 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE7000000;
            temp_v0_15 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xDB060010;
            temp_v0_15->unk4 = *temp_t3;
            temp_v0_16 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0x18;
            temp_v0_16->unk0 = 0xDB020000;
            temp_v0_17 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_17 + 8;
            temp_v0_17->unk4 = temp_t4;
            temp_v0_17->unk0 = 0xDC08060A;
            temp_v0_18 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_18 + 8;
            temp_v0_18->unk4 = arg1;
            temp_v0_18->unk0 = 0xDC08090A;
            func_80015BCC(arg0);
            temp_v0_19 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_19 + 8;
            temp_v0_19->unk4 = 0;
            temp_v0_19->unk0 = 0xE7000000;
            temp_v0_20 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_20 + 8;
            temp_v0_20->unk0 = 0xDC08060A;
            temp_v0_20->unk4 = D_8015A670_ovl6 + 8;
            break;
    }
    temp_v0_21 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_21 + 8;
    temp_v0_21->unk4 = 0;
    temp_v0_21->unk0 = 0xE7000000;
    temp_v0_22 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_22 + 8;
    temp_v0_22->unk0 = 0xDC08060A;
    temp_v0_22->unk4 = D_8015A670_ovl6 + 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80151E60_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152138_ovl6(s32 *arg0, void *arg1) {
    s32 *sp30;
    s32 sp2C;
    s32 *temp_t4;
    s32 temp_t5;
    s32 temp_v0_7;
    void *temp_v0;
    void *temp_v0_10;
    void *temp_v0_11;
    void *temp_v0_12;
    void *temp_v0_13;
    void *temp_v0_14;
    void *temp_v0_15;
    void *temp_v0_16;
    void *temp_v0_17;
    void *temp_v0_18;
    void *temp_v0_19;
    void *temp_v0_20;
    void *temp_v0_21;
    void *temp_v0_22;
    void *temp_v0_23;
    void *temp_v0_24;
    void *temp_v0_25;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_8;
    void *temp_v0_9;

    temp_v0 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0 + 8;
    temp_v0->unk0 = 0xE7000000;
    temp_v0->unk4 = 0;
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_t4 = (*arg0 * 4) + &gSegment4StartArray;
    temp_v0_2->unk0 = 0xDB060010;
    temp_v0_2->unk4 = *temp_t4;
    temp_v0_3 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x18;
    temp_v0_3->unk0 = 0xDB020000;
    temp_v0_4 = gDisplayListHeads.unk0;
    temp_t5 = arg1 + 8;
    gDisplayListHeads.unk0 = temp_v0_4 + 8;
    temp_v0_4->unk4 = temp_t5;
    temp_v0_4->unk0 = 0xDC08060A;
    temp_v0_5 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_5 + 8;
    temp_v0_5->unk4 = arg1;
    temp_v0_5->unk0 = 0xDC08090A;
    temp_v0_6 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_6 + 8;
    temp_v0_6->unk0 = 0xFB000000;
    temp_v0_6->unk4 = (arg1->unkA << 8) | (arg1->unk8 << 0x18) | (arg1->unk9 << 0x10) | 0xFF;
    sp2C = temp_t5;
    sp30 = temp_t4;
    temp_v0_7 = func_800AB0F4();
    switch (temp_v0_7) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(arg0, arg1);
            break;
        case 27:
        case 29:
            func_8001585C(arg0, arg1);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            temp_v0_8 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_8 + 8;
            temp_v0_8->unk4 = 0;
            temp_v0_8->unk0 = 0xE7000000;
            temp_v0_9 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_9 + 8;
            temp_v0_9->unk0 = 0xDB060010;
            temp_v0_9->unk4 = *temp_t4;
            temp_v0_10 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_10 + 8;
            temp_v0_10->unk4 = 0x18;
            temp_v0_10->unk0 = 0xDB020000;
            temp_v0_11 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_11 + 8;
            temp_v0_11->unk4 = temp_t5;
            temp_v0_11->unk0 = 0xDC08060A;
            temp_v0_12 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_12 + 8;
            temp_v0_12->unk4 = arg1;
            temp_v0_12->unk0 = 0xDC08090A;
            temp_v0_13 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_13 + 8;
            temp_v0_13->unk0 = 0xFB000000;
            temp_v0_13->unk4 = (arg1->unkA << 8) | (arg1->unk8 << 0x18) | (arg1->unk9 << 0x10) | 0xFF;
            func_80014AD4(arg0, arg1);
            temp_v0_14 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0;
            temp_v0_14->unk0 = 0xE7000000;
            temp_v0_15 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xDC08060A;
            temp_v0_15->unk4 = D_8015A670_ovl6 + 8;
            break;
        case 28:
        case 30:
            temp_v0_16 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xE7000000;
            temp_v0_17 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_17 + 8;
            temp_v0_17->unk0 = 0xDB060010;
            temp_v0_17->unk4 = *temp_t4;
            temp_v0_18 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_18 + 8;
            temp_v0_18->unk4 = 0x18;
            temp_v0_18->unk0 = 0xDB020000;
            temp_v0_19 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_19 + 8;
            temp_v0_19->unk4 = temp_t5;
            temp_v0_19->unk0 = 0xDC08060A;
            temp_v0_20 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_20 + 8;
            temp_v0_20->unk4 = arg1;
            temp_v0_20->unk0 = 0xDC08090A;
            temp_v0_21 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_21 + 8;
            temp_v0_21->unk0 = 0xFB000000;
            temp_v0_21->unk4 = (arg1->unkA << 8) | (arg1->unk8 << 0x18) | (arg1->unk9 << 0x10) | 0xFF;
            func_80015BCC(arg0, arg1);
            temp_v0_22 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_22 + 8;
            temp_v0_22->unk4 = 0;
            temp_v0_22->unk0 = 0xE7000000;
            temp_v0_23 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_23 + 8;
            temp_v0_23->unk0 = 0xDC08060A;
            temp_v0_23->unk4 = D_8015A670_ovl6 + 8;
            break;
    }
    temp_v0_24 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_24 + 8;
    temp_v0_24->unk4 = 0;
    temp_v0_24->unk0 = 0xE7000000;
    temp_v0_25 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_25 + 8;
    temp_v0_25->unk0 = 0xDC08060A;
    temp_v0_25->unk4 = D_8015A670_ovl6 + 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152138_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801524C8_ovl6(s32 *arg0) {
    s32 *temp_v0_10;
    s32 *temp_v0_11;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_15;
    s32 *temp_v0_16;
    s32 *temp_v0_17;
    s32 *temp_v0_18;
    s32 *temp_v0_19;
    s32 *temp_v0_20;
    s32 *temp_v0_21;
    s32 *temp_v0_22;
    s32 *temp_v0_23;
    s32 *temp_v0_24;
    s32 *temp_v0_25;
    s32 *temp_v0_26;
    s32 *temp_v0_27;
    s32 *temp_v0_28;
    s32 *temp_v0_9;
    s32 *var_v0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_v0_8;
    void *temp_v0;
    void *temp_v0_29;
    void *temp_v0_2;
    void *temp_v0_30;
    void *temp_v0_31;
    void *temp_v0_32;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;

    temp_v0 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0 + 8;
    temp_v0->unk0 = 0xE7000000;
    temp_v0->unk4 = 0;
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_v0_2->unk0 = 0xDB060010;
    temp_v0_2->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
    temp_v0_3 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_3 + 8;
    temp_v0_3->unk4 = 0x10000;
    temp_v0_3->unk0 = 0xD9FFFFFF;
    temp_v0_4 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_4 + 8;
    temp_v0_4->unk0 = 0xDB080000;
    temp_a2 = D_8015A7B8_ovl6.unk2 - D_8015A7B8_ovl6.unk0;
    temp_v0_4->unk4 = ((0x1F400 / temp_a2) << 0x10) | ((((D_8015A7B8_ovl6.unk0 * -0x100) + 0x1F400) / temp_a2) & 0xFFFF);
    temp_v0_5 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_5 + 8;
    temp_v0_5->unk4 = 0x100000;
    temp_v0_5->unk0 = 0xE3000A01;
    temp_v0_6 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_6 + 8;
    temp_v0_6->unk4 = 0xC8112078;
    temp_v0_6->unk0 = 0xE200001C;
    temp_v0_7 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_7 + 8;
    temp_v0_7->unk0 = 0xF8000000;
    temp_v0_7->unk4 = (D_8015A7B8_ovl6.unk4 << 0x18) | (D_8015A7B8_ovl6.unk5 << 0x10) | (D_8015A7B8_ovl6.unk6 << 8) | 0xFF;
    temp_v0_8 = func_800AB0F4(D_8015A7B8_ovl6.unk0, temp_a2, temp_v0);
    switch (temp_v0_8) {
        case 19:
        case 21:
        case 23:
        case 25:
            func_800143A4(arg0);
            break;
        case 27:
        case 29:
            func_8001585C(arg0);
            break;
        case 20:
        case 22:
        case 24:
        case 26:
            temp_v0_9 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_9 + 8;
            temp_v0_9->unk4 = 0;
            temp_v0_9->unk0 = 0xE7000000;
            temp_v0_10 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_10 + 8;
            temp_v0_10->unk0 = 0xDB060010;
            temp_v0_10->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_11 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_11 + 8;
            temp_v0_11->unk4 = 0x10000;
            temp_v0_11->unk0 = 0xD9FFFFFF;
            temp_v0_12 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_12 + 8;
            temp_v0_12->unk0 = 0xDB080000;
            temp_a2_2 = D_8015A7B8_ovl6.unk2 - D_8015A7B8_ovl6.unk0;
            temp_v0_12->unk4 = ((0x1F400 / temp_a2_2) << 0x10) | ((((D_8015A7B8_ovl6.unk0 * -0x100) + 0x1F400) / temp_a2_2) & 0xFFFF);
            temp_v0_13 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_13 + 8;
            temp_v0_13->unk4 = 0x100000;
            temp_v0_13->unk0 = 0xE3000A01;
            temp_v0_14 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_14 + 8;
            temp_v0_14->unk4 = 0xC81049D8;
            temp_v0_14->unk0 = 0xE200001C;
            temp_v0_15 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_15 + 8;
            temp_v0_15->unk0 = 0xF8000000;
            temp_v0_15->unk4 = (D_8015A7B8_ovl6.unk4 << 0x18) | (D_8015A7B8_ovl6.unk5 << 0x10) | (D_8015A7B8_ovl6.unk6 << 8) | 0xFF;
            func_80014AD4(arg0, D_8015A7B8_ovl6.unk0, temp_a2_2, temp_v0_9);
            temp_v0_16 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_16 + 8;
            temp_v0_16->unk4 = 0;
            temp_v0_16->unk0 = 0xE7000000;
            temp_v0_17 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_17 + 8;
            temp_v0_17->unk4 = 0;
            temp_v0_17->unk0 = 0xD9FEFFFF;
            temp_v0_18 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_18 + 8;
            temp_v0_18->unk4 = 0;
            temp_v0_18->unk0 = 0xE3000A01;
            var_v0 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = var_v0 + 8;
            var_v0->unk4 = 0x5049D8;
block_6:
            *var_v0 = 0xE200001C;
            break;
        case 28:
        case 30:
            temp_v0_19 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_19 + 8;
            temp_v0_19->unk4 = 0;
            temp_v0_19->unk0 = 0xE7000000;
            temp_v0_20 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_20 + 8;
            temp_v0_20->unk0 = 0xDB060010;
            temp_v0_20->unk4 = *(&gSegment4StartArray + (*arg0 * 4));
            temp_v0_21 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_21 + 8;
            temp_v0_21->unk4 = 0x10000;
            temp_v0_21->unk0 = 0xD9FFFFFF;
            temp_v0_22 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_22 + 8;
            temp_v0_22->unk0 = 0xDB080000;
            temp_a2_3 = D_8015A7B8_ovl6.unk2 - D_8015A7B8_ovl6.unk0;
            temp_v0_22->unk4 = ((0x1F400 / temp_a2_3) << 0x10) | ((((D_8015A7B8_ovl6.unk0 * -0x100) + 0x1F400) / temp_a2_3) & 0xFFFF);
            temp_v0_23 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_23 + 8;
            temp_v0_23->unk4 = 0x100000;
            temp_v0_23->unk0 = 0xE3000A01;
            temp_v0_24 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_24 + 8;
            temp_v0_24->unk4 = 0xC81049D8;
            temp_v0_24->unk0 = 0xE200001C;
            temp_v0_25 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_25 + 8;
            temp_v0_25->unk0 = 0xF8000000;
            temp_v0_25->unk4 = (D_8015A7B8_ovl6.unk4 << 0x18) | (D_8015A7B8_ovl6.unk5 << 0x10) | (D_8015A7B8_ovl6.unk6 << 8) | 0xFF;
            func_80015BCC(arg0, D_8015A7B8_ovl6.unk0, temp_a2_3, temp_v0_19);
            temp_v0_26 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_26 + 8;
            temp_v0_26->unk4 = 0;
            temp_v0_26->unk0 = 0xE7000000;
            temp_v0_27 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_27 + 8;
            temp_v0_27->unk4 = 0;
            temp_v0_27->unk0 = 0xD9FEFFFF;
            temp_v0_28 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = temp_v0_28 + 8;
            temp_v0_28->unk4 = 0;
            temp_v0_28->unk0 = 0xE3000A01;
            var_v0 = gDisplayListHeads.unk4;
            gDisplayListHeads.unk4 = var_v0 + 8;
            var_v0->unk4 = 0x5049D8;
            goto block_6;
    }
    temp_v0_29 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_29 + 8;
    temp_v0_29->unk4 = 0;
    temp_v0_29->unk0 = 0xE7000000;
    temp_v0_30 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_30 + 8;
    temp_v0_30->unk4 = 0;
    temp_v0_30->unk0 = 0xD9FEFFFF;
    temp_v0_31 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_31 + 8;
    temp_v0_31->unk4 = 0;
    temp_v0_31->unk0 = 0xE3000A01;
    temp_v0_32 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_32 + 8;
    temp_v0_32->unk4 = 0x552078;
    temp_v0_32->unk0 = 0xE200001C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801524C8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152B28_ovl6(s32 *arg0) {
    s32 sp1C;
    s32 sp18;
    s32 temp_a2;

    temp_a2 = *arg0;
    sp1C = temp_a2;
    sp18 = D_8004A404;
    func_80151DDC_ovl6(temp_a2, temp_a2);
    func_801514A0_ovl6(*(&D_8015A570_ovl6 + (temp_a2 * 4)), sp18, temp_a2);
    gDynamicBuffer1.unkC = gDynamicBuffer1.unkC + 0x18;
    func_80151E60_ovl6(arg0, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152B28_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152B9C_ovl6(s32 *arg0) {
    s32 sp1C;
    s32 sp18;
    s32 temp_a2;

    temp_a2 = *arg0;
    sp1C = temp_a2;
    sp18 = D_8004A404;
    func_80151DDC_ovl6(temp_a2, temp_a2);
    func_801514A0_ovl6(*(&D_8015A570_ovl6 + (temp_a2 * 4)), sp18, temp_a2);
    gDynamicBuffer1.unkC = gDynamicBuffer1.unkC + 0x18;
    func_80152138_ovl6(arg0, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152B9C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152C10_ovl6(s32 *arg0) {
    s32 sp1C;
    s32 sp18;
    s32 temp_a2;

    temp_a2 = *arg0;
    sp1C = temp_a2;
    sp18 = D_8004A404;
    func_80151E10_ovl6(temp_a2, temp_a2);
    func_801514A0_ovl6(*(&D_8015A570_ovl6 + (temp_a2 * 4)), sp18, temp_a2);
    gDynamicBuffer1.unkC = gDynamicBuffer1.unkC + 0x18;
    func_80151E60_ovl6(arg0, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152C10_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152C84_ovl6(s32 *arg0) {
    s32 sp1C;
    s32 sp18;
    s32 temp_a2;

    temp_a2 = *arg0;
    sp1C = temp_a2;
    sp18 = D_8004A404;
    func_80151E10_ovl6(temp_a2, temp_a2);
    func_801514A0_ovl6(*(&D_8015A570_ovl6 + (temp_a2 * 4)), sp18, temp_a2);
    gDynamicBuffer1.unkC = gDynamicBuffer1.unkC + 0x18;
    func_80152138_ovl6(arg0, sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152C84_ovl6.s")
#endif

#ifdef MIPS_TO_C
void func_80152CF8_ovl6(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152CF8_ovl6.s")
#endif

#ifdef MIPS_TO_C
void func_80152D00_ovl6(void *arg0) {
    u32 var_v1;
    void *temp_a0;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *var_a1;
    void *var_v0;

    var_v0 = arg0->unk3C;
    if (var_v0 != NULL) {
        do {
            var_v1 = 0;
            var_a1 = var_v0;
            if (var_v0->unk56 != 0) {
                do {
                    temp_a2 = var_a1->unk58;
                    var_v1 += 1;
                    if (temp_a2->unk4 == 0x1C) {
                        temp_a2->unk5 = 1;
                    }
                    var_a1 += 4;
                } while (var_v1 < var_v0->unk56);
            }
            temp_v1 = var_v0->unk10;
            if (temp_v1 != NULL) {
                var_v0 = temp_v1;
            } else {
                temp_v1_2 = var_v0->unk8;
                if (temp_v1_2 != NULL) {
                    var_v0 = temp_v1_2;
                } else {
loop_9:
                    temp_v1_3 = var_v0->unk14;
                    if (temp_v1_3 == 1) {
                        var_v0 = NULL;
                    } else {
                        temp_a0 = temp_v1_3->unk8;
                        if (temp_a0 != NULL) {
                            var_v0 = temp_a0;
                        } else {
                            var_v0 = temp_v1_3;
                            goto loop_9;
                        }
                    }
                }
            }
        } while (var_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152D00_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152DB8_ovl6(void) {
    void *sp2C;
    s32 sp28;
    s32 sp24;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    u8 temp_a1;

    sp2C = omCurrentObj;
    temp_a1 = D_8015A560_ovl6->unk3;
    temp_v0 = request_track_general(0x11, temp_a1, temp_a1 + 1);
    temp_v1 = temp_v0 * 4;
    omCurrentObj = *(&D_800DE350 + temp_v1);
    sp28 = temp_v0;
    omEndProcess(*(&gEntityGObjProcessArray + temp_v1));
    temp_v0_2 = temp_v0 * 4;
    sp24 = temp_v0_2;
    omEndProcess(*(&gEntityGObjProcessArray2 + temp_v0_2));
    omEndProcess(*(&gEntityGObjProcessArray5 + temp_v0_2));
    omCurrentObj->unk48 = &func_801513F8_ovl6;
    omCreateProcess(omCurrentObj, &animUpdateModelTreeAnimation, 1, 3);
    func_800A9864(D_8015A560_ovl6->unk4, 0x1869F, 0x10);
    func_80152D00_ovl6(omCurrentObj);
    omCurrentObj = sp2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152DB8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80152EA8_ovl6(void) {
    s32 *sp1C;
    s32 *temp_t9;
    s32 *temp_v1;
    s32 temp_a2;
    s32 temp_t3;
    u32 temp_a0;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_2;
    void *var_a0;
    void *var_a2;

    sp1C = omCurrentObj;
    temp_a0 = D_8015A560_ovl6->unk4;
    temp_t9 = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    omCurrentObj = temp_t9;
    temp_v1 = *(&D_800D00C4 + ((temp_a0 >> 0x10) * 4)) + ((temp_a0 & 0xFFFF) * 4);
    temp_a2 = *temp_v1;
    if (temp_a2 != 0) {
        *(&gSegment4StartArray + (*temp_t9 * 4)) = temp_a2;
        func_800A8564(*temp_v1, 1, temp_a2, &omCurrentObj);
    } else {
        *(&gSegment4StartArray + (*omCurrentObj * 4)) = func_800A9250(temp_a0, 3, temp_a2, &omCurrentObj);
    }
    temp_v0 = *(&gSegment4StartArray + (*omCurrentObj * 4));
    temp_t3 = temp_v0->unk8;
    switch (temp_t3) {
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
            omCurrentObj->unk3C->unk50 = temp_v0->unk0;
            break;
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
            var_a0 = omCurrentObj->unk3C;
            var_a2 = temp_v0->unk0;
            if (var_a0 != NULL) {
                do {
                    temp_v0_2 = var_a0->unk10;
                    var_a0->unk50 = var_a2->unk4;
                    if (temp_v0_2 != NULL) {
                        var_a0 = temp_v0_2;
                    } else {
                        temp_v0_3 = var_a0->unk8;
                        if (temp_v0_3 != NULL) {
                            var_a0 = temp_v0_3;
                        } else {
loop_11:
                            temp_v0_4 = var_a0->unk14;
                            if (temp_v0_4 == 1) {
                                var_a0 = NULL;
                            } else {
                                temp_v1_2 = temp_v0_4->unk8;
                                if (temp_v1_2 != NULL) {
                                    var_a0 = temp_v1_2;
                                } else {
                                    var_a0 = temp_v0_4;
                                    goto loop_11;
                                }
                            }
                        }
                    }
                    var_a2 += 0x2C;
                } while (var_a0 != NULL);
            }
            break;
    }
    omCurrentObj = sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80152EA8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153040_ovl6(void) {
    D_8015A7B0_ovl6 = 0;
    D_8015A7AC_ovl6 = 0;
    D_8015A7A8_ovl6 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153040_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153064_ovl6(void) {
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v1;
    u32 temp_v1_2;
    void *temp_v0_2;

    temp_v1 = D_8015A7B0_ovl6;
    temp_v0 = D_8015A7AC_ovl6;
    if (temp_v0 != temp_v1) {
        do {
            temp_v0_2 = &D_8015A6A8_ovl6 + (temp_v1 * 8);
            if (temp_v0_2->unk4 != 0) {
                func_800A8E54(temp_v0_2->unk0, 3);
            } else {
                func_800A8D64(temp_v0_2->unk0, 3);
            }
            temp_v0_3 = D_8015A7B0_ovl6 + 1;
            if (temp_v0_3 >= 0x20) {
                D_8015A7B0_ovl6 = 0;
            } else {
                D_8015A7B0_ovl6 = temp_v0_3;
            }
        } while (D_8015A7AC_ovl6 != D_8015A7B0_ovl6);
    }
    if (D_8015A7A8_ovl6 != temp_v0) {
        do {
            temp_v1_2 = temp_v0 + 1;
            if (temp_v1_2 >= 0x20) {
                D_8015A7AC_ovl6 = 0;
            } else {
                D_8015A7AC_ovl6 = temp_v1_2;
            }
        } while (D_8015A7A8_ovl6 != D_8015A7AC_ovl6);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153064_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015314C_ovl6(s32 arg0, s32 arg1) {
    s8 temp_a1;
    u32 temp_v1;
    void *temp_v0;

    temp_a1 = arg1 & 0xFF;
    if (arg0 != -1) {
        if ((D_8015A7B0_ovl6 != D_8015A7AC_ovl6) && (D_8015A7B0_ovl6 == D_8015A7A8_ovl6)) {
            fatal_printf("movie: Too many free data\n", temp_a1, arg0);
loop_4:
            goto loop_4;
        }
        temp_v0 = (D_8015A7A8_ovl6 * 8) + &D_8015A6A8_ovl6;
        temp_v0->unk0 = arg0;
        temp_v0->unk4 = temp_a1;
        temp_v1 = D_8015A7A8_ovl6 + 1;
        if (temp_v1 >= 0x20) {
            D_8015A7A8_ovl6 = 0;
            return;
        }
        D_8015A7A8_ovl6 = temp_v1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015314C_ovl6.s")
#endif

#ifdef MIPS_TO_C

s32 func_801531FC_ovl6(void) {
    if (D_8015A7AC_ovl6 == D_8015A7B0_ovl6) {
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801531FC_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153228_ovl6(s32 arg0) {
    s32 sp18;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    void *temp_v1;

    temp_v0 = arg0 * 4;
    temp_v1 = *(&D_800DE350 + temp_v0);
    sp18 = *(&D_800E02D0 + temp_v0);
    temp_a1 = temp_v1->unk2C;
    if ((&func_800AD1A0 == temp_a1) || (&func_801548F8_ovl6 == temp_a1)) {
        temp_a0 = temp_v1->unk4C;
        if (temp_a0 != 0) {
            func_800ACB7C(temp_a0, temp_a1, arg0);
        }
        func_800B1900(arg0 & 0xFFFF);
        func_8015314C_ovl6(sp18, 1);
        return;
    }
    func_800B1900(arg0 & 0xFFFF, temp_a1, arg0);
    func_8015314C_ovl6(sp18, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153228_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801532CC_ovl6(void) {
    func_80153228_ovl6(D_8015A560_ovl6->unk3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801532CC_ovl6.s")
#endif

#ifdef MIPS_TO_C
void func_801532F4_ovl6(void *arg0) {
    s8 var_v1;
    u32 var_a0;
    void *temp_a0;
    void *temp_a3;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *var_a2;
    void *var_v0;

    var_v0 = arg0->unk3C;
    if (var_v0 != NULL) {
        do {
            var_a0 = 0;
            var_v1 = 0;
            var_a2 = var_v0;
            if (var_v0->unk70 == 0) {
                var_v1 = 1;
            }
            if (var_v0->unk56 != 0) {
                do {
                    temp_a3 = var_a2->unk58;
                    var_a0 += 1;
                    if (temp_a3->unk4 == 0x1C) {
                        temp_a3->unk5 = var_v1;
                    }
                    var_a2 += 4;
                } while (var_a0 < var_v0->unk56);
            }
            temp_v1 = var_v0->unk10;
            if (temp_v1 != NULL) {
                var_v0 = temp_v1;
            } else {
                temp_v1_2 = var_v0->unk8;
                if (temp_v1_2 != NULL) {
                    var_v0 = temp_v1_2;
                } else {
loop_11:
                    temp_v1_3 = var_v0->unk14;
                    if (temp_v1_3 == 1) {
                        var_v0 = NULL;
                    } else {
                        temp_a0 = temp_v1_3->unk8;
                        if (temp_a0 != NULL) {
                            var_v0 = temp_a0;
                        } else {
                            var_v0 = temp_v1_3;
                            goto loop_11;
                        }
                    }
                }
            }
        } while (var_v0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801532F4_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801533C0_ovl6(void) {
    s32 sp1C;

    sp1C = omCurrentObj;
    omCurrentObj = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    func_800AA018(D_8015A560_ovl6->unk4);
    func_801532F4_ovl6(omCurrentObj);
    omCurrentObj = sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801533C0_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153424_ovl6(void) {
    s32 sp1C;

    sp1C = omCurrentObj;
    omCurrentObj = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    func_800AA018(D_8015A560_ovl6->unk4);
    omCurrentObj = sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153424_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015347C_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_8015170C_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015347C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801534A8_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_8015198C_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801534A8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801534D4_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_80152B28_ovl6;
    *(&D_8015A570_ovl6 + (D_8015A560_ovl6->unk3 * 4)) = *(&D_800DE350 + (D_8015A560_ovl6->unk4 * 4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801534D4_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153530_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_80152B9C_ovl6;
    *(&D_8015A570_ovl6 + (D_8015A560_ovl6->unk3 * 4)) = *(&D_800DE350 + (D_8015A560_ovl6->unk4 * 4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153530_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015358C_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_80152C10_ovl6;
    *(&D_8015A570_ovl6 + (D_8015A560_ovl6->unk3 * 4)) = *(&D_800DE350 + (D_8015A560_ovl6->unk4 * 4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015358C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801535E8_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_80152C84_ovl6;
    *(&D_8015A570_ovl6 + (D_8015A560_ovl6->unk3 * 4)) = *(&D_800DE350 + (D_8015A560_ovl6->unk4 * 4));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801535E8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153644_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_801524C8_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153644_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153670_ovl6(void) {
    func_800AAF34(0x10, D_8015A560_ovl6->unk4, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153670_ovl6.s")
#endif

#ifdef MIPS_TO_C
void func_801536A0_ovl6(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801536A0_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801536A8_ovl6(void) {
    void *temp_t9;

    temp_t9 = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    D_8015A56C_ovl6 = temp_t9;
    temp_t9->unk2C = &func_801536A0_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801536A8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801536E0_ovl6(void) {
    (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk2C = &func_801536A0_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801536E0_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015370C_ovl6(void) {
    D_800D799C->unk3C->unk84 = D_8015A560_ovl6->unk4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015370C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015372C_ovl6(void) {
    void *temp_v0;

    temp_v0 = D_800D799C->unk3C;
    temp_v0->unk80 = temp_v0->unk80 & ~2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015372C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015374C_ovl6(void *arg0) {
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk3C->unk80;
    temp_v0_2 = temp_v0 + 8;
    if (temp_v0->unk5B != 0) {
        temp_a0 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0 + 8;
        temp_a0->unk4 = 0;
        temp_a0->unk0 = 0xE7000000;
        temp_a0_2 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_2 + 8;
        temp_a0_2->unk4 = 0xFFFDF6FB;
        temp_a0_2->unk0 = 0xFCFFFFFF;
        temp_a0_3 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_3 + 8;
        temp_a0_3->unk4 = 0x504340;
        temp_a0_3->unk0 = 0xE200001C;
        temp_a0_4 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_4 + 8;
        temp_a0_4->unk0 = 0xFA000000;
        temp_a0_4->unk4 = (temp_v0_2->unk50 << 0x18) | (temp_v0_2->unk51 << 0x10) | (temp_v0_2->unk52 << 8) | temp_v0_2->unk53;
        temp_a0_5 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_5 + 8;
        temp_a0_5->unk4 = 0xC0098;
        temp_a0_5->unk0 = 0xF6440328;
        temp_a0_6 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_6 + 8;
        temp_a0_6->unk4 = 0;
        temp_a0_6->unk0 = 0xE7000000;
        temp_a0_7 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_7 + 8;
        temp_a0_7->unk4 = 0x5049D8;
        temp_a0_7->unk0 = 0xE200001C;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015374C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153868_ovl6(void) {
    s32 sp1C;

    if ((D_8015A690_ovl6 == 0) && (*(&D_800DE350 + 0xFC) == 0)) {
        sp1C = omCurrentObj;
        request_track_general(0x11, 0x3F, 0x40);
        omCurrentObj = *(&D_800DE350 + 0xFC);
        omEndProcess(*(&gEntityGObjProcessArray + 0xFC));
        omEndProcess(*(&gEntityGObjProcessArray2 + 0xFC));
        omEndProcess(*(&gEntityGObjProcessArray5 + 0xFC));
        omCreateProcess(omCurrentObj, &animUpdateModelTreeAnimation, 1, 3);
        func_800A9864(D_8015A560_ovl6->unk4, 0x1869F, 0xC);
        omCurrentObj = sp1C;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153868_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015392C_ovl6(void *arg0) {
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk3C->unk80;
    temp_v0_2 = temp_v0 + 8;
    if (temp_v0->unk5B != 0) {
        temp_a0 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0 + 8;
        temp_a0->unk4 = 0;
        temp_a0->unk0 = 0xE7000000;
        temp_a0_2 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_2 + 8;
        temp_a0_2->unk4 = 0xFFFDF6FB;
        temp_a0_2->unk0 = 0xFCFFFFFF;
        temp_a0_3 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_3 + 8;
        temp_a0_3->unk4 = 0x504340;
        temp_a0_3->unk0 = 0xE200001C;
        temp_a0_4 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_4 + 8;
        temp_a0_4->unk0 = 0xFA000000;
        temp_a0_4->unk4 = (temp_v0_2->unk50 << 0x18) | (temp_v0_2->unk51 << 0x10) | (temp_v0_2->unk52 << 8) | temp_v0_2->unk53;
        temp_a0_5 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_5 + 8;
        temp_a0_5->unk4 = 0x28028;
        temp_a0_5->unk0 = 0xF64D8398;
        temp_a0_6 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_6 + 8;
        temp_a0_6->unk4 = 0;
        temp_a0_6->unk0 = 0xE7000000;
        temp_a0_7 = gDisplayListHeads.unk4;
        gDisplayListHeads.unk4 = temp_a0_7 + 8;
        temp_a0_7->unk4 = 0x5049D8;
        temp_a0_7->unk0 = 0xE200001C;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015392C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153A48_ovl6(void) {
    void *temp_a0;

    temp_a0 = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    D_8015A668_ovl6 = temp_a0;
    omGMoveObjDLHead(temp_a0, 0x10, 1);
    D_8015A668_ovl6->unk2C = &func_8015374C_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153A48_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153AA8_ovl6(void) {
    void *temp_t9;
    void *temp_v0;

    temp_t9 = *(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4));
    D_8015A66C_ovl6 = temp_t9;
    temp_t9->unk2C = &func_801536A0_ovl6;
    temp_v0 = D_800D799C->unk3C;
    temp_v0->unk80 = temp_v0->unk80 | 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153AA8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153AF8_ovl6(void) {
    play_music(0, 0x99999999);
    play_music(0, D_8015A560_ovl6->unk4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153AF8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153B34_ovl6(void *arg0) {
    if (arg0->unk3C->unk80->unk98 == -3.4028235e38f) {
        func_80153228_ovl6(0x3F);
        func_80154858_ovl6();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153B34_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153B80_ovl6(s32 arg0) {
    u16 temp_v0;

    temp_v0 = *(&gPlayerControllers + 2);
    if ((temp_v0 & 0x9000) && (D_8015A68C_ovl6 & 1)) {
        func_80153E1C_ovl6(1);
        return;
    }
    if ((temp_v0 & 0x1000) && (D_8015A68C_ovl6 & 2)) {
        func_80153E1C_ovl6(2);
        return;
    }
    if ((temp_v0 & 0x4000) && (D_8015A68C_ovl6 & 0x10)) {
        func_80153E1C_ovl6(3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153B80_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153C28_ovl6(void) {
    void *sp1C;
    void *temp_a0;

    temp_a0 = *(&D_800DE350 + 0xFC);
    if ((D_8015A690_ovl6 == 0) && (temp_a0 != NULL)) {
        sp1C = temp_a0;
        omCreateProcess(temp_a0, &func_80153B34_ovl6, 1, 3);
        omGMoveObjDLHead(temp_a0, 0xC, 0);
        temp_a0->unk2C = &func_8015392C_ovl6;
        if (D_8015A6A0_ovl6 == 0) {
            D_8015A6A0_ovl6 = HS64_omMakeGObj(0, &func_80153B80_ovl6, 0, 0x80000000);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153C28_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153CBC_ovl6(void *arg0) {
    func_8015392C_ovl6();
    if (arg0->unk3C->unk80->unk98 == -3.4028235e38f) {
        D_8015A698_ovl6 = 2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153CBC_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153D10_ovl6(void) {
    s32 sp1C;
    s32 temp_t7;

    if (D_8015A690_ovl6 == 0) {
        temp_t7 = omCurrentObj;
        omCurrentObj = *(&D_800DE350 + 0xFC);
        sp1C = temp_t7;
        func_800AA018(D_8015A560_ovl6->unk4);
        omCurrentObj = sp1C;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153D10_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153D6C_ovl6(void) {
    void *sp1C;
    void *temp_a0;

    if (D_8015A690_ovl6 == 0) {
        temp_a0 = *(&D_800DE350 + 0xFC);
        sp1C = temp_a0;
        omGMoveObjDLHead(temp_a0, 0xC, 0);
        temp_a0->unk2C = &func_80153CBC_ovl6;
        func_801548A4_ovl6(temp_a0);
        D_8015A698_ovl6 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153D6C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153DC8_ovl6(void *arg0) {
    func_8015392C_ovl6();
    if (arg0->unk3C->unk80->unk98 == -3.4028235e38f) {
        D_8015A694_ovl6 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153DC8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80153E1C_ovl6(s32 arg0) {
    void *sp1C;
    ? *sp18;
    ? *temp_t2;
    ? *temp_t6;
    s32 temp_a3;
    void **temp_a3_2;
    void *temp_a0;

    temp_a3 = *(&D_800DE350 + 0xFC);
    if (temp_a3 == 0) {
        temp_t6 = D_8015A560_ovl6;
        D_8015A560_ovl6 = &D_80154E48_ovl6;
        sp18 = temp_t6;
        *(&D_80154DC0_ovl6 + (D_80154E48_ovl6.unk2 * 4))(temp_a3);
        temp_t2 = D_8015A560_ovl6 + 8;
        D_8015A560_ovl6 = temp_t2;
        *(&D_80154DC0_ovl6 + (temp_t2->unk2 * 4))();
        temp_a3_2 = &D_800DE350 + 0xFC;
        D_8015A560_ovl6 = temp_t6;
        temp_a0 = *temp_a3_2;
        sp1C = temp_a0;
        omGMoveObjDLHead(temp_a0, 0xC, 0, temp_a3_2);
        sp1C->unk2C = &func_80153DC8_ovl6;
        func_801548A4_ovl6();
        D_8015A690_ovl6 = arg0;
        D_8015A698_ovl6 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153E1C_ovl6.s")
#endif

void func_80153F00_ovl6(void) {
    gtlSetUpdateDrawRate(1, D_8015A560_ovl6->drawRate);
}

#ifdef MIPS_TO_C

void *func_80153F2C_ovl6(void) {
    s32 sp34;
    void *sp30;
    s32 sp2C;
    s32 sp24;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v1;
    u8 temp_a1;
    void *temp_v0;

    sp34 = omCurrentObj;
    temp_a1 = D_8015A560_ovl6->unk3;
    temp_v0_2 = request_track_3(0x11, temp_a1, temp_a1 + 1);
    temp_v1 = temp_v0_2 * 4;
    sp2C = temp_v0_2;
    omCurrentObj = *(&D_800DE350 + temp_v1);
    omEndProcess(*(&gEntityGObjProcessArray + temp_v1));
    temp_v0_3 = temp_v0_2 * 4;
    sp24 = temp_v0_3;
    omEndProcess(*(&gEntityGObjProcessArray2 + temp_v0_3));
    omEndProcess(*(&gEntityGObjProcessArray5 + sp24));
    *(&D_800E02D0 + sp24) = D_8015A560_ovl6->unk4;
    temp_v0 = func_800AC954(omCurrentObj, 1, func_800A8C40(D_8015A560_ovl6->unk4));
    sp30 = temp_v0;
    temp_v0->unk13 = temp_v0->unk13 | 4;
    omLinkGObjDL(omCurrentObj, &func_800AD1A0, 0xE, 0x10, 0xE);
    omCurrentObj = sp34;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80153F2C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015403C_ovl6(void) {
    func_80153F2C_ovl6();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015403C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_8015405C_ovl6(void) {
    void *temp_v0;

    temp_v0 = func_80153F2C_ovl6();
    temp_v0->unk13 = temp_v0->unk13 | 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_8015405C_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154088_ovl6(void) {
    s32 temp_a0;
    void *temp_v0;

    temp_a0 = D_8015A560_ovl6->unk4;
    temp_v0 = (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk4C;
    temp_v0->unk20 = (temp_a0 & 0xFFFF0000) >> 0x10;
    temp_v0->unk24 = temp_a0 & 0xFFFF;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154088_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154100_ovl6(void) {
    s32 temp_t5;
    void *temp_v0;

    temp_t5 = D_8015A560_ovl6->unk4;
    temp_v0 = (*(&D_800DE350 + (D_8015A560_ovl6->unk3 * 4)))->unk4C;
    temp_v0->unk14 = (temp_t5 & 0xFF000000) >> 0x18;
    temp_v0->unk15 = (temp_t5 & 0xFF0000) >> 0x10;
    temp_v0->unk16 = (temp_t5 & 0xFF00) >> 8;
    temp_v0->unk17 = temp_t5;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154100_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154158_ovl6(void) {
    void *temp_t6;

    D_8015A7C0_ovl6 = D_8015A560_ovl6;
    temp_t6 = D_8015A560_ovl6->unk4;
    D_8015A560_ovl6 = temp_t6;
    D_8015A560_ovl6 = temp_t6 - 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154158_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154180_ovl6(void) {
    func_80007C00(D_800D799C->unk3C + 8, 0x41200000, 0x41200000, 0x439B0000, 230.0f);
    D_800D7998->unk44 = D_800D7998->unk44 & ~1;
    func_80153228_ovl6(0x3E);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154180_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801541EC_ovl6(void) {
    func_8009C0E4();
    func_800A2024();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801541EC_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154214_ovl6(void) {
    s32 temp_v0;

    temp_v0 = D_8015A560_ovl6->unk4;
    D_8015A7B8_ovl6.unk4 = (temp_v0 & 0xFF000000) >> 0x18;
    D_8015A7B8_ovl6.unk5 = (temp_v0 & 0xFF0000) >> 0x10;
    D_8015A7B8_ovl6.unk6 = (temp_v0 & 0xFF00) >> 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154214_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154258_ovl6(void) {
    s32 temp_t9;

    temp_t9 = D_8015A560_ovl6->unk4;
    D_8015A7B8_ovl6.unk0 = (temp_t9 & 0xFFFF0000) >> 0x10;
    D_8015A7B8_ovl6.unk2 = temp_t9;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154258_ovl6.s")
#endif

#ifdef MIPS_TO_C

s32 func_80154284_ovl6(void) {
    s32 *var_a0;
    s32 temp_t6;
    s32 var_v1;

    if (D_8015A69C_ovl6 != 0) {
        return 0;
    }
    if (D_8015A698_ovl6 == 0) {
        if ((D_800DE350 != 0) && (D_800DFF50 != -1) && ((D_800DD8D0 >> 0x1E) == 0)) {
            return 0;
        }
        if ((*(&D_800DE350 + 4) != 0) && (*(&D_800DFF50 + 4) != -1) && !(*(&D_800DD8D0 + 4) & 0xC0000000)) {
            return 0;
        }
        var_a0 = &D_800DE350 + 8;
        var_v1 = 8;
loop_12:
        if ((var_a0->unk0 != 0) && (*(&D_800DFF50 + var_v1) != -1) && !(*(&D_800DD8D0 + var_v1) & 0xC0000000)) {
            return 0;
        }
        if ((var_a0->unk4 != 0) && ((&D_800DFF50 + var_v1)->unk4 != -1) && !((&D_800DD8D0 + var_v1)->unk4 & 0xC0000000)) {
            return 0;
        }
        if ((var_a0->unk8 != 0) && ((&D_800DFF50 + var_v1)->unk8 != -1) && !((&D_800DD8D0 + var_v1)->unk8 & 0xC0000000)) {
            return 0;
        }
        temp_t6 = var_a0->unkC;
        var_a0 += 0x10;
        if ((temp_t6 != 0) && ((&D_800DFF50 + var_v1)->unkC != -1) && !((&D_800DD8D0 + var_v1)->unkC & 0xC0000000)) {
            return 0;
        }
        var_v1 += 0x10;
        if (var_a0 == (&D_800DE350 + 0xF8)) {
            /* Duplicate return node #32. Try simplifying control flow for better match */
            return 1;
        }
        goto loop_12;
    }
    if (D_8015A698_ovl6 == 1) {
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154284_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154464_ovl6(void) {
    s32 *var_s1;
    s32 var_s0;

    var_s1 = &D_800DE350;
    var_s0 = 0;
    do {
        if (*var_s1 != 0) {
            func_80153228_ovl6(var_s0);
        }
        var_s0 += 1;
        var_s1 += 4;
    } while (var_s0 != 0x3E);
    func_8009C0E4();
    func_800A2024();
    D_8015A560_ovl6 = *D_8015A564_ovl6;
    func_80154628_ovl6();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154464_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801544E8_ovl6(s32 arg0) {
    s32 *temp_t0;
    s32 temp_v0;
    u16 *var_v1;
    u8 temp_v0_2;

    var_v1 = D_8015A560_ovl6;
    if (var_v1->unk2 == 0x22) {
        if ((*D_8015A564_ovl6 != 0) && (func_80154284_ovl6() != 0)) {
            temp_t0 = D_8015A564_ovl6 + 4;
            D_8015A564_ovl6 = temp_t0;
            if (*temp_t0 != 0) {
                func_80154464_ovl6();
                var_v1 = D_8015A560_ovl6;
                goto block_6;
            }
            func_800067B8();
        }
    } else {
block_6:
        temp_v0 = D_8015A568_ovl6;
        if (temp_v0 == var_v1->unk0) {
loop_8:
            temp_v0_2 = var_v1->unk2;
            if (temp_v0_2 != 0x22) {
                *(&D_80154DC0_ovl6 + (temp_v0_2 * 4))();
                var_v1 = D_8015A560_ovl6 + 8;
                D_8015A560_ovl6 = var_v1;
                if ((var_v1->unk2 == 0x22) && (D_8015A7C0_ovl6 != 0)) {
                    var_v1 = D_8015A7C0_ovl6 + 8;
                    D_8015A560_ovl6 = var_v1;
                    D_8015A7C0_ovl6 = 0;
                }
                if (D_8015A568_ovl6 != *var_v1) {
                    goto block_13;
                }
                goto loop_8;
            }
        } else {
block_13:
            D_8015A568_ovl6 = temp_v0 + 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801544E8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154628_ovl6(void) {
    ? *var_v1;

    D_8015A56C_ovl6 = 0;
    D_8015A668_ovl6 = 0;
    D_8015A66C_ovl6 = 0;
    var_v1 = &D_8015A578_ovl6;
    D_8015A570_ovl6 = 0;
    D_8015A570_ovl6 = 0;
    do {
        var_v1 += 0x10;
        var_v1->unk-C = 0;
        var_v1->unk-8 = 0;
        var_v1->unk-4 = 0;
        var_v1->unk-10 = 0;
    } while (var_v1 != &D_8015A668_ovl6);
    D_8015A568_ovl6 = 0;
    D_8015A7C0_ovl6 = 0;
    D_8015A698_ovl6 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154628_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154690_ovl6(void) {
    gameSetUpdateRate(0x3F800000);
    func_80154628_ovl6();
    HS64_omMakeGObj(1, &func_801544E8_ovl6, 1, 0x80000000);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154690_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801546D8_ovl6(void) {
    void *temp_v0;

    if (D_8015A66C_ovl6 != NULL) {
        temp_v0 = D_8015A66C_ovl6->unk3C->unk80;
        D_800D799C->unk3C->unk84 = (temp_v0->unk58 << 0x18) | (temp_v0->unk59 << 0x10) | (temp_v0->unk5A << 8) | 0xFF;
    }
    animUpdateCameraAnimation();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801546D8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154748_ovl6(void) {
    void *temp_v0;
    void *temp_v0_2;

    func_800A6BC0(2);
    temp_v0 = D_800D799C->unk3C;
    temp_v0->unk80 = temp_v0->unk80 | 1;
    D_800D799C->unk3C->unk68->unk4 = 0xC;
    temp_v0_2 = D_800D799C->unk3C;
    temp_v0_2->unk80 = temp_v0_2->unk80 | 2;
    if (D_8015A68C_ovl6 & 8) {
        D_800D799C->unk3C->unk84 = 0xFF0000FF;
    }
    D_800D799C->unk3C->unk84 = 0xFF;
    omCreateProcess(D_800D799C, &func_801546D8_ovl6, 1, 0);
    D_800D7998->unk44 = D_800D7998->unk44 | 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154748_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154810_ovl6(void *arg0) {
    void *temp_v0;

    if (D_8015A684_ovl6 == 0) {
        temp_v0 = arg0->unk4C;
        temp_v0->unk13 = temp_v0->unk13 | 8;
        omEndProcess(0);
        D_8015A688_ovl6 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154810_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154858_ovl6(void) {
    s32 temp_a0;

    temp_a0 = *(&D_800DE350 + 0xF8);
    if (temp_a0 != 0) {
        D_8015A684_ovl6 = 4;
        D_8015A688_ovl6 = omCreateProcess(temp_a0, &func_80154810_ovl6, 1, 3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154858_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801548A4_ovl6(void) {
    void *temp_v0;
    void *temp_v1;

    temp_v1 = *(&D_800DE350 + 0xF8);
    if (temp_v1 != NULL) {
        if (D_8015A688_ovl6 != 0) {
            omEndProcess(D_8015A688_ovl6);
            return;
        }
        temp_v0 = temp_v1->unk4C;
        temp_v0->unk13 = temp_v0->unk13 & 0xFFF7;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801548A4_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_801548F8_ovl6(void) {
    if (D_8015A688_ovl6 != 0) {
        D_8015A684_ovl6 -= 1;
    }
    func_800AD1A0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_801548F8_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154938_ovl6(void) {
    s32 sp34;
    void *sp30;
    s32 sp2C;
    s32 sp20;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_a0;

    temp_v0 = request_track_3(0x11, 0x3E, 0x3F);
    temp_v1 = temp_v0 * 4;
    sp2C = temp_v0;
    sp34 = *(&D_800DE350 + temp_v1);
    omEndProcess(*(&gEntityGObjProcessArray + temp_v1));
    temp_v0_2 = temp_v0 * 4;
    sp20 = temp_v0_2;
    omEndProcess(*(&gEntityGObjProcessArray2 + temp_v0_2));
    omEndProcess(*(&gEntityGObjProcessArray5 + sp20));
    if (D_8015A68C_ovl6 & 4) {
        var_a0 = 0x40002;
    } else {
        var_a0 = 0x40001;
    }
    *(&D_800E02D0 + sp20) = var_a0;
    sp30 = func_800AC954(sp34, 0, func_800A8C40(var_a0));
    omLinkGObjDL(sp34, &func_801548F8_ovl6, 0x12, 0x10, 0x12);
    sp30->unk20 = 10.0f;
    sp30->unk24 = 10.0f;
    D_8015A688_ovl6 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154938_ovl6.s")
#endif

#ifdef MIPS_TO_C

s32 func_80154A40_ovl6(void) {
    s32 var_a2;
    s32 var_a3;
    u32 temp_v0;
    u32 var_a1;
    u8 var_t0;
    void *temp_t1;
    void *var_a0;
    void *var_v0;
    void *var_v1;

    var_v0 = D_8015A560_ovl6;
    var_v1 = D_8015A564_ovl6;
    var_a0 = NULL;
    var_a1 = 0;
    var_a2 = 0;
    var_a3 = 0;
    var_t0 = var_v0->unk2;
loop_1:
    if (var_t0 != 0x22) {
block_6:
        switch (var_t0) {                           /* irregular */
            case 34:
                break;
            case 24:
            case 31:
                var_a3 += 1;
            default:
block_13:
                var_t0 = var_v0->unkA;
                var_v0 += 8;
                if ((var_t0 == 0x22) && (var_a0 != NULL)) {
                    var_v0 = var_a0 + 8;
                    var_t0 = var_v0->unk2;
                    var_a0 = NULL;
                }
                break;
            case 33:
                var_a0 = var_v0;
                var_v0 = var_v0->unk4 - 8;
                goto block_13;
        }
        goto loop_1;
    }
    temp_v0 = var_a3 + var_a2;
    var_a2 = var_a3;
    if (var_a1 < temp_v0) {
        var_a1 = temp_v0;
    }
    temp_t1 = var_v1->unk4;
    var_v1 += 4;
    var_a3 = 0;
    var_v0 = temp_t1;
    if (temp_t1 != NULL) {
        var_t0 = temp_t1->unk2;
        goto block_6;
    }
    return var_a1 + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154A40_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154B14_ovl6(void) {
    D_8015A694_ovl6 = 0;
    D_8015A690_ovl6 = 0;
    D_8015A69C_ovl6 = 0;
    D_8015A6A0_ovl6 = 0;
    func_80153040_ovl6();
    func_80154690_ovl6();
    func_800AE048(func_80154A40_ovl6());
    func_800AE0F0();
    func_800A6E64();
    func_801512F0_ovl6();
    func_800A8724(1);
    func_801513C8_ovl6();
    func_80154748_ovl6();
    func_80154938_ovl6();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154B14_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154BA0_ovl6(void **arg0) {
    void *temp_v1;

    temp_v1 = *arg0;
    *arg0 = temp_v1 + 8;
    temp_v1->unk0 = 0xDE000000;
    temp_v1->unk4 = &D_80154E58_ovl6;
    if (D_8015A56C_ovl6 != 0) {
        D_8015A670_ovl6 = gDynamicBuffer1.unkC;
        gDynamicBuffer1.unkC = gDynamicBuffer1.unkC + 0x18;
        func_8015166C_ovl6();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154BA0_ovl6.s")
#endif

void func_80154C08_ovl6(void) {
    omDrawAll();
    func_80153064_ovl6();
    func_800AC610();
}

#ifdef MIPS_TO_C

void func_80154C38_ovl6(s32 arg0) {
    s32 *temp_t7;

    temp_t7 = *(&D_8015A3B4_ovl6 + (arg0 * 4));
    D_8015A564_ovl6 = temp_t7;
    D_8015A560_ovl6 = *temp_t7;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154C38_ovl6.s")
#endif

#ifdef MIPS_TO_C

void func_80154C64_ovl6(void) {
    void *sp1C;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_t6;
    void *var_v0;
    void *var_v0_2;

    temp_t6 = &gFrameBuffer + 0xFFFDA800;
    gFrameBuffers.unk0 = temp_t6;
    gFrameBuffers.unk4 = &gFrameBuffer;
    gFrameBuffers.unk8 = &D_803DA800;
    D_80154E80_ovl6.unk0 = temp_t6;
    D_80154E80_ovl6.unk4 = &gFrameBuffer;
    D_80154E80_ovl6.unk8 = &D_803DA800;
    D_80154E80_ovl6.unkC = &D_8012EB00 - 0x1900;
    sp1C = temp_t6;
    viApplyScreenSettings(&D_80154E80_ovl6, &gFrameBuffer);
    D_80154EAC_ovl6 = sp1C - &D_8015A7D0;
    if (!(D_8015A68C_ovl6 & 8)) {
        temp_a0 = sp1C + 0x6EF00;
        var_v0 = sp1C;
        if (sp1C < temp_a0) {
            do {
                var_v0 += 2;
                var_v0->unk-2 = 1;
            } while (var_v0 < temp_a0);
        }
    } else {
        temp_a0_2 = sp1C + 0x25800;
        var_v0_2 = sp1C;
        if (sp1C < temp_a0_2) {
            do {
                var_v0_2 += 2;
                var_v0_2->unk-2 = 1;
            } while (var_v0_2 < temp_a0_2);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154C64_ovl6.s")
#endif

#ifdef MIPS_TO_C

s32 func_80154D60_ovl6(s32 arg0, s32 arg1) {
    D_8015A68C_ovl6 = arg1;
    func_80005350(&func_80151138_ovl6);
    func_80154C64_ovl6();
    func_80154C38_ovl6(arg0);
    gtlCreateScene(&D_80154E9C_ovl6);
    func_800A74D8();
    func_80005350(NULL);
    return D_8015A690_ovl6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl6/ovl6/func_80154D60_ovl6.s")
#endif
