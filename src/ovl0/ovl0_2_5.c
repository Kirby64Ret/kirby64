// gtl: graphics translation layer?

#define	OS_K0_TO_PHYSICAL(x)	(u32)(((char *)(x)-0x80000000))

#include <ultra64.h>
#include <macros.h>
#include <PR/os_message.h>
#include "ovl0_2_5.h"
#include "types.h"

struct UcodeHandler {
    long long int *text; // ucode text
    long long int *data; // ucode data
};

extern long long int gspF3DEX2_fifoDataStart[];
extern long long int gspF3DEX2_fifoTextStart[];

extern long long int gspL3DEX2_fifoDataStart[];
extern long long int gspL3DEX2_fifoTextStart[];

extern long long int gspS2DEX2_fifoDataStart[];
extern long long int gspS2DEX2_fifoTextStart[];

u32 D_8003DCA0 = 0;
u32 D_8003DCA4 = 0;
u32 D_8003DCA8 = 0;

struct UcodeHandler D_8003DCAC[16] = {
    {gspF3DEX2_fifoTextStart, gspF3DEX2_fifoDataStart},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {gspL3DEX2_fifoTextStart, gspL3DEX2_fifoDataStart},
    {NULL, NULL},
    {gspS2DEX2_fifoTextStart, gspS2DEX2_fifoDataStart},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL},
    {NULL, NULL}
};

extern void func_80000A44(void);
extern u32 *gGObjThreadHead;

struct DynamicBufferSubclass {
    struct DynamicBuffer buffer;
    u32 unk10;
};

struct UnkStruct8004A490 {
    u32 *unk0;
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
    u32 unk44;
    u32 unk48;
    u32 unk4C;
    u32 unk50;
    u32 unk54;
    u32 unk58;
    u32 unk5C;
    u32 unk60;
    u32 unk64;
    u32 unk68;
};

// bss

extern OSMesg D_800492B0[4];
extern OSMesgQueue D_800492C0;
extern s16 D_800492D8;
extern s16 D_800492DA;
extern s32 D_800492DC;
extern OSMesg D_800492E0;
// 0x800492E4?
extern OSMesgQueue D_800492E8;
extern struct UnkStruct800009E8 D_80049300;
extern u32* D_80049308;
extern OSMesg D_80049310[3];
// 0x8004931C?
extern OSMesgQueue D_80049320;
extern OSMesg D_80049338;
// 0x8004933C?
extern OSMesgQueue D_80049340;
extern u64 D_80049358[SP_DRAM_STACK_SIZE8 / sizeof(u64)];
// 0x80049758 & 0x8004975C? file boundary?
extern u64 D_80049760[OS_YIELD_DATA_SIZE / sizeof(u64)];
// 0x8004A360 & 0x8004A364?
extern struct DObj *D_8004A368[]; // probably length 2
extern struct DObj *D_8004A370[]; // probably length 2
extern struct DObj *D_8004A378[]; // probably length 2
extern struct DObj *D_8004A380[]; // probably length 2
extern u32 D_8004A388[]; // probably length 2
extern struct DLBuffer gDLBuffers[2][4]; // 0x8004A390
extern Gfx *gDisplayListHeads[4]; // 0x8004A3D0
extern Gfx* D_8004A3E0[4]; // 0x8004A3E0
extern u32 D_8004A3F0; // 0x8004A3F0
extern u32 D_8004A3F4; // 0x8004A3F4
extern struct DynamicBuffer gDynamicBuffer1; // 0x8004A3F8
extern struct DynamicBuffer gDynamicBuffer2; // 0x8004A408
extern struct DynamicBufferSubclass gDynamicBuffer3;
extern u32 D_8004A438;
extern u32 D_8004A43C;
extern u32 D_8004A440;
extern u16 D_8004A444;
extern u16 D_8004A446;
extern u16 D_8004A448;
extern Gfx* D_8004A44C;
extern u32 D_8004A450;
// 0x8004A454?
extern s32 D_8004A458[]; // probably length 2
extern s32 D_8004A460;
// 0x8004A464?
extern struct DynamicBuffer D_8004A468[];
extern void (*D_8004A488)();
extern void (*D_8004A48C)(void);
extern struct UnkStruct8004A490 D_8004A490;

// end bss, followed by ovl0_2_5_1.c


void func_80005350(void *arg0) {
    if (arg0 != 0) {
        D_8004A48C = arg0;
        return;
    }
    D_8004A48C = func_80000A44;
}

extern const char D_80040040[];
extern const char D_80040060[];
extern const char D_80040080[];
extern const char D_800400C0[];
extern u8 D_80048900[];

extern OSMesgQueue gInterruptMesgQueue;

extern const char D_800400A0[];

// These are used in other functions too
extern u16 D_8004A448;


void setup_segment_15(Gfx **arg0) {
    D_80049308 = &(*arg0)->words.w1;
    gSPSegment((*arg0)++, 0x0F, 0x00000000);
}

void func_800053A8(s32 arg0) {
    D_8004A440 = arg0;
}

void func_800053B4(u16 arg0, u16 arg1) {
    D_8004A444 = arg0;
    D_8004A446 = arg1;
}



void init_dynamic_buffer(struct DynamicBuffer *arg0, s32 arg1, s32 arg2, s32 arg3);
void* alloc_from_dynamic_buffer(struct DynamicBuffer *, u32, u32);

void alloc_region(s32 start, s32 size) {
    init_dynamic_buffer(&gDynamicBuffer2, 0x10000, start, size);
}

void *alloc_with_alignment(s32 size, s32 alignment) {
    return alloc_from_dynamic_buffer(&gDynamicBuffer2, size, alignment);
}

void func_80005430(void) {
    gDynamicBuffer1.id        = D_8004A468[D_8004A450].id;
    gDynamicBuffer1.poolStart = D_8004A468[D_8004A450].poolStart;
    gDynamicBuffer1.poolEnd   = D_8004A468[D_8004A450].poolEnd;
    gDynamicBuffer1.top       = D_8004A468[D_8004A450].top;
    func_80007830(&gDynamicBuffer1);
}

