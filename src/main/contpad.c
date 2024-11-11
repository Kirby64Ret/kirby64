#include <PR/ultratypes.h>
#include <PR/os_message.h>
#include <PR/os_pfs.h>
#include "common.h"
#include "contpad.h"

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
ContEvent *D_80048F4C; // 0x80048F4C
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
        gControllers[i].counter = 30;
        gControllers[i].holdDelay = 30;
        gControllers[i].holdInterval = 5;
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

void func_80004810(ContEventPfs *arg0) {
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

void func_80004DC8(struct ContEventEep *arg0) {
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

// https://decomp.me/scratch/2fe7d
void func_80004E98(ContEvent *evt) {
    switch (evt->type) {
        case 1: {
            read_controller_input();
            func_800041A0();
            if (evt->mq != NULL) {
                osSendMesg(evt->mq, evt->msg, 0);
            }
            break;
        }
        default:
            break;
        case 2: {
            if (D_80048F48 != 0) {
                func_800041A0();
                if (evt->mq != NULL) {
                    osSendMesg(evt->mq, evt->msg, 0);
                }
            } else {
                D_80048F4C = evt;
            }
            break;
        }
        case 3: {
            int i;
            for (i = 0; i < 4; i++) {
                gControllers[i].holdDelay = ((ContEventHeldButtons *) evt)->holdDelay;
                gControllers[i].holdInterval = ((ContEventHeldButtons *) evt)->holdInterval;
            }

            if (((ContEventHeldButtons *) evt)->evt.mq != NULL) {
                osSendMesg(((ContEventHeldButtons *) evt)->evt.mq, ((ContEventHeldButtons *) evt)->evt.msg, 0);
                return;
            }
            break;
        }
        case 4: {
            D_80048F50 = ((ContEventChannel *)evt)->channel;
            if (evt->mq != NULL) {
                osSendMesg(evt->mq, evt->msg, 0);
                return;
            }
            break;
        }
        case 6: {
            D_80048F54 = ((ContEventChannel *)evt)->channel;
            if (((ContEventChannel *)evt)->evt.mq != NULL) {
                osSendMesg(((ContEventChannel *)evt)->evt.mq, ((ContEventChannel *)evt)->evt.msg, 0);
                return;
            }
            break;
        }
        case 5: {
            u32 channel;

            if ((gControllers[((ContEventChannel *)evt)->channel].errno == 0) && (gControllers[((ContEventChannel *)evt)->channel].status & 1)) {
                channel = ((ContEventChannel *)evt)->channel;
                switch (((ContEventChannel *)evt)->unk10) {
                    case 0:
                        osMotorInit(&sSIMesgQueue, &sPakDevices[channel], channel);
                        break;
                    case 1:
                        if (!D_80048CDC) {
                            osMotorStart(&sPakDevices[channel]);
                        }
                        break;
                    case 2: 
                        osMotorStop(&sPakDevices[channel]);
                        osMotorStop(&sPakDevices[channel]);
                        osMotorStop(&sPakDevices[channel]);
                        break;
                    
                }
            }
            if (evt->mq != NULL) {
                osSendMesg(evt->mq, evt->msg, 0);
            }
            break;
        }
        case 10: {
            //asPfs = ((struct Unk_Func8004810*)evt);

            if ((gControllers[((ContEventPfs *)evt)->channel].errno == 0) && (gControllers[((ContEventPfs *)evt)->channel].status & 1)) {
                func_80004810(((ContEventPfs *)evt));
            }
            if (((ContEventPfs *)evt)->evt.mq != NULL) {
                osSendMesg(((ContEventPfs *)evt)->evt.mq, ((ContEventPfs *)evt)->evt.msg, 0);
            }
            break;
        }
        case 11: {
            func_80004DC8((ContEventEep *)evt);
            if (((ContEventEep *)evt)->evt.mq != NULL) {
                osSendMesg(((ContEventEep *)evt)->evt.mq, ((ContEventEep *)evt)->evt.msg, 0);
            }
            break;
        }
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/func_800051E0.s")
