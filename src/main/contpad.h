#ifndef CONTPAD_H
#define CONTPAD_H

#include <PR/os_motor.h>

struct Controller {
    /* 0x00 */ u16 buttonHeld;
    /* 0x02 */ u16 buttonPressed;
    /* 0x04 */ u16 bufferedButtonPressed;
    /* 0x06 */ u16 buttonHeldLong;
    /* 0x08 */ u16 bufferedButtonHeldLong;
    /* 0x0A */ u16 buttonReleased;
    /* 0x0C */ u16 bufferedButtonReleased;
    /* 0x0E */ s8 stick_x;
    /* 0x0F */ s8 stick_y;
    /* 0x10 */ s32 holdDelay;
    /* 0x14 */ u32 holdInterval;
    /* 0x18 */ s32 holdTimer;
    /* 0x1C */ u8 errno;
    /* 0x1D */ u8 status;
}; // size: 0x20

struct UnkStruct80048F60 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
};

struct UnkStruct80048FC0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
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
    u32 data;
    u32 unk40;
};

struct UnkStruct800490D0 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    s8 unk10;
    s8 unk11;
    s8 unk12;
    s8 unk13;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
};

typedef struct ContEvent {
    u32 type;
    OSMesg msg;
    OSMesgQueue *mq;
} ContEvent;

extern ContEvent *D_8004F4C0;

enum EEPROMGoals {
    EEP_PROBE = 0,
    EEP_READ,
    EEP_WRITE,
    EEP_LONGREAD,
    EEP_LONGWRITE,
};

typedef struct {
    ContEvent evt;
    u32 channel;
    u32 unk10;
} ContEventChannel;

typedef struct {
    ContEvent evt;
    u32 holdDelay;
    u32 holdInterval;
} ContEventHeldButtons;

typedef struct ContEventEep {
    ContEvent evt;
    u8 goal;
    u8 addr;
    u8 unkE;
    u8 unkF;
    u8 *buffer;
    s32 nbytes;
    s32 result;
} ContEventEep;

typedef struct ContEventPfs {
    ContEvent evt;
    s32 channel;
    s32 goal;
    u16 company_code;
    u16 unk16;
    s32 game_code;
    char *game_name;
    char *extension;
    s32 file_allocation_size;
    s32 file_no_result;
    s32 file_no;
    s32 file_offset;
    s32 file_size;
    u8 *databuf;
    s32 error;
} ContEventPfs;

// data
extern s32 scBeforeReset;
extern Controller_800D6FE8 gPlayerControllers[MAXCONTROLLERS];
extern s8 contChannelMap[MAXCONTROLLERS];

// funcs
void contMain(void *arg);

#endif // CONTPAD_H