void func_8000548C(struct DLBuffer arg0[2][4]) {
    s32 i;

    for (i = 0; i < 2; i++)
    {
        gDLBuffers[i][0] = arg0[i][0];
        gDLBuffers[i][1] = arg0[i][1];
        gDLBuffers[i][2] = arg0[i][2];
        gDLBuffers[i][3] = arg0[i][3];
    }
}

void reset_rdp_settings(Gfx **dlist);

// ends the master display lists?
void func_80005530(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        gDisplayListHeads[i] = D_8004A3E0[i] = gDLBuffers[D_8004A450][i].start;
    }
    for (i = 0; i < 4; i++) {
        if (gDLBuffers[D_8004A450][i].length != 0) {
            // this is the displaylist that's run when the ucode is loaded
            D_8004A44C = gDisplayListHeads[i];
            reset_rdp_settings(&gDisplayListHeads[i]);
            gSPEndDisplayList(gDisplayListHeads[i]++);
            D_8004A3E0[i] = gDisplayListHeads[i];
            break;
        }
    }
    D_8004A448 = 0;
}

void func_8000561C(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        if ((gDLBuffers[D_8004A450][i].length + (u32)gDLBuffers[D_8004A450][i].start) < (u32)gDisplayListHeads[i]) {
            fatal_printf("gtl : DLBuffer over flow !  kind = %d  vol = %d byte\n", i, (u32)gDisplayListHeads[i] - (u32)gDLBuffers[D_8004A450][i].start);
            while (TRUE);
        }
    }
    if ((u32) gDynamicBuffer1.poolEnd < (u32) gDynamicBuffer1.top) {
        fatal_printf("gtl : DynamicBuffer over flow !  %d byte\n", (u32) gDynamicBuffer1.top - (u32) gDynamicBuffer1.poolStart);
        while (TRUE);
    }
}

extern u32 D_80048C80;

void func_800056DC(s32 arg0, u32 arg1) {
    u32 arr[11];

    arr[0] = 8;
    arr[1] = 0x32;
    arr[9] = arg0;
    arr[10] = arg1;
    func_80000980(arr);
    if (((u32)&D_80048C80 & 7) != 0) {
        fatal_printf("bad addr sc_rdp_output_len = %x\n", &D_80048C80);
        while (1);
    }
}

extern const char D_80040018[];

void func_80005734(s32 arg0, u32 arg1, s32 bufSize) {
    D_8003DCA0 = arg0;
    D_8004A438 = arg1;
    D_8004A43C = bufSize;
    if ((arg0 == 2) || (arg0 == 1)) {
        if (bufSize == 0) {
            fatal_printf("gtl : Buffer size for RDP is zero !!\n");
            while (1);
        }
    }
    if (arg0 == 1) {
        func_800056DC(arg1, bufSize);
    }
}


