#ifndef __OVL0_2_5_H__
#define __OVL0_2_5_H__

#include <ultra64.h>
#include <types.h>

#include "geo_block_header.h"

#define STACK_TOP_MAGIC 0x00000000FEDCBA98

// todo: keep naming scheme but rename regardless
// uses GObjThreadStack
#define HS64_GOBJPROC_KIND_GOBJTHREAD 0
// just uses a callback
#define HS64_GOBJPROC_KIND_CALLBACK 1
// classic stack
#define HS64_GOBJPROC_KIND_OSTHREAD 2

struct ObjStack {
    // what looks like an mini thread stack, based on the last value in here being set to STACK_TOP_MAGIC
    u64 stack[0x20];
};

// if a function that uses GObjThread doesnt match, try this definition
// struct GObjThread {
//     struct GObjThread *unk0;
//     u32 unk4;
//     OSThread *unk8;
//     u8 filler[0x1B8 - 0x04 - 0x08];
//     // This might be a u8 pointer
//     struct ObjStack *objStack;
//     s32 unk1BC;
// };

struct UnkStruct800009E8 {
    u32 unk0;
    OSMesgQueue *unk4;
};

struct DynamicBuffer {
    u32 id;
    void *poolStart;
    void *poolEnd;
    u32 top;
};

extern struct DynamicBuffer gDynamicBuffer1, gDynamicBuffer2;

struct GObjThread
{
    struct GObjThread *unk0; // function?
    OSThread thread;
    struct ObjStack *objStack;
    s32 objStackSize;
};
typedef struct GObjThread GObjThread;

struct GObjThreadStack {
    struct GObjThreadStack *unk0;
    struct GObjThreadStack *unk4;
    u64 stack[8];
};

typedef struct GObjProcess {
    struct GObjProcess *unk0;
    struct GObjProcess *unk4;
    struct GObjProcess *unk8;
    struct GObjProcess *unkC;
    /* 0x10 */ u32 pri;
    /* 0x14 */ u8 kind;
    u8 unk15;
    u8 unk16;
    u8 unk17;
    /* 0x18 */ struct GObj *gobj;
    union {
        struct GObjThread *thread;
        void (*callback)(struct GObj *);
    } payload; // 0x1C
    /* 0x20 */ void (*entryPoint)(struct GObj *);
    u32 *ptr;
} GObjProcess;

struct OMMtx {
    struct OMMtx *next;
};

// TODO: is this an existing struct instead of a brand new one?
struct unk80008840 {
    u8 padding[0x90];
    struct AObj *unk90;
    u32 unk94;
    f32 unk98;
};

typedef f32 quartic[5];

typedef struct {
    /* 0x00 */ s8 type; /* 0=linear;1=bezier;2=hermite/6 */
    /* 0x01 */ char unk_01[0x1];
    /* 0x02 */ s16 length;
    /* 0x04 */ f32 invSegTime;
    /* 0x08 */ Vector *pts;
    /* 0x0C */ f32 duration;
    /* 0x10 */ f32 *times;
    /* 0x14 */ quartic *quartics;
} pathSpline;

typedef struct {
    /* 0x00 */ struct uvOP *next;
    /* 0x04 */ s8 value;
    /* 0x05 */ s8 op;
    /* 0x06 */ char unk_06[0x2];
    /* 0x08 */ f32 ref;
    /* 0x0C */ f32 t;
    /* 0x10 */ f32 p0;
    /* 0x14 */ f32 p1;
    /* 0x18 */ f32 v0;
    /* 0x1C */ f32 v1;
    /* 0x20 */ struct pathSpline *path;
} uvOP;

typedef struct {
    /* 0x00 */ u32 type;
    /* 0x04 */ u32 flags;
    /* 0x08 */ s32 inc;
} uvState;

struct MObj {
    /* 0x00 */ struct MObj *next;
    /* 0x04 */ s32 unk_04;

    struct TextureScroll texScroll;
    
