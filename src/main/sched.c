#include "common.h"
#include "contpad.h"
#include "localsched.h"

// sched.c
extern SCTaskGfx *scCurrentDPTask, *scDPTaskHead;
extern SCClient* scClientList;
extern void (*scPostProcessFunc)(void *);
extern void (*scPreNMIProc)(void);
extern s32 scPreNMIState;
extern OSMesgQueue scTaskMQ;
extern SCTaskGfx *scCurrentGfxTask;
extern SCTaskGfx *scPausedQueueHead, *scPausedQueueTail;
extern SCTaskInfo *scMainQueueHead, *scMainQueueTail;
extern SCTaskInfo *D_80048BA0;
extern SCTaskGfx *D_80048B90;
extern u32 D_80048C70;
extern s32 scFrameBuffers[3];
extern s32 scNextFrameBuffer;
extern s32 D_80048C60;
extern s32 scRDPOutputBufferUsed;
extern u32 scTimestampSetFb;
extern OSViMode D_80048BA8;
extern OSViMode gCurrentViMode;
extern u32 D_80048C7C;
extern u32 D_80048C48;
extern s32 scBeforeReset;
extern u32 D_80048CD0;
extern OSMesgQueue *D_80048CD4;
extern s32 gCurrFrameBuffer;
extern s32 D_80048C64;
extern u32 D_80048C74;

void func_80000900(void) {
}

void func_80000908(void) {
    while (1) {
        if (scCurrentGfxTask || scCurrentDPTask || scDPTaskHead)
            func_80000900();
        else break;
    }
}

void scExecuteBlocking(SCTaskInfo *task) {
    OSMesg msg;
    OSMesgQueue mq;

    osCreateMesgQueue(&mq, &msg, 1);
    task->fnCheck = NULL;
    task->retVal = 1;
    task->mq = &mq;
    osSendMesg(&scTaskMQ, task, 0);
    osRecvMesg(&mq, NULL, 1);
}

void scAddClient(SCClient *client, OSMesgQueue *mq, OSMesg *msg, u32 count) {
    SCTaskAddClient t;

    osCreateMesgQueue(mq, msg, count);
    client->mq = mq;
    t.info.type = SC_TASK_TYPE_ADD_CLIENT;
    t.info.priority = 100;
    t.client = client;
    scExecuteBlocking(&t.info);
}

#ifdef MIPS_TO_C

s32 scCheckGfxTaskDefault(SCTaskGfx *arg0) {
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
    temp_v1 = arg0->fbIdx;
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

s32 func_80000B64(SCTaskInfo *arg0) {
    SCTaskInfo *var_v0;

    if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.type == 1)) {
        return 0;
    }
    var_v0 = (SCTaskInfo *)scPausedQueueHead;
    while (var_v0 != NULL) {
        if (var_v0->type == 1) {
            return 0;
        }
        var_v0 = var_v0->next;
    }
    var_v0 = scMainQueueHead;
    while (var_v0 != NULL) {
        if (var_v0->type == 1) {
            return 0;
        }
        var_v0 = var_v0->next;
    }
    if ((scCurrentDPTask != NULL) && (scCurrentDPTask->info.type == 1)) {
        return 0;
    }
    var_v0 = (SCTaskInfo *)scDPTaskHead;
    while (var_v0 != NULL) {
        if (var_v0->type == 1) {
            return 0;
        }
        var_v0 = var_v0->next;
    }
    return 1;
}

void scMainQueueAdd(SCTaskInfo *task) {
    SCTaskInfo *temp_v0;
    SCTaskInfo *var_v0;

    var_v0 = scMainQueueTail;
    while ((var_v0 != NULL) && (var_v0->priority < task->priority)) {
        var_v0 = var_v0->prev;
    }
    task->prev = var_v0;
    if (var_v0 != NULL) {
        task->next = var_v0->next;
        var_v0->next = task;
    } else {
        task->next = scMainQueueHead;
        scMainQueueHead = task;
    }
    temp_v0 = task->next;
    if (temp_v0 != NULL) {
        temp_v0->prev = task;
        return;
    }
    scMainQueueTail = task;
}

