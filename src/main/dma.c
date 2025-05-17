#include <ultra64.h>
#include <macros.h>
#include <PR/R4300.h>
#include <PR/rcp.h>
#include <PR/os_pi.h>
#include "main.h"
#include "dma.h"

void fatal_printf(const char *arg0, ...);

// actual externs
extern u32 *scBeforeReset;

// bss

OSPiHandle *gRomHandle; // 0x80048CF0
// 0x80048CF4?
OSPiHandle gSRAMHandle; // 0x74 bytes
OSMesg dmaMesg;
OSMesgQueue dmaMessageQ;
void *dmaDevAddr;
void *dmaVramAddr;
u32 dmaLen;
u8* D_80048D94;
u32 D_80048D98;
u32 D_80048D9C;

// end bss, followed by ovl0_2.c

void dmaInit(void) {
    osCreateMesgQueue(&dmaMessageQ, &dmaMesg, 1);
}

// an actual DMA copy
void dma_copy(OSPiHandle *handle, u32 physAddr, u32 vAddr, u32 size, u8 direction) {
    OSIoMesg dmaIOMesg;

    dmaDevAddr = physAddr;
    dmaVramAddr = (void*)vAddr;
    dmaLen = size;
    if (direction == OS_WRITE) {
        osWritebackDCache((void*)vAddr, size);
    } else {
        osInvalDCache((void*)vAddr, size);
    }
    dmaIOMesg.hdr.pri = 0;
    dmaIOMesg.hdr.retQueue = &dmaMessageQ;
    dmaIOMesg.size = 0x10000;
    while (size >= 0x10001) {
        dmaIOMesg.dramAddr = (void*)vAddr;
        dmaIOMesg.devAddr = physAddr;
        if ((scBeforeReset == 0) && (osEPiStartDma(handle, &dmaIOMesg, direction) == -1)) {
            fatal_printf("dma pi full %x %x %x\n", physAddr, vAddr, size);
            while (1);
        }
        osRecvMesg(&dmaMessageQ, NULL, OS_MESG_BLOCK);
        size -= 0x10000;
        physAddr += 0x10000;
        vAddr += 0x10000;
    }
    if (size != 0) {
        dmaIOMesg.dramAddr = (void*)vAddr;
        dmaIOMesg.devAddr = physAddr;
        dmaIOMesg.size = size;
        if ((scBeforeReset == 0) && (osEPiStartDma(handle, &dmaIOMesg, direction) == -1)) {
            fatal_printf("dma pi full %x %x %x\n", physAddr, vAddr, size);
            while (1);
        }
        osRecvMesg(&dmaMessageQ, NULL, OS_MESG_BLOCK);
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

OSPiHandle *sram_init(void) {
    if (gSRAMHandle.baseAddress == PHYS_TO_K1(PI_DOM2_ADDR2)) {
        return &gSRAMHandle;
    }
    gSRAMHandle.type = (u8)DEVICE_TYPE_SRAM;
    gSRAMHandle.baseAddress = PHYS_TO_K1(PI_DOM2_ADDR2);
    gSRAMHandle.latency = (u8)5;
    gSRAMHandle.pulse = (u8)0xC;
    gSRAMHandle.pageSize = (u8)0xD;
    gSRAMHandle.relDuration = (u8)2;
    gSRAMHandle.domain = (u8)1;
    gSRAMHandle.speed = 0;
    bzero(&gSRAMHandle.transferInfo, sizeof(__OSTranxInfo));
    osEPiLinkHandle(&gSRAMHandle);
    return &gSRAMHandle;
}

void sram_read(s32 arg0, s32 arg1, s32 arg2) {
    dma_copy(&gSRAMHandle, arg0, arg1, arg2, OS_READ);
}

void sram_write(s32 arg0, s32 arg1, s32 arg2) {
    dma_copy(&gSRAMHandle, arg1, arg0, arg2, OS_WRITE);
}

void func_80002FC0(u8 *arg0, s32 arg1, void (*arg2)(void), u32 arg3);
#pragma GLOBAL_ASM("asm/nonmatchings/main/dma/func_80002FC0.s")


/*********************
     VPK0 handlers
        (Unused because the game is fully uncompressed...)
*********************/

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

#pragma GLOBAL_ASM("asm/nonmatchings/main/dma/func_8000385C.s")
