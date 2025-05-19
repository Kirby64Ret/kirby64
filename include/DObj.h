#ifndef DOBJ_H
#define DOBJ_H

#include "ovl0/ovl0_2_5.h"

typedef struct DObj {
    struct DObj *unk0;
    struct GObj *gobj;
    struct DObj *unk8;
    u32 unkC;
    struct DObj *unk10;
    u32 unk14;
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