void scMainQueueRemove(SCTaskInfo *task) {
    if (task->prev != NULL) {
        task->prev->next = task->next;
    } else {
        scMainQueueHead = task->next;
    }
    if (task->next != NULL) {
        task->next->prev = task->prev;
    } else {
        scMainQueueTail = task->prev;
    }
}

void scPausedQueueAdd(SCTaskInfo *task) {
    SCTaskInfo *temp_v0;
    SCTaskInfo *var_v0;

    var_v0 = (SCTaskInfo *)scPausedQueueTail;
    while ((var_v0 != NULL) && (var_v0->priority < task->priority)) {
        var_v0 = var_v0->prev;
    }
    task->prev = var_v0;
    if (var_v0 != NULL) {
        task->next = var_v0->next;
        var_v0->next = task;
    } else {
        task->next = (SCTaskInfo *)scPausedQueueHead;
        scPausedQueueHead = (SCTaskGfx *)task;
    }
    temp_v0 = task->next;
    if (temp_v0 != NULL) {
        temp_v0->prev = task;
        return;
    }
    scPausedQueueTail = (SCTaskGfx *)task;
}

void scPausedQueueRemove(SCTaskInfo *task) {
    if (task->prev != NULL) {
        task->prev->next = task->next;
    } else {
        scPausedQueueHead = (SCTaskGfx *)task->next;
    }
    if (task->next != NULL) {
        task->next->prev = task->prev;
    } else {
        scPausedQueueTail = (SCTaskGfx *)task->prev;
    }
}

void func_80000E14(SCTaskInfo *task) {
    task->next = NULL;
    task->prev = D_80048BA0;
    if (D_80048BA0 != NULL) {
        D_80048BA0->next = task;
    } else {
        scDPTaskHead = (SCTaskGfx *)task;
    }
    D_80048BA0 = task;
}

void scDPQueueRemove(SCTaskInfo *task) {
    if (task->prev != NULL) {
        task->prev->next = task->next;
    } else {
        scDPTaskHead = (SCTaskGfx *)task->next;
    }
    if (task->next != NULL) {
        task->next->prev = task->prev;
    } else {
        D_80048BA0 = task->prev;
    }
}

#define GET_BIT(x, n) (((u32)(x) << (31 - (n))) >> 31)

void func_80000E9C(void) {
    D_80048BA8 = gCurrentViMode;
    osViSetMode(&D_80048BA8);
    if (GET_BIT(D_80048C7C, 27)) {
        osViSetYScale(1.0f);
    } else if (osTvType == 0) {
        osViSetYScale(0.833f);
    }
    osViBlack(GET_BIT(D_80048C7C, 27));
    D_80048C48 = 0;
}

// weird long function
void func_80000F78(u32 width, u32 height, s32 flags, s16 edgeOffsetLeft, s16 edgeOffsetRight, s16 edgeOffsetTop, s16 edgeOffsetBottom);
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80000F78.s")

void func_80001774(void *arg0) {
    if ((D_80048C48 != 0) && (scBeforeReset == 0)) {
        func_80000E9C();
    }
    if (D_80048CD0 != 0) {
        osSendMesg(D_80048CD4, (OSMesg) 1, OS_MESG_NOBLOCK);
        if ((u32)arg0 == -1) {
            gCurrFrameBuffer = scNextFrameBuffer;
            scNextFrameBuffer = 0;
        } else {
            gCurrFrameBuffer = (s32)arg0;
        }
    } else if ((u32)arg0 == -1) {
        osViSwapBuffer((void *)scNextFrameBuffer);
        if (D_80048C60 == scNextFrameBuffer) {
            D_80048C64 = 1;
        }
        gCurrFrameBuffer = scNextFrameBuffer;
        scNextFrameBuffer = 0;
    } else {
        osViSwapBuffer(arg0);
        gCurrFrameBuffer = (s32)arg0;
    }
    D_80048C74 = (osGetCount() - scTimestampSetFb) / 0xB9B;
}

void func_8000189C(SCTaskGfx *task) {
    if (scCurrentGfxTask != NULL) {
        osSpTaskYield();
        scCurrentGfxTask->info.state = 4;
        scPausedQueueAdd(&scCurrentGfxTask->info);
        task->info.state = SC_TASK_STATE_PRIORITY_PENDING;
    } else {
        osSpTaskLoad(&task->task);
        osSpTaskStartGo(&task->task);
        task->info.state = SC_TASK_STATE_RUNNUNG;
    }
    scCurrentGfxTask = task;
}

