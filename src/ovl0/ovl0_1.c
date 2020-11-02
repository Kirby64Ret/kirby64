#include <ultra64.h>
#include <macros.h>
#include "PR/os_pi.h"
#include "main.h"

s32 osEPiLinkHandle(OSPiHandle *); // Should be in libultra headers, but not because they're an older version

extern OSMesgQueue D_80048D70;
extern OSMesg D_80048D6C;

void func_80002BA0(void) {
    osCreateMesgQueue(&D_80048D70, &D_80048D6C, 1);
}

extern u32 D_80048D90;
extern void *D_80048D8C;
extern u32 D_80048D88;
extern u32 *D_80048CDC;
extern OSPiHandle *gRomHandle;

// an actual DMA copy
void dma_copy(OSPiHandle *handle, u32 physAddr, u32 vAddr, u32 size, u8 direction) {
    u32 pad;
    OSIoMesg sp48;

    D_80048D88 = physAddr;
    D_80048D8C = (void*)vAddr;
    D_80048D90 = size;
    if (direction == OS_WRITE) {
        osWritebackDCache(vAddr, size);
    } else {
        osInvalDCache(vAddr, size);
    }
    sp48.hdr.pri = 0;
    sp48.hdr.retQueue = &D_80048D70;
    sp48.size = 0x10000;
    while (size >= 0x10001) {
        sp48.dramAddr = (void*)vAddr;
        sp48.devAddr = physAddr;
        if ((D_80048CDC == 0) && (osEPiStartDma(handle, &sp48, direction) == -1)) {
            fatal_printf("dma pi full %x %x %x\n", physAddr, vAddr, size);
            while (1);
        }
        osRecvMesg(&D_80048D70, NULL, 1);
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
        osRecvMesg(&D_80048D70, NULL, 1);
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
        dma_copy(gRomHandle, ovl->startAddr, ovl->RAMStart, (u32) ovl->endAddr - (u32) ovl->startAddr, 0);
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
extern OSPiHandle D_80048CF8;
extern u32 *D_80048D0C; // another PI Handle?

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
    bzero(&D_80048D0C, 0x60);
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
#ifdef MIPS_TO_C
void func_80002FC0(u8 *arg0, s32 arg1, void (*arg2)(void), u32 arg3) {
    u32 sp14C;
    u32 *sp144;
    u32 *sp140;
    u32 sp138;
    u32 sp134;
    u32 *spE4;
    s32 spE0;
    u32 *spD4;
    u32 *sp84;
    s32 sp80;
    u32 *sp74;
    s32 sp64;
    u32 *phi_s3;
    s32 phi_a1;
    u32 phi_s1;
    u32 phi_s2;
    s32 phi_v0;
    s32 phi_v1;
    u8 *phi_a0;
    u32 *phi_fp;
    u8 *phi_s5;
    u32 *phi_s0;
    struct {
        u32 unk0;
        u32 unk4;
        u32 unk8;
    } *temp_v0;

    arg2();
    phi_a0 = arg0[2];
    phi_s5 = arg0[arg1];
    if (phi_a0 >= phi_s5) {
        arg2();
        phi_a0 = arg0;
    }
    phi_a0 += 2;
    if (phi_a0 >= phi_s5) {
        arg2();
        phi_a0 = arg0;
    }
    phi_a0 += 2;
    if (phi_a0 >= phi_s5) {
        arg2();
        phi_a0 = arg0;
    } 
    phi_s2 = ((((((0 | *arg0) << 0x10) | *phi_a0) << 0x10) | *phi_a0) << 0x10) | *phi_a0;
    sp138 = (phi_s2 & 0x80000000) + arg3;
    phi_a0 = phi_a0 + 2;
    phi_s1 = 0;
    if (0 < 8) {
        if (phi_a0 >= phi_s5) {
            arg2();
            phi_a0 = arg0;
        }
        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
        phi_s1 = 0x10;
        phi_a0 = phi_a0 + 2;
    }
    phi_s1 = phi_s1 - 8;
    sp134 = (phi_s2 << (0x18 - phi_s1)) >> 0x18;
    spE4 = NULL;
    phi_v1 = 0;
    phi_s3 = &sp14C;
loop_11:
    if (phi_s1 <= 0) {
        if (phi_a0 >= phi_s5) {
            spE0 = phi_v1;
            arg2();
            phi_a0 = arg0;
        }
        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
        phi_s1 = phi_s1 + 0x10;
        phi_a0 = phi_a0 + 2;
    }
    phi_s1 = phi_s1 - 1;
    phi_v0 = (phi_s2 << (0x1F - phi_s1)) >> 0x1F;
    if (phi_v0 == 0 || phi_v1 >= 2) {
        phi_s0 = &(&spE4)[phi_v1];
        if (phi_v0 != 0) {
            phi_s3[phi_v1] = 0;
            phi_v0 = phi_s3;
            temp_v0->unk0 = phi_s0[-2];
            temp_v0->unk4 = phi_s0[-1];
            phi_s0[-2] = phi_v0;
            phi_v1 = phi_v1 - 1;
            phi_s3 = phi_s3 + 0xC;
        } else {
            phi_v0 = phi_s3;
            phi_s3 = phi_s3 + 0xC;
            phi_s3[phi_v1] = 0;
            if (phi_s1 < 8) {
                if (phi_a0 >= phi_s5) {
                    spD4 = phi_v0;
                    spE0 = phi_v1;
                    arg2();
                    phi_a0 = arg0;
                }
                phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                phi_s1 = phi_s1 + 0x10;
                phi_a0 = phi_a0 + 2;
            }
            phi_s1 = phi_s1 - 8;
            temp_v0->unk8 = (phi_s2 << (0x18 - phi_s1)) >> 0x18;
            phi_s0[0] = phi_v0;
            phi_v1 = phi_v1 + 1;
        }
        goto loop_11;
    }
    sp84 = NULL;
    sp144 = spE4;
    phi_v1 = 0;
loop_25:
    if (phi_s1 <= 0) {
        if (phi_a0 >= phi_s5) {
            sp80 = phi_v1;
            arg2();
            phi_a0 = arg0;
        }
        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
        phi_s1 = phi_s1 + 0x10;
        phi_a0 = phi_a0 + 2;
    }
    phi_s1 = phi_s1 - 1;
    phi_v0 = (phi_s2 << (0x1F - phi_s1)) >> 0x1F;
    if (phi_v0 == 0 || phi_v1 >= 2) {
        phi_s0 = &(&sp84)[phi_v1];
        if (phi_v0 != 0) {
            phi_s3[phi_v1] = 0;
            phi_v0 = phi_s3;
            temp_v0->unk0 = phi_s0[-2];
            temp_v0->unk4 = phi_s0[-1];
            phi_s0[-2] = phi_v0;
            phi_v1 = phi_v1 - 1;
            phi_s3 = phi_s3 + 0xC;
        } else {
            phi_v0 = phi_s3;
            phi_s3 = phi_s3 + 0xC;
            phi_s3[phi_v1] = 0;
            if (phi_s1 < 8) {
                if (phi_a0 >= phi_s5) {
                    sp74 = phi_v0;
                    sp80 = phi_v1;
                    arg2();
                    phi_a0 = arg0;
                }
                phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                phi_s1 = phi_s1 + 0x10;
                phi_a0 = phi_a0 + 2;
            }
            phi_s1 = phi_s1 - 8;
            temp_v0->unk8 = (phi_s2 << (0x18 - phi_s1)) >> 0x18;
            phi_s0[0] = phi_v0;
            phi_v1 = phi_v1 + 1;
        }
        goto loop_25;
    }
    sp140 = sp84;
    phi_fp = arg3;
    if (arg3 < sp138) {
loop_39:
        if (phi_s1 <= 0) {
            if (phi_a0 >= phi_s5) {
                arg2();
                phi_a0 = arg0;
            }
            phi_s2 = (phi_s2 << 0x10) | *phi_a0;
            phi_s1 = phi_s1 + 0x10;
            phi_a0 = phi_a0 + 2;
        }
        phi_s1 = phi_s1 - 1;
        if (((phi_s2 << (0x1F - phi_s1)) >> 0x1F) == 0) {
            if (phi_s1 < 8) {
                if (phi_a0 >= phi_s5) {
                    arg2();
                    phi_a0 = arg0;
                }
                phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                phi_s1 = phi_s1 + 0x10;
                phi_a0 = phi_a0 + 2;
            }
            phi_s1 = phi_s1 - 8;
            *phi_fp = (phi_s2 << (0x18 - phi_s1)) >> 0x18;
            phi_fp = phi_fp + 1;
        } else {
            phi_v0 = *sp144;
            if (sp134 != 0) {
                sp64 = 0;
                phi_s0 = sp144;
                if (phi_v0 != 0) {
loop_51:
                    if (phi_s1 <= 0) {
                        if (phi_a0 >= phi_s5) {
                            arg2();
                            phi_a0 = arg0;
                        }
                        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                        phi_s1 = phi_s1 + 0x10;
                        phi_a0 = phi_a0 + 2;
                    }
                    phi_s1 = phi_s1 - 1;
                    if (((phi_s2 << (0x1F - phi_s1)) >> 0x1F) == 0) {
                        phi_s0 = phi_s0[0];
                    } else {
                        phi_s0 = phi_s0[1];
                    }
                    if (*phi_s0 != 0) {
                        goto loop_51;
                    }
                }
                phi_v1 = phi_s0[2];
                if (phi_s1 < phi_v1) {
                    if (phi_a0 >= phi_s5) {
                        arg2();
                        phi_a0 = arg0;
                    }
                    phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                    phi_s1 = phi_s1 + 0x10;
                    phi_a0 = phi_a0 + 2;
                }
                phi_s1 = phi_s1 - phi_v1;
                phi_v0 = (phi_s2 << (-phi_v1 - phi_s1)) >> -phi_v1;
                if (phi_v0 < 3) {
                    sp64 = phi_v0 + 1;
                    phi_s0 = sp144;
                    if (*sp144 != 0) {
loop_65:
                        if (phi_s1 <= 0) {
                            phi_a0 = phi_a0;
                            if (phi_a0 >= phi_s5) {
                                arg2();
                                phi_a0 = arg0;
                            }
                            phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                            phi_s1 = phi_s1 + 0x10;
                            phi_a0 = phi_a0 + 2;
                        }
                        phi_s1 = phi_s1 - 1;
                        if (((phi_s2 << (0x1F - phi_s1)) >> 0x1F) == 0) {
                            phi_s0 = phi_s0[0];
                        } else {
                            phi_s0 = phi_s0[1];
                        }
                        if (*phi_s0 != 0) {
                            goto loop_65;
                        }
                    }
                    phi_v1 = phi_s0[2];
                    if (phi_s1 < phi_v1) {
                        if (phi_a0 >= phi_s5) {
                            arg2();
                            phi_a0 = arg0;
                        }
                        phi_s1 = phi_s1 + 0x10;
                        phi_a0 = phi_a0 + 2;
                        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                    }
                    phi_s1 = phi_s1 - phi_v1;
                    phi_v0 = (phi_s2 << (-phi_v1 - phi_s1)) >> -phi_v1;
                }
                phi_a1 = *sp140;
                phi_s0 = ((phi_fp - (phi_v0 * 4)) - sp64) + 8;
            } else {
                phi_s0 = sp144;
                if (phi_v0 != 0) {
loop_80:
                    if (phi_s1 <= 0) {
                        if (phi_a0 >= phi_s5) {
                            arg2();
                            phi_a0 = arg0;
                        }
                        phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                        phi_s1 = phi_s1 + 0x10;
                        phi_a0 = phi_a0 + 2;
                    }
                    phi_s1 = phi_s1 - 1;
                    if (((phi_s2 << (0x1F - phi_s1)) >> 0x1F) == 0) {
                        phi_s0 = phi_s0[0];
                    } else {
                        phi_s0 = phi_s0[1];
                    }
                    if (*phi_s0 != 0) {
                        goto loop_80;
                    }
                }
                phi_v1 = phi_s0[2];
                if (phi_s1 < phi_v1) {
                    phi_a0 = phi_a0;
                    if (phi_a0 >= phi_s5) {
                        arg2();
                        phi_a0 = arg0;
                    }
                    phi_s1 = phi_s1 + 0x10;
                    phi_a0 = phi_a0 + 2;
                    phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                }
                phi_s1 = phi_s1 - phi_v1;
                phi_a1 = *sp140;
                phi_s0 = phi_fp - ((phi_s2 << (-phi_v1 - phi_s1)) >> -phi_v1);
            }
            phi_s3 = sp140;
            if (phi_a1 != 0) {
loop_94:
                if (phi_s1 <= 0) {
                    if (phi_a0 >= phi_s5) {
                        arg2();
                        phi_a0 = arg0;
                    }
                    phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                    phi_s1 = phi_s1 + 0x10;
                    phi_a0 = phi_a0 + 2;
                }
                phi_s1 = phi_s1 - 1;
                if (((phi_s2 << (0x1F - phi_s1)) >> 0x1F) == 0) {
                    phi_s3 = phi_s3[0];
                } else {
                    phi_s3 = phi_s3[1];
                }
                if (*phi_s3 != 0) {
                    goto loop_94;
                }
            }
            phi_a1 = phi_s3[2];
            if (phi_s1 < phi_a1) {
                if (phi_a0 >= phi_s5) {
                    arg2();
                    phi_a0 = arg0;
                }
                phi_s2 = (phi_s2 << 0x10) | *phi_a0;
                phi_s1 = phi_s1 + 0x10;
                phi_a0 = phi_a0 + 2;
            }
            phi_s1 = phi_s1 - phi_a1;
            phi_v0 = (phi_s2 << (-phi_a1 - phi_s1)) >> -phi_a1;
            phi_v0 = phi_v0 - 1;
            while (phi_v0 > 0) {
                    // TODO: find the right iterator
                    phi_fp = phi_fp + 1;
                    phi_fp[phi_v0] = *phi_s0;
                    phi_s0 = phi_s0 + 1;
                    phi_v0--;
            }
        }
        if (*phi_fp < sp138) {
            goto loop_39;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0_1/func_80002FC0.s")
#endif

extern u32 D_80048D9C;
extern u8* D_80048D94;
extern u32 D_80048D98;

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
    func_80002FC0(arg2, arg3, (void*) func_800037A4, arg1);
}

void func_80003838(u32 arg0, u32 arg1) {
    u8 sp18[0x400];

    func_800037F0(arg0, arg1, sp18, ARRAY_COUNT(sp18));
}

#ifdef MIPS_TO_C
s32 func_8000385C(void *arg0, u32 arg1) {
    ? sp124;
    u32 sp10C;
    ? *spBC;
    ? *sp5C;
    ? **temp_s0;
    ? **temp_t4;
    ? *temp_a2;
    ? *temp_a2_2;
    ? *temp_t2_4;
    ? *temp_t2_5;
    ? *temp_t2_6;
    ? *temp_t2_7;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_s3;
    s32 temp_s3_2;
    s32 temp_t2_3;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    u16 temp_v1;
    u32 temp_a1;
    u32 temp_s1;
    u32 temp_t2;
    u32 temp_t2_2;
    u32 temp_t5;
    void *temp_t0;
    s32 phi_v0;
    u16 phi_v1;
    s32 phi_v0_2;
    s32 phi_t1;
    s32 phi_v0_3;
    u16 phi_v1_2;
    s32 phi_v0_4;
    s32 phi_t4;
    s32 phi_v0_5;
    u16 phi_v1_3;
    s32 phi_v0_6;
    u16 phi_v1_4;
    s32 phi_v0_7;
    void *phi_t0;
    s32 phi_v0_8;
    u16 phi_v1_5;
    s32 phi_v0_9;
    ? *phi_s1;
    s32 phi_v0_10;
    ? *phi_s1_2;
    u16 phi_v1_6;
    s32 phi_v0_11;
    s32 phi_v0_12;
    u16 phi_v1_7;
    s32 phi_v0_13;
    ? *phi_s3;
    s32 phi_v0_14;
    ? *phi_s3_2;
    s32 phi_v0_15;
    u16 phi_v1_8;
    s32 phi_v0_16;
    ? *phi_s0;
    s32 phi_v0_17;
    ? *phi_s0_2;
    s32 phi_v0_18;
    u16 phi_v1_9;
    s32 phi_v0_19;
    ? *phi_a1;
    s32 phi_v0_20;
    ? *phi_a1_2;
    u16 phi_v1_10;
    s32 phi_v0_21;
    void *phi_s2;
    void *phi_t0_2;
    s32 phi_a1_3;
    u32 phi_t0_3;
    ? *phi_a2;
    u16 phi_v1_11;
    s32 phi_v0_22;
    ? *phi_a2_2;
    u16 phi_v1_12;
    s32 phi_v0_23;
    s32 phi_return;
    u16 phi_v1_13;
    void *phi_a0;
    u16 phi_v1_14;
    void *phi_a0_2;
    u16 phi_v1_15;
    void *phi_a0_3;
    void *phi_a0_4;
    u16 phi_v1_16;
    void *phi_a0_5;
    ? *phi_s1_3;
    u16 phi_v1_17;
    void *phi_a0_6;
    u16 phi_v1_18;
    void *phi_a0_7;
    ? *phi_s3_3;
    u16 phi_v1_19;
    void *phi_a0_8;
    ? *phi_s0_3;
    s32 phi_v0_24;
    u16 phi_v1_20;
    void *phi_a0_9;
    ? *phi_a1_4;
    u16 phi_v1_21;
    void *phi_a0_10;
    void *phi_a0_11;
    void *phi_a0_12;
    void *phi_a0_13;
    void *phi_a0_14;
    void *phi_a0_15;
    void *phi_a0_16;
    s32 phi_v0_25;
    u16 phi_v1_22;
    void *phi_a0_17;
    void *phi_a0_18;
    u16 phi_v1_23;
    u32 phi_s1_4;
    s32 phi_s0_4;
    s32 phi_v0_26;
    u16 phi_v1_24;
    void *phi_a0_19;
    u16 phi_v1_25;
    u16 phi_v1_26;
    void *phi_a0_20;

    temp_v1 = (((((arg0->unk0 << 0x10) | arg0->unk2) << 0x10) | arg0->unk4) << 0x10) | arg0->unk6;
    temp_t5 = temp_v1 + arg1;
    temp_v1 = (temp_v1 << 0x10) | arg0->unk8;
    sp10C = (temp_v1 << (0x18 - 8)) >> 0x18;
    spBC = NULL;
    phi_v0 = 8;
    phi_t1 = 0;
    phi_a2_2 = &sp124;
    phi_v1_13 = temp_v1;
    phi_a0 = arg0 + 0xA;
loop_1:
    phi_v1 = phi_v1_13;
    phi_v0_2 = phi_v0;
    phi_a0_12 = phi_a0;
    if (phi_v0 <= 0) {
        phi_v1 = (phi_v1_13 << 0x10) | *phi_a0;
        phi_v0_2 = phi_v0 + 0x10;
        phi_a0_12 = phi_a0 + 2;
    }
    temp_v0 = phi_v0_2 - 1;
    temp_t2 = (phi_v1 << (0x1F - temp_v0)) >> 0x1F;
    if (temp_t2 == 0) {
block_5:
        temp_t4 = &(&spBC)[phi_t1];
        if (temp_t2 != 0) {
            phi_a2_2->unk0 = 0;
            phi_a2_2->unk4 = 0;
            phi_a2_2->unk8 = 0;
            temp_t2_6 = phi_a2_2;
            temp_t2_6->unk0 = temp_t4[-2];
            temp_t2_6->unk4 = temp_t4[-1];
            temp_t4[-2] = temp_t2_6;
            phi_v0 = temp_v0;
            phi_t1 = phi_t1 - 1;
            phi_a2_2 = phi_a2_2 + 0xC;
            phi_v1_13 = phi_v1;
            phi_a0 = phi_a0_12;
        } else {
            temp_t2_7 = phi_a2_2;
            temp_a2_2 = phi_a2_2 + 0xC;
            temp_a2_2->unk-C = 0;
            temp_a2_2->unk-8 = 0;
            temp_a2_2->unk-4 = 0;
            phi_v1_12 = phi_v1;
            phi_v0_23 = temp_v0;
            phi_a0 = phi_a0_12;
            if (temp_v0 < 8) {
                phi_v1_12 = (phi_v1 << 0x10) | *phi_a0_12;
                phi_v0_23 = temp_v0 + 0x10;
                phi_a0 = phi_a0_12 + 2;
            }
            temp_v0_14 = phi_v0_23 - 8;
            temp_t2_7->unk8 = (phi_v1_12 << (0x18 - temp_v0_14)) >> 0x18;
            temp_t4->unk0 = temp_t2_7;
            phi_v0 = temp_v0_14;
            phi_t1 = phi_t1 + 1;
            phi_a2_2 = temp_a2_2;
            phi_v1_13 = phi_v1_12;
        }
        goto loop_1;
    }
    if (phi_t1 >= 2) {
        goto block_5;
    }
    sp5C = NULL;
    phi_v0_3 = temp_v0;
    phi_t4 = 0;
    phi_a2 = phi_a2_2;
    phi_v1_14 = phi_v1;
    phi_a0_2 = phi_a0_12;
loop_11:
    phi_v1_2 = phi_v1_14;
    phi_v0_4 = phi_v0_3;
    phi_a0_11 = phi_a0_2;
    if (phi_v0_3 <= 0) {
        phi_v1_2 = (phi_v1_14 << 0x10) | *phi_a0_2;
        phi_v0_4 = phi_v0_3 + 0x10;
        phi_a0_11 = phi_a0_2 + 2;
    }
    temp_v0_2 = phi_v0_4 - 1;
    temp_t2_2 = (phi_v1_2 << (0x1F - temp_v0_2)) >> 0x1F;
    if (temp_t2_2 == 0) {
block_15:
        temp_s0 = &(&sp5C)[phi_t4];
        if (temp_t2_2 != 0) {
            phi_a2->unk0 = 0;
            phi_a2->unk4 = 0;
            phi_a2->unk8 = 0;
            temp_t2_4 = phi_a2;
            temp_t2_4->unk0 = temp_s0[-2];
            temp_t2_4->unk4 = temp_s0[-1];
            temp_s0[-2] = temp_t2_4;
            phi_v0_3 = temp_v0_2;
            phi_t4 = phi_t4 - 1;
            phi_a2 = phi_a2 + 0xC;
            phi_v1_14 = phi_v1_2;
            phi_a0_2 = phi_a0_11;
        } else {
            temp_t2_5 = phi_a2;
            temp_a2 = phi_a2 + 0xC;
            temp_a2->unk-C = 0;
            temp_a2->unk-8 = 0;
            temp_a2->unk-4 = 0;
            phi_v1_11 = phi_v1_2;
            phi_v0_22 = temp_v0_2;
            phi_a0_2 = phi_a0_11;
            if (temp_v0_2 < 8) {
                phi_v1_11 = (phi_v1_2 << 0x10) | *phi_a0_11;
                phi_v0_22 = temp_v0_2 + 0x10;
                phi_a0_2 = phi_a0_11 + 2;
            }
            temp_v0_13 = phi_v0_22 - 8;
            temp_t2_5->unk8 = (phi_v1_11 << (0x18 - temp_v0_13)) >> 0x18;
            temp_s0->unk0 = temp_t2_5;
            phi_v0_3 = temp_v0_13;
            phi_t4 = phi_t4 + 1;
            phi_a2 = temp_a2;
            phi_v1_14 = phi_v1_11;
        }
        goto loop_11;
    }
    if (phi_t4 >= 2) {
        goto block_15;
    }
    phi_return = temp_v0_2;
    if (arg1 < temp_t5) {
        phi_v0_5 = temp_v0_2;
        phi_t0 = arg1;
        phi_v1_15 = phi_v1_2;
        phi_a0_3 = phi_a0_11;
loop_22:
        phi_v1_3 = phi_v1_15;
        phi_v0_6 = phi_v0_5;
        phi_a0_4 = phi_a0_3;
        if (phi_v0_5 <= 0) {
            phi_v1_3 = (phi_v1_15 << 0x10) | *phi_a0_3;
            phi_v0_6 = phi_v0_5 + 0x10;
            phi_a0_4 = phi_a0_3 + 2;
        }
        temp_v0_3 = phi_v0_6 - 1;
        if (((phi_v1_3 << (0x1F - temp_v0_3)) >> 0x1F) == 0) {
            phi_v1_4 = phi_v1_3;
            phi_v0_7 = temp_v0_3;
            phi_a0_3 = phi_a0_4;
            if (temp_v0_3 < 8) {
                phi_v1_4 = (phi_v1_3 << 0x10) | *phi_a0_4;
                phi_v0_7 = temp_v0_3 + 0x10;
                phi_a0_3 = phi_a0_4 + 2;
            }
            temp_v0_4 = phi_v0_7 - 8;
            *phi_t0 = (phi_v1_4 << (0x18 - temp_v0_4)) >> 0x18;
            phi_t0_3 = phi_t0 + 1;
            phi_v0_5 = temp_v0_4;
            phi_return = temp_v0_4;
            phi_v1_15 = phi_v1_4;
        } else {
            temp_s2 = *spBC;
            if (sp10C != 0) {
                phi_v0_8 = temp_v0_3;
                phi_v0_10 = temp_v0_3;
                phi_s1_2 = spBC;
                phi_v1_16 = phi_v1_3;
                phi_a0_5 = phi_a0_4;
                phi_s1_3 = spBC;
                phi_v1_17 = phi_v1_3;
                phi_a0_6 = phi_a0_4;
                if (temp_s2 != 0) {
loop_30:
                    phi_v1_5 = phi_v1_16;
                    phi_v0_9 = phi_v0_8;
                    phi_a0_13 = phi_a0_5;
                    if (phi_v0_8 <= 0) {
                        phi_v1_5 = (phi_v1_16 << 0x10) | *phi_a0_5;
                        phi_v0_9 = phi_v0_8 + 0x10;
                        phi_a0_13 = phi_a0_5 + 2;
                    }
                    temp_v0_5 = phi_v0_9 - 1;
                    if (((phi_v1_5 << (0x1F - temp_v0_5)) >> 0x1F) == 0) {
                        phi_s1 = phi_s1_3->unk0;
                    } else {
                        phi_s1 = phi_s1_3->unk4;
                    }
                    phi_v0_8 = temp_v0_5;
                    phi_v0_10 = temp_v0_5;
                    phi_s1_2 = phi_s1;
                    phi_v1_16 = phi_v1_5;
                    phi_a0_5 = phi_a0_13;
                    phi_s1_3 = phi_s1;
                    phi_v1_17 = phi_v1_5;
                    phi_a0_6 = phi_a0_13;
                    if (*phi_s1 != 0) {
                        goto loop_30;
                    }
                }
                temp_s3 = phi_s1_2->unk8;
                phi_v1_6 = phi_v1_17;
                phi_v0_11 = phi_v0_10;
                phi_a0_15 = phi_a0_6;
                if (phi_v0_10 < temp_s3) {
                    phi_v1_6 = (phi_v1_17 << 0x10) | *phi_a0_6;
                    phi_v0_11 = phi_v0_10 + 0x10;
                    phi_a0_15 = phi_a0_6 + 2;
                }
                temp_v0_6 = phi_v0_11 - temp_s3;
                temp_s1 = (phi_v1_6 << ((0x20 - temp_s3) - temp_v0_6)) >> (0x20 - temp_s3);
                phi_v0_24 = temp_v0_6;
                phi_s1_4 = temp_s1;
                phi_s0_4 = 0;
                phi_v1_22 = phi_v1_6;
                phi_a0_18 = phi_a0_15;
                if (temp_s1 < 3) {
                    phi_v0_12 = temp_v0_6;
                    phi_v0_14 = temp_v0_6;
                    phi_s3_2 = spBC;
                    phi_v1_18 = phi_v1_6;
                    phi_a0_7 = phi_a0_15;
                    phi_s3_3 = spBC;
                    phi_v1_26 = phi_v1_6;
                    phi_a0_20 = phi_a0_15;
                    if (temp_s2 != 0) {
loop_40:
                        phi_v1_7 = phi_v1_18;
                        phi_v0_13 = phi_v0_12;
                        phi_a0_14 = phi_a0_7;
                        if (phi_v0_12 <= 0) {
                            phi_v1_7 = (phi_v1_18 << 0x10) | *phi_a0_7;
                            phi_v0_13 = phi_v0_12 + 0x10;
                            phi_a0_14 = phi_a0_7 + 2;
                        }
                        temp_v0_7 = phi_v0_13 - 1;
                        if (((phi_v1_7 << (0x1F - temp_v0_7)) >> 0x1F) == 0) {
                            phi_s3 = phi_s3_3->unk0;
                        } else {
                            phi_s3 = phi_s3_3->unk4;
                        }
                        phi_v0_12 = temp_v0_7;
                        phi_v0_14 = temp_v0_7;
                        phi_s3_2 = phi_s3;
                        phi_v1_18 = phi_v1_7;
                        phi_a0_7 = phi_a0_14;
                        phi_s3_3 = phi_s3;
                        phi_v1_26 = phi_v1_7;
                        phi_a0_20 = phi_a0_14;
                        if (*phi_s3 != 0) {
                            goto loop_40;
                        }
                    }
                    temp_s2_2 = phi_s3_2->unk8;
                    phi_v0_26 = phi_v0_14;
                    phi_v1_25 = phi_v1_26;
                    phi_a0_18 = phi_a0_20;
                    if (phi_v0_14 < temp_s2_2) {
                        phi_v0_26 = phi_v0_14 + 0x10;
                        phi_v1_25 = (phi_v1_26 << 0x10) | *phi_a0_20;
                        phi_a0_18 = phi_a0_20 + 2;
                    }
                    temp_v0_8 = phi_v0_26 - temp_s2_2;
                    phi_v0_24 = temp_v0_8;
                    phi_s1_4 = (phi_v1_25 << ((0x20 - temp_s2_2) - temp_v0_8)) >> (0x20 - temp_s2_2);
                    phi_s0_4 = temp_s1 + 1;
                    phi_v1_22 = phi_v1_25;
                }
                phi_s2 = ((phi_t0 - (phi_s1_4 * 4)) - phi_s0_4) + 8;
            } else {
                phi_v0_15 = temp_v0_3;
                phi_v0_17 = temp_v0_3;
                phi_s0_2 = spBC;
                phi_v1_19 = phi_v1_3;
                phi_a0_8 = phi_a0_4;
                phi_s0_3 = spBC;
                phi_v1_24 = phi_v1_3;
                phi_a0_19 = phi_a0_4;
                if (temp_s2 != 0) {
loop_51:
                    phi_v1_8 = phi_v1_19;
                    phi_v0_16 = phi_v0_15;
                    phi_a0_16 = phi_a0_8;
                    if (phi_v0_15 <= 0) {
                        phi_v1_8 = (phi_v1_19 << 0x10) | *phi_a0_8;
                        phi_v0_16 = phi_v0_15 + 0x10;
                        phi_a0_16 = phi_a0_8 + 2;
                    }
                    temp_v0_9 = phi_v0_16 - 1;
                    if (((phi_v1_8 << (0x1F - temp_v0_9)) >> 0x1F) == 0) {
                        phi_s0 = phi_s0_3->unk0;
                    } else {
                        phi_s0 = phi_s0_3->unk4;
                    }
                    phi_v0_15 = temp_v0_9;
                    phi_v0_17 = temp_v0_9;
                    phi_s0_2 = phi_s0;
                    phi_v1_19 = phi_v1_8;
                    phi_a0_8 = phi_a0_16;
                    phi_s0_3 = phi_s0;
                    phi_v1_24 = phi_v1_8;
                    phi_a0_19 = phi_a0_16;
                    if (*phi_s0 != 0) {
                        goto loop_51;
                    }
                }
                temp_s3_2 = phi_s0_2->unk8;
                phi_v0_25 = phi_v0_17;
                phi_v1_23 = phi_v1_24;
                phi_a0_18 = phi_a0_19;
                if (phi_v0_17 < temp_s3_2) {
                    phi_v0_25 = phi_v0_17 + 0x10;
                    phi_v1_23 = (phi_v1_24 << 0x10) | *phi_a0_19;
                    phi_a0_18 = phi_a0_19 + 2;
                }
                temp_v0_10 = phi_v0_25 - temp_s3_2;
                phi_v0_24 = temp_v0_10;
                phi_s2 = phi_t0 - ((phi_v1_23 << ((0x20 - temp_s3_2) - temp_v0_10)) >> (0x20 - temp_s3_2));
                phi_v1_22 = phi_v1_23;
            }
            phi_v0_18 = phi_v0_24;
            phi_v0_20 = phi_v0_24;
            phi_a1_2 = sp5C;
            phi_v1_20 = phi_v1_22;
            phi_a0_9 = phi_a0_18;
            phi_a1_4 = sp5C;
            phi_v1_21 = phi_v1_22;
            phi_a0_10 = phi_a0_18;
            if (*sp5C != 0) {
loop_61:
                phi_v1_9 = phi_v1_20;
                phi_v0_19 = phi_v0_18;
                phi_a0_17 = phi_a0_9;
                if (phi_v0_18 <= 0) {
                    phi_v1_9 = (phi_v1_20 << 0x10) | *phi_a0_9;
                    phi_v0_19 = phi_v0_18 + 0x10;
                    phi_a0_17 = phi_a0_9 + 2;
                }
                temp_v0_11 = phi_v0_19 - 1;
                if (((phi_v1_9 << (0x1F - temp_v0_11)) >> 0x1F) == 0) {
                    phi_a1 = phi_a1_4->unk0;
                } else {
                    phi_a1 = phi_a1_4->unk4;
                }
                phi_v0_18 = temp_v0_11;
                phi_v0_20 = temp_v0_11;
                phi_a1_2 = phi_a1;
                phi_v1_20 = phi_v1_9;
                phi_a0_9 = phi_a0_17;
                phi_a1_4 = phi_a1;
                phi_v1_21 = phi_v1_9;
                phi_a0_10 = phi_a0_17;
                if (*phi_a1 != 0) {
                    goto loop_61;
                }
            }
            temp_t2_3 = phi_a1_2->unk8;
            phi_v1_10 = phi_v1_21;
            phi_v0_21 = phi_v0_20;
            phi_a0_3 = phi_a0_10;
            if (phi_v0_20 < temp_t2_3) {
                phi_v1_10 = (phi_v1_21 << 0x10) | *phi_a0_10;
                phi_v0_21 = phi_v0_20 + 0x10;
                phi_a0_3 = phi_a0_10 + 2;
            }
            temp_v0_12 = phi_v0_21 - temp_t2_3;
            temp_a1 = (phi_v1_10 << ((0x20 - temp_t2_3) - temp_v0_12)) >> (0x20 - temp_t2_3);
            phi_t0_2 = phi_t0;
            phi_a1_3 = temp_a1 - 1;
            phi_t0_3 = phi_t0;
            phi_v0_5 = temp_v0_12;
            phi_return = temp_v0_12;
            phi_v1_15 = phi_v1_10;
            while (0 < temp_a1) {
                temp_t0 = phi_t0_2 + 1;
                temp_t0->unk-1 = *phi_s2;
                phi_s2 = phi_s2 + 1;
                phi_t0_2 = temp_t0;
                phi_a1_3 = phi_a1_3 - 1;
                phi_t0_3 = temp_t0;
                phi_v0_5 = temp_v0_12;
                phi_return = temp_v0_12;
                phi_v1_15 = phi_v1_10;
            }
        }
        phi_t0 = phi_t0_3;
        if (phi_t0_3 < temp_t5) {
            goto loop_22;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0_1/func_8000385C.s")
#endif
