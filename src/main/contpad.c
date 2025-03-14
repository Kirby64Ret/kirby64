#include <PR/ultratypes.h>
#include <PR/os_message.h>
#include <PR/os_pfs.h>
#include "common.h"
#include "contpad.h"
#include "localsched.h"
#include "main.h"

// bss

OSMesgQueue sSIMesgQueue; // 0x80048DA0
OSMesg D_80048DB8; // 0x80048DB8
// 0x80048DBC? bss file boundary? lines up with function alignment
SCClient contClient;
OSMesg D_80048DC8[7];
// 0x80048DE4?
OSMesgQueue contEventMQ;
OSMesg contEventMesgArray[4];
OSMesgQueue D_80048E10;
OSMesg D_80048E28[4];
OSMesgQueue D_80048E38;
OSMesg D_80048E50;
// 0x80048E54?
OSMesgQueue D_80048E58;
OSContStatus sControllerStatuses[MAXCONTROLLERS]; // 0x80048E70
OSContPad sContPads[MAXCONTROLLERS]; // 0x80048E80
s32 gValidControllerCount; // num controllers? // 0x80048E98
s8 contChannelMap[MAXCONTROLLERS]; // 0x80048E9C
struct Controller gControllers[MAXCONTROLLERS]; // 0x80048EA0
Controller_800D6FE8 gPlayerControllers[MAXCONTROLLERS]; // 0x80048F20
s32 D_80048F48; // 0x80048F48
ContEvent *D_80048F4C; // 0x80048F4C
s32 D_80048F50; // 0x80048F50
s32 D_80048F54; // 0x80048F54
s32 contPollTimer; // 0x80048F58
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

void func_80003DC0(void) {
    s32 port;

    for (port = 0; port < gValidControllerCount; port++)
    {
        if (gControllers[contChannelMap[port]].errno == 0) {
            gPlayerControllers[port] = gPlayerControllers[contChannelMap[port]];
        } else {
            gPlayerControllers[port].stickY = 0;
            gPlayerControllers[port].buttonHeldLong = 0;
            gPlayerControllers[port].buttonReleased = 0;
            gPlayerControllers[port].buttonPressed = 0;
            gPlayerControllers[port].buttonHeld = 0;
            gPlayerControllers[port].stickX = gPlayerControllers[port].stickY;
        }
    }
    for (; port < MAXCONTROLLERS; port++)
    {
        gPlayerControllers[port].buttonHeldLong = 0;
        gPlayerControllers[port].buttonReleased = 0;
        gPlayerControllers[port].buttonPressed = 0;
        gPlayerControllers[port].buttonHeld = 0;
        gPlayerControllers[port].stickX = gPlayerControllers[port].stickY = 0;
    }
}


void query_controllers(void) {
    s32 port;

    osContStartQuery(&sSIMesgQueue);
    osRecvMesg(&sSIMesgQueue, NULL, 1);
    osContGetQuery(sControllerStatuses);
    for (port = 0; port < MAXCONTROLLERS; port++)
    {
        if ((sControllerStatuses[port].errno == 0) && ((sControllerStatuses[port].status & 1) != 0)) {
            if (((gControllers[port].status & 1) == 0) || (gControllers[port].errno != 0)) {
                osMotorInit(&sSIMesgQueue, &sPakDevices[port], port);
            }
        }
        gControllers[port].errno = sControllerStatuses[port].errno;
        gControllers[port].status = sControllerStatuses[port].status;
    }
}

