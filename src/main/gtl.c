#include <PR/gbi.h>
#include <PR/gs2dex.h>

#include "common.h"
#include "localsched.h"
#include "object_manager.h"
#include "gtl.h"
#include "main.h"
#include "contpad.h"
#include "rdp_reset.h"

// sched
extern u32 scDPOutputBuffSize;
extern s32 D_80048C64;

// bss
extern u32 gtlCurrentContextID;
extern struct DynamicBuffer gDynamicBuffer2;
extern struct DynamicBuffer gtlGfxHeapList[];
extern struct DLBuffer gDLBuffers[NUM_GTL_CONTEXTS][4];
extern Gfx *gtlPrevDLHeads[4];
extern Gfx *gtlRDPResetList;
extern u16 D_8004A448;
extern s32 D_8004A458[NUM_GTL_CONTEXTS];

extern void (*D_8004A488)(void);


extern s32 gtlCurrentState;;

extern u32 D_8003DCA0; // gtl rdp output type
extern void *gtlDPOutputBuffer; // gtl rdp output buff
extern u32 gtlDPOutputBufferSize; // gtl rdp output buff len

extern u32 gtlNearClipDisabled;
extern s32 D_8004A3F4;

extern SCTaskGfx *gtlGfxTaskBufferStarts[NUM_GTL_CONTEXTS];
extern SCTaskGfx *gtlGfxTaskBufferPtrs[NUM_GTL_CONTEXTS];
extern SCTaskGfx *gtlGfxTaskBufferEnds[NUM_GTL_CONTEXTS];
extern SCTaskGfxEnd *gtlGfxEndTasks[NUM_GTL_CONTEXTS];

extern u32 D_8003DCA4, D_8003DCA8;
extern s32 D_8004A42C;
extern u32 D_8004A430;

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

extern ObjectSetup gtlCurrentScene;

extern FuncTable gtlMainFuncTable;

extern s32 (*D_8004A48C)(SCTaskGfx*);

void func_80005350(s32 (*taskCB)(SCTaskGfx *)) {
    if (taskCB != NULL) {
        D_8004A48C = taskCB;
    } else {
        D_8004A48C = &scCheckGfxTaskDefault;
    }
}

void gtlSetSegment0F(Gfx **arg0) {
    gtlSegment0FBase = &(*arg0)->words.w1;
    gSPSegment((*arg0)++, 0x0F, 0x00000000);
}

void gtlDisableNearClipping(s32 disable) {
    gtlNearClipDisabled = disable;
}

void func_800053B4(u16 arg0, u16 arg1) {
    D_8004A444 = arg0;
    D_8004A446 = arg1;
}

void gtlSetupHeap(void *start, u32 size) {
    mlSetup(&gDynamicBuffer2, 0x10000, start, size);
}

void *gtlMalloc(u32 size, u32 alignment) {
    return mlAlloc(&gDynamicBuffer2, size, alignment);
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

#ifdef NON_MATCHING
void gtlCheckBuffers(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((u32)(gDLBuffers[gtlCurrentContextID][i].start + gDLBuffers[gtlCurrentContextID][i].length) <
            (u32)gDisplayListHeads[i]) {
            fatal_printf("gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n", i,
                         (u32)gDisplayListHeads[i] - (u32)gDLBuffers[gtlCurrentContextID][i].start);
            while (1);
        }
    }

    if ((u32)gDynamicBuffer1.poolEnd < (u32)gDynamicBuffer1.top) {
        fatal_printf("gtl : DynamicBuffer over flow !  %d byte\n",
                     (u32)gDynamicBuffer1.top - (u32)gDynamicBuffer1.poolStart);
        while (1);
    }
}
#else
void gtlCheckBuffers(void);
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlCheckBuffers.s")
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

