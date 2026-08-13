#ifndef AOBJ_H
#define AOBJ_H

#include "ovl0/ovl0_3.h"

// AObj
typedef struct AObj { // TODO: Same as Unk6C?
  /* 0x00 */ struct AObj *next; // it's a list but is it really the next one?
  /* 0x04 */ u8 paramID; // index
  /* 0x05 */ u8 kind;
  /* 0x08 */ f32 Rduration;
  /* 0x0C */ f32 timer;
  /* 0x10 */ f32 startVal;
  /* 0x14 */ f32 goalVal;
  /* 0x18 */ f32 speed;
  /* 0x1C */ f32 goalSpeed;
  /* 0x20 */ s32 *unk20; // ptr to InterpData
} AObj;

#endif // AOBJ_H
