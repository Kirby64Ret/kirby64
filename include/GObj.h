#ifndef GOBJ_H
#define GOBJ_H
#include "types.h"
#include "main/object_manager.h"

// same as D_800E1B50?
struct UnkStruct8004A7C4_3C_80 {
    struct UnkStruct8004A7C4_3C_80 *unk0;
    u32 unk4;
    struct UnkStruct8004A7C4_3C_80 *unk8;
    u32 unkC;
    u32 unk10;
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
    u8 unk50;
    u8 unk51;
    u8 unk52;
    u8 unk53;
    u32 unk54;
    u8 unk58;
    u8 unk59;
    u8 unk5A;
    u8 unk5B;
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
    f32 unk88;
    u32 unk8C;
    u32 unk90;
    u32 unk94;
    f32 unk98;
    u32 unk9C;
    f32 unkA0;
};


struct UnkStruct8004A7C4_3C_10 {
    u8 pad[0x30];
    // vec?
    Vector unk30;
};

// SOME chunk of the beginning of the struct is a union
// SAME AS A LayoutNode??????
struct UnkStruct8004A7C4_3C {
    // u32 unk0;
    // u32 unk4;
    // u32 unk8;
    Vector unk0;

    u32 unkC;

    struct UnkStruct8004A7C4_3C_10 *unk10;
    u32 unk14;
    u32 unk18;

    // pos
    Vector posVec;

    u32 unk28;
    u32 unk2C;

    // angle
    Vector angleVec;

    // TODO: how is this actually structured?
    // some code thinks unk3C is the vector while others
    // think unk40 is
    f32 unk3C;
    // scale
    Vector scaleVec;

    u32 unk4C;
    u32 unk50[4];
    u32 unk60[4];
    s32 unk70;
    s32 unk74;
    f32 unk78;
    s32 unk7C;
    struct UnkStruct8004A7C4_3C_80 *unk80;
    u32 unk84;
};

// only difference is that unk3C is a vector now
struct UnkStruct8004A7C4_3C_duplicate {
    // u32 unk0;
    // u32 unk4;
    // u32 unk8;
    Vector unk0;
    
    u32 unkC;

    struct UnkStruct8004A7C4_3C_10 *unk10;
    u32 unk14;
    u32 unk18;

    Vector unk1C;

    u32 unk28;
    u32 unk2C;

    Vector unk30;

    Vector unk3C;
    f32 unk40;

    u32 unk4C;
    u32 unk50[4];
    u32 unk60[4];
    u32 unk70[4];
    u32 unk80;
    u32 unk84;
};

enum GObjKinds {
    GOBJ_KIND_NONE = 0,
    // GOBJ_KIND_DOBJ,
    // GOBJ_KIND_SOBJ,
    // GOBJ_KIND_CAMERA,
};

typedef void (*onDrawFunc)(struct GObj *);
typedef void (*onUpdateFunc)(void);

// GObj?
typedef struct GObj {
    /* 0x00 */ u32 objId;
    /* 0x04 */ struct GObj* next;
    /* 0x08 */ struct GObj* prev;
    /* 0x0C */ u8 link;
    // todo: find the array this indexes
    /* 0x0D */ u8 dl_link;
    // seems to be similar to other GObj's in proximity
    u8 unkE;
    u8 kind;
    /* 0x10 */
    u32 pri;
    onUpdateFunc onUpdate;
    struct GObjProcess *procListHead;
    struct GObjProcess *procListTail;
    /* 0x20 */
    struct GObj* nextDL;
    struct GObj* prevDL;
    u32 renderPriority;
    onDrawFunc onDraw;
    /* 0x30 */
    u32 unk30;
    u32 unk34;
    u32 unk38;
    // user_data???
    struct UnkStruct8004A7C4_3C *unk3C;
    // goes up by 2.0f per frame until it hits 40.0f, then resets to 0.0f
    f32 unk40;
    u32 flags;
    // grab arguments
    void (*unk48)(void);
    u32 unk4C;
} GObj;
// size: 0x50
extern struct GObj *omCurrentObj, *D_8004A7C8, *D_8004A7CC;
extern struct GObj *D_800DE44C;

typedef void (*VTABLE[])(struct GObj *);

#endif // GOBJ_H
