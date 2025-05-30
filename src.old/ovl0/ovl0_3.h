#ifndef OVL0_3_H
#define OVL0_3_H

struct AnimationUnk6C {
  struct AnimationUnk6C *next; // it's a list but is it really the next one?
  u8 unk4;
  u8 unk5;
  u8 unk6;
  u8 unk7;
  f32 unk8;
  f32 unkC;
  f32 unk10;
  f32 unk14;
};



struct Animation {
  u32 unk0;
  // Is this a GObj????????????
  struct {
      u8 pad[0x40];
      f32 unk40;
      u32 unk44;
      void (*unk48)(struct Animation *a0, u32 a1, u32 a2);
  } *unk4;
  u32 unk8;
  u32 unkC;
  u32 unk10[4];
  u32 unk20[4];
  u32 unk30[4];
  u32 unk40[4];
  u32 unk50;
  u8 unk54; // verify type
  u8 unk55;
  u8 unk56;
  u8 unk57;
  u32 unk58;
  u32 unk5C;
  u32 unk60;
  u32 unk64;
  u32 unk68;
  struct AObj *aobj;
  u32 *command;
  f32 scale; // unk74
  u32 unk78;
  f32 unk7C;
  u32 unk80;
  u32 unk84;
  u32 unk88;
  u32 unk8C;
  struct Animation *unk90;
};

// void animProcessModelAnimation(DObj *);
struct AObj *HS64_AObjNew(struct Animation *anim, u8 something);


// struct UnkStruct8004A7C4_3C

// TODO: Is the the same as struct Animation?
struct unk8000BE90Func {
    u32 unk0;
    u32 unk4;
    struct unk8000BE90Func* unk8;
    u32 unkC;
    struct unk8000BE90Func* unk10;
    struct unk8000BE90Func* unk14;
    u8 filler[0x55 - 0x14 - 0x04];
    s8 unk55;
    u8 filler2[0x6C - 0x55 - 0x01];
    struct AObj* unk6C;
    u8 filler3[0x74 - 0x6C - 0x04];
    f32 unk74;
    f32 unk78;
    u32 unk7C;
    struct unk8000BF3CFunc* unk80;
};

#endif
