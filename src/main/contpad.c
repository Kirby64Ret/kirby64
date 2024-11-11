#include <PR/ultratypes.h>
#include <PR/os_message.h>
#include <PR/os_pfs.h>
#include "common.h"

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
    /* 0x10 */ s32 unk10;
    /* 0x14 */ s32 unk14;
    /* 0x18 */ s32 unk18;
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
    u32 unk3C;
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

// bss

OSMesgQueue sSIMesgQueue; // 0x80048DA0
OSMesg D_80048DB8; // 0x80048DB8
// 0x80048DBC? bss file boundary? lines up with function alignment
u8 D_80048DC0[8];
OSMesg D_80048DC8[7];
// 0x80048DE4?
OSMesgQueue D_80048DE8;
OSMesg D_80048E00[4];
OSMesgQueue D_80048E10;
OSMesg D_80048E28[4];
OSMesgQueue D_80048E38;
OSMesg D_80048E50;
// 0x80048E54?
OSMesgQueue D_80048E58;
OSContStatus sControllerStatuses[MAXCONTROLLERS]; // 0x80048E70
OSContPad sContPads[MAXCONTROLLERS]; // 0x80048E80
s32 gValidControllerCount; // num controllers? // 0x80048E98
s8 D_80048E9C[MAXCONTROLLERS]; // 0x80048E9C
struct Controller gControllers[MAXCONTROLLERS]; // 0x80048EA0
Controller_800D6FE8 gPlayerControllers[MAXCONTROLLERS]; // 0x80048F20
s32 D_80048F48; // 0x80048F48
s32 *D_80048F4C; // 0x80048F4C
s32 D_80048F50; // 0x80048F50
s32 D_80048F54; // 0x80048F54
s32 D_80048F58; // 0x80048F58
// 0x80048F5C? bss file boundary? lines up with function alignment
struct UnkStruct80048F60 D_80048F60[4]; // 4 * 0x18
struct UnkStruct80048FC0 D_80048FC0[4]; // 4 * 0x44
struct UnkStruct800490D0 D_800490D0; // 0x20
OSPfs sPakDevices[MAXCONTROLLERS]; // 0x800490F0
// more potential bss from this file??
u32 pad[2];
u16 D_80049298;
u16 D_8004929A;
u16 D_8004929C;
u16 D_8004929E;
u8 D_800492A0;
u8 D_800492A1;


// Sent as an OSMesg based on code path
struct Unk_Func8004DC8 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    u8 goal;
    u8 addr;
    u8 unkE;
    u8 unkF;
    u8 *buffer;
    s32 nbytes;
    s32 result;
};

enum EEPROMGoals {
    EEP_PROBE = 0,
    EEP_READ,
    EEP_WRITE,
    EEP_LONGREAD,
    EEP_LONGWRITE,
};

struct Unk_Func8004810 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
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
};


#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80003DC0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/query_controllers.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/read_controller_input.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800041A0.s")

#ifdef NON_MATCHING
s32 *func_80004250(void) {
    u8 sp43;
    s32 phi_s0;
    s32 phi_s0_2;
    s32 phi_s0_3;
    s32 i,j;

    osCreateMesgQueue(&sSIMesgQueue, &D_80048DB8, 1);
    osSetEventMesg(5, &sSIMesgQueue, 1);
    osContInit(&sSIMesgQueue, &sp43, sControllerStatuses);
    for (phi_s0 = 0; phi_s0 < MAXCONTROLLERS; phi_s0++)
    {
        if ((sControllerStatuses[phi_s0].status & 1) != 0) {
            osMotorInit(&sSIMesgQueue, &sPakDevices[phi_s0], phi_s0);
        }
    }

    osCreateMesgQueue(&D_80048E10, &D_80048E00, 4);
    for (phi_s0_2 = 0; phi_s0_2 < MAXCONTROLLERS; phi_s0_2++)
    {
        D_80048F60[phi_s0_2].unk8 = phi_s0_2;
        D_80048F60[phi_s0_2].unk0 = 0;
        D_80048F60[phi_s0_2].unk4 = 5;
        D_80048F60[phi_s0_2].unkC = &D_80048E10;
        // needs members to result in 0x18 in struct size
    }

    osCreateMesgQueue(&D_80048E38, &D_80048E28, 4);
    for (phi_s0_3 = 0; phi_s0_3 < MAXCONTROLLERS; phi_s0_3++)
    {
        D_80048FC0[phi_s0_3].unk8 = phi_s0_3;
        D_80048FC0[phi_s0_3].unk0 = 0;
        D_80048FC0[phi_s0_3].unk4 = 0xA;
        D_80048FC0[phi_s0_3].unkC = &D_80048E38;
        // needs members to result in 0x44 in struct size
    }

    osCreateMesgQueue(&D_80048E58, &D_80048E50, 1);
    D_800490D0.unk0 = 0;
    D_800490D0.unk4 = 0xB;
    D_800490D0.unk8 = phi_s0_3;
    D_800490D0.unkC = &D_80048E58;
    // seems to be 0x20 in size

    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        gControllers[i].stick_y = 0;
        gPlayerControllers[i].stickY = 0;
        sContPads[i].button = 0;
        gControllers[i].buttonHeldLong = 0;
        gControllers[i].buttonPressed = 0;
        gControllers[i].buttonHeld = 0;
        gControllers[i].unk18 = 30;
        gControllers[i].unk10 = 30;
        gControllers[i].unk14 = 5;
        gPlayerControllers[i].buttonHeldLong = 0;
        gPlayerControllers[i].buttonPressed = 0;
        gPlayerControllers[i].buttonHeld = 0;
        gControllers[i].stick_x = gControllers[i].stick_y;
        gControllers[i].errno = sControllerStatuses[i].errno;
        gControllers[i].status = sControllerStatuses[i].status;
        gPlayerControllers[i].stickX = gPlayerControllers[i].stickY;
    }

    gValidControllerCount = 0;
    D_80048E9C[0] = -1;
    if (gControllers[0].errno == 0) {
        D_80048E9C[gValidControllerCount] = 0;
        gValidControllerCount++;
    }
    D_80048E9C[1] = -1;
    if (gControllers[1].errno == 0) {
        D_80048E9C[gValidControllerCount] = 1;
        gValidControllerCount++;
    }
    D_80048E9C[2] = -1;
    if (gControllers[2].errno == 0) {
        D_80048E9C[gValidControllerCount] = 2;
        gValidControllerCount++;
    }
    D_80048E9C[3] = -1;
    if (gControllers[3].errno == 0) {
        D_80048E9C[gValidControllerCount] = 3;
        gValidControllerCount++;
    }
    D_80048F48 = 0;
    D_80048F4C = NULL;
    D_80048F50 = 1;
    D_80048F54 = 1;
    D_80048F58 = 1;
    D_8004929A = 0;
    D_80049298 = 0;
    D_8004929C = 0;
    D_8004929E = 0;
    D_800492A0 = 0;
    D_800492A1 = 0;
    return &D_80048F54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004250.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800045C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_8000464C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800046A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800046D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800046FC.s")