void read_controller_input(void) {
    s32 i;

    osContStartReadData(&sSIMesgQueue);
    osRecvMesg(&sSIMesgQueue, NULL, OS_MESG_BLOCK);
    osContGetReadData(sContPads);
    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        if (!sContPads[i].errno && (sControllerStatuses[i].status & 1) && gControllers[i].errno) {
            osMotorInit(&sSIMesgQueue, &sPakDevices[i], i);
        }
        gControllers[i].errno = sContPads[i].errno;
        if (gControllers[i].errno == 0) {
            gControllers[i].buttonPressed = (sContPads[i].button ^ gControllers[i].buttonHeld) & sContPads[i].button;
            gControllers[i].buttonReleased = (sContPads[i].button ^ gControllers[i].buttonHeld) & gControllers[i].buttonHeld;
            if (sContPads[i].button ^ gControllers[i].buttonHeld) {
                gControllers[i].buttonHeldLong = gControllers[i].buttonPressed;
                gControllers[i].holdTimer = gControllers[i].holdDelay;
            } else {
                gControllers[i].holdTimer--;
                if (gControllers[i].holdTimer > 0) {
                    gControllers[i].buttonHeldLong = 0;
                } else {
                    gControllers[i].buttonHeldLong = sContPads[i].button;
                    gControllers[i].holdTimer = gControllers[i].holdInterval;
                }
            }
            gControllers[i].buttonHeld = sContPads[i].button;
            gControllers[i].stick_x = sContPads[i].stick_x;
            gControllers[i].stick_y = sContPads[i].stick_y;
            gControllers[i].bufferedButtonPressed |= gControllers[i].buttonPressed;
            gControllers[i].bufferedButtonReleased |= gControllers[i].buttonReleased;
            gControllers[i].bufferedButtonHeldLong |= gControllers[i].buttonHeldLong;
        }
    }
    D_80048F48 = 1;
}

void contSetPlayerPads() {
    s32 i = 0;

    for (i = 0; i != MAXCONTROLLERS; i++)
    {
        if (gControllers[i].errno == 0) {
            gPlayerControllers[i].buttonHeld = gControllers[i].buttonHeld;
            gPlayerControllers[i].buttonPressed = gControllers[i].bufferedButtonPressed;
            gPlayerControllers[i].buttonReleased = gControllers[i].bufferedButtonReleased;
            gPlayerControllers[i].buttonHeldLong = gControllers[i].bufferedButtonHeldLong;
            gPlayerControllers[i].stickX = gControllers[i].stick_x;            
            gPlayerControllers[i].stickY = gControllers[i].stick_y;
        } else {
            gPlayerControllers[i].buttonHeldLong = 0;
            gPlayerControllers[i].buttonReleased = 0;
            gPlayerControllers[i].buttonPressed = 0;
            gPlayerControllers[i].buttonHeld = 0;
            gPlayerControllers[i].stickX = gPlayerControllers[i].stickY = 0;
        }
        gControllers[i].bufferedButtonHeldLong = 0;
        gControllers[i].bufferedButtonReleased = 0;
        gControllers[i].bufferedButtonPressed = 0;
        if (i == 0) // Needed to match, may have been commented out code?
        {
        }
    }
    func_80003DC0();
    D_80048F48 = 0;
}

