#pragma once

void func_800AFBB4(s32, struct GObj *);
void func_800B1900(u16);
void func_800B2340(Vector *, struct DObj *, u32);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
void curObjSleepForever(void);
void procMainStub(struct GObj *);

#include "main/lbmatrix.h"

extern f32 D_800D7158[];

extern f32 D_801E56D0_ovl17;
extern f32 D_801E56D4_ovl17;

void func_801DC71C_ovl17(struct GObj *);
void func_801DC724_ovl17(void);
void func_801DC91C_ovl17(struct GObj *);
void func_801DCB44_ovl17(Vector *);
void func_801DCFD4_ovl17(Vector *);
void func_801DD040_ovl17(Vector *);
void func_801DD09C_ovl17(Vector *, Vector *);
void func_801DD17C_ovl17(void);
void func_801DD2B0_ovl17(void);
void func_801DD88C_ovl17(struct GObj *);

void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AFA14(void);
void func_80111534(s32);
void func_800AF27C(void);
void func_800B5094(struct GObj *);
extern FUNCLIST D_801E5400_ovl17;
extern FUNCLIST D_801E5404_ovl17;
extern FUNCLIST D_801E5418_ovl17;
void func_801DDC40_ovl17(struct GObj *);
extern char D_801E55B0_ovl17[];
extern char D_801E55CC_ovl17[];
extern FUNCLIST D_801E54C4_ovl17;
extern FUNCLIST D_801E54D4_ovl17;
void func_801E2AF0_ovl17(struct GObj *);
s32 func_801E30BC_ovl17(void);
s32 func_801E4488_ovl17(void);
void func_801E4668_ovl17(void);
extern FUNCLIST D_801E549C_ovl17;
extern FUNCLIST D_801E54B0_ovl17;
void func_801E1170_ovl17(struct GObj *);
void func_801E2B78_ovl17(struct GObj *);
s32 func_801E30BC_ovl17(void);
void func_801E36AC_ovl17(struct GObj *);
s32 func_801E373C_ovl17(void);
void func_801E3990_ovl17(struct GObj *);
void func_801E3A20_ovl17(void);
void func_801E40F4_ovl17(struct GObj *);
void func_801E4178_ovl17(void);
void func_800B4B9C(struct GObj *);
void func_801ACD90_ovl7(s32, s32, Vector *);
f32 sqrtf(f32);