void gtlSetDPOutputSettings(s32 type, void* buffer, u32 size) {
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

#ifdef NON_MATCHING
u32 gtlGetL3DEX2Index(void) {
    u32 idx = (D_8004A448 != 0) ? D_8004A446 : D_8004A444;

    switch (idx) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            idx = 9;
        default:
            idx = 8;
    }

    return idx;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlGetL3DEX2Index.s")
#endif

void func_80005CC0(s32 isL3DEX2, s32 arg1) {
    u32 ucodeIdx;

    if (isL3DEX2 == 0) {
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
        // XBUS
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            gtlScheduleGfxTask(gtlGetSCTaskGfx(), 0, ucodeIdx, gtlCurrentContextID, arg1, NULL, NULL);
            break;
        // FIFO
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

void gtlProcessDisps(void) {
    s32 needLineUcode;
    s32 toUpdate; // 4 bit flags that show which of the 4 heads have updated
    s32 i;
    s32 first;
    Gfx* glistp;

    toUpdate = 0;
    for (i = 0; i < 4; i++) {
        toUpdate >>= 1;
        if (gDisplayListHeads[i] != gtlPrevDLHeads[i]) {
            toUpdate |= 8;
        }
    }

    // combine 4 display lists into one
    // order: 0 -> 2 -> 1 -> 3
    // load line ucode before 2 and 3
    if (toUpdate != 0) {
        if (toUpdate & 1) {
            if (toUpdate & 4) {
                // 0 -> 2
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[2]);
            } else if (toUpdate & 2) {
                // 0 -> 1
                if (D_8004A448) {
                    gtlLoadUcode(&gDisplayListHeads[0], D_8004A444);
                }
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[1]);
            } else if (toUpdate & 8) {
                // 0 -> 3
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[3]);
            } else {
                // 0
                gDPFullSync(gDisplayListHeads[0]++);
                gSPEndDisplayList(gDisplayListHeads[0]++);
            }
        }
        if (toUpdate & 4) {
            if (toUpdate & 2) {
                // 2 -> 1
                gtlLoadUcode(&gDisplayListHeads[2], D_8004A444);
                gSPBranchList(gDisplayListHeads[2]++, gtlPrevDLHeads[1]);
            } else if (toUpdate & 8) {
                // 2 -> 3
                gSPBranchList(gDisplayListHeads[2]++, gtlPrevDLHeads[3]);
            } else {
                // 2
                gDPFullSync(gDisplayListHeads[2]++);
                gSPEndDisplayList(gDisplayListHeads[2]++);
            }
        }
        if (toUpdate & 2) {
            if (toUpdate & 8) {
                // 1 -> 3
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[1]++, gtlPrevDLHeads[3]);
            } else {
                // 1
                gDPFullSync(gDisplayListHeads[1]++);
                gSPEndDisplayList(gDisplayListHeads[1]++);
            }
        }
        if (toUpdate & 8) {
            // 3
            gDPFullSync(gDisplayListHeads[3]++);
            gSPEndDisplayList(gDisplayListHeads[3]++);
        }

        if (toUpdate & 1) {
            first = 0;
            needLineUcode = FALSE;
        } else if (toUpdate & 4) {
            first = 2;
            needLineUcode = TRUE;
        } else if (toUpdate & 2) {
            first = 1;
            needLineUcode = FALSE;
        } else {
            first = 3;
            needLineUcode = TRUE;
        }

        glistp = gDisplayListHeads[first];
        // after end ??
        gSPDisplayList(gDisplayListHeads[first]++, gtlRDPResetList);
        gSPBranchList(gDisplayListHeads[first]++, gtlPrevDLHeads[first]);
        func_80005CC0(needLineUcode, (u64*) glistp);

        gtlPrevDLHeads[0] = gDisplayListHeads[0];
        gtlPrevDLHeads[2] = gDisplayListHeads[2];
        gtlPrevDLHeads[1] = gDisplayListHeads[1];
        gtlPrevDLHeads[3] = gDisplayListHeads[3];
    }

    gtlCheckBuffers();
}