void func_80001924(SCTaskGfx *task) {
    D_80048C70 = osGetCount();
    if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.state == 2)) {
        osSpTaskYield();
        scCurrentGfxTask->info.state = 4;
        task->info.state = 3;
    } else {
        osSpTaskLoad(&task->task);
        osSpTaskStartGo(&task->task);
        task->info.state = 2;
    }
    D_80048B90 = task;
}

#ifdef MIPS_TO_C

s32 scExecuteTask(SCTaskInfo *task) {
    s32 sp4C;
    SCTaskInfo *sp34;
    ? *var_v0;
    OSMesgQueue *temp_a0;
    OSMesgQueue *temp_a0_10;
    OSMesgQueue *temp_a0_2;
    OSMesgQueue *temp_a0_3;
    OSMesgQueue *temp_a0_5;
    OSMesgQueue *temp_a0_6;
    OSMesgQueue *temp_a0_7;
    OSMesgQueue *temp_a0_8;
    OSMesgQueue *temp_a0_9;
    SCClient *temp_a0_4;
    SCClient *temp_v0_2;
    SCTaskGfx *var_a0;
    SCTaskGfx *var_v0_3;
    SCTaskGfx *var_v1_2;
    SCTaskInfo *var_v1;
    s32 *temp_v0;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_v0_3;
    s32 var_v0_2;
    s32 var_v0_4;

    sp4C = 0;
    temp_t6 = task->type;
    switch (temp_t6) {
        case 1:
            temp_v0 = task->unk68;
            if (temp_v0 != NULL) {
                *temp_v0 |= scNextFrameBuffer;
                osWritebackDCache(task->unk68, 4);
            }
            if (task->unk50 == -1) {
                task->unk50 = D_80048C8C + scRDPOutputBufferUsed;
                osWritebackDCache(task + 0x50, 4);
            }
            if (task->unk74 == 1) {
                osInvalDCache(&scDPOutputBuffSize, 8);
            }
            func_8000189C(task);
            sp4C = 1;
            break;
        case 2:
            osWritebackDCacheAll();
            func_80001924(task);
            sp4C = 1;
            break;
        case 3:
            temp_v0_2 = task->unk24;
            temp_v0_2->next = scClientList;
            scClientList = temp_v0_2;
            temp_a0 = task->mq;
            if (temp_a0 != NULL) {
                osSendMesg(temp_a0, task->retVal, 0);
            }
            break;
        case 4:
            func_80000F78(task->unk24, task->unk28, task->unk2C, task->unk30, task->unk32, task->unk34, task->unk36);
            temp_a0_2 = task->mq;
            if (temp_a0_2 != NULL) {
                osSendMesg(temp_a0_2, task->retVal, 0);
            }
            break;
        case 5:
            var_v0 = &scFrameBuffers;
            var_v1 = task;
            do {
                temp_t2 = var_v1->unk24;
                var_v0 += 4;
                var_v1 += 4;
                var_v0->unk-4 = temp_t2;
            } while (var_v0 != &scNextFrameBuffer);
            temp_a0_3 = task->mq;
            if (temp_a0_3 != NULL) {
                osSendMesg(temp_a0_3, task->retVal, 0);
            }
            break;
        case 6:
            var_v1_2 = NULL;
            if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.type == 1) && (task->unk28 == scCurrentGfxTask->taskId)) {
                var_v1_2 = scCurrentGfxTask;
            }
            var_v0_2 = scPausedQueueHead.info.type;
            if (var_v0_2 != 0) {
                do {
                    if ((var_v0_2->unk0 == 1) && (task->unk28 == var_v0_2->unk80)) {
                        var_v1_2 = var_v0_2;
                    }
                    var_v0_2 = var_v0_2->unkC;
                } while (var_v0_2 != 0);
            }
            var_v0_3 = scMainQueueHead;
            if (var_v0_3 != NULL) {
                do {
                    if ((var_v0_3->info.type == 1) && (task->unk28 == var_v0_3->taskId)) {
                        var_v1_2 = var_v0_3;
                    }
                    var_v0_3 = var_v0_3->info.next;
                } while (var_v0_3 != NULL);
            }
            if ((scCurrentDPTask != NULL) && (scCurrentDPTask->info.type == 1) && (task->unk28 == scCurrentGfxTask->taskId)) {
                var_v1_2 = scCurrentDPTask;
            }
            var_v0_4 = scDPTaskHead.info.type;
            if (var_v0_4 != 0) {
                do {
                    if ((var_v0_4->unk0 == 1) && (task->unk28 == var_v0_4->unk80)) {
                        var_v1_2 = var_v0_4;
                    }
                    var_v0_4 = var_v0_4->unkC;
                } while (var_v0_4 != 0);
            }
            if (var_v1_2 != NULL) {
                var_v1_2->info.retVal = task->retVal;
                var_v1_2->info.mq = task->mq;
                var_v1_2->fb = task->unk24;
            } else {
                temp_a0_4 = task->unk24;
                if (temp_a0_4 != NULL) {
                    func_80001774(temp_a0_4, 1);
                }
                temp_a0_5 = task->mq;
                if (temp_a0_5 != NULL) {
                    osSendMesg(temp_a0_5, task->retVal, 0);
                }
            }
            break;
        case 7:
            temp_a0_6 = task->mq;
            if (temp_a0_6 != NULL) {
                osSendMesg(temp_a0_6, task->retVal, 0);
            }
            break;
        case 8:
            D_80048C8C = task->unk24;
            D_80048C90 = task->unk28;
            temp_a0_7 = task->mq;
            if (temp_a0_7 != NULL) {
                osSendMesg(temp_a0_7, task->retVal, 0);
            }
            break;
        case 9:
            D_80048CD0 = 1;
            D_80048CD4 = task->unk24;
            temp_a0_8 = task->mq;
            if (temp_a0_8 != NULL) {
                osSendMesg(temp_a0_8, task->retVal, 0);
            }
            break;
        case 10:
            D_80048CD0 = 0;
            temp_a0_9 = task->mq;
            if (temp_a0_9 != NULL) {
                osSendMesg(temp_a0_9, task->retVal, 0);
            }
            break;
        case 11:
            var_a0 = scMainQueueHead;
            if (var_a0 != NULL) {
                do {
                    temp_v0_3 = var_a0->info.type;
                    if ((temp_v0_3 == 1) || (temp_v0_3 == 4)) {
                        sp34 = var_a0->info.next;
                        scMainQueueRemove(&var_a0->info);
                        var_a0 = sp34;
                    } else {
                        var_a0 = var_a0->info.next;
                    }
                } while (var_a0 != NULL);
            }
            D_80048C60 = 0;
            temp_a0_10 = task->mq;
            if (temp_a0_10 != NULL) {
                osSendMesg(temp_a0_10, task->retVal, 0);
            }
            break;
    }
    return sp4C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scExecuteTask.s")
