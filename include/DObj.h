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

#ifdef PORT
/* PORT: these payload arrays are laid directly over 4-byte-slot data --
 * either geo blob sections (func_800A9250's PORT arm byte-swaps the scalars
 * in place and stores widened-DL pointers in the dlist slots) or N64-image
 * static data -- so a real pointer member would double the stride on the
 * LP64 host and shear every `payload++` walk in render.c. The dlist slots
 * are u32s holding native pointers (all game-visible memory is below
 * 4 GiB, see src/pc/pc_mmio.c). */
typedef struct DObjPayloadTypeC {
    /* 0x00 */ s32 dlistID;
    /* 0x04 */ u32 dlist;
} DObjPayloadTypeC; // size = 0x08 on the host as well

typedef struct DObjPayloadTypeE {
    /* 0x00 */ f32 drawDistance;
    /* 0x04 */ u32 dlist;
} DObjPayloadTypeE; // size = 0x08

typedef struct DObjPayloadTypeG {
    /* 0x00 */ f32 drawDistance;
    /* 0x04 */ u32 typeC;
} DObjPayloadTypeG; // size = 0x08
#else
// Some sort of payload to copy to the main glist
typedef struct DObjPayloadTypeC {
    /* 0x00 */ s32 dlistID;
    /* 0x04 */ Gfx* dlist;
} DObjPayloadTypeC; // size = 0x08

// TODO: sorted by distance? related to level of detail?
typedef struct DObjPayloadTypeE {
    /* 0x00 */ f32 drawDistance;
    /* 0x04 */ Gfx* dlist;
} DObjPayloadTypeE; // size = 0x08

// copy a glist depending on draw distance
typedef struct DObjPayloadTypeG {
    /* 0x00 */ f32 drawDistance;
    /* 0x04 */ DObjPayloadTypeC* typeC;
} DObjPayloadTypeG; // size = 0x08
#endif

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
    union {
        /* 0x50 */ void *data;
        /* 0x50 */ Gfx *glist;
        /* 0x50 */ DObjPayloadTypeC *typeC;
        /* 0x50 */ DObjPayloadTypeE *typeE;
#ifdef PORT
        /* PORT: lod/typeH point at 4-byte-slot pointer tables (blob / N64
         * image data); a pointer-to-pointer would index at stride 8. */
        /* 0x50 */ u32 *lod;
        /* 0x50 */ u32 *typeH;
#else
        /* 0x50 */ Gfx **lod;
        /* 0x50 */ DObjPayloadTypeC **typeH;
#endif
    } data;
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
