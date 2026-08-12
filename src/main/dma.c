#include <ultra64.h>
#include <macros.h>
#include <PR/R4300.h>
#include <PR/rcp.h>
#include <PR/os_pi.h>
#include "main.h"
#include "dma.h"
#include "fault.h"

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

    dmaDevAddr = (void *)physAddr;
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

typedef struct HuffmanNode {
    /* 0x00 */ struct HuffmanNode *left;
    /* 0x04 */ struct HuffmanNode *right;
    /* 0x08 */ s32 value;
} HuffmanNode; // size = 0x0C

void func_80002FC0(u16 *data, size_t size, void (*update_stream)(void), u8 *out_buf) {
#define VPK0_UPDATE_STREAM()        \
    if ((uintptr_t) csr >= bound)   \
    {                               \
        update_stream();            \
        csr = data;                 \
    }

#define VPK0_READ_USHORT()  \
    temp_value <<= 0x10;    \
    temp_value |= *(csr++); \
    bits_num += 0x10;

#define VPK0_GET_BITS(var, n) \
    if (bits_num < n) {       \
        VPK0_UPDATE_STREAM(); \
        VPK0_READ_USHORT();   \
    }                         \
    bits_num -= n;            \
    var = ((temp_value << ((32 - n) - bits_num)) >> (32 - (u32) (n)));

#define VPK0_INIT_NODE(node)    \
    node = lengths_node;        \
    lengths_node->left = NULL;  \
    lengths_node->right = NULL; \
    lengths_node->value = 0;    \
    lengths_node++;

    uintptr_t bound = (uintptr_t) ((uintptr_t)data + size);
    HuffmanNode *sample1_node;
    HuffmanNode *lengths_node;
    HuffmanNode sp14C[64];
    u8 *out_ptr;
    HuffmanNode *offsets_tree;
    HuffmanNode *lengths_tree;
    u8 *copy_src;
    void *out_buf_end;
    u32 sample_method;
    HuffmanNode *off_stack[20];
    s32 off_stack_size;
    s32 value;
    HuffmanNode *offsets_node;
    HuffmanNode *off_node;
    HuffmanNode *lengths_stack[20];
    s32 lengths_stack_size;
    s32 unused2[2];
    HuffmanNode *length_node;
    s32 unused3[3];
    s32 sp64;
    s32 unused;
    u32 temp_value;
    s32 bits_num;
    u16 *csr;

    bits_num = 0;
    temp_value = 0;
    lengths_node = sp14C;

    update_stream();

    csr = data;
    VPK0_READ_USHORT(); VPK0_UPDATE_STREAM(); VPK0_READ_USHORT(); bits_num -= 32;

    out_ptr = out_buf;

    VPK0_UPDATE_STREAM(); VPK0_READ_USHORT(); VPK0_UPDATE_STREAM(); VPK0_READ_USHORT(); \
    bits_num -= 32; out_buf_end = ((temp_value << ((32 - 32) - bits_num)) >> (32 - (u32) (32))) + out_buf;

    VPK0_GET_BITS(sample_method, 8);

    off_stack_size = 0;
    off_stack[0] = NULL;

    while (1)
    {
        VPK0_GET_BITS(value, 1);

        if ((value != 0) && (off_stack_size < 2))
        {
            break;
        }
        if (value != 0)
        {
            VPK0_INIT_NODE(off_node);

            off_node->left = off_stack[off_stack_size - 2];
            off_node->right = off_stack[off_stack_size - 1];

            off_stack[off_stack_size - 2] = off_node;
            off_stack_size--;
        }
        else
        {
            VPK0_INIT_NODE(off_node);

            VPK0_GET_BITS(off_node->value, 8);

            off_stack[off_stack_size] = off_node;
            off_stack_size++;
        }
    }
    offsets_tree = off_stack[0];

    lengths_stack_size = 0;
    lengths_stack[0] = 0;

    while (1)
    {
        VPK0_GET_BITS(value, 1);

        if ((value != 0) && (lengths_stack_size < 2))
        {
            break;
        }
        if (value != 0)
        {
            VPK0_INIT_NODE(length_node);

            length_node->left = lengths_stack[lengths_stack_size - 2];
            length_node->right = lengths_stack[lengths_stack_size - 1];

            lengths_stack[lengths_stack_size - 2] = length_node;
            lengths_stack_size--;
        }
        else
        {
            VPK0_INIT_NODE(length_node);

            VPK0_GET_BITS(length_node->value, 8);

            lengths_stack[lengths_stack_size] = length_node;
            lengths_stack_size++;
        }
    }
    lengths_tree = lengths_stack[0];

    while ((uintptr_t)out_ptr < (uintptr_t)out_buf_end)
    {
        VPK0_GET_BITS(value, 1);

        if (!value)
        {
            VPK0_GET_BITS(*out_ptr++, 8);
        }
        else
        {
            lengths_node = lengths_tree;

            if (sample_method != 0)
            {
                sp64 = 0;
                sample1_node = offsets_tree;

                while (sample1_node->left != NULL)
                {
                    VPK0_GET_BITS(value, 1);
                    sample1_node = !value ? sample1_node->left : sample1_node->right;
                }
                VPK0_GET_BITS(value, sample1_node->value);

                if (value <= 2)
                {
                    sp64 = value + 1;
                    offsets_node = offsets_tree;

                    while (offsets_node->left != NULL)
                    {
                        VPK0_GET_BITS(value, 1);
                        offsets_node = !value ? offsets_node->left : offsets_node->right;
                    }
                    VPK0_GET_BITS(value, offsets_node->value);
                }
                copy_src = out_ptr - value * 4 - sp64 + 8;
            }
            else
            {
                offsets_node = offsets_tree;
                while (offsets_node->left != NULL)
                {
                    VPK0_GET_BITS(value, 1);
                    offsets_node = !value ? offsets_node->left : offsets_node->right;
                }
                VPK0_GET_BITS(value, offsets_node->value);
                copy_src = out_ptr - value;
            }
            while (lengths_node->left != NULL)
            {
                VPK0_GET_BITS(value, 1);
                lengths_node = !value ? lengths_node->left : lengths_node->right;
            }
            VPK0_GET_BITS(value, lengths_node->value);

            while (value-- > 0)
            {
                *(out_ptr++) = *(copy_src++);
            }
        }
    }
}


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

