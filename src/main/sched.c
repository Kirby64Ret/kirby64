#include "common.h"

void func_80000900(void) {
}

#ifdef MIPS_TO_C

void func_80000908(void) {
loop_1:
    if (D_80048B8C != 0) {
block_4:
        func_80000900();
        goto loop_1;
    }
    if (D_80048BA4 != 0) {
        goto block_4;
    }
    if (D_80048B9C != 0) {
        goto block_4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000908.s")
#endif

#ifdef MIPS_TO_C

void func_80000908(void) {
loop_1:
    if (D_80048B8C != 0) {
block_4:
        func_80000900();
        goto loop_1;
    }
    if (D_80048BA4 != 0) {
        goto block_4;
    }
    if (D_80048B9C != 0) {
        goto block_4;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scExecuteBlocking.s")
#endif

#ifdef MIPS_TO_C
void scAddClient(SCClient *client, OSMesgQueue *mq, void **msg, u32 count) {
    SCClient *sp3C;
    s32 sp1C;
    s32 sp18;

    osCreateMesgQueue(mq, msg, count);
    client->mq = mq;
    sp18 = 3;
    sp1C = 0x64;
    sp3C = client;
    scExecuteBlocking(&sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scAddClient.s")
#endif

#ifdef MIPS_TO_C

s32 scCheckGfxTaskDefault(void *arg0) {
    void *sp1C;
    s32 *var_v1;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_v1;
    void *temp_v0;

    if (scNextFrameBuffer != 0) {
        return 1;
    }
    if (D_80048C60 != 0) {
        goto block_15;
    }
    sp1C = osViGetNextFramebuffer();
    temp_v0 = osViGetCurrentFramebuffer();
    temp_v1 = arg0->unk70;
    if (temp_v1 != -1) {
        temp_a0 = (&scFrameBuffers)[temp_v1];
        if ((temp_a0 != 0) && (temp_v0 != temp_a0) && (sp1C != temp_a0)) {
            scNextFrameBuffer = temp_a0;
            D_80048C60 = temp_a0;
            scRDPOutputBufferUsed = 0;
            scTimestampSetFb = osGetCount();
            return 1;
        }
    }
    var_v1 = &scFrameBuffers;
loop_10:
    temp_a0_2 = *var_v1;
    var_v1 += 4;
    if ((temp_a0_2 != 0) && (temp_v0 != temp_a0_2) && (sp1C != temp_a0_2)) {
        scNextFrameBuffer = temp_a0_2;
        scRDPOutputBufferUsed = 0;
        scTimestampSetFb = osGetCount();
        return 1;
    }
    if (var_v1 == &scNextFrameBuffer) {
block_15:
        return 0;
    }
    goto loop_10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scCheckGfxTaskDefault.s")
#endif

#ifdef MIPS_TO_C

s32 func_80000B64(s32 arg0) {
    void *var_v0;
    void *var_v0_2;
    void *var_v0_3;

    if ((D_80048B8C != NULL) && (*D_80048B8C == 1)) {
        return 0;
    }
    var_v0 = scPausedQueueHead;
    if (var_v0 != NULL) {
loop_4:
        if (var_v0->unk0 == 1) {
            return 0;
        }
        var_v0 = var_v0->unkC;
        if (var_v0 == NULL) {
            goto block_7;
        }
        goto loop_4;
    }
block_7:
    var_v0_2 = scMainQueueHead;
    if (var_v0_2 != NULL) {
loop_8:
        if (var_v0_2->unk0 == 1) {
            return 0;
        }
        var_v0_2 = var_v0_2->unkC;
        if (var_v0_2 == NULL) {
            goto block_11;
        }
        goto loop_8;
    }
block_11:
    if ((D_80048BA4 != NULL) && (*D_80048BA4 == 1)) {
        return 0;
    }
    var_v0_3 = D_80048B9C;
    if (var_v0_3 != NULL) {
loop_15:
        if (var_v0_3->unk0 == 1) {
            return 0;
        }
        var_v0_3 = var_v0_3->unkC;
        if (var_v0_3 == NULL) {
            /* Duplicate return node #18. Try simplifying control flow for better match */
            return 1;
        }
        goto loop_15;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000B64.s")
#endif

#ifdef MIPS_TO_C

void scMainQueueAdd(void *arg0) {
    s32 temp_v1;
    void *temp_v0;
    void *var_v0;

    var_v0 = scMainQueueTail;
    if (var_v0 != NULL) {
        temp_v1 = arg0->unk4;
        if (var_v0->unk4 < temp_v1) {
loop_2:
            var_v0 = var_v0->unk10;
            if (var_v0 != NULL) {
                if (var_v0->unk4 < temp_v1) {
                    goto loop_2;
                }
            }
        }
    }
    arg0->unk10 = var_v0;
    if (var_v0 != NULL) {
        arg0->unkC = var_v0->unkC;
        var_v0->unkC = arg0;
    } else {
        arg0->unkC = scMainQueueHead;
        scMainQueueHead = arg0;
    }
    temp_v0 = arg0->unkC;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = arg0;
        return;
    }
    scMainQueueTail = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scMainQueueAdd.s")
#endif

#ifdef MIPS_TO_C

void scMainQueueRemove(void *arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk10;
    if (temp_v0 != NULL) {
        temp_v0->unkC = arg0->unkC;
    } else {
        scMainQueueHead = arg0->unkC;
    }
    temp_v0_2 = arg0->unkC;
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk10 = arg0->unk10;
        return;
    }
    scMainQueueTail = arg0->unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scMainQueueRemove.s")
#endif

#ifdef MIPS_TO_C

void scPausedQueueAdd(void *arg0) {
    s32 temp_v1;
    void *temp_v0;
    void *var_v0;

    var_v0 = scPausedQueueTail;
    if (var_v0 != NULL) {
        temp_v1 = arg0->unk4;
        if (var_v0->unk4 < temp_v1) {
loop_2:
            var_v0 = var_v0->unk10;
            if (var_v0 != NULL) {
                if (var_v0->unk4 < temp_v1) {
                    goto loop_2;
                }
            }
        }
    }
    arg0->unk10 = var_v0;
    if (var_v0 != NULL) {
        arg0->unkC = var_v0->unkC;
        var_v0->unkC = arg0;
    } else {
        arg0->unkC = scPausedQueueHead;
        scPausedQueueHead = arg0;
    }
    temp_v0 = arg0->unkC;
    if (temp_v0 != NULL) {
        temp_v0->unk10 = arg0;
        return;
    }
    scPausedQueueTail = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scPausedQueueAdd.s")
#endif

#ifdef MIPS_TO_C

void scPausedQueueRemove(void *arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk10;
    if (temp_v0 != NULL) {
        temp_v0->unkC = arg0->unkC;
    } else {
        scPausedQueueHead = arg0->unkC;
    }
    temp_v0_2 = arg0->unkC;
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk10 = arg0->unk10;
        return;
    }
    scPausedQueueTail = arg0->unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scPausedQueueRemove.s")
#endif

#ifdef MIPS_TO_C

void func_80000E14(void *arg0) {
    arg0->unkC = 0;
    arg0->unk10 = D_80048BA0;
    if (D_80048BA0 != NULL) {
        D_80048BA0->unkC = arg0;
    } else {
        D_80048B9C = arg0;
    }
    D_80048BA0 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000E14.s")
#endif

#ifdef MIPS_TO_C

void func_80000E4C(void *arg0) {
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = arg0->unk10;
    if (temp_v0 != NULL) {
        temp_v0->unkC = arg0->unkC;
    } else {
        D_80048B9C = arg0->unkC;
    }
    temp_v0_2 = arg0->unkC;
    if (temp_v0_2 != NULL) {
        temp_v0_2->unk10 = arg0->unk10;
        return;
    }
    D_80048BA0 = arg0->unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000E4C.s")
#endif

#ifdef MIPS_TO_C

void func_80000E9C(void) {
    u32 var_v0;
    u32 var_v0_2;
    void *temp_t6;

    M2C_MEMCPY_ALIGNED(&D_80048BA8, &gCurrentViMode, 0x48);
    temp_t6 = &gCurrentViMode + 0x48;
    D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
    D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
    osViSetMode(&D_80048BA8);
    var_v0 = (D_80048C7C * 0x10) >> 0x1F;
    if (var_v0 != 0) {
        osViSetYScale(1.0f);
        var_v0_2 = D_80048C7C * 0x10;
        goto block_4;
    }
    if (osTvType == 0) {
        osViSetYScale(D_8003FEC8);
        var_v0_2 = D_80048C7C * 0x10;
block_4:
        var_v0 = var_v0_2 >> 0x1F;
    }
    osViBlack(var_v0 & 0xFF);
    D_80048C48 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000E9C.s")
#endif

#ifdef MIPS_TO_C

void func_80000F78(u32 arg0, u32 arg1, s32 arg2, s16 arg3, s16 arg4, s16 arg5, s16 arg6) {
    u32 sp20;                                       /* compiler-managed */
    s32 sp1C;
    s32 sp14;
    u32 sp0;
    s16 temp_a1;
    s16 temp_a2;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_t7;
    s32 temp_t7_2;
    s32 temp_t7_3;
    s32 temp_t7_4;
    s32 temp_t7_5;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9_3;
    s32 var_a0;
    s32 var_t2;
    s32 var_t8;
    s32 var_t9;
    s32 var_v1;
    s32 var_v1_3;
    s32 var_v1_4;
    s32 var_v1_5;
    u32 temp_t4;
    u32 temp_t6;
    u32 temp_t9;
    u32 temp_t9_2;
    u32 var_t0;
    u32 var_t1;
    u32 var_v1_2;

    if ((arg0 >= 0x141) || (var_t2 = 1, ((arg1 < 0xF1) == 0))) {
        var_t2 = 0;
    }
    if (arg2 & 4) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x40;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 0x40;
    }
    if (arg2 & 8) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFBF;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 & ~0x40;
    }
    if (arg2 & 0x10) {
        temp_t7 = gCurrentViMode.unk4 & ~3;
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFDF;
        gCurrentViMode.unk4 = temp_t7;
        gCurrentViMode.unk4 = temp_t7 | 2;
    }
    if (arg2 & 0x20) {
        temp_t7_2 = gCurrentViMode.unk4 & ~3;
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x20;
        gCurrentViMode.unk4 = temp_t7_2;
        gCurrentViMode.unk4 = temp_t7_2 | 3;
    }
    if (arg2 & 0x40) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 0x10;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 8;
    }
    if (arg2 & 0x80) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFEF;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 & ~8;
    }
    if (arg2 & 0x1000) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 2;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 4;
    }
    if (arg2 & 0x2000) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFD;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 & ~4;
    }
    if (arg2 & 0x4000) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 1;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 0x10000;
    }
    if (arg2 & 0x8000) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFE;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 & 0xFFFEFFFF;
    }
    if (arg2 & 0x10000) {
        D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 0x10;
    }
    if (arg2 & 0x20000) {
        D_80048C7C.unk1 = D_80048C7C.unk1 & 0xFF7F;
        gCurrentViMode.unk4 = gCurrentViMode.unk4 & ~0x10;
    }
    if (arg2 & 0x100) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 8;
    }
    if (arg2 & 0x200) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFF7;
    }
    if (arg2 & 0x400) {
        D_80048C7C.unk0 = D_80048C7C.unk0 | 4;
    }
    if (arg2 & 0x800) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFFFB;
    }
    if (arg2 & 1) {
        D_80048C7C.unk0 = (D_80048C7C.unk0 & 0xFF7F) | 0x80;
    }
    if (arg2 & 2) {
        D_80048C7C.unk0 = D_80048C7C.unk0 & 0xFF7F;
    }
    gCurrentViMode.unk4 = gCurrentViMode.unk4 & ~0x300;
    if ((D_80048C7C.unk0 >> 0x1F) != 0) {
        var_t1 = (D_80048C7C.unk0 << 5) >> 0x1F;
        var_v1 = 0x100;
        if (D_80048C7C.unk0 & 1) {
            var_v1 = 0;
        }
        var_t0 = (D_80048C7C.unk0 * 4) >> 0x1F;
        var_t9 = gCurrentViMode.unk4 | var_v1;
        goto block_47;
    }
    var_t1 = (D_80048C7C.unk0 << 5) >> 0x1F;
    if ((var_t1 == 0) && (var_t0 = (D_80048C7C.unk0 * 4) >> 0x1F, (var_t0 == 1))) {
        gCurrentViMode.unk4 = gCurrentViMode.unk4 | 0x300;
    } else {
        var_t0 = (D_80048C7C.unk0 * 4) >> 0x1F;
        var_t9 = gCurrentViMode.unk4 | 0x200;
block_47:
        gCurrentViMode.unk4 = var_t9;
    }
    if (var_t2 != 0) {
        if (D_80048C7C.unk0 & 0x40000000) {
            var_a0 = 0;
        } else {
            var_a0 = 1;
        }
    } else {
        var_a0 = 1;
        if (var_t1 != 0) {
            var_a0 = 0;
        }
    }
    temp_a1 = arg5 & 0xFFFE;
    temp_a2 = arg6 & 0xFFFE;
    temp_a3 = var_t2 == 0;
    if ((temp_a3 != 0) && (var_a0 == 0)) {
        sp14 = 2;
    } else {
        sp14 = 1;
    }
    if (var_t2 != 0) {
        var_v1_2 = 1;
    } else {
        var_v1_2 = 2;
    }
    temp_t4 = arg1 << 0xB;
    temp_lo = ((temp_t4 / ((temp_a2 - temp_a1) + 0x1E0)) / var_v1_2) * sp14;
    if ((temp_a3 != 0) && (var_a0 != 0)) {
        var_v1_3 = 2;
    } else {
        var_v1_3 = 1;
    }
    gCurrentViMode.unk8 = var_v1_3 * arg0;
    if (osTvType == 1) {
        gCurrentViMode.unkC = 0x03E52239;
        gCurrentViMode.unk10 = 0x20C;
        gCurrentViMode.unk14 = 0xC15;
        gCurrentViMode.unk18 = 0x0C150C15;
        gCurrentViMode.unk1C = 0x6C02EC;
        gCurrentViMode.unk30 = 0x2501FF;
        gCurrentViMode.unk34 = 0xE0204;
    }
    if (osTvType == 0) {
        gCurrentViMode.unkC = 0x0404233A;
        gCurrentViMode.unk10 = 0x270;
        gCurrentViMode.unk14 = 0x150C69;
        gCurrentViMode.unk18 = 0x0C6F0C6E;
        gCurrentViMode.unk1C = 0x800300;
        gCurrentViMode.unk30 = 0x2F0269;
        gCurrentViMode.unk34 = 0x9026B;
    }
    if (osTvType == 2) {
        gCurrentViMode.unkC = 0x04651E39;
        gCurrentViMode.unk10 = 0x20C;
        gCurrentViMode.unk14 = 0xC10;
        gCurrentViMode.unk18 = 0x0C1C0C1C;
        gCurrentViMode.unk1C = 0x6C02EC;
        gCurrentViMode.unk30 = 0x2501FF;
        gCurrentViMode.unk34 = 0xE0204;
    }
    sp0 = gCurrentViMode.unk1C;
    gCurrentViMode.unk44 = gCurrentViMode.unk30;
    temp_t9 = gCurrentViMode.unk1C >> 0x10;
    sp20 = temp_t9;
    sp1C = gCurrentViMode.unk1C & 0xFFFF;
    temp_t8 = temp_t9 + arg3;
    sp20 = temp_t8;
    if (temp_t8 < 0) {
        sp20 = 0;
    }
    temp_t7_3 = sp1C + arg4;
    sp1C = temp_t7_3;
    if (temp_t7_3 < 0) {
        sp1C = 0;
    }
    gCurrentViMode.unk1C = (sp20 << 0x10) | sp1C;
    temp_t9_2 = gCurrentViMode.unk30 >> 0x10;
    sp0 = gCurrentViMode.unk30;
    sp20 = temp_t9_2;
    temp_t8_2 = temp_t9_2 + temp_a1;
    sp1C = gCurrentViMode.unk30 & 0xFFFF;
    sp20 = temp_t8_2;
    if (temp_t8_2 < 0) {
        sp20 = 0;
    }
    temp_t7_4 = sp1C + temp_a2;
    sp1C = temp_t7_4;
    if (temp_t7_4 < 0) {
        sp1C = 0;
    }
    gCurrentViMode.unk30 = (sp20 << 0x10) | sp1C;
    temp_t6 = gCurrentViMode.unk44 >> 0x10;
    sp0 = gCurrentViMode.unk44;
    sp20 = temp_t6;
    temp_t9_3 = temp_t6 + temp_a1;
    sp1C = gCurrentViMode.unk44 & 0xFFFF;
    sp20 = temp_t9_3;
    if (temp_t9_3 < 0) {
        sp20 = 0;
    }
    temp_t7_5 = sp1C + temp_a2;
    sp1C = temp_t7_5;
    if (temp_t7_5 < 0) {
        sp1C = 0;
    }
    gCurrentViMode.unk44 = (sp20 << 0x10) | sp1C;
    gCurrentViMode.unk48 = gCurrentViMode.unk34;
    if ((var_t2 != 0) && (var_a0 != 0)) {
        gCurrentViMode.unk10 = gCurrentViMode.unk10 + 1;
        if (osTvType == 2) {
            gCurrentViMode.unk14 = gCurrentViMode.unk14 + 0x40001;
        }
        if (osTvType == 2) {
            gCurrentViMode.unk18 = gCurrentViMode.unk18 + 0xFFFCFFFE;
        }
    } else {
        gCurrentViMode.unk30 = gCurrentViMode.unk30 + 0xFFFDFFFE;
        if (osTvType == 2) {
            gCurrentViMode.unk34 = gCurrentViMode.unk34 + 0xFFFCFFFE;
        }
        if (osTvType == 0) {
            gCurrentViMode.unk48 = gCurrentViMode.unk48 + 0x2FFFE;
        }
    }
    gCurrentViMode.unk24 = 0;
    var_v1_4 = 2;
    gCurrentViMode.unk20 = (arg0 << 0xA) / ((arg4 - arg3) + 0x280);
    if (var_t0 == 0) {
        var_v1_4 = 1;
    }
    var_v1_5 = 2;
    gCurrentViMode.unk28 = var_v1_4 * arg0 * 2;
    if (var_t0 == 0) {
        sp14 = 1;
    } else {
        sp14 = 2;
    }
    if (var_t2 != 0) {
        var_v1_5 = 1;
    }
    gCurrentViMode.unk2C = temp_lo;
    gCurrentViMode.unk40 = temp_lo;
    gCurrentViMode.unk3C = var_v1_5 * arg0 * 2 * sp14;
    if (var_t1 != 0) {
        if (temp_t4 < 0xB4000) {
            var_t8 = temp_lo + 0x01000000;
            gCurrentViMode.unk2C = temp_lo + 0x03000000;
        } else {
            var_t8 = gCurrentViMode.unk40 + 0x02000000;
            gCurrentViMode.unk2C = gCurrentViMode.unk2C + 0x02000000;
        }
        gCurrentViMode.unk40 = var_t8;
    }
    gCurrentViMode.unk38 = 2;
    gCurrentViMode.unk4C = 2;
    D_80048C48 = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000F78.s")
#endif

#ifdef MIPS_TO_C

void func_80001774(void *arg0) {
    if ((D_80048C48 != 0) && (scBeforeReset == 0)) {
        func_80000E9C(arg0);
    }
    if (D_80048CD0 != 0) {
        osSendMesg(D_80048CD4, 1, 0);
        if (arg0 == -1) {
            gCurrFrameBuffer = scNextFrameBuffer;
            scNextFrameBuffer = NULL;
        } else {
            goto block_12;
        }
    } else if (arg0 == -1) {
        osViSwapBuffer(scNextFrameBuffer);
        if (scNextFrameBuffer == D_80048C60) {
            D_80048C64 = 1;
        }
        gCurrFrameBuffer = scNextFrameBuffer;
        scNextFrameBuffer = NULL;
    } else {
        osViSwapBuffer(arg0);
block_12:
        gCurrFrameBuffer = arg0;
    }
    D_80048C74 = (osGetCount() - scTimestampSetFb) / 2971;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80001774.s")
#endif

#ifdef MIPS_TO_C

void func_8000189C(void *arg0) {
    OSTask *sp1C;
    OSTask *temp_a0;

    if (D_80048B8C != NULL) {
        osSpTaskYield();
        D_80048B8C->unk8 = 4;
        scPausedQueueAdd(D_80048B8C);
        arg0->unk8 = 3;
    } else {
        temp_a0 = arg0 + 0x28;
        sp1C = temp_a0;
        osSpTaskLoad(temp_a0);
        osSpTaskStartGo(temp_a0);
        arg0->unk8 = 2;
    }
    D_80048B8C = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_8000189C.s")
#endif

#ifdef MIPS_TO_C

void func_80001924(void *arg0) {
    OSTask *sp1C;
    OSTask *temp_a0;

    D_80048C70 = osGetCount();
    if ((D_80048B8C != NULL) && (D_80048B8C->unk8 == 2)) {
        osSpTaskYield();
        D_80048B8C->unk8 = 4;
        arg0->unk8 = 3;
    } else {
        temp_a0 = arg0 + 0x28;
        sp1C = temp_a0;
        osSpTaskLoad(temp_a0);
        osSpTaskStartGo(temp_a0);
        arg0->unk8 = 2;
    }
    D_80048B90 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80001924.s")
#endif

#ifdef MIPS_TO_C
/*
Decompilation failure in function func_800019BC:

Found jr instruction at m2c.s line 15, but the corresponding jump table is not provided.

Please include it in the input .s file(s), or in an additional file.
It needs to be within a data section (e.g. ".section .rodata", or
.late_rodata/.data/.sdata/.sdata2).

*/
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_800019BC.s")
#endif

#ifdef MIPS_TO_C

void func_80001E20(void) {
    s32 (*temp_v0)(void *);
    s32 var_a0;
    s32 var_s2;
    s32 var_s4;
    s32 var_s7;
    s32 var_v0;
    s32 var_v1;
    void *temp_s1;
    void *var_s0;

    var_s2 = 0;
    if (D_80048B8C != NULL) {
        var_s7 = D_80048B8C->unk4;
    } else {
        var_s7 = -1;
    }
    if (D_80048B90 != NULL) {
        var_s7 = D_80048B90->unk4;
    }
    var_s4 = -1;
    if (scPausedQueueHead != NULL) {
        var_s4 = scPausedQueueHead->unk4;
    }
    var_s0 = scMainQueueHead;
    do {
        var_v0 = -1;
        if (var_s0 != NULL) {
            var_v0 = var_s0->unk4;
        }
        var_v1 = 1;
        if (var_s4 >= var_v0) {
            var_v1 = 0;
            var_a0 = var_s4;
        } else {
            var_a0 = var_v0;
        }
        if (var_s7 >= var_a0) {
            var_s2 = 1;
        } else {
            switch (var_v1) {                       /* irregular */
                case 0:
                    var_s2 = 1;
                    osSpTaskLoad(scPausedQueueHead + 0x28);
                    osSpTaskStartGo(scPausedQueueHead + 0x28);
                    scPausedQueueHead->unk8 = 2;
                    D_80048B8C = scPausedQueueHead;
                    scPausedQueueRemove(scPausedQueueHead);
                    break;
                case 1:
                    temp_v0 = var_s0->unk14;
                    if ((temp_v0 == NULL) || (var_s2 = 1, (temp_v0(var_s0) != 0))) {
                        var_s2 = func_800019BC(var_s0);
                        temp_s1 = var_s0->unkC;
                        scMainQueueRemove(var_s0);
                        var_s0 = temp_s1;
                    }
                    break;
            }
        }
    } while (var_s2 == 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80001E20.s")
#endif

#ifdef MIPS_TO_C

void func_80001FAC(void) {
    s32 temp_a3;

    if ((D_80048BA4 == NULL) && (D_80048B9C != NULL)) {
        D_80048BA4 = D_80048B9C;
        func_80000E4C(D_80048B9C);
        D_80048BA4->unk8 = 2;
        temp_a3 = D_80048BA4->unk78;
        osDpSetNextBuffer(D_80048BA4->unk50, /* u64+0x0 */ (temp_a3 >> 0x1F), /* u64+0x4 */ temp_a3);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80001FAC.s")
#endif

#ifdef MIPS_TO_C

void func_80002014(void) {
    void *var_s0;

    var_s0 = D_80048B80;
    if (var_s0 != NULL) {
        do {
            osSendMesg(var_s0->unk4, 1, 0);
            var_s0 = var_s0->unk0;
        } while (var_s0 != NULL);
    }
    func_80001E20();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80002014.s")
#endif

#ifdef MIPS_TO_C

void func_8000206C(void) {
    u32 sp1C;
    u32 sp18;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v1;
    void *temp_v0;

    if ((D_80048B90 != NULL) && (D_80048B90->unk8 == 2)) {
        osSendMesg(D_80048B90->unk20, NULL, 0);
        D_80048B90 = NULL;
        func_80001E20();
        D_80048C78 = (osGetCount() - D_80048C70) / 2971;
        return;
    }
    temp_v0 = D_80048B8C;
    if ((temp_v0 != NULL) && (temp_v0->unk8 == 4)) {
        if (osSpTaskYielded(temp_v0 + 0x28) == 1) {
            D_80048B8C->unk8 = 5;
            scPausedQueueAdd(D_80048B8C);
            D_80048B8C = NULL;
        } else {
            D_80048B8C->unk8 = 6;
        }
        osSpTaskLoad(D_80048B90 + 0x28);
        osSpTaskStartGo(D_80048B90 + 0x28);
        D_80048B90->unk8 = 2;
    }
    if ((temp_v0 != NULL) && (temp_v0->unk18 == 1) && (temp_v0->unk8 != 5)) {
        if ((temp_v0->unk0 == 1) && (temp_v0->unk74 == 1)) {
            osInvalDCache(&D_80048C80, 8);
            D_80048B8C->unk78 = D_80048C80.unk4;
            temp_t2 = scRDPOutputBufferUsed + D_80048C80.unk4;
            sp18 = D_80048C80.unk0;
            temp_t6 = ((temp_t2 + 0xF) >> 4) * 0x10;
            temp_t8 = temp_t6 >> 0x1F;
            scRDPOutputBufferUsed = temp_t2;
            scRDPOutputBufferUsed = temp_t6;
            sp1C = D_80048C80.unk4;
            if ((sp18 >= temp_t8) && ((temp_t8 < sp18) || (temp_t6 < D_80048C80.unk4))) {
                fatal_printf(&D_8003FEA0, temp_t6, 1, &D_80048B8C);
loop_18:
                goto loop_18;
            }
            D_80048B8C->unk8 = 1;
            func_80000E14(D_80048B8C, temp_t6, 1, &D_80048B8C);
            func_80001FAC();
            goto block_20;
        }
block_20:
        D_80048B8C = NULL;
        func_80001E20();
        return;
    }
    if ((temp_v0 != NULL) && (temp_v0->unk18 == 2) && (temp_v0->unk0 == 1)) {
        temp_v0->unk8 = 6;
        temp_v1 = D_80048B8C->unk7C;
        if (!(temp_v1 & 2)) {
            D_80048B8C->unk7C = temp_v1 | 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_8000206C.s")
#endif

#ifdef MIPS_TO_C

void func_800022DC(void) {
    ? *temp_a3;
    OSMesgQueue *temp_a0;
    OSMesgQueue *temp_a0_2;
    OSMesgQueue *temp_a0_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    void *temp_v0;
    void *temp_v0_2;

    temp_v0 = D_80048B8C;
    if ((temp_v0 != NULL) && (temp_v0->unk18 == 2)) {
        if (temp_v0->unk0 == 1) {
            var_a0 = temp_v0->unk6C;
            if (var_a0 != 0) {
                if (scPostProcessFunc != NULL) {
                    if (var_a0 == -1) {
                        scPostProcessFunc(scNextFrameBuffer);
                        var_a0 = D_80048B8C->unk6C;
                    } else {
                        scPostProcessFunc(var_a0);
                        var_a0 = D_80048B8C->unk6C;
                    }
                }
                func_80001774(var_a0);
            }
            temp_a0 = temp_v0->unk20;
            if (temp_a0 != NULL) {
                osSendMesg(temp_a0, temp_v0->unk1C, 0);
            }
            if (temp_v0->unk8 == 4) {
                osSpTaskLoad(D_80048B90 + 0x28);
                osSpTaskStartGo(D_80048B90 + 0x28);
                D_80048B90->unk8 = 2;
            }
        }
        D_80048B8C = NULL;
        func_80001E20();
        return;
    }
    temp_v0_2 = D_80048BA4;
    if (temp_v0_2 != NULL) {
        var_a0_2 = temp_v0_2->unk6C;
        if (var_a0_2 != 0) {
            if (scPostProcessFunc != NULL) {
                if (var_a0_2 == -1) {
                    scPostProcessFunc(scNextFrameBuffer, &scPausedQueueHead);
                    var_a0_2 = D_80048BA4->unk6C;
                } else {
                    scPostProcessFunc(var_a0_2, &scPausedQueueHead);
                    var_a0_2 = D_80048BA4->unk6C;
                }
            }
            func_80001774(var_a0_2);
        }
        temp_a0_2 = temp_v0_2->unk20;
        if (temp_a0_2 != NULL) {
            osSendMesg(temp_a0_2, temp_v0_2->unk1C, 0);
        }
        D_80048BA4 = NULL;
        func_80001FAC();
        return;
    }
    temp_a3 = scPausedQueueHead;
    if ((temp_a3 != NULL) && (temp_a3->unk18 == 2)) {
        if (temp_a3->unk0 == 1) {
            var_a0_3 = temp_a3->unk6C;
            if (var_a0_3 != 0) {
                if (scPostProcessFunc != NULL) {
                    if (var_a0_3 == -1) {
                        scPostProcessFunc(scNextFrameBuffer, temp_a3);
                        var_a0_3 = scPausedQueueHead->unk6C;
                    } else {
                        scPostProcessFunc(var_a0_3, temp_a3);
                        var_a0_3 = scPausedQueueHead->unk6C;
                    }
                }
                func_80001774(var_a0_3);
            }
            temp_a0_3 = temp_a3->unk20;
            if (temp_a0_3 != NULL) {
                osSendMesg(temp_a0_3, temp_a3->unk1C, 0);
            }
            scPausedQueueRemove(temp_a3);
        }
        func_80001E20();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_800022DC.s")
#endif

#ifdef MIPS_TO_C

void func_8000256C(void *arg0) {
    arg0->unk8 = 1;
    scMainQueueAdd();
    func_80001E20();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_8000256C.s")
#endif

#ifdef MIPS_TO_C

void scThreadMain(void *arg) {
    void *sp84;
    ? sp30;
    u8 temp_t4;
    u8 temp_t4_2;
    u8 temp_t5_2;
    u8 temp_t6_2;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t9_3;
    void *temp_t5;
    void *temp_t6;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t9;
    void *temp_t9_2;

    D_80048B80 = 0;
    scPausedQueueHead = 0;
    scPausedQueueTail = 0;
    D_80048B90 = 0;
    D_80048B8C = 0;
    scMainQueueTail = 0;
    scMainQueueHead = 0;
    D_80048BA0 = 0;
    D_80048B9C = 0;
    D_80048BA4 = 0;
    D_80048C48 = 0;
    D_80048C60 = 0;
    scNextFrameBuffer = 0;
    gCurrFrameBuffer = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    D_80048CE0 = -1;
    switch (osTvType) {                             /* irregular */
        case 1:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeNtscLan1, 0x48);
            temp_t8 = &sp30 + 0x48;
            temp_t8->unk0 = osViModeNtscLan1.fldRegs[1].vBurst.unk0;
            temp_t8->unk4 = osViModeNtscLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t5 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t5->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t5->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7 = &gCurrentViMode + 0x48;
            temp_t8_2 = &sp30 + 0x48;
            temp_t7->unk0 = temp_t8_2->unk0;
            temp_t7->unk4 = temp_t8_2->unk4;
            break;
        case 0:
            M2C_MEMCPY_ALIGNED(&sp30, &D_8003FDC0, 0x48);
            temp_t7_2 = &sp30 + 0x48;
            temp_t9 = &D_8003FDC0 + 0x48;
            temp_t7_2->unk0 = temp_t9->unk0;
            temp_t7_2->unk4 = temp_t9->unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t9_2 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t9_2->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t9_2->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t8_3 = &gCurrentViMode + 0x48;
            temp_t7_3 = &sp30 + 0x48;
            temp_t8_3->unk0 = temp_t7_3->unk0;
            temp_t8_3->unk4 = temp_t7_3->unk4;
            break;
        case 2:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeMpalLan1, 0x48);
            temp_t8_4 = &sp30 + 0x48;
            temp_t8_4->unk0 = osViModeMpalLan1.fldRegs[1].vBurst.unk0;
            temp_t8_4->unk4 = osViModeMpalLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t6 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7_4 = &gCurrentViMode + 0x48;
            temp_t8_5 = &sp30 + 0x48;
            temp_t7_4->unk0 = temp_t8_5->unk0;
            temp_t7_4->unk4 = temp_t8_5->unk4;
            break;
    }
    D_80048BA8.comRegs.ctrl = 0x10016;
    D_80048BFC = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);
    temp_t7_5 = D_80048C7C.unk0 | 0x80;
    temp_t6_2 = temp_t7_5 & 0xBF;
    D_80048C7C.unk0 = temp_t7_5;
    temp_t9_3 = temp_t6_2 & 0xDF;
    D_80048C7C.unk0 = temp_t6_2;
    temp_t5_2 = temp_t9_3 & 0xEF;
    D_80048C7C.unk0 = temp_t9_3;
    temp_t4 = temp_t5_2 | 8;
    D_80048C7C.unk0 = temp_t5_2;
    D_80048C7C.unk0 = temp_t4;
    temp_t7_6 = temp_t4 & 0xFB;
    D_80048C7C.unk0 = temp_t7_6;
    temp_t4_2 = temp_t7_6 | 2;
    D_80048C7C.unk0 = temp_t4_2;
    D_80048C7C.unk0 = temp_t4_2 | 1;
    D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
    osCreateMesgQueue(&scTaskMQ, &D_80048C98, 8);
    osViSetEvent(&scTaskMQ, 1, 1);
    osSetEventMesg(4, &scTaskMQ, 2);
    osSetEventMesg(9, &scTaskMQ, 3);
    osSetEventMesg(0xE, &scTaskMQ, 0x63);
    osSendMesg(&gThreadInitializedMQ, 1, 0);
loop_8:
    osRecvMesg(&scTaskMQ, &sp84, 1);
    if (sp84 == 1) {
        func_80002014(sp84);
        goto loop_8;
    }
    if (sp84 == 2) {
        func_8000206C(sp84);
        if ((scBeforeReset == 1) && (D_80048CE0 == -1)) {
            D_80048CE0 = osAfterPreNMI();
        }
        goto loop_8;
    }
    if (sp84 == 3) {
        func_800022DC(sp84);
        goto loop_8;
    }
    if (sp84 == 0x63) {
        if (scPreNMIProc != NULL) {
            scPreNMIProc(sp84);
        }
        goto loop_8;
    }
    if (scBeforeReset != 0) {
        goto loop_8;
    }
    func_8000256C(sp84);
    goto loop_8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scThreadMain.s")
#endif

#ifdef MIPS_TO_C

void scThreadMain(void *arg) {
    void *sp84;
    ? sp30;
    u8 temp_t4;
    u8 temp_t4_2;
    u8 temp_t5_2;
    u8 temp_t6_2;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t9_3;
    void *temp_t5;
    void *temp_t6;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t9;
    void *temp_t9_2;

    D_80048B80 = 0;
    scPausedQueueHead = 0;
    scPausedQueueTail = 0;
    D_80048B90 = 0;
    D_80048B8C = 0;
    scMainQueueTail = 0;
    scMainQueueHead = 0;
    D_80048BA0 = 0;
    D_80048B9C = 0;
    D_80048BA4 = 0;
    D_80048C48 = 0;
    D_80048C60 = 0;
    scNextFrameBuffer = 0;
    gCurrFrameBuffer = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    D_80048CE0 = -1;
    switch (osTvType) {                             /* irregular */
        case 1:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeNtscLan1, 0x48);
            temp_t8 = &sp30 + 0x48;
            temp_t8->unk0 = osViModeNtscLan1.fldRegs[1].vBurst.unk0;
            temp_t8->unk4 = osViModeNtscLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t5 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t5->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t5->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7 = &gCurrentViMode + 0x48;
            temp_t8_2 = &sp30 + 0x48;
            temp_t7->unk0 = temp_t8_2->unk0;
            temp_t7->unk4 = temp_t8_2->unk4;
            break;
        case 0:
            M2C_MEMCPY_ALIGNED(&sp30, &D_8003FDC0, 0x48);
            temp_t7_2 = &sp30 + 0x48;
            temp_t9 = &D_8003FDC0 + 0x48;
            temp_t7_2->unk0 = temp_t9->unk0;
            temp_t7_2->unk4 = temp_t9->unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t9_2 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t9_2->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t9_2->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t8_3 = &gCurrentViMode + 0x48;
            temp_t7_3 = &sp30 + 0x48;
            temp_t8_3->unk0 = temp_t7_3->unk0;
            temp_t8_3->unk4 = temp_t7_3->unk4;
            break;
        case 2:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeMpalLan1, 0x48);
            temp_t8_4 = &sp30 + 0x48;
            temp_t8_4->unk0 = osViModeMpalLan1.fldRegs[1].vBurst.unk0;
            temp_t8_4->unk4 = osViModeMpalLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t6 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7_4 = &gCurrentViMode + 0x48;
            temp_t8_5 = &sp30 + 0x48;
            temp_t7_4->unk0 = temp_t8_5->unk0;
            temp_t7_4->unk4 = temp_t8_5->unk4;
            break;
    }
    D_80048BA8.comRegs.ctrl = 0x10016;
    D_80048BFC = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);
    temp_t7_5 = D_80048C7C.unk0 | 0x80;
    temp_t6_2 = temp_t7_5 & 0xBF;
    D_80048C7C.unk0 = temp_t7_5;
    temp_t9_3 = temp_t6_2 & 0xDF;
    D_80048C7C.unk0 = temp_t6_2;
    temp_t5_2 = temp_t9_3 & 0xEF;
    D_80048C7C.unk0 = temp_t9_3;
    temp_t4 = temp_t5_2 | 8;
    D_80048C7C.unk0 = temp_t5_2;
    D_80048C7C.unk0 = temp_t4;
    temp_t7_6 = temp_t4 & 0xFB;
    D_80048C7C.unk0 = temp_t7_6;
    temp_t4_2 = temp_t7_6 | 2;
    D_80048C7C.unk0 = temp_t4_2;
    D_80048C7C.unk0 = temp_t4_2 | 1;
    D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
    osCreateMesgQueue(&scTaskMQ, &D_80048C98, 8);
    osViSetEvent(&scTaskMQ, 1, 1);
    osSetEventMesg(4, &scTaskMQ, 2);
    osSetEventMesg(9, &scTaskMQ, 3);
    osSetEventMesg(0xE, &scTaskMQ, 0x63);
    osSendMesg(&gThreadInitializedMQ, 1, 0);
loop_8:
    osRecvMesg(&scTaskMQ, &sp84, 1);
    if (sp84 == 1) {
        func_80002014(sp84);
        goto loop_8;
    }
    if (sp84 == 2) {
        func_8000206C(sp84);
        if ((scBeforeReset == 1) && (D_80048CE0 == -1)) {
            D_80048CE0 = osAfterPreNMI();
        }
        goto loop_8;
    }
    if (sp84 == 3) {
        func_800022DC(sp84);
        goto loop_8;
    }
    if (sp84 == 0x63) {
        if (scPreNMIProc != NULL) {
            scPreNMIProc(sp84);
        }
        goto loop_8;
    }
    if (scBeforeReset != 0) {
        goto loop_8;
    }
    func_8000256C(sp84);
    goto loop_8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scPreNMIDefault.s")
#endif

#ifdef MIPS_TO_C

void scThreadMain(void *arg) {
    void *sp84;
    ? sp30;
    u8 temp_t4;
    u8 temp_t4_2;
    u8 temp_t5_2;
    u8 temp_t6_2;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t9_3;
    void *temp_t5;
    void *temp_t6;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t9;
    void *temp_t9_2;

    D_80048B80 = 0;
    scPausedQueueHead = 0;
    scPausedQueueTail = 0;
    D_80048B90 = 0;
    D_80048B8C = 0;
    scMainQueueTail = 0;
    scMainQueueHead = 0;
    D_80048BA0 = 0;
    D_80048B9C = 0;
    D_80048BA4 = 0;
    D_80048C48 = 0;
    D_80048C60 = 0;
    scNextFrameBuffer = 0;
    gCurrFrameBuffer = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    D_80048CE0 = -1;
    switch (osTvType) {                             /* irregular */
        case 1:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeNtscLan1, 0x48);
            temp_t8 = &sp30 + 0x48;
            temp_t8->unk0 = osViModeNtscLan1.fldRegs[1].vBurst.unk0;
            temp_t8->unk4 = osViModeNtscLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t5 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t5->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t5->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7 = &gCurrentViMode + 0x48;
            temp_t8_2 = &sp30 + 0x48;
            temp_t7->unk0 = temp_t8_2->unk0;
            temp_t7->unk4 = temp_t8_2->unk4;
            break;
        case 0:
            M2C_MEMCPY_ALIGNED(&sp30, &D_8003FDC0, 0x48);
            temp_t7_2 = &sp30 + 0x48;
            temp_t9 = &D_8003FDC0 + 0x48;
            temp_t7_2->unk0 = temp_t9->unk0;
            temp_t7_2->unk4 = temp_t9->unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t9_2 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t9_2->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t9_2->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t8_3 = &gCurrentViMode + 0x48;
            temp_t7_3 = &sp30 + 0x48;
            temp_t8_3->unk0 = temp_t7_3->unk0;
            temp_t8_3->unk4 = temp_t7_3->unk4;
            break;
        case 2:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeMpalLan1, 0x48);
            temp_t8_4 = &sp30 + 0x48;
            temp_t8_4->unk0 = osViModeMpalLan1.fldRegs[1].vBurst.unk0;
            temp_t8_4->unk4 = osViModeMpalLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t6 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7_4 = &gCurrentViMode + 0x48;
            temp_t8_5 = &sp30 + 0x48;
            temp_t7_4->unk0 = temp_t8_5->unk0;
            temp_t7_4->unk4 = temp_t8_5->unk4;
            break;
    }
    D_80048BA8.comRegs.ctrl = 0x10016;
    D_80048BFC = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);
    temp_t7_5 = D_80048C7C.unk0 | 0x80;
    temp_t6_2 = temp_t7_5 & 0xBF;
    D_80048C7C.unk0 = temp_t7_5;
    temp_t9_3 = temp_t6_2 & 0xDF;
    D_80048C7C.unk0 = temp_t6_2;
    temp_t5_2 = temp_t9_3 & 0xEF;
    D_80048C7C.unk0 = temp_t9_3;
    temp_t4 = temp_t5_2 | 8;
    D_80048C7C.unk0 = temp_t5_2;
    D_80048C7C.unk0 = temp_t4;
    temp_t7_6 = temp_t4 & 0xFB;
    D_80048C7C.unk0 = temp_t7_6;
    temp_t4_2 = temp_t7_6 | 2;
    D_80048C7C.unk0 = temp_t4_2;
    D_80048C7C.unk0 = temp_t4_2 | 1;
    D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
    osCreateMesgQueue(&scTaskMQ, &D_80048C98, 8);
    osViSetEvent(&scTaskMQ, 1, 1);
    osSetEventMesg(4, &scTaskMQ, 2);
    osSetEventMesg(9, &scTaskMQ, 3);
    osSetEventMesg(0xE, &scTaskMQ, 0x63);
    osSendMesg(&gThreadInitializedMQ, 1, 0);
loop_8:
    osRecvMesg(&scTaskMQ, &sp84, 1);
    if (sp84 == 1) {
        func_80002014(sp84);
        goto loop_8;
    }
    if (sp84 == 2) {
        func_8000206C(sp84);
        if ((scBeforeReset == 1) && (D_80048CE0 == -1)) {
            D_80048CE0 = osAfterPreNMI();
        }
        goto loop_8;
    }
    if (sp84 == 3) {
        func_800022DC(sp84);
        goto loop_8;
    }
    if (sp84 == 0x63) {
        if (scPreNMIProc != NULL) {
            scPreNMIProc(sp84);
        }
        goto loop_8;
    }
    if (scBeforeReset != 0) {
        goto loop_8;
    }
    func_8000256C(sp84);
    goto loop_8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scSetPreNMIProc.s")
#endif

#ifdef MIPS_TO_C

void scThreadMain(void *arg) {
    void *sp84;
    ? sp30;
    u8 temp_t4;
    u8 temp_t4_2;
    u8 temp_t5_2;
    u8 temp_t6_2;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t9_3;
    void *temp_t5;
    void *temp_t6;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t9;
    void *temp_t9_2;

    D_80048B80 = 0;
    scPausedQueueHead = 0;
    scPausedQueueTail = 0;
    D_80048B90 = 0;
    D_80048B8C = 0;
    scMainQueueTail = 0;
    scMainQueueHead = 0;
    D_80048BA0 = 0;
    D_80048B9C = 0;
    D_80048BA4 = 0;
    D_80048C48 = 0;
    D_80048C60 = 0;
    scNextFrameBuffer = 0;
    gCurrFrameBuffer = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    D_80048CE0 = -1;
    switch (osTvType) {                             /* irregular */
        case 1:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeNtscLan1, 0x48);
            temp_t8 = &sp30 + 0x48;
            temp_t8->unk0 = osViModeNtscLan1.fldRegs[1].vBurst.unk0;
            temp_t8->unk4 = osViModeNtscLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t5 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t5->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t5->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7 = &gCurrentViMode + 0x48;
            temp_t8_2 = &sp30 + 0x48;
            temp_t7->unk0 = temp_t8_2->unk0;
            temp_t7->unk4 = temp_t8_2->unk4;
            break;
        case 0:
            M2C_MEMCPY_ALIGNED(&sp30, &D_8003FDC0, 0x48);
            temp_t7_2 = &sp30 + 0x48;
            temp_t9 = &D_8003FDC0 + 0x48;
            temp_t7_2->unk0 = temp_t9->unk0;
            temp_t7_2->unk4 = temp_t9->unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t9_2 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t9_2->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t9_2->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t8_3 = &gCurrentViMode + 0x48;
            temp_t7_3 = &sp30 + 0x48;
            temp_t8_3->unk0 = temp_t7_3->unk0;
            temp_t8_3->unk4 = temp_t7_3->unk4;
            break;
        case 2:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeMpalLan1, 0x48);
            temp_t8_4 = &sp30 + 0x48;
            temp_t8_4->unk0 = osViModeMpalLan1.fldRegs[1].vBurst.unk0;
            temp_t8_4->unk4 = osViModeMpalLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t6 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7_4 = &gCurrentViMode + 0x48;
            temp_t8_5 = &sp30 + 0x48;
            temp_t7_4->unk0 = temp_t8_5->unk0;
            temp_t7_4->unk4 = temp_t8_5->unk4;
            break;
    }
    D_80048BA8.comRegs.ctrl = 0x10016;
    D_80048BFC = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);
    temp_t7_5 = D_80048C7C.unk0 | 0x80;
    temp_t6_2 = temp_t7_5 & 0xBF;
    D_80048C7C.unk0 = temp_t7_5;
    temp_t9_3 = temp_t6_2 & 0xDF;
    D_80048C7C.unk0 = temp_t6_2;
    temp_t5_2 = temp_t9_3 & 0xEF;
    D_80048C7C.unk0 = temp_t9_3;
    temp_t4 = temp_t5_2 | 8;
    D_80048C7C.unk0 = temp_t5_2;
    D_80048C7C.unk0 = temp_t4;
    temp_t7_6 = temp_t4 & 0xFB;
    D_80048C7C.unk0 = temp_t7_6;
    temp_t4_2 = temp_t7_6 | 2;
    D_80048C7C.unk0 = temp_t4_2;
    D_80048C7C.unk0 = temp_t4_2 | 1;
    D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
    osCreateMesgQueue(&scTaskMQ, &D_80048C98, 8);
    osViSetEvent(&scTaskMQ, 1, 1);
    osSetEventMesg(4, &scTaskMQ, 2);
    osSetEventMesg(9, &scTaskMQ, 3);
    osSetEventMesg(0xE, &scTaskMQ, 0x63);
    osSendMesg(&gThreadInitializedMQ, 1, 0);
loop_8:
    osRecvMesg(&scTaskMQ, &sp84, 1);
    if (sp84 == 1) {
        func_80002014(sp84);
        goto loop_8;
    }
    if (sp84 == 2) {
        func_8000206C(sp84);
        if ((scBeforeReset == 1) && (D_80048CE0 == -1)) {
            D_80048CE0 = osAfterPreNMI();
        }
        goto loop_8;
    }
    if (sp84 == 3) {
        func_800022DC(sp84);
        goto loop_8;
    }
    if (sp84 == 0x63) {
        if (scPreNMIProc != NULL) {
            scPreNMIProc(sp84);
        }
        goto loop_8;
    }
    if (scBeforeReset != 0) {
        goto loop_8;
    }
    func_8000256C(sp84);
    goto loop_8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scSetPostProcessFunc.s")
#endif

#ifdef MIPS_TO_C

void scThreadMain(void *arg) {
    void *sp84;
    ? sp30;
    u8 temp_t4;
    u8 temp_t4_2;
    u8 temp_t5_2;
    u8 temp_t6_2;
    u8 temp_t7_5;
    u8 temp_t7_6;
    u8 temp_t9_3;
    void *temp_t5;
    void *temp_t6;
    void *temp_t7;
    void *temp_t7_2;
    void *temp_t7_3;
    void *temp_t7_4;
    void *temp_t8;
    void *temp_t8_2;
    void *temp_t8_3;
    void *temp_t8_4;
    void *temp_t8_5;
    void *temp_t9;
    void *temp_t9_2;

    D_80048B80 = 0;
    scPausedQueueHead = 0;
    scPausedQueueTail = 0;
    D_80048B90 = 0;
    D_80048B8C = 0;
    scMainQueueTail = 0;
    scMainQueueHead = 0;
    D_80048BA0 = 0;
    D_80048B9C = 0;
    D_80048BA4 = 0;
    D_80048C48 = 0;
    D_80048C60 = 0;
    scNextFrameBuffer = 0;
    gCurrFrameBuffer = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    D_80048CE0 = -1;
    switch (osTvType) {                             /* irregular */
        case 1:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeNtscLan1, 0x48);
            temp_t8 = &sp30 + 0x48;
            temp_t8->unk0 = osViModeNtscLan1.fldRegs[1].vBurst.unk0;
            temp_t8->unk4 = osViModeNtscLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t5 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t5->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t5->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7 = &gCurrentViMode + 0x48;
            temp_t8_2 = &sp30 + 0x48;
            temp_t7->unk0 = temp_t8_2->unk0;
            temp_t7->unk4 = temp_t8_2->unk4;
            break;
        case 0:
            M2C_MEMCPY_ALIGNED(&sp30, &D_8003FDC0, 0x48);
            temp_t7_2 = &sp30 + 0x48;
            temp_t9 = &D_8003FDC0 + 0x48;
            temp_t7_2->unk0 = temp_t9->unk0;
            temp_t7_2->unk4 = temp_t9->unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t9_2 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t9_2->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t9_2->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t8_3 = &gCurrentViMode + 0x48;
            temp_t7_3 = &sp30 + 0x48;
            temp_t8_3->unk0 = temp_t7_3->unk0;
            temp_t8_3->unk4 = temp_t7_3->unk4;
            break;
        case 2:
            M2C_MEMCPY_ALIGNED(&sp30, &osViModeMpalLan1, 0x48);
            temp_t8_4 = &sp30 + 0x48;
            temp_t8_4->unk0 = osViModeMpalLan1.fldRegs[1].vBurst.unk0;
            temp_t8_4->unk4 = osViModeMpalLan1.fldRegs[1].vBurst.unk4;
            M2C_MEMCPY_ALIGNED(&D_80048BA8, &sp30, 0x48);
            temp_t6 = &sp30 + 0x48;
            D_80048BA8.fldRegs[1].vBurst.unk0 = temp_t6->unk0;
            D_80048BA8.fldRegs[1].vBurst.unk4 = temp_t6->unk4;
            M2C_MEMCPY_ALIGNED(&gCurrentViMode, &sp30, 0x48);
            temp_t7_4 = &gCurrentViMode + 0x48;
            temp_t8_5 = &sp30 + 0x48;
            temp_t7_4->unk0 = temp_t8_5->unk0;
            temp_t7_4->unk4 = temp_t8_5->unk4;
            break;
    }
    D_80048BA8.comRegs.ctrl = 0x10016;
    D_80048BFC = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);
    temp_t7_5 = D_80048C7C.unk0 | 0x80;
    temp_t6_2 = temp_t7_5 & 0xBF;
    D_80048C7C.unk0 = temp_t7_5;
    temp_t9_3 = temp_t6_2 & 0xDF;
    D_80048C7C.unk0 = temp_t6_2;
    temp_t5_2 = temp_t9_3 & 0xEF;
    D_80048C7C.unk0 = temp_t9_3;
    temp_t4 = temp_t5_2 | 8;
    D_80048C7C.unk0 = temp_t5_2;
    D_80048C7C.unk0 = temp_t4;
    temp_t7_6 = temp_t4 & 0xFB;
    D_80048C7C.unk0 = temp_t7_6;
    temp_t4_2 = temp_t7_6 | 2;
    D_80048C7C.unk0 = temp_t4_2;
    D_80048C7C.unk0 = temp_t4_2 | 1;
    D_80048C7C.unk1 = D_80048C7C.unk1 | 0x80;
    osCreateMesgQueue(&scTaskMQ, &D_80048C98, 8);
    osViSetEvent(&scTaskMQ, 1, 1);
    osSetEventMesg(4, &scTaskMQ, 2);
    osSetEventMesg(9, &scTaskMQ, 3);
    osSetEventMesg(0xE, &scTaskMQ, 0x63);
    osSendMesg(&gThreadInitializedMQ, 1, 0);
loop_8:
    osRecvMesg(&scTaskMQ, &sp84, 1);
    if (sp84 == 1) {
        func_80002014(sp84);
        goto loop_8;
    }
    if (sp84 == 2) {
        func_8000206C(sp84);
        if ((scBeforeReset == 1) && (D_80048CE0 == -1)) {
            D_80048CE0 = osAfterPreNMI();
        }
        goto loop_8;
    }
    if (sp84 == 3) {
        func_800022DC(sp84);
        goto loop_8;
    }
    if (sp84 == 0x63) {
        if (scPreNMIProc != NULL) {
            scPreNMIProc(sp84);
        }
        goto loop_8;
    }
    if (scBeforeReset != 0) {
        goto loop_8;
    }
    func_8000256C(sp84);
    goto loop_8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scRemovePostProcessFunc.s")
#endif
