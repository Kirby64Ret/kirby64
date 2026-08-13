#include "common.h"
#include "localsched.h"
#include "vi.h"

u16 *gZBuffer; // 0x8004A500
s32 viCFBFmt;
s32 gCurrScreenWidth; // 0x8004A508
s32 gCurrScreenHeight; // 0x8004A50C
u32 viFlags;
u32 viSettingsChanged;
void *viCFBList[3];
s16 viEdgeOffsetLeft, viEdgeOffsetRight, viEdgeOffsetTop, viEdgeOffsetBottom;

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
#ifdef PORT
    /* PORT: every ScreenSettings the game passes here is a data-blob symbol
     * the PC data generator emits as a WIDENED pointer array -- one 8-byte
     * void* slot per N64 word (e.g. build/pc/data/ovl6_ovl6.data.c's
     * D_80154E80_ovl6). The LP64 struct's pointer fields (cfb1..3, zBuffer,
     * offsets 0/8/16/24) coincide with slots 0..3, so pointer reads AND the
     * runtime pointer stores some scenes do first (ovl2's `.zBuffer = ...`)
     * stay correct -- but screenWidth (offset 32) lands on slot 4's LOW half,
     * screenHeight (offset 36) on slot 4's HIGH half (always 0), and flags
     * (offset 40) on slot 5 (the real height). The zero height then poisons
     * gCurrScreenHeight: renderInitCamera clamps every camera scissor's lry
     * to gCurrScreenHeight - ... = 0, the scissor goes inverted-empty, and
     * every 3D triangle in the game is scissored out (2D rect paths don't
     * use the camera scissor, which is why the logos/title still drew).
     * Read the widened slots directly instead. */
    {
        void** slots = (void**)settings;

        viSetCFB(slots[0], slots[1], slots[2]);
        gZBuffer = (u16*)slots[3];
        viSetScreenParams((s32)(uintptr_t)slots[4], (s32)(uintptr_t)slots[5], (u32)(uintptr_t)slots[6]);
    }
#else
    viSetCFB(settings->cfb1, settings->cfb2, settings->cfb3);
    gZBuffer = settings->zBuffer;
    viSetScreenParams(settings->screenWidth, settings->screenHeight, settings->flags);
#endif
}
