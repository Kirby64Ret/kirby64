#include "common.h"

#ifdef MIPS_TO_C

void func_80005350(? *arg0) {
    if (arg0 != NULL) {
        D_8004A48C = arg0;
        return;
    }
    D_8004A48C = &func_80000A44;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005350.s")
#endif

#ifdef MIPS_TO_C

void setup_segment_15(void **arg0) {
    void *temp_v0;

    D_80049308 = *arg0 + 4;
    temp_v0 = *arg0;
    *arg0 = temp_v0 + 8;
    temp_v0->unk4 = 0;
    temp_v0->unk0 = 0xDB06003C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/setup_segment_15.s")
#endif

#ifdef MIPS_TO_C

void func_800053A8(s32 arg0) {
    D_8004A440 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800053A8.s")
#endif

#ifdef MIPS_TO_C

void func_800053B4(s16 arg0, s16 arg1) {
    D_8004A444 = arg0;
    D_8004A446 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800053B4.s")
#endif

#ifdef MIPS_TO_C

void alloc_region(s32 arg0, ? arg1) {
    mlSetup(&gDynamicBuffer2, 0x10000, arg0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/alloc_region.s")
#endif

#ifdef MIPS_TO_C

void alloc_with_alignment(s32 arg0, ? arg1) {
    mlAlloc(&gDynamicBuffer2, arg0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/alloc_with_alignment.s")
#endif

#ifdef MIPS_TO_C

void func_80005430(void) {
    void *temp_v0;

    temp_v0 = (D_8004A450 * 0x10) + &D_8004A468;
    gDynamicBuffer1.id = temp_v0->unk0;
    gDynamicBuffer1.poolStart = temp_v0->unk4;
    gDynamicBuffer1.poolEnd = temp_v0->unk8;
    gDynamicBuffer1.top = temp_v0->unkC;
    mlReset(&gDynamicBuffer1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005430.s")
#endif

#ifdef MIPS_TO_C

void func_8000548C(void *arg0) {
    ? *var_a2;
    ? *var_t0;
    ? *var_t2;
    ? *var_v1;
    s32 *var_a3;
    s32 temp_t6;
    s32 temp_t9;
    void *var_a1;
    void *var_t1;
    void *var_t3;

    var_t2 = &D_8004A3A8;
    var_t0 = &D_8004A3A0;
    var_a2 = &D_8004A398;
    var_v1 = &gDLBuffers;
    var_a1 = arg0;
    var_a3 = arg0 + 8;
    var_t1 = arg0 + 0x10;
    var_t3 = arg0 + 0x18;
    do {
        var_t2 += 0x20;
        var_v1 += 0x20;
        var_v1->unk-20 = var_a1->unk0;
        temp_t6 = var_a1->unk4;
        var_a1 += 0x20;
        var_a2 += 0x20;
        var_v1->unk-1C = temp_t6;
        temp_t9 = *var_a3;
        var_a3 += 0x20;
        var_t0 += 0x20;
        var_a2->unk-20 = temp_t9;
        var_t1 += 0x20;
        var_t3 += 0x20;
        var_a2->unk-1C = var_a3->unk-1C;
        var_t0->unk-20 = var_t1->unk-20;
        var_t0->unk-1C = var_t1->unk-1C;
        var_t2->unk-20 = var_t3->unk-20;
        var_t2->unk-1C = var_t3->unk-1C;
    } while (var_t2 != &D_8004A3E8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_8000548C.s")
#endif

#ifdef MIPS_TO_C

void func_80005530(void) {
    s32 sp28;
    Gfx **sp1C;
    ? *var_a1;
    Gfx **temp_a0;
    Gfx **var_a0;
    Gfx *temp_v0;
    s32 *temp_a3;
    s32 *var_v0;
    s32 *var_v0_2;
    s32 temp_a1;
    s32 temp_v1;
    s32 var_v1;

    temp_a3 = (D_8004A450 << 5) + &gDLBuffers;
    var_a0 = gDisplayListHeads;
    var_a1 = &D_8004A3E0;
    var_v0 = temp_a3;
    do {
        temp_v1 = *var_v0;
        var_a0 += 4;
        var_v0 += 8;
        var_a1 += 4;
        var_a1->unk-4 = temp_v1;
        var_a0->unk-4 = temp_v1;
    } while (var_a0 < &D_8004A3E0);
    var_v1 = 0;
    var_v0_2 = temp_a3;
loop_3:
    if (var_v0_2->unk4 != 0) {
        temp_a1 = var_v1 * 4;
        temp_a0 = &gDisplayListHeads[var_v1];
        sp1C = temp_a0;
        sp28 = temp_a1;
        D_8004A44C = *temp_a0;
        reset_rdp_settings(temp_a0, temp_a1, &D_8004A3E0, temp_a3);
        temp_v0 = *temp_a0;
        *temp_a0 = temp_v0 + 8;
        temp_v0->words.w1 = 0;
        temp_v0->words.w0 = 0xDF000000;
        *(&D_8004A3E0 + temp_a1) = *temp_a0;
    } else {
        var_v1 += 1;
        var_v0_2 += 8;
        if (var_v1 != 4) {
            goto loop_3;
        }
    }
    D_8004A448 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005530.s")
#endif

#ifdef MIPS_TO_C

void func_8000561C(void) {
    Gfx **var_a0;
    Gfx *temp_t0;
    s32 temp_a3;
    s32 temp_t9;
    s32 var_v1;
    void *var_v0;

    var_v0 = (D_8004A450 << 5) + &gDLBuffers;
    var_a0 = gDisplayListHeads;
    var_v1 = 0;
loop_1:
    temp_a3 = var_v0->unk0;
    temp_t9 = var_v0->unk4;
    temp_t0 = *var_a0;
    var_v0 += 8;
    if ((temp_t9 + temp_a3) < temp_t0) {
        fatal_printf("gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n", var_v1, temp_t0 - temp_a3, temp_a3);
loop_3:
        goto loop_3;
    }
    var_v1 += 1;
    var_a0 += 4;
    if (var_v1 == 4) {
        if (gDynamicBuffer1.poolEnd < gDynamicBuffer1.top) {
            fatal_printf("gtl : DynamicBuffer over flow !  %d byte\n", gDynamicBuffer1.top - gDynamicBuffer1.poolStart, temp_a3);
loop_7:
            goto loop_7;
        }
        return;
    }
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_8000561C.s")
#endif

#ifdef MIPS_TO_C

void func_800056DC(s32 arg0, s32 arg1) {
    s32 sp44;
    s32 sp40;
    s32 sp20;
    s32 sp1C;

    sp40 = arg0;
    sp1C = 8;
    sp20 = 0x32;
    sp44 = arg1;
    func_80000980(&sp1C);
    if (&D_80048C80 & 7) {
        fatal_printf("bad addr sc_rdp_output_len = %x\n", &D_80048C80);
loop_2:
        goto loop_2;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800056DC.s")
#endif

#ifdef MIPS_TO_C

void func_80005734(s32 arg0, s32 arg1, s32 arg2) {
    D_8003DCA0 = arg0;
    D_8004A438 = arg1;
    D_8004A43C = arg2;
    if (((arg0 == 2) || (arg0 == 1)) && (arg2 == 0)) {
        fatal_printf("gtl : Buffer size for RDP is zero !!\n", arg1);
loop_4:
        goto loop_4;
    }
    if (arg0 == 1) {
        func_800056DC(arg1, arg2, arg1);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005734.s")
#endif

#ifdef MIPS_TO_C

s32 func_800057AC(void) {
    s32 *temp_a1;
    s32 temp_v0;
    s32 temp_v1;

    temp_v0 = D_8004A450 * 4;
    if (*(&D_8004A368 + temp_v0) == 0) {
        fatal_printf("gtl : not defined SCTaskGfx\n");
loop_2:
        goto loop_2;
    }
    temp_a1 = temp_v0 + &D_8004A370;
    temp_v1 = *temp_a1;
    if (temp_v1 == *(&D_8004A378 + temp_v0)) {
        fatal_printf("gtl : couldn't get SCTaskGfx\n", temp_a1);
loop_5:
        goto loop_5;
    }
    *temp_a1 = temp_v1 + 0x88;
    return temp_v1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800057AC.s")
#endif

#ifdef MIPS_TO_C

void func_80005834(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    ? *var_t2;
    s32 *var_a0;
    s32 *var_s1;
    s32 *var_t1;
    s32 *var_t4;
    s32 temp_at;
    s32 temp_t3;
    s32 temp_t7;
    s32 var_a3;
    s32 var_s2;
    s32 var_t5;
    s32 var_v0;

    var_v0 = 0;
    if (D_8004A460 > 0) {
        var_s1 = &D_8004A388;
        var_t4 = &D_8004A380;
        var_t2 = &D_8004A378;
        var_t1 = &D_8004A370;
        var_a0 = &D_8004A368;
        var_a3 = arg0;
        var_t5 = arg2;
        var_s2 = arg3;
        do {
            temp_t3 = var_v0 + 1;
            temp_at = temp_t3 < D_8004A460;
            *var_a0 = var_a3;
            *var_t1 = var_a3;
            *var_t4 = var_t5;
            *var_s1 = var_s2;
            var_s2 += 0x38;
            temp_t7 = arg0 + (arg1 * 0x88 * temp_t3);
            var_t5 += 0x2C;
            var_a3 += arg1 * 0x88;
            var_v0 = temp_t3;
            var_a0 += 4;
            var_t1 += 4;
            var_t2 += 4;
            var_t4 += 4;
            var_s1 += 4;
            var_t2->unk-4 = temp_t7;
        } while (temp_at != 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005834.s")
#endif

#ifdef MIPS_TO_C

void func_80005910(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    arg0->unk0 = 6;
    arg0->unk4 = 0x64;
    arg0->unk14 = 0;
    arg0->unk20 = arg3;
    arg0->unk1C = arg2;
    arg0->unk24 = arg1;
    arg0->unk28 = D_8004A450;
    osSendMesg(&scTaskMQ, arg0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005910.s")
#endif

#ifdef MIPS_TO_C

void func_8000597C(void) {
    s32 temp_a0;
    s32 temp_v0;

    temp_a0 = *(&D_8004A380 + (D_8004A450 * 4));
    if (temp_a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n", -1, D_8004A450);
loop_2:
        goto loop_2;
    }
    func_80005910(temp_a0, -1, D_8004A450, &D_80049320);
    temp_v0 = D_8004A450 * 4;
    *(&D_8004A370 + temp_v0) = *(&D_8004A368 + temp_v0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_8000597C.s")
#endif

#ifdef MIPS_TO_C

void func_800059F8(void) {
    void *sp24;
    s32 temp_a0;
    s32 temp_v0;

    temp_a0 = *(&D_8004A380 + (D_8004A450 * 4));
    if (temp_a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n", 0, D_8004A450);
loop_2:
        goto loop_2;
    }
    func_80005910(temp_a0, 0, D_8004A450, &D_80049340);
    osRecvMesg(&D_80049340, &sp24, 1);
    temp_v0 = D_8004A450 * 4;
    *(&D_8004A370 + temp_v0) = *(&D_8004A368 + temp_v0);
    func_80005430();
    func_80005530();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800059F8.s")
#endif

#ifdef MIPS_TO_C

void func_80005A98(void *arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 temp_v1;
    void *temp_v0;

    arg0->unk0 = 1;
    arg0->unk4 = 0x32;
    if (D_80049308 != 0) {
        arg0->unk14 = D_8004A48C;
        arg0->unk68 = D_80049308;
        D_80049308 = 0;
    } else {
        arg0->unk14 = 0;
        arg0->unk68 = 0;
    }
    arg0->unk6C = arg1;
    arg0->unk70 = D_8004A3F4;
    if (arg1 != 0) {
        arg0->unk20 = &D_80049320;
        arg0->unk1C = arg3;
    } else {
        arg0->unk20 = NULL;
    }
    arg0->unk18 = 2;
    arg0->unk7C = 0;
    arg0->unk28 = 1;
    arg0->unk2C = 4;
    arg0->unk30 = &gRSPBootUcode;
    arg0->unk34 = 0x100;
    temp_v0 = (arg2 * 8) + &D_8003DCAC;
    arg0->unk80 = D_8004A450;
    temp_v1 = temp_v0->unk0;
    if (temp_v1 == 0) {
        fatal_printf("gtl : ucode isn't included  kind = %d\n", arg2);
loop_8:
        goto loop_8;
    }
    arg0->unk38 = temp_v1;
    arg0->unk3C = 0x1000;
    arg0->unk44 = 0x800;
    arg0->unk48 = ((&D_80049358 + 0xF) >> 4) * 0x10;
    arg0->unk4C = 0x400;
    arg0->unk40 = temp_v0->unk4;
    switch (arg2) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            arg0->unk50 = arg5;
            arg0->unk74 = 2;
            arg0->unk54 = arg5 + arg6;
            break;
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            arg0->unk50 = 0;
            arg0->unk54 = 0;
            arg0->unk74 = 0;
            break;
    }
    arg0->unk5C = 0;
    arg0->unk60 = ((&D_80049760 + 0xF) >> 4) * 0x10;
    arg0->unk64 = 0xC00;
    arg0->unk58 = arg4;
    osWritebackDCacheAll();
    osSendMesg(&scTaskMQ, arg0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005A98.s")
#endif

#ifdef MIPS_TO_C

s32 func_80005C64(void) {
    u16 var_v1;

    if (D_8004A448 != 0) {
        var_v1 = D_8004A446;
    } else {
        var_v1 = D_8004A444;
    }
    switch (var_v1) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            return 9;
        default:
            return 8;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005C64.s")
#endif

#ifdef MIPS_TO_C

void func_80005CC0(s32 arg0, s32 arg1) {
    u32 sp2C;
    u16 var_a2;

    if (arg0 == 0) {
        var_a2 = D_8004A444;
        if (D_8004A440 == 1) {
            switch (var_a2) {                       /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    var_a2 = 2;
                    break;
                case 1:                             /* switch 1 */
                    var_a2 = 3;
                    break;
                case 12:                            /* switch 1 */
                    var_a2 = 0xE;
                    break;
                case 13:                            /* switch 1 */
                    var_a2 = 0xF;
                    break;
            }
        }
    } else {
        var_a2 = func_80005C64();
    }
    switch (var_a2) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            sp2C = var_a2;
            func_80005A98(func_800057AC(), 0, var_a2, D_8004A450, arg1, 0, 0);
            return;
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            sp2C = var_a2;
            func_80005A98(func_800057AC(), 0, var_a2, D_8004A450, arg1, D_8004A438, D_8004A43C);
            /* fallthrough */
        default:
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005CC0.s")
#endif

#ifdef MIPS_TO_C

void append_microcode_load(void **arg0, u32 arg1) {
    s32 var_v0;
    void *temp_a1;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *temp_a1_5;
    void *temp_a1_6;
    void *temp_a1_7;

    var_v0 = 0;
    switch (arg1) {
        case 0:
            temp_a1 = *arg0;
            *arg0 = temp_a1 + 8;
            temp_a1->unk0 = 0xE1000000;
            temp_a1->unk4 = &D_41FF0;
            temp_a1_2 = *arg0;
            *arg0 = temp_a1_2 + 8;
            temp_a1_2->unk0 = 0xDD0007FF;
            temp_a1_2->unk4 = &D_39E90;
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            temp_a1_3 = *arg0;
            *arg0 = temp_a1_3 + 8;
            temp_a1_3->unk0 = 0xE1000000;
            temp_a1_3->unk4 = &D_42410;
            temp_a1_4 = *arg0;
            *arg0 = temp_a1_4 + 8;
            temp_a1_4->unk0 = 0xDD0007FF;
            temp_a1_4->unk4 = &D_3B220;
            break;
        case 9:
        case 10:
            temp_a1_5 = *arg0;
            *arg0 = temp_a1_5 + 8;
            temp_a1_5->unk0 = 0xE1000000;
            temp_a1_5->unk4 = &D_42800;
            temp_a1_6 = *arg0;
            *arg0 = temp_a1_6 + 8;
            var_v0 = 1;
            temp_a1_6->unk0 = 0xDD0007FF;
            temp_a1_6->unk4 = &D_3C3B0;
            break;
    }
    if (var_v0 == 0) {
        temp_a1_7 = *arg0;
        *arg0 = temp_a1_7 + 8;
        temp_a1_7->unk0 = 0xDE000000;
        temp_a1_7->unk4 = D_8004A44C;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/append_microcode_load.s")
#endif

#ifdef MIPS_TO_C

void func_80005F10(void) {
    s32 sp80;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    ? var_a0;
    Gfx **temp_v1;
    Gfx **var_v0;
    Gfx **var_v1;
    Gfx *temp_a1;
    Gfx *temp_t7;
    Gfx *temp_v0;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s32 temp_a2;
    s32 temp_t6;
    s32 temp_t8;
    s32 var_a2;
    s32 var_a3;
    s32 var_t0;
    s32 var_t1;

    var_a2 = 0;
    var_v0 = &D_8004A3E0;
    var_v1 = gDisplayListHeads;
    do {
        temp_t7 = *var_v0;
        var_v0 += 4;
        var_a2 = var_a2 >> 1;
        if (*var_v1 != temp_t7) {
            var_a2 |= 8;
        }
        var_v1 += 4;
    } while (var_v0 != &D_8004A3F0);
    temp_t8 = var_a2 & 1;
    if (var_a2 != 0) {
        sp2C = temp_t8;
        if (temp_t8 != 0) {
            if (var_a2 & 4) {
                sp80 = var_a2;
                append_microcode_load(gDisplayListHeads, func_80005C64(&D_8004A3F0, var_a2));
                temp_v0 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0 + 8;
                temp_v0->words.w0 = 0xDE010000;
                temp_v0->words.w1 = D_8004A3E0.unk8;
            } else if (var_a2 & 2) {
                if (D_8004A448 != 0) {
                    sp80 = var_a2;
                    append_microcode_load(gDisplayListHeads, D_8004A444, var_a2);
                }
                temp_v0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_2 + 8;
                temp_v0_2->words.w0 = 0xDE010000;
                temp_v0_2->words.w1 = D_8004A3E0.unk4;
            } else if (var_a2 & 8) {
                sp80 = var_a2;
                append_microcode_load(gDisplayListHeads, func_80005C64(&D_8004A3F0, var_a2));
                temp_v0_3 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_3 + 8;
                temp_v0_3->words.w0 = 0xDE010000;
                temp_v0_3->words.w1 = D_8004A3E0.unkC;
            } else {
                temp_v0_4 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_4 + 8;
                temp_v0_4->words.w1 = 0;
                temp_v0_4->words.w0 = 0xE9000000;
                temp_v0_5 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_5 + 8;
                temp_v0_5->words.w1 = 0;
                temp_v0_5->words.w0 = 0xDF000000;
            }
        }
        temp_t6 = var_a2 & 4;
        sp28 = temp_t6;
        var_t0 = var_a2 & 2;
        var_a3 = var_a2 & 8;
        if (temp_t6 != 0) {
            if (var_t0 != 0) {
                sp20 = var_a3;
                sp24 = var_t0;
                append_microcode_load(&D_8004A3D8, D_8004A444, var_a2, var_a3);
                temp_v0_6 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_6 + 8;
                temp_v0_6->words.w0 = 0xDE010000;
                temp_v0_6->words.w1 = D_8004A3E0.unk4;
            } else if (var_a3 != 0) {
                temp_v0_7 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_7 + 8;
                temp_v0_7->words.w0 = 0xDE010000;
                temp_v0_7->words.w1 = D_8004A3E0.unkC;
            } else {
                temp_v0_8 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_8 + 8;
                temp_v0_8->words.w1 = 0;
                temp_v0_8->words.w0 = 0xE9000000;
                temp_v0_9 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_9 + 8;
                temp_v0_9->words.w1 = 0;
                temp_v0_9->words.w0 = 0xDF000000;
            }
        }
        if (var_t0 != 0) {
            if (var_a3 != 0) {
                sp20 = var_a3;
                sp24 = var_t0;
                append_microcode_load(gDisplayListHeads, func_80005C64());
                temp_v0_10 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_10 + 8;
                temp_v0_10->words.w0 = 0xDE010000;
                temp_v0_10->words.w1 = D_8004A3E0.unkC;
            } else {
                temp_v0_11 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_11 + 8;
                temp_v0_11->words.w1 = 0;
                temp_v0_11->words.w0 = 0xE9000000;
                temp_v0_12 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_12 + 8;
                temp_v0_12->words.w1 = 0;
                temp_v0_12->words.w0 = 0xDF000000;
            }
        }
        if (var_a3 != 0) {
            temp_v0_13 = gDisplayListHeads[3];
            gDisplayListHeads[3] = temp_v0_13 + 8;
            temp_v0_13->words.w1 = 0;
            temp_v0_13->words.w0 = 0xE9000000;
            temp_v0_14 = gDisplayListHeads[3];
            gDisplayListHeads[3] = temp_v0_14 + 8;
            temp_v0_14->words.w1 = 0;
            temp_v0_14->words.w0 = 0xDF000000;
        }
        var_t1 = 0;
        if (sp2C != 0) {
            var_a0 = 0;
        } else {
            var_t1 = 2;
            if (sp28 != 0) {
                goto block_33;
            }
            var_t1 = 3;
            if (var_t0 != 0) {
                var_t1 = 1;
                var_a0 = 0;
            } else {
block_33:
                var_a0 = 1;
            }
        }
        temp_a2 = var_t1 * 4;
        temp_v1 = &gDisplayListHeads[var_t1];
        temp_a1 = *temp_v1;
        *temp_v1 = temp_a1 + 8;
        temp_a1->words.w0 = 0xDE000000;
        temp_a1->words.w1 = D_8004A44C;
        temp_v0_15 = *temp_v1;
        *temp_v1 = temp_v0_15 + 8;
        temp_v0_15->words.w0 = 0xDE010000;
        temp_v0_15->words.w1 = *(&D_8004A3E0 + temp_a2);
        func_80005CC0(var_a0, temp_a1, temp_a2, var_a3);
        D_8004A3E0.unk0 = gDisplayListHeads->unk0;
        D_8004A3E0.unk8 = gDisplayListHeads[2];
        D_8004A3E0.unk4 = gDisplayListHeads[1];
        D_8004A3E0.unkC = gDisplayListHeads[3];
    }
    func_8000561C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005F10.s")
#endif

#ifdef MIPS_TO_C

void func_8000630C(void) {
    s32 sp50;
    s32 sp24;
    s32 sp20;
    Gfx **var_v1;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    Gfx *temp_v1_3;
    s32 *var_v0;
    s32 temp_a3;
    s32 temp_t7;
    s32 var_a2;

    func_8000561C();
    var_a2 = 0;
    var_v0 = &D_8004A3E0;
    var_v1 = gDisplayListHeads;
    do {
        temp_t7 = *var_v0;
        var_v0 += 4;
        var_a2 = var_a2 >> 1;
        if (*var_v1 != temp_t7) {
            var_a2 |= 8;
        }
        var_v1 += 4;
    } while (var_v0 != &D_8004A3F0);
    if (var_a2 != 0) {
        if (var_a2 & 1) {
            if (var_a2 & 4) {
                sp50 = var_a2;
                append_microcode_load(gDisplayListHeads, func_80005C64(&D_8004A3F0));
                temp_v0 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0 + 8;
                temp_v0->words.w0 = 0xDE010000;
                temp_v0->words.w1 = D_8004A3E8;
            } else if (var_a2 & 2) {
                if (D_8004A448 != 0) {
                    sp50 = var_a2;
                    append_microcode_load(gDisplayListHeads, D_8004A444, var_a2);
                }
                temp_v0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_2 + 8;
                temp_v0_2->words.w0 = 0xDE010000;
                temp_v0_2->words.w1 = D_8004A3E4;
            } else if (var_a2 & 8) {
                sp50 = var_a2;
                append_microcode_load(gDisplayListHeads, func_80005C64(&D_8004A3F0));
                temp_v0_3 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_3 + 8;
                temp_v0_3->words.w0 = 0xDE010000;
                temp_v0_3->words.w1 = D_8004A3EC;
            }
        }
        sp20 = var_a2 & 8;
        temp_a3 = var_a2 & 2;
        if (var_a2 & 4) {
            if (temp_a3 != 0) {
                sp24 = temp_a3;
                append_microcode_load(&D_8004A3D8, D_8004A444, var_a2, temp_a3);
                temp_v0_4 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_4 + 8;
                temp_v0_4->words.w0 = 0xDE010000;
                temp_v0_4->words.w1 = D_8004A3E4;
            } else if (sp20 != 0) {
                temp_v0_5 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_5 + 8;
                temp_v0_5->words.w0 = 0xDE010000;
                temp_v0_5->words.w1 = D_8004A3EC;
            } else {
                sp24 = temp_a3;
                append_microcode_load(&D_8004A3D8, D_8004A444, var_a2, temp_a3);
                temp_v0_6 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_6 + 8;
                temp_v0_6->words.w0 = 0xDE010000;
                temp_v0_6->words.w1 = gDisplayListHeads->unk0;
            }
            D_8004A3E8 = gDisplayListHeads[2];
        }
        if (temp_a3 != 0) {
            if (sp20 != 0) {
                append_microcode_load(gDisplayListHeads, func_80005C64());
                temp_v1 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v1 + 8;
                temp_v1->words.w0 = 0xDE010000;
                temp_v1->words.w1 = D_8004A3EC;
            } else {
                if (D_8004A448 != 0) {
                    append_microcode_load(&D_8004A3D4, D_8004A444);
                }
                temp_v1_2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v1_2 + 8;
                temp_v1_2->words.w0 = 0xDE010000;
                temp_v1_2->words.w1 = gDisplayListHeads->unk0;
            }
            D_8004A3E4 = gDisplayListHeads[1];
        }
        if (sp20 != 0) {
            append_microcode_load(&D_8004A3DC, D_8004A444);
            temp_v1_3 = gDisplayListHeads[3];
            gDisplayListHeads[3] = temp_v1_3 + 8;
            temp_v1_3->words.w0 = 0xDE010000;
            temp_v1_3->words.w1 = gDisplayListHeads->unk0;
            D_8004A3EC = gDisplayListHeads[3];
        }
    }
    D_8004A448 = 0;
    func_8000561C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_8000630C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80006628(s32 arg0) {
    void *sp3C;
    s32 *var_a0;
    s32 var_v1;

    if (osRecvMesg(&D_80049320, &sp3C, 0) != -1) {
        do {
            (&D_8004A458)[sp3C] = 0;
        } while (osRecvMesg(&D_80049320, &sp3C, 0) != -1);
    }
loop_4:
    var_a0 = &D_8004A458;
    var_v1 = 0;
    if (D_8004A460 > 0) {
loop_5:
        if (*var_a0 == 0) {
            D_8004A450 = var_v1;
            *var_a0 = 1;
            return 1;
        }
        var_v1 += 1;
        var_a0 += 4;
        if (var_v1 >= D_8004A460) {
            goto block_8;
        }
        goto loop_5;
    }
block_8:
    if (arg0 == 0) {
        osRecvMesg(&D_80049320, &sp3C, 1);
        (&D_8004A458)[sp3C] = 0;
    }
    if (arg0 != 0) {
        return 0;
    }
    goto loop_4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006628.s")
#endif

#ifdef MIPS_TO_C

void func_80006740(void) {
    OSMesgQueue *sp54;
    s32 sp50;
    ? *sp48;
    s32 sp38;
    s32 sp34;
    void *sp30;
    OSMesgQueue sp18;

    sp34 = 7;
    sp38 = 0x32;
    osCreateMesgQueue(&sp18, &sp30, 1);
    sp48 = &func_80000B64;
    sp50 = 1;
    sp54 = &sp18;
    osSendMesg(&scTaskMQ, &sp34, 0);
    osRecvMesg(&sp18, NULL, 1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006740.s")
#endif

#ifdef MIPS_TO_C

void func_800067B8(void) {
    D_8004A3F0 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800067B8.s")
#endif

#ifdef MIPS_TO_C

void func_800067C8(s32 arg0) {
    D_8004A3F0 = 2;
    D_8004A3F4 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800067C8.s")
#endif

#ifdef MIPS_TO_C

s32 func_800067E0(void) {
    s32 sp20;
    s32 sp1C;

    switch (D_8004A3F0) {                           /* irregular */
        case 1:
            return 1;
        case 2:
            if (D_80048C64 != 0) {
                sp1C = 0xB;
                sp20 = 0x64;
                func_80000980(&sp1C);
                return 1;
            }
            return 0;
        default:
            return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800067E0.s")
#endif

#ifdef MIPS_TO_C

void func_80006854(void) {
    if (D_800492DC == 1) {
        D_800492DC = 2;
        if (osRecvMesg(&D_800492E8, NULL, 0) != -1) {
            do {

            } while (osRecvMesg(&D_800492E8, NULL, 0) != -1);
        }
        osRecvMesg(&D_800492E8, NULL, 1);
        D_800492DC = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006854.s")
#endif

#ifdef MIPS_TO_C

void func_800068E4(void *arg0) {
    ? *var_v0;
    s32 var_s0;
    s32 var_s0_2;

    D_800492DC = 0;
    if (osRecvMesg(&D_80049320, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_80049320, NULL, 0) != -1);
    }
    if (osRecvMesg(&D_80049340, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_80049340, NULL, 0) != -1);
    }
    if (osRecvMesg(&D_800492C0, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_800492C0, NULL, 0) != -1);
    }
    D_8004A3F0 = 0;
    D_8004A3F4 = -1;
    D_8004A450 = 1;
    D_80048C64 = 0;
    var_v0 = &D_8004A458;
    do {
        var_v0 += 4;
        var_v0->unk-4 = 0;
    } while (var_v0 != &D_8004A460);
    var_s0 = 0;
    if (arg0->unk0 & 1) {
        var_s0_2 = 0;
loop_10:
        func_80006854();
        func_80000510();
        if (D_800492D8 > 0) {
            do {
                osRecvMesg(&D_800492C0, NULL, 1);
                var_s0_2 += 1;
            } while (var_s0_2 < D_800492D8);
        }
        if (osRecvMesg(&D_800492C0, NULL, 0) != -1) {
            do {

            } while (osRecvMesg(&D_800492C0, NULL, 0) != -1);
        }
        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 += 1;
        D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
        if ((func_800067E0() == 0) && (((D_8003DCA4 % D_800492DA) != 0) || (func_80006628(0), D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 += 1, D_8004A434 = (osGetCount() - D_8004A42C) / 2971, (func_800067E0() == 0)))) {
            var_s0_2 = 0;
            goto loop_10;
        }
    } else {
loop_19:
        func_80006854();
        func_80000510();
        if (D_800492D8 > 0) {
            do {
                osRecvMesg(&D_800492C0, NULL, 1);
                var_s0 += 1;
            } while (var_s0 < D_800492D8);
        }
        if (osRecvMesg(&D_800492C0, NULL, 0) != -1) {
            do {

            } while (osRecvMesg(&D_800492C0, NULL, 0) != -1);
        }
        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 += 1;
        D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
        if ((func_800067E0() == 0) && (((D_8003DCA4 % D_800492DA) != 0) || (func_80006628(1) == 0) || (D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 += 1, D_8004A434 = (osGetCount() - D_8004A42C) / 2971, (func_800067E0() == 0)))) {
            var_s0 = 0;
            goto loop_19;
        }
    }
    func_80006740();
    if (osRecvMesg(&D_80049320, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_80049320, NULL, 0) != -1);
    }
    if (osRecvMesg(&D_80049340, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_80049340, NULL, 0) != -1);
    }
    if (osRecvMesg(&D_800492C0, NULL, 0) != -1) {
        do {

        } while (osRecvMesg(&D_800492C0, NULL, 0) != -1);
    }
    set_scissor_callback(0);
    D_800492DC = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800068E4.s")
#endif

#ifdef MIPS_TO_C

void func_80006DF8(void *arg0) {
    D_8004A488();
    arg0->unk4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006DF8.s")
#endif

#ifdef MIPS_TO_C

void func_80006E30(void *arg0) {
    func_80005430();
    func_80005530();
    arg0->unkC();
    func_80005F10();
    func_80007ADC(*(&D_8004A388 + (D_8004A450 * 4)));
    func_8000597C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006E30.s")
#endif

#ifdef MIPS_TO_C

void func_80006E94(void *arg0) {
    D_8004A488();
    arg0->unk4();
    if (func_800067E0() != 0) {
        func_8000BC34();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006E94.s")
#endif

#ifdef MIPS_TO_C

void func_80006EE4(void *arg0) {
    func_80005430();
    func_80005530();
    arg0->unkC();
    func_80005F10();
    func_80007ADC(*(&D_8004A388 + (D_8004A450 * 4)));
    func_8000597C();
    if (func_800067E0() != 0) {
        func_8000BC34();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006EE4.s")
#endif

#ifdef MIPS_TO_C

void func_80006F60(void *arg0) {
    void *sp34;
    s32 temp_a0;
    s32 temp_v0;

    func_80006628(0);
    func_80005430();
    func_80005530();
    arg0->unk2C(arg0);
    func_80005F10();
    temp_a0 = *(&D_8004A380 + (D_8004A450 * 4));
    if (temp_a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n", 0, D_8004A450);
loop_2:
        goto loop_2;
    }
    func_80005910(temp_a0, 0, D_8004A450, &D_80049320);
    temp_v0 = D_8004A450 * 4;
    *(&D_8004A370 + temp_v0) = *(&D_8004A368 + temp_v0);
    do {
        osRecvMesg(&D_80049320, &sp34, 1);
        *(&D_8004A458 + (sp34 * 4)) = 0;
    } while (*(&D_8004A458 + (D_8004A450 * 4)) != 0);
    D_8003DCA8 += 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006F60.s")
#endif

#ifdef MIPS_TO_C

void func_8000708C(void *arg0, ? (*arg1)()) {
    ? sp44;
    ? *var_s0;
    ? *var_s0_2;
    ? var_a0;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_t6;
    s32 temp_t7;
    s32 var_s3;
    s32 var_v0;

    temp_t6 = arg0->unk18;
    D_8004A460 = temp_t6;
    gDynamicBuffer3.unk0 = arg0->unk0;
    gDynamicBuffer3.unk4 = arg0->unk4;
    gDynamicBuffer3.unkC = arg0->unk8;
    temp_s0 = alloc_with_alignment(arg0->unk14 * 0x88 * temp_t6, 8);
    temp_s1 = alloc_with_alignment(D_8004A460 * 0x2C, 8);
    func_80005834(temp_s0, arg0->unk14, temp_s1, alloc_with_alignment(D_8004A460 * 0x38, 8));
    var_s3 = 0;
    var_s0 = &sp44;
    if (D_8004A460 > 0) {
        do {
            var_s0->unk0 = alloc_with_alignment(arg0->unk1C, 8);
            var_s0->unk4 = arg0->unk1C;
            var_s0->unk8 = alloc_with_alignment(arg0->unk20, 8);
            var_s0->unkC = arg0->unk20;
            var_s0->unk10 = alloc_with_alignment(arg0->unk24, 8);
            var_s0->unk14 = arg0->unk24;
            var_s0->unk18 = alloc_with_alignment(arg0->unk28, 8);
            var_s3 += 1;
            var_s0 += 0x20;
            var_s0->unk-4 = arg0->unk28;
        } while (var_s3 < D_8004A460);
        var_s3 = 0;
    }
    func_8000548C(&sp44);
    var_s0_2 = &D_8004A468;
    if (D_8004A460 > 0) {
        do {
            mlSetup(&gDynamicBuffer1, 0x10002, alloc_with_alignment(arg0->unk2C, 8), arg0->unk2C);
            var_s3 += 1;
            var_s0_2 += 0x10;
            var_s0_2->unk-10 = gDynamicBuffer1.id;
            var_s0_2->unk-C = gDynamicBuffer1.poolStart;
            var_s0_2->unk-8 = gDynamicBuffer1.poolEnd;
            var_s0_2->unk-4 = gDynamicBuffer1.top;
        } while (var_s3 < D_8004A460);
    }
    var_v0 = arg0->unk34;
    arg0->unk30 = 2;
    if (var_v0 == 0) {
        var_v0 = 0x1000;
        arg0->unk34 = 0x1000;
    }
    func_80005734(arg0->unk30, alloc_with_alignment(var_v0, 0x10), arg0->unk34);
    set_scissor_callback(arg0->unk38);
    temp_t7 = arg0->unk3C;
    D_8004A488 = temp_t7;
    if (temp_t7 != &func_80004624) {
        var_a0 = 1;
    } else {
        var_a0 = 0;
    }
    func_800046A4(var_a0);
    D_8003DCA8 = 0;
    D_8003DCA4 = 0;
    if (arg1 != NULL) {
        arg1();
    }
    func_800068E4(&gDynamicBuffer3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_8000708C.s")
#endif

#ifdef MIPS_TO_C

void func_80007328(void *arg0) {
    alloc_region(arg0->unkC, arg0->unk10, arg0);
    gDynamicBuffer3.unk8 = &func_80006DF8;
    gDynamicBuffer3.unk10 = &func_80006E30;
    func_8000708C(arg0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007328.s")
#endif

#ifdef MIPS_TO_C

void func_80007380(void *arg0) {
    s32 temp_v1;

    alloc_region(arg0->unkC, arg0->unk10);
    D_8004A490.unk0 = alloc_with_alignment(arg0->unk40 * 0x1C0, 8);
    D_8004A490.unk4 = arg0->unk40;
    D_8004A490.unk8 = arg0->unk44;
    temp_v1 = arg0->unk44;
    if (temp_v1 != 0) {
        D_8004A490.unkC = alloc_with_alignment((temp_v1 + 8) * arg0->unk48, 8);
    } else {
        D_8004A490.unkC = 0;
    }
    D_8004A490.unk10 = arg0->unk48;
    D_8004A490.unk14 = arg0->unk4C;
    D_8004A490.unk18 = alloc_with_alignment(arg0->unk50 * 0x24, 4);
    D_8004A490.unk1C = arg0->unk50;
    D_8004A490.unk20 = alloc_with_alignment(arg0->unk58 * arg0->unk54, 8);
    D_8004A490.unk24 = arg0->unk54;
    D_8004A490.unk28 = arg0->unk58;
    D_8004A490.unk2C = alloc_with_alignment(arg0->unk5C * 0x48, 8);
    D_8004A490.unk30 = arg0->unk5C;
    func_80010B44(arg0->unk60);
    D_8004A490.unk34 = arg0->unk64;
    D_8004A490.unk38 = alloc_with_alignment(arg0->unk68 * 0x24, 4);
    D_8004A490.unk3C = arg0->unk68;
    D_8004A490.unk40 = alloc_with_alignment(arg0->unk6C * 0xA8, 4);
    D_8004A490.unk44 = arg0->unk6C;
    D_8004A490.unk48 = alloc_with_alignment(arg0->unk74 * arg0->unk70, 8);
    D_8004A490.unk4C = arg0->unk70;
    D_8004A490.unk50 = arg0->unk74;
    D_8004A490.unk54 = alloc_with_alignment(arg0->unk7C * arg0->unk78, 8);
    D_8004A490.unk58 = arg0->unk78;
    D_8004A490.unk5C = arg0->unk7C;
    D_8004A490.unk60 = alloc_with_alignment(arg0->unk84 * arg0->unk80, 8);
    D_8004A490.unk64 = arg0->unk80;
    D_8004A490.unk68 = arg0->unk84;
    HS64_omInit(&D_8004A490);
    gDynamicBuffer3.unk8 = &func_80006E94;
    gDynamicBuffer3.unk10 = &func_80006EE4;
    func_8000708C(arg0, arg0->unk88);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007380.s")
#endif

#ifdef MIPS_TO_C

void func_800075DC(s16 arg0, s16 arg1) {
    D_800492D8 = arg0;
    D_800492DA = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800075DC.s")
#endif

#ifdef MIPS_TO_C

void func_800075F8(void) {
    if (D_800492DC != 2) {
        D_800492DC = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800075F8.s")
#endif

#ifdef MIPS_TO_C

s32 func_80007620(void) {
    if (D_800492DC == 2) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007620.s")
#endif

#ifdef MIPS_TO_C

void func_80007648(void) {
    osSendMesg(&D_800492E8, NULL, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007648.s")
#endif

#ifdef MIPS_TO_C

void func_80007674(s32 arg0) {
    if ((arg0 == 1) || (arg0 == 2)) {
        D_8004A460 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007674.s")
#endif

#ifdef MIPS_TO_C

s32 func_80007694(s32 arg0) {
    if (((arg0 == 1) || (arg0 == 2)) && (*(&D_8004A454 + (arg0 * 4)) == 0)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007694.s")
#endif

#ifdef MIPS_TO_C

void func_800076D0(void) {
    ? *var_a0;
    ? *var_a1;
    ? *var_v0;
    ? *var_v0_2;
    ? *var_v1;

    var_v0 = &D_8004A380;
    var_a1 = &D_8004A368;
    var_a0 = &D_8004A370;
    var_v1 = &D_8004A378;
    do {
        var_v0 += 4;
        var_v1 += 4;
        var_a0 += 4;
        var_a1 += 4;
        var_v1->unk-4 = 0;
        var_a0->unk-4 = 0;
        var_a1->unk-4 = 0;
        var_v0->unk-4 = 0;
    } while (var_v0 < &D_8004A388);
    D_8004A440 = 0;
    D_8004A446 = 0;
    D_8004A444 = 0;
    var_v0_2 = &gDLBuffers;
    do {
        var_v0_2 += 0x20;
        var_v0_2->unk-18 = 0;
        var_v0_2->unk-14 = 0;
        var_v0_2->unk-10 = 0;
        var_v0_2->unk-C = 0;
        var_v0_2->unk-8 = 0;
        var_v0_2->unk-4 = 0;
        var_v0_2->unk-20 = 0;
        var_v0_2->unk-1C = 0;
    } while (var_v0_2 != gDisplayListHeads);
    D_80049308 = 0;
    func_80005350(0, var_a1, &D_8004A388);
    scAddClient(&D_80049300, &D_800492C0, &D_800492B0, 4);
    osCreateMesgQueue(&D_80049320, &D_80049310, 3);
    osCreateMesgQueue(&D_80049340, &D_80049338, 1);
    D_800492DA = 1;
    D_800492D8 = 1;
    osCreateMesgQueue(&D_800492E8, &D_800492E0, 1);
    D_800492DC = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800076D0.s")
#endif
