#ifndef __OM_H__
#define __OM_H__

#include <ultra64.h>
#include <types.h>

#include "geo_block_header.h"

#define STACK_CANARY 0x00000000FEDCBA98

// todo: keep naming scheme but rename regardless
// uses GObjThreadStack
#define HS64_GOBJPROC_KIND_GOBJTHREAD 0
// just uses a callback
#define HS64_GOBJPROC_KIND_CALLBACK 1
// classic stack
#define HS64_GOBJPROC_KIND_OSTHREAD 2

struct ObjStack {
    // what looks like an mini thread stack, based on the last value in here being set to STACK_CANARY
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
    struct GObjThread *next; // function?
    OSThread thread;
    struct ObjStack *objStack;
    s32 objStackSize;
};
typedef struct GObjThread GObjThread;

struct GObjThreadStack {
    struct GObjThreadStack *next;
    struct GObjThreadStack *prev;
    u64 stack[8];
};

typedef struct GObjProcess {
    struct GObjProcess *next;
    struct GObjProcess *prev;
    struct GObjProcess *nextPriProc;
    struct GObjProcess *prevPriProc;
    /* 0x10 */ u32 pri;
    /* 0x14 */ u8 kind;
    /* 0x15 */ u8 paused;
    /* 0x18 */ struct GObj *gobj;
    union {
        struct GObjThread *thread;
        void (*callback)(struct GObj *);
    } payload; // 0x1C
    /* 0x20 */ void (*entryPoint)(struct GObj *);
    u32 *ptr;
} GObjProcess;

enum MatrixType {
    MTX_TYPE_1 = 1,
    MTX_TYPE_2 = 2,
    MTX_TYPE_PERSP_FAST = 3,
    MTX_TYPE_PERSP = 4,
    MTX_TYPE_ORTHO = 5,
    MTX_TYPE_LOOKAT = 6,
    MTX_TYPE_LOOKAT_MVIEW = 7,
    MTX_TYPE_LOOKAT_ROLL = 8,
    MTX_TYPE_LOOKAT_ROLL_MVIEW = 9,
    MTX_TYPE_LOOKAT_ROLL_Z = 10,
    MTX_TYPE_LOOKAT_ROLL_Z_MVIEW = 11,
    MTX_TYPE_LOOKAT_REFLECT = 12,
    MTX_TYPE_LOOKAT_REFLECT_MVIEW = 13,
    MTX_TYPE_LOOKAT_REFLECT_ROLL = 14,
    MTX_TYPE_LOOKAT_REFLECT_ROLL_MVIEW = 15,
    MTX_TYPE_LOOKAT_REFLECT_ROLL_Z = 16,
    MTX_TYPE_LOOKAT_REFLECT_ROLL_Z_MVIEW = 17,
    MTX_TYPE_TRANSLATE = 18,
    MTX_TYPE_ROTATE_DEG = 19,
    MTX_TYPE_ROTATE_DEG_TRANSLATE = 20,
    MTX_TYPE_ROTATE_RPY_DEG = 21,
    MTX_TYPE_ROTATE_RPY_TRANSLATE_DEG = 22,
    MTX_TYPE_ROTATE = 23,
    MTX_TYPE_ROTATE_TRANSLATE = 24,
    MTX_TYPE_ROTATE_TRANSLATE_SCALE = 25,
    MTX_TYPE_ROTATE_RPY = 26,
    MTX_TYPE_ROTATE_RPY_TRANSLATE = 27,
    MTX_TYPE_ROTATE_RPY_TRANSLATE_SCALE = 28,
    MTX_TYPE_ROTATE_PYR = 29,
    MTX_TYPE_ROTATE_PYR_TRANSLATE = 30,
    MTX_TYPE_ROTATE_PYR_TRANSLATE_SCALE = 31,
    MTX_TYPE_SCALE = 32,
    MTX_TYPE_33,
    MTX_TYPE_34,
    MTX_TYPE_35,
    MTX_TYPE_36,
    MTX_TYPE_37,
    MTX_TYPE_38,
    MTX_TYPE_39,
    MTX_TYPE_40,
    MTX_TYPE_41,
    MTX_TYPE_42,
    MTX_TYPE_43,
    MTX_TYPE_44,
    MTX_TYPE_45,
    MTX_TYPE_46,
    MTX_TYPE_47,
    MTX_TYPE_48,
    MTX_TYPE_49,
    MTX_TYPE_50,
    MTX_TYPE_51,
    MTX_TYPE_52,
    MTX_TYPE_53,
    MTX_TYPE_54,
    MTX_TYPE_55,
    MTX_TYPE_56,
    MTX_TYPE_57,
    MTX_TYPE_58,
    MTX_TYPE_59,
    MTX_TYPE_60,
    MTX_TYPE_61,
    MTX_TYPE_62,
    MTX_TYPE_63,
    MTX_TYPE_64,
    MTX_TYPE_65,
    MTX_TYPE_66,
};

typedef struct OMMtx {
    struct OMMtx *next;
    /* 0x04 */ u8 kind;
    /* 0x05 */ u8 unk05;
    /* 0x08 */ Mtx unk08;
} OMMtx;

typedef struct OMPersp {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ u16 perspNorm;
    /* 0x08 */ f32 fovy;
    /* 0x0C */ f32 aspect;
    /* 0x10 */ f32 near;
    /* 0x14 */ f32 far;
    /* 0x18 */ f32 scale;
} OMPersp; // size == 0x1C