    /* 0x80 */ u16 texIndex1;
    /* 0x82 */ u16 texIndex2;
    /* 0x84 */ f32 primLOD;
    /* 0x88 */ f32 palIndex;
    /* 0x8C */ char unk_8C[0x4];
    /* 0x90 */ uvOP* ops;
    /* 0x94 */ uvState* states;
    /* 0x98 */ f32 offset;
    /* 0x9C */ f32 increment;
    /* 0xA0 */ f32 unk_A0;
    /* 0xA4 */ char unk_A4[0x4];
}; // size = 0xA8;


struct Camera {
    struct Camera *unk0;
    struct GObj *gobj;
    /* 0x08 */ Vp viewport;
    u32 unk18;
    u32 unk1C;

    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2C;

    u32 unk30;
    u32 unk34;
    u32 unk38;
    u32 unk3C;

    u32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;

    u32 unk50;
    u32 unk54;
    u32 unk58;
    u32 unk5C;

    u32 unk60;
    struct OMMtx *unk64[2];
    struct AObj *aobj;
    u32 unk70;

    // vec?
    f32 unk74;
    f32 unk78;
    f32 unk7C;

    u32 unk80;
    u32 unk84;
    u32 unk88;
    u32 unk8C;
};

struct Unk80005A98_2 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    OSMesgQueue *unk20;
    u32 unk24;
    OSTask task;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
};

// Definitely a DObj
struct Unk80005A98 {
    u32 unk0;
    u32 unk4;
    struct Unk80005A98 *unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    OSMesgQueue *unk20;
    u32 unk24;
    u32 unk28;
    void (*unk2C)(struct Unk80005A98*);
    u32 unk30;
    u32 unk34;
    void* unk38;
    u32 unk3C;
    void* unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    Gfx *unk50;
    u32 unk54;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
};

// One of the message types sent on the interrupt message queue
struct InterruptMessageType4 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
    s16 unk30;
    s16 unk32;
    s16 unk34;
    s16 unk36;
};

// One of the message types sent on the ovl0_2 message queue
struct Ovl0_2_MessageType1
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
};

// One of the message types sent on the ovl0_2 message queue
struct Ovl0_2_MessageType2
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
};

// One of the message types sent on the ovl0_2 message queue
struct Ovl0_2_MessageType3
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
};

// One of the message types sent on the ovl0_2 message queue
struct Ovl0_2_MessageType4
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};

// One of the message types sent on the ovl0_2 message queue
struct Ovl0_2_MessageType6
{
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};

// Buffers allocated to hold the master displaylists
struct DLBuffer
{
    Gfx* start;
    u32 length; // In bytes
};

// One of the message types sent on the interrupt message queue
struct InterruptMessageType5 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
    s32 unk1C;
    s32 unk20;
    s32 unk24;
    s32 unk28;
    s32 unk2C;
};

// One of the message types sent on the interrupt message queue
struct InterruptMessageTypeB {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
};

extern OSMesgQueue gInterruptMesgQueue;

#include "D_8004A7C4.h"

struct Camera *func_80009F7C(struct GObj*);

void func_80009B5C(struct UnkStruct8004A7C4_3C *);

typedef struct UserData8000BE90 {
    s32 unk0;
    s32 unk4;
    struct UserData8000BE90 *unk8;
    s32 unkC;
    struct UserData8000BE90 *unk10;
    struct UserData8000BE90 *unk14;
} UserData8000BE90;

UserData8000BE90 *func_8000BE90(struct UserData8000BE90 *data);

struct UnkStructFunc80007380 {
    u32 unk0;
    u32 unk4;
    u32 unk8;

    // some sort of range that is allocated for gDynamicBuffer2
    void *unkC;
    void *unk10;

    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 unk38;
    u32 unk3C;


    u32 unk40;
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    u32 unk6C;
    u32 unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u32 unk80;
    u32 unk84;
    u32 unk88;
};

void omSleep(s32);

#endif
