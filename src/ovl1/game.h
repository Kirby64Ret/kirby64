#ifndef __GAME_H__
#define __GAME_H__

#define GAME_30FPS 2.0f
#define GAME_60FPS 1.0f

// probably .data for this file
extern u32 gGameState;
extern u32 D_800BE4F4;
extern u32 D_800BE4F8;
extern u32 D_800BE4FC;
extern s32 D_800BE500;
extern s32 D_800BE504;
extern u32 D_800BE508;
extern u32 D_800BE50C;
extern f32 D_800BE510;
extern u32 D_800BE518;
extern u32 D_800BE51C;
extern u32 D_800BE520;
extern f32 D_800BE524;
extern u32 D_800BE52C;
extern u32 D_800BE530;
extern u32 D_800BE534;
extern u32 D_800BE538;
extern u32 D_800BE53C;

// likely bss in this file
extern s32 D_800D6B74;

extern Lights1 D_800BE548;

extern f32 gameTicksPerDrawInv;

void game_tick(s32);
void gameSetUpdateRate(f32 ticksPerDrawFrame);

#endif // __GAME_H__
