#include <PR/gbi.h>
#include <PR/gs2dex.h>

#include "common.h"
#include "localsched.h"
#include "object_manager.h"
#include "object_helpers.h"
#include "fault.h"
#include "gtl.h"
#include "main.h"
#include "memory_library.h"
#include "contpad.h"
#include "render.h"
#include "rdp_reset.h"
#include "vi.h"

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


extern s32 gtlCurrentState;

extern u32 D_8003DCA0; // gtl rdp output type
extern void *gtlDPOutputBuffer; // gtl rdp output buff
extern u32 gtlDPOutputBufferSize; // gtl rdp output buff len

extern u32 gtlNearClipDisabled;
extern s32 D_8004A3F4;

extern SCTaskGfx *gtlGfxTaskBufferStarts[NUM_GTL_CONTEXTS];
extern SCTaskGfx *gtlGfxTaskBufferPtrs[NUM_GTL_CONTEXTS];
extern SCTaskGfx *gtlGfxTaskBufferEnds[NUM_GTL_CONTEXTS];
extern SCTaskGfxEnd *gtlGfxEndTasks[NUM_GTL_CONTEXTS];

extern u32 D_8003DCA4;
extern s32 gtlDrawnFrameCounter;
extern s32 D_8004A42C;
extern u32 D_8004A430;
extern u32 D_8004A434;

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

struct GtlUcode {
    /* 0x00 */ u64 *text;
    /* 0x04 */ u64 *data;
};

extern struct GtlUcode gtlUcodeList[];
extern u64 gtlDRAMStack[];
extern u64 gtlDPYieldBuffer[];
extern u8 gRSPBootUcode[0x100];

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
#ifdef PORT
    /* THE PORT CANNOT USE THE GAME'S OWN HEAP ADDRESS. Both call sites route
     * through here, so this is the only place that needs to know.
     *
     * On N64 the caller computes heapBase = &D_8018EE60 and heapSize =
     * (u8 *) gFrameBuffer - heapBase, which is about 2.5 MB of RDRAM lying on
     * top of the VRAM of overlays that are not resident. That is deliberate
     * and it is safe there because an unloaded overlay's RAM is free.
     *
     * Here it is neither. D_8018EE60 resolves to D_8018EE58_ovl5 + 8, a live
     * object in this binary's .bss, every overlay is permanently resident, and
     * the arithmetic yields 0x0D3A28 rather than 2.5 MB. The first
     * gtlCreateScene therefore ran `bzero(0x65d958, 866856)` straight across
     * 823 KB of translated data -- among other things contEventMQ, whose
     * msgCount and msg went to garbage, so the next contSendEvent stored
     * through a NULL msg[] and the port died in osSendMesg with a backtrace
     * that pointed at the controller code and nothing at the heap.
     *
     * A dedicated arena fixes both halves at once: it is memory that belongs
     * to us, and it is bigger than the N64's, so nothing that fits on hardware
     * can overflow it here (mlAlloc's overflow path is fatal_printf followed
     * by `while (1);`, which in a cooperative scheduler is a hang, not a
     * message).
     *
     * The audio heap at audio.c:465 is the same shape of problem and is NOT
     * fixed: auCreatePlayers is still a #pragma, so auHeap is never set up and
     * nothing allocates from it. It has to be dealt with when audio lands.
     *
     * Nothing below this #endif changes, so the ROM build is byte-identical. */
    extern void pc_gtl_arena(void **startInOut, u32 *sizeInOut);

    pc_gtl_arena(&start, &size);
#endif
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