void gtlMergeDisps(void) {
    int i;
    s32 toUpdate;

    gtlCheckBuffers();
    toUpdate = 0;
    for (i = 0; i < 4; ++i) {
        toUpdate >>= 1;
        if (gDisplayListHeads[i] != gtlPrevDLHeads[i]) {
            toUpdate |= 8;
        }
    }

    if (toUpdate != 0) {
        if (toUpdate & 1) {
            if (toUpdate & 4) {
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[2]);
            } else if (toUpdate & 2) {
                if (D_8004A448) {
                    gtlLoadUcode(&gDisplayListHeads[0], D_8004A444);
                }
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[1]);
            } else if (toUpdate & 8) {
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[0]++, gtlPrevDLHeads[3]);
            }
        }

        if (toUpdate & 4) {
            if (toUpdate & 2) {
                gtlLoadUcode(&gDisplayListHeads[2], D_8004A444);
                gSPBranchList(gDisplayListHeads[2]++, gtlPrevDLHeads[1]);
            } else if (toUpdate & 8) {
                gSPBranchList(gDisplayListHeads[2]++, gtlPrevDLHeads[3]);
            } else {
                gtlLoadUcode(&gDisplayListHeads[2], D_8004A444);
                gSPBranchList(gDisplayListHeads[2]++, gDisplayListHeads[0]);
            }
            gtlPrevDLHeads[2] = gDisplayListHeads[2];
        }

        if (toUpdate & 2) {
            if (toUpdate & 8) {
                gtlLoadUcode(&gDisplayListHeads[0], gtlGetL3DEX2Index());
                gSPBranchList(gDisplayListHeads[1]++, gtlPrevDLHeads[3]);
            } else {
                if (D_8004A448) {
                    gtlLoadUcode(&gDisplayListHeads[1], D_8004A444);
                }
                gSPBranchList(gDisplayListHeads[1]++, gDisplayListHeads[0]);
            }
            gtlPrevDLHeads[1] = gDisplayListHeads[1];
        }

        if (toUpdate & 8) {
            gtlLoadUcode(&gDisplayListHeads[3], D_8004A444);
            gSPBranchList(gDisplayListHeads[3]++, gDisplayListHeads[0]);
            gtlPrevDLHeads[3] = gDisplayListHeads[3];
        }
    }

    D_8004A448 = FALSE;
    gtlCheckBuffers();
}

s32 gtlSwitchContext(s32 block) {
    s32 idx;
    s32 i;

    while (osRecvMesg(&D_80049320, (OSMesg*) &idx, OS_MESG_NOBLOCK) != -1) {
        D_8004A458[idx] = 0;
    }

    do {
        for (i = 0; i < gtlNumContexts; i++) {
            if (D_8004A458[i] == 0) {
                gtlCurrentContextID = i;
                D_8004A458[i] = 1;
                return 1;
            }
        }
        if (!block) {
            osRecvMesg(&D_80049320, (OSMesg*) &idx, OS_MESG_BLOCK);
            D_8004A458[idx] = 0;
        }
    } while (!block);

    return 0;
}

void func_80006740(void) {
    struct SCTaskInfo task;
    OSMesg msgs[1];
    OSMesgQueue mq;

    task.type = SC_TASK_TYPE_NOP;
    task.priority = 50;
    osCreateMesgQueue(&mq, msgs, ARRAY_COUNT(msgs));
    task.fnCheck = func_80000B64;
    task.retVal = 1;
    task.mq = &mq;

    osSendMesg(&scTaskMQ, (OSMesg) &task, OS_MESG_NOBLOCK);
    osRecvMesg(&mq, NULL, OS_MESG_BLOCK);
}

void func_800067B8(void) {
    gtlCurrentState = 1;
}

void func_800067C8(s32 arg0) {
    gtlCurrentState = 2;
    D_8004A3F4 = arg0;
}

s32 func_800067E0(void) {
    SCTaskInfo task;

    switch (gtlCurrentState) {                           /* irregular */
        case 1:
            return 1;
        case 2:
            if (D_80048C64 != 0) {
                task.type = SC_TASK_TYPE_11;
                task.priority = 100;
                scExecuteBlocking(&task);
                return 1;
            } else {
                return 0;
            }
        default:
            return 0;
    }
}

