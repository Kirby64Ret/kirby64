#ifndef OVL_18_1_H
#define OVL_18_1_H

#include "unk_structs/D_800E1B50.h"
extern void (*D_800DEF90[])(s32);

extern void (*D_800DF150[])(s32);

extern s32 D_800E8920[];

extern u8 D_800E7880[];

extern s32 gEntityFuncListIDArray[];

extern void utilFuncTableJump(s32, s32, void (*c));

extern void (*D_8022AB80[58])(void);

extern f32 gEntitiesScaleZArray[];

extern f32 gEntitiesScaleYArray[];

extern f32 gEntitiesScaleXArray[];

extern s32 D_800E98E0[];

extern s32 D_800DDFD0[];

extern f32 D_800EADE0[];
extern f32 D_8022BBC4;

extern f32 D_800E6A10[];

extern s32 D_800EBBE0[];

extern f32 gEntitiesNextPosZArray[];
extern f32 D_800EAC20[];

extern f32 D_800EAA60[];


extern f32 gEntitiesNextPosYArray[];
extern f32 D_800EA6E0[];

extern f32 D_800EA8A0[];

extern f32 D_800EAFA0[];
extern f32 D_800EB160[];
extern f32 D_800EB320[];

extern s32 D_800E5F90[];
extern f32 D_800E6BD0[];
extern f32 gEntitiesNextPosXArray[];

extern f32 D_800E3750[];
extern f32 D_800E3210[];
extern f32 D_800E3C90[];
extern f32 D_8022BBC0;
extern f32 D_8022BC00;
extern f32 D_8022BC04;

extern s32 gEntityGObjProcessArray[];
extern s32 D_800E9720[];
extern s32 D_800B7790;
extern s32 D_8022A988;

extern s32 D_800E9560[];
extern f32 gameTicksPerDraw;
extern f32 D_8022BBFC;

extern s32 D_800B68AC;

f32 func_801D650C_ovl18(s32);
void func_80220424_ovl18(void);
void func_802202B8_ovl18(s32 arg0);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_80220818_ovl18(s32);
void func_8022ABC0_ovl18(void);
void func_80220AA8_ovl18(s32);
void assign_new_process_entry(s32, void (*c));
u32 func_8019B738_ovl18(f32);
void func_80221440_ovl18(void);

extern s32 D_800B72AC;
extern s32 D_800B7138;

extern s32 D_8022A214;
extern s32 D_8022A964;

extern s32 D_8022A184;
extern s32 D_8022A940;

#endif
