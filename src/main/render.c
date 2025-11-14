#include "common.h"

#ifdef MIPS_TO_C

void func_80010B20(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    D_8003DF10 = arg0;
    D_8003DF14 = arg1;
    D_8003DF18 = arg2;
    D_8003DF1C = arg3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80010B20.s")
#endif

#ifdef MIPS_TO_C

void func_80010B44(s32 arg0) {
    D_8004AB9C = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80010B44.s")
#endif

void func_80010B50(void) {
}

#ifdef MIPS_TO_C

void func_80010B58(s32 arg0, void *arg1, s32 arg2) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp18;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f12;
    s32 temp_cond;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f16 = arg1->unk1C - temp_v0->unk3C;
    temp_f2 = arg1->unk20 - temp_v0->unk40;
    sp44 = temp_f16;
    temp_f18 = arg1->unk24 - temp_v0->unk44;
    sp40 = temp_f2;
    sp3C = temp_f18;
    temp_f14 = 1.0f / sqrtf((temp_f16 * temp_f16) + (temp_f2 * temp_f2) + (temp_f18 * temp_f18));
    temp_f16_2 = temp_f16 * temp_f14;
    temp_f2_2 = temp_f2 * temp_f14;
    temp_f18_2 = temp_f18 * temp_f14;
    sp44 = temp_f16_2;
    sp40 = temp_f2_2;
    sp3C = temp_f18_2;
    temp_f0 = sqrtf((temp_f16_2 * temp_f16_2) + (temp_f2_2 * temp_f2_2));
    var_f12 = 0.0f;
    temp_cond = temp_f0 == 0.0f;
    sp74 = 0.0f;
    sp64 = 0.0f;
    sp54 = 0.0f;
    sp60 = 0.0f;
    sp84 = 1.0f;
    if (!temp_cond) {
        var_f12 = -temp_f16_2;
        sp70 = temp_f0;
        temp_f14_2 = 1.0f / temp_f0;
        sp48 = var_f12;
        sp18 = -temp_f2_2;
        sp58 = temp_f2_2 * temp_f14_2;
        sp4C = sp18;
        sp68 = var_f12 * temp_f18_2 * temp_f14_2;
        sp5C = var_f12 * temp_f14_2;
        sp50 = -temp_f18_2;
        sp6C = sp18 * temp_f18_2 * temp_f14_2;
    } else {
        sp6C = 0.0f;
        sp4C = 0.0f;
        sp68 = 0.0f;
        sp58 = 0.0f;
        sp50 = 0.0f;
        sp5C = 1.0f;
        sp48 = 1.0f;
        sp70 = 1.0f;
    }
    if (arg2 != 0) {
        sp78 = arg1->unk1C;
        sp7C = arg1->unk20;
        sp80 = arg1->unk24;
    } else {
        sp7C = 0.0f;
        sp78 = 0.0f;
        sp80 = 0.0f;
    }
    HS64_MtxF2L43(var_f12, &sp48, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80010B58.s")
#endif

#ifdef MIPS_TO_C

void func_80010D28(s32 arg0, void *arg1, s32 arg2) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp20;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f12;
    s32 temp_cond;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f2 = arg1->unk1C - temp_v0->unk3C;
    temp_f18 = arg1->unk20 - temp_v0->unk40;
    sp44 = temp_f2;
    temp_f14 = arg1->unk24 - temp_v0->unk44;
    sp40 = temp_f18;
    sp3C = temp_f14;
    temp_f16 = 1.0f / sqrtf((temp_f2 * temp_f2) + (temp_f18 * temp_f18) + (temp_f14 * temp_f14));
    temp_f2_2 = temp_f2 * temp_f16;
    temp_f18_2 = temp_f18 * temp_f16;
    temp_f14_2 = temp_f14 * temp_f16;
    sp44 = temp_f2_2;
    sp40 = temp_f18_2;
    sp3C = temp_f14_2;
    temp_f0 = sqrtf((temp_f2_2 * temp_f2_2) + (temp_f14_2 * temp_f14_2));
    var_f12 = 0.0f;
    temp_cond = temp_f0 == 0.0f;
    sp74 = 0.0f;
    sp64 = 0.0f;
    sp54 = 0.0f;
    sp4C = 0.0f;
    sp84 = 1.0f;
    if (!temp_cond) {
        var_f12 = -temp_f18_2;
        temp_f16_2 = 1.0f / temp_f0;
        sp20 = -temp_f14_2;
        sp5C = temp_f0;
        sp6C = var_f12;
        sp70 = sp20;
        sp48 = sp20 * temp_f16_2;
        sp68 = -temp_f2_2;
        sp58 = var_f12 * temp_f2_2 * temp_f16_2;
        sp50 = temp_f2_2 * temp_f16_2;
        sp60 = var_f12 * temp_f14_2 * temp_f16_2;
    } else {
        sp50 = 0.0f;
        sp6C = 0.0f;
        sp68 = 0.0f;
        sp58 = 0.0f;
        sp60 = 0.0f;
        sp5C = 1.0f;
        sp48 = 1.0f;
        sp70 = 1.0f;
    }
    if (arg2 != 0) {
        sp78 = arg1->unk1C;
        sp7C = arg1->unk20;
        sp80 = arg1->unk24;
    } else {
        sp7C = 0.0f;
        sp78 = 0.0f;
        sp80 = 0.0f;
    }
    HS64_MtxF2L43(var_f12, temp_f14_2, &sp48, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80010D28.s")
#endif

#ifdef MIPS_TO_C

void func_80010EF8(s32 arg0, void *arg1, s32 arg2) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f2;
    s32 temp_cond;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f16 = arg1->unk1C - temp_v0->unk3C;
    temp_f14 = arg1->unk20 - temp_v0->unk40;
    sp44 = temp_f16;
    sp40 = temp_f14;
    temp_f0 = sqrtf((temp_f16 * temp_f16) + (temp_f14 * temp_f14));
    temp_cond = temp_f0 == 0.0f;
    sp50 = 0.0f;
    sp6C = 0.0f;
    sp68 = 0.0f;
    sp74 = 0.0f;
    sp64 = 0.0f;
    sp54 = 0.0f;
    sp60 = 0.0f;
    sp70 = 1.0f;
    sp84 = 1.0f;
    if (!temp_cond) {
        temp_f12 = 1.0f / temp_f0;
        temp_f14_2 = temp_f14 * temp_f12;
        temp_f2 = -(temp_f16 * temp_f12);
        sp48 = temp_f2;
        sp58 = temp_f14_2;
        sp4C = -temp_f14_2;
        sp5C = temp_f2;
    } else {
        sp58 = 0.0f;
        sp4C = 0.0f;
        sp48 = 1.0f;
        sp5C = 1.0f;
    }
    if (arg2 != 0) {
        sp78 = arg1->unk1C;
        sp7C = arg1->unk20;
        sp80 = arg1->unk24;
    } else {
        sp7C = 0.0f;
        sp78 = 0.0f;
        sp80 = 0.0f;
    }
    HS64_MtxF2L43(&sp48, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80010EF8.s")
#endif

#ifdef MIPS_TO_C

void func_8001103C(s32 arg0, void *arg1, s32 arg2) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    s32 temp_cond;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f14 = arg1->unk1C - temp_v0->unk3C;
    temp_f16 = arg1->unk24 - temp_v0->unk44;
    sp44 = temp_f14;
    sp40 = temp_f16;
    temp_f0 = sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16));
    temp_cond = temp_f0 == 0.0f;
    sp60 = 0.0f;
    sp4C = 0.0f;
    sp58 = 0.0f;
    sp74 = 0.0f;
    sp64 = 0.0f;
    sp54 = 0.0f;
    sp6C = 0.0f;
    sp5C = 1.0f;
    sp84 = 1.0f;
    if (!temp_cond) {
        temp_f12 = 1.0f / temp_f0;
        temp_f18 = temp_f14 * temp_f12;
        sp50 = temp_f18;
        sp68 = -temp_f18;
        temp_f2 = -(temp_f16 * temp_f12);
        sp48 = temp_f2;
        sp70 = temp_f2;
    } else {
        sp68 = 0.0f;
        sp50 = 0.0f;
        sp48 = 1.0f;
        sp70 = 1.0f;
    }
    if (arg2 != 0) {
        sp78 = arg1->unk1C;
        sp7C = arg1->unk20;
        sp80 = arg1->unk24;
    } else {
        sp7C = 0.0f;
        sp78 = 0.0f;
        sp80 = 0.0f;
    }
    HS64_MtxF2L43(&sp48, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001103C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80011180(void **arg0, void *arg1, ? *arg2) {
    void *sp2D4;
    s32 sp2CC;
    void *sp2C0;
    void *sp2BC;
    void *sp2B8;
    f32 sp1CC;
    f32 sp190;
    ? *sp78;
    void *sp74;
    ? *temp_v0_3;
    ? *var_a2;
    ? *var_s0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 temp_f12_5;
    f32 temp_f12_6;
    f32 temp_f12_7;
    f32 temp_f12_8;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    s32 (*var_a3)(? *, void *, void **, ?);
    s32 (*var_a3_2)(? *, void *, void **, ?);
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_t3;
    u8 *temp_v0;
    u8 *var_a1;
    u8 temp_v0_2;
    u8 temp_v0_4;
    u8 temp_v0_5;
    u8 temp_v0_6;
    u8 temp_v1;
    void *temp_a0;
    void *temp_a0_10;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a0_5;
    void *temp_a0_6;
    void *temp_a0_7;
    void *temp_a0_8;
    void *temp_a0_9;
    void *temp_s2;
    void *temp_t1;
    void *temp_t1_10;
    void *temp_t1_11;
    void *temp_t1_12;
    void *temp_t1_13;
    void *temp_t1_14;
    void *temp_t1_2;
    void *temp_t1_3;
    void *temp_t1_4;
    void *temp_t1_5;
    void *temp_t1_6;
    void *temp_t1_7;
    void *temp_t1_8;
    void *temp_t1_9;
    void *temp_t2;
    void *temp_t2_10;
    void *temp_t2_11;
    void *temp_t2_12;
    void *temp_t2_13;
    void *temp_t2_14;
    void *temp_t2_2;
    void *temp_t2_3;
    void *temp_t2_4;
    void *temp_t2_5;
    void *temp_t2_6;
    void *temp_t2_7;
    void *temp_t2_8;
    void *temp_t2_9;
    void *temp_t3;
    void *temp_t3_10;
    void *temp_t3_11;
    void *temp_t3_12;
    void *temp_t3_13;
    void *temp_t3_14;
    void *temp_t3_2;
    void *temp_t3_3;
    void *temp_t3_4;
    void *temp_t3_5;
    void *temp_t3_6;
    void *temp_t3_7;
    void *temp_t3_8;
    void *temp_t3_9;
    void *temp_t4;
    void *temp_t4_10;
    void *temp_t4_11;
    void *temp_t4_12;
    void *temp_t4_13;
    void *temp_t4_2;
    void *temp_t4_3;
    void *temp_t4_4;
    void *temp_t4_5;
    void *temp_t4_6;
    void *temp_t4_7;
    void *temp_t4_8;
    void *temp_t4_9;
    void *temp_t5;
    void *temp_t5_10;
    void *temp_t5_11;
    void *temp_t5_12;
    void *temp_t5_13;
    void *temp_t5_2;
    void *temp_t5_3;
    void *temp_t5_4;
    void *temp_t5_5;
    void *temp_t5_6;
    void *temp_t5_7;
    void *temp_t5_8;
    void *temp_t5_9;
    void *temp_t6;
    void *temp_t6_10;
    void *temp_t6_11;
    void *temp_t6_12;
    void *temp_t6_13;
    void *temp_t6_2;
    void *temp_t6_3;
    void *temp_t6_4;
    void *temp_t6_5;
    void *temp_t6_6;
    void *temp_t6_7;
    void *temp_t6_8;
    void *temp_t6_9;
    void *temp_t7;
    void *temp_t7_10;
    void *temp_t7_11;
    void *temp_t7_12;
    void *temp_t7_13;
    void *temp_t7_14;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t7_5;
    void *temp_t7_6;
    void *temp_t7_7;
    void *temp_t7_8;
    void *temp_t7_9;
    void *temp_t8;
    void *temp_t8_10;
    void *temp_t8_11;
    void *temp_t8_12;
    void *temp_t8_13;
    void *temp_t8_14;
    void *temp_t8_15;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t8_6;
    void *temp_t8_7;
    void *temp_t8_8;
    void *temp_t8_9;
    void *temp_t9;
    void *temp_t9_10;
    void *temp_t9_11;
    void *temp_t9_12;
    void *temp_t9_13;
    void *temp_t9_2;
    void *temp_t9_3;
    void *temp_t9_4;
    void *temp_t9_5;
    void *temp_t9_6;
    void *temp_t9_7;
    void *temp_t9_8;
    void *temp_t9_9;
    void *var_fp;
    void *var_v1;

    var_a2 = arg2;
    sp2CC = 0;
    sp2D4 = *arg0;
    temp_v0 = arg1->unk4C;
    var_fp = sp2BC;
    var_v1 = temp_v0 + 4;
    if (temp_v0 != NULL) {
        var_a0 = 0;
        var_a1 = temp_v0;
        var_a2 = 1;
        do {
            temp_v0_2 = *var_a1;
            var_a0 += 1;
            switch (temp_v0_2) {                    /* switch 4; irregular */
                case 0:                             /* switch 4 */
                    break;
                case 1:                             /* switch 4 */
                    sp2C0 = var_v1;
block_10:
                    var_v1 += 0x10;
                    break;
                case 2:                             /* switch 4 */
                    var_fp = var_v1;
                    var_v1 += 0x14;
                    break;
                case 3:                             /* switch 4 */
                    sp2B8 = var_v1;
                    goto block_10;
            }
            var_a1 += 1;
        } while (var_a0 != 3);
        sp2BC = var_fp;
    }
    if (arg1->unk56 > 0) {
        sp74 = arg1;
        do {
            temp_s2 = sp74->unk58;
            temp_v0_3 = temp_s2 + 8;
            if (temp_s2 != NULL) {
                temp_v1 = temp_s2->unk5;
                var_s0 = temp_v0_3;
                sp78 = temp_v0_3;
                if (temp_v1 != 2) {
                    if (temp_v1 == 4) {
                        if (D_8003DCAB != arg1->unk4->unkE) {
                            *temp_v0_3 = gDynamicBuffer1.unkC;
                            var_s0 = gDynamicBuffer1.unkC;
                            gDynamicBuffer1.unkC = var_s0 + 0x40;
                            goto block_36;
                        }
                        temp_v0_4 = temp_s2->unk4;
                        switch (temp_v0_4) {        /* switch 1 */
                            case 33:                /* switch 1 */
                            case 34:                /* switch 1 */
                            case 35:                /* switch 1 */
                            case 36:                /* switch 1 */
                            case 37:                /* switch 1 */
                            case 38:                /* switch 1 */
                            case 39:                /* switch 1 */
                            case 40:                /* switch 1 */
                            case 41:                /* switch 1 */
                            case 42:                /* switch 1 */
                            case 43:                /* switch 1 */
                            case 44:                /* switch 1 */
                            case 45:                /* switch 1 */
                            case 46:                /* switch 1 */
                            case 47:                /* switch 1 */
                            case 48:                /* switch 1 */
                            case 49:                /* switch 1 */
                            case 50:                /* switch 1 */
                                var_s0 = gDynamicBuffer1.unkC;
                                gDynamicBuffer1.unkC = var_s0 + 0x40;
                                goto block_36;
                            default:                /* switch 1 */
                                if (temp_v0_4 >= 0x43) {
                                    var_s0 = gDynamicBuffer1.unkC;
                                    gDynamicBuffer1.unkC = var_s0 + 0x40;
                                    goto block_36;
                                }
                                var_s0 = *sp78;
                                goto block_91;
                        }
                    } else {
                        if (gtlCurrentContextID > 0) {
                            var_s0 = gDynamicBuffer1.unkC;
                            gDynamicBuffer1.unkC = var_s0 + 0x40;
                            goto block_36;
                        }
                        if (D_8003DCAB == arg1->unk4->unkE) {
                            temp_v0_5 = temp_s2->unk4;
                            switch (temp_v0_5) {    /* switch 2 */
                                case 33:            /* switch 2 */
                                case 34:            /* switch 2 */
                                case 35:            /* switch 2 */
                                case 36:            /* switch 2 */
                                case 37:            /* switch 2 */
                                case 38:            /* switch 2 */
                                case 39:            /* switch 2 */
                                case 40:            /* switch 2 */
                                case 41:            /* switch 2 */
                                case 42:            /* switch 2 */
                                case 43:            /* switch 2 */
                                case 44:            /* switch 2 */
                                case 45:            /* switch 2 */
                                case 46:            /* switch 2 */
                                case 47:            /* switch 2 */
                                case 48:            /* switch 2 */
                                case 49:            /* switch 2 */
                                case 50:            /* switch 2 */
                                    var_s0 = gDynamicBuffer1.unkC;
                                    gDynamicBuffer1.unkC = var_s0 + 0x40;
                                    goto block_36;
                                default:            /* switch 2 */
                                    if (temp_v0_5 >= 0x43) {
                                        var_s0 = gDynamicBuffer1.unkC;
                                        gDynamicBuffer1.unkC = var_s0 + 0x40;
                                        goto block_36;
                                    }
                                    if (temp_v1 == 3) {
                                        var_s0 = D_8004A404;
                                        D_8004A404 = var_s0 + 0x40;
                                        goto block_36;
                                    }
                                    goto block_91;
                            }
                        } else {
block_36:
                            temp_v0_6 = temp_s2->unk4;
                            var_a0_2 = 0;
                            switch (temp_v0_6) {    /* switch 3 */
                                case 0x1:           /* switch 3 */
block_91:
                                    if ((temp_s2->unk5 == 1) && ((temp_s2 + 8) == var_s0)) {
                                        if ((temp_s2->unk4 == 0x1C) && (arg1->unk40 != 1.0f)) {
                                            temp_s2->unk4 = 0x42;
                                        }
                                        temp_s2->unk5 = 2;
                                    }
                                    goto block_108;
                                case 0x2:           /* switch 3 */
                                    goto block_91;
                                case 0x12:          /* switch 3 */
                                    func_8001B784(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24);
block_90:
                                    goto block_91;
                                case 0x13:          /* switch 3 */
                                    func_8001D0B4(var_s0, arg1->unk2C, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x14:          /* switch 3 */
                                    func_8001D184(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk2C, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x15:          /* switch 3 */
                                    func_8001D264(var_s0, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x16:          /* switch 3 */
                                    func_8001D34C(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x17:          /* switch 3 */
                                    func_8001B9B8(var_s0, arg1->unk2C, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x18:          /* switch 3 */
                                    func_8001BA60(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk2C, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x19:          /* switch 3 */
                                    func_8001BB30(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk2C, arg1->unk30, arg1->unk34, arg1->unk38, arg1->unk40, arg1->unk44, arg1->unk48);
                                    D_8004AA94 *= arg1->unk40;
                                    goto block_91;
                                case 0x1A:          /* switch 3 */
                                    func_8001BCE0(var_s0, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x1B:          /* switch 3 */
                                    func_8001BFDC(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x1C:          /* switch 3 */
                                    func_8001C348(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk30, arg1->unk34, arg1->unk38, arg1->unk40, arg1->unk44, arg1->unk48);
                                    D_8004AA94 *= arg1->unk40;
                                    goto block_91;
                                case 0x1D:          /* switch 3 */
                                    func_8001C874(var_s0, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x1E:          /* switch 3 */
                                    func_8001C90C(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk30, arg1->unk34, arg1->unk38);
                                    goto block_90;
                                case 0x1F:          /* switch 3 */
                                    func_8001C9CC(var_s0, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk30, arg1->unk34, arg1->unk38, arg1->unk40, arg1->unk44, arg1->unk48);
                                    D_8004AA94 *= arg1->unk40;
                                    goto block_91;
                                case 0x20:          /* switch 3 */
                                    func_8001B540(var_s0, arg1->unk40, arg1->unk44, arg1->unk48);
                                    D_8004AA94 *= arg1->unk40;
                                    goto block_91;
                                case 0x21:          /* switch 3 */
                                    func_80010EF8(var_s0, arg1, 0);
                                    goto block_90;
                                case 0x22:          /* switch 3 */
                                    func_80010EF8(var_s0, arg1, 1);
                                    goto block_90;
                                case 0x23:          /* switch 3 */
                                    func_80010B58(var_s0, arg1, 0);
                                    goto block_90;
                                case 0x24:          /* switch 3 */
                                    func_80010B58(var_s0, arg1, 1);
                                    goto block_90;
                                case 0x25:          /* switch 3 */
                                    func_8001103C(var_s0, arg1, 0);
                                    goto block_90;
                                case 0x26:          /* switch 3 */
                                    func_8001103C(var_s0, arg1, 1);
                                    goto block_90;
                                case 0x27:          /* switch 3 */
                                    func_80010D28(var_s0, arg1, 0);
                                    goto block_90;
                                case 0x28:          /* switch 3 */
                                    func_80010D28(var_s0, arg1, 1);
                                    goto block_90;
                                case 0x38:          /* switch 3 */
                                    func_8001B784(var_s0, sp2C0->unk4, sp2C0->unk8, sp2C0->unkC);
                                    goto block_90;
                                case 0x39:          /* switch 3 */
                                    func_8001B9B8(var_s0, sp2BC->unk4, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10);
                                    goto block_90;
                                case 0x3A:          /* switch 3 */
                                    func_8001BCE0(var_s0, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10);
                                    goto block_90;
                                case 0x3B:          /* switch 3 */
                                    func_8001B540(var_s0, sp2B8->unk4, sp2B8->unk8, sp2B8->unkC);
                                    D_8004AA94 *= sp2B8->unk4;
                                    goto block_91;
                                case 0x3C:          /* switch 3 */
                                    func_8001BA60(var_s0, sp2C0->unk4, sp2C0->unk8, sp2C0->unkC, sp2BC->unk4, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10);
                                    goto block_90;
                                case 0x3D:          /* switch 3 */
                                    func_8001BB30(var_s0, sp2C0->unk4, sp2C0->unk8, sp2C0->unkC, sp2BC->unk4, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10, sp2B8->unk4, sp2B8->unk8, sp2B8->unkC);
                                    D_8004AA94 *= sp2B8->unk4;
                                    goto block_91;
                                case 0x3E:          /* switch 3 */
                                    func_8001BFDC(var_s0, sp2C0->unk4, sp2C0->unk8, sp2C0->unkC, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10);
                                    goto block_90;
                                case 0x3F:          /* switch 3 */
                                    func_8001C348(var_s0, sp2C0->unk4, sp2C0->unk8, sp2C0->unkC, sp2BC->unk8, sp2BC->unkC, sp2BC->unk10, sp2B8->unk4, sp2B8->unk8, sp2B8->unkC);
                                    D_8004AA94 *= sp2B8->unk4;
                                    goto block_91;
                                case 0x29:          /* switch 3 */
                                    temp_t7 = sp2D4;
                                    sp2D4 = temp_t7 + 8;
                                    temp_t7->unk4 = 0;
                                    temp_t7->unk0 = 0xD5000001;
                                    temp_t2 = sp2D4;
                                    sp2D4 = temp_t2 + 8;
                                    temp_t2->unk0 = 0xDB000008;
                                    temp_t2->unk4 = D_8004AA90->unk0;
                                    temp_t6 = sp2D4;
                                    sp2D4 = temp_t6 + 8;
                                    temp_t6->unk0 = 0xDB00000C;
                                    temp_t6->unk4 = D_8004AA90->unk4;
                                    temp_t1 = sp2D4;
                                    sp2D4 = temp_t1 + 8;
                                    temp_t1->unk0 = 0xDB000010;
                                    temp_t1->unk4 = D_8004AA90->unk8;
                                    temp_t7_2 = sp2D4;
                                    sp2D4 = temp_t7_2 + 8;
                                    temp_t7_2->unk0 = 0xDB000014;
                                    temp_t7_2->unk4 = D_8004AA90->unkC;
                                    temp_t3 = sp2D4;
                                    sp2D4 = temp_t3 + 8;
                                    temp_t3->unk0 = 0xDB000000;
                                    temp_t3->unk4 = D_8004AA90->unk10;
                                    temp_t8 = sp2D4;
                                    sp2D4 = temp_t8 + 8;
                                    temp_t8->unk0 = 0xDB000004;
                                    temp_t8->unk4 = D_8004AA90->unk14;
                                    temp_t5 = sp2D4;
                                    sp2D4 = temp_t5 + 8;
                                    temp_t5->unk0 = 0xDB000028;
                                    temp_t5->unk4 = D_8004AA90->unk20;
                                    temp_t9 = sp2D4;
                                    sp2D4 = temp_t9 + 8;
                                    temp_t9->unk0 = 0xDB00002C;
                                    temp_t9->unk4 = D_8004AA90->unk24;
                                    temp_t4_2 = sp2D4;
                                    sp2D4 = temp_t4_2 + 8;
                                    temp_t4_2->unk0 = 0xDB000030;
                                    temp_t4_2->unk4 = D_8004AA90->unk28;
                                    temp_t2_2 = sp2D4;
                                    sp2D4 = temp_t2_2 + 8;
                                    temp_t2_2->unk0 = 0xDB000034;
                                    temp_t2_2->unk4 = D_8004AA90->unk2C;
                                    temp_a0 = sp2D4;
                                    sp2D4 = temp_a0 + 8;
                                    temp_a0->unk0 = 0xDB000020;
                                    temp_a0->unk4 = D_8004AA90->unk30;
                                    temp_t1_2 = sp2D4;
                                    sp2D4 = temp_t1_2 + 8;
                                    temp_t1_2->unk0 = 0xDB000024;
                                    temp_t1_2->unk4 = D_8004AA90->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2A:          /* switch 3 */
                                    temp_t8_2 = sp2D4;
                                    sp2D4 = temp_t8_2 + 8;
                                    temp_t8_2->unk4 = 0;
                                    temp_t8_2->unk0 = 0xD5000001;
                                    temp_t1_3 = sp2D4;
                                    sp2D4 = temp_t1_3 + 8;
                                    temp_t1_3->unk0 = 0xDB000000;
                                    temp_t1_3->unk4 = D_8004AA90->unk0;
                                    temp_t7_3 = sp2D4;
                                    sp2D4 = temp_t7_3 + 8;
                                    temp_t7_3->unk0 = 0xDB000004;
                                    temp_t7_3->unk4 = D_8004AA90->unk4;
                                    temp_t3_2 = sp2D4;
                                    sp2D4 = temp_t3_2 + 8;
                                    temp_t3_2->unk0 = 0xDB000008;
                                    temp_t3_2->unk4 = D_8004AA90->unk8;
                                    temp_t8_3 = sp2D4;
                                    sp2D4 = temp_t8_3 + 8;
                                    temp_t8_3->unk0 = 0xDB00000C;
                                    temp_t8_3->unk4 = D_8004AA90->unkC;
                                    temp_t5_2 = sp2D4;
                                    sp2D4 = temp_t5_2 + 8;
                                    temp_t5_2->unk0 = 0xDB000010;
                                    temp_t5_2->unk4 = D_8004AA90->unk10;
                                    temp_t9_2 = sp2D4;
                                    sp2D4 = temp_t9_2 + 8;
                                    temp_t9_2->unk0 = 0xDB000014;
                                    temp_t9_2->unk4 = D_8004AA90->unk14;
                                    temp_t4_3 = sp2D4;
                                    sp2D4 = temp_t4_3 + 8;
                                    temp_t4_3->unk0 = 0xDB000020;
                                    temp_t4_3->unk4 = D_8004AA90->unk20;
                                    temp_t2_3 = sp2D4;
                                    sp2D4 = temp_t2_3 + 8;
                                    temp_t2_3->unk0 = 0xDB000024;
                                    temp_t2_3->unk4 = D_8004AA90->unk24;
                                    temp_t6_2 = sp2D4;
                                    sp2D4 = temp_t6_2 + 8;
                                    temp_t6_2->unk0 = 0xDB000028;
                                    temp_t6_2->unk4 = D_8004AA90->unk28;
                                    temp_t1_4 = sp2D4;
                                    sp2D4 = temp_t1_4 + 8;
                                    temp_t1_4->unk0 = 0xDB00002C;
                                    temp_t1_4->unk4 = D_8004AA90->unk2C;
                                    temp_a0_2 = sp2D4;
                                    sp2D4 = temp_a0_2 + 8;
                                    temp_a0_2->unk0 = 0xDB000030;
                                    temp_a0_2->unk4 = D_8004AA90->unk30;
                                    temp_t3_3 = sp2D4;
                                    sp2D4 = temp_t3_3 + 8;
                                    temp_t3_3->unk0 = 0xDB000034;
                                    temp_t3_3->unk4 = D_8004AA90->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2B:          /* switch 3 */
                                    temp_f18 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk4 = 0.0f;
                                    D_8004AAD8.unk8 = 0.0f;
                                    D_8004AAD8.unkC = 0.0f;
                                    temp_f12 = D_8004AA98.unk0 * D_8004AA94;
                                    D_8004AAD8.unk10 = 0.0f;
                                    D_8004AAD8.unk18 = 0.0f;
                                    D_8004AAD8.unk14 = D_8004AA98.unk14 * temp_f18;
                                    D_8004AAD8.unk1C = 0.0f;
                                    D_8004AAD8.unk0 = temp_f12;
                                    D_8004AAD8.unk20 = 0.0f;
                                    D_8004AAD8.unk24 = 0.0f;
                                    D_8004AAD8.unk28 = D_8004AA98.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AA98.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12, D_8004AA98.unk14, &D_8004AAD8, var_s0, var_a2);
                                    temp_t9_3 = sp2D4;
                                    sp2D4 = temp_t9_3 + 8;
                                    temp_t9_3->unk4 = 0;
                                    temp_t9_3->unk0 = 0xD5000001;
                                    temp_t3_4 = sp2D4;
                                    sp2D4 = temp_t3_4 + 8;
                                    temp_t3_4->unk0 = 0xDB000008;
                                    temp_t3_4->unk4 = var_s0->unk0;
                                    temp_t7_4 = sp2D4;
                                    sp2D4 = temp_t7_4 + 8;
                                    temp_t7_4->unk0 = 0xDB00000C;
                                    temp_t7_4->unk4 = var_s0->unk4;
                                    temp_t1_5 = sp2D4;
                                    sp2D4 = temp_t1_5 + 8;
                                    temp_t1_5->unk0 = 0xDB000010;
                                    temp_t1_5->unk4 = var_s0->unk8;
                                    temp_t6_3 = sp2D4;
                                    sp2D4 = temp_t6_3 + 8;
                                    temp_t6_3->unk0 = 0xDB000014;
                                    temp_t6_3->unk4 = var_s0->unkC;
                                    temp_t2_4 = sp2D4;
                                    sp2D4 = temp_t2_4 + 8;
                                    temp_t2_4->unk0 = 0xDB000000;
                                    temp_t2_4->unk4 = var_s0->unk10;
                                    temp_t4_4 = sp2D4;
                                    sp2D4 = temp_t4_4 + 8;
                                    temp_t4_4->unk0 = 0xDB000004;
                                    temp_t4_4->unk4 = var_s0->unk14;
                                    temp_t9_4 = sp2D4;
                                    sp2D4 = temp_t9_4 + 8;
                                    temp_t9_4->unk0 = 0xDB000028;
                                    temp_t9_4->unk4 = var_s0->unk20;
                                    temp_t5_3 = sp2D4;
                                    sp2D4 = temp_t5_3 + 8;
                                    temp_t5_3->unk0 = 0xDB00002C;
                                    temp_t5_3->unk4 = var_s0->unk24;
                                    temp_t8_4 = sp2D4;
                                    sp2D4 = temp_t8_4 + 8;
                                    temp_t8_4->unk0 = 0xDB000030;
                                    temp_t8_4->unk4 = var_s0->unk28;
                                    temp_t3_5 = sp2D4;
                                    sp2D4 = temp_t3_5 + 8;
                                    temp_t3_5->unk0 = 0xDB000034;
                                    temp_t3_5->unk4 = var_s0->unk2C;
                                    temp_a0_3 = sp2D4;
                                    sp2D4 = temp_a0_3 + 8;
                                    temp_a0_3->unk0 = 0xDB000020;
                                    temp_a0_3->unk4 = var_s0->unk30;
                                    temp_t1_6 = sp2D4;
                                    sp2D4 = temp_t1_6 + 8;
                                    temp_t1_6->unk0 = 0xDB000024;
                                    temp_t1_6->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2C:          /* switch 3 */
                                    temp_f18_2 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk4 = 0.0f;
                                    D_8004AAD8.unk8 = 0.0f;
                                    D_8004AAD8.unkC = 0.0f;
                                    temp_f12_2 = D_8004AA98.unk0 * D_8004AA94;
                                    D_8004AAD8.unk10 = 0.0f;
                                    D_8004AAD8.unk18 = 0.0f;
                                    D_8004AAD8.unk14 = D_8004AA98.unk14 * temp_f18_2;
                                    D_8004AAD8.unk1C = 0.0f;
                                    D_8004AAD8.unk0 = temp_f12_2;
                                    D_8004AAD8.unk20 = 0.0f;
                                    D_8004AAD8.unk24 = 0.0f;
                                    D_8004AAD8.unk28 = D_8004AA98.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AA98.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_2, D_8004AA98.unk14, &D_8004AAD8, var_s0, var_a2);
                                    temp_t7_5 = sp2D4;
                                    sp2D4 = temp_t7_5 + 8;
                                    temp_t7_5->unk4 = 0;
                                    temp_t7_5->unk0 = 0xD5000001;
                                    temp_t2_5 = sp2D4;
                                    sp2D4 = temp_t2_5 + 8;
                                    temp_t2_5->unk0 = 0xDB000000;
                                    temp_t2_5->unk4 = var_s0->unk0;
                                    temp_t4_5 = sp2D4;
                                    sp2D4 = temp_t4_5 + 8;
                                    temp_t4_5->unk0 = 0xDB000004;
                                    temp_t4_5->unk4 = var_s0->unk4;
                                    temp_t9_5 = sp2D4;
                                    sp2D4 = temp_t9_5 + 8;
                                    temp_t9_5->unk0 = 0xDB000008;
                                    temp_t9_5->unk4 = var_s0->unk8;
                                    temp_t5_4 = sp2D4;
                                    sp2D4 = temp_t5_4 + 8;
                                    temp_t5_4->unk0 = 0xDB00000C;
                                    temp_t5_4->unk4 = var_s0->unkC;
                                    temp_t8_5 = sp2D4;
                                    sp2D4 = temp_t8_5 + 8;
                                    temp_t8_5->unk0 = 0xDB000010;
                                    temp_t8_5->unk4 = var_s0->unk10;
                                    temp_t3_6 = sp2D4;
                                    sp2D4 = temp_t3_6 + 8;
                                    temp_t3_6->unk0 = 0xDB000014;
                                    temp_t3_6->unk4 = var_s0->unk14;
                                    temp_t7_6 = sp2D4;
                                    sp2D4 = temp_t7_6 + 8;
                                    temp_t7_6->unk0 = 0xDB000020;
                                    temp_t7_6->unk4 = var_s0->unk20;
                                    temp_t1_7 = sp2D4;
                                    sp2D4 = temp_t1_7 + 8;
                                    temp_t1_7->unk0 = 0xDB000024;
                                    temp_t1_7->unk4 = var_s0->unk24;
                                    temp_t6_4 = sp2D4;
                                    sp2D4 = temp_t6_4 + 8;
                                    temp_t6_4->unk0 = 0xDB000028;
                                    temp_t6_4->unk4 = var_s0->unk28;
                                    temp_t2_6 = sp2D4;
                                    sp2D4 = temp_t2_6 + 8;
                                    temp_t2_6->unk0 = 0xDB00002C;
                                    temp_t2_6->unk4 = var_s0->unk2C;
                                    temp_a0_4 = sp2D4;
                                    sp2D4 = temp_a0_4 + 8;
                                    temp_a0_4->unk0 = 0xDB000030;
                                    temp_a0_4->unk4 = var_s0->unk30;
                                    temp_t9_6 = sp2D4;
                                    sp2D4 = temp_t9_6 + 8;
                                    temp_t9_6->unk0 = 0xDB000034;
                                    temp_t9_6->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2D:          /* switch 3 */
                                    sp1CC = sinf(arg1->unk30);
                                    temp_f0 = cosf(arg1->unk30);
                                    temp_f12_3 = arg1->unk44 * D_8004AA94;
                                    D_8004AAD8.unk8 = 0.0f;
                                    D_8004AAD8.unk18 = 0.0f;
                                    D_8004AAD8.unkC = 0.0f;
                                    D_8004AAD8.unk1C = 0.0f;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk20 = 0.0f;
                                    D_8004AAD8.unk24 = 0.0f;
                                    temp_f14 = D_8004AA98.unk0 * D_8004AA94;
                                    temp_f16 = D_8004AA98.unk14 * temp_f12_3;
                                    D_8004AAD8.unk0 = temp_f14 * temp_f0;
                                    D_8004AAD8.unk10 = temp_f14 * -sp1CC;
                                    D_8004AAD8.unk4 = temp_f16 * sp1CC;
                                    D_8004AAD8.unk14 = temp_f16 * temp_f0;
                                    D_8004AAD8.unk28 = D_8004AA98.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AA98.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_3, temp_f14, &D_8004AAD8, var_s0);
                                    temp_t4_6 = sp2D4;
                                    sp2D4 = temp_t4_6 + 8;
                                    temp_t4_6->unk4 = 0;
                                    temp_t4_6->unk0 = 0xD5000001;
                                    temp_t8_6 = sp2D4;
                                    sp2D4 = temp_t8_6 + 8;
                                    temp_t8_6->unk0 = 0xDB000000;
                                    temp_t8_6->unk4 = var_s0->unk0;
                                    temp_t3_7 = sp2D4;
                                    sp2D4 = temp_t3_7 + 8;
                                    temp_t3_7->unk0 = 0xDB000004;
                                    temp_t3_7->unk4 = var_s0->unk4;
                                    temp_t7_7 = sp2D4;
                                    sp2D4 = temp_t7_7 + 8;
                                    temp_t7_7->unk0 = 0xDB000008;
                                    temp_t7_7->unk4 = var_s0->unk8;
                                    temp_t1_8 = sp2D4;
                                    sp2D4 = temp_t1_8 + 8;
                                    temp_t1_8->unk0 = 0xDB00000C;
                                    temp_t1_8->unk4 = var_s0->unkC;
                                    temp_t6_5 = sp2D4;
                                    sp2D4 = temp_t6_5 + 8;
                                    temp_t6_5->unk0 = 0xDB000010;
                                    temp_t6_5->unk4 = var_s0->unk10;
                                    temp_t2_7 = sp2D4;
                                    sp2D4 = temp_t2_7 + 8;
                                    temp_t2_7->unk0 = 0xDB000014;
                                    temp_t2_7->unk4 = var_s0->unk14;
                                    temp_t4_7 = sp2D4;
                                    sp2D4 = temp_t4_7 + 8;
                                    temp_t4_7->unk0 = 0xDB000020;
                                    temp_t4_7->unk4 = var_s0->unk20;
                                    temp_t9_7 = sp2D4;
                                    sp2D4 = temp_t9_7 + 8;
                                    temp_t9_7->unk0 = 0xDB000024;
                                    temp_t9_7->unk4 = var_s0->unk24;
                                    temp_t5_5 = sp2D4;
                                    sp2D4 = temp_t5_5 + 8;
                                    temp_t5_5->unk0 = 0xDB000028;
                                    temp_t5_5->unk4 = var_s0->unk28;
                                    temp_t8_7 = sp2D4;
                                    sp2D4 = temp_t8_7 + 8;
                                    temp_t8_7->unk0 = 0xDB00002C;
                                    temp_t8_7->unk4 = var_s0->unk2C;
                                    temp_a0_5 = sp2D4;
                                    sp2D4 = temp_a0_5 + 8;
                                    temp_a0_5->unk0 = 0xDB000030;
                                    temp_a0_5->unk4 = var_s0->unk30;
                                    temp_t7_8 = sp2D4;
                                    sp2D4 = temp_t7_8 + 8;
                                    temp_t7_8->unk0 = 0xDB000034;
                                    temp_t7_8->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2E:          /* switch 3 */
                                    sp190 = sinf(arg1->unk38);
                                    temp_f0_2 = cosf(arg1->unk38);
                                    temp_f12_4 = arg1->unk44 * D_8004AA94;
                                    D_8004AAD8.unk8 = 0.0f;
                                    D_8004AAD8.unk18 = 0.0f;
                                    D_8004AAD8.unkC = 0.0f;
                                    D_8004AAD8.unk1C = 0.0f;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk20 = 0.0f;
                                    D_8004AAD8.unk24 = 0.0f;
                                    temp_f14_2 = D_8004AA98.unk0 * D_8004AA94;
                                    temp_f16_2 = D_8004AA98.unk14 * temp_f12_4;
                                    D_8004AAD8.unk0 = temp_f14_2 * temp_f0_2;
                                    D_8004AAD8.unk10 = temp_f14_2 * -sp190;
                                    D_8004AAD8.unk4 = temp_f16_2 * sp190;
                                    D_8004AAD8.unk14 = temp_f16_2 * temp_f0_2;
                                    D_8004AAD8.unk28 = D_8004AA98.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AA98.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_4, temp_f14_2, &D_8004AAD8, var_s0);
                                    temp_t3_8 = sp2D4;
                                    sp2D4 = temp_t3_8 + 8;
                                    temp_t3_8->unk4 = 0;
                                    temp_t3_8->unk0 = 0xD5000001;
                                    temp_t6_6 = sp2D4;
                                    sp2D4 = temp_t6_6 + 8;
                                    temp_t6_6->unk0 = 0xDB000000;
                                    temp_t6_6->unk4 = var_s0->unk0;
                                    temp_t2_8 = sp2D4;
                                    sp2D4 = temp_t2_8 + 8;
                                    temp_t2_8->unk0 = 0xDB000004;
                                    temp_t2_8->unk4 = var_s0->unk4;
                                    temp_t4_8 = sp2D4;
                                    sp2D4 = temp_t4_8 + 8;
                                    temp_t4_8->unk0 = 0xDB000008;
                                    temp_t4_8->unk4 = var_s0->unk8;
                                    temp_t9_8 = sp2D4;
                                    sp2D4 = temp_t9_8 + 8;
                                    temp_t9_8->unk0 = 0xDB00000C;
                                    temp_t9_8->unk4 = var_s0->unkC;
                                    temp_t5_6 = sp2D4;
                                    sp2D4 = temp_t5_6 + 8;
                                    temp_t5_6->unk0 = 0xDB000010;
                                    temp_t5_6->unk4 = var_s0->unk10;
                                    temp_t8_8 = sp2D4;
                                    sp2D4 = temp_t8_8 + 8;
                                    temp_t8_8->unk0 = 0xDB000014;
                                    temp_t8_8->unk4 = var_s0->unk14;
                                    temp_t3_9 = sp2D4;
                                    sp2D4 = temp_t3_9 + 8;
                                    temp_t3_9->unk0 = 0xDB000020;
                                    temp_t3_9->unk4 = var_s0->unk20;
                                    temp_t7_9 = sp2D4;
                                    sp2D4 = temp_t7_9 + 8;
                                    temp_t7_9->unk0 = 0xDB000024;
                                    temp_t7_9->unk4 = var_s0->unk24;
                                    temp_t1_9 = sp2D4;
                                    sp2D4 = temp_t1_9 + 8;
                                    temp_t1_9->unk0 = 0xDB000028;
                                    temp_t1_9->unk4 = var_s0->unk28;
                                    temp_t6_7 = sp2D4;
                                    sp2D4 = temp_t6_7 + 8;
                                    temp_t6_7->unk0 = 0xDB00002C;
                                    temp_t6_7->unk4 = var_s0->unk2C;
                                    temp_a0_6 = sp2D4;
                                    sp2D4 = temp_a0_6 + 8;
                                    temp_a0_6->unk0 = 0xDB000030;
                                    temp_a0_6->unk4 = var_s0->unk30;
                                    temp_t4_9 = sp2D4;
                                    sp2D4 = temp_t4_9 + 8;
                                    temp_t4_9->unk0 = 0xDB000034;
                                    temp_t4_9->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x2F:          /* switch 3 */
                                    temp_f12_5 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk0 = D_8004AB18.unk0 * D_8004AA94;
                                    D_8004AAD8.unk4 = D_8004AB18.unk4 * D_8004AA94;
                                    D_8004AAD8.unk8 = D_8004AB18.unk8 * D_8004AA94;
                                    D_8004AAD8.unkC = D_8004AB18.unkC * D_8004AA94;
                                    D_8004AAD8.unk10 = D_8004AB18.unk10 * temp_f12_5;
                                    D_8004AAD8.unk14 = D_8004AB18.unk14 * temp_f12_5;
                                    D_8004AAD8.unk18 = D_8004AB18.unk18 * temp_f12_5;
                                    D_8004AAD8.unk1C = D_8004AB18.unk1C * temp_f12_5;
                                    D_8004AAD8.unk20 = D_8004AB18.unk20 * D_8004AA94;
                                    D_8004AAD8.unk24 = D_8004AB18.unk24 * D_8004AA94;
                                    D_8004AAD8.unk28 = D_8004AB18.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AB18.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_5, (bitwise f32) &D_8004AAD8, var_s0, var_a2);
                                    temp_t2_9 = sp2D4;
                                    sp2D4 = temp_t2_9 + 8;
                                    temp_t2_9->unk4 = 0;
                                    temp_t2_9->unk0 = 0xD5000001;
                                    temp_t5_7 = sp2D4;
                                    sp2D4 = temp_t5_7 + 8;
                                    temp_t5_7->unk0 = 0xDB000008;
                                    temp_t5_7->unk4 = var_s0->unk0;
                                    temp_t8_9 = sp2D4;
                                    sp2D4 = temp_t8_9 + 8;
                                    temp_t8_9->unk0 = 0xDB00000C;
                                    temp_t8_9->unk4 = var_s0->unk4;
                                    temp_t3_10 = sp2D4;
                                    sp2D4 = temp_t3_10 + 8;
                                    temp_t3_10->unk0 = 0xDB000010;
                                    temp_t3_10->unk4 = var_s0->unk8;
                                    temp_t7_10 = sp2D4;
                                    sp2D4 = temp_t7_10 + 8;
                                    temp_t7_10->unk0 = 0xDB000014;
                                    temp_t7_10->unk4 = var_s0->unkC;
                                    temp_t1_10 = sp2D4;
                                    sp2D4 = temp_t1_10 + 8;
                                    temp_t1_10->unk0 = 0xDB000000;
                                    temp_t1_10->unk4 = var_s0->unk10;
                                    temp_t6_8 = sp2D4;
                                    sp2D4 = temp_t6_8 + 8;
                                    temp_t6_8->unk0 = 0xDB000004;
                                    temp_t6_8->unk4 = var_s0->unk14;
                                    temp_t2_10 = sp2D4;
                                    sp2D4 = temp_t2_10 + 8;
                                    temp_t2_10->unk0 = 0xDB000028;
                                    temp_t2_10->unk4 = var_s0->unk20;
                                    temp_t4_10 = sp2D4;
                                    sp2D4 = temp_t4_10 + 8;
                                    temp_t4_10->unk0 = 0xDB00002C;
                                    temp_t4_10->unk4 = var_s0->unk24;
                                    temp_t9_9 = sp2D4;
                                    sp2D4 = temp_t9_9 + 8;
                                    temp_t9_9->unk0 = 0xDB000030;
                                    temp_t9_9->unk4 = var_s0->unk28;
                                    temp_t5_8 = sp2D4;
                                    sp2D4 = temp_t5_8 + 8;
                                    temp_t5_8->unk0 = 0xDB000034;
                                    temp_t5_8->unk4 = var_s0->unk2C;
                                    temp_a0_7 = sp2D4;
                                    sp2D4 = temp_a0_7 + 8;
                                    temp_a0_7->unk0 = 0xDB000020;
                                    temp_a0_7->unk4 = var_s0->unk30;
                                    temp_t3_11 = sp2D4;
                                    sp2D4 = temp_t3_11 + 8;
                                    temp_t3_11->unk0 = 0xDB000024;
                                    temp_t3_11->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x30:          /* switch 3 */
                                    temp_f12_6 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk0 = D_8004AB18.unk0 * D_8004AA94;
                                    D_8004AAD8.unk4 = D_8004AB18.unk4 * D_8004AA94;
                                    D_8004AAD8.unk8 = D_8004AB18.unk8 * D_8004AA94;
                                    D_8004AAD8.unkC = D_8004AB18.unkC * D_8004AA94;
                                    D_8004AAD8.unk10 = D_8004AB18.unk10 * temp_f12_6;
                                    D_8004AAD8.unk14 = D_8004AB18.unk14 * temp_f12_6;
                                    D_8004AAD8.unk18 = D_8004AB18.unk18 * temp_f12_6;
                                    D_8004AAD8.unk1C = D_8004AB18.unk1C * temp_f12_6;
                                    D_8004AAD8.unk20 = D_8004AB18.unk20 * D_8004AA94;
                                    D_8004AAD8.unk24 = D_8004AB18.unk24 * D_8004AA94;
                                    D_8004AAD8.unk28 = D_8004AB18.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AB18.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_6, (bitwise f32) &D_8004AAD8, var_s0, var_a2);
                                    temp_t8_10 = sp2D4;
                                    sp2D4 = temp_t8_10 + 8;
                                    temp_t8_10->unk4 = 0;
                                    temp_t8_10->unk0 = 0xD5000001;
                                    temp_t1_11 = sp2D4;
                                    sp2D4 = temp_t1_11 + 8;
                                    temp_t1_11->unk0 = 0xDB000000;
                                    temp_t1_11->unk4 = var_s0->unk0;
                                    temp_t6_9 = sp2D4;
                                    sp2D4 = temp_t6_9 + 8;
                                    temp_t6_9->unk0 = 0xDB000004;
                                    temp_t6_9->unk4 = var_s0->unk4;
                                    temp_t2_11 = sp2D4;
                                    sp2D4 = temp_t2_11 + 8;
                                    temp_t2_11->unk0 = 0xDB000008;
                                    temp_t2_11->unk4 = var_s0->unk8;
                                    temp_t4_11 = sp2D4;
                                    sp2D4 = temp_t4_11 + 8;
                                    temp_t4_11->unk0 = 0xDB00000C;
                                    temp_t4_11->unk4 = var_s0->unkC;
                                    temp_t9_10 = sp2D4;
                                    sp2D4 = temp_t9_10 + 8;
                                    temp_t9_10->unk0 = 0xDB000010;
                                    temp_t9_10->unk4 = var_s0->unk10;
                                    temp_t5_9 = sp2D4;
                                    sp2D4 = temp_t5_9 + 8;
                                    temp_t5_9->unk0 = 0xDB000014;
                                    temp_t5_9->unk4 = var_s0->unk14;
                                    temp_t8_11 = sp2D4;
                                    sp2D4 = temp_t8_11 + 8;
                                    temp_t8_11->unk0 = 0xDB000020;
                                    temp_t8_11->unk4 = var_s0->unk20;
                                    temp_t3_12 = sp2D4;
                                    sp2D4 = temp_t3_12 + 8;
                                    temp_t3_12->unk0 = 0xDB000024;
                                    temp_t3_12->unk4 = var_s0->unk24;
                                    temp_t7_11 = sp2D4;
                                    sp2D4 = temp_t7_11 + 8;
                                    temp_t7_11->unk0 = 0xDB000028;
                                    temp_t7_11->unk4 = var_s0->unk28;
                                    temp_t1_12 = sp2D4;
                                    sp2D4 = temp_t1_12 + 8;
                                    temp_t1_12->unk0 = 0xDB00002C;
                                    temp_t1_12->unk4 = var_s0->unk2C;
                                    temp_a0_8 = sp2D4;
                                    sp2D4 = temp_a0_8 + 8;
                                    temp_a0_8->unk0 = 0xDB000030;
                                    temp_a0_8->unk4 = var_s0->unk30;
                                    temp_t2_12 = sp2D4;
                                    sp2D4 = temp_t2_12 + 8;
                                    temp_t2_12->unk0 = 0xDB000034;
                                    temp_t2_12->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                case 0x31:          /* switch 3 */
                                    temp_f12_7 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk0 = D_8004AB58.unk0 * D_8004AA94;
                                    D_8004AAD8.unk4 = D_8004AB58.unk4 * D_8004AA94;
                                    D_8004AAD8.unk8 = D_8004AB58.unk8 * D_8004AA94;
                                    D_8004AAD8.unkC = D_8004AB58.unkC * D_8004AA94;
                                    D_8004AAD8.unk10 = D_8004AB58.unk10 * temp_f12_7;
                                    D_8004AAD8.unk14 = D_8004AB58.unk14 * temp_f12_7;
                                    D_8004AAD8.unk18 = D_8004AB58.unk18 * temp_f12_7;
                                    D_8004AAD8.unk1C = D_8004AB58.unk1C * temp_f12_7;
                                    D_8004AAD8.unk20 = D_8004AB58.unk20 * D_8004AA94;
                                    D_8004AAD8.unk24 = D_8004AB58.unk24 * D_8004AA94;
                                    D_8004AAD8.unk28 = D_8004AB58.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AB58.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_7, (bitwise f32) &D_8004AAD8, var_s0, var_a2);
                                    temp_t6_10 = sp2D4;
                                    sp2D4 = temp_t6_10 + 8;
                                    temp_t6_10->unk4 = 0;
                                    temp_t6_10->unk0 = 0xD5000001;
                                    temp_t9_11 = sp2D4;
                                    sp2D4 = temp_t9_11 + 8;
                                    temp_t9_11->unk0 = 0xDB000008;
                                    temp_t9_11->unk4 = var_s0->unk0;
                                    temp_t5_10 = sp2D4;
                                    sp2D4 = temp_t5_10 + 8;
                                    temp_t5_10->unk0 = 0xDB00000C;
                                    temp_t5_10->unk4 = var_s0->unk4;
                                    temp_t8_12 = sp2D4;
                                    sp2D4 = temp_t8_12 + 8;
                                    temp_t8_12->unk0 = 0xDB000010;
                                    temp_t8_12->unk4 = var_s0->unk8;
                                    temp_t3_13 = sp2D4;
                                    sp2D4 = temp_t3_13 + 8;
                                    temp_t3_13->unk0 = 0xDB000014;
                                    temp_t3_13->unk4 = var_s0->unkC;
                                    temp_t7_12 = sp2D4;
                                    sp2D4 = temp_t7_12 + 8;
                                    temp_t7_12->unk0 = 0xDB000000;
                                    temp_t7_12->unk4 = var_s0->unk10;
                                    temp_t1_13 = sp2D4;
                                    sp2D4 = temp_t1_13 + 8;
                                    temp_t1_13->unk0 = 0xDB000004;
                                    temp_t1_13->unk4 = var_s0->unk14;
                                    temp_t6_11 = sp2D4;
                                    sp2D4 = temp_t6_11 + 8;
                                    temp_t6_11->unk0 = 0xDB000028;
                                    temp_t6_11->unk4 = var_s0->unk20;
                                    temp_t2_13 = sp2D4;
                                    sp2D4 = temp_t2_13 + 8;
                                    temp_t2_13->unk0 = 0xDB00002C;
                                    temp_t2_13->unk4 = var_s0->unk24;
                                    temp_t4_12 = sp2D4;
                                    sp2D4 = temp_t4_12 + 8;
                                    temp_t4_12->unk0 = 0xDB000030;
                                    temp_t4_12->unk4 = var_s0->unk28;
                                    temp_t9_12 = sp2D4;
                                    sp2D4 = temp_t9_12 + 8;
                                    temp_t9_12->unk0 = 0xDB000034;
                                    temp_t9_12->unk4 = var_s0->unk2C;
                                    temp_a0_9 = sp2D4;
                                    sp2D4 = temp_a0_9 + 8;
                                    temp_a0_9->unk0 = 0xDB000020;
                                    temp_a0_9->unk4 = var_s0->unk30;
                                    temp_t8_13 = sp2D4;
                                    sp2D4 = temp_t8_13 + 8;
                                    temp_t8_13->unk0 = 0xDB000024;
                                    temp_t8_13->unk4 = var_s0->unk34;
                                    var_t3 = arg1->unk56 * 4;
                                    goto block_116;
                                case 0x32:          /* switch 3 */
                                    temp_f12_8 = arg1->unk44 * D_8004AA94;
                                    D_8004AA94 *= arg1->unk40;
                                    D_8004AAD8.unk0 = D_8004AB58.unk0 * D_8004AA94;
                                    D_8004AAD8.unk4 = D_8004AB58.unk4 * D_8004AA94;
                                    D_8004AAD8.unk8 = D_8004AB58.unk8 * D_8004AA94;
                                    D_8004AAD8.unkC = D_8004AB58.unkC * D_8004AA94;
                                    D_8004AAD8.unk10 = D_8004AB58.unk10 * temp_f12_8;
                                    D_8004AAD8.unk14 = D_8004AB58.unk14 * temp_f12_8;
                                    D_8004AAD8.unk18 = D_8004AB58.unk18 * temp_f12_8;
                                    D_8004AAD8.unk1C = D_8004AB58.unk1C * temp_f12_8;
                                    D_8004AAD8.unk20 = D_8004AB58.unk20 * D_8004AA94;
                                    D_8004AAD8.unk24 = D_8004AB58.unk24 * D_8004AA94;
                                    D_8004AAD8.unk28 = D_8004AB58.unk28 * D_8004AA94;
                                    D_8004AAD8.unk2C = D_8004AB58.unk2C * D_8004AA94;
                                    HS64_MtxF2L(temp_f12_8, (bitwise f32) &D_8004AAD8, var_s0, var_a2);
                                    temp_t5_11 = sp2D4;
                                    sp2D4 = temp_t5_11 + 8;
                                    temp_t5_11->unk4 = 0;
                                    temp_t5_11->unk0 = 0xD5000001;
                                    temp_t7_13 = sp2D4;
                                    sp2D4 = temp_t7_13 + 8;
                                    temp_t7_13->unk0 = 0xDB000000;
                                    temp_t7_13->unk4 = var_s0->unk0;
                                    temp_t1_14 = sp2D4;
                                    sp2D4 = temp_t1_14 + 8;
                                    temp_t1_14->unk0 = 0xDB000004;
                                    temp_t1_14->unk4 = var_s0->unk4;
                                    temp_t6_12 = sp2D4;
                                    sp2D4 = temp_t6_12 + 8;
                                    temp_t6_12->unk0 = 0xDB000008;
                                    temp_t6_12->unk4 = var_s0->unk8;
                                    temp_t2_14 = sp2D4;
                                    sp2D4 = temp_t2_14 + 8;
                                    temp_t2_14->unk0 = 0xDB00000C;
                                    temp_t2_14->unk4 = var_s0->unkC;
                                    temp_t4_13 = sp2D4;
                                    sp2D4 = temp_t4_13 + 8;
                                    temp_t4_13->unk0 = 0xDB000010;
                                    temp_t4_13->unk4 = var_s0->unk10;
                                    temp_t9_13 = sp2D4;
                                    sp2D4 = temp_t9_13 + 8;
                                    temp_t9_13->unk0 = 0xDB000014;
                                    temp_t9_13->unk4 = var_s0->unk14;
                                    temp_t5_12 = sp2D4;
                                    sp2D4 = temp_t5_12 + 8;
                                    temp_t5_12->unk0 = 0xDB000020;
                                    temp_t5_12->unk4 = var_s0->unk20;
                                    temp_t8_14 = sp2D4;
                                    sp2D4 = temp_t8_14 + 8;
                                    temp_t8_14->unk0 = 0xDB000024;
                                    temp_t8_14->unk4 = var_s0->unk24;
                                    temp_t3_14 = sp2D4;
                                    sp2D4 = temp_t3_14 + 8;
                                    temp_t3_14->unk0 = 0xDB000028;
                                    temp_t3_14->unk4 = var_s0->unk28;
                                    temp_t7_14 = sp2D4;
                                    sp2D4 = temp_t7_14 + 8;
                                    temp_t7_14->unk0 = 0xDB00002C;
                                    temp_t7_14->unk4 = var_s0->unk2C;
                                    temp_a0_10 = sp2D4;
                                    sp2D4 = temp_a0_10 + 8;
                                    temp_a0_10->unk0 = 0xDB000030;
                                    temp_a0_10->unk4 = var_s0->unk30;
                                    temp_t6_13 = sp2D4;
                                    sp2D4 = temp_t6_13 + 8;
                                    temp_t6_13->unk0 = 0xDB000034;
                                    temp_t6_13->unk4 = var_s0->unk34;
                                    var_a2 = (arg1->unk56 * 4) + arg1;
                                    break;
                                default:            /* switch 3 */
                                    if ((temp_v0_6 >= 0x43) && (D_8004AB9C != 0)) {
                                        if (D_8003DCAB != arg1->unk4->unkE) {
                                            var_a3 = (D_8004AB9C + (temp_v0_6 * 8))->unk-218;
                                        } else {
                                            var_a3 = (D_8004AB9C + (temp_v0_6 * 8))->unk-214;
                                        }
                                        var_a0_2 = var_a3(var_s0, arg1, &sp2D4, var_a3);
                                    }
                                    if (var_a0_2 == 1) {
                                        var_a2 = (arg1->unk56 * 4) + arg1;
                                    } else {
                                        goto block_90;
                                    }
                                    break;
                            }
                        }
                    }
                } else {
                    var_a0_3 = 0;
                    if (temp_s2->unk4 == 0x42) {
                        D_8004AA94 *= arg1->unk40;
                    }
                    if ((temp_s2->unk4 >= 0x43) && (D_8004AB9C != 0)) {
                        if (D_8003DCAB != arg1->unk4->unkE) {
                            var_a3_2 = (D_8004AB9C + (temp_s2->unk4 * 8))->unk-218;
                        } else {
                            var_a3_2 = (D_8004AB9C + (temp_s2->unk4 * 8))->unk-214;
                        }
                        var_a0_3 = var_a3_2(sp78, arg1, &sp2D4, var_a3_2);
                    }
                    if (var_a0_3 == 1) {
                        var_t3 = arg1->unk56 * 4;
                    } else {
block_108:
                        if (temp_s2->unk4 != 2) {
                            temp_t8_15 = sp2D4;
                            if ((sp2CC == 0) && ((temp_t5_13 = sp2D4, (arg1->unk14 == 1)) || (arg1->unk8 != 0))) {
                                sp2D4 = temp_t5_13 + 8;
                                temp_t5_13->unk0 = 0xDA380000;
                                temp_t5_13->unk4 = var_s0;
                            } else {
                                sp2D4 = temp_t8_15 + 8;
                                temp_t8_15->unk0 = 0xDA380001;
                                temp_t8_15->unk4 = var_s0;
                            }
                            sp2CC += 1;
                        }
                        goto block_115;
                    }
                    goto block_116;
                }
            } else {
block_115:
                var_t3 = arg1->unk56 * 4;
block_116:
                var_a2 = var_t3 + arg1;
            }
            temp_t4 = sp74 + 4;
            sp74 = temp_t4;
        } while (temp_t4 < var_a2);
    }
    *arg0 = sp2D4;
    return sp2CC;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80011180.s")
#endif

#ifdef MIPS_TO_C

void func_80013300(void *arg0, void **arg1) {
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    s32 sp2C;
    s32 sp1C;
    ? *temp_v0;
    ? *var_a2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f0_5;
    f32 var_f0_6;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f10_3;
    f32 var_f12;
    f32 var_f2;
    f32 var_f4;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f4_4;
    f32 var_f6;
    f32 var_f8;
    f32 var_f8_2;
    s32 *temp_t0;
    s32 *temp_v0_12;
    s32 *temp_v0_13;
    s32 *temp_v0_14;
    s32 *temp_v0_2;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v1;
    s32 *var_a1;
    s32 *var_a1_2;
    s32 *var_t2;
    s32 temp_f10;
    s32 temp_t7;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_8;
    s32 temp_v0_9;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a3_3;
    s32 var_a3_4;
    s32 var_t5;
    s32 var_t6;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s32 var_v1_4;
    u16 temp_a0;
    u16 temp_a0_2;
    u16 temp_a0_3;
    u16 temp_a0_4;
    u16 temp_t6;
    u16 temp_t7_2;
    u16 temp_t7_3;
    u16 temp_t7_4;
    u16 temp_t7_5;
    u16 temp_t8;
    u16 temp_t8_2;
    u16 temp_t9;
    u16 temp_t9_2;
    u16 temp_t9_3;
    u16 var_t1;
    u8 temp_v0_7;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a3;

    if (arg0->unk80 != NULL) {
        temp_a3 = *arg1;
        *arg1 = temp_a3 + 8;
        temp_a3->unk0 = 0xDB060038;
        var_t5 = 0;
        temp_a3->unk4 = D_8004A404;
        temp_v0 = arg0->unk80;
        var_a2 = temp_v0;
        if (temp_v0 != NULL) {
            do {
                var_a2 = *var_a2;
                var_t5 += 1;
            } while (var_a2 != NULL);
            var_a2 = temp_v0;
        }
        var_a1 = D_8004A404 + (var_t5 * 8);
        if (var_t5 > 0) {
            sp1C = var_t5 * 8;
            sp2C = 0;
            var_t2 = D_8004A404;
            var_f12 = spD8;
            var_f2 = spDC;
            do {
                var_t1 = var_a2->unk38;
                temp_v0_2 = var_a1;
                if (var_t1 == 0) {
                    var_t1 = 0xA1;
                }
                if (var_t1 & 0xE0) {
                    var_f2 = var_a2->unk24;
                    var_f12 = var_a2->unk28;
                    spD4 = var_a2->unk1C;
                    spD0 = var_a2->unk20;
                    spCC = var_a2->unk44;
                    spC8 = var_a2->unk48;
                    if (var_a2->unk18 != 0) {
                        var_f2 *= 0.5f;
                        temp_f0 = var_a2->unk30 * 0.5f;
                        spD4 = (((spD4 - var_a2->unk2C) + 1.0f) - temp_f0) * 0.5f;
                        spCC = (((spCC - var_a2->unk4C) + 1.0f) - temp_f0) * 0.5f;
                    }
                }
                var_t2->unk0 = 0xDE010000;
                var_t2->unk4 = var_a1;
                if (var_t1 & 4) {
                    temp_v0_2->unk0 = 0xFD100000;
                    var_a1 += 8;
                    temp_v0_2->unk4 = *(var_a2->unk34 + (var_a2->unk88 * 4));
                    if (var_t1 & 3) {
                        temp_a1 = var_a1 + 8;
                        var_a1->unk0 = 0xE8000000;
                        var_a1->unk4 = 0;
                        temp_a1_2 = temp_a1 + 8;
                        temp_a1->unk4 = 0x05000000;
                        temp_a1->unk0 = 0xF5000100;
                        temp_a1_3 = temp_a1_2 + 8;
                        temp_a1_2->unk0 = 0xE6000000;
                        temp_a1_2->unk4 = 0;
                        temp_a1_3->unk0 = 0xF0000000;
                        temp_a1_4 = temp_a1_3 + 8;
                        if (var_a2->unkB == 1) {
                            var_v0 = 0xFF;
                        } else {
                            var_v0 = 0xF;
                        }
                        temp_a1_3->unk4 = ((var_v0 & 0x3FF) << 0xE) | 0x05000000;
                        temp_a1_4->unk0 = 0xE7000000;
                        temp_a1_4->unk4 = 0;
                        var_a1 = temp_a1_4 + 8;
                    }
                }
                var_t2 += 8;
                if (var_t1 & 0x1000) {
                    var_a1->unk0 = 0xDB0A0000;
                    temp_a1_5 = var_a1 + 8;
                    var_a1->unk4 = var_a2->unk68;
                    temp_a1_5->unk0 = 0xDB0A0004;
                    var_a1 = temp_a1_5 + 8;
                    temp_a1_5->unk4 = var_a2->unk68;
                }
                if (var_t1 & 0x2000) {
                    var_a1->unk0 = 0xDB0A0018;
                    temp_a1_6 = var_a1 + 8;
                    var_a1->unk4 = var_a2->unk6C;
                    temp_a1_6->unk0 = 0xDB0A001C;
                    var_a1 = temp_a1_6 + 8;
                    temp_a1_6->unk4 = var_a2->unk6C;
                }
                if (var_t1 & 0x218) {
                    if (var_t1 & 0x10) {
                        temp_f0_2 = var_a2->unk84;
                        temp_f10 = temp_f0_2;
                        temp_v1 = var_a1;
                        var_a1 += 8;
                        temp_v1->unk0 = (var_a2->unk5D << 8) | 0xFA000000 | (((temp_f0_2 - temp_f10) * 256.0f) & 0xFF);
                        temp_v1->unk4 = (var_a2->unk58 << 0x18) | (var_a2->unk59 << 0x10) | (var_a2->unk5A << 8) | var_a2->unk5B;
                        var_a2->unk80 = temp_f10;
                        var_a2->unk82 = temp_f10 + 1;
                    } else {
                        temp_v0_3 = var_a1;
                        var_a1 += 8;
                        temp_v0_3->unk0 = (var_a2->unk5D << 8) | 0xFA000000 | ((var_a2->unk84 * 255.0f) & 0xFF);
                        temp_v0_3->unk4 = (var_a2->unk58 << 0x18) | (var_a2->unk59 << 0x10) | (var_a2->unk5A << 8) | var_a2->unk5B;
                    }
                }
                temp_v0_4 = var_a1;
                if (var_t1 & 0x400) {
                    temp_v0_4->unk0 = 0xFB000000;
                    var_a1 += 8;
                    temp_v0_4->unk4 = (var_a2->unk60 << 0x18) | (var_a2->unk61 << 0x10) | (var_a2->unk62 << 8) | var_a2->unk63;
                }
                temp_v0_5 = var_a1;
                if (var_t1 & 0x800) {
                    temp_v0_5->unk0 = 0xF9000000;
                    var_a1 += 8;
                    temp_v0_5->unk4 = (var_a2->unk64 << 0x18) | (var_a2->unk65 << 0x10) | (var_a2->unk66 << 8) | var_a2->unk67;
                }
                if (var_t1 & 0x12) {
                    var_v1 = 2;
                    if (var_a2->unk3B == 3) {
                        var_v1 = 3;
                    }
                    temp_v0_6 = var_a1;
                    temp_v0_6->unk0 = ((var_a2->unk3A & 7) << 0x15) | 0xFD000000 | ((var_v1 & 3) << 0x13);
                    var_a1 += 8;
                    temp_v0_6->unk4 = *(var_a2->unkC + (var_a2->unk82 * 4));
                    if (var_t1 & 0x11) {
                        var_a1->unk0 = 0xE6000000;
                        var_a1->unk4 = 0;
                        temp_v0_7 = var_a2->unk3B;
                        var_a1_2 = var_a1 + 8;
                        temp_t0 = var_a1_2;
                        switch (temp_v0_7) {        /* irregular */
                            case 0:
                                temp_t0->unk0 = 0xF3000000;
                                temp_a0 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3 = 0x7FF;
                                temp_v0_8 = (((temp_a0 * var_a2->unk3E) + 3) >> 2) - 1;
                                if (temp_v0_8 < 0x7FF) {
                                    var_a3 = temp_v0_8;
                                }
                                temp_v1_2 = temp_a0 / 16;
                                var_a0 = temp_v1_2;
                                if (temp_v1_2 <= 0) {
                                    var_a0 = 1;
                                }
                                if (temp_v1_2 <= 0) {
                                    var_v0_2 = 1;
                                } else {
                                    var_v0_2 = temp_v1_2;
                                }
                                var_t6 = (((var_a0 + 0x7FF) / var_v0_2) & 0xFFF) | 0x06000000 | ((var_a3 & 0xFFF) << 0xC);
block_70:
                                temp_t0->unk4 = var_t6;
                                break;
                            case 1:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_2 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_2 = 0x7FF;
                                temp_v0_9 = (((temp_a0_2 * var_a2->unk3E) + 1) >> 1) - 1;
                                if (temp_v0_9 < 0x7FF) {
                                    var_a3_2 = temp_v0_9;
                                }
                                temp_v1_3 = temp_a0_2 / 8;
                                var_a0_2 = temp_v1_3;
                                if (temp_v1_3 <= 0) {
                                    var_a0_2 = 1;
                                }
                                if (temp_v1_3 <= 0) {
                                    var_v0_3 = 1;
                                } else {
                                    var_v0_3 = temp_v1_3;
                                }
                                var_t6 = (((var_a0_2 + 0x7FF) / var_v0_3) & 0xFFF) | 0x06000000 | ((var_a3_2 & 0xFFF) << 0xC);
                                goto block_70;
                            case 2:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_3 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_3 = 0x7FF;
                                temp_v0_10 = (temp_a0_3 * var_a2->unk3E) - 1;
                                if (temp_v0_10 < 0x7FF) {
                                    var_a3_3 = temp_v0_10;
                                }
                                temp_v1_4 = (temp_a0_3 * 2) / 8;
                                var_a0_3 = temp_v1_4;
                                if (temp_v1_4 <= 0) {
                                    var_a0_3 = 1;
                                }
                                if (temp_v1_4 <= 0) {
                                    var_v0_4 = 1;
                                } else {
                                    var_v0_4 = temp_v1_4;
                                }
                                var_t6 = (((var_a0_3 + 0x7FF) / var_v0_4) & 0xFFF) | 0x06000000 | ((var_a3_3 & 0xFFF) << 0xC);
                                goto block_70;
                            case 3:
                                var_a1_2->unk0 = 0xF3000000;
                                temp_a0_4 = var_a2->unk3C;
                                var_a1_2 += 8;
                                var_a3_4 = 0x7FF;
                                temp_v0_11 = (temp_a0_4 * var_a2->unk3E) - 1;
                                if (temp_v0_11 < 0x7FF) {
                                    var_a3_4 = temp_v0_11;
                                }
                                temp_v1_5 = (temp_a0_4 * 4) / 8;
                                var_a0_4 = temp_v1_5;
                                if (temp_v1_5 <= 0) {
                                    var_a0_4 = 1;
                                }
                                if (temp_v1_5 <= 0) {
                                    var_v0_5 = 1;
                                } else {
                                    var_v0_5 = temp_v1_5;
                                }
                                var_t6 = (((var_a0_4 + 0x7FF) / var_v0_5) & 0xFFF) | 0x06000000 | ((var_a3_4 & 0xFFF) << 0xC);
                                goto block_70;
                        }
                        var_a1_2->unk0 = 0xE6000000;
                        var_a1_2->unk4 = 0;
                        var_a1 = var_a1_2 + 8;
                    }
                }
                if (var_t1 & 0x11) {
                    temp_v0_12 = var_a1;
                    temp_v0_12->unk0 = ((var_a2->unkA & 7) << 0x15) | 0xFD000000 | ((var_a2->unkB & 3) << 0x13);
                    var_a1 += 8;
                    temp_v0_12->unk4 = *(var_a2->unkC + (var_a2->unk80 * 4));
                }
                temp_v0_13 = var_a1;
                if (var_t1 & 0x20) {
                    if (var_f2 < 0.0f) {
                        var_f0 = -var_f2;
                    } else {
                        var_f0 = var_f2;
                    }
                    if (var_f0 > 0.000015259022f) {
                        temp_t7_2 = var_a2->unk14;
                        var_f10 = temp_t7_2;
                        if (temp_t7_2 < 0) {
                            var_f10 += 4294967296.0f;
                        }
                        temp_t8 = var_a2->unk12;
                        var_f10_2 = temp_t8;
                        if (temp_t8 < 0) {
                            var_f10_2 += 4294967296.0f;
                        }
                        var_a0_5 = (((var_f10 * spD4) + var_f10_2) / var_f2) * 4.0f;
                    } else {
                        var_a0_5 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_2 = -var_f12;
                    } else {
                        var_f0_2 = var_f12;
                    }
                    if (var_f0_2 > 0.000015259022f) {
                        temp_t7_3 = var_a2->unk16;
                        var_f6 = temp_t7_3;
                        if (temp_t7_3 < 0) {
                            var_f6 += 4294967296.0f;
                        }
                        temp_t8_2 = var_a2->unk12;
                        var_f10_3 = temp_t8_2;
                        if (temp_t8_2 < 0) {
                            var_f10_3 += 4294967296.0f;
                        }
                        var_v1_2 = (((((1.0f - var_f12) - spD0) * var_f6) + var_f10_3) / var_f12) * 4.0f;
                    } else {
                        var_v1_2 = 0.0f;
                    }
                    temp_v0_13->unk0 = ((var_a0_5 & 0xFFF) << 0xC) | 0xF2000000 | (var_v1_2 & 0xFFF);
                    var_a1 += 8;
                    temp_v0_13->unk4 = (((((var_a2->unk14 - 1) * 4) + var_a0_5) & 0xFFF) << 0xC) | ((((var_a2->unk16 - 1) * 4) + var_v1_2) & 0xFFF);
                }
                temp_v0_14 = var_a1;
                if (var_t1 & 0x40) {
                    if (var_f2 < 0.0f) {
                        var_f0_3 = -var_f2;
                    } else {
                        var_f0_3 = var_f2;
                    }
                    if (var_f0_3 > 0.000015259022f) {
                        temp_t9 = var_a2->unk40;
                        var_f4 = temp_t9;
                        if (temp_t9 < 0) {
                            var_f4 += 4294967296.0f;
                        }
                        temp_t7_4 = var_a2->unk12;
                        var_f4_2 = temp_t7_4;
                        if (temp_t7_4 < 0) {
                            var_f4_2 += 4294967296.0f;
                        }
                        var_a0_6 = (((var_f4 * spCC) + var_f4_2) / var_f2) * 4.0f;
                    } else {
                        var_a0_6 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_4 = -var_f12;
                    } else {
                        var_f0_4 = var_f12;
                    }
                    if (var_f0_4 > 0.000015259022f) {
                        temp_t9_2 = var_a2->unk42;
                        var_f8 = temp_t9_2;
                        if (temp_t9_2 < 0) {
                            var_f8 += 4294967296.0f;
                        }
                        temp_t7_5 = var_a2->unk12;
                        var_f4_3 = temp_t7_5;
                        if (temp_t7_5 < 0) {
                            var_f4_3 += 4294967296.0f;
                        }
                        var_v1_3 = (((((1.0f - var_f12) - spC8) * var_f8) + var_f4_3) / var_f12) * 4.0f;
                    } else {
                        var_v1_3 = 0.0f;
                    }
                    temp_v0_14->unk0 = ((var_a0_6 & 0xFFF) << 0xC) | 0xF2000000 | (var_v1_3 & 0xFFF);
                    var_a1 += 8;
                    temp_v0_14->unk4 = (((((var_a2->unk40 - 1) * 4) + var_a0_6) & 0xFFF) << 0xC) | 0x01000000 | ((((var_a2->unk42 - 1) * 4) + var_v1_3) & 0xFFF);
                }
                if (var_t1 & 0x80) {
                    if (var_f2 < 0.0f) {
                        var_f0_5 = -var_f2;
                    } else {
                        var_f0_5 = var_f2;
                    }
                    if (var_f0_5 > 0.000015259022f) {
                        temp_t6 = var_a2->unk10;
                        var_f4_4 = temp_t6;
                        if (temp_t6 < 0) {
                            var_f4_4 += 4294967296.0f;
                        }
                        var_a0_7 = (2097152.0f / var_f4_4) / var_f2;
                    } else {
                        var_a0_7 = 0.0f;
                    }
                    if (var_f12 < 0.0f) {
                        var_f0_6 = -var_f12;
                    } else {
                        var_f0_6 = var_f12;
                    }
                    if (var_f0_6 > 0.000015259022f) {
                        temp_t9_3 = var_a2->unk10;
                        var_f8_2 = temp_t9_3;
                        if (temp_t9_3 < 0) {
                            var_f8_2 += 4294967296.0f;
                        }
                        var_v1_4 = (2097152.0f / var_f8_2) / var_f12;
                    } else {
                        var_v1_4 = 0.0f;
                    }
                    if (var_a0_7 >= 0x10000) {
                        var_a0_7 = 0xFFFF;
                    }
                    if (var_v1_4 >= 0x10000) {
                        var_v1_4 = 0xFFFF;
                    }
                    var_a1->unk0 = 0xD7000002;
                    var_a1->unk4 = (var_a0_7 << 0x10) | (var_v1_4 & 0xFFFF);
                    var_a1 += 8;
                }
                var_a1->unk0 = 0xDF000000;
                var_a1->unk4 = 0;
                var_a1 += 8;
                temp_t7 = sp2C + 8;
                sp2C = temp_t7;
                var_a2 = var_a2->unk0;
            } while (temp_t7 != sp1C);
            spD8 = var_f12;
            spDC = var_f2;
        }
        D_8004A404 = var_a1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80013300.s")
#endif

#ifdef MIPS_TO_C

void func_800140FC(void *arg0, void **arg1) {
    s32 sp1C;
    void *sp18;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_2;

    temp_a2 = arg0->unk3C;
    D_8004AA94 = 1.0f;
    if ((temp_a2->unk50 != 0) && (temp_a2->unk54 == 0)) {
        sp18 = temp_a2;
        sp1C = func_80011180(arg1, temp_a2, temp_a2, arg1);
        func_80013300(sp18, arg1);
        temp_v1 = *arg1;
        *arg1 = temp_v1 + 8;
        temp_v1->unk0 = 0xDE000000;
        temp_v1->unk4 = temp_a2->unk50;
        if ((sp1C != 0) && ((temp_a2->unk14 == 1) || (temp_a2->unk8 != 0))) {
            temp_v1_2 = *arg1;
            *arg1 = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800140FC.s")
#endif

#ifdef MIPS_TO_C

void func_800141D4(void) {
    func_800140FC(&gDisplayListHeads);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800141D4.s")
#endif

#ifdef MIPS_TO_C

void func_800141F8(void) {
    func_800140FC(&D_8004A3D4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800141F8.s")
#endif

#ifdef MIPS_TO_C

void func_8001421C(void) {
    func_800140FC(&D_8004A3D8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001421C.s")
#endif

#ifdef MIPS_TO_C

void func_80014240(void) {
    func_800140FC(&D_8004A3DC);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014240.s")
#endif

#ifdef MIPS_TO_C

void func_80014264(void *arg0) {
    s32 sp2C;
    f32 sp24;
    void *temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *var_s0;

    if (!(arg0->unk54 & 2)) {
        sp24 = D_8004AA94;
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0);
        if ((arg0->unk50 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0);
            temp_v1 = gDisplayListHeads;
            gDisplayListHeads = temp_v1 + 8;
            temp_v1->unk0 = 0xDE000000;
            temp_v1->unk4 = arg0->unk50;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80014264(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v1_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
        D_8004AA94 = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80014264(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014264.s")
#endif

#ifdef MIPS_TO_C

void func_800143A4(void *arg0) {
    D_8004AA94 = 1.0f;
    func_80014264(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800143A4.s")
#endif

#ifdef MIPS_TO_C

void func_800143D4(void *arg0, void *arg1) {
    s32 sp34;
    s32 sp30;
    void *sp2C;
    s32 sp28;
    s32 sp20;
    s32 *temp_a2;
    s32 *temp_a2_4;
    s32 *temp_a2_5;
    s32 *temp_a2_6;
    s32 *temp_a2_7;
    s32 *temp_a2_8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 var_a1;
    s32 var_t4;
    void **temp_a0;
    void **temp_a2_10;
    void **temp_a2_11;
    void **temp_a2_2;
    void **temp_a2_3;
    void **temp_a2_9;
    void *temp_t1;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t9;
    void *temp_t9_2;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *var_a3;
    void *var_v0;

    sp30 = -1;
    if ((arg1 != NULL) && (arg0->unk54 == 0)) {
        temp_a0 = &gDisplayListHeads + (arg1->unk0 * 4);
        temp_t1 = *temp_a0;
        sp2C = temp_t1;
        temp_v0 = func_80011180(temp_a0, arg0, arg1);
        temp_a1 = arg1->unk0;
        temp_a2 = &gDisplayListHeads + (temp_a1 * 4);
        var_t4 = temp_v0;
        temp_t0 = *temp_a2;
        if (arg1->unk4 != 0) {
            sp28 = temp_t0;
            sp2C = temp_t1;
            sp34 = temp_v0;
            sp20 = D_8004A404;
            func_80013300(arg0, temp_a2, temp_a2, arg1);
            var_t4 = sp34;
            temp_a2_2 = &gDisplayListHeads + (arg1->unk0 * 4);
            temp_v0_2 = *temp_a2_2;
            *temp_a2_2 = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = arg1->unk4;
            if ((var_t4 != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != 0))) {
                temp_a2_3 = &gDisplayListHeads + (arg1->unk0 * 4);
                temp_v0_3 = *temp_a2_3;
                *temp_a2_3 = temp_v0_3 + 8;
                temp_v0_3->unk4 = 0x40;
                temp_v0_3->unk0 = 0xD8380002;
            }
        } else {
            sp30 = temp_a1;
        }
        var_a1 = arg1->unk8;
        var_a3 = arg1 + 8;
        if (var_a1 != 4) {
            do {
                if (var_a3->unk4 != 0) {
                    var_v0 = temp_t1;
                    if (temp_t1 != temp_t0) {
                        temp_a1_2 = (temp_t0 - temp_t1) & 0x1F;
                        if (temp_a1_2 != 0) {
                            do {
                                var_v0 += 8;
                                temp_t7 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7->unk0 = var_v0->unk-8;
                                temp_t7->unk4 = var_v0->unk-4;
                                temp_a2_4 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_4 += 8;
                            } while ((temp_a1_2 + temp_t1) != var_v0);
                            if (var_v0 != temp_t0) {
                                goto loop_16;
                            }
                        } else {
                            do {
loop_16:
                                var_v0 += 0x20;
                                temp_t9 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t9->unk0 = var_v0->unk-20;
                                temp_t9->unk4 = var_v0->unk-1C;
                                temp_a2_5 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_5 += 8;
                                temp_t7_2 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7_2->unk0 = var_v0->unk-18;
                                temp_t7_2->unk4 = var_v0->unk-14;
                                temp_a2_6 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_6 += 8;
                                temp_t9_2 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t9_2->unk0 = var_v0->unk-10;
                                temp_t9_2->unk4 = var_v0->unk-C;
                                temp_a2_7 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_7 += 8;
                                temp_t7_3 = *(&gDisplayListHeads + (var_a3->unk0 * 4));
                                temp_t7_3->unk0 = var_v0->unk-8;
                                temp_t7_3->unk4 = var_v0->unk-4;
                                temp_a2_8 = &gDisplayListHeads + (var_a3->unk0 * 4);
                                *temp_a2_8 += 8;
                            } while (var_v0 != temp_t0);
                        }
                        var_a1 = var_a3->unk0;
                    }
                    temp_a2_9 = &gDisplayListHeads + (var_a1 * 4);
                    if (arg0->unk80 != 0) {
                        temp_v0_4 = *temp_a2_9;
                        *temp_a2_9 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDB060038;
                        temp_v0_4->unk4 = sp20;
                        var_a1 = var_a3->unk0;
                    }
                    temp_a2_10 = &gDisplayListHeads + (var_a1 * 4);
                    temp_v0_5 = *temp_a2_10;
                    *temp_a2_10 = temp_v0_5 + 8;
                    temp_v0_5->unk0 = 0xDE000000;
                    temp_v0_5->unk4 = var_a3->unk4;
                    if ((var_t4 != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != 0))) {
                        temp_a2_11 = &gDisplayListHeads + (var_a3->unk0 * 4);
                        temp_v0_6 = *temp_a2_11;
                        *temp_a2_11 = temp_v0_6 + 8;
                        temp_v0_6->unk4 = 0x40;
                        temp_v0_6->unk0 = 0xD8380002;
                    }
                }
                var_a1 = var_a3->unk8;
                var_a3 += 8;
            } while (var_a1 != 4);
        }
        if (sp30 != -1) {
            *(&gDisplayListHeads + (sp30 * 4)) = temp_t1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800143D4.s")
#endif

#ifdef MIPS_TO_C

void func_80014768(void *arg0) {
    void *temp_a0;

    D_8004AA94 = 1.0f;
    temp_a0 = arg0->unk3C;
    func_800143D4(temp_a0, temp_a0->unk50);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014768.s")
#endif

#ifdef MIPS_TO_C

void func_8001479C(void) {
    D_8004ABA0 = &D_8004ABB8;
    D_8004ABA8 = &D_8004ABB8;
    D_8004ABA8 = &D_8004ABB8;
    D_8004ABB0 = &D_8004ABB8;
    D_8004ABB0 = &D_8004ABB8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001479C.s")
#endif

#ifdef MIPS_TO_C

void func_800147C8(void *arg0) {
    s32 sp48;
    s32 *sp44;
    u32 sp40;
    f32 sp34;
    ? *var_a2_2;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t5;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_3;

    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp34 = D_8004AA94;
        temp_a2 = arg0->unk50;
        sp40 = D_8004ABA0;
        sp44 = temp_a2;
        var_a2 = temp_a2;
        var_t3 = func_80011180(&D_8004ABA0, arg0, temp_a2);
        if ((var_a2 != NULL) && !(arg0->unk54 & 1)) {
            var_v0 = *var_a2;
            if (var_v0 != 4) {
                do {
                    var_s0 = var_v0 * 4;
                    if (var_a2->unk4 != 0) {
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t5 = *(&gDisplayListHeads + var_s0);
                                temp_t5->unk0 = var_a0->unk0;
                                temp_t5->unk4 = var_a0->unk4;
                                temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                *temp_v1 += 8;
                                temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                *temp_v0 += 8;
                                var_s0 = var_a2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_2 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp44 = var_a2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2, &D_8004ABA8);
                                var_s0_2 = var_a2->unk0;
                            } else {
                                temp_v0_2 = *temp_v1_2;
                                *temp_v1_2 = temp_v0_2 + 8;
                                temp_v0_2->unk4 = var_s4;
                                temp_v0_2->unk0 = 0xDB060038;
                                var_s0_2 = var_a2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_3 = &gDisplayListHeads + var_s0;
                        temp_v0_3 = *temp_v1_3;
                        *temp_v1_3 = temp_v0_3 + 8;
                        temp_v0_3->unk0 = 0xDE000000;
                        temp_v0_3->unk4 = var_a2->unk4;
                    }
                    var_v0 = var_a2->unk8;
                    var_a2 += 8;
                } while (var_v0 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_800147C8(temp_a0);
        }
        var_a2_2 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp40;
        do {
            if (D_8004ABA0 < var_a2_2->unk0) {
                var_a2_2->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_4;
                    *temp_v1_4 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_2->unk4) {
                var_a2_2->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_5->unk4;
                    temp_v1_5->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_2 += 8;
            var_a3 += 8;
        } while (var_a2_2 != &D_8004ABB8);
        D_8004AA94 = sp34;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_800147C8(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800147C8.s")
#endif

#ifdef MIPS_TO_C

void func_80014AD4(void *arg0) {
    D_8004AA94 = 1.0f;
    func_800147C8(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014AD4.s")
#endif

#ifdef MIPS_TO_C

f32 func_80014B04(void *arg0) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    void *temp_v0;

    temp_v0 = omCurrentCamera->unk3C;
    temp_f2 = arg0->unk1C - temp_v0->unk3C;
    temp_f12 = arg0->unk20 - temp_v0->unk40;
    temp_f14 = arg0->unk24 - temp_v0->unk44;
    return (temp_f2 * temp_f2) + (temp_f12 * temp_f12) + (temp_f14 * temp_f14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014B04.s")
#endif

#ifdef MIPS_TO_C

void func_80014B4C(void *arg0) {
    f32 *sp24;
    s32 sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    f32 temp_f6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;

    temp_s0 = arg0->unk3C;
    temp_v1 = temp_s0->unk50;
    if ((temp_v1 != NULL) && (temp_s0->unk54 == 0)) {
        sp24 = temp_v1;
        temp_f0 = func_80014B04(temp_s0);
        var_v1 = temp_v1;
        if (temp_f0 < *var_v1) {
            do {
                temp_f6 = var_v1->unk8;
                var_v1 += 8;
            } while (temp_f0 < temp_f6);
        }
        D_8004AA94 = 1.0f;
        if (var_v1->unk4 != 0) {
            sp24 = var_v1;
            sp20 = func_80011180(&gDisplayListHeads, temp_s0, &gDisplayListHeads);
            func_80013300(temp_s0, &gDisplayListHeads, &gDisplayListHeads);
            temp_a0 = gDisplayListHeads;
            gDisplayListHeads = temp_a0 + 8;
            temp_a0->unk0 = 0xDE000000;
            temp_a0->unk4 = var_v1->unk4;
            if ((sp20 != 0) && ((temp_s0->unk14 == 1) || (temp_s0->unk8 != 0))) {
                temp_a0_2 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_2 + 8;
                temp_a0_2->unk4 = 0x40;
                temp_a0_2->unk0 = 0xD8380002;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014B4C.s")
#endif

#ifdef MIPS_TO_C

void func_80014C78(void *arg0) {
    s32 sp2C;
    f32 sp20;
    s32 temp_s0;
    void *temp_a0;
    void *temp_v1;
    void *temp_v1_2;
    void *var_s0;

    temp_s0 = arg0->unk50;
    if (!(arg0->unk54 & 2)) {
        sp20 = D_8004AA94;
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0);
        if ((temp_s0 != 0) && (*(temp_s0 + (D_8004AD98 * 4)) != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0);
            temp_v1 = gDisplayListHeads;
            gDisplayListHeads = temp_v1 + 8;
            temp_v1->unk0 = 0xDE000000;
            temp_v1->unk4 = *(temp_s0 + (D_8004AD98 * 4));
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80014C78(temp_a0, &gDisplayListHeads, arg0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v1_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v1_2 + 8;
            temp_v1_2->unk4 = 0x40;
            temp_v1_2->unk0 = 0xD8380002;
        }
        D_8004AA94 = sp20;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80014C78(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014C78.s")
#endif

#ifdef MIPS_TO_C

void func_80014DF0(void *arg0) {
    f32 *sp2C;
    s32 sp28;
    void *sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2;
    void *var_a2;
    void *var_s0;

    temp_a2 = arg0->unk3C;
    D_8004AA94 = 1.0f;
    if (!(temp_a2->unk54 & 2)) {
        temp_v1 = temp_a2->unk50;
        if (temp_v1 != NULL) {
            D_8004AD98 = 0;
            sp2C = temp_v1;
            sp20 = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v1 = temp_v1;
            if (temp_f0 < *var_v1) {
                do {
                    var_v1 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_v1);
            }
            sp2C = var_v1;
            sp20 = temp_a2;
            sp28 = func_80011180(&gDisplayListHeads, temp_a2, temp_a2);
            var_a2 = temp_a2;
            if ((var_v1->unk4 != 0) && !(var_a2->unk54 & 1)) {
                sp2C = var_v1;
                sp20 = var_a2;
                func_80013300(var_a2, &gDisplayListHeads, var_a2);
                temp_a0 = gDisplayListHeads;
                gDisplayListHeads = temp_a0 + 8;
                temp_a0->unk0 = 0xDE000000;
                temp_a0->unk4 = var_v1->unk4;
            }
            temp_a0_2 = var_a2->unk10;
            if (temp_a0_2 != NULL) {
                sp20 = var_a2;
                func_80014C78(temp_a0_2);
            }
            if ((sp28 != 0) && ((var_a2->unk14 == 1) || (var_a2->unk8 != NULL))) {
                temp_a0_3 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_3 + 8;
                temp_a0_3->unk4 = 0x40;
                temp_a0_3->unk0 = 0xD8380002;
            }
            if (var_a2->unkC == 0) {
                var_s0 = var_a2->unk8;
                if (var_s0 != NULL) {
                    do {
                        func_80014C78(var_s0);
                        var_s0 = var_s0->unk8;
                    } while (var_s0 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014DF0.s")
#endif

#ifdef MIPS_TO_C

void func_80014FA4(void *arg0) {
    f32 *sp24;
    void *sp1C;
    f32 *temp_v0;
    f32 *var_v0;
    f32 temp_f0;
    f32 temp_f8;
    void *temp_a2;

    temp_a2 = arg0->unk3C;
    D_8004AA94 = 1.0f;
    if (temp_a2->unk54 == 0) {
        temp_v0 = temp_a2->unk50;
        if (temp_v0 != NULL) {
            sp24 = temp_v0;
            sp1C = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v0 = temp_v0;
            if (temp_f0 < *var_v0) {
                do {
                    temp_f8 = var_v0->unk8;
                    var_v0 += 8;
                } while (temp_f0 < temp_f8);
            }
            func_800143D4(temp_a2, var_v0->unk4, temp_a2);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80014FA4.s")
#endif

#ifdef MIPS_TO_C

void func_8001503C(void *arg0, s32 *arg2) {
    s32 sp48;
    s32 *sp40;
    u32 sp3C;
    f32 sp30;
    ? *var_a2_3;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 *var_a2_2;
    s32 temp_s0;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t8;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_3;

    var_a2 = arg2;
    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp30 = D_8004AA94;
        temp_s0 = arg0->unk50;
        if (temp_s0 != 0) {
            var_a2 = *(temp_s0 + (D_8004AD98 * 4));
            sp40 = var_a2;
        }
        sp3C = D_8004ABA0;
        var_a2_2 = sp40;
        var_t3 = func_80011180(&D_8004ABA0, arg0, var_a2);
        if ((temp_s0 != 0) && (var_a2_2 != NULL) && !(arg0->unk54 & 1)) {
            var_v0 = *var_a2_2;
            if (var_v0 != 4) {
                do {
                    var_s0 = var_v0 * 4;
                    if (var_a2_2->unk4 != 0) {
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t8 = *(&gDisplayListHeads + var_s0);
                                temp_t8->unk0 = var_a0->unk0;
                                temp_t8->unk4 = var_a0->unk4;
                                temp_v1 = &gDisplayListHeads + (var_a2_2->unk0 * 4);
                                *temp_v1 += 8;
                                temp_v0 = &D_8004ABA8 + (var_a2_2->unk0 * 4);
                                *temp_v0 += 8;
                                var_s0 = var_a2_2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_2 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp40 = var_a2_2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2_2, &D_8004ABA8);
                                var_s0_2 = var_a2_2->unk0;
                            } else {
                                temp_v0_2 = *temp_v1_2;
                                *temp_v1_2 = temp_v0_2 + 8;
                                temp_v0_2->unk4 = var_s4;
                                temp_v0_2->unk0 = 0xDB060038;
                                var_s0_2 = var_a2_2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_3 = &gDisplayListHeads + var_s0;
                        temp_v0_3 = *temp_v1_3;
                        *temp_v1_3 = temp_v0_3 + 8;
                        temp_v0_3->unk0 = 0xDE000000;
                        temp_v0_3->unk4 = var_a2_2->unk4;
                    }
                    var_v0 = var_a2_2->unk8;
                    var_a2_2 += 8;
                } while (var_v0 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_8001503C(temp_a0);
        }
        var_a2_3 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp3C;
        do {
            if (D_8004ABA0 < var_a2_3->unk0) {
                var_a2_3->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_4;
                    *temp_v1_4 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_3->unk4) {
                var_a2_3->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_5->unk4;
                    temp_v1_5->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_3 += 8;
            var_a3 += 8;
        } while (var_a2_3 != &D_8004ABB8);
        D_8004AA94 = sp30;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_8001503C(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001503C.s")
#endif

#ifdef MIPS_TO_C

void func_80015368(void *arg0) {
    s32 sp44;
    s32 *sp34;
    u32 sp30;
    ? *var_a2_2;
    f32 *var_s0;
    f32 temp_f0;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_s3;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_4;

    temp_s3 = arg0->unk3C;
    D_8004AA94 = 1.0f;
    var_s4 = 0;
    if (!(temp_s3->unk54 & 2)) {
        var_s0 = temp_s3->unk50;
        if (var_s0 != NULL) {
            D_8004AD98 = 0;
            temp_f0 = func_80014B04(temp_s3);
            if (temp_f0 < *var_s0) {
                do {
                    var_s0 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_s0);
            }
            temp_a2 = var_s0->unk4;
            sp34 = temp_a2;
            sp30 = D_8004ABA0;
            var_a2 = temp_a2;
            var_t3 = func_80011180(&D_8004ABA0, temp_s3, temp_a2);
            if ((var_a2 != NULL) && !(temp_s3->unk54 & 1)) {
                var_v0 = *var_a2;
                if (var_v0 != 4) {
                    do {
                        var_s0_2 = var_v0 * 4;
                        if (var_a2->unk4 != 0) {
                            var_a0 = *(&D_8004ABA8 + var_s0_2);
                            if (D_8004ABA0 != var_a0) {
                                do {
                                    temp_t7 = *(&gDisplayListHeads + var_s0_2);
                                    temp_t7->unk0 = var_a0->unk0;
                                    temp_t7->unk4 = var_a0->unk4;
                                    temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                    *temp_v1 += 8;
                                    temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                    *temp_v0 += 8;
                                    var_s0_2 = var_a2->unk0 * 4;
                                    var_a0 = *(&D_8004ABA8 + var_s0_2);
                                } while (D_8004ABA0 != var_a0);
                            }
                            if (temp_s3->unk80 != 0) {
                                temp_v1_2 = &gDisplayListHeads + var_s0_2;
                                if (var_s4 == 0) {
                                    var_s4 = D_8004A404;
                                    sp34 = var_a2;
                                    sp44 = var_t3;
                                    func_80013300(temp_s3, &gDisplayListHeads + var_s0_2, var_a2, &D_8004ABA8);
                                    var_s0_3 = var_a2->unk0;
                                } else {
                                    temp_v0_2 = *temp_v1_2;
                                    *temp_v1_2 = temp_v0_2 + 8;
                                    temp_v0_2->unk4 = var_s4;
                                    temp_v0_2->unk0 = 0xDB060038;
                                    var_s0_3 = var_a2->unk0;
                                }
                                var_s0_2 = var_s0_3 * 4;
                            }
                            temp_v1_3 = &gDisplayListHeads + var_s0_2;
                            temp_v0_3 = *temp_v1_3;
                            *temp_v1_3 = temp_v0_3 + 8;
                            temp_v0_3->unk0 = 0xDE000000;
                            temp_v0_3->unk4 = var_a2->unk4;
                        }
                        var_v0 = var_a2->unk8;
                        var_a2 += 8;
                    } while (var_v0 != 4);
                }
            }
            temp_a0 = temp_s3->unk10;
            if (temp_a0 != NULL) {
                sp44 = var_t3;
                func_8001503C(temp_a0);
            }
            var_a2_2 = &D_8004ABA8;
            var_a3 = 0;
            D_8004ABA0 = sp30;
            do {
                if (D_8004ABA0 < var_a2_2->unk0) {
                    var_a2_2->unk0 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_2 = *temp_v1_4;
                        *temp_v1_4 = temp_a0_2 + 8;
                        temp_a0_2->unk4 = 0x40;
                        temp_a0_2->unk0 = 0xD8380002;
                    }
                }
                if (D_8004ABA0 < var_a2_2->unk4) {
                    var_a2_2->unk4 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_3 = temp_v1_5->unk4;
                        temp_v1_5->unk4 = temp_a0_3 + 8;
                        temp_a0_3->unk4 = 0x40;
                        temp_a0_3->unk0 = 0xD8380002;
                    }
                }
                var_a2_2 += 8;
                var_a3 += 8;
            } while (var_a2_2 != &D_8004ABB8);
            if (temp_s3->unkC == 0) {
                var_s0_4 = temp_s3->unk8;
                if (var_s0_4 != NULL) {
                    do {
                        func_8001503C(var_s0_4);
                        var_s0_4 = var_s0_4->unk8;
                    } while (var_s0_4 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015368.s")
#endif

#ifdef MIPS_TO_C

void func_800156C4(void *arg0) {
    s32 sp2C;
    f32 sp24;
    u8 temp_v0;
    void *temp_a0;
    void *temp_s0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s0;

    temp_v0 = arg0->unk54;
    temp_s0 = arg0->unk50;
    if (!(temp_v0 & 2)) {
        sp24 = D_8004AA94;
        if ((temp_s0 != NULL) && (temp_s0->unk0 != 0) && !(temp_v0 & 1)) {
            temp_v0_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = temp_s0->unk0;
        }
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0, &gDisplayListHeads);
        if ((temp_s0 != NULL) && (temp_s0->unk4 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0, &gDisplayListHeads);
            temp_v0_3 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xDE000000;
            temp_v0_3->unk4 = temp_s0->unk4;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_800156C4(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v0_4 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x40;
            temp_v0_4->unk0 = 0xD8380002;
        }
        D_8004AA94 = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_800156C4(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800156C4.s")
#endif

#ifdef MIPS_TO_C

void func_8001585C(void *arg0) {
    D_8004AA94 = 1.0f;
    func_800156C4(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001585C.s")
#endif

#ifdef MIPS_TO_C

void func_8001588C(void *arg0) {
    s32 sp48;
    s32 *sp44;
    u32 sp40;
    f32 sp34;
    ? *var_a2_2;
    s32 *temp_a2;
    s32 *temp_v0_2;
    s32 *temp_v1_2;
    s32 *var_a2;
    s32 var_a1;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t3;
    void **temp_v1;
    void **temp_v1_3;
    void **temp_v1_4;
    void **temp_v1_5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t9;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_6;
    void *var_a0;
    void *var_s0_3;

    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp34 = D_8004AA94;
        temp_a2 = arg0->unk50;
        sp40 = D_8004ABA0;
        sp44 = temp_a2;
        var_a2 = temp_a2;
        var_t3 = func_80011180(&D_8004ABA0, arg0, temp_a2);
        if ((var_a2 != NULL) && !(arg0->unk54 & 1)) {
            var_a1 = *var_a2;
            if (var_a1 != 4) {
                do {
                    if (var_a2->unk8 != 0) {
                        temp_v1 = &gDisplayListHeads + (var_a1 * 4);
                        if (var_a2->unk4 != 0) {
                            temp_v0 = *temp_v1;
                            *temp_v1 = temp_v0 + 8;
                            temp_v0->unk0 = 0xDE000000;
                            temp_v0->unk4 = var_a2->unk4;
                            var_a1 = var_a2->unk0;
                        }
                        var_s0 = var_a1 * 4;
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t9 = *(&gDisplayListHeads + var_s0);
                                temp_t9->unk0 = var_a0->unk0;
                                temp_t9->unk4 = var_a0->unk4;
                                temp_v1_2 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                *temp_v1_2 += 8;
                                temp_v0_2 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                *temp_v0_2 += 8;
                                var_s0 = var_a2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_3 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp44 = var_a2;
                                sp48 = var_t3;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2, &D_8004ABA8);
                                var_s0_2 = var_a2->unk0;
                            } else {
                                temp_v0_3 = *temp_v1_3;
                                *temp_v1_3 = temp_v0_3 + 8;
                                temp_v0_3->unk4 = var_s4;
                                temp_v0_3->unk0 = 0xDB060038;
                                var_s0_2 = var_a2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_4 = &gDisplayListHeads + var_s0;
                        temp_v0_4 = *temp_v1_4;
                        *temp_v1_4 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDE000000;
                        temp_v0_4->unk4 = var_a2->unk8;
                    }
                    var_a1 = var_a2->unkC;
                    var_a2 += 0xC;
                } while (var_a1 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t3;
            func_8001588C(temp_a0);
        }
        var_a2_2 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp40;
        do {
            if (D_8004ABA0 < var_a2_2->unk0) {
                var_a2_2->unk0 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_5;
                    *temp_v1_5 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_2->unk4) {
                var_a2_2->unk4 = D_8004ABA0;
                if ((var_t3 != 0) && ((temp_v1_6 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_6->unk4;
                    temp_v1_6->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_2 += 8;
            var_a3 += 8;
        } while (var_a2_2 != &D_8004ABB8);
        D_8004AA94 = sp34;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_8001588C(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001588C.s")
#endif

#ifdef MIPS_TO_C

void func_80015BCC(void *arg0) {
    D_8004AA94 = 1.0f;
    func_8001588C(arg0->unk3C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015BCC.s")
#endif

#ifdef MIPS_TO_C

void func_80015BFC(void *arg0) {
    s32 sp2C;
    f32 sp24;
    void *sp20;
    s32 temp_s0;
    u8 temp_v0;
    void *temp_a0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s0;

    temp_v0 = arg0->unk54;
    temp_s0 = arg0->unk50;
    if (!(temp_v0 & 2)) {
        sp24 = D_8004AA94;
        if (temp_s0 != 0) {
            sp20 = *(temp_s0 + (D_8004AD98 * 4));
        }
        if ((temp_s0 != 0) && (sp20->unk0 != 0) && !(temp_v0 & 1)) {
            temp_v0_2 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_2 + 8;
            temp_v0_2->unk0 = 0xDE000000;
            temp_v0_2->unk4 = sp20->unk0;
        }
        sp2C = func_80011180(&gDisplayListHeads, arg0, arg0, &gDisplayListHeads);
        if ((temp_s0 != 0) && (sp20->unk4 != 0) && !(arg0->unk54 & 1)) {
            func_80013300(arg0, &gDisplayListHeads, arg0, &gDisplayListHeads);
            temp_v0_3 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_3 + 8;
            temp_v0_3->unk0 = 0xDE000000;
            temp_v0_3->unk4 = sp20->unk4;
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            func_80015BFC(temp_a0);
        }
        if ((sp2C != 0) && ((arg0->unk14 == 1) || (arg0->unk8 != NULL))) {
            temp_v0_4 = gDisplayListHeads;
            gDisplayListHeads = temp_v0_4 + 8;
            temp_v0_4->unk4 = 0x40;
            temp_v0_4->unk0 = 0xD8380002;
        }
        D_8004AA94 = sp24;
    }
    if (arg0->unkC == 0) {
        var_s0 = arg0->unk8;
        if (var_s0 != NULL) {
            do {
                func_80015BFC(var_s0);
                var_s0 = var_s0->unk8;
            } while (var_s0 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015BFC.s")
#endif

#ifdef MIPS_TO_C

void func_80015DC4(void *arg0) {
    f32 *sp2C;
    s32 sp28;
    void *sp20;
    f32 *temp_v1;
    f32 *var_v1;
    f32 temp_f0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2;
    void *var_a2;
    void *var_s0;

    temp_a2 = arg0->unk3C;
    if (!(temp_a2->unk54 & 2)) {
        temp_v1 = temp_a2->unk50;
        if (temp_v1 != NULL) {
            D_8004AA94 = 1.0f;
            D_8004AD98 = 0;
            sp2C = temp_v1;
            sp20 = temp_a2;
            temp_f0 = func_80014B04(temp_a2, temp_a2);
            var_v1 = temp_v1;
            if (temp_f0 < *var_v1) {
                do {
                    var_v1 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_v1);
            }
            sp2C = var_v1;
            sp20 = temp_a2;
            sp28 = func_80011180(&gDisplayListHeads, temp_a2, temp_a2);
            var_a2 = temp_a2;
            if ((var_v1->unk4 != 0) && !(var_a2->unk54 & 1)) {
                sp2C = var_v1;
                sp20 = var_a2;
                func_80013300(var_a2, &gDisplayListHeads, var_a2);
                temp_a0 = gDisplayListHeads;
                gDisplayListHeads = temp_a0 + 8;
                temp_a0->unk0 = 0xDE000000;
                temp_a0->unk4 = var_v1->unk4;
            }
            temp_a0_2 = var_a2->unk10;
            if (temp_a0_2 != NULL) {
                sp20 = var_a2;
                func_80015BFC(temp_a0_2);
            }
            if ((sp28 != 0) && ((var_a2->unk14 == 1) || (var_a2->unk8 != NULL))) {
                temp_a0_3 = gDisplayListHeads;
                gDisplayListHeads = temp_a0_3 + 8;
                temp_a0_3->unk4 = 0x40;
                temp_a0_3->unk0 = 0xD8380002;
            }
            if (var_a2->unkC == 0) {
                var_s0 = var_a2->unk8;
                if (var_s0 != NULL) {
                    do {
                        func_80015BFC(var_s0);
                        var_s0 = var_s0->unk8;
                    } while (var_s0 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015DC4.s")
#endif

#ifdef MIPS_TO_C

void func_80015F78(void *arg0, s32 *arg2) {
    s32 sp48;
    s32 *sp40;
    u32 sp3C;
    f32 sp30;
    ? *var_a2_3;
    s32 *temp_v0_2;
    s32 *temp_v1_2;
    s32 *var_a2;
    s32 *var_a2_2;
    s32 temp_s0;
    s32 var_a1;
    s32 var_a3;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s4;
    s32 var_t4;
    void **temp_v1;
    void **temp_v1_3;
    void **temp_v1_4;
    void **temp_v1_5;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_t7;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v1_6;
    void *var_a0;
    void *var_s0_3;

    var_a2 = arg2;
    var_s4 = 0;
    if (!(arg0->unk54 & 2)) {
        sp30 = D_8004AA94;
        temp_s0 = arg0->unk50;
        if (temp_s0 != 0) {
            var_a2 = *(temp_s0 + (D_8004AD98 * 4));
            sp40 = var_a2;
        }
        sp3C = D_8004ABA0;
        var_a2_2 = sp40;
        var_t4 = func_80011180(&D_8004ABA0, arg0, var_a2);
        if ((temp_s0 != 0) && (var_a2_2 != NULL) && !(arg0->unk54 & 1)) {
            var_a1 = *var_a2_2;
            if (var_a1 != 4) {
                do {
                    if (var_a2_2->unk8 != 0) {
                        temp_v1 = &gDisplayListHeads + (var_a1 * 4);
                        if (var_a2_2->unk4 != 0) {
                            temp_v0 = *temp_v1;
                            *temp_v1 = temp_v0 + 8;
                            temp_v0->unk0 = 0xDE000000;
                            temp_v0->unk4 = var_a2_2->unk4;
                            var_a1 = var_a2_2->unk0;
                        }
                        var_s0 = var_a1 * 4;
                        var_a0 = *(&D_8004ABA8 + var_s0);
                        if (D_8004ABA0 != var_a0) {
                            do {
                                temp_t7 = *(&gDisplayListHeads + var_s0);
                                temp_t7->unk0 = var_a0->unk0;
                                temp_t7->unk4 = var_a0->unk4;
                                temp_v1_2 = &gDisplayListHeads + (var_a2_2->unk0 * 4);
                                *temp_v1_2 += 8;
                                temp_v0_2 = &D_8004ABA8 + (var_a2_2->unk0 * 4);
                                *temp_v0_2 += 8;
                                var_s0 = var_a2_2->unk0 * 4;
                                var_a0 = *(&D_8004ABA8 + var_s0);
                            } while (D_8004ABA0 != var_a0);
                        }
                        if (arg0->unk80 != 0) {
                            temp_v1_3 = &gDisplayListHeads + var_s0;
                            if (var_s4 == 0) {
                                var_s4 = D_8004A404;
                                sp40 = var_a2_2;
                                sp48 = var_t4;
                                func_80013300(arg0, &gDisplayListHeads + var_s0, var_a2_2, &D_8004ABA8);
                                var_s0_2 = var_a2_2->unk0;
                            } else {
                                temp_v0_3 = *temp_v1_3;
                                *temp_v1_3 = temp_v0_3 + 8;
                                temp_v0_3->unk4 = var_s4;
                                temp_v0_3->unk0 = 0xDB060038;
                                var_s0_2 = var_a2_2->unk0;
                            }
                            var_s0 = var_s0_2 * 4;
                        }
                        temp_v1_4 = &gDisplayListHeads + var_s0;
                        temp_v0_4 = *temp_v1_4;
                        *temp_v1_4 = temp_v0_4 + 8;
                        temp_v0_4->unk0 = 0xDE000000;
                        temp_v0_4->unk4 = var_a2_2->unk8;
                    }
                    var_a1 = var_a2_2->unkC;
                    var_a2_2 += 0xC;
                } while (var_a1 != 4);
            }
        }
        temp_a0 = arg0->unk10;
        if (temp_a0 != NULL) {
            sp48 = var_t4;
            func_80015F78(temp_a0);
        }
        var_a2_3 = &D_8004ABA8;
        var_a3 = 0;
        D_8004ABA0 = sp3C;
        do {
            if (D_8004ABA0 < var_a2_3->unk0) {
                var_a2_3->unk0 = D_8004ABA0;
                if ((var_t4 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_2 = *temp_v1_5;
                    *temp_v1_5 = temp_a0_2 + 8;
                    temp_a0_2->unk4 = 0x40;
                    temp_a0_2->unk0 = 0xD8380002;
                }
            }
            if (D_8004ABA0 < var_a2_3->unk4) {
                var_a2_3->unk4 = D_8004ABA0;
                if ((var_t4 != 0) && ((temp_v1_6 = &gDisplayListHeads + var_a3, (arg0->unk14 == 1)) || (arg0->unk8 != NULL))) {
                    temp_a0_3 = temp_v1_6->unk4;
                    temp_v1_6->unk4 = temp_a0_3 + 8;
                    temp_a0_3->unk4 = 0x40;
                    temp_a0_3->unk0 = 0xD8380002;
                }
            }
            var_a2_3 += 8;
            var_a3 += 8;
        } while (var_a2_3 != &D_8004ABB8);
        D_8004AA94 = sp30;
    }
    if (arg0->unkC == 0) {
        var_s0_3 = arg0->unk8;
        if (var_s0_3 != NULL) {
            do {
                func_80015F78(var_s0_3);
                var_s0_3 = var_s0_3->unk8;
            } while (var_s0_3 != NULL);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80015F78.s")
#endif

#ifdef MIPS_TO_C

void func_800162D8(void *arg0) {
    s32 sp44;
    s32 *sp34;
    u32 sp30;
    ? *var_a2_2;
    f32 *var_s0;
    f32 temp_f0;
    s32 *temp_a2;
    s32 *temp_v0;
    s32 *temp_v1;
    s32 *var_a2;
    s32 var_a3;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s4;
    s32 var_t3;
    s32 var_v0;
    void **temp_v1_2;
    void **temp_v1_3;
    void **temp_v1_4;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_s3;
    void *temp_t7;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v1_5;
    void *var_a0;
    void *var_s0_4;

    temp_s3 = arg0->unk3C;
    var_s4 = 0;
    if (!(temp_s3->unk54 & 2)) {
        var_s0 = temp_s3->unk50;
        if (var_s0 != NULL) {
            D_8004AA94 = 1.0f;
            D_8004AD98 = 0;
            temp_f0 = func_80014B04(temp_s3);
            if (temp_f0 < *var_s0) {
                do {
                    var_s0 += 8;
                    D_8004AD98 += 1;
                } while (temp_f0 < *var_s0);
            }
            temp_a2 = var_s0->unk4;
            sp34 = temp_a2;
            sp30 = D_8004ABA0;
            var_a2 = temp_a2;
            var_t3 = func_80011180(&D_8004ABA0, temp_s3, temp_a2);
            if ((var_a2 != NULL) && !(temp_s3->unk54 & 1)) {
                var_v0 = *var_a2;
                if (var_v0 != 4) {
                    do {
                        var_s0_2 = var_v0 * 4;
                        if (var_a2->unk4 != 0) {
                            var_a0 = *(&D_8004ABA8 + var_s0_2);
                            if (D_8004ABA0 != var_a0) {
                                do {
                                    temp_t7 = *(&gDisplayListHeads + var_s0_2);
                                    temp_t7->unk0 = var_a0->unk0;
                                    temp_t7->unk4 = var_a0->unk4;
                                    temp_v1 = &gDisplayListHeads + (var_a2->unk0 * 4);
                                    *temp_v1 += 8;
                                    temp_v0 = &D_8004ABA8 + (var_a2->unk0 * 4);
                                    *temp_v0 += 8;
                                    var_s0_2 = var_a2->unk0 * 4;
                                    var_a0 = *(&D_8004ABA8 + var_s0_2);
                                } while (D_8004ABA0 != var_a0);
                            }
                            if (temp_s3->unk80 != 0) {
                                temp_v1_2 = &gDisplayListHeads + var_s0_2;
                                if (var_s4 == 0) {
                                    var_s4 = D_8004A404;
                                    sp34 = var_a2;
                                    sp44 = var_t3;
                                    func_80013300(temp_s3, &gDisplayListHeads + var_s0_2, var_a2, &D_8004ABA8);
                                    var_s0_3 = var_a2->unk0;
                                } else {
                                    temp_v0_2 = *temp_v1_2;
                                    *temp_v1_2 = temp_v0_2 + 8;
                                    temp_v0_2->unk4 = var_s4;
                                    temp_v0_2->unk0 = 0xDB060038;
                                    var_s0_3 = var_a2->unk0;
                                }
                                var_s0_2 = var_s0_3 * 4;
                            }
                            temp_v1_3 = &gDisplayListHeads + var_s0_2;
                            temp_v0_3 = *temp_v1_3;
                            *temp_v1_3 = temp_v0_3 + 8;
                            temp_v0_3->unk0 = 0xDE000000;
                            temp_v0_3->unk4 = var_a2->unk4;
                        }
                        var_v0 = var_a2->unk8;
                        var_a2 += 8;
                    } while (var_v0 != 4);
                }
            }
            temp_a0 = temp_s3->unk10;
            if (temp_a0 != NULL) {
                sp44 = var_t3;
                func_80015F78(temp_a0);
            }
            var_a2_2 = &D_8004ABA8;
            var_a3 = 0;
            D_8004ABA0 = sp30;
            do {
                if (D_8004ABA0 < var_a2_2->unk0) {
                    var_a2_2->unk0 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_4 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_2 = *temp_v1_4;
                        *temp_v1_4 = temp_a0_2 + 8;
                        temp_a0_2->unk4 = 0x40;
                        temp_a0_2->unk0 = 0xD8380002;
                    }
                }
                if (D_8004ABA0 < var_a2_2->unk4) {
                    var_a2_2->unk4 = D_8004ABA0;
                    if ((var_t3 != 0) && ((temp_v1_5 = &gDisplayListHeads + var_a3, (temp_s3->unk14 == 1)) || (temp_s3->unk8 != NULL))) {
                        temp_a0_3 = temp_v1_5->unk4;
                        temp_v1_5->unk4 = temp_a0_3 + 8;
                        temp_a0_3->unk4 = 0x40;
                        temp_a0_3->unk0 = 0xD8380002;
                    }
                }
                var_a2_2 += 8;
                var_a3 += 8;
            } while (var_a2_2 != &D_8004ABB8);
            if (temp_s3->unkC == 0) {
                var_s0_4 = temp_s3->unk8;
                if (var_s0_4 != NULL) {
                    do {
                        func_80015F78(var_s0_4);
                        var_s0_4 = var_s0_4->unk8;
                    } while (var_s0_4 != NULL);
                }
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800162D8.s")
#endif

#ifdef MIPS_TO_C
void func_80016634(s32 arg0) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016634.s")
#endif

#ifdef MIPS_TO_C

void func_8001663C(void **arg0, void *arg1, s32 arg2) {
    s32 sp18;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 var_a3;
    s32 var_ra;
    s32 var_t4;
    s32 var_t5;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *var_v1;
    void *var_v1_2;

    var_v1 = *arg0;
    if (((arg2 == 0) || (arg2 == 1)) && (arg1->unk80 & 0x20)) {
        gtlLoadUcode(arg0, D_8004A446);
        D_8004A448 = 1;
        var_v1 = *arg0;
    }
    var_v1->unk0 = 0xDC080008;
    temp_v0 = arg1 + 8;
    var_v1->unk4 = temp_v0;
    temp_v1 = var_v1 + 8;
    temp_a1 = temp_v0->unk8 / 4;
    temp_a2 = temp_v0->unk0 / 4;
    var_t4 = temp_a1 - temp_a2;
    temp_a3 = temp_v0->unkA / 4;
    temp_t0 = temp_v0->unk2 / 4;
    temp_lo = gCurrScreenWidth / 320;
    var_t5 = temp_a3 - temp_t0;
    temp_lo_2 = temp_lo * D_8003DF18;
    var_ra = temp_a2 + temp_a1;
    sp18 = temp_t0 + temp_a3;
    if (var_t4 < temp_lo_2) {
        var_t4 = temp_lo_2;
    }
    temp_lo_3 = gCurrScreenHeight / 240;
    var_a3 = sp18;
    temp_lo_4 = temp_lo_3 * D_8003DF10;
    if (var_t5 < temp_lo_4) {
        var_t5 = temp_lo_4;
    }
    temp_a1_2 = gCurrScreenWidth - (temp_lo * D_8003DF1C);
    if (temp_a1_2 < var_ra) {
        var_ra = temp_a1_2;
    }
    temp_a1_3 = gCurrScreenHeight - (temp_lo_3 * D_8003DF14);
    if (temp_a1_3 < var_a3) {
        var_a3 = temp_a1_3;
    }
    temp_v1_2 = temp_v1 + 8;
    temp_v1_3 = temp_v1_2 + 8;
    temp_v1_4 = temp_v1_3 + 8;
    temp_v1_5 = temp_v1_4 + 8;
    temp_v1->unk0 = (((var_t4 * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_t5 * 4.0f) & 0xFFF);
    temp_v1->unk4 = (((var_ra * 4.0f) & 0xFFF) << 0xC) | ((var_a3 * 4.0f) & 0xFFF);
    temp_v1_2->unk0 = 0xE7000000;
    temp_v1_2->unk4 = 0;
    temp_v1_3->unk4 = 0x0F000000;
    temp_v1_3->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((gCurrScreenWidth - 1) & 0xFFF);
    temp_v1_4->unk0 = 0xE3000A01;
    temp_v1_4->unk4 = 0;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_5->unk4 = 0x552078;
        var_v1_2 = temp_v1_5 + 8;
        temp_v1_5->unk0 = 0xE200001C;
    } else {
        temp_v1_5->unk0 = 0xE200001C;
        temp_v1_5->unk4 = 0x5049D8;
        var_v1_2 = temp_v1_5 + 8;
    }
    *arg0 = var_v1_2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001663C.s")
#endif

#ifdef MIPS_TO_C

void func_80016940(void **arg0, void *arg1, s32 arg2) {
    void *sp84;
    void *sp3C;
    s32 sp24;
    s32 sp20;
    s32 sp1C;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a3;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_t4;
    void *temp_a1_4;
    void *temp_a2_2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    void *var_v1;
    void *var_v1_2;
    void *var_v1_3;
    void *var_v1_4;

    var_v1 = *arg0;
    if (((arg2 == 0) || (arg2 == 1)) && (arg1->unk80 & 0x20)) {
        gtlLoadUcode(arg0, D_8004A446);
        D_8004A448 = 1;
        var_v1 = *arg0;
    }
    var_v1->unk0 = 0xDC080008;
    temp_v0 = arg1 + 8;
    var_v1->unk4 = temp_v0;
    temp_v1 = var_v1 + 8;
    temp_a1 = temp_v0->unk8 / 4;
    temp_a2 = temp_v0->unk0 / 4;
    var_t3 = temp_a1 - temp_a2;
    var_a3 = temp_v0->unkA / 4;
    temp_t0 = temp_v0->unk2 / 4;
    temp_lo = gCurrScreenWidth / 320;
    var_t4 = var_a3 - temp_t0;
    var_t1 = temp_a2 + temp_a1;
    temp_lo_2 = temp_lo * D_8003DF18;
    var_t2 = temp_t0 + var_a3;
    sp1C = temp_lo_2;
    if (var_t3 < temp_lo_2) {
        var_t3 = temp_lo_2;
    }
    temp_lo_3 = gCurrScreenHeight / 240;
    temp_lo_4 = temp_lo_3 * D_8003DF10;
    if (var_t4 < temp_lo_4) {
        var_t4 = temp_lo_4;
    }
    temp_a1_2 = gCurrScreenWidth - (temp_lo * D_8003DF1C);
    if (temp_a1_2 < var_t1) {
        var_t1 = temp_a1_2;
    }
    temp_a1_3 = gCurrScreenHeight - (temp_lo_3 * D_8003DF14);
    if (temp_a1_3 < var_t2) {
        var_t2 = temp_a1_3;
    }
    var_v1_2 = temp_v1 + 8;
    temp_t1 = var_t1 - 1;
    temp_v1->unk0 = (((var_t3 * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_t4 * 4.0f) & 0xFFF);
    temp_t2 = var_t2 - 1;
    temp_v1->unk4 = (((var_t1 * 4.0f) & 0xFFF) << 0xC) | ((var_t2 * 4.0f) & 0xFFF);
    if (arg1->unk80 & 1) {
        temp_v1_2 = var_v1_2 + 8;
        var_v1_2->unk0 = 0xE7000000;
        var_v1_2->unk4 = 0;
        temp_v1_3 = temp_v1_2 + 8;
        temp_v1_2->unk4 = 0x300000;
        temp_v1_2->unk0 = 0xE3000A01;
        temp_v1_3->unk0 = 0xE200001C;
        temp_v1_3->unk4 = 0;
        temp_v1_4 = temp_v1_3 + 8;
        temp_v1_4->unk0 = ((gCurrScreenWidth - 1) & 0xFFF) | 0xFF100000;
        temp_v1_5 = temp_v1_4 + 8;
        temp_v1_4->unk4 = gZBuffer;
        var_a3 = temp_v1_5;
        var_a3->unk4 = 0xFFFCFFFC;
        var_a3->unk0 = 0xF7000000;
        temp_v1_6 = temp_v1_5 + 8;
        temp_v1_6->unk0 = ((temp_t1 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2 & 0x3FF) * 4);
        temp_v1_6->unk4 = ((var_t3 & 0x3FF) << 0xE) | ((var_t4 & 0x3FF) * 4);
        var_v1_2 = temp_v1_6 + 8;
    }
    var_v1_2->unk0 = 0xE7000000;
    var_v1_2->unk4 = 0;
    temp_v1_7 = var_v1_2 + 8;
    temp_v1_7->unk4 = 0x0F000000;
    temp_v1_7->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((gCurrScreenWidth - 1) & 0xFFF);
    var_v1_3 = temp_v1_7 + 8;
    if (arg1->unk80 & 2) {
        var_v1_3->unk0 = 0xE3000A01;
        temp_a1_4 = var_v1_3 + 8;
        var_v1_3->unk4 = 0x300000;
        temp_a1_4->unk4 = 0;
        temp_a1_4->unk0 = 0xE200001C;
        temp_a2_2 = temp_a1_4 + 8;
        temp_a2_2->unk0 = 0xF7000000;
        sp24 = ((temp_t1 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t2 & 0x3FF) * 4);
        temp_v1_8 = temp_a2_2 + 8;
        sp84 = temp_v1_8;
        sp20 = ((var_t3 & 0x3FF) << 0xE) | ((var_t4 & 0x3FF) * 4);
        sp3C = temp_a2_2;
        temp_a2_2->unk4 = viPackRGBA(arg1->unk84, temp_a1_4, temp_a2_2, var_a3);
        temp_v1_8->unk0 = sp24;
        var_v1_3 = temp_v1_8 + 8;
        temp_v1_8->unk4 = sp20;
    }
    temp_v1_9 = var_v1_3 + 8;
    var_v1_3->unk0 = 0xE7000000;
    var_v1_3->unk4 = 0;
    temp_v1_9->unk0 = 0xE3000A01;
    temp_v1_9->unk4 = 0;
    temp_v1_10 = temp_v1_9 + 8;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_10->unk4 = 0x552078;
        var_v1_4 = temp_v1_10 + 8;
        temp_v1_10->unk0 = 0xE200001C;
    } else {
        temp_v1_10->unk4 = 0x5049D8;
        temp_v1_10->unk0 = 0xE200001C;
        var_v1_4 = temp_v1_10 + 8;
    }
    *arg0 = var_v1_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016940.s")
#endif

#ifdef MIPS_TO_C

void func_80016DE8(void **arg0, void *arg1, s32 arg2, void *arg3, s32 arg4, s32 arg5, s32 arg6) {
    void *sp8C;
    void *sp40;
    s32 sp28;
    s32 sp24;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t4;
    s32 temp_t5;
    s32 var_ra;
    s32 var_s1;
    s32 var_t4;
    s32 var_t5;
    void *temp_a1;
    void *temp_a2;
    void *temp_v1;
    void *temp_v1_10;
    void *temp_v1_11;
    void *temp_v1_12;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    void *temp_v1_6;
    void *temp_v1_7;
    void *temp_v1_8;
    void *temp_v1_9;
    void *var_a3;
    void *var_v1;
    void *var_v1_2;

    var_a3 = arg3;
    temp_v1 = *arg0;
    temp_v1->unk4 = arg1 + 8;
    temp_v1->unk0 = 0xDC080008;
    temp_v1_2 = temp_v1 + 8;
    temp_t0 = arg1->unk10 / 4;
    temp_t1 = arg1->unk8 / 4;
    var_ra = temp_t0 - temp_t1;
    temp_t2 = arg1->unk12 / 4;
    temp_t3 = arg1->unkA / 4;
    var_s1 = temp_t2 - temp_t3;
    var_t4 = temp_t1 + temp_t0;
    var_t5 = temp_t3 + temp_t2;
    if (var_ra < 0) {
        var_ra = 0;
    }
    if (var_s1 < 0) {
        var_s1 = 0;
    }
    if (arg4 < var_t4) {
        var_t4 = arg4;
    }
    if (arg5 < var_t5) {
        var_t5 = arg5;
    }
    var_v1 = temp_v1_2 + 8;
    temp_t4 = var_t4 - 1;
    temp_v1_2->unk0 = (((var_ra * 4.0f) & 0xFFF) << 0xC) | 0xED000000 | ((var_s1 * 4.0f) & 0xFFF);
    temp_t5 = var_t5 - 1;
    temp_v1_2->unk4 = (((var_t4 * 4.0f) & 0xFFF) << 0xC) | ((var_t5 * 4.0f) & 0xFFF);
    if (arg1->unk80 & 1) {
        temp_v1_3 = var_v1 + 8;
        var_v1->unk0 = 0xE7000000;
        var_v1->unk4 = 0;
        temp_v1_4 = temp_v1_3 + 8;
        temp_v1_3->unk4 = 0x300000;
        temp_v1_3->unk0 = 0xE3000A01;
        temp_v1_5 = temp_v1_4 + 8;
        temp_v1_4->unk0 = 0xE200001C;
        temp_v1_4->unk4 = 0;
        temp_v1_5->unk0 = ((arg4 - 1) & 0xFFF) | 0xFF100000;
        temp_v1_6 = temp_v1_5 + 8;
        temp_v1_5->unk4 = arg6;
        var_a3 = temp_v1_6;
        var_a3->unk4 = 0xFFFCFFFC;
        var_a3->unk0 = 0xF7000000;
        temp_v1_7 = temp_v1_6 + 8;
        temp_v1_7->unk0 = ((temp_t4 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t5 & 0x3FF) * 4);
        temp_v1_7->unk4 = ((var_ra & 0x3FF) << 0xE) | ((var_s1 & 0x3FF) * 4);
        var_v1 = temp_v1_7 + 8;
    }
    var_v1->unk0 = 0xE7000000;
    var_v1->unk4 = 0;
    temp_v1_8 = var_v1 + 8;
    temp_v1_8->unk0 = ((viCFBFmt & 3) << 0x13) | 0xFF000000 | ((arg4 - 1) & 0xFFF);
    temp_v1_9 = temp_v1_8 + 8;
    temp_v1_8->unk4 = arg3;
    temp_v1_9->unk0 = 0xFE000000;
    var_v1_2 = temp_v1_9 + 8;
    temp_v1_9->unk4 = arg6;
    temp_a1 = var_v1_2 + 8;
    if (arg1->unk80 & 2) {
        var_v1_2->unk4 = 0x300000;
        var_v1_2->unk0 = 0xE3000A01;
        temp_a1->unk0 = 0xE200001C;
        temp_a1->unk4 = 0;
        temp_a2 = temp_a1 + 8;
        temp_a2->unk0 = 0xF7000000;
        sp28 = ((temp_t4 & 0x3FF) << 0xE) | 0xF6000000 | ((temp_t5 & 0x3FF) * 4);
        temp_v1_10 = temp_a2 + 8;
        sp8C = temp_v1_10;
        sp24 = ((var_ra & 0x3FF) << 0xE) | ((var_s1 & 0x3FF) * 4);
        sp40 = temp_a2;
        temp_a2->unk4 = viPackRGBA(arg1->unk84, temp_a1, temp_a2, var_a3);
        var_v1_2 = temp_v1_10 + 8;
        temp_v1_10->unk0 = sp28;
        temp_v1_10->unk4 = sp24;
    }
    temp_v1_11 = var_v1_2 + 8;
    var_v1_2->unk0 = 0xE7000000;
    var_v1_2->unk4 = 0;
    temp_v1_11->unk0 = 0xE3000A01;
    temp_v1_11->unk4 = 0;
    temp_v1_12 = temp_v1_11 + 8;
    if ((arg2 == 0) || (arg2 == 2)) {
        temp_v1_12->unk0 = 0xE200001C;
        temp_v1_12->unk4 = 0x552078;
    } else {
        temp_v1_12->unk0 = 0xE200001C;
        temp_v1_12->unk4 = 0x5049D8;
    }
    *arg0 = temp_v1_12 + 8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80016DE8.s")
#endif

#ifdef MIPS_TO_C

void func_800171E0(void **arg0, void *arg1) {
    void *spDC;
    s32 spC8;
    LookAt *spC4;
    f32 sp98;
    f32 sp94;
    f32 sp8C;
    f32 sp88;
    ? (*temp_a3)(Mtx *, void *, void **, ?);
    ? (*temp_a3_2)(Mtx *, void *, void **, ?);
    LookAt *temp_v0;
    LookAt *temp_v0_2;
    LookAt *temp_v0_3;
    LookAt *var_s4;
    Mtx *var_s2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_a2;
    s32 var_fp;
    s32 var_s3;
    u8 temp_v1;
    u8 temp_v1_2;
    void *temp_s1;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;
    void *temp_t4;
    void *temp_t4_2;
    void *temp_t4_3;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *var_s6;

    spC8 = 0;
    spDC = *arg0;
    var_a2 = arg1->unk60;
    var_s3 = 0;
    if (var_a2 != 0) {
        var_fp = 0;
        if (var_a2 > 0) {
            var_s6 = arg1;
            var_s4 = spC4;
            do {
                temp_s1 = var_s6->unk64;
                if (temp_s1 != NULL) {
                    var_s2 = temp_s1 + 8;
                    if (temp_s1->unk5 != 2) {
                        if (gtlCurrentContextID > 0) {
                            var_s2 = gDynamicBuffer1.unkC;
                            gDynamicBuffer1.unkC = var_s2 + 0x40;
                        }
                        temp_v1 = temp_s1->unk4;
                        switch (temp_v1) {          /* switch 4; irregular */
                                break;
                            case 3:                 /* switch 4 */
                                func_8001B008(D_8004AA98, arg1 + 0x1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30);
                                HS64_MtxF2L(D_8004AA98, var_s2);
                                D_8004AA90 = var_s2;
                                break;
                            case 4:                 /* switch 4 */
                                func_8001B28C(D_8004AA98, arg1 + 0x1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30);
                                HS64_MtxF2L(D_8004AA98, var_s2);
                                D_8004AA90 = var_s2;
                                break;
                            case 5:                 /* switch 4 */
                                guOrtho(var_s2, arg1->unk1C, arg1->unk20, arg1->unk24, arg1->unk28, arg1->unk2C, arg1->unk30, arg1->unk34);
                                D_8004AA90 = var_s2;
                                break;
                            case 6:                 /* switch 4 */
                            case 7:                 /* switch 4 */
                                guLookAt(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, arg1->unk58, arg1->unk5C);
                                var_s3 = 2;
                                if (arg1->unk5C < arg1->unk58) {
                                    var_s3 = 1;
                                }
                                break;
                            case 8:                 /* switch 4 */
                            case 9:                 /* switch 4 */
                                var_s3 = 1;
                                func_8001A488(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 1.0f, 0.0f);
                                break;
                            case 10:                /* switch 4 */
                            case 11:                /* switch 4 */
                                var_s3 = 2;
                                func_8001A488(var_s2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 0.0f, 1.0f);
                                break;
                            case 12:                /* switch 4 */
                            case 13:                /* switch 4 */
                                temp_v0 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0;
                                guLookAtReflect(var_s2, temp_v0, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, arg1->unk58, arg1->unk5C);
                                var_s3 = 2;
                                if (arg1->unk5C < arg1->unk58) {
                                    var_s3 = 1;
                                }
                                break;
                            case 14:                /* switch 4 */
                            case 15:                /* switch 4 */
                                var_s3 = 1;
                                temp_v0_2 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0_2;
                                func_8001AD90(var_s2, temp_v0_2, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 1.0f, 0.0f);
                                break;
                            case 16:                /* switch 4 */
                            case 17:                /* switch 4 */
                                var_s3 = 2;
                                temp_v0_3 = mlAlloc(&gDynamicBuffer1, 0x20, 8);
                                var_s4 = temp_v0_3;
                                func_8001AD90(var_s2, temp_v0_3, arg1->unk3C, arg1->unk40, arg1->unk44, arg1->unk48, arg1->unk4C, arg1->unk50, arg1->unk54, 0.0f, 0.0f, 1.0f);
                                break;
                            default:                /* switch 4 */
                                if (D_8004AB9C != 0) {
                                    temp_a3 = (D_8004AB9C + (temp_v1 * 8))->unk-218;
                                    if (temp_a3 != NULL) {
                                        temp_a3(var_s2, arg1, &spDC, temp_a3);
                                    }
                                }
                                break;
                        }
                        if ((temp_s1->unk5 == 1) && ((temp_s1 + 8) == var_s2)) {
                            temp_s1->unk5 = 2;
                        }
                    }
                    temp_v1_2 = temp_s1->unk4;
                    switch (temp_v1_2) {            /* switch 5; irregular */
                            break;
                        case 3:                     /* switch 5 */
                        case 4:                     /* switch 5 */
                            temp_t7 = spDC;
                            spDC = temp_t7 + 8;
                            temp_t7->unk4 = var_s2;
                            temp_t7->unk0 = 0xDA380007;
                            temp_t0 = spDC;
                            spDC = temp_t0 + 8;
                            temp_t0->unk0 = 0xDB0E0000;
                            temp_t0->unk4 = (bitwise u16) arg1->unk1C;
                            break;
                        case 5:                     /* switch 5 */
                            temp_t4 = spDC;
                            spDC = temp_t4 + 8;
                            temp_t4->unk4 = var_s2;
                            temp_t4->unk0 = 0xDA380007;
                            break;
                        case 12:                    /* switch 5 */
                        case 14:                    /* switch 5 */
                        case 16:                    /* switch 5 */
                            temp_t7_2 = spDC;
                            spDC = temp_t7_2 + 8;
                            temp_t7_2->unk4 = var_s4;
                            temp_t7_2->unk0 = 0xDC08000A;
                            temp_t0_2 = spDC;
                            spDC = temp_t0_2 + 8;
                            temp_t0_2->unk4 = &var_s4->l[1];
                            temp_t0_2->unk0 = 0xDC08030A;
                            /* fallthrough */
                        case 6:                     /* switch 5 */
                        case 8:                     /* switch 5 */
                        case 10:                    /* switch 5 */
                            temp_t4_2 = spDC;
                            spDC = temp_t4_2 + 8;
                            temp_t4_2->unk4 = var_s2;
                            temp_t4_2->unk0 = 0xDA380005;
                            break;
                        case 13:                    /* switch 5 */
                        case 15:                    /* switch 5 */
                        case 17:                    /* switch 5 */
                            temp_t7_3 = spDC;
                            spDC = temp_t7_3 + 8;
                            temp_t7_3->unk4 = var_s4;
                            temp_t7_3->unk0 = 0xDC08000A;
                            temp_t0_3 = spDC;
                            spDC = temp_t0_3 + 8;
                            temp_t0_3->unk4 = &var_s4->l[1];
                            temp_t0_3->unk0 = 0xDC08030A;
                            /* fallthrough */
                        case 7:                     /* switch 5 */
                        case 9:                     /* switch 5 */
                        case 11:                    /* switch 5 */
                            temp_t4_3 = spDC;
                            spDC = temp_t4_3 + 8;
                            temp_t4_3->unk4 = var_s2;
                            temp_t4_3->unk0 = 0xDA380003;
                            break;
                        default:                    /* switch 5 */
                            if (D_8004AB9C != 0) {
                                temp_a3_2 = (D_8004AB9C + (temp_v1_2 * 8))->unk-214;
                                if (temp_a3_2 != NULL) {
                                    temp_a3_2(var_s2, arg1, &spDC, temp_a3_2);
                                }
                            }
                            break;
                    }
                    var_a2 = arg1->unk60;
                }
                var_fp += 1;
                var_s6 += 4;
            } while (var_fp < var_a2);
            spC4 = var_s4;
        }
        switch (D_8004AB98) {                       /* switch 3 */
            case 0:                                 /* switch 3 */
                spC8 = var_s3;
                break;
            case 1:                                 /* switch 3 */
block_58:
                var_s3 = 0;
                break;
            case 2:                                 /* switch 3 */
                spC8 = 1;
                var_s3 = 1;
                break;
            case 3:                                 /* switch 3 */
                var_s3 = 1;
                break;
            case 4:                                 /* switch 3 */
                spC8 = 1;
                goto block_58;
            case 5:                                 /* switch 3 */
                spC8 = 2;
                var_s3 = 2;
                break;
            case 6:                                 /* switch 3 */
                var_s3 = 2;
                break;
            case 7:                                 /* switch 3 */
                spC8 = 2;
                goto block_58;
        }
        switch (var_s3) {                           /* switch 6; irregular */
            case 0:                                 /* switch 6 */
                break;
            default:                                /* switch 6 */
                var_f2 = sp9C;
block_65:
                if (var_f2 < 0.0001f) {
                    HS64_MkScaleMtxF(D_8004AB18, 0, 0, 0);
                } else {
                    guLookAtF(D_8004AB18, 0.0f, sp98, var_f2, 0.0f, sp94, 0.0f, 0.0f, 1.0f, 0.0f);
                    guMtxCatF(D_8004AB18, D_8004AA98, D_8004AB18);
                }
                break;
            case 1:                                 /* switch 6 */
                temp_f0 = arg1->unk50 - arg1->unk44;
                temp_f2 = arg1->unk48 - arg1->unk3C;
                var_f2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
                sp98 = arg1->unk40;
                sp94 = arg1->unk4C;
                goto block_65;
            case 2:                                 /* switch 6 */
                temp_f14 = arg1->unk4C - arg1->unk40;
                temp_f2_2 = arg1->unk48 - arg1->unk3C;
                var_f2 = sqrtf((temp_f14 * temp_f14) + (temp_f2_2 * temp_f2_2));
                sp98 = arg1->unk44;
                sp94 = arg1->unk50;
                goto block_65;
        }
        switch (spC8) {                             /* switch 7; irregular */
            case 0:                                 /* switch 7 */
                break;
            default:                                /* switch 7 */
                var_f2_2 = sp90;
block_74:
                if (var_f2_2 < 0.0001f) {
                    HS64_MkScaleMtxF(D_8004AB58, 0, 0, 0);
                } else {
                    guLookAtF(D_8004AB58, sp8C, 0.0f, var_f2_2, sp88, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
                    guMtxCatF(D_8004AB58, D_8004AA98, D_8004AB58);
                }
                break;
            case 1:                                 /* switch 7 */
                temp_f14_2 = arg1->unk4C - arg1->unk40;
                temp_f0_2 = arg1->unk50 - arg1->unk44;
                var_f2_2 = sqrtf((temp_f14_2 * temp_f14_2) + (temp_f0_2 * temp_f0_2));
                sp8C = arg1->unk3C;
                sp88 = arg1->unk48;
                goto block_74;
            case 2:                                 /* switch 7 */
                temp_f0_3 = arg1->unk50 - arg1->unk44;
                temp_f2_3 = arg1->unk48 - arg1->unk3C;
                var_f2_2 = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_3 * temp_f2_3));
                sp8C = arg1->unk40;
                sp88 = arg1->unk4C;
                goto block_74;
        }
        *arg0 = spDC;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800171E0.s")
#endif

#ifdef MIPS_TO_C

void func_80017B34(s32 arg0) {
    D_8004AB98 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B34.s")
#endif

#ifdef MIPS_TO_C
void func_80017B40(void *arg0) {
    ? (*temp_v0)();

    temp_v0 = arg0->unk88;
    if (temp_v0 != NULL) {
        temp_v0();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B40.s")
#endif

#ifdef MIPS_TO_C

void func_80017B6C(void *arg0, s32 arg1, s32 arg2) {
    void *var_s0;

    var_s0 = *(&omGObjListDlHead + (arg1 * 4));
    if (var_s0 != NULL) {
        do {
            if (!(var_s0->unk44 & 1) && (((arg2 == 0) && (arg0->unk34 & var_s0->unk34)) || ((arg2 == 1) && (var_s0->unk34 == arg0->unk34)))) {
                D_8003DE54 = 4;
                omCurrentDrawObj = var_s0;
                var_s0->unk2C(var_s0);
                D_8003DE54 = 3;
                var_s0->unkE = D_8003DCA8;
            }
            var_s0 = var_s0->unk20;
        } while (var_s0 != NULL);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017B6C.s")
#endif

#ifdef MIPS_TO_C

void func_80017C7C(s32 arg0, s32 arg1) {
    void *sp38;
    void **var_v0;
    void **var_v0_2;
    void **var_v1;
    void **var_v1_2;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3;
    void *temp_t8;
    void *var_t1;

    var_v1 = &gDisplayListHeads;
    var_v0 = &sp38;
    do {
        temp_a0 = *var_v1;
        var_v1 += 4;
        var_v0 += 4;
        var_v1->unk-4 = temp_a0 + 0x10;
        var_v0->unk-4 = temp_a0;
    } while (var_v1 < &gtlPrevDLHeads);
    func_80017B6C(arg0, arg1);
    var_v1_2 = &gDisplayListHeads;
    var_t1 = (arg1 * 0x14) + &D_8004A7F8;
    var_v0_2 = &sp38;
    do {
        temp_a0_2 = *var_v1_2;
        if (temp_a0_2 == (*var_v0_2 + 0x10)) {
            *var_v1_2 = temp_a0_2 - 0x10;
            var_t1->unk4 = NULL;
        } else {
            *var_v1_2 = temp_a0_2 + 8;
            temp_a0_2->unk4 = 0;
            temp_a0_2->unk0 = 0xDF000000;
            temp_a3 = *var_v0_2;
            temp_a3->unk0 = 0xDE000000;
            temp_a3->unk4 = *var_v0_2 + 0x10;
            temp_t8 = *var_v0_2 + 8;
            *var_v0_2 = temp_t8;
            *var_v0_2 = temp_t8 + 8;
            temp_t8->unk0 = 0xDE010000;
            temp_t8->unk4 = *var_v1_2;
            var_t1->unk4 = *var_v0_2;
        }
        var_v1_2 += 4;
        var_v0_2 += 4;
        var_t1 += 4;
    } while (var_v1_2 != &gtlPrevDLHeads);
    *(&D_8004A7F8 + (arg1 * 0x14)) = D_8003DCA8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017C7C.s")
#endif

#ifdef MIPS_TO_C

void func_80017DB0(s32 arg0) {
    void *temp_t1;
    void *temp_t3;
    void *temp_t7;
    void *temp_t9;
    void *temp_v1;

    temp_v1 = (arg0 * 0x14) + &D_8004A7F8;
    if (temp_v1->unk4 != 0) {
        temp_t9 = gDisplayListHeads;
        gDisplayListHeads = temp_t9 + 8;
        temp_t9->unk0 = 0xDE000000;
        temp_t9->unk4 = temp_v1->unk4;
    }
    if (temp_v1->unk8 != 0) {
        temp_t3 = D_8004A3D4;
        D_8004A3D4 = temp_t3 + 8;
        temp_t3->unk0 = 0xDE000000;
        temp_t3->unk4 = temp_v1->unk8;
    }
    if (temp_v1->unkC != 0) {
        temp_t7 = D_8004A3D8;
        D_8004A3D8 = temp_t7 + 8;
        temp_t7->unk0 = 0xDE000000;
        temp_t7->unk4 = temp_v1->unkC;
    }
    if (temp_v1->unk10 != 0) {
        temp_t1 = D_8004A3DC;
        D_8004A3DC = temp_t1 + 8;
        temp_t1->unk0 = 0xDE000000;
        temp_t1->unk4 = temp_v1->unk10;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017DB0.s")
#endif

#ifdef MIPS_TO_C

void func_80017E84(void *arg0, ? arg1) {
    s32 var_s0;
    u32 var_s1;
    u32 var_s2;

    var_s1 = arg0->unk30;
    var_s0 = 0;
    var_s2 = arg0->unk38;
    if (var_s1 != 0) {
        do {
            if (var_s1 & 1) {
                if (var_s2 & 1) {
                    if (D_8003DCA8.unk3 == *(&D_8004A7F8 + (var_s0 * 0x14))) {
                        func_80017DB0(var_s0, var_s0);
                    } else {
                        func_80017C7C(arg0, var_s0, arg1);
                    }
                } else {
                    func_80017B6C(arg0, var_s0, arg1);
                }
            }
            var_s1 = var_s1 >> 1;
            var_s2 = var_s2 >> 1;
            var_s0 += 1;
        } while (var_s1 != 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017E84.s")
#endif

#ifdef MIPS_TO_C

void func_80017F78(void *arg0) {
    s32 var_v0;

    var_v0 = arg0->unk80;
    if (var_v0 & 4) {
        gtlMergeDisps();
        var_v0 = arg0->unk80;
    }
    if (var_v0 & 0x10) {
        gtlProcessDisps();
        gtlReset();
        var_v0 = arg0->unk80;
    }
    if (var_v0 & 0x40) {
        gtlProcessDisps();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017F78.s")
#endif

#ifdef MIPS_TO_C

void func_80017FEC(void *arg0, s32 arg1, s32 arg2) {
    ? var_a1;
    void *temp_s0;

    temp_s0 = arg0->unk3C;
    func_80016940(arg1, temp_s0);
    func_800171E0(arg1, temp_s0);
    func_80017B40(temp_s0, arg2);
    var_a1 = 0;
    if (temp_s0->unk80 & 8) {
        var_a1 = 1;
    }
    func_80017E84(arg0, var_a1);
    func_80017F78(temp_s0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80017FEC.s")
#endif

#ifdef MIPS_TO_C

void func_8001806C(void) {
    func_80017FEC(&gDisplayListHeads, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001806C.s")
#endif

#ifdef MIPS_TO_C

void func_80018094(void) {
    func_80017FEC(&D_8004A3D4, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80018094.s")
#endif

#ifdef MIPS_TO_C

void func_800180BC(void) {
    func_80017FEC(&D_8004A3D8, 2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800180BC.s")
#endif

#ifdef MIPS_TO_C

void func_800180E4(void) {
    func_80017FEC(&D_8004A3DC, 3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800180E4.s")
#endif

#ifdef MIPS_TO_C

void func_8001810C(void) {
    s32 sp1C;

    sp1C = omCurrentCamera->unk3C;
    gtlProcessDisps();
    gtlReset();
    func_80016940(&gDisplayListHeads, sp1C, 0);
    func_800171E0(&gDisplayListHeads, sp1C);
    func_80017B40(sp1C, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_8001810C.s")
#endif

#ifdef MIPS_TO_C

void func_80018170(void *arg0) {
    ? var_a1;
    s32 *var_s2;
    s32 *var_s2_2;
    s32 temp_v1;
    s32 var_s3;
    void **var_s1;
    void **var_s1_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s0_3;
    void *temp_s1;
    void *temp_s5;
    void *temp_t8;
    void *temp_v0;

    temp_s5 = arg0->unk3C;
    func_80016940(&gDisplayListHeads, temp_s5, 0);
    D_8004ADB0 = gDisplayListHeads + 8;
    gDisplayListHeads->unk0 = 0xDE000000;
    gDisplayListHeads->unk4 = gDisplayListHeads + 0x10;
    gDisplayListHeads += 0x10;
    func_800171E0(&gDisplayListHeads, temp_s5);
    temp_s1 = gDisplayListHeads;
    gDisplayListHeads = temp_s1 + 8;
    temp_s1->unk4 = 0;
    temp_s1->unk0 = 0xDF000000;
    D_8004ADB0->unk0 = 0xDE010000;
    D_8004ADB0->unk4 = gDisplayListHeads;
    func_80017B40(temp_s5, 0);
    if (temp_s5->unk80 & 0x20) {
        func_8001663C(&D_8004A3D4, temp_s5, 1);
    }
    var_s2 = &D_8004ADA4;
    var_s1 = &D_8004A3D4;
    do {
        var_s2 += 4;
        temp_t8 = *var_s1 + 8;
        var_s1 += 4;
        var_s1->unk-4 = temp_t8;
        var_s2->unk-4 = temp_t8;
    } while (var_s2 < &D_8004ADB0);
    var_a1 = 0;
    if (temp_s5->unk80 & 8) {
        var_a1 = 1;
    }
    func_80017E84(arg0, var_a1);
    var_s2_2 = &D_8004ADA4;
    var_s1_2 = &D_8004A3D4;
    var_s3 = 1;
    do {
        temp_v1 = *var_s2_2;
        temp_s0 = *var_s1_2;
        temp_v0 = temp_v1 - 8;
        if (temp_v1 == temp_s0) {
            *var_s1_2 = temp_s0 - 8;
        } else {
            *var_s1_2 = temp_s0 + 8;
            temp_v0->unk0 = 0xDE000000;
            temp_v0->unk4 = *var_s1_2;
            if ((var_s3 != 1) || !(temp_s5->unk80 & 0x20)) {
                func_8001663C(var_s1_2, temp_s5, var_s3);
            }
            temp_s0_2 = *var_s1_2;
            *var_s1_2 = temp_s0_2 + 8;
            temp_s0_2->unk0 = 0xDE000000;
            temp_s0_2->unk4 = D_8004ADB0 + 8;
            func_80017B40(temp_s5, var_s3);
            temp_s0_3 = *var_s1_2;
            *var_s1_2 = temp_s0_3 + 8;
            temp_s0_3->unk4 = NULL;
            temp_s0_3->unk0 = 0xDF000000;
            temp_s0->unk0 = 0xDE010000;
            temp_s0->unk4 = *var_s1_2;
        }
        var_s3 += 1;
        var_s1_2 += 4;
        var_s2_2 += 4;
    } while (var_s3 != 4);
    func_80017F78(temp_s5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_80018170.s")
#endif

#ifdef MIPS_TO_C

void func_800183BC(void) {
    s32 *var_s2;
    s32 *var_s2_2;
    s32 temp_s5;
    s32 temp_v1;
    s32 var_s3;
    void **var_s0;
    void **var_s0_2;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s1_3;
    void *temp_s1_4;
    void *temp_t4;
    void *temp_t5;
    void *temp_v0;

    var_s2 = &D_8004ADA4;
    var_s0 = &D_8004A3D4;
    var_s3 = 1;
    temp_s5 = omCurrentCamera->unk3C;
    do {
        temp_s1 = *var_s0;
        temp_v1 = *var_s2;
        if (temp_v1 == temp_s1) {
            *var_s0 = temp_s1 - 8;
        } else {
            *var_s0 = temp_s1 + 8;
            temp_v0 = temp_v1 - 8;
            temp_v0->unk0 = 0xDE000000;
            temp_v0->unk4 = *var_s0;
            func_8001663C(var_s0, temp_s5, var_s3);
            temp_s1_2 = *var_s0;
            *var_s0 = temp_s1_2 + 8;
            temp_s1_2->unk0 = 0xDE000000;
            temp_s1_2->unk4 = D_8004ADB0 + 8;
            func_80017B40(temp_s5, var_s3);
            temp_s1_3 = *var_s0;
            *var_s0 = temp_s1_3 + 8;
            temp_s1_3->unk4 = NULL;
            temp_s1_3->unk0 = 0xDF000000;
            temp_s1->unk0 = 0xDE010000;
            temp_s1->unk4 = *var_s0;
        }
        var_s3 += 1;
        var_s2 += 4;
        var_s0 += 4;
    } while (var_s3 < 4);
    gtlProcessDisps();
    gtlReset();
    func_80016940(&gDisplayListHeads, temp_s5, 0);
    D_8004ADB0 = gDisplayListHeads + 8;
    gDisplayListHeads->unk0 = 0xDE000000;
    gDisplayListHeads->unk4 = gDisplayListHeads + 0x10;
    gDisplayListHeads += 0x10;
    func_800171E0(&gDisplayListHeads, temp_s5);
    temp_s1_4 = gDisplayListHeads;
    gDisplayListHeads = temp_s1_4 + 8;
    temp_s1_4->unk4 = 0;
    temp_s1_4->unk0 = 0xDF000000;
    D_8004ADB0->unk0 = 0xDE010000;
    D_8004ADB0->unk4 = gDisplayListHeads;
    func_80017B40(temp_s5, 0);
    var_s0_2 = &D_8004A3D4;
    var_s2_2 = &D_8004ADA4;
    do {
        temp_t4 = *var_s0_2;
        var_s0_2 += 4;
        var_s2_2 += 4;
        temp_t5 = temp_t4 + 8;
        var_s0_2->unk-4 = temp_t5;
        var_s2_2->unk-4 = temp_t5;
    } while (var_s0_2 != &gtlPrevDLHeads);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/render/func_800183BC.s")
#endif
