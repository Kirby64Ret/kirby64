#include <PR/gbi.h>
#include <PR/gs2dex.h>

#include "common.h"
#include "localsched.h"
#include "object_manager.h"
#include "gtl.h"

// bss
extern u32 gtlCurrentContextID;
extern struct DynamicBuffer gDynamicBuffer2;
extern struct DynamicBuffer gtlGfxHeapList[];
extern struct DLBuffer gDLBuffers[2][4];
extern Gfx *gtlPrevDLHeads[];
extern Gfx *gtlRDPResetList;
extern u16 D_8004A448;
extern u32 scDPOutputBuffSize;

extern u32 D_8003DCA0; // gtl rdp output type
extern void *gtlDPOutputBuffer; // gtl rdp output buff
extern u32 gtlDPOutputBufferSize; // gtl rdp output buff len

extern u32 gtlNearClipDisabled;

// SCTaskGfx* gtlGfxTasksBufferStart[2];
// SCTaskGfx* gtlGfxTasksBufferPtr[2];
// SCTaskGfx* gtlGfxTasksBufferEnd[2];
extern SCTaskGfx *gtlGfxTaskBufferStarts[2];
extern SCTaskGfx *gtlGfxTaskBufferPtrs[2];
extern SCTaskGfx *gtlGfxTaskBufferEnds[2];
extern SCTaskGfxEnd *gtlGfxEndTasks[];

extern OSMesgQueue D_80049320;

extern s32 gtlNumContexts;
extern SCTaskVi *gtlVideoSettingsTasks[];

extern void *gtlSegment0FBase;

extern OSMesgQueue gtlResetMQ;
extern OSMesg D_80049338[1];

extern SCClient gtlSchedClient;
extern OSMesgQueue gtlGameTickMQ;
extern OSMesg gtlGameTickMesgs[4];

extern OSMesgQueue D_80049320;
extern OSMesg D_80049310[3];

extern OSMesgQueue D_800492E8;
extern OSMesg D_800492E0[1];

extern u16 gtlUpdateInterval, gtlDrawInterval;
extern u16 D_8004A444, D_8004A446;

extern u32 D_800492DC;


#ifdef MIPS_TO_C
void func_80005350(? *arg0) {
    if (arg0 != NULL) {
        D_8004A48C = arg0;
        return;
    }
    D_8004A48C = &scCheckGfxTaskDefault;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005350.s")
#endif

void gtlSetSegment0F(Gfx **arg0) {
    gtlSegment0FBase = &(*arg0)->words.w1;
    gSPSegment((*arg0)++, 0x0F, 0x00000000);
}

void gtlDisableNearClipping(s32 disable) {
    gtlNearClipDisabled = disable;
}

#ifdef MIPS_TO_C
void func_800053B4(s16 arg0, s16 arg1) {
    D_8004A444 = arg0;
    D_8004A446 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800053B4.s")
#endif

void gtlSetupHeap(void *start, u32 size) {
    mlSetup(&gDynamicBuffer2, 0x10000, start, size);
}

void gtlMalloc(u32 size, u32 alignment) {
    mlAlloc(&gDynamicBuffer2, size, alignment);
}

void gtlResetHeap(void) {
    gDynamicBuffer1.id = gtlGfxHeapList[gtlCurrentContextID].id;
    gDynamicBuffer1.poolStart = gtlGfxHeapList[gtlCurrentContextID].poolStart;
    gDynamicBuffer1.poolEnd = gtlGfxHeapList[gtlCurrentContextID].poolEnd;
    gDynamicBuffer1.top = gtlGfxHeapList[gtlCurrentContextID].top;

    mlReset(&gDynamicBuffer1);
}

void gtlSetDLBuffers(struct DLBuffer (*buffers)[4]) {
    s32 i, j;

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 4; j++) {
            gDLBuffers[i][j] = buffers[i][j];
        }
    }
}