struct DObj *func_800057AC(void) {
    struct DObj *tmp;
    if (D_8004A368[D_8004A450] == NULL) {
        fatal_printf("gtl : not defined SCTaskGfx\n");
        for (;;);
    }
    if (D_8004A370[D_8004A450] == D_8004A378[D_8004A450]) {
        fatal_printf("gtl : couldn't get SCTaskGfx\n");
        for (;;);
    }
    tmp = D_8004A370[D_8004A450]++;
    return tmp;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_80005834(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_t3;
    void *temp_t2;
    s32 phi_a3;
    void *phi_a0;
    void *phi_t1;
    s32 phi_t5;
    void *phi_t4;
    s32 phi_s2;
    void *phi_s1;
    s32 phi_v0;
    void *phi_t2;
    s32 phi_return;

    phi_return = 0;
    if (D_8004A460 > 0) {
        phi_a3 = arg0;
        phi_a0 = &D_8004A368;
        phi_t1 = &D_8004A370;
        phi_t5 = arg2;
        phi_t4 = &D_8004A380;
        phi_s2 = arg3;
        phi_s1 = &D_8004A388;
        phi_v0 = 0;
        phi_t2 = &D_8004A378;
loop_2:
        temp_t3 = phi_v0 + 1;
        *phi_a0 = phi_a3;
        *phi_t1 = phi_a3;
        *phi_t4 = phi_t5;
        *phi_s1 = phi_s2;
        temp_t2 = phi_t2 + 4;
        temp_t2->unk-4 = (s32) (arg0 + ((arg1 * 0x88) * temp_t3));
        phi_a3 = phi_a3 + (arg1 * 0x88);
        phi_a0 = phi_a0 + 4;
        phi_t1 = phi_t1 + 4;
        phi_t5 = phi_t5 + 0x2C;
        phi_t4 = phi_t4 + 4;
        phi_s2 = phi_s2 + 0x38;
        phi_s1 = phi_s1 + 4;
        phi_v0 = temp_t3;
        phi_t2 = temp_t2;
        phi_return = temp_t3;
        if (temp_t3 < D_8004A460) {
            goto loop_2;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80005834.s")
#endif



void func_80005910(struct Unk80005A98 *arg0, s32 arg1, s32 arg2, OSMesgQueue* arg3) {
    arg0->unk0 = 6;
    arg0->unk4 = 0x64;
    arg0->unk14 = 0;
    arg0->unk20 = arg3;
    arg0->unk1C = arg2;
    arg0->unk24 = arg1;
    arg0->unk28 = D_8004A450;
    osSendMesg(&gInterruptMesgQueue, arg0, 0);
}


void func_8000597C() {
    struct Unk80005A98 *a0 = D_8004A380[D_8004A450];

    if (a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    func_80005910(a0, -1, D_8004A450, &D_80049320);
    D_8004A370[D_8004A450] = D_8004A368[D_8004A450];
}

void func_800059F8(void) {
    OSMesg msg;
    struct Unk80005A98 *a0 = D_8004A380[D_8004A450];

    if (a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    func_80005910(a0, 0, D_8004A450, &D_80049340);
    osRecvMesg(&D_80049340, &msg, 1);
    D_8004A370[D_8004A450] = D_8004A368[D_8004A450];
    func_80005430();
    func_80005530();
}

void func_80005A98(struct Unk80005A98_2 *arg0, s32 arg1, u32 ucodeIndex, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct UcodeHandler *temp_v0;
    s32 ucodeType;

    arg0->unk0 = 1;
    arg0->unk4 = 0x32;
    if (D_80049308 != 0) {
        arg0->unk14 = D_8004A48C;
        arg0->unk68 = D_80049308;
        D_80049308 = 0;
    } else {
        arg0->unk14 = 0;
        arg0->unk68 = 0;
    }
    ucodeType = 1;
    arg0->unk6C = arg1;
    arg0->unk70 = D_8004A3F4;
    if (arg1 != 0) {
        arg0->unk20 = &D_80049320;
        arg0->unk1C = arg3;
    } else {
        arg0->unk20 = NULL; 
    }
    arg0->unk18 = 2;
    arg0->unk80 = D_8004A450;
    arg0->unk7C = 0; 
    arg0->task.t.type = ucodeType;
    arg0->task.t.flags = OS_TASK_LOADABLE;
    arg0->task.t.ucode_boot = (u64*)&D_80048900;
    arg0->task.t.ucode_boot_size = 0x100;
    temp_v0 = &D_8003DCAC[ucodeIndex];
    if (temp_v0->text == NULL) {
        fatal_printf("gtl : ucode isn't included  kind = %d\n", ucodeIndex);
        while (1);
    }
    arg0->task.t.ucode = (u64*)temp_v0->text;
    arg0->task.t.ucode_data = (u64*)temp_v0->data;
    arg0->task.t.ucode_size = SP_UCODE_SIZE;
    arg0->task.t.ucode_data_size = SP_UCODE_DATA_SIZE;
    arg0->task.t.dram_stack = (u64*)OS_DCACHE_ROUNDUP_SIZE(&D_80049358);
    arg0->task.t.dram_stack_size = SP_DRAM_STACK_SIZE8;

    switch (ucodeIndex) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 14:
            arg0->task.t.output_buff = (u64*)arg5;
            arg0->task.t.output_buff_size = (u64*)(arg5 + arg6);
            arg0->unk74 = 2;
            break;
        case 1: case 3: case 5: case 7: case 13:
        case 9:
        case 15:
            arg0->task.t.output_buff = NULL;
            arg0->task.t.output_buff_size = NULL;
            arg0->unk74 = 0;
            break;
        case 10: case 11: break;
    }
    arg0->task.t.data_ptr = (u64*)arg4;
    arg0->task.t.data_size = 0;
    arg0->task.t.yield_data_ptr = (u64*)OS_DCACHE_ROUNDUP_SIZE(&D_80049760);
    arg0->task.t.yield_data_size = OS_YIELD_DATA_SIZE;
    osWritebackDCacheAll();
    osSendMesg(&gInterruptMesgQueue, arg0, 0);
}

u32 func_80005C64(void) {
    u32 phi_v1;
    u32 toReturn;
    toReturn = (D_8004A448 != 0) ? (D_8004A446) : (D_8004A444);
    phi_v1 = toReturn;
    switch (phi_v1) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
          toReturn = 9;
          break;
        default:
          toReturn = 8;
          break;
    }
    return toReturn;
}

void func_80005CC0(s32 arg0, s32 arg1) {
    u32 phi_a2;
    u32 phi_v0 = 1;

    if (arg0 == 0) {
        phi_a2 = D_8004A444;
        if (D_8004A440 == phi_v0) {
            switch(phi_a2) {
                case 0:   phi_a2 = 2; break;
                case 1:   phi_a2 = 3; break;
                case 0xC: phi_a2 = 0xE; break;
                case 0xD: phi_a2 = 0xF; break;
                default: break;
            }
        }
    } else {
        phi_a2 = func_80005C64();
    }
    switch(phi_a2) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            func_80005A98(func_800057AC(), 0, phi_a2, D_8004A450, arg1, 0, 0);
            break;
        case 0: case 2: case 4: case 6: 
        case 8:
        case 12:
        case 14:
            func_80005A98(func_800057AC(), 0, phi_a2, D_8004A450, arg1, D_8004A438, D_8004A43C);
        case 10: case 11: break;
    }
}


extern Gfx* D_8004A44C;

extern long long int gspF3DEX2_fifoDataStart[];
extern long long int gspF3DEX2_fifoTextStart[];

extern long long int gspL3DEX2_fifoDataStart[];
extern long long int gspL3DEX2_fifoTextStart[];

extern long long int gspS2DEX2_fifoDataStart[];
extern long long int gspS2DEX2_fifoTextStart[];
extern u64 D_00042410[];
extern u64 D_00042800[];

// TODO: fix L3D and S2D cases
void func_80005DE4(Gfx **dlist, u32 arg1) {
    s32 loadedSpriteUcode = 0;
    switch (arg1) { 
        case 0:
            // F3DEX2
            gSPLoadUcodeL((*dlist)++, gspF3DEX2_fifo);
            break;
        case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
            // L3DEX2
            gSPLoadUcodeL((*dlist)++, gspL3DEX2_fifo);
            break;
        case 9: case 10:
            // S2DEX2
            gSPLoadUcodeL((*dlist)++, gspS2DEX2_fifo);
            loadedSpriteUcode = 1;
            break;
        case 11: case 12: case 13: case 14: case 15: default:
            break;
    }
    if (loadedSpriteUcode == 0) {
        gSPDisplayList((*dlist)++, D_8004A44C);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_80005F10(void) {
    s32 sp80;
    s32 sp2C;
    s32 sp28;
    s32 sp24;
    s32 sp20;
    Gfx **temp_v0;
    Gfx **temp_v1;
    Gfx *temp_a1;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_14;
    Gfx *temp_v0_15;
    Gfx *temp_v0_16;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t6;
    s32 temp_t8;
    Gfx **phi_v1;
    Gfx **phi_v0;
    s32 phi_a2;
    s32 phi_a2_2;
    s32 phi_t1;
    Gfx **phi_t2;
    s32 phi_a0;
    s32 phi_a2_3;

    phi_v1 = gDisplayListHeads;
    phi_v0 = D_8004A3E0;
    phi_a2_3 = 0;
loop_1:
    temp_v0 = phi_v0 + 4;
    temp_a2 = phi_a2_3 >> 1;
    phi_a2 = temp_a2;
    if (*phi_v1 != *phi_v0) {
        phi_a2 = temp_a2 | 8;
    }
    phi_v1 = phi_v1 + 4;
    phi_v0 = temp_v0;
    phi_a2_3 = phi_a2;
    if (temp_v0 != &D_8004A3F0) {
        goto loop_1;
    }
    temp_t8 = phi_a2 & 1;
    if (phi_a2 != 0) {
        sp2C = temp_t8;
        phi_a2_2 = phi_a2;
        if (temp_t8 != 0) {
            if ((phi_a2 & 4) != 0) {
                sp80 = phi_a2;
                func_80005DE4(gDisplayListHeads, func_80005C64());
                temp_v0_2 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = (Gfx *) (temp_v0_2 + 8);
                temp_v0_2->words.w0 = (void *)0xDE010000;
                temp_v0_2->words.w1 = (int *) D_8004A3E0[2];
                phi_a2_2 = phi_a2;
            } else if ((phi_a2 & 2) != 0) {
                if (D_8004A448 != 0) {
                    sp80 = phi_a2;
                    func_80005DE4((void *)0x8004A3D0, (u32) D_8004A444);
                }
                temp_v0_3 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = (Gfx *) (temp_v0_3 + 8);
                temp_v0_3->words.w0 = (void *)0xDE010000;
                temp_v0_3->words.w1 = (int *) D_8004A3E0[1];
            } else if ((phi_a2 & 8) != 0) {
                sp80 = phi_a2;
                func_80005DE4(gDisplayListHeads, func_80005C64());
                temp_v0_4 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = (Gfx *) (temp_v0_4 + 8);
                temp_v0_4->words.w0 = (void *)0xDE010000;
                temp_v0_4->words.w1 = (int *) D_8004A3E0[3];
                phi_a2_2 = phi_a2;
            } else {
                temp_v0_5 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = (Gfx *) (temp_v0_5 + 8);
                temp_v0_5->words.w1 = NULL;
                temp_v0_5->words.w0 = (void *)0xE9000000;
                temp_v0_6 = gDisplayListHeads->unk0;
                gDisplayListHeads->unk0 = (Gfx *) (temp_v0_6 + 8);
                temp_v0_6->words.w1 = NULL;
                temp_v0_6->words.w0 = (void *)0xDF000000;
                phi_a2_2 = phi_a2;
            }
        }
        temp_t6 = phi_a2_2 & 4;
        sp28 = temp_t6;
        temp_t0 = phi_a2_2 & 2;
        temp_a3 = phi_a2_2 & 8;
        if (temp_t6 != 0) {
            if (temp_t0 != 0) {
                sp20 = temp_a3;
                sp24 = temp_t0;
                func_80005DE4(&gDisplayListHead3, (u32) D_8004A444);
                temp_v0_7 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_7 + 8;
                temp_v0_7->words.w0 = (void *)0xDE010000;
                temp_v0_7->words.w1 = (int *) D_8004A3E0[1];
            } else if (temp_a3 != 0) {
                temp_v0_8 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_8 + 8;
                temp_v0_8->words.w0 = (void *)0xDE010000;
                temp_v0_8->words.w1 = (int *) D_8004A3E0[3];
            } else {
                temp_v0_9 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_9 + 8;
                temp_v0_9->words.w1 = NULL;
                temp_v0_9->words.w0 = (void *)0xE9000000;
                temp_v0_10 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_10 + 8;
                temp_v0_10->words.w1 = NULL;
                temp_v0_10->words.w0 = (void *)0xDF000000;
            }
        }
        if ((phi_a2_2 & 2) != 0) {
            if ((phi_a2_2 & 8) != 0) {
                sp20 = phi_a2_2 & 8;
                sp24 = phi_a2_2 & 2;
                func_80005DE4(gDisplayListHeads, func_80005C64());
                temp_v0_11 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_11 + 8;
                temp_v0_11->words.w0 = (void *)0xDE010000;
                temp_v0_11->words.w1 = (int *) D_8004A3E0[3];
                phi_t2 = D_8004A3E0;
            } else {
                temp_v0_12 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_12 + 8;
                temp_v0_12->words.w1 = NULL;
                temp_v0_12->words.w0 = (void *)0xE9000000;
                temp_v0_13 = gDisplayListHeads[1];
                gDisplayListHeads[1] = temp_v0_13 + 8;
                temp_v0_13->words.w1 = NULL;
                temp_v0_13->words.w0 = (void *)0xDF000000;
            }
        }
        if ((phi_a2_2 & 8) != 0) {
            temp_v0_14 = gDisplayListHeads[3];
            gDisplayListHeads[3] = temp_v0_14 + 8;
            temp_v0_14->words.w1 = NULL;
            temp_v0_14->words.w0 = (void *)0xE9000000;
            temp_v0_15 = gDisplayListHeads[3];
            gDisplayListHeads[3] = temp_v0_15 + 8;
            temp_v0_15->words.w1 = NULL;
            temp_v0_15->words.w0 = (void *)0xDF000000;
        }
        if (sp2C != 0) {
            phi_t1 = 0;
            phi_a0 = 0;
        } else if (sp28 != 0) {
            phi_t1 = 2;
block_33:
            phi_a0 = 1;
        } else {
            phi_t1 = 3;
            if ((phi_a2_2 & 2) != 0) {
                phi_t1 = 1;
                phi_a0 = 0;
            } else {
                goto block_33;
            }
        }
        temp_v1 = &gDisplayListHeads[phi_t1];
        temp_a1 = *temp_v1;
        *temp_v1 = (Gfx *) (temp_a1 + 8);
        temp_a1->words.w0 = (void *)0xDE000000;
        temp_a1->words.w1 = (int *) D_8004A44C;
        temp_v0_16 = *temp_v1;
        *temp_v1 = (Gfx *) (temp_v0_16 + 8);
        temp_v0_16->words.w0 = (void *)0xDE010000;
        temp_v0_16->words.w1 = *(phi_t2 + (phi_t1 * 4));
        func_80005CC0(phi_a0, (s32) temp_a1);
        D_8004A3E0->unk0 = (Gfx *) gDisplayListHeads->unk0;
        D_8004A3E0[2] = gDisplayListHeads[2];
        D_8004A3E0[1] = gDisplayListHeads[1];
        D_8004A3E0[3] = gDisplayListHeads[3];
    }
    func_8000561C();
}

#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80005F10.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_8000630C(void) {
    s32 sp50;
    s32 sp24;
    s32 sp20;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *temp_v0_5;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *phi_v1;
    void *phi_v0;
    s32 phi_a2;
    s32 phi_a2_2;
    s32 phi_a3;
    s32 phi_a2_3;

    func_8000561C();
    phi_v1 = &gDisplayListHeads;
    phi_v0 = &D_8004A3E0;
    phi_a2_3 = 0;
loop_1:
    temp_v0 = phi_v0 + 4;
    temp_a2 = phi_a2_3 >> 1;
    phi_a2 = temp_a2;
    if (*phi_v1 != *phi_v0) {
        phi_a2 = temp_a2 | 8;
    }
    phi_v1 = phi_v1 + 4;
    phi_v0 = temp_v0;
    phi_a2_3 = phi_a2;
    if (temp_v0 != &D_8004A3F0) {
        goto loop_1;
    }
    if (phi_a2 != 0) {
        phi_a2_2 = phi_a2;
        if ((phi_a2 & 1) != 0) {
            if ((phi_a2 & 4) != 0) {
                sp50 = phi_a2;
                func_80005DE4(&gDisplayListHeads, func_80005C64(&D_8004A3F0, phi_a2));
                temp_v0_2 = gDisplayListHeads.unk0;
                gDisplayListHeads.unk0 = (void *) (temp_v0_2 + 8);
                temp_v0_2->unk0 = 0xDE010000;
                temp_v0_2->unk4 = (s32) D_8004A3E8;
                phi_a2_2 = phi_a2;
            } else {
                if ((phi_a2 & 2) != 0) {
                    if (D_8004A448 != 0) {
                        sp50 = phi_a2;
                        func_80005DE4(0x8004A3D0, D_8004A444, phi_a2);
                    }
                    temp_v0_3 = gDisplayListHeads.unk0;
                    gDisplayListHeads.unk0 = (void *) (temp_v0_3 + 8);
                    temp_v0_3->unk0 = 0xDE010000;
                    temp_v0_3->unk4 = (s32) D_8004A3E4;
                } else {
                    phi_a2_2 = phi_a2;
                    if ((phi_a2 & 8) != 0) {
                        sp50 = phi_a2;
                        func_80005DE4(&gDisplayListHeads, func_80005C64(&D_8004A3F0, phi_a2));
                        temp_v0_4 = gDisplayListHeads.unk0;
                        gDisplayListHeads.unk0 = (void *) (temp_v0_4 + 8);
                        temp_v0_4->unk0 = 0xDE010000;
                        temp_v0_4->unk4 = (s32) D_8004A3EC;
                        phi_a2_2 = phi_a2;
                    }
                }
            }
        }
        sp20 = phi_a2_2 & 8;
        temp_a3 = phi_a2_2 & 2;
        phi_a3 = temp_a3;
        if ((phi_a2_2 & 4) != 0) {
            if (temp_a3 != 0) {
                sp24 = temp_a3;
                func_80005DE4(&gDisplayListHead3, D_8004A444, phi_a2_2, temp_a3);
                temp_v0_5 = gDisplayListHeads.unk8;
                gDisplayListHeads.unk8 = (void *) (temp_v0_5 + 8);
                temp_v0_5->unk0 = 0xDE010000;
                temp_v0_5->unk4 = (s32) D_8004A3E4;
            } else {
                if (sp20 != 0) {
                    temp_v0_6 = gDisplayListHeads.unk8;
                    gDisplayListHeads.unk8 = (void *) (temp_v0_6 + 8);
                    temp_v0_6->unk0 = 0xDE010000;
                    temp_v0_6->unk4 = (s32) D_8004A3EC;
                } else {
                    sp24 = temp_a3;
                    func_80005DE4(&gDisplayListHead3, D_8004A444, phi_a2_2, temp_a3);
                    temp_v0_7 = gDisplayListHeads.unk8;
                    gDisplayListHeads.unk8 = (void *) (temp_v0_7 + 8);
                    temp_v0_7->unk0 = 0xDE010000;
                    temp_v0_7->unk4 = (s32) gDisplayListHeads.unk0;
                }
            }
            D_8004A3E8 = (void *) gDisplayListHeads.unk8;
        }
        if (phi_a3 != 0) {
            if (sp20 != 0) {
                func_80005DE4(&gDisplayListHeads, func_80005C64(phi_a3));
                temp_v1 = gDisplayListHeads.unk4;
                gDisplayListHeads.unk4 = (void *) (temp_v1 + 8);
                temp_v1->unk0 = 0xDE010000;
                temp_v1->unk4 = (s32) D_8004A3EC;
            } else {
                if (D_8004A448 != 0) {
                    func_80005DE4(&gDisplayListHead2, D_8004A444, phi_a3);
                }
                temp_v1_2 = gDisplayListHeads.unk4;
                gDisplayListHeads.unk4 = (void *) (temp_v1_2 + 8);
                temp_v1_2->unk0 = 0xDE010000;
                temp_v1_2->unk4 = (s32) gDisplayListHeads.unk0;
            }
            D_8004A3E4 = (void *) gDisplayListHeads.unk4;
        }
        if (sp20 != 0) {
            func_80005DE4(&gDisplayListHead4, D_8004A444);
            temp_v1_3 = gDisplayListHeads.unkC;
            gDisplayListHeads.unkC = (void *) (temp_v1_3 + 8);
            temp_v1_3->unk0 = 0xDE010000;
            temp_v1_3->unk4 = (s32) gDisplayListHeads.unk0;
            D_8004A3EC = (void *) gDisplayListHeads.unkC;
        }
    }
    D_8004A448 = (u16)0;
    func_8000561C();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000630C.s")
#endif


u32 func_80006628(s32 arg0) {
    s32 sp3C;
    s32 phi_v1;

    while (osRecvMesg(&D_80049320, (OSMesg*)&sp3C, 0) != -1) {
        D_8004A458[sp3C] = 0;
    }
    do {
        for (phi_v1 = 0; phi_v1 < D_8004A460; phi_v1++) {
            if (D_8004A458[phi_v1] == 0) {
                D_8004A450 = phi_v1;
                D_8004A458[phi_v1] = 1;
                return 1;
            }
        }
        if (arg0 == 0) {
            osRecvMesg(&D_80049320, (OSMesg*)&sp3C, 1);
            D_8004A458[sp3C] = 0;
        }
    }
    while (arg0 == 0);
    return 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_80006740(void) {
    ? *sp54;
    ?32 sp50;
    void *sp48;
    ?32 sp38;
    ?32 sp34;
    ? sp30;
    ? sp18;

    sp34 = 7;
    sp38 = 0x32;
    osCreateMesgQueue(&sp18, &sp30, 1);
    sp48 = &D_80000B64;
    sp50 = 1;
    sp54 = &sp18;
    osSendMesg(&gInterruptMesgQueue, &sp34, 0);
    osRecvMesg(&sp18, 0, 1);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80006740.s")
#endif

void func_800067B8(void) {
    D_8004A3F0 = 1;
}

void func_800067C8(s32 arg0) {
    D_8004A3F0 = 2;
    D_8004A3F4 = arg0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
u8 func_800067E0(void) {
    ?32 sp20;
    ?32 sp1C;
    ?32 *temp_a0;

    if (D_8004A3F0 == 1) {
        return 1;
    }
    if (D_8004A3F0 == 2) {
        temp_a0 = &sp1C;
        if (D_80048C64 == 0) {
            return 0;
        }
        sp1C = 0xB;
        sp20 = 0x64;
        func_80000980(temp_a0);
        return 1;
    }
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800067E0.s")
#endif

void func_80006854(void) {
    if (D_800492DC == 1) {
        D_800492DC = 2;
        while (osRecvMesg(&D_800492E8, 0, 0) != -1) {
        }
        osRecvMesg(&D_800492E8, 0, 1);
        D_800492DC = 0;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800068E4(void *arg0) {
    u32 phi_v0;
    s32 temp_s0_2;
    s32 phi_s0;
    s32 phi_s0_2;

    D_800492DC = 0;
    while (osRecvMesg(&D_80049320, NULL, 0) != -1);
    while (osRecvMesg(&D_80049340, NULL, 0) != -1);
    while (osRecvMesg(&D_800492C0, NULL, 0) != -1);
    D_8004A3F0 = 0;
    D_8004A3F4 = -1;
    D_8004A450 = 1;
    D_80048C64 = 0;
    for (phi_v0 = 0; phi_v0 < 2; phi_v0++) {
        D_8004A458[phi_v0] = NULL;
    }
//     phi_v0 = &D_8004A458;
// loop_7:
//     temp_v0 = phi_v0 + 4;
//     temp_v0->unk-4 = 0;
//     phi_v0 = temp_v0;
//     if (temp_v0 != &D_8004A460) {
//         goto loop_7;
//     }
    if ((arg0->unk0 & 1) != 0) {
loop_10:
        func_80006854();
        func_80000510();
        while ((s32) D_800492D8 > 0) {
            osRecvMesg(&D_800492C0, 0, 1);
            phi_s0++;
        }
        while (osRecvMesg(&D_800492C0, 0, 0) != -1);

        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 = (u32) (D_8003DCA4 + 1);
        D_8004A430 = (u32) ((u32) (osGetCount() - D_8004A42C) / 0xB9BU);
        if (func_800067E0() == 0) {
            if ((((u32) D_8003DCA4 % (u32) D_800492DA) != 0) || (func_80006628(0), D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 = (s32) (D_8003DCA8 + 1), D_8004A434 = (u32) ((u32) (osGetCount() - D_8004A42C) / 0xB9BU), (func_800067E0() == 0))) {
                goto loop_10;
            }
        }
    } else {
loop_19:
        func_80006854();
        func_80000510();
        if ((s32) D_800492D8 > 0) {
loop_20:
            osRecvMesg(&D_800492C0, 0, 1);
            phi_s0++;
            if (temp_s0_2 < (s32) D_800492D8) {
                goto loop_20;
            }
        }
        while (osRecvMesg(&D_800492C0, 0, 0) != -1);

        D_8004A42C = osGetCount();
        arg0->unk8(arg0);
        D_8003DCA4 = (u32) (D_8003DCA4 + 1);
        D_8004A430 = (u32) ((u32) (osGetCount() - D_8004A42C) / 0xB9BU);
        if (func_800067E0() == 0) {
            if (((((u32) D_8003DCA4 % (u32) D_800492DA) != 0) || (func_80006628(1) == 0)) || (D_8004A42C = osGetCount(), arg0->unk10(arg0), D_8003DCA8 = (s32) (D_8003DCA8 + 1), D_8004A434 = (u32) ((u32) (osGetCount() - D_8004A42C) / 0xB9BU), (func_800067E0() == 0))) {
                goto loop_19;
            }
        }
    }
    func_80006740();
    while (osRecvMesg(&D_80049320, 0, 0) != -1);
    while (osRecvMesg(&D_80049340, 0, 0) != -1);
    while (osRecvMesg(&D_800492C0, 0, 0) != -1);
    set_scissor_callback(0);
    D_800492DC = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800068E4.s")
#endif

struct UNK_FUNC_80006DF8
{
    u32 unk0;
    void (*unk4)();
};

void func_80006DF8(struct UNK_FUNC_80006DF8 *arg0) {
    D_8004A488();
    arg0->unk4();
}

struct unk_func8006E30 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    void (*unkC)(void);
};

void func_80006E30(struct unk_func8006E30 *arg0) {
    func_80005430();
    func_80005530();
    arg0->unkC();
    func_80005F10();
    func_80007ADC(D_8004A388[D_8004A450]);
    func_8000597C();
}

void func_80006E94(struct UNK_FUNC_80006DF8 *arg0) {
    D_8004A488();
    arg0->unk4();
    if (func_800067E0() != 0) {
        func_8000BC34();
    }
}

void func_80006EE4(struct unk_func8006E30 *arg0) {
    func_80005430();
    func_80005530();
    arg0->unkC();
    func_80005F10();
    func_80007ADC(D_8004A388[D_8004A450]);
    func_8000597C();
    if (func_800067E0() != 0) {
        func_8000BC34();
    }
}

void func_80006F60(struct Unk80005A98 *arg0) {
    s32 sp34;
    struct Unk80005A98 *temp_a0;

    func_80006628(0);
    func_80005430();
    func_80005530();
    arg0->unk2C(arg0);
    func_80005F10();
    temp_a0 = D_8004A380[D_8004A450];
    if (temp_a0 == 0) {
        fatal_printf("gtl : not defined SCTaskGfxEnd\n");
        while (1);
    }
    func_80005910(temp_a0, 0, D_8004A450, &D_80049320);
    D_8004A370[D_8004A450] = D_8004A368[D_8004A450];
    do {
        osRecvMesg(&D_80049320, (OSMesg*)&sp34, 1);
        D_8004A458[sp34] = 0;
    }
    while (D_8004A458[D_8004A450] != 0);
    D_8003DCA8++;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_8000708C(void *arg0, void *arg1) {
    ? sp44;
    ? *temp_s0_2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s3_2;
    void *temp_s0_3;
    ? *phi_s0;
    s32 phi_s3;
    void *phi_s0_2;
    s32 phi_s3_2;
    s32 phi_v0;
    ? phi_a0;

    D_8004A460 = (s32) arg0->unk18;
    gDynamicBuffer3.unk0 = (u16) arg0->unk0;
    gDynamicBuffer3.unk4 = (s32) arg0->unk4;
    gDynamicBuffer3.unkC = (s32) arg0->unk8;
    temp_s0 = alloc_with_alignment((arg0->unk14 * 0x88) * arg0->unk18, 8);
    temp_s1 = alloc_with_alignment(((((D_8004A460 * 4) - D_8004A460) * 4) - D_8004A460) * 4, 8);
    func_80005834(temp_s0, arg0->unk14, temp_s1, alloc_with_alignment(((D_8004A460 * 8) - D_8004A460) * 8, 8));
    phi_s0 = &sp44;
    phi_s3 = 0;
    if (D_8004A460 > 0) {
loop_1:
        phi_s0->unk0 = alloc_with_alignment(arg0->unk1C, 8);
        phi_s0->unk4 = (s32) arg0->unk1C;
        phi_s0->unk8 = alloc_with_alignment(arg0->unk20, 8);
        phi_s0->unkC = (s32) arg0->unk20;
        phi_s0->unk10 = alloc_with_alignment(arg0->unk24, 8);
        phi_s0->unk14 = (s32) arg0->unk24;
        phi_s0->unk18 = alloc_with_alignment(arg0->unk28, 8);
        temp_s3 = phi_s3 + 1;
        temp_s0_2 = phi_s0 + 0x20;
        temp_s0_2->unk-4 = (s32) arg0->unk28;
        phi_s0 = temp_s0_2;
        phi_s3 = temp_s3;
        if (temp_s3 < D_8004A460) {
            goto loop_1;
        }
    }
    func_8000548C(&sp44);
    if (D_8004A460 > 0) {
        phi_s0_2 = &D_8004A468;
loop_5:
        init_dynamic_buffer(&gDynamicBuffer1, 0x10002, alloc_with_alignment(arg0->unk2C, 8), arg0->unk2C);
        temp_s3_2 = phi_s3_2 + 1;
        temp_s0_3 = phi_s0_2 + 0x10;
        temp_s0_3->unk-10 = (s32) gDynamicBuffer1.unk0;
        temp_s0_3->unk-C = (s32) gDynamicBuffer1.unk4;
        temp_s0_3->unk-8 = (s32) gDynamicBuffer1.unk8;
        temp_s0_3->unk-4 = (s32) gDynamicBuffer1.unkC;
        phi_s0_2 = temp_s0_3;
        phi_s3_2 = temp_s3_2;
        if (temp_s3_2 < D_8004A460) {
            goto loop_5;
        }
    }
    arg0->unk30 = (u16)2U;
    phi_v0 = arg0->unk34;
    if (arg0->unk34 == 0) {
        arg0->unk34 = 0x1000;
        phi_v0 = 0x1000;
    }
    func_80005734(arg0->unk30, alloc_with_alignment(phi_v0, 0x10), arg0->unk34);
    set_scissor_callback(arg0->unk38);
    D_8004A488 = (s32) arg0->unk3C;
    if (arg0->unk3C != &D_80004624) {
        phi_a0 = 1;
    } else {
        phi_a0 = 0;
    }
    func_800046A4(phi_a0);
    D_8003DCA8 = 0;
    D_8003DCA4 = 0;
    if (arg1 != 0) {
        arg1();
    }
    func_800068E4(&gDynamicBuffer3);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000708C.s")
#endif

struct unk_func80007328 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

extern u32 D_80006DF8;
extern u32 D_80006E30;

void func_80007328(struct unk_func80007328 *arg0) {

    alloc_region(arg0->unkC, arg0->unk10);
    gDynamicBuffer3.buffer.poolEnd = &D_80006DF8;
    gDynamicBuffer3.unk10 = &D_80006E30;
    func_8000708C(arg0, 0);
}

extern u32 D_80006EE4;
extern u32 D_80006E94;

// weird usage of `at` as a temp var
#ifdef NON_MATCHING
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_80007380(struct UnkStructFunc80007380 *arg0) {
    alloc_region(arg0->unkC, arg0->unk10);
    D_8004A490.unk0 = alloc_with_alignment(((arg0->unk40 * 8) - arg0->unk40) << 6, 8);
    D_8004A490.unk4 = arg0->unk40;
    D_8004A490.unk8 = arg0->unk44;
    // if (arg0->unk44 != 0) {
    //     D_8004A490.unkC = alloc_with_alignment((arg0->unk44 + 8) * arg0->unk48, 8);
    // } else {
    //     D_8004A490.unkC = 0;
    // }

    D_8004A490.unkC = (arg0->unk44 != 0) ? alloc_with_alignment((arg0->unk44 + 8) * arg0->unk48, 8) : 0;

    D_8004A490.unk10 = arg0->unk48;
    D_8004A490.unk14 = arg0->unk4C;
    D_8004A490.unk18 = alloc_with_alignment(((arg0->unk50 * 8) + arg0->unk50) * 4, 4);
    D_8004A490.unk1C = arg0->unk50;
    D_8004A490.unk20 = alloc_with_alignment(arg0->unk58 * arg0->unk54, 8);
    D_8004A490.unk24 = arg0->unk54;
    D_8004A490.unk28 = arg0->unk58;
    D_8004A490.unk2C = alloc_with_alignment(((arg0->unk5C * 8) + arg0->unk5C) * 8, 8);
    D_8004A490.unk30 = arg0->unk5C;
    func_80010B44(arg0->unk60);
    D_8004A490.unk34 = arg0->unk64;
    D_8004A490.unk38 = alloc_with_alignment(((arg0->unk68 * 8) + arg0->unk68) * 4, 4);
    D_8004A490.unk3C = arg0->unk68;
    D_8004A490.unk40 = alloc_with_alignment((((arg0->unk6C * 4) + arg0->unk6C) * 4) + arg0->unk6C * 8, 4);
    D_8004A490.unk44 = arg0->unk6C;
    D_8004A490.unk48 = alloc_with_alignment(arg0->unk74 * arg0->unk70, 8);
    D_8004A490.unk4C = arg0->unk70;
    D_8004A490.unk50 = arg0->unk74;
    D_8004A490.unk54 = alloc_with_alignment(arg0->unk7C * arg0->unk78, 8);
    D_8004A490.unk58 = arg0->unk78;
    D_8004A490.unk5C = arg0->unk7C;
    D_8004A490.unk60 = alloc_with_alignment(arg0->unk84 * arg0->unk80, 8);
    D_8004A490.unk64 = arg0->unk80;
    D_8004A490.unk68 = arg0->unk84;
    func_8000AE84(&D_8004A490);
    gDynamicBuffer3.buffer.poolEnd = &D_80006E94;
    gDynamicBuffer3.unk10 = &D_80006EE4;
    func_8000708C(arg0, arg0->unk88);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80007380.s")
#endif


void func_800075DC(u16 arg0, u16 arg1) {
    D_800492D8 = arg0;
    D_800492DA = arg1;
}

void func_800075F8(void) {
    if (D_800492DC != 2) {
        D_800492DC = 1;
    }
}

u32 func_80007620(void) {
    if (D_800492DC == 2) {
        return 1;
    }
    return 0;
}

void func_80007648(void) {
    osSendMesg(&D_800492E8, 0, 0);
}

void func_80007674(s32 arg0) {
    if ((arg0 == 1) || (arg0 == 2)) {
        D_8004A460 = arg0;
    }
}

u32 func_80007694(s32 arg0) {
    if ((arg0 == 1) || (arg0 == 2)) {
        if (D_8004A458[arg0 - 1] == 0) {
            return 1;
        }
    }
    return 0;
}

// extern s16 D_8004A444;
// extern s16 D_8004A446;


#if NON_MATCHING
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800076D0(void) {
    s32 i;
    s32 j;

    for (i = 0 ; i < 2; i++)
    {
        D_8004A378[i] = 0;
        D_8004A370[i] = 0;
        D_8004A368[i] = 0;
        D_8004A380[i] = 0;
    }
    D_8004A444 = 0;
    D_8004A440 = 0;
    D_8004A446 = 0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            gDLBuffers[i][j].start = NULL;
            gDLBuffers[i][j].length = 0;
        }
    }
    D_80049308 = NULL;
    func_80005350(NULL);
    func_800009E8(&D_80049300, &D_800492C0, &D_800492B0, 4);
    osCreateMesgQueue(&D_80049320, &D_80049310, 3);
    osCreateMesgQueue(&D_80049340, &D_80049338, 1);
    D_800492DA = 1;
    D_800492D8 = 1;
    osCreateMesgQueue(&D_800492E8, &D_800492E0, 1);
    D_800492DC = 2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800076D0.s")
#endif
