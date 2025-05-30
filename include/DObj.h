#ifndef DOBJ_H
#define DOBJ_H

#include "main/object_manager.h"

typedef struct {
    OMMtx *mtx;
    Vector v;
} OMMtxFloat3;
typedef struct {
    OMMtx *mtx;
    float a;
    Vector v;
} OMMtxFloat4;

typedef struct DObj {
    /* 0x00 */ struct DObj* nextFree;
    /* 0x04 */ struct GObj* gobj;
    /* 0x08 */ struct DObj* next;
    /* 0x0C */ struct DObj* prev;
    /* 0x10 */ struct DObj* firstChild;
    /* 0x14 */ struct DObj* parent; // checked with `1` for a top level
    OMMtxFloat3 pos;
    OMMtxFloat4 angle;
    OMMtxFloat3 scale;
    u32 *unk4C;
    u32 unk50;
    u8 flags;
    u8 animCBReceiver;
    u8 unk56;
    u8 unk57;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
    struct AObj *aobjList;
    union AnimCmd *animList;
    f32 timeLeft;
    f32 animSpeed;
    f32 timePassed;
    struct MObj *mobjList;
    u32 unk84;
} DObj;

#endif // DOBJ_H
