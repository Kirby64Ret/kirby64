#ifndef SYS_SCHED_H
#define SYS_SCHED_H

#include <PR/os_message.h>
#include <PR/sptask.h>
#include <PR/ultratypes.h>

enum SCTaskType {
    SC_TASK_TYPE_GFX = 1,
    SC_TASK_TYPE_AUDIO = 2,
    SC_TASK_TYPE_ADD_CLIENT = 3,
    SC_TASK_TYPE_VI = 4,
    SC_TASK_TYPE_FRAMEBUFFERS = 5,
    SC_TASK_TYPE_GFX_END = 6,
    SC_TASK_TYPE_NOP = 7,
    SC_TASK_TYPE_RDP_BUFFER = 8,
    SC_TASK_TYPE_CUSTOM_BUFFERING = 9,
    SC_TASK_TYPE_DEFAULT_BUFFERING = 10,
    SC_TASK_TYPE_11 = 11
};

enum SCTaskState {
    SC_TASK_STATE_0 = 0,
    SC_TASK_STATE_QUEUED = 1,
    SC_TASK_STATE_RUNNUNG = 2,
    SC_TASK_STATE_PRIORITY_PENDING = 3,
    SC_TASK_STATE_SUSPENDING = 4,
    SC_TASK_STATE_SUSPENDED = 5,
    SC_TASK_STATE_STOPPED = 6
};

struct SCTaskInfo;

typedef s32 (*SCTaskCallback)(struct SCTaskInfo*);

typedef struct SCClient {
    /* 0x00 */ struct SCClient* next;
    /* 0x04 */ OSMesgQueue* mq;
} SCClient; // size = 0x8

typedef struct SCTaskInfo {
    /* 0x00 */ s32 type; // SCTaskType
    /* 0x04 */ s32 priority;
    /* 0x08 */ s32 state; // SCTaskState
    /* 0x0C */ struct SCTaskInfo* next;
    /* 0x10 */ struct SCTaskInfo* prev;
    /* 0x14 */ SCTaskCallback fnCheck; // if set, the task is not executed until this function returns TRUE
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 retVal;
    /* 0x20 */ OSMesgQueue* mq;
} SCTaskInfo; // size == 0x24

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x28 */ OSTask task;
    /* 0x68 */ u32* unk68;
    /* 0x6C */ s32* fb;
    /* 0x70 */ s32 fbIdx;
    /* 0x74 */ s32 unk74;
    /* 0x78 */ s32 rdpBufSize;
    /* 0x7C */ s32 unk7C;
    /* 0x80 */ u32 taskId;
    /* 0x84 */ s32 unk_84;
} SCTaskGfx; // size = 0x84

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x28 */ OSTask task;
} SCTaskAudio; // size = 0x68

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ SCClient* client;
} SCTaskAddClient; // size == 0x28

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ s32 width;
    /* 0x28 */ s32 height;
    /* 0x2C */ s32 flags;
    /* 0x30 */ s16 edgeOffsetLeft;
    /* 0x32 */ s16 edgeOffsetRight;
    /* 0x34 */ s16 edgeOffsetTop;
    /* 0x36 */ s16 edgeOffsetBottom;
} SCTaskVi; // size == 0x38

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ void* unk24[3]; // frame buffer pointers
} SCTaskFb;                    // size == 0x30

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ void* fb;
    /* 0x28 */ u32 taskId;
} SCTaskGfxEnd; // size == 0x2C

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ void* buffer;
    /* 0x28 */ s32 size;
} SCTaskRDPBuffer; // size >= 0x2C

typedef struct {
    /* 0x00 */ SCTaskInfo info;
    /* 0x24 */ OSMesgQueue* unk24;
} SCTaskType9; // size >= 0x28

extern s32 scBeforeReset;
extern u64 scUnknownU64;
extern OSMesgQueue scTaskQueue;
extern u32 scUnknownInt;
extern u32 scTimeSpentAudio;
extern u32 scTimeSpentGfx;

void scAddClient(SCClient* client, OSMesgQueue* mq, OSMesg* msg, u32 count);
void scExecuteBlocking(SCTaskInfo* task);
s32 func_80000B64(SCTaskInfo* t);
void scRemovePostProcessFunc(void);
s32 scCheckGfxTaskDefault(SCTaskGfx*);
void scMain(void* arg);
void scSetPostProcessFunc(void (*fn)(void*));

#endif