#endif

#ifdef MIPS_TO_C

void func_80001E20(void) {
    SCTaskInfo *temp_s1;
    SCTaskInfo *var_s0;
    s32 (*temp_v0)(SCTaskInfo *);
    s32 var_a0;
    s32 var_s2;
    s32 var_s4;
    s32 var_s7;
    s32 var_v0;
    s32 var_v1;

    var_s2 = 0;
    if (scCurrentGfxTask != NULL) {
        var_s7 = scCurrentGfxTask->info.priority;
    } else {
        var_s7 = -1;
    }
    if (D_80048B90 != NULL) {
        var_s7 = D_80048B90->unk4;
    }
    var_s4 = -1;
    if (scPausedQueueHead.info.type != 0) {
        var_s4 = scPausedQueueHead.info.type->unk4;
    }
    var_s0 = scMainQueueHead;
    do {
        var_v0 = -1;
        if (var_s0 != NULL) {
            var_v0 = var_s0->priority;
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
                    osSpTaskLoad(scPausedQueueHead.info.type + 0x28);
                    osSpTaskStartGo(scPausedQueueHead.info.type + 0x28);
                    scPausedQueueHead.info.type->unk8 = 2;
                    scCurrentGfxTask = scPausedQueueHead.info.type;
                    scPausedQueueRemove(scPausedQueueHead.info.type);
                    break;
                case 1:
                    temp_v0 = var_s0->fnCheck;
                    if ((temp_v0 == NULL) || (var_s2 = 1, (temp_v0(var_s0) != 0))) {
                        var_s2 = scExecuteTask(var_s0);
                        temp_s1 = var_s0->next;
                        scMainQueueRemove(var_s0);
                        var_s0 = temp_s1;
                    }
                    break;
            }
        }
    } while (var_s2 == 0);
}
#else
void func_80001E20(void);
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/func_80001E20.s")
#endif

