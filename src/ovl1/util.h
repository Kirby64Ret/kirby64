#ifndef OVL1_UTILS_H
#define OVL1_UTILS_H

void utilPrintf(char* fmt, ...);
void utilFuncTableJump(u32 idx, u32 max, FUNCLIST callbackTbl);
void utilWrapRotation(Vector *vec);
void utilGetTransformSRT(Vector *vec, DObj *dobj);
void utilTransformPoint(Vector *vec, DObj *dobj, Vector *input);
void utilSetPlayerContPad(void);
void utilSetRectBoundsAndColor(s32 ulx, s32 uly, s32 lrx, s32 lry, u8 red, u8 green, u8 blue);
void utilSetRectColorFullScreen(u16 red, u16 green, u16 blue);
void utilSetRectColor(u16 red, u16 green, u16 blue);
void utilFadeRectLoop(s32 arg0);
void utilDrawRectGfx(GObj *gobj);
void utilSpawnRect(s16 alpha, s16 rate, u8 endKind);
void utilPauseAllGObjs(void);
void utilResumeAllGObjs(void);
void utilLoadOverlay(u32 arg0);
u8 utilTamperCheck(void);

#endif // OVL1_UTILS_H
