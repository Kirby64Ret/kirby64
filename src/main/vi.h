#ifndef VI_H
#define VI_H

#include <PR/ultratypes.h>
#include "localsched.h"

typedef struct {
    /* 0x00 */ void* cfb1;
    /* 0x04 */ void* cfb2;
    /* 0x08 */ void* cfb3;
    /* 0x0C */ u16* zBuffer;
    /* 0x10 */ u32 screenWidth;
    /* 0x14 */ u32 screenHeight;
    /* 0x18 */ u32 flags;
} ScreenSettings; // size >= 0x18

extern u16* viZBuffer;
extern u16* gZBuffer;
extern s32 viCFBFmt;
extern s32 gCurrScreenWidth;
extern s32 gCurrScreenHeight;

extern s16 viEdgeOffsetLeft;
extern s16 viEdgeOffsetRight;
extern s16 viEdgeOffsetTop;
extern s16 viEdgeOffsetBottom;

void viApplyScreenSettings(ScreenSettings* settings);
void viSetScreenOffsets(s16, s16, s16, s16);
u32 viPackRGBA(u32 color);
void viScheduleApplySettings(SCTaskVi* task);

#endif /* VI_H */
