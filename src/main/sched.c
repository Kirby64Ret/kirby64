#include "common.h"
#include "contpad.h"
#include "localsched.h"
#include "main.h"

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
typedef struct SCImageSetup {
    /* 0 0x80 */ u32 antialias : 1;
    /* 0 0x40 */ u32 serrate : 1;
    /* 0 0x20 */ u32 colordepth32 : 1;
    /* 0 0x10 */ u32 gamma : 1;
    /* 0 0x08 */ u32 blackout : 1;
    /* 0 0x04 */ u32 unk_b04 : 1;
    /* 0 0x02 */ u32 gammadither : 1;
    /* 0 0x01 */ u32 ditherfilter : 1;
    /* 1 0x80 */ u32 divot : 1;
} SCImageSetup;

extern SCImageSetup D_80048C7C;
extern u32 D_80048C48;
extern s32 scBeforeReset;
extern s32 D_80048CD0;
extern OSMesgQueue *D_80048CD4;
extern s32 gCurrFrameBuffer;
extern s32 D_80048C64;
extern u32 D_80048C74;
extern OSMesg D_80048C98[8];
extern OSViMode osViModeNtscLan1;
extern OSViMode osViModeFpalLan1;
extern OSViMode osViModeMpalLan1;
void scPreNMIDefault(void);
extern u32 D_80048C78;
extern u64 *D_80048C8C;
extern u32 D_80048C90;
extern u64 scDPOutputBuffSize;

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

s32 scCheckGfxTaskDefault(SCTaskGfx *t) {
    s32 unused;
    s32 i;
    void *next, *curr, *free;

    if (scNextFrameBuffer != 0) {
        return 1;
    } else if (D_80048C60 != 0) {
        return 0;
    }
    next = (void *)osViGetNextFramebuffer();
    curr = (void *)osViGetCurrentFramebuffer();

    if (t->fbIdx != -1) {
        free = (void *)scFrameBuffers[t->fbIdx];

        if ((free != NULL) && (curr != free) && (next != free)) {
            D_80048C60 = scNextFrameBuffer = (s32)free;
            scRDPOutputBufferUsed = 0;
            scTimestampSetFb = osGetCount();
            return 1;
        }
    }
    for (i = 0; i < ARRAY_COUNT(scFrameBuffers); i++) {
        free = (void *)scFrameBuffers[i];

        if ((free != NULL) && (curr != free) && (next != free)) {
            scNextFrameBuffer = (s32)free;
            scRDPOutputBufferUsed = 0;
            scTimestampSetFb = osGetCount();
            return 1;
        }
    }
    return 0;
}

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
    if (D_80048C7C.blackout) {
        osViSetYScale(1.0f);
    } else if (osTvType == 0) {
        osViSetYScale(0.833f);
    }
    osViBlack(D_80048C7C.blackout);
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

