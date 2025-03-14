#include "common.h"
#include "localsched.h"
#include "vi.h"

extern u16 *gZBuffer; // 0x8004A500
extern s32 gCurrScreenWidth; // 0x8004A508
extern s32 gCurrScreenHeight; // 0x8004A50C
extern u32 viFlags;
extern u32 viSettingsChanged;
extern void *viCFBList[3];
extern s16 viEdgeOffsetLeft, viEdgeOffsetRight, viEdgeOffsetTop, viEdgeOffsetBottom;

u32 viPackRGBA(u32 color) {
    u32 temp_v0 = ((((color >> 0x10) & 0xF800) | ((color >> 0xD) & 0x7C0)) | ((color >> 0xA) & 0x3E)) | ((color >> 7) & 1);

    return (viCFBFmt == 3) ? color : (temp_v0 << 16) | temp_v0;
}

void viSetCFB(void* fb1, void* fb2, void* fb3) {
    SCTaskFb task;

    task.info.type = SC_TASK_TYPE_FRAMEBUFFERS;
    task.info.priority = 100;
    viCFBList[0] = task.cfb[0] = fb1;
    viCFBList[1] = task.cfb[1] = fb2;
    viCFBList[2] = task.cfb[2] = fb3;

    scExecuteBlocking(&task.info);
}

void viSetFlags(s32 flags) {
    viFlags |= flags;

    if (flags & 0x20) {
        viCFBFmt = 3;
    }
    if (flags & 0x10) {
        viCFBFmt = 2;
    }
    viSettingsChanged = 1;
}

void viSetScreenWidth(s32 wd) {
    gCurrScreenWidth = wd;
    viSettingsChanged = 1;
}

void viSetScreenHeight(s32 ht) {
    gCurrScreenHeight = ht;
    viSettingsChanged = 1;
}

void viSetScreenOffsets(s16 left, s16 right, s16 top, s16 bottom) {
    viEdgeOffsetLeft = left;
    viEdgeOffsetRight = right;
    viEdgeOffsetTop = top;
    viEdgeOffsetBottom = bottom;
    viSettingsChanged = 1;
}

void viInitVideoTask(SCTaskVi* task) {
    task->width = gCurrScreenWidth;
    task->height = gCurrScreenHeight;
    task->flags = viFlags;
    task->edgeOffsetLeft = viEdgeOffsetLeft;
    task->edgeOffsetRight = viEdgeOffsetRight;
    task->edgeOffsetTop = viEdgeOffsetTop;
    task->edgeOffsetBottom = viEdgeOffsetBottom;
    viFlags = 0;
    viSettingsChanged = 0;
}

void viScheduleApplySettings(SCTaskVi* task) {
    if (viSettingsChanged) {
        task->info.type = SC_TASK_TYPE_VI;
        task->info.priority = 50;
        task->info.fnCheck = NULL;
        task->info.mq = NULL;
        viInitVideoTask(task);
        osSendMesg(&scTaskMQ, (OSMesg) task, OS_MESG_NOBLOCK);
    }
}

void viSetScreenParams(s32 width, s32 height, u32 flags) {
    SCTaskVi task;

    viFlags = 0;
    viCFBFmt = G_IM_SIZ_16b;
    viSetFlags(flags);
    viSetScreenWidth(width);
    viSetScreenHeight(height);
    task.info.type = SC_TASK_TYPE_VI;
    task.info.priority = 100;
    viInitVideoTask(&task);
    scExecuteBlocking(&task.info);
}

void viApplyScreenSettings(ScreenSettings* settings) {
    viSetCFB(settings->fb1, settings->fb2, settings->fb3);
    gZBuffer = settings->zBuffer;
    viSetScreenParams(settings->screenWidth, settings->screenHeight, settings->flags);
}