#ifdef NON_MATCHING
s32 *func_80004250(void) {
    u8 sp43;
    s32 i,j;

    osCreateMesgQueue(&sSIMesgQueue, &D_80048DB8, 1);
    osSetEventMesg(5, &sSIMesgQueue, 1);
    osContInit(&sSIMesgQueue, &sp43, sControllerStatuses);
    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        if ((sControllerStatuses[i].status & 1) != 0) {
            osMotorInit(&sSIMesgQueue, &sPakDevices[i], i);
        }
    }

    osCreateMesgQueue(&D_80048E10, &contEventMesgArray, 4);
    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        D_80048F60[i].unk8 = i;
        D_80048F60[i].unk0 = 0;
        D_80048F60[i].unk4 = 5;
        D_80048F60[i].unkC = &D_80048E10;
        // needs members to result in 0x18 in struct size
    }

    osCreateMesgQueue(&D_80048E38, &D_80048E28, 4);
    for (i = 0; i < MAXCONTROLLERS; i++)
    {
        D_80048FC0[i].unk8 = i;
        D_80048FC0[i].unk0 = 0;
        D_80048FC0[i].unk4 = 0xA;
        D_80048FC0[i].unkC = &D_80048E38;
        // needs members to result in 0x44 in struct size
    }

    osCreateMesgQueue(&D_80048E58, &D_80048E50, 1);
    D_800490D0.unk0 = 0;
    D_800490D0.unk4 = 0xB;
    D_800490D0.unk8 = i;
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
        gControllers[i].holdTimer = 30;
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
    contChannelMap[0] = -1;
    if (gControllers[0].errno == 0) {
        contChannelMap[gValidControllerCount] = 0;
        gValidControllerCount++;
    }
    contChannelMap[1] = -1;
    if (gControllers[1].errno == 0) {
        contChannelMap[gValidControllerCount] = 1;
        gValidControllerCount++;
    }
    contChannelMap[2] = -1;
    if (gControllers[2].errno == 0) {
        contChannelMap[gValidControllerCount] = 2;
        gValidControllerCount++;
    }
    contChannelMap[3] = -1;
    if (gControllers[3].errno == 0) {
        contChannelMap[gValidControllerCount] = 3;
        gValidControllerCount++;
    }
    D_80048F48 = 0;
    D_80048F4C = NULL;
    D_80048F50 = 1;
    D_80048F54 = 1;
    contPollTimer = 1;
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

#pragma GLOBAL_ASM("asm/nonmatchings/main/contpad/contSendEvent.s")

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

void contHandlePfsEvent(ContEventPfs *arg0) {
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

void contHandleEepEvent(struct ContEventEep *arg0) {
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
void contHandleEvent(ContEvent *evt) {
    switch (evt->type) {
        case 1: {
            read_controller_input();
            contSetPlayerPads();
            if (evt->mq != NULL) {
                osSendMesg(evt->mq, evt->msg, 0);
            }
            break;
        }
        default:
            break;
        case 2: {
            if (D_80048F48 != 0) {
                contSetPlayerPads();
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
            for (i = 0; i < MAXCONTROLLERS; i++) {
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
                        if (!scBeforeReset) {
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
            if ((gControllers[((ContEventPfs *)evt)->channel].errno == 0) && (gControllers[((ContEventPfs *)evt)->channel].status & 1)) {
                contHandlePfsEvent(((ContEventPfs *)evt));
            }
            if (((ContEventPfs *)evt)->evt.mq != NULL) {
                osSendMesg(((ContEventPfs *)evt)->evt.mq, ((ContEventPfs *)evt)->evt.msg, 0);
            }
            break;
        }
        case 11: {
            contHandleEepEvent((ContEventEep *)evt);
            if (((ContEventEep *)evt)->evt.mq != NULL) {
                osSendMesg(((ContEventEep *)evt)->evt.mq, ((ContEventEep *)evt)->evt.msg, 0);
            }
            break;
        }
    }
}

void contMain(void *arg) {
    OSMesg mesg;

    func_80004250();
    scAddClient(&contClient, &contEventMQ, &D_80048DC8, ARRAY_COUNT(D_80048DC8));
    osSendMesg(&gThreadInitializedMQ, 1, 0);
    while (1) {
        osRecvMesg(&contEventMQ, &mesg, 1);
        if ((s32)mesg == 1) {
            if (contPollTimer != 0) {
                contPollTimer--;
            }
            if (contPollTimer == 0) {
                query_controllers();
                contPollTimer = D_80048F54;
            }
            if (D_80048F50 != 0) {
                read_controller_input();
                if (D_80048F4C != NULL) {
                    contSetPlayerPads();
                    if (D_80048F4C->mq != NULL) {
                        osSendMesg(D_80048F4C->mq, D_80048F4C->msg, 0);
                    }
                    D_80048F4C = NULL;
                }
            }
        } else {
            contHandleEvent((ContEvent*)mesg);
        }
    }
}