void gtlInitDisps(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        gDisplayListHeads[i] = gtlPrevDLHeads[i] = gDLBuffers[gtlCurrentContextID][i].start;
    }

    for (i = 0; i < 4; i++) {
        if (gDLBuffers[gtlCurrentContextID][i].length != 0) {
            // load "reset rdp" display list in the beginning and use reference to it every time we reload ucode
            gtlRDPResetList = gDisplayListHeads[i];
            reset_rdp_settings(&gDisplayListHeads[i]);
            gSPEndDisplayList(gDisplayListHeads[i]++);
            gtlPrevDLHeads[i] = gDisplayListHeads[i];
            break;
        }
    }

    D_8004A448 = FALSE;
}

#ifdef MIPS_TO_C
void func_8000561C(void) {
    Gfx **var_a0;
    Gfx *temp_t0;
    s32 temp_a3;
    s32 temp_t9;
    s32 var_v1;
    void *var_v0;

    var_v0 = (gtlCurrentContextID << 5) + &gDLBuffers;
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

void gtlSetDPOutputBuff(void* buffer, s32 size) {
    SCTaskRDPBuffer task;

    task.info.type = SC_TASK_TYPE_RDP_BUFFER;
    task.info.priority = 50;
    task.buffer = buffer;
    task.size = size;
    scExecuteBlocking(&task);
    if ((u32)&scDPOutputBuffSize & 7) {
        fatal_printf("bad addr sc_rdp_output_len = %x\n", &scDPOutputBuffSize);
        while (1);
    }
}

void func_80005734(s32 type, void* buffer, u32 size) {
    D_8003DCA0 = type;
    gtlDPOutputBuffer = buffer;
    gtlDPOutputBufferSize = size;
    if ((type == 2) || (type == 1)) {
        if (size == 0) {
            fatal_printf("gtl : Buffer size for RDP is zero !!\n");
            while (1);
        }
    }
    if (type == 1) {
        gtlSetDPOutputBuff(buffer, size);
    }
}

s32 gtlGetSCTaskGfx(void) {
    SCTaskGfx* task;

    if (gtlGfxTaskBufferStarts[gtlCurrentContextID] == NULL) {
        fatal_printf("gtl : not defined SCTaskGfx\n");
        while (1);
    }
    if (gtlGfxTaskBufferPtrs[gtlCurrentContextID] == gtlGfxTaskBufferEnds[gtlCurrentContextID]) {
        fatal_printf("gtl : couldn't get SCTaskGfx\n");
        while (1);
    }
    task = gtlGfxTaskBufferPtrs[gtlCurrentContextID]++;
    return task;
}

void gtlInitTaskBuffers(SCTaskGfx* gfxTasks, s32 taskBufferSize, SCTaskGfxEnd* gfxEndTasks, SCTaskVi* viTasks) {
    s32 i;
    for (i = 0; i < gtlNumContexts; i++) {
        gtlGfxTaskBufferStarts[i] = (SCTaskGfx*) ((uintptr_t) (gfxTasks) + taskBufferSize * sizeof(SCTaskGfx) * i);
        gtlGfxTaskBufferPtrs[i] = (SCTaskGfx*) ((uintptr_t) (gfxTasks) + taskBufferSize * sizeof(SCTaskGfx) * i);
        gtlGfxTaskBufferEnds[i] = (SCTaskGfx*) ((uintptr_t) (gfxTasks) + taskBufferSize * sizeof(SCTaskGfx) * (i + 1));
        gtlGfxEndTasks[i] = &gfxEndTasks[i];
        gtlVideoSettingsTasks[i] = &viTasks[i];
    }
}

void gtlScheduleGfxEnd(SCTaskGfxEnd *task, void *fb, s32 retVal, OSMesgQueue *mq) {
    task->info.type = SC_TASK_TYPE_GFX_END;
    task->info.priority = 100;
    task->info.fnCheck = NULL;
    task->info.mq = mq;
    task->info.retVal = retVal;
    task->fb = fb;
    task->taskId = gtlCurrentContextID;
    osSendMesg(&scTaskMQ, task, 0);
}

void gtlEndCurrentGfxTask(void) {
    SCTaskGfxEnd *task;

    task = gtlGfxEndTasks[gtlCurrentContextID];
    if (task == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    gtlScheduleGfxEnd(task, -1, gtlCurrentContextID, &D_80049320);
    gtlGfxTaskBufferPtrs[gtlCurrentContextID] = gtlGfxTaskBufferStarts[gtlCurrentContextID];
}

void gtlReset(void) {
    OSMesg *msg;
    SCTaskGfxEnd *task = gtlGfxEndTasks[gtlCurrentContextID];

    if (task == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    gtlScheduleGfxEnd(task, NULL, gtlCurrentContextID, &gtlResetMQ);
    osRecvMesg(&gtlResetMQ, &msg, 1);
    gtlGfxTaskBufferPtrs[gtlCurrentContextID] = gtlGfxTaskBufferStarts[gtlCurrentContextID];
    gtlResetHeap();
    gtlInitDisps();
}

#ifdef MIPS_TO_C
void gtlScheduleGfxTask(void *arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    s32 temp_v1;
    void *temp_v0;

    arg0->unk0 = 1;
    arg0->unk4 = 0x32;
    if (gtlSegment0FBase != 0) {
        arg0->unk14 = D_8004A48C;
        arg0->unk68 = gtlSegment0FBase;
        gtlSegment0FBase = 0;
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
    temp_v0 = (arg2 * 8) + &gtlUcodeList;
    arg0->unk80 = gtlCurrentContextID;
    temp_v1 = temp_v0->unk0;
    if (temp_v1 == 0) {
        fatal_printf("gtl : ucode isn't included  kind = %d\n", arg2);
loop_8:
        goto loop_8;
    }
    arg0->unk38 = temp_v1;
    arg0->data = 0x1000;
    arg0->unk44 = 0x800;
    arg0->unk48 = ((&gtlDRAMStack + 0xF) >> 4) * 0x10;
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
    arg0->unk60 = ((&gtlDPYieldBuffer + 0xF) >> 4) * 0x10;
    arg0->unk64 = 0xC00;
    arg0->unk58 = arg4;
    osWritebackDCacheAll();
    osSendMesg(&scTaskMQ, arg0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlScheduleGfxTask.s")
#endif

#ifdef MIPS_TO_C
s32 gtlGetL3DEX2Index(void) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlGetL3DEX2Index.s")
#endif

#ifdef MIPS_TO_C
void func_80005CC0(s32 arg0, s32 arg1) {
    u32 sp2C;
    u16 ucodeIdx;

    if (arg0 == 0) {
        ucodeIdx = D_8004A444;
        // correct to NoN versions of relevant microcodes if near clip is disabled
        if (gtlNearClipDisabled == 1) {
            switch (ucodeIdx) {
                case 0:
                    ucodeIdx = 2;
                    break;
                case 1:
                    ucodeIdx = 3;
                    break;
                case 12:
                    ucodeIdx = 14;
                    break;
                case 13:
                    ucodeIdx = 15;
                    break;
            }
        }
    } else {
        ucodeIdx = gtlGetL3DEX2Index();
    }
    switch (ucodeIdx) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            gtlScheduleGfxTask(gtlGetSCTaskGfx(), 0, ucodeIdx, gtlCurrentContextID, arg1, 0, 0);
            break;
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            gtlScheduleGfxTask(gtlGetSCTaskGfx(), 0, ucodeIdx, gtlCurrentContextID, arg1, gtlDPOutputBuffer, gtlDPOutputBufferSize);
            break;
        default:
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80005CC0.s")
#endif

void gtlLoadUcode(Gfx **dlist, u32 kind) {
    s32 loadedSpriteUcode = 0;
    switch (kind) { 
        case 0:
            // F3DEX2
            gSPLoadUcodeL((*dlist)++, gspF3DEX2_fifo);
            break;
        case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
            // L3DEX2
            gSPLoadUcodeL((*dlist)++, gspL3DEX2_fifo);
            break;
        case 9: case 10:
            // S2DEX2
            gSPLoadUcodeL((*dlist)++, gspS2DEX2_fifo);
            loadedSpriteUcode = 1;
            break;
        case 11: case 12: case 13: case 14: case 15: default:
            break;
    }
    if (loadedSpriteUcode == 0) {
        gSPDisplayList((*dlist)++, gtlRDPResetList);
    }
}

#ifdef MIPS_TO_C
void gtlProcessDisps(void) {
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
    var_v0 = &gtlPrevDLHeads;
    var_v1 = gDisplayListHeads;
    do {
        temp_t7 = *var_v0;
        var_v0 += 4;
        var_a2 = var_a2 >> 1;
        if (*var_v1 != temp_t7) {
            var_a2 |= 8;
        }
        var_v1 += 4;
    } while (var_v0 != &gtlCurrentState);
    temp_t8 = var_a2 & 1;
    if (var_a2 != 0) {
        sp2C = temp_t8;
        if (temp_t8 != 0) {
            if (var_a2 & 4) {
                sp80 = var_a2;
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index(&gtlCurrentState, var_a2));
                temp_v0 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0 + 8;
                temp_v0->words.w0 = 0xDE010000;
                temp_v0->words.w1 = gtlPrevDLHeads.unk8;
            } else if (var_a2 & 2) {
                if (D_8004A448 != 0) {
                    sp80 = var_a2;
                    gtlLoadUcode(gDisplayListHeads, D_8004A444, var_a2);
                }
                temp_v0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_2 + 8;
                temp_v0_2->words.w0 = 0xDE010000;
                temp_v0_2->words.w1 = gtlPrevDLHeads.unk4;
            } else if (var_a2 & 8) {
                sp80 = var_a2;
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index(&gtlCurrentState, var_a2));
                temp_v0_3 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_3 + 8;
                temp_v0_3->words.w0 = 0xDE010000;
                temp_v0_3->words.w1 = gtlPrevDLHeads.unkC;
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
                gtlLoadUcode(&D_8004A3D8, D_8004A444, var_a2, var_a3);
                temp_v0_6 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_6 + 8;
                temp_v0_6->words.w0 = 0xDE010000;
                temp_v0_6->words.w1 = gtlPrevDLHeads.unk4;
            } else if (var_a3 != 0) {
                temp_v0_7 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_7 + 8;
                temp_v0_7->words.w0 = 0xDE010000;
                temp_v0_7->words.w1 = gtlPrevDLHeads.unkC;
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
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index());
                temp_v0_10 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_10 + 8;
                temp_v0_10->words.w0 = 0xDE010000;
                temp_v0_10->words.w1 = gtlPrevDLHeads.unkC;
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
        temp_a1->words.w1 = gtlRDPResetList;
        temp_v0_15 = *temp_v1;
        *temp_v1 = temp_v0_15 + 8;
        temp_v0_15->words.w0 = 0xDE010000;
        temp_v0_15->words.w1 = *(&gtlPrevDLHeads + temp_a2);
        func_80005CC0(var_a0, temp_a1, temp_a2, var_a3);
        gtlPrevDLHeads.unk0 = gDisplayListHeads->unk0;
        gtlPrevDLHeads.unk8 = gDisplayListHeads[2];
        gtlPrevDLHeads.unk4 = gDisplayListHeads[1];
        gtlPrevDLHeads.unkC = gDisplayListHeads[3];
    }
    func_8000561C();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlProcessDisps.s")
#endif

#ifdef MIPS_TO_C
void gtlMergeDisps(void) {
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
    var_v0 = &gtlPrevDLHeads;
    var_v1 = gDisplayListHeads;
    do {
        temp_t7 = *var_v0;
        var_v0 += 4;
        var_a2 = var_a2 >> 1;
        if (*var_v1 != temp_t7) {
            var_a2 |= 8;
        }
        var_v1 += 4;
    } while (var_v0 != &gtlCurrentState);
    if (var_a2 != 0) {
        if (var_a2 & 1) {
            if (var_a2 & 4) {
                sp50 = var_a2;
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index(&gtlCurrentState));
                temp_v0 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0 + 8;
                temp_v0->words.w0 = 0xDE010000;
                temp_v0->words.w1 = D_8004A3E8;
            } else if (var_a2 & 2) {
                if (D_8004A448 != 0) {
                    sp50 = var_a2;
                    gtlLoadUcode(gDisplayListHeads, D_8004A444, var_a2);
                }
                temp_v0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = temp_v0_2 + 8;
                temp_v0_2->words.w0 = 0xDE010000;
                temp_v0_2->words.w1 = D_8004A3E4;
            } else if (var_a2 & 8) {
                sp50 = var_a2;
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index(&gtlCurrentState));
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
                gtlLoadUcode(&D_8004A3D8, D_8004A444, var_a2, temp_a3);
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
                gtlLoadUcode(&D_8004A3D8, D_8004A444, var_a2, temp_a3);
                temp_v0_6 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_6 + 8;
                temp_v0_6->words.w0 = 0xDE010000;
                temp_v0_6->words.w1 = gDisplayListHeads->unk0;
            }
            D_8004A3E8 = gDisplayListHeads[2];
        }
        if (temp_a3 != 0) {
            if (sp20 != 0) {
                gtlLoadUcode(gDisplayListHeads, gtlGetL3DEX2Index());
                temp_v1 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v1 + 8;
                temp_v1->words.w0 = 0xDE010000;
                temp_v1->words.w1 = D_8004A3EC;
            } else {
                if (D_8004A448 != 0) {
                    gtlLoadUcode(&D_8004A3D4, D_8004A444);
                }
                temp_v1_2 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v1_2 + 8;
                temp_v1_2->words.w0 = 0xDE010000;
                temp_v1_2->words.w1 = gDisplayListHeads->unk0;
            }
            D_8004A3E4 = gDisplayListHeads[1];
        }
        if (sp20 != 0) {
            gtlLoadUcode(&D_8004A3DC, D_8004A444);
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
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlMergeDisps.s")
#endif

#ifdef MIPS_TO_C
s32 gtlSwitchContext(s32 arg0) {
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
    if (gtlNumContexts > 0) {
loop_5:
        if (*var_a0 == 0) {
            gtlCurrentContextID = var_v1;
            *var_a0 = 1;
            return 1;
        }
        var_v1 += 1;
        var_a0 += 4;
        if (var_v1 >= gtlNumContexts) {
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
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlSwitchContext.s")
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
    gtlCurrentState = 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800067B8.s")
#endif

#ifdef MIPS_TO_C
void func_800067C8(s32 arg0) {
    gtlCurrentState = 2;
    D_8004A3F4 = arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_800067C8.s")
#endif

#ifdef MIPS_TO_C
s32 func_800067E0(void) {
    s32 sp20;
    s32 sp1C;

    switch (gtlCurrentState) {                           /* irregular */
        case 1:
            return 1;
        case 2:
            if (D_80048C64 != 0) {
                sp1C = 0xB;
                sp20 = 0x64;
                scExecuteBlocking(&sp1C);
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
void gtlMain(void *arg0) {
    ? *var_v0;
    s32 var_s0;
    s32 var_s0_2;

    D_800492DC = 0;
    while (osRecvMesg(&D_80049320, NULL, 0) != -1);
    while (osRecvMesg(&gtlResetMQ, NULL, 0) != -1);
    while (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1);
    gtlCurrentState = 0;
    D_8004A3F4 = -1;
    gtlCurrentContextID = 1;
    D_80048C64 = 0;
    var_v0 = &D_8004A458;
    do {
        var_v0 += 4;
        var_v0->unk-4 = 0;
    } while (var_v0 != &gtlNumContexts);
    var_s0 = 0;
    if (arg0->unk0 & 1) {
        var_s0_2 = 0;
loop_10:
        func_80006854();
        func_80000510();
        if (gtlUpdateInterval > 0) {
            do {
                osRecvMesg(&gtlGameTickMQ, NULL, 1);
                var_s0_2 += 1;
            } while (var_s0_2 < gtlUpdateInterval);
        }
        if (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1) {
            do {

            } while (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1);
        }
        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 += 1;
        D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
        if ((func_800067E0() == 0) && (((D_8003DCA4 % gtlDrawInterval) != 0) || (gtlSwitchContext(0), D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 += 1, D_8004A434 = (osGetCount() - D_8004A42C) / 2971, (func_800067E0() == 0)))) {
            var_s0_2 = 0;
            goto loop_10;
        }
    } else {
loop_19:
        func_80006854();
        func_80000510();
        if (gtlUpdateInterval > 0) {
            do {
                osRecvMesg(&gtlGameTickMQ, NULL, 1);
                var_s0 += 1;
            } while (var_s0 < gtlUpdateInterval);
        }
        if (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1) {
            do {

            } while (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1);
        }
        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 += 1;
        D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
        if ((func_800067E0() == 0) && (((D_8003DCA4 % gtlDrawInterval) != 0) || (gtlSwitchContext(1) == 0) || (D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 += 1, D_8004A434 = (osGetCount() - D_8004A42C) / 2971, (func_800067E0() == 0)))) {
            var_s0 = 0;
            goto loop_19;
        }
    }
    func_80006740();
    while (osRecvMesg(&D_80049320, NULL, 0) != -1);
    while (osRecvMesg(&gtlResetMQ, NULL, 0) != -1);
    while (osRecvMesg(&gtlGameTickMQ, NULL, 0) != -1);
    set_scissor_callback(0);
    D_800492DC = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlMain.s")
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
    gtlResetHeap();
    gtlInitDisps();
    arg0->unkC();
    gtlProcessDisps();
    viScheduleApplySettings(*(&gtlVideoSettingsTasks + (gtlCurrentContextID * 4)));
    gtlEndCurrentGfxTask();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006E30.s")
#endif

#ifdef MIPS_TO_C
void func_80006E94(void *arg0) {
    D_8004A488();
    arg0->unk4();
    if (func_800067E0() != 0) {
        ohDeleteAllObjects();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80006E94.s")
#endif

#ifdef MIPS_TO_C
void gtlDraw(void *arg0) {
    gtlResetHeap();
    gtlInitDisps();
    arg0->unkC();
    gtlProcessDisps();
    viScheduleApplySettings(*(&gtlVideoSettingsTasks + (gtlCurrentContextID * 4)));
    gtlEndCurrentGfxTask();
    if (func_800067E0() != 0) {
        ohDeleteAllObjects();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlDraw.s")
#endif

#ifdef MIPS_TO_C
void gtlDrawSingle(GObj *gobj) {
    int idxmsg;
    s32 temp_a0;
    s32 temp_v0;

    gtlSwitchContext(0);
    gtlResetHeap();
    gtlInitDisps();
    gobj->onDraw(gobj);
    gtlProcessDisps();
    if (gtlGfxEndTasks[gtlCurrentContextID] == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    gtlScheduleGfxEnd(gtlGfxEndTasks[gtlCurrentContextID], 0, &D_80049320);
    gtlGfxTaskBufferPtrs[gtlCurrentContextID] = gtlGfxTaskBufferStarts[gtlCurrentContextID];
    do {
        osRecvMesg(&D_80049320, &idxmsg, 1);
        D_8004A458[idx] = 0;
    } while (D_8004A458[gtlCurrentContextID] != 0);

    D_8003DCA8 += 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlDrawSingle.s")
#endif

#ifdef MIPS_TO_C
void gtlStart(void *arg0, ? (*arg1)()) {
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
    gtlNumContexts = temp_t6;
    gDynamicBuffer3.unk0 = arg0->unk0;
    gDynamicBuffer3.unk4 = arg0->unk4;
    gDynamicBuffer3.unkC = arg0->unk8;
    temp_s0 = gtlMalloc(arg0->unk14 * 0x88 * temp_t6, 8);
    temp_s1 = gtlMalloc(gtlNumContexts * 0x2C, 8);
    gtlInitTaskBuffers(temp_s0, arg0->unk14, temp_s1, gtlMalloc(gtlNumContexts * 0x38, 8));
    var_s3 = 0;
    var_s0 = &sp44;
    if (gtlNumContexts > 0) {
        do {
            var_s0->unk0 = gtlMalloc(arg0->unk1C, 8);
            var_s0->unk4 = arg0->unk1C;
            var_s0->unk8 = gtlMalloc(arg0->unk20, 8);
            var_s0->unkC = arg0->unk20;
            var_s0->unk10 = gtlMalloc(arg0->unk24, 8);
            var_s0->unk14 = arg0->unk24;
            var_s0->unk18 = gtlMalloc(arg0->unk28, 8);
            var_s3 += 1;
            var_s0 += 0x20;
            var_s0->unk-4 = arg0->unk28;
        } while (var_s3 < gtlNumContexts);
        var_s3 = 0;
    }
    gtlSetDLBuffers(&sp44);
    var_s0_2 = &gtlGfxHeapList;
    if (gtlNumContexts > 0) {
        do {
            mlSetup(&gDynamicBuffer1, 0x10002, gtlMalloc(arg0->unk2C, 8), arg0->unk2C);
            var_s3 += 1;
            var_s0_2 += 0x10;
            var_s0_2->unk-10 = gDynamicBuffer1.id;
            var_s0_2->unk-C = gDynamicBuffer1.poolStart;
            var_s0_2->unk-8 = gDynamicBuffer1.poolEnd;
            var_s0_2->unk-4 = gDynamicBuffer1.top;
        } while (var_s3 < gtlNumContexts);
    }
    var_v0 = arg0->unk34;
    arg0->unk30 = 2;
    if (var_v0 == 0) {
        var_v0 = 0x1000;
        arg0->unk34 = 0x1000;
    }
    func_80005734(arg0->unk30, gtlMalloc(var_v0, 0x10), arg0->unk34);
    set_scissor_callback(arg0->unk38);
    temp_t7 = arg0->data;
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
    gtlMain(&gDynamicBuffer3);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlStart.s")
#endif

#ifdef MIPS_TO_C
void func_80007328(void *arg0) {
    gtlSetupHeap(arg0->unkC, arg0->unk10, arg0);
    gDynamicBuffer3.unk8 = &func_80006DF8;
    gDynamicBuffer3.unk10 = &func_80006E30;
    gtlStart(arg0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/func_80007328.s")
#endif

#ifdef MIPS_TO_C
void gtlCreateScene(void *arg0) {
    s32 temp_v1;

    gtlSetupHeap(arg0->unkC, arg0->unk10);
    gtlCurrentScene.unk0 = gtlMalloc(arg0->unk40 * 0x1C0, 8);
    gtlCurrentScene.unk4 = arg0->unk40;
    gtlCurrentScene.unk8 = arg0->unk44;
    temp_v1 = arg0->unk44;
    if (temp_v1 != 0) {
        gtlCurrentScene.unkC = gtlMalloc((temp_v1 + 8) * arg0->unk48, 8);
    } else {
        gtlCurrentScene.unkC = 0;
    }
    gtlCurrentScene.unk10 = arg0->unk48;
    gtlCurrentScene.unk14 = arg0->unk4C;
    gtlCurrentScene.unk18 = gtlMalloc(arg0->unk50 * 0x24, 4);
    gtlCurrentScene.unk1C = arg0->unk50;
    gtlCurrentScene.unk20 = gtlMalloc(arg0->unk58 * arg0->unk54, 8);
    gtlCurrentScene.unk24 = arg0->unk54;
    gtlCurrentScene.unk28 = arg0->unk58;
    gtlCurrentScene.unk2C = gtlMalloc(arg0->unk5C * 0x48, 8);
    gtlCurrentScene.unk30 = arg0->unk5C;
    func_80010B44(arg0->unk60);
    gtlCurrentScene.unk34 = arg0->unk64;
    gtlCurrentScene.unk38 = gtlMalloc(arg0->unk68 * 0x24, 4);
    gtlCurrentScene.data = arg0->unk68;
    gtlCurrentScene.unk40 = gtlMalloc(arg0->unk6C * 0xA8, 4);
    gtlCurrentScene.unk44 = arg0->unk6C;
    gtlCurrentScene.unk48 = gtlMalloc(arg0->unk74 * arg0->unk70, 8);
    gtlCurrentScene.unk4C = arg0->unk70;
    gtlCurrentScene.unk50 = arg0->unk74;
    gtlCurrentScene.unk54 = gtlMalloc(arg0->unk7C * arg0->unk78, 8);
    gtlCurrentScene.unk58 = arg0->unk78;
    gtlCurrentScene.unk5C = arg0->unk7C;
    gtlCurrentScene.unk60 = gtlMalloc(arg0->unk84 * arg0->unk80, 8);
    gtlCurrentScene.unk64 = arg0->unk80;
    gtlCurrentScene.unk68 = arg0->unk84;
    HS64_omInit(&gtlCurrentScene);
    gDynamicBuffer3.unk8 = &func_80006E94;
    gDynamicBuffer3.unk10 = &gtlDraw;
    gtlStart(arg0, arg0->unk88);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlCreateScene.s")
#endif

#ifdef MIPS_TO_C
void func_800075DC(s16 arg0, s16 arg1) {
    gtlUpdateInterval = arg0;
    gtlDrawInterval = arg1;
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
        gtlNumContexts = arg0;
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

void gtlInit(void) {
    int i, j;

    for (i = 0; i < 2; i++) {
        gtlGfxTaskBufferEnds[i] = NULL;
        gtlGfxTaskBufferPtrs[i] = NULL;
        gtlGfxTaskBufferStarts[i] = NULL;
        gtlGfxEndTasks[i] = NULL;
    }

    gtlNearClipDisabled = FALSE;
    D_8004A444 = D_8004A446 = 0;

    for (i = 0; i < 2; i++) {
        for (j = 0; j < 4; j++) {
            gDLBuffers[i][j].start = NULL;
            gDLBuffers[i][j].length = 0;
        }
    }

    gtlSegment0FBase = NULL;

    func_80005350(0);
    scAddClient(&gtlSchedClient, &gtlGameTickMQ, gtlGameTickMesgs, ARRAY_COUNT(gtlGameTickMesgs));
    osCreateMesgQueue(&D_80049320, D_80049310, ARRAY_COUNT(D_80049310));
    osCreateMesgQueue(&gtlResetMQ, D_80049338, ARRAY_COUNT(D_80049338));
    gtlUpdateInterval = gtlDrawInterval = 1;
    osCreateMesgQueue(&D_800492E8, D_800492E0, ARRAY_COUNT(D_800492E0));

    D_800492DC = 2;
}