typedef struct OMOrtho {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ f32 left;
    /* 0x08 */ f32 right;
    /* 0x0C */ f32 bottom;
    /* 0x10 */ f32 top;
    /* 0x14 */ f32 near;
    /* 0x18 */ f32 far;
    /* 0x1C */ f32 scale;
} OMOrtho; // size == 0x20

typedef struct OMLookAt {
    /* 0x00 */ struct OMMtx *mtx;
    /* 0x04 */ Vector eye;
    /* 0x10 */ Vector at;
    /* 0x1C */ Vector up;
} OMLookAt; // size == 0x28;

typedef struct OMLookAtRoll {
    /* 0x00 */ struct OMMtx* mtx;
    /* 0x04 */ f32 xEye;
    /* 0x08 */ f32 yEye;
    /* 0x0C */ f32 zEye;
    /* 0x10 */ f32 xAt;
    /* 0x14 */ f32 yAt;
    /* 0x18 */ f32 zAt;
    /* 0x1C */ f32 roll;
} OMLookAtRoll; // size == 0x20;

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

typedef struct MObj {
    /* 0x00 */ struct MObj *next;
    /* 0x04 */ s32 unk_04;

    struct TextureScroll texture;
    
    /* 0x80 */ u16 texIndex1;
    /* 0x82 */ u16 texIndex2;
    /* 0x84 */ f32 primLOD;
    /* 0x88 */ f32 palIndex;
    /* 0x8C */ char unk_8C[0x4];
    /* 0x90 */ struct AObj *aobjList;
    /* 0x94 */ union AnimCmd *animList;
    /* 0x98 */ f32 timeLeft;
    /* 0x9C */ f32 animSpeed;
    /* 0xA0 */ f32 timePassed;
    /* 0xA4 */ char unk_A4[0x4];
} MObj; // size = 0xA8;

enum CameraFlags {
    CAMERA_FLAG_1 = 0x01,
    CAMERA_FLAG_2 = 0x02,
    CAMERA_FLAG_4 = 0x04,
    CAMERA_FLAG_8 = 0x08,
    CAMERA_FLAG_10 = 0x10,
    CAMERA_FLAG_20 = 0x20,
    CAMERA_FLAG_40 = 0x40,
    CAMERA_FLAG_80 = 0x80
};

typedef struct Camera {
    struct Camera *nextFree;
    struct GObj *gobj;
    /* 0x08 */ Vp viewport;
    /* 0x18 */ union {
        struct OMPersp persp;
        struct OMOrtho ortho;
    } perspMtx;
    /* 0x38 */ union {
        struct OMLookAt lookAt;
        struct OMLookAtRoll lookAtRoll;
    } viewMtx;

    u32 mtxCount;
    struct OMMtx *matrices[2];
    struct AObj *aobj;

    // 0x70
    union AnimCmd *animList;
    f32 timeRemaining;
    f32 animSpeed;
    f32 timeElapsed;

    // 0x80
    u32 flags;
    u32 bgcolor;
    u32 *onBeforeRender;
    u32 unk8C;
} Camera;

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

#include "GObj.h"
#include "AObj.h"
#include "DObj.h"

struct Camera *func_80009F7C(struct GObj*);

void func_80009B5C(struct UnkStruct8004A7C4_3C *);

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

typedef struct {
    /* 0x00 */ struct GObjThread* threads;
    /* 0x04 */ s32 numThreads;
    /* 0x08 */ u32 threadStackSize;
    /* 0x0C */ struct ThreadStackNode* stacks;
    /* 0x10 */ u32 numStacks;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ GObjProcess* processes;
    /* 0x1C */ s32 numProcesses;
    /* 0x20 */ struct GObj* objects;
    /* 0x24 */ s32 numObjects;
    /* 0x28 */ s32 objectSize;
    /* 0x2C */ OMMtx* matrices;
    /* 0x30 */ s32 numMatrices;
    /* 0x34 */ void* cleanupFn; // void(*)(struct DObjDynamicStore *)
    /* 0x38 */ struct AObj* aobjs;
    /* 0x3C */ s32 numAObjs;
    /* 0x40 */ struct MObj* mobjs;
    /* 0x44 */ s32 numMObjs;
    /* 0x48 */ struct DObj* dobjs;
    /* 0x4C */ s32 numDObjs;
    /* 0x50 */ s32 dobjSize;
    /* 0x54 */ struct SObj* sobjs;
    /* 0x58 */ s32 numSObjs;
    /* 0x5C */ s32 sobjSize;
    /* 0x60 */ struct OMCamera* cameras;
    /* 0x64 */ s32 numCameras;
    /* 0x68 */ s32 cameraSize;
} ObjectSetup; // size == 0x6C

void ohSleep(s32);

// data
extern u32 D_8003DE54;

// BSS
extern struct GObjProcess *omCurrentProc;
extern OSMesgQueue HS64_GObjProcMesgQ;
extern struct GObj *omGObjListHead[32];

// extern funcs
void omLinkGObjDL(struct GObj *gobj, s32 arg1, u8 link, s32 prio, s32 arg4);
struct GObj *HS64_omMakeGObj(s32 id, void (*func)(void), u8 link, u32 pri);
void omUpdateAll();
void HS64_omInit(ObjectSetup *);
AObj *func_800098AC(MObj *, u8);
OMMtx *omDObjAppendMtx(struct DObj *arg0, u8 type, u8 param);
AObj *omCameraAddAObj(Camera *, u8);

#endif
