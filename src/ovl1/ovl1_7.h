#ifndef OVL1_7_H
#define OVL1_7_H

#include "GObj.h"

extern s32 func_800B3234(f32, f32, f32);
void func_800B1900(u16 track);
void func_800AFBB4(s32, GObj *);
void func_800AED80(f32 arg0, s32 arg1);
void func_800B1434(GObj *arg0);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B2340(Vector *vec, struct LayoutNode *node, u32 track);
void func_800B26D8(Vector *vec, struct LayoutNode *node, u32 track);
void func_800B2928(Vector *vec, struct LayoutNode *node, u32 track);
void setProcessMain(GObjProcess *proc, void (*cb)(GObj *));
s32 func_800A4F48(s32 arg0, Vector *arg1, f32 arg2, f32 arg3);

void func_800B143C(GObj *g);
void func_800B158C(GObj *);

#endif // OVL1_7_H
