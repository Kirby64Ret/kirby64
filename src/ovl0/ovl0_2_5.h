#ifndef __OVL0_2_5_H__
#define __OVL0_2_5_H__

#include <include/PR/os_thread.h>

#define STACK_TOP_MAGIC 0x00000000FEDCBA98

struct ObjThread_sub1B8 {
    // what looks like an mini thread stack, based on the last value in here being set to STACK_TOP_MAGIC
    u64 stack[0x20];
};

struct ObjThread {
    struct ObjThread *unk0;
    u32 unk4;
    OSThread *unk8;
    u8 filler[0x1B8 - 0x04 - 0x08];
    // This might be a u8 pointer
    struct ObjThread_sub1B8 *unk1B8;
    s32 unk1BC;
};

struct ObjThreadStack {
    struct ObjThreadStack *unk0;
    u32 unk4;
    // This might be a u8 array
    u32 unk8[16];
};

struct ObjProcess {
    struct ObjProcess* unk0;
    u8 filler[0x10 - 0x04];
    u32 unk10; // priority
    u8 unk14; // kind
    u8 unk15;
    u8 unk16;
    u8 unk17;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
};

// TODO: is this an existing struct instead of a brand new one?
struct unk80008840 {
    u8 padding[0x90];
    struct AnimStack *unk90;
    u32 unk94;
    f32 unk98;
};

struct MObj {
    struct MObj *unk0;
};

struct unk8004A678Addr {
    u8 filler[4];
    struct unk8004A678Addr *unk4;
};

struct DObj {
    struct DObj *unk0;
    u32 unk4;
    struct DObj *unk8;
    u32 unkC;
    struct DObj *unk10;
    u32 unk14;
    struct DObj *unk18;
    u8 filler[0x4C - 0x18 - 0x04];
    u32 unk4C;
    u8 filler2[0x54 - 0x4C - 0x04];
    u8 unk54;
    u8 unk55;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    f32 unk74;
    f32 unk78;
    f32 unk7C;
    u32 unk80;
    u32 unk84;
};

struct Camera {
    struct Camera *unk0;
};
 
struct Unk_Ovl0_2_5 { // used a lot in this file
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

// TODO: See if this struct can be merged with another existing one
struct unk800083CCFunc {
    u32 unk0;
    struct unk800083CCFunc* unk4;
    struct unk800083CCFunc* unk8;
    u8 unkC;
    u8 filler[3];
    u32 unk10;
};
#endif