void gtlCheckBuffers(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if (gDLBuffers[gtlCurrentContextID][i].length + (u32)gDLBuffers[gtlCurrentContextID][i].start <
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

void gtlSetDPOutputBuff(void* buffer, s32 size) {
    SCTaskRDPBuffer task;

    task.info.type = SC_TASK_TYPE_RDP_BUFFER;
    task.info.priority = 50;
    task.buffer = buffer;
    task.size = size;
    scExecuteBlocking(&task.info);
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

SCTaskGfx *gtlGetSCTaskGfx(void) {
    SCTaskGfx *task;

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
    osSendMesg(&scTaskMQ, (OSMesg)task, 0);
}

void gtlEndCurrentGfxTask(void) {
    SCTaskGfxEnd *task;

    task = gtlGfxEndTasks[gtlCurrentContextID];
    if (task == NULL) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    gtlScheduleGfxEnd(task, (void *)-1, gtlCurrentContextID, &D_80049320);
    gtlGfxTaskBufferPtrs[gtlCurrentContextID] = gtlGfxTaskBufferStarts[gtlCurrentContextID];
}

void gtlReset(void) {
    OSMesg msg;
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

void gtlScheduleGfxTask(SCTaskGfx *t, s32 arg1, u32 ucodeId, s32 arg3, Gfx *arg4, void *arg5, size_t arg6) {
    struct GtlUcode *ucode;

    t->info.type = SC_TASK_TYPE_GFX;
    t->info.priority = 50;

    if (gtlSegment0FBase != NULL) {
        t->info.fnCheck = (SCTaskCallback) D_8004A48C;
        t->unk68 = gtlSegment0FBase;
        gtlSegment0FBase = NULL;
    } else {
        t->info.fnCheck = NULL;
        t->unk68 = NULL;
    }
    t->fb = (s32 *) arg1;
    t->fbIdx = D_8004A3F4;

    if (arg1 != 0) {
        t->info.mq = &D_80049320;
        t->info.retVal = arg3;
    } else {
        t->info.mq = NULL;
    }

    t->info.unk_18 = 2;
    t->taskId = gtlCurrentContextID;
    t->unk7C = 0;

    t->task.t.type = M_GFXTASK;
    t->task.t.flags = OS_TASK_LOADABLE;
    t->task.t.ucode_boot = (u64 *) gRSPBootUcode;
    t->task.t.ucode_boot_size = sizeof(gRSPBootUcode);

    ucode = &gtlUcodeList[ucodeId];

    if (ucode->text == NULL) {
        fatal_printf("gtl : ucode isn't included  kind = %d\n", ucodeId);
        while (1);
    }
    t->task.t.ucode = ucode->text;
    t->task.t.ucode_data = ucode->data;
    t->task.t.ucode_size = SP_UCODE_SIZE;
    t->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
    t->task.t.dram_stack = OS_DCACHE_ROUNDUP_ADDR(gtlDRAMStack);
    t->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;

    switch (ucodeId) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            t->task.t.output_buff = arg5;
            t->task.t.output_buff_size = (u64 *) ((u32) arg5 + arg6);
            t->unk74 = 2;
            break;
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            t->task.t.output_buff = NULL;
            t->task.t.output_buff_size = NULL;
            t->unk74 = 0;
            break;
    }
    t->task.t.data_ptr = (u64 *) arg4;
    t->task.t.data_size = 0;
    t->task.t.yield_data_ptr = OS_DCACHE_ROUNDUP_ADDR(gtlDPYieldBuffer);
    t->task.t.yield_data_size = OS_YIELD_DATA_SIZE;

    osWritebackDCacheAll();
    osSendMesg(&scTaskMQ, t, OS_MESG_NOBLOCK);
}

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
            break;
        default:
            idx = 8;
            break;
    }

    return idx;
}

void func_80005CC0(s32 isL3DEX2, Gfx *glistp) {
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
            gtlScheduleGfxTask(gtlGetSCTaskGfx(), 0, ucodeIdx, gtlCurrentContextID, glistp, NULL, 0);
            break;
        // FIFO
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            gtlScheduleGfxTask(gtlGetSCTaskGfx(), 0, ucodeIdx, gtlCurrentContextID, glistp, gtlDPOutputBuffer, gtlDPOutputBufferSize);
            break;
        default:
            break;
    }
}

#ifdef PORT
/* A REAL gsSPLoadUcodeL IS MEANINGLESS TO FAST3D, AND WORSE THAN MEANINGLESS.
 *
 * On hardware the command hands the RSP two DRAM addresses (text and data) and
 * a size. Fast3D has no RSP to load anything into; instead it reuses the same
 * opcode as a *selector*, and reads the low 24 bits of w0 as a UcodeHandlers
 * enum:
 *
 *     if (opcode == F3DEX2_G_LOAD_UCODE)
 *         gfx_set_ucode_handler((UcodeHandlers)(cmd->words.w0 & 0xFFFFFF));
 *
 * Feed it the hardware form and those low bits are gsSPLoadUcodeL's size
 * field, SP_UCODE_DATA_SIZE - 1 == 0x7FF == 2047. That is past the end of the
 * handler table, so from the next command onwards EVERY opcode falls into the
 * "invalid ucode: 2047" arm and nothing is drawn -- which is exactly what this
 * port printed thousands of times per frame before this branch existed.
 *
 * The enum values are duplicated rather than included: fast/ucodehandlers.h is
 * a C++-side header of an out-of-tree dependency, and game code including it
 * would tie the ROM sources to the renderer's checkout. They are part of the
 * display-list wire format, so they are as stable as the opcode itself.
 *
 * L3DEX2 collapses onto F3DEX2 on purpose. L3DEX2 is F3DEX2 plus the line
 * primitives, and Fast3D's f3dex2 handler table already contains G_LINE3D --
 * there is no separate table to select. */