void func_800047B0(s32 arg0) {
    func_800046FC(arg0, 1);
}

void func_800047D0(s32 arg0) {
    func_800046FC(arg0, 2);
}

void func_800047F0(s32 arg0) {
    func_800046FC(arg0, 0);
}

void func_80004810(struct Unk_Func8004810 *arg0) {
    arg0->error = osPfsInitPak(
        &sSIMesgQueue,
        &sPakDevices[arg0->channel],
        arg0->channel
    );

    if (arg0->error == 0) {
        switch (arg0->goal) {
            case 0:
                arg0->error = osPfsFindFile(
                                    &sPakDevices[arg0->channel],
                                    arg0->company_code,
                                    arg0->game_code,
                                    arg0->game_name,
                                    arg0->extension,
                                    arg0->file_no_result
                              );
                break;
            case 1:
                arg0->error = osPfsDeleteFile(
                                    &sPakDevices[arg0->channel],
                                    arg0->company_code,
                                    arg0->game_code,
                                    arg0->game_name,
                                    arg0->extension
                              );
                break;
            case 2:
                arg0->error = osPfsAllocateFile(
                                    &sPakDevices[arg0->channel],
                                    arg0->company_code,
                                    arg0->game_code,
                                    arg0->game_name,
                                    arg0->extension,
                                    arg0->file_allocation_size,
                                    arg0->file_no_result
                              );
                break;
            case 3:
                arg0->error = osPfsReadWriteFile(
                                    &sPakDevices[arg0->channel],
                                    arg0->file_no,
                                    PFS_READ,
                                    arg0->file_offset,
                                    arg0->file_size,
                                    arg0->databuf
                              );
                break;
            case 4:
                arg0->error = osPfsReadWriteFile(
                                    &sPakDevices[arg0->channel],
                                    arg0->file_no,
                                    PFS_WRITE,
                                    arg0->file_offset,
                                    arg0->file_size,
                                    arg0->databuf
                              );
                break;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800049BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004A3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004ABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004B50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004C5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004CD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004D34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004D68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004D98.s")

void func_80004DC8(struct Unk_Func8004DC8 *arg0) {
    switch (arg0->goal)
    {
        case EEP_PROBE:
            arg0->result = osEepromProbe(&sSIMesgQueue);
            break;
        case EEP_READ:
            arg0->result = osEepromRead(&sSIMesgQueue, arg0->addr, arg0->buffer);
            break;
        case EEP_WRITE:
            arg0->result = osEepromWrite(&sSIMesgQueue, arg0->addr, arg0->buffer);
            break;
        case EEP_LONGREAD:
            arg0->result = osEepromLongRead(&sSIMesgQueue, arg0->addr, arg0->buffer, arg0->nbytes);
            break;
        case EEP_LONGWRITE:
            arg0->result = osEepromLongWrite(&sSIMesgQueue, arg0->addr, arg0->buffer, arg0->nbytes);
            break;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_80004E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800051E0.s")
