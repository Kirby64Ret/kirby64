#ifndef DOBJ_H
#define DOBJ_H

#include "main/object_manager.h"

/// This stores up to 3 `Mtx3Int`/`Mtx3Float`/`Mtx4Float` structures in the VLA data
/// based on the kind id in the `kinds` arrays:
/// Kind 1 - `struct Mtx3Int` or `union Mtx3fi`
/// Kind 2 - `struct Mtx4Float`
/// Kind 3 - `struct Mtx3Float`
struct DObjDynamicStore {
    /* 0x00 */ u8 kinds[3];
    /* 0x03 */ u8 pad;
    /* 0x04 */ u8 data[1];
}; // size == 4 + VLA

typedef struct {
    OMMtx *mtx;
    Vector v;
} OMMtxFloat3;

typedef struct {
    /* 0x00 */ OMMtx *mtx;
    /* 0x04 */ Vector3Int v;
} OMMtxInt3; // size == 0x10

typedef struct {
    OMMtx *mtx;
    float a;
    Vector v;
} OMMtxFloat4;

union Mtx3fi {
    OMMtxFloat3 f;
    OMMtxInt3 i;
}; // size == 0x10

typedef struct DObj {
    /* 0x00 */ struct DObj* nextFree;
    /* 0x04 */ struct GObj* gobj;
    /* 0x08 */ struct DObj* next; // marked as sibling in LayoutNode
    /* 0x0C */ struct DObj* prev;
    /* 0x10 */ struct DObj* firstChild;
    /* 0x14 */ struct DObj* parent; // marked as child in LayoutNode
    OMMtxFloat3 pos;
    OMMtxFloat4 angle;
    OMMtxFloat3 scale;
    struct DObjDynamicStore *unk4C;
    u32 unk50;
    u8 flags;
    u8 animCBReceiver;
    u8 numMatrices;
    u8 unk57;
    OMMtx *matrices[5];
    struct AObj *aobj;
    // 0x70
    union AnimCmd *animList;
    f32 timeRemaining;
    f32 animSpeed;
    f32 timeElapsed;
    // 0x80
    struct MObj *mobjList;
    u32 unk84;
} DObj;

#endif // DOBJ_H