void func_80001FAC(void) {
    if ((scCurrentDPTask == NULL) && (scDPTaskHead != NULL)) {
        scCurrentDPTask = scDPTaskHead;
        scDPQueueRemove(&scDPTaskHead->info);
        scCurrentDPTask->info.state = SC_TASK_STATE_RUNNUNG;
        osDpSetNextBuffer(scCurrentDPTask->task.t.output_buff, scCurrentDPTask->rdpBufSize);
    }
}

void scHandleVRetrace(void) {
    SCClient* client;
    // temp usages are needed to match
    SCClient* temp;

    client = scClientList;
    while (client != NULL) {
        temp = client;
        osSendMesg(temp->mq, (OSMesg) 1, OS_MESG_NOBLOCK);
        client = client->next;

        if (temp->mq) {
        }
    }

    func_80001E20();
}

#ifdef MIPS_TO_C

void scHandleSPTaskDone(void) {
    s32 sp1C;
    u32 sp18;
    SCTaskGfx *temp_v0;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v1;

    if ((D_80048B90 != NULL) && (D_80048B90->unk8 == 2)) {
        osSendMesg(D_80048B90->unk20, NULL, 0);
        D_80048B90 = NULL;
        func_80001E20();
        D_80048C78 = (osGetCount() - D_80048C70) / 2971;
        return;
    }
    temp_v0 = scCurrentGfxTask;
    if ((temp_v0 != NULL) && (temp_v0->info.state == 4)) {
        if (osSpTaskYielded(&temp_v0->task) == 1) {
            scCurrentGfxTask->info.state = 5;
            scPausedQueueAdd(scCurrentGfxTask);
            scCurrentGfxTask = NULL;
        } else {
            scCurrentGfxTask->info.state = 6;
        }
        osSpTaskLoad(D_80048B90 + 0x28);
        osSpTaskStartGo(D_80048B90 + 0x28);
        D_80048B90->unk8 = 2;
    }
    if ((temp_v0 != NULL) && (temp_v0->info.unk_18 == 1) && (temp_v0->info.state != 5)) {
        if ((temp_v0->info.type == 1) && (temp_v0->unk74 == 1)) {
            osInvalDCache(&scDPOutputBuffSize, 8);
            scCurrentGfxTask->rdpBufSize = scDPOutputBuffSize.unk4;
            temp_t2 = scRDPOutputBufferUsed + scDPOutputBuffSize.unk4;
            sp18 = scDPOutputBuffSize.unk0;
            temp_t6 = ((temp_t2 + 0xF) >> 4) * 0x10;
            temp_t8 = temp_t6 >> 0x1F;
            scRDPOutputBufferUsed = temp_t2;
            scRDPOutputBufferUsed = temp_t6;
            sp1C = scDPOutputBuffSize.unk4;
            if ((sp18 >= temp_t8) && ((temp_t8 < sp18) || (temp_t6 < scDPOutputBuffSize.unk4))) {
                fatal_printf("rdp_output_buff over !! size = %d\n byte", temp_t6, 1, &scCurrentGfxTask);
loop_18:
                goto loop_18;
            }
            scCurrentGfxTask->info.state = 1;
            func_80000E14(scCurrentGfxTask, temp_t6, 1, &scCurrentGfxTask);
            func_80001FAC();
            goto block_20;
        }
block_20:
        scCurrentGfxTask = NULL;
        func_80001E20();
        return;
    }
    if ((temp_v0 != NULL) && (temp_v0->info.unk_18 == 2) && (temp_v0->info.type == 1)) {
        temp_v0->info.state = 6;
        temp_v1 = scCurrentGfxTask->unk7C;
        if (!(temp_v1 & 2)) {
            scCurrentGfxTask->unk7C = temp_v1 | 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scHandleSPTaskDone.s")
#endif

#ifdef MIPS_TO_C

void scHandleDPTaskDone(void) {
    OSMesgQueue *temp_a0;
    OSMesgQueue *temp_a0_2;
    OSMesgQueue *temp_a0_3;
    SCTaskGfx *temp_v0;
    SCTaskGfx *temp_v0_2;
    s32 *var_a0;
    s32 *var_a0_2;
    s32 *var_a0_3;
    s32 temp_a3;

    temp_v0 = scCurrentGfxTask;
    if ((temp_v0 != NULL) && (temp_v0->info.unk_18 == 2)) {
        if (temp_v0->info.type == 1) {
            var_a0 = temp_v0->fb;
            if (var_a0 != NULL) {
                if (scPostProcessFunc != NULL) {
                    if (var_a0 == -1) {
                        scPostProcessFunc(scNextFrameBuffer);
                        var_a0 = scCurrentGfxTask->fb;
                    } else {
                        scPostProcessFunc(var_a0);
                        var_a0 = scCurrentGfxTask->fb;
                    }
                }
                func_80001774(var_a0);
            }
            temp_a0 = temp_v0->info.mq;
            if (temp_a0 != NULL) {
                osSendMesg(temp_a0, temp_v0->info.retVal, 0);
            }
            if (temp_v0->info.state == 4) {
                osSpTaskLoad(D_80048B90 + 0x28);
                osSpTaskStartGo(D_80048B90 + 0x28);
                D_80048B90->unk8 = 2;
            }
        }
        scCurrentGfxTask = NULL;
        func_80001E20();
        return;
    }
    temp_v0_2 = scCurrentDPTask;
    if (temp_v0_2 != NULL) {
        var_a0_2 = temp_v0_2->fb;
        if (var_a0_2 != NULL) {
            if (scPostProcessFunc != NULL) {
                if (var_a0_2 == -1) {
                    scPostProcessFunc(scNextFrameBuffer);
                    var_a0_2 = scCurrentDPTask->fb;
                } else {
                    scPostProcessFunc(var_a0_2);
                    var_a0_2 = scCurrentDPTask->fb;
                }
            }
            func_80001774(var_a0_2);
        }
        temp_a0_2 = temp_v0_2->info.mq;
        if (temp_a0_2 != NULL) {
            osSendMesg(temp_a0_2, temp_v0_2->info.retVal, 0);
        }
        scCurrentDPTask = NULL;
        func_80001FAC();
        return;
    }
    temp_a3 = scPausedQueueHead.info.type;
    if ((temp_a3 != 0) && (temp_a3->unk18 == 2)) {
        if (temp_a3->unk0 == 1) {
            var_a0_3 = temp_a3->unk6C;
            if (var_a0_3 != NULL) {
                if (scPostProcessFunc != NULL) {
                    if (var_a0_3 == -1) {
                        scPostProcessFunc(scNextFrameBuffer);
                        var_a0_3 = scPausedQueueHead.info.type->unk6C;
                    } else {
                        scPostProcessFunc(var_a0_3);
                        var_a0_3 = scPausedQueueHead.info.type->unk6C;
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
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scHandleDPTaskDone.s")
#endif

void scAddTask(SCTaskInfo *task) {
    task->state = SC_TASK_STATE_QUEUED;
    scMainQueueAdd(task);
    func_80001E20();
}

#ifdef MIPS_TO_C
anime
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/sched/scThreadMain.s")
#endif

void scPreNMIDefault(void) {
    s32 i;

    scBeforeReset = 1;
    osViSetYScale(1.0f);
    osViBlack(1);

    for (i = 0; i < MAXCONTROLLERS; i++) {
        contRumbleInit(i);
        contRumbleStop(i);
    }
    scPreNMIState = osAfterPreNMI();
}

void scSetPreNMIProc(void (*fn)(void)) {
    scPreNMIProc = fn;
}

void scSetPostProcessFunc(void (*fn)(void *)) {
    scPostProcessFunc = fn;
}

void scRemovePostProcessFunc() {
    scPostProcessFunc = 0;
}
