#pragma once

#include "main/lbmatrix.h"

void func_800AFBB4(s32, struct GObj *);
void func_800B1900(u16);
void func_800B2340(Vector *, struct DObj *, u32);
void setProcessMain(struct GObjProcess *, void (*)(struct GObj *));
void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
void curObjSleepForever(void);
void procMainStub(struct GObj *);
void func_800A9864(s32, s32, s32);
void func_800AA018(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800AF27C(void);
void func_800AFA14(void);
void func_800B5094(struct GObj *);
void func_800B4B9C(struct GObj *);
extern FUNCLIST D_801E6450_ovl15;
extern FUNCLIST D_801E647C_ovl15;
extern FUNCLIST D_801E64C0_ovl15;
extern FUNCLIST D_801E66B0_ovl15;
extern FUNCLIST D_801E66C0_ovl15;
extern FUNCLIST D_801E66D4_ovl15;
extern FUNCLIST D_801E66E4_ovl15;
void func_801DB2F8_ovl15(struct GObj *);
void func_801DB378_ovl15(struct GObj *);
void func_801DD7C0_ovl15(struct GObj *);
void func_801DFC10_ovl15(s32, s32, f32);
void func_800B7560(s32);
void func_800B33F4(void);
void func_800AA154(s32);
void func_800AA864(s32, s32);
void func_800BB468(s32, s32);
void func_800BC11C(f32);
void func_800FD754(s32, f32, f32, f32);
s32 func_8019E0A4_ovl7(s32, s32);
s32 func_8019DD78_ovl7(void);
void func_8019D958_ovl7(u16);
void func_801A3280_ovl7(void);
void func_8019BB58_ovl7(void);
void func_801A0D50_ovl7(void *);
s32 func_801ACC34_ovl7(s32, s32);
extern f32 D_800D6E5C;
#include "ovl1/ovl1_2_2.h"

struct UnkStruct800D7118 {
    /* 0x00 */ u8 pad0[0x3C];
    /* 0x3C */ s32 unk3C;
};
extern struct UnkStruct800D7118 D_800D7118;

extern s32 random_soft_s32_range(s32);
void func_800AEFFC(s32);
void func_800BC1FC(s32);
void func_800B19F4(s32, u32);
s32 func_80110150(void *);
void func_80111550(s32);
struct Unk80111C88Inner {
    /* 0x00 */ u8 pad0[8];
    /* 0x08 */ s32 unk8;
    /* 0x0C */ u8 padC[4];
    /* 0x10 */ f32 unk10;
    /* 0x14 */ u8 pad14[4];
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ u8 pad20[0x10];
    /* 0x30 */ s32 unk30;
    /* 0x34 */ u8 pad34[0x24];
    /* 0x58 */ s32 unk58;
};
struct Unk80111C88 {
    /* 0x00 */ u8 pad0[0x24];
    /* 0x24 */ struct Unk80111C88Inner *unk24;
};
struct Unk80111C88 *func_80111C88(void *, u32);
void func_80111ECC(void *);
void func_801DD208_ovl15(struct GObj *);
void func_801DC310_ovl15(struct GObj *);
extern s32 D_801E6644_ovl15[];
s32 func_801117BC(void *, u32);
void func_80111C4C(s32);
s32 func_801A0D74_ovl7();
void func_801A36CC(void *);
void func_801A3938(void *);
void func_801AB008_ovl7(void);
void func_801AC33C_ovl7(struct GObj *);
void func_801AC364_ovl7(struct GObj *);
void func_801A3864_ovl7(void);
extern s32 D_801CA738_ovl7;
extern s32 D_801CB044_ovl7;
s32 func_8010C274(struct EnemyProbe *);
void func_801ABBA0_ovl7(struct EnemyRecord *);
void func_801AC364_ovl7(struct GObj *);
void func_801E6074_ovl15(void);
void func_801E6374_ovl15(struct GObj *);
extern struct EnemyEventTable D_801CB56C_ovl7;
extern s32 D_801D8D54;
extern s32 D_801D8D78;
extern s32 *D_801E6510_ovl15[];
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_800FB914(s32);
void func_801A03E4_ovl7(struct DObj *);
void func_801ACF84_ovl7(struct GObj *);
void func_8019F3B0_ovl7(void);
