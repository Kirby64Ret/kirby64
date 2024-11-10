#ifndef AOBJ_H
#define AOBJ_H

#include "ovl0/ovl0_3.h"

// AObj
struct AObj { // TODO: Same as Unk6C?
  struct AObj *next; // it's a list but is it really the next one?
  u8 unk4; // index
  u8 unk5;
  u8 unk6;
  u8 unk7;
  f32 unk8;
  f32 unkC;
  f32 unk10;
  f32 unk14;
  f32 unk18;
  f32 unk1C;
  s32 unk20;
};

#endif // AOBJ_H