s32 scExecuteTask(SCTaskInfo *task) {
    s32 ret = 0;
    s32 unused[4];
    SCTaskInfo *sp34[2];

    switch (task->type) {
        case SC_TASK_TYPE_GFX: {
            SCTaskGfx *t = (void *)task;

            if (t->unk68 != NULL) {
                *t->unk68 |= (u32)scNextFrameBuffer;
                osWritebackDCache(t->unk68, sizeof(t->unk68));
            }
            if (t->task.t.output_buff == (u64 *)-1) {
                t->task.t.output_buff = (u64 *)((uintptr_t)D_80048C8C + scRDPOutputBufferUsed);
                osWritebackDCache(&t->task.t.output_buff, sizeof(t->task.t.output_buff));
            }
            if (t->unk74 == 1) {
                osInvalDCache(&scDPOutputBuffSize, sizeof(scDPOutputBuffSize));
            }
            func_8000189C(t);
            ret = 1;
            break;
        }
        case SC_TASK_TYPE_AUDIO: {
            SCTaskGfx *t = (void *)task;

            osWritebackDCacheAll();
            func_80001924(t);
            ret = 1;
            break;
        }
        case SC_TASK_TYPE_ADD_CLIENT: {
            SCTaskAddClient *t = (void *)task;
            SCClient *temp;

            temp = t->client;
            temp->next = scClientList;
            scClientList = temp;

            if (t->info.mq != NULL) {
                osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
        case SC_TASK_TYPE_VI: {
            SCTaskVi *t = (void *)task;

            func_80000F78(t->width, t->height, t->flags, t->edgeOffsetLeft, t->edgeOffsetRight,
                          t->edgeOffsetTop, t->edgeOffsetBottom);

            if (t->info.mq != NULL) {
                osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
        case SC_TASK_TYPE_FRAMEBUFFERS: {
            SCTaskFb *t = (void *)task;
            s32 i;

            for (i = 0; i < ARRAY_COUNT(scFrameBuffers); i++) {
                scFrameBuffers[i] = (s32)t->cfb[i];
            }

            if (t->info.mq != NULL) {
                osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
        case SC_TASK_TYPE_GFX_END: {
            SCTaskGfxEnd *t = (void *)task;
            SCTaskGfx *v1 = NULL;
            SCTaskInfo *v0;

            if (scCurrentGfxTask != NULL && scCurrentGfxTask->info.type == SC_TASK_TYPE_GFX &&
                scCurrentGfxTask->taskId == t->taskId) {
                v1 = scCurrentGfxTask;
            }

            v0 = &scPausedQueueHead->info;
            while (v0 != NULL) {
                if (v0->type == SC_TASK_TYPE_GFX) {
                    if (((SCTaskGfx *)v0)->taskId == t->taskId) {
                        v1 = (void *)v0;
                    }
                }
                v0 = v0->next;
            }

            v0 = scMainQueueHead;
            while (v0 != NULL) {
                if (v0->type == SC_TASK_TYPE_GFX) {
                    if (((SCTaskGfx *)v0)->taskId == t->taskId) {
                        v1 = (void *)v0;
                    }
                }
                v0 = v0->next;
            }

            v0 = &scCurrentDPTask->info;
            if (v0 != NULL) {
                if (v0->type == SC_TASK_TYPE_GFX) {
                    if (scCurrentGfxTask->taskId == t->taskId) {
                        v1 = (void *)v0;
                    }
                }
            }

            v0 = &scDPTaskHead->info;
            while (v0 != NULL) {
                if (v0->type == SC_TASK_TYPE_GFX) {
                    if (((SCTaskGfx *)v0)->taskId == t->taskId) {
                        v1 = (void *)v0;
                    }
                }
                v0 = v0->next;
            }

            if (v1 != NULL) {
                v1->info.retVal = t->info.retVal;
                v1->info.mq = t->info.mq;
                v1->fb = t->fb;
            } else {
                if (t->fb != NULL) {
                    func_80001774(t->fb);
                }

                if (t->info.mq != NULL) {
                    osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
                }
            }
            break;
        }
        case SC_TASK_TYPE_NOP:
            if (task->mq != NULL) {
                osSendMesg(task->mq, (OSMesg)task->retVal, OS_MESG_NOBLOCK);
            }
            break;
        case SC_TASK_TYPE_RDP_BUFFER: {
            SCTaskRDPBuffer *t = (void *)task;

            D_80048C8C = t->buffer;
            D_80048C90 = t->size;
            if (t->info.mq != NULL) {
                osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
        case SC_TASK_TYPE_CUSTOM_BUFFERING: {
            SCTaskType9 *t = (void *)task;

            D_80048CD0 = 1;
            D_80048CD4 = t->unk24;

            if (t->info.mq != NULL) {
                osSendMesg(t->info.mq, (OSMesg)t->info.retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
        case SC_TASK_TYPE_DEFAULT_BUFFERING:
            D_80048CD0 = 0;
            if (task->mq != NULL) {
                osSendMesg(task->mq, (OSMesg)task->retVal, OS_MESG_NOBLOCK);
            }
            break;
        case SC_TASK_TYPE_11: {
            SCTaskInfo *a0 = scMainQueueHead;
            while (a0 != NULL) {
                if (a0->type == SC_TASK_TYPE_GFX || a0->type == SC_TASK_TYPE_VI) {
                    sp34[0] = a0->next;
                    scMainQueueRemove(a0);
                    a0 = sp34[0];
                } else {
                    a0 = a0->next;
                }
            }

            D_80048C60 = 0;
            if (task->mq != NULL) {
                osSendMesg(task->mq, (OSMesg)task->retVal, OS_MESG_NOBLOCK);
            }
            break;
        }
    }
    return ret;
}

void func_80001E20(void) {
    s32 yieldPriority;
    s32 currPriority;
    s32 isTaskReady;
    SCTaskInfo *curr, *next;
    s32 isTaskStarted = 0;
    s32 pausedPriority;
    s32 avPriority;

    avPriority = (scCurrentGfxTask != NULL) ? scCurrentGfxTask->info.priority : -1;

    if (D_80048B90 != NULL) {
        avPriority = D_80048B90->info.priority;
    }
    pausedPriority = (scPausedQueueHead != NULL) ? scPausedQueueHead->info.priority : -1;

    curr = scMainQueueHead;

    while (isTaskStarted == 0) {
        currPriority = (curr != NULL) ? curr->priority : -1;

        if (pausedPriority >= currPriority) {
            isTaskReady = 0;
            yieldPriority = pausedPriority;
        } else {
            isTaskReady = 1;
            yieldPriority = currPriority;
        }
        if (avPriority >= yieldPriority) {
            isTaskStarted = 1;
        } else switch (isTaskReady) {
            case 0:
                osSpTaskLoad(&scPausedQueueHead->task);
                osSpTaskStartGo(&scPausedQueueHead->task);
                isTaskStarted = 1;
                scPausedQueueHead->info.state = SC_TASK_STATE_RUNNUNG;
                scCurrentGfxTask = scPausedQueueHead;
                scPausedQueueRemove(&scPausedQueueHead->info);
                break;

            case 1:
                if ((curr->fnCheck == NULL) || (curr->fnCheck(curr) != 0)) {
                    isTaskStarted = scExecuteTask(curr);
                    next = curr->next;
                    scMainQueueRemove(curr);
                    curr = next;
                } else {
                    isTaskStarted = 1;
                }
                break;
        }
    }
}

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

void scHandleSPTaskDone(void) {
    if ((D_80048B90 != NULL) && (D_80048B90->info.state == SC_TASK_STATE_RUNNUNG)) {
        osSendMesg(D_80048B90->info.mq, (OSMesg)NULL, OS_MESG_NOBLOCK);
        D_80048B90 = NULL;
        func_80001E20();
        D_80048C78 = (osGetCount() - D_80048C70) / 2971;
    } else {
        if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.state == SC_TASK_STATE_SUSPENDING)) {
            if (osSpTaskYielded(&scCurrentGfxTask->task) == 1) {
                scCurrentGfxTask->info.state = SC_TASK_STATE_SUSPENDED;
                scPausedQueueAdd(&scCurrentGfxTask->info);
                scCurrentGfxTask = NULL;
            } else {
                scCurrentGfxTask->info.state = SC_TASK_STATE_STOPPED;
            }
            osSpTaskLoad(&D_80048B90->task);
            osSpTaskStartGo(&D_80048B90->task);
            D_80048B90->info.state = SC_TASK_STATE_RUNNUNG;
        }
        if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.unk_18 == 1) &&
            (scCurrentGfxTask->info.state != SC_TASK_STATE_SUSPENDED)) {
            if ((scCurrentGfxTask->info.type == SC_TASK_TYPE_GFX) && (scCurrentGfxTask->unk74 == 1)) {
                osInvalDCache(&scDPOutputBuffSize, sizeof(scDPOutputBuffSize));
                scCurrentGfxTask->rdpBufSize = scDPOutputBuffSize;
                scRDPOutputBufferUsed += (s32) scDPOutputBuffSize;
                scRDPOutputBufferUsed = OS_DCACHE_ROUNDUP_SIZE(scRDPOutputBufferUsed);

                if (scRDPOutputBufferUsed < scDPOutputBuffSize) {
                    fatal_printf("rdp_output_buff over !! size = %d\n byte", scRDPOutputBufferUsed);
                    while (1);
                }
                scCurrentGfxTask->info.state = SC_TASK_STATE_QUEUED;
                func_80000E14(&scCurrentGfxTask->info);
                func_80001FAC();
            }
            scCurrentGfxTask = NULL;
            func_80001E20();
        } else if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.unk_18 == 2) &&
                   (scCurrentGfxTask->info.type == SC_TASK_TYPE_GFX)) {
            scCurrentGfxTask->info.state = SC_TASK_STATE_STOPPED;

            if (!(scCurrentGfxTask->unk7C & 2)) {
                scCurrentGfxTask->unk7C |= 1;
            }
        }
    }
}

void scHandleDPTaskDone(void) {
    if ((scCurrentGfxTask != NULL) && (scCurrentGfxTask->info.unk_18 == 2)) {
        if (scCurrentGfxTask->info.type == SC_TASK_TYPE_GFX) {
            if (scCurrentGfxTask->fb != NULL) {
                if (scPostProcessFunc != NULL) {
                    if (scCurrentGfxTask->fb == (s32 *)-1) {
                        scPostProcessFunc((void *)scNextFrameBuffer);
                    } else {
                        scPostProcessFunc(scCurrentGfxTask->fb);
                    }
                }
                func_80001774(scCurrentGfxTask->fb);
            }
            if (scCurrentGfxTask->info.mq != NULL) {
                osSendMesg(scCurrentGfxTask->info.mq, (OSMesg)scCurrentGfxTask->info.retVal, OS_MESG_NOBLOCK);
            }
            if (scCurrentGfxTask->info.state == SC_TASK_STATE_SUSPENDING) {
                osSpTaskLoad(&D_80048B90->task);
                osSpTaskStartGo(&D_80048B90->task);
                D_80048B90->info.state = SC_TASK_STATE_RUNNUNG;
            }
        }
        scCurrentGfxTask = NULL;
        func_80001E20();
    } else if (scCurrentDPTask != NULL) {
        if (scCurrentDPTask->fb != NULL) {
            if (scPostProcessFunc != NULL) {
                if (scCurrentDPTask->fb == (s32 *)-1) {
                    scPostProcessFunc((void *)scNextFrameBuffer);
                } else {
                    scPostProcessFunc(scCurrentDPTask->fb);
                }
            }
            func_80001774(scCurrentDPTask->fb);
        }
        if (scCurrentDPTask->info.mq != NULL) {
            osSendMesg(scCurrentDPTask->info.mq, (OSMesg)scCurrentDPTask->info.retVal, OS_MESG_NOBLOCK);
        }
        scCurrentDPTask = NULL;
        func_80001FAC();
    } else if ((scPausedQueueHead != NULL) && (scPausedQueueHead->info.unk_18 == 2)) {
        if (scPausedQueueHead->info.type == SC_TASK_TYPE_GFX) {
            if (scPausedQueueHead->fb != NULL) {
                if (scPostProcessFunc != NULL) {
                    if (scPausedQueueHead->fb == (s32 *)-1) {
                        scPostProcessFunc((void *)scNextFrameBuffer);
                    } else {
                        scPostProcessFunc(scPausedQueueHead->fb);
                    }
                }
                func_80001774(scPausedQueueHead->fb);
            }
            if (scPausedQueueHead->info.mq != NULL) {
                osSendMesg(scPausedQueueHead->info.mq, (OSMesg)scPausedQueueHead->info.retVal, OS_MESG_NOBLOCK);
            }
            scPausedQueueRemove(&scPausedQueueHead->info);
        }
        func_80001E20();
    }
}

void scAddTask(SCTaskInfo *task) {
    task->state = SC_TASK_STATE_QUEUED;
    scMainQueueAdd(task);
    func_80001E20();
}

#ifdef MIPS_TO_C
// 344/345 instructions; the only diff is one extra `lui $a0, %hi(D_80048BA8)`
// scheduled into the osTvType switch's first branch-delay slot.
void scThreadMain(void *arg) {
    u32 mesg;

    scClientList = NULL;

    scMainQueueHead = scMainQueueTail = (SCTaskInfo *)(scCurrentGfxTask = D_80048B90 = scPausedQueueHead = scPausedQueueTail = NULL);
    scCurrentDPTask = scDPTaskHead = (SCTaskGfx *)(D_80048BA0 = NULL);

    D_80048C48 = 0;
    gCurrFrameBuffer = scNextFrameBuffer = D_80048C60 = 0;
    D_80048CD0 = 0;
    scPreNMIProc = scPreNMIDefault;
    scBeforeReset = 0;
    scPreNMIState = -1;

    switch (osTvType) {
        case 1:
            gCurrentViMode = D_80048BA8 = osViModeNtscLan1;
            break;

        case 0:
            gCurrentViMode = D_80048BA8 = osViModeFpalLan1;
            break;

        case 2:
            gCurrentViMode = D_80048BA8 = osViModeMpalLan1;
            break;
    }

    D_80048BA8.comRegs.ctrl = 0x10016;
    gCurrentViMode.comRegs.ctrl = 0x10016;
    osViSetMode(&D_80048BA8);
    osViBlack(1);

    D_80048C7C.antialias = 1;
    D_80048C7C.serrate = 0;
    D_80048C7C.colordepth32 = 0;
    D_80048C7C.gamma = 0;
    D_80048C7C.blackout = 1;
    D_80048C7C.unk_b04 = 0;
    D_80048C7C.gammadither = 1;
    D_80048C7C.ditherfilter = 1;
    D_80048C7C.divot = 1;

    osCreateMesgQueue(&scTaskMQ, D_80048C98, ARRAY_COUNT(D_80048C98));
    osViSetEvent(&scTaskMQ, (OSMesg)1, 1);
    osSetEventMesg(OS_EVENT_SP, &scTaskMQ, (OSMesg)2);
    osSetEventMesg(OS_EVENT_DP, &scTaskMQ, (OSMesg)3);
    osSetEventMesg(OS_EVENT_PRENMI, &scTaskMQ, (OSMesg)99);

    osSendMesg(&gThreadInitializedMQ, (OSMesg)1, OS_MESG_NOBLOCK);

    while (1) {
        osRecvMesg(&scTaskMQ, (OSMesg)&mesg, OS_MESG_BLOCK);

        switch (mesg) {
            case 1:
                scHandleVRetrace();
                break;

            case 2:
                scHandleSPTaskDone();

                if ((scBeforeReset == 1) && (scPreNMIState == -1)) {
                    scPreNMIState = osAfterPreNMI();
                }
                break;

            case 3:
                scHandleDPTaskDone();
                break;

            case 99:
                if (scPreNMIProc != NULL) {
                    scPreNMIProc();
                }
                break;

            default:
                if (scBeforeReset == 0) {
                    scAddTask((SCTaskInfo *)mesg);
                }
        }
    }
}
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