#define PC_UCODE_F3DEX2 4 /* ucode_f3dex2 */
#define PC_UCODE_S2DEX  5 /* ucode_s2dex  */

static void pc_emit_load_ucode(Gfx **dlist, u32 sel) {
    Gfx *g = (*dlist)++;

    /* 0xDD is F3DEX2's G_LOAD_UCODE. Written as a literal because the value
     * Fast3D compares against is F3DEX2_G_LOAD_UCODE regardless of which ucode
     * is currently selected -- the switch command is outside the tables. */
    g->words.w0 = 0xDD000000u | sel;
    g->words.w1 = 0;
}
#endif

void gtlLoadUcode(Gfx **dlist, u32 kind) {
    s32 loadedSpriteUcode = 0;
    switch (kind) {
        case 0:
            // F3DEX2
#ifdef PORT
            pc_emit_load_ucode(dlist, PC_UCODE_F3DEX2);
#else
            gSPLoadUcodeL((*dlist)++, gspF3DEX2_fifo);
#endif
            break;
        case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
            // L3DEX2
#ifdef PORT
            pc_emit_load_ucode(dlist, PC_UCODE_F3DEX2);
#else
            gSPLoadUcodeL((*dlist)++, gspL3DEX2_fifo);
#endif
            break;
        case 9: case 10:
            // S2DEX2
#ifdef PORT
            pc_emit_load_ucode(dlist, PC_UCODE_S2DEX);
#else
            gSPLoadUcodeL((*dlist)++, gspS2DEX2_fifo);
#endif
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
        func_80005CC0(needLineUcode, glistp);

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

    /* OS_RECV_INDEX, not a bare osRecvMesg: see include/macros.h. This queue
       carries context indices, which is the precondition that macro needs. */
    while (OS_RECV_INDEX(&D_80049320, idx, OS_MESG_NOBLOCK) != -1) {
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
            OS_RECV_INDEX(&D_80049320, idx, OS_MESG_BLOCK);
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
                gtlDrawnFrameCounter += 1;
                D_8004A434 = (osGetCount() - D_8004A42C) / 2971;

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
                gtlDrawnFrameCounter += 1;
                D_8004A434 = (osGetCount() - D_8004A42C) / 2971;
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
    OSMesg idxmsg;

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
        D_8004A458[(u32)idxmsg] = 0;
    } while (D_8004A458[gtlCurrentContextID] != 0);

    gtlDrawnFrameCounter += 1;
}

void gtlStart(BufferSetup* setup, void (*postInitFunc)(void)) {
    s32 i;
    struct DLBuffer dlBuffers[2][4];

    gtlNumContexts = setup->numContexts;
#ifdef PORT
    /* The generated word holds the u16 in its high half (big-endian source). */
    gtlMainFuncTable.flags = GTL_FLAGS(setup->flags);
#else
    gtlMainFuncTable.flags = setup->flags;
#endif
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

    D_8003DCA4 = gtlDrawnFrameCounter = 0;
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

#ifdef PORT
/* LP64 OBJECT STRIDES. The scene descriptors in the ROM carry the N64's
 * sizeof for every pooled object, and object_manager.c builds its free lists
 * by striding raw bytes: `gobj->next = (GObj *)((uintptr_t)gobj + objectSize)`.
 * Under LP64 the native structs are LARGER (GObj 80 -> 136, DObj 136 -> 232,
 * Camera 144 -> 200, MObj 168 -> 200), so consecutive nodes OVERLAP: each
 * `next` write lands inside the previous node and the list truncates.
 *
 * Measured symptom before this fix: the GObj free pool was TWO entries long.
 * HS64_GObjPop was entered four times and succeeded twice, and the third
 * ohCreateCamera returned NULL, so request_job dereferenced a NULL gobj in
 * HS64_GObjProcessLink. The crash pointed at object_manager.c:143 and the
 * cause was in a scene table three call levels away.
 *
 * MAX, not sizeof. SObj is SMALLER natively than on the N64 (8 vs 88) because
 * the port's struct is only partially declared, so a bare sizeof would
 * UNDER-allocate and re-introduce the same overlap in the other direction.
 * Taking the larger of the two is correct for both cases: it is always at
 * least the native size, so nodes never overlap, and always at least the
 * ROM's, so nothing that fits on hardware fails here.
 *
 * Both halves matter -- the malloc size AND the stride recorded in
 * gtlCurrentScene -- because HS64_omInit reads the latter to walk the former.
 *
 * Nothing outside these #ifdefs changes, so the ROM build is byte-identical.
 */
#define PC_OM_SIZE(nat, rom) ((u32) ((sizeof(nat) > (u32) (rom)) ? sizeof(nat) : (u32) (rom)))
#endif

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
#ifdef PORT
    gtlCurrentScene.objects = gtlMalloc(PC_OM_SIZE(GObj, scene->objectSize) * scene->objCount, 8);
#else
    gtlCurrentScene.objects = gtlMalloc(scene->objectSize * scene->objCount, 8);
#endif
    gtlCurrentScene.numObjects = (s32) scene->objCount;
#ifdef PORT
    gtlCurrentScene.objectSize = (s32) PC_OM_SIZE(GObj, scene->objectSize);
#else
    gtlCurrentScene.objectSize = (s32) scene->objectSize;
#endif
    gtlCurrentScene.matrices = gtlMalloc(scene->mtxCount * 0x48, 8);
    gtlCurrentScene.numMatrices = (s32) scene->mtxCount;
    renderSetMatrixHandler(scene->mtxHandler);
    gtlCurrentScene.cleanupFn = scene->unk64;
    gtlCurrentScene.aobjs = gtlMalloc(scene->AObjCount * 0x24, 4);
    gtlCurrentScene.numAObjs = (s32) scene->AObjCount;
#ifdef PORT
    gtlCurrentScene.mobjs = gtlMalloc(scene->MObjCount * PC_OM_SIZE(MObj, 0xA8), 4);
#else
    gtlCurrentScene.mobjs = gtlMalloc(scene->MObjCount * 0xA8, 4);
#endif
    gtlCurrentScene.numMObjs = (s32) scene->MObjCount;
#ifdef PORT
    gtlCurrentScene.dobjs = gtlMalloc(PC_OM_SIZE(DObj, scene->omDobjSize) * scene->DObjCount, 8);
#else
    gtlCurrentScene.dobjs = gtlMalloc(scene->omDobjSize * scene->DObjCount, 8);
#endif
    gtlCurrentScene.numDObjs = (s32) scene->DObjCount;
#ifdef PORT
    gtlCurrentScene.dobjSize = (s32) PC_OM_SIZE(DObj, scene->omDobjSize);
#else
    gtlCurrentScene.dobjSize = (s32) scene->omDobjSize;
#endif
#ifdef PORT
    gtlCurrentScene.sobjs = gtlMalloc(PC_OM_SIZE(struct SObj, scene->omSobjSize) * scene->SobjCount, 8);
#else
    gtlCurrentScene.sobjs = gtlMalloc(scene->omSobjSize * scene->SobjCount, 8);
#endif
    gtlCurrentScene.numSObjs = (s32) scene->SobjCount;
#ifdef PORT
    gtlCurrentScene.sobjSize = (s32) PC_OM_SIZE(struct SObj, scene->omSobjSize);
#else
    gtlCurrentScene.sobjSize = (s32) scene->omSobjSize;
#endif
#ifdef PORT
    gtlCurrentScene.cameras = gtlMalloc(PC_OM_SIZE(Camera, scene->omCameraSize) * scene->CameraCount, 8);
#else
    gtlCurrentScene.cameras = gtlMalloc(scene->omCameraSize * scene->CameraCount, 8);
#endif
    gtlCurrentScene.numCameras = (s32) scene->CameraCount;
#ifdef PORT
    gtlCurrentScene.cameraSize = (s32) PC_OM_SIZE(Camera, scene->omCameraSize);
#else
    gtlCurrentScene.cameraSize = (s32) scene->omCameraSize;
#endif
    HS64_omInit(&gtlCurrentScene);
    gtlMainFuncTable.onUpdate = gtlUpdate;
    gtlMainFuncTable.onDraw = gtlDraw;
    gtlStart(&scene->gtlSetup, scene->postInitFunc);
}

void gtlSetUpdateDrawRate(u16 update, u16 draw) {
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
