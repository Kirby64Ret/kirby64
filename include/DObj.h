#ifndef DOBJ_H
#define DOBJ_H

#include "main/object_manager.h"

typedef struct DObj {
    /* 0x00 */ struct DObj* nextFree;
    /* 0x04 */ struct GObj* gobj;
    /* 0x08 */ struct DObj* next;
    /* 0x0C */ struct DObj* prev;
    /* 0x10 */ struct DObj* firstChild;
    /* 0x14 */ struct DObj* parent; // checked with `1` for a top level
    struct DObj *unk18;
    u8 filler[0x4C - 0x18 - 0x04];
    u32 unk4C;
    u32 unk50;
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
    struct MObj *unk80;
    u32 unk84;
} DObj;

#endif // DOBJ_H
