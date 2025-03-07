#include <ultra64.h>
#include <macros.h>
#include "PR/os_pi.h"
#include "main.h"

void fatal_printf(const char *arg0, ...);

// actual externs
extern u32 *D_80048CDC;

// bss

OSPiHandle *gRomHandle; // 0x80048CF0
// 0x80048CF4?
OSPiHandle D_80048CF8; // 0x74 bytes
OSMesg D_80048D6C;
OSMesgQueue gDmaMessageQueue;
u32 D_80048D88;
void *D_80048D8C;
u32 D_80048D90;
u8* D_80048D94;
u32 D_80048D98;
u32 D_80048D9C;

// end bss, followed by ovl0_2.c

void init_dma_message_queue(void) {
    osCreateMesgQueue(&gDmaMessageQueue, &D_80048D6C, 1);
}


// an actual DMA copy
void dma_copy(OSPiHandle *handle, u32 physAddr, u32 vAddr, u32 size, u8 direction) {
    UNUSED u32 pad;
    OSIoMesg sp48;

    D_80048D88 = physAddr;
    D_80048D8C = (void*)vAddr;
    D_80048D90 = size;
    if (direction == OS_WRITE) {
        osWritebackDCache((void*)vAddr, size);
    } else {
        osInvalDCache((void*)vAddr, size);
    }
    sp48.hdr.pri = 0;
    sp48.hdr.retQueue = &gDmaMessageQueue;
    sp48.size = 0x10000;
    while (size >= 0x10001) {
        sp48.dramAddr = (void*)vAddr;
        sp48.devAddr = physAddr;
        if ((D_80048CDC == 0) && (osEPiStartDma(handle, &sp48, direction) == -1)) {
            fatal_printf("dma pi full %x %x %x\n", physAddr, vAddr, size);
            while (1);
        }
        osRecvMesg(&gDmaMessageQueue, NULL, OS_MESG_BLOCK);
        size -= 0x10000;
        physAddr += 0x10000;
        vAddr += 0x10000;
    }
    if (size != 0) {
        sp48.dramAddr = (void*)vAddr;
        sp48.devAddr = physAddr;
        sp48.size = size;
        if ((D_80048CDC == 0) && (osEPiStartDma(handle, &sp48, direction) == -1)) {
            fatal_printf("dma pi full %x %x %x\n", physAddr, vAddr, size);
            while (1);
        }
        osRecvMesg(&gDmaMessageQueue, NULL, OS_MESG_BLOCK);
    }
}

void dma_overlay_load(struct Overlay *ovl) {
    if ((s32) ovl->textEnd - (s32) ovl->textStart != 0) {
        osInvalICache((void*)(s32) ovl->textStart, (s32) ovl->textEnd - (s32) ovl->textStart);
        osInvalDCache((void*)(s32) ovl->textStart, (s32) ovl->textEnd - (s32) ovl->textStart);
    }
    if ((s32) ovl->dataEnd - (s32) ovl->dataStart != 0) {
        osInvalDCache((void*)(s32) ovl->dataStart, (s32) ovl->dataEnd - (s32) ovl->dataStart);
    }
    if ((u32) ovl->endAddr - (u32) ovl->startAddr != 0) {
        dma_copy(gRomHandle, (u32) ovl->startAddr, (u32) ovl->RAMStart, (u32) ovl->endAddr - (u32) ovl->startAddr, 0);
    }
    
    if ((s32) ovl->bssEnd - (s32) ovl->bssStart != 0) {
        bzero((void*)(s32) ovl->bssStart, (s32) ovl->bssEnd - (s32) ovl->bssStart);
    }
}

void dma_read(u32 physAddr, void *vAddr, u32 size) {
    dma_copy(gRomHandle, physAddr, (u32)vAddr, size, OS_READ);
}

void dma_write(void *vAddr, u32 physAddr, u32 size) {
    dma_copy(gRomHandle, physAddr, (u32)vAddr, size, OS_WRITE);
}

OSPiHandle *func_80002EBC(void) {
    if (D_80048CF8.baseAddress == 0xA8000000) {
        return &D_80048CF8;
    }
    D_80048CF8.type = (u8)3;
    D_80048CF8.baseAddress = 0xA8000000;
    D_80048CF8.latency = (u8)5;
    D_80048CF8.pulse = (u8)0xC;
    D_80048CF8.pageSize = (u8)0xD;
    D_80048CF8.relDuration = (u8)2;
    D_80048CF8.domain = (u8)1;
    D_80048CF8.speed = 0;
    bzero(&D_80048CF8.transferInfo, sizeof(__OSTranxInfo));
    osEPiLinkHandle(&D_80048CF8);
    return &D_80048CF8;
}

void func_80002F4C(s32 arg0, s32 arg1, s32 arg2) {
    dma_copy(&D_80048CF8, arg0, arg1, arg2, 0);
}

void func_80002F88(s32 arg0, s32 arg1, s32 arg2) {
    dma_copy(&D_80048CF8, arg1, arg0, arg2, 1);
}

void func_80002FC0(u8 *arg0, s32 arg1, void (*arg2)(void), u32 arg3);
GLOBAL_ASM("asm/nonmatchings/main/dma/func_80002FC0.s")

void func_80003788(u32 arg0, u8* arg1, u32 arg2) {
    D_80048D9C = arg0;
    D_80048D94 = arg1;
    D_80048D98 = arg2;
}

// copies some sort of blocks of data
void func_800037A4(void) {
    dma_read(D_80048D9C, D_80048D94, D_80048D98);
    D_80048D9C += D_80048D98;
}

void func_800037F0(u32 arg0, u32 arg1, u8* arg2, u32 arg3) {
    func_80003788(arg0, arg2, arg3);
    func_80002FC0(arg2, arg3, func_800037A4, arg1);
}

void func_80003838(u32 arg0, u32 arg1) {
    u8 sp18[0x400];

    func_800037F0(arg0, arg1, sp18, ARRAY_COUNT(sp18));
}

GLOBAL_ASM("asm/nonmatchings/main/dma/func_8000385C.s")
