#ifndef OVL1_7_H
#define OVL1_7_H

#include "GObj.h"

// GObjThreadStack?
struct UnkStruct800B1EC8 {
    struct UnkStruct800B1EC8 *unk0;
    struct UnkStruct800B1EC8 *unk4;
    struct UnkStruct800B1EC8 *unk8;
    struct UnkStruct800B1EC8 *unkC; // pointer?
    u32 unk10;
    u32 unk14; // pointer?
    u32 *unk18;
    GObjThread *unk1C;

    void (*unk20)(struct GObj *);

};

typedef struct ovl1_7_gobj_4c {
    u32 unk0[4];
    u8 unk10;
    u8 unk11;
    u8 unk12;
    u8 unk13;
    u32 unk14;
    u32 unk18;
    u32 unk1C;

    // 0x20 pos x/y
    struct {f32 x,y;} pos;

    // 0x28 scale x/y/z
    Vector scale;

    u32 unk34;
    u32 unk38;
    u32 unk3C;

    u32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;

    u32 unk50;
    u32 unk54;
    s16 unk58; s16 unk5A;
    u32 unk5C;

    s16 unk60; s16 unk62;
    u32 unk64;
    u32 unk68;
    u8 unk6C;
    u8 unk6D;
    u8 unk6E;
    s8 unk6F;

    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;

    u32 unk80;
    u32 unk84;
    u32 unk88;
    u32 unk8C;

    u32 unk90;
    u32 unk94;
    u32 unk98;
    u32 unk9C;

    u32 unkA0;
    u32 unkA4;
    u32 unkA8;
    u32 unkAC;

    u32 unkB0;
    u32 unkB4;
    s16 unkB8; s16 unkBA;
    u32 unkBC;

    s16 unkC0; s16 unkC2;
    u32 unkC4;
    u32 unkC8;
    u8 unkCC;
    u8 unkCD;
    u8 unkCE;
    s8 unkCF;
} UnkStruct800B158C;


void func_800AFA88(GObj *gobj);
extern s32 func_800B3234(f32, f32, f32);
void func_800B1900(u16 track);
void func_800AFBB4(s32, GObj *);
void func_800AED80(f32 arg0, s32 arg1);
void func_800AECC0(f32);
void func_800AED20(f32);
void func_800B2340(Vector *vec, struct DObj *node, u32 track);
void func_800B26D8(Vector *vec, struct DObj *node, u32 track);
void func_800B2928(Vector *vec, struct DObj *node, u32 track);
void setProcessMain(GObjProcess *proc, void (*cb)(GObj *));
void assign_new_process_entry(struct GObjProcess *ts, void (*func)(struct GObj *));
s32 func_800A4F48(s32 arg0, Vector *arg1, f32 arg2, f32 arg3);

void procMainStub(GObj *g);
void procMainMove(GObj *g);
void func_800B158C(GObj *);
void func_800B175C(GObj *gobj);
void func_800B1C7C(GObj *gobj);

#endif // OVL1_7_H