// This function is the last in the dma translation unit and its listing
// carries 16 bytes of trailing alignment padding that C does not emit,
// so converting it shortens the TU and shifts contpad onward.
#ifdef NON_MATCHING
void func_8000385C(u16 *data, u8 *out_buf) {
#undef VPK0_READ_USHORT
#undef VPK0_GET_BITS

    #define VPK0_READ_USHORT(csr)  \
        temp_value <<= 0x10;    \
        temp_value |= *(csr++); \
        bits_num += 0x10;

    #define VPK0_READ_USHORT2(csr)  \
        temp_value <<= 0x10;    \
        temp_value |= *(csr++); \
        bits_num -= 0x10;

    #define VPK0_GET_BITS(var, n, csr) \
        if (bits_num < n) {       \
            VPK0_READ_USHORT(csr);   \
        }                         \
        bits_num -= n;             \
        var = ((temp_value << (32 - (n + bits_num))) >> (32 - (u32) (n)));

    uintptr_t bound;
    HuffmanNode *other_var_s0;
    HuffmanNode *lengths_node;
    HuffmanNode sp14C[64];
    u8 *bytecsr;
    HuffmanNode *sp144;
    HuffmanNode *sp140;
    u8 *byte;
    void *sp138;
    s32 sp134;
    HuffmanNode *spE4[20];
    s32 i;
    s32 var_v0;
    HuffmanNode *var_s0;
    HuffmanNode *current_vpk0;
    HuffmanNode *sp84[20];
    s32 new_var2;
    s32 j;
    HuffmanNode *unused2;
    s32 other_var_v0;
    HuffmanNode *current_vpk0_2;
    s32 unused3[3];
    s32 sp64;
    u32 temp_value;
    s32 bits_num;
    u16 *csr = data;
    s32 a1;

    lengths_node = sp14C;
    bits_num = 0;
    temp_value = 0;

    VPK0_READ_USHORT(csr);
    VPK0_READ_USHORT2(csr);
    VPK0_READ_USHORT(csr);
    VPK0_READ_USHORT2(csr);
    bound = temp_value + out_buf;
    bytecsr = out_buf;

    VPK0_GET_BITS(sp134, 8, csr);

    i = 0;
    spE4[0] = NULL;

    data = csr;
    while (1)
    {
        VPK0_GET_BITS(sp64, 1, data);

        if ((sp64 == 0) || (i >= 2))
        {
            if (sp64 != 0)
            {
                VPK0_INIT_NODE(current_vpk0);
                current_vpk0->left = spE4[i - 2];
                current_vpk0->right = spE4[i - 1];
                spE4[i - 2] = current_vpk0;
                i--;
            }
            else
            {
                VPK0_INIT_NODE(current_vpk0);
                VPK0_GET_BITS(current_vpk0->value, 8, data);
                spE4[i] = current_vpk0;
                i++;
            }
        }
        else break;
    }

    sp144 = spE4[0];
    if (!new_var2);
    j = 0;
    sp84[0] = 0;

    while (1)
    {
        VPK0_GET_BITS(var_v0, 1, data);

        if ((var_v0 == 0) || (j >= 2))
        {
            if (var_v0 != 0)
            {
                VPK0_INIT_NODE(current_vpk0);
                current_vpk0->left = sp84[j - 2];
                current_vpk0->right = sp84[j - 1];
                sp84[j - 2] = current_vpk0;
                j--;
            }
            else
            {
                VPK0_INIT_NODE(current_vpk0);
                VPK0_GET_BITS(current_vpk0->value, 8, data);
                sp84[j] = current_vpk0;
                j++;
            }
        }
        else break;
    }

    sp140 = sp84[0];
    while (((uintptr_t)bytecsr) < bound)
    {
        if (bits_num <= 0)
        {
            VPK0_READ_USHORT(data);
        }
        bits_num--;

        if (!((temp_value << (0x1F - bits_num)) >> 0x1F))
        {
            VPK0_GET_BITS(*(bytecsr++), 8, data);
        }
        else
        {
            if (sp134 != 0)
            {
                sp64 = 0;

                other_var_s0 = sp144;
                while (other_var_s0->left != (NULL))
                {
                    VPK0_GET_BITS(new_var2, 1, data);
                    other_var_s0 = (!new_var2) ? (other_var_s0->left) : (other_var_s0->right);
                }

                VPK0_GET_BITS(var_v0, other_var_s0->value, data);
                var_v0 = (temp_value << (0x20 - (other_var_s0->value + bits_num))) >> (0x20 - (other_var_s0->value));

                if (var_v0 <= 2)
                {
                    sp64 = var_v0 + 1;
                    var_s0 = sp144;
                    while (var_s0->left != (NULL))
                    {
                        VPK0_GET_BITS(var_v0, 1, data);
                        var_s0 = (!var_v0) ? (var_s0->left) : (var_s0->right);
                    }

                    VPK0_GET_BITS(var_v0, var_s0->value, data);
                    var_v0 = (temp_value << (0x20 - (var_s0->value + bits_num))) >> (0x20 - (var_s0->value));
                }
                byte = (u8 *)(((bytecsr - (var_v0 * 4)) - sp64) + 8);
            }
            else
            {
                unused2 = sp144;

                while (unused2->left != (NULL))
                {
                    VPK0_GET_BITS(var_v0, 1, data);
                    unused2 = (!var_v0) ? (unused2->left) : (unused2->right);
                }

                VPK0_GET_BITS(var_v0, unused2->value, data);
                var_v0 = (temp_value << (0x20 - (unused2->value + bits_num))) >> (0x20 - (unused2->value));
                byte = (u8 *)(bytecsr - var_v0);
            }

            current_vpk0_2 = sp140;

            while (current_vpk0_2->left != (NULL))
            {
                VPK0_GET_BITS(unused2, 1, data);
                current_vpk0_2 = (!unused2) ? (current_vpk0_2->left) : (current_vpk0_2->right);
            }

            VPK0_GET_BITS(a1, current_vpk0_2->value, data);
            a1 = (temp_value << (0x20 - (current_vpk0_2->value + bits_num))) >> (0x20 - (current_vpk0_2->value));

            while ((a1--) > 0)
            {
                *(bytecsr++) = *(byte++);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/dma/func_8000385C.s")
#endif