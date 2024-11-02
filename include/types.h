#ifndef TYPES_H
#define TYPES_H

#include <ultra64.h>
#include "macros.h"

enum SpTaskState {
    SPTASK_STATE_NOT_STARTED,
    SPTASK_STATE_RUNNING,
    SPTASK_STATE_INTERRUPTED,
    SPTASK_STATE_FINISHED,
    SPTASK_STATE_FINISHED_DP
};

struct SPTask
{
    /*0x00*/ OSTask task;
    /*0x40*/ OSMesgQueue *msgqueue;
    /*0x44*/ OSMesg msg;
    /*0x48*/ enum SpTaskState state;
}; // size = 0x4C, align = 0x8

struct VblankHandler
{
    OSMesgQueue *queue;
    OSMesg msg;
};

#ifdef AVOID_UB
    #define BAD_RETURN(cmd) void
#else
    #define BAD_RETURN(cmd) cmd
#endif

// filler struct
struct Unk8Byte {
    u32 unk0;
    u32 unk4;
};

typedef f32 Vec3f[3];

// TODO: where do i put this???
typedef f32 Mat4[4][4];

typedef struct  {
    f32 x;
    f32 y;
    f32 z;
} Vector;

struct Overlay {
    /* 0x00 */ void *startAddr;
    /* 0x04 */ void *endAddr;
    /* 0x08 */ void *RAMStart;
    /* 0x0C */ void *textStart;
    /* 0x10 */ void *textEnd;
    /* 0x14 */ void *dataStart;
    /* 0x18 */ void *dataEnd;
    /* 0x1C */ void *bssStart;
    /* 0x20 */ void *bssEnd;
};

struct Entity {
   /* 0x00  */ u8 nodeNum;
   /* 0x01  */ u8 bankID;
   /* 0x02  */ u8 entityID;
   /* 0x03  */ u8 action;
   /* 0x04  */ u8 respawnFlag;
   /* 0x05  */ u8 unk5;
   /* 0x06  */ s16 saveToEeprom; // TODO: research
   /* 0x08  */ Vec3f pos;
   /* 0x14  */ Vec3f angle;
   /* 0x20  */ Vec3f scale;
};

#define NO_COL 0x29A
// some sort of image desciptor
struct UnkStruct8015C740 {
    s32 image;
    s32 mode; // how func_800AC954 will handle the image
    f32 xOffset;
    f32 yOffset;
    u16 primColor[3];
    u16 envColor[3];
    u8 flags;
};

// technically everything in this struct is a void *, but it's so much easier this way
struct BankHeader {
    /* 0x0  */ u32 *geoBlockTable;
    /* 0x4  */ u32 *geoROMOffset;
    /* 0x8  */ u32 *imageBlockTable;
    /* 0xC  */ u32 *imageROMOffset;
    /* 0x10 */ u32 *animBlockTable;
    /* 0x14 */ u32 *animROMOffset;
    /* 0x18 */ u32 *miscBlockTable;
    /* 0x1C */ u32 *miscROMOffset;
};

struct GeometryBlockHeader {
    /*0x00*/ u32 *layout;         // segment-offset pointer to the LAYOUT section
    /*0x04*/ u32 *texScroll;      // segment-offset pointer to the TEXTURE SCROLL section
    /*0x08*/ int  layoutMode;     // interpretation mode of the LAYOUT section
    /*0x0C*/ u32 *imgRefs;        // segment-offset pointer to the G_SETTIMG REFERENCES section
    /*0x10*/ u32 *vtxRefs;        // segment-offset pointer to the G_VTX REFERENCES section
    /*0x14*/ int  numAnimations;  // defines length of the ANIMARION REFS section
    /*0x18*/ u32 *Animations;     // segment-offset pointer to the ANIMATION REFS section
    /*0x1C*/ u32  lenLayout;      // length of the Layout section
};

typedef struct Controller_800D6FE8 {
  /* 0x00 */ u16 buttonHeld;
  /* 0x02 */ u16 buttonPressed;
  /* 0x04 */ u16 buttonHeldLong; // this one becomes active a bit after buttonDown
  /* 0x06 */ u16 buttonReleased;
  /* 0x08 */ s8 stickX;
  /* 0x09 */ s8 stickY;
} Controller_800D6FE8;
extern Controller_800D6FE8 gKirbyController;

#endif /* TYPES_H */

