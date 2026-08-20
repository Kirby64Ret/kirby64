#ifndef OVL1_3_H
#define OVL1_3_H

#include "DObj.h"

void func_800AA78C(s32, s32, f32);
struct UnkWhat {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10[0x10000 - 0x10];
};
extern f32 D_800D5DD8;

struct CacheLine {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

struct BGHeader {
    u8 fmt;
    u8 siz;
    u8 unk2; // color count?
    u16 width;
    u16 height;
    u32 imgOffset;
    u32 palOffset;
};

extern struct BGHeader **D_800D0104[];

#define ALIGN100(x) (((u32)x + 0xFF) & ~(0x100))


extern u32 D_800D7BB4;
extern u32 D_800D7BB0;
extern u32 D_800D7BB8;
extern u32 D_800D7C10;
void func_800AA018(s32 arg0);
void func_800AA864(s32, u32);
void func_800AAF34(s32, s32, f32);


// WARNING: functions match taking s32, but we need to pass a u16 instead?
//  They can't have casted every time right?
void func_800A99E4(u16);
void func_800A9D64(u16);

// Draw Func List
void func_800AB110(GObj *);
void func_800AB118(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void func_800AB2C0(GObj *);
void func_800AB314(GObj *);
void func_800AB390(GObj *);
void func_800AB398(GObj *);
void func_800AB3A0(GObj *);
void func_800AB3F4(GObj *);
void func_800AB470(GObj *);
void func_800AB478(GObj *);
void func_800AB480(GObj *);

#endif // OVL1_3_H