void func_80006854(void) {
    if (D_800492DC == 1) {
        D_800492DC = 2;
        while (osRecvMesg(&D_800492E8, NULL, OS_MESG_NOBLOCK) != -1);
        osRecvMesg(&D_800492E8, NULL, OS_MESG_BLOCK);
        D_800492DC = 0;
    }
}

// FuncTable::main
// different store to D_8004A430
#ifdef NON_MATCHING
void gtlMain(FuncTable *this) {
    s32 i;

    D_800492DC = 0;

    while (osRecvMesg(&D_80049320, NULL, OS_MESG_NOBLOCK) != -1);
    while (osRecvMesg(&gtlResetMQ, NULL, OS_MESG_NOBLOCK) != -1);
    while (osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_NOBLOCK) != -1);

    gtlCurrentState = 0;
    D_8004A3F4 = -1;
    gtlCurrentContextID = 1;
    D_80048C64 = 0;

    for (i = 0; i < ARRAY_COUNT(D_8004A458); i++) {
        D_8004A458[i] = 0;
    }

    if (this->flags & 1) {
        while (1) {
            func_80006854();
            func_80000510();
            for (i = 0; i < gtlUpdateInterval; i++) {
                osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_BLOCK);
            }
            while (osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_NOBLOCK) != -1);

            D_8004A42C = osGetCount();
            this->onUpdate(this);
            D_8003DCA4 += 1;
            D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
            if (func_800067E0()) {
                break;
            }


            if (D_8003DCA4 % gtlDrawInterval == 0) {
                gtlSwitchContext(0);
                D_8004A42C = osGetCount();
                this->onDraw(this);
                D_8003DCA8 += 1;
                D_8004A430 = (osGetCount() - D_8004A42C) / 2971;

                if (func_800067E0()) {
                    break;
                }
            }
        }
    } else {
        while (1) {
            func_80006854();
            func_80000510();
            for (i = 0; i < gtlUpdateInterval; i++) {
                osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_BLOCK);
            }
            while (osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_NOBLOCK) != -1);

            D_8004A42C = osGetCount();
            this->onUpdate(this);
            D_8003DCA4 += 1;
            D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
            if (func_800067E0()) {
                break;
            }

            if (D_8003DCA4 % gtlDrawInterval == 0 && gtlSwitchContext(1)) {
                D_8004A42C = osGetCount();
                this->onDraw(this);
                D_8003DCA8 += 1;
                D_8004A430 = (osGetCount() - D_8004A42C) / 2971;
                if (func_800067E0()) {
                    break;
                }
            }
        }
    }

    func_80006740();
    while (osRecvMesg(&D_80049320, NULL, OS_MESG_NOBLOCK) != -1);
    while (osRecvMesg(&gtlResetMQ, NULL, OS_MESG_NOBLOCK) != -1);
    while (osRecvMesg(&gtlGameTickMQ, NULL, OS_MESG_NOBLOCK) != -1);
    set_scissor_callback(NULL);
    D_800492DC = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/gtl/gtlMain.s")
#endif

// FuncTable::update
void gtlFuncTableDefaultUpdate(FuncTable *this) {
    D_8004A488();
    this->onPrivUpdate();
}

// FuncTable::draw
void gtlFuncTableDefaultDraw(FuncTable *this) {
    gtlResetHeap();
    gtlInitDisps();
    this->onPrivDraw();
    gtlProcessDisps();
    viScheduleApplySettings(gtlVideoSettingsTasks[gtlCurrentContextID]);
    gtlEndCurrentGfxTask();
}

// FuncTable::update2
void gtlUpdate(FuncTable *this) {
    D_8004A488();
    this->onPrivUpdate();
    if (func_800067E0() != 0) {
        ohDeleteAllObjects();
    }
}

