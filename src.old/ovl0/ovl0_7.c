#include <ultra64.h>
#include <macros.h>
#include "segments.h"

u32 D_8003F330 = 0x00000000;

u32 D_8003F334 = 0x00000000;

u32 D_8003F338 = 0x00000001;

u32 D_8003F33C = 0x00000000;

u32 D_8003F340 = 0x00000000;

u32 D_8003F344 = 0x00000001;

u16 D_8003F348[] = {
    0x0000, 0x0000, 0x0000, 0x0000
};

u32 D_8003F350 = 0x8004ADC0;
u32 D_8003F354 = 0x0004B000;
u32 D_8003F358 = 0x7D001018;
u32 D_8003F35C = 0x40400818;
u32 D_8003F360 = 0x00003214;

u32 *D_8003F364 = (u32*)_data_3E1400SegmentRomStart;
u32 *D_8003F368 = (u32*)_data_3E6BC0SegmentRomStart;
u32 *D_8003F36C = (u32*)_data_3E6BC0SegmentRomStart;
u32 *D_8003F370 = (u32*)_data_2A8CB0SegmentRomStart;
u32 *D_8003F374 = (u32*)_data_2B1510SegmentRomStart;
u32 *D_8003F378 = (u32*)_data_2B1510SegmentRomStart;
u32 *D_8003F37C = (u32*)_data_250320SegmentRomStart;

u32 D_8003F380 = 0x00100808;
u32 D_8003F384 = 0x00000000;
u32 D_8003F388 = 0x00000000;
u32 D_8003F38C = 0x00000000;

u32 D_8003F390 = 0x00000000;
u32 D_8003F394 = 0x00000000;
u32 D_8003F398 = 0x00000000;
u32 D_8003F39C = 0x00000000;

u32 *D_8003F3A0 = (u32*)_data_49F590SegmentRomStart;
u32 *D_8003F3A4 = (u32*)_data_49F590SegmentRomEnd;

u32 *D_8003F3A8 = (u32*)_data_4A0340SegmentRomStart;
u32 *D_8003F3AC = (u32*)_data_4A0340SegmentRomEnd;

u32 *D_8003F3B0 = (u32*)_data_4A3B60SegmentRomStart;
u32 *D_8003F3B4 = (u32*)_data_4A3B60SegmentRomEnd;

struct AudioHeap {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

void func_8001E3A0(struct AudioHeap *arg0, s32 arg1, u32 arg2) {
    s32 temp_v0;

    temp_v0 = 0x10 - (arg1 & 0xF);
    if (temp_v0 != 0x10) {
        arg0->unk0 = arg1 + temp_v0;
    } else {
        arg0->unk0 = arg1;
    }
    arg0->unk8 = arg2;
    arg0->unkC = 0;
    arg0->unk4 = arg0->unk0;
}

extern const char D_80040CE0[];
// functionally equivalent
#ifdef NON_MATCHING
void *func_8001E3D4(s32 arg0, s32 arg1, struct AudioHeap *arg2, s32 byteSize, s32 size) {
    s32 temp_v1 = ALIGN16(byteSize * size);
    s32 temp_v0 = arg2->unk4;

    if ((arg2->unk0 + arg2->unk8) >= (temp_v0 + temp_v1)) {
        arg2->unk4 += temp_v1;
    } else {
        fatal_printf(&D_80040CE0); // "Audio Heap Overflow\n"
        while (1);
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E3D4.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E450.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E490.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E510.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E5C8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E660.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E6B8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E724.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E7A4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E8D0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E9A0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001E9EC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001ECC0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001F234.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001F24C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001F2E0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001F81C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_8001FD64.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020878.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020888.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020894.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_800208A0.s")

void func_800208D4(void) {
    s32 i;
    
    for (i = 0; i < 1; i++) {
        func_80020968(i);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020914.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020968.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020998.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020A20.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020ABC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020B34.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020BB8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020BE8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020C70.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020C88.s")

void func_80020CC4(u32 arg0) {
    s32 phi_a0;

    if (arg0 >= 0x7801) {
        phi_a0 = 0x7F;
    } else {
        phi_a0 = (arg0 >> 8) & 0xFF;
    }
    func_80023360(phi_a0, arg0);
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020D00.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020D58.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020DAC.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020E00.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020E0C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020E5C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020E8C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020E9C.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020EA8.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020EB4.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_7/func_80020ECC.s")