// FuncTable::draw2
void gtlDraw(FuncTable *this) {
    gtlResetHeap();
    gtlInitDisps();
    this->onPrivDraw();
    gtlProcessDisps();
    viScheduleApplySettings(gtlVideoSettingsTasks[gtlCurrentContextID]);
    gtlEndCurrentGfxTask();
    if (func_800067E0() != 0) {
        ohDeleteAllObjects();
    }
}

void gtlDrawSingle(GObj *gobj) {
    s32 idxmsg;

    gtlSwitchContext(0);
    gtlResetHeap();
    gtlInitDisps();
    gobj->onDraw(gobj);
    gtlProcessDisps();
    if (gtlGfxEndTasks[gtlCurrentContextID] == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    gtlScheduleGfxEnd(gtlGfxEndTasks[gtlCurrentContextID], 0, gtlCurrentContextID, &D_80049320);
    gtlGfxTaskBufferPtrs[gtlCurrentContextID] = gtlGfxTaskBufferStarts[gtlCurrentContextID];
    do {
        osRecvMesg(&D_80049320, &idxmsg, 1);
        D_8004A458[idxmsg] = 0;
    } while (D_8004A458[gtlCurrentContextID] != 0);

    D_8003DCA8 += 1;
}

void gtlStart(BufferSetup* setup, void (*postInitFunc)(void)) {
    s32 i;
    struct DLBuffer dlBuffers[2][4];

    gtlNumContexts = setup->numContexts;
    gtlMainFuncTable.flags = setup->flags;
    gtlMainFuncTable.onPrivUpdate = setup->onUpdate;
    gtlMainFuncTable.onPrivDraw = setup->onDraw;

    gtlInitTaskBuffers(gtlMalloc(setup->unk14 * sizeof(SCTaskGfx) * gtlNumContexts, 8), setup->unk14,
                       gtlMalloc(sizeof(SCTaskGfxEnd) * gtlNumContexts, 8),
                       gtlMalloc(sizeof(SCTaskVi) * gtlNumContexts, 8));

    for (i = 0; i < gtlNumContexts; i++) {
        dlBuffers[i][0].start = gtlMalloc(setup->dlBufferSize0, 8);
        dlBuffers[i][0].length = setup->dlBufferSize0;
        dlBuffers[i][1].start = gtlMalloc(setup->dlBufferSize1, 8);
        dlBuffers[i][1].length = setup->dlBufferSize1;
        dlBuffers[i][2].start = gtlMalloc(setup->dlBufferSize2, 8);
        dlBuffers[i][2].length = setup->dlBufferSize2;
        dlBuffers[i][3].start = gtlMalloc(setup->dlBufferSize3, 8);
        dlBuffers[i][3].length = setup->dlBufferSize3;
    }
    gtlSetDLBuffers(dlBuffers);

    for (i = 0; i < gtlNumContexts; i++) {
        mlSetup(&gDynamicBuffer1, 0x10002, gtlMalloc(setup->gfxHeapSize, 8), setup->gfxHeapSize);
        gtlGfxHeapList[i].id = gDynamicBuffer1.id;
        gtlGfxHeapList[i].poolStart = gDynamicBuffer1.poolStart;
        gtlGfxHeapList[i].poolEnd = gDynamicBuffer1.poolEnd;
        gtlGfxHeapList[i].top = gDynamicBuffer1.top;
    }

    setup->unk30 = 2;
    if (setup->rdpOutputBufferSize == 0) {
        setup->rdpOutputBufferSize = 0x1000;
    }

    gtlSetDPOutputSettings(setup->unk30, gtlMalloc(setup->rdpOutputBufferSize, 16), setup->rdpOutputBufferSize);
    set_scissor_callback(setup->beforeRender);
    D_8004A488 = setup->contpadPoll;
    func_800046A4(D_8004A488 != func_80004624 ? TRUE : FALSE);

    D_8003DCA4 = D_8003DCA8 = 0;
    if (postInitFunc != NULL) {
        postInitFunc();
    }

    gtlMain(&gtlMainFuncTable);
}

void func_80007328(BufferSetup *arg) {
    gtlSetupHeap(arg->heapBase, arg->heapSize);
    gtlMainFuncTable.onUpdate = gtlFuncTableDefaultUpdate;
    gtlMainFuncTable.onDraw = gtlFuncTableDefaultDraw;
    gtlStart(arg, NULL);
}

void gtlCreateScene(SceneSetup *scene) {
    gtlSetupHeap(scene->gtlSetup.heapBase, scene->gtlSetup.heapSize);
    gtlCurrentScene.threads = gtlMalloc(scene->threadCount * 0x1C0, 8);
    gtlCurrentScene.numThreads = (s32) scene->threadCount;
    gtlCurrentScene.threadStackSize = scene->threadStackCount;
    if (scene->threadStackCount != 0) {
        gtlCurrentScene.stacks = gtlMalloc((scene->threadStackCount + 8) * scene->stackCount, 8);
    } else {
        gtlCurrentScene.stacks = NULL;
    }
    gtlCurrentScene.numStacks = scene->stackCount;
    gtlCurrentScene.unk_14 = scene->unk4C;
    gtlCurrentScene.processes = gtlMalloc(scene->procCount * 0x24, 4);
    gtlCurrentScene.numProcesses = (s32) scene->procCount;
    gtlCurrentScene.objects = gtlMalloc(scene->objectSize * scene->objCount, 8);
    gtlCurrentScene.numObjects = (s32) scene->objCount;
    gtlCurrentScene.objectSize = (s32) scene->objectSize;
    gtlCurrentScene.matrices = gtlMalloc(scene->mtxCount * 0x48, 8);
    gtlCurrentScene.numMatrices = (s32) scene->mtxCount;
    func_80010B44(scene->mtxHandler);
    gtlCurrentScene.cleanupFn = scene->unk64;
    gtlCurrentScene.aobjs = gtlMalloc(scene->AObjCount * 0x24, 4);
    gtlCurrentScene.numAObjs = (s32) scene->AObjCount;
    gtlCurrentScene.mobjs = gtlMalloc(scene->MObjCount * 0xA8, 4);
    gtlCurrentScene.numMObjs = (s32) scene->MObjCount;
    gtlCurrentScene.dobjs = gtlMalloc(scene->omDobjSize * scene->DObjCount, 8);
    gtlCurrentScene.numDObjs = (s32) scene->DObjCount;
    gtlCurrentScene.dobjSize = (s32) scene->omDobjSize;
    gtlCurrentScene.sobjs = gtlMalloc(scene->omSobjSize * scene->SobjCount, 8);
    gtlCurrentScene.numSObjs = (s32) scene->SobjCount;
    gtlCurrentScene.sobjSize = (s32) scene->omSobjSize;
    gtlCurrentScene.cameras = gtlMalloc(scene->omCameraSize * scene->CameraCount, 8);
    gtlCurrentScene.numCameras = (s32) scene->CameraCount;
    gtlCurrentScene.cameraSize = (s32) scene->omCameraSize;
    HS64_omInit(&gtlCurrentScene);
    gtlMainFuncTable.onUpdate = gtlUpdate;
    gtlMainFuncTable.onDraw = gtlDraw;
    gtlStart(scene, scene->postInitFunc);
}

void func_800075DC(u16 update, u16 draw) {
    gtlUpdateInterval = update;
    gtlDrawInterval = draw;
}

void func_800075F8(void) {
    if (D_800492DC != 2) {
        D_800492DC = 1;
    }
}

s32 func_80007620(void) {
    if (D_800492DC == 2) {
        return 1;
    } else {
        return 0;
    }
}

int func_80007648(void) {
    return osSendMesg(&D_800492E8, NULL, OS_MESG_NOBLOCK);
}

void func_80007674(s32 arg0) {
    if ((arg0 == 1) || (arg0 == 2)) {
        gtlNumContexts = arg0;
    }
}

s32 func_80007694(s32 arg0) {
    if (arg0 == 1 || arg0 == 2) {
        if (D_8004A458[arg0 - 1] == 0) {
            return 1;
        }
    }

    return 0;
}

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
