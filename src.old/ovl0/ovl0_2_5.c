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

extern u8 gRSPBootUcode[];

extern OSMesgQueue gInterruptMesgQueue;

// These are used in other functions too
extern u16 D_8004A448;

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

static u32 pad1;
static u32 pad2;
s16 D_80049298;
s16 D_8004929A;
s16 D_8004929C;
s16 D_8004929E;
s8 D_800492A0;
s8 D_800492A1;
static u32 pad3;
static u32 pad4;
static u32 pad5;
OSMesg D_800492B0[4];
OSMesgQueue D_800492C0;
s16 D_800492D8;
s16 D_800492DA;
s32 D_800492DC;
OSMesg D_800492E0;
OSMesgQueue D_800492E8;
struct UnkStruct800009E8 D_80049300;
u32* D_80049308;
OSMesg D_80049310[3];
OSMesgQueue D_80049320;
OSMesg D_80049338;
OSMesgQueue D_80049340;
u64 D_80049358[SP_DRAM_STACK_SIZE8 / sizeof(u64)];
static u32 pad6, pad7; // 0x80049758 - 0x8004975F? file boundary?
u64 D_80049760[OS_YIELD_DATA_SIZE / sizeof(u64)];
static u32 pad8, pad9; // 0x8004A360 - 0x8004A367?
struct DObj *D_8004A368[2]; // probably length 2
struct DObj *D_8004A370[2]; // probably length 2
struct DObj *D_8004A378[2]; // probably length 2
struct DObj *D_8004A380[2]; // probably length 2
u32 D_8004A388[2]; // probably length 2
struct DLBuffer gDLBuffers[2][4]; // 0x8004A390
Gfx *gDisplayListHeads[4]; // 0x8004A3D0
Gfx* D_8004A3E0[4]; // 0x8004A3E0
u32 D_8004A3F0; // 0x8004A3F0
u32 D_8004A3F4; // 0x8004A3F4
struct DynamicBuffer gDynamicBuffer1; // 0x8004A3F8
struct DynamicBuffer gDynamicBuffer2; // 0x8004A408
struct DynamicBufferSubclass gDynamicBuffer3; // 0x8004A418
u32 D_8004A42C;
u32 D_8004A430; 
u32 D_8004A434;
u32 D_8004A438;
u32 D_8004A438;
u32 D_8004A43C;
u32 D_8004A440;
u16 D_8004A444;
u16 D_8004A446;
u16 D_8004A448;
Gfx* D_8004A44C;
u32 D_8004A450;
// 0x8004A454?
s32 D_8004A458[2]; // probably length 2
s32 D_8004A460;
// 0x8004A464?
struct DynamicBuffer D_8004A468[2];
void (*D_8004A488)();
void (*D_8004A48C)(void);
struct UnkStruct8004A490 D_8004A490;

// end bss, followed by ovl0_2_5_1.c


void func_80005350(void *arg0) {
    if (arg0 != 0) {
        D_8004A48C = arg0;
        return;
    }
    D_8004A48C = func_80000A44;
}



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



void mlSetup(struct DynamicBuffer *arg0, s32 arg1, s32 arg2, s32 arg3);
void* mlAlloc(struct DynamicBuffer *, u32, u32);

void alloc_region(s32 start, s32 size) {
    mlSetup(&gDynamicBuffer2, 0x10000, start, size);
}

void *alloc_with_alignment(s32 size, s32 alignment) {
    return mlAlloc(&gDynamicBuffer2, size, alignment);
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

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80005834.s")



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
    arg0->task.t.ucode_boot = (u64*)&gRSPBootUcode;
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

#define LINE_UCODE 8
#define SPRITE_UCODE 9

// rolls some value in ram and picks either line or
// sprite ucode for append_microcode_load
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
          toReturn = SPRITE_UCODE;
          break;
        default:
          toReturn = LINE_UCODE;
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
        // sprite microcode
        case 1:
        case 3:
        case 5:
        case 7:
        case 9:
        case 13:
        case 15:
            func_80005A98(func_800057AC(), 0, phi_a2, D_8004A450, arg1, 0, 0);
            break;
        // line microcode
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

void append_microcode_load(Gfx **dlist, u32 arg1) {
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

#ifdef NON_MATCHING
void func_80005F10(void) {
    s32 phi_a0;
    s32 phi_a2;
    s32 i;
    s32 phi_t1;
    Gfx **pad;

    phi_a2 = 0;
    for (i = 0; i < 4; i++) {
        phi_a2 >>= 1;
        if (gDisplayListHeads[i] != D_8004A3E0[i]) {
            phi_a2 |= 8;
        }
    }

    if (phi_a2 != 0) {
        if (phi_a2 & 1) {
            if (phi_a2 & 4) {
                append_microcode_load(&gDisplayListHeads[0], func_80005C64());
                gSPBranchList(gDisplayListHeads[0]++, D_8004A3E0[2]);
            } else if (phi_a2 & 2) {
                if (D_8004A448 != 0) {
                    append_microcode_load(&gDisplayListHeads[0], (u32) D_8004A444);
                }
                gSPBranchList(gDisplayListHeads[0]++, D_8004A3E0[1]);
            } else if (phi_a2 & 8) {
                append_microcode_load(&gDisplayListHeads[0], func_80005C64());
                gSPBranchList(gDisplayListHeads[0]++, D_8004A3E0[3]);
            } else {
                gDPFullSync(gDisplayListHeads[0]++);
                gSPEndDisplayList(gDisplayListHeads[0]++);
            }
        }
        if (phi_a2 & 4) {
            if (phi_a2 & 2) {
                append_microcode_load(&gDisplayListHeads[2], (u32) D_8004A444);
                gSPBranchList(gDisplayListHeads[2]++, D_8004A3E0[1]);
            } else if (phi_a2 & 8) {
                gSPBranchList(gDisplayListHeads[2]++, D_8004A3E0[3]);
            } else {
                gDPFullSync(gDisplayListHeads[2]++);
                gSPEndDisplayList(gDisplayListHeads[2]++);
            }
        }
        if (phi_a2 & 2) {
            if (phi_a2 & 8) {
                append_microcode_load(&gDisplayListHeads[0], func_80005C64());
                gSPBranchList(gDisplayListHeads[1]++, D_8004A3E0[3]);
            } else {
                gDPFullSync(gDisplayListHeads[1]++);
                gSPEndDisplayList(gDisplayListHeads[1]++);
            }
        }
        if (phi_a2 & 8) {
            gDPFullSync(gDisplayListHeads[3]++);
            gSPEndDisplayList(gDisplayListHeads[3]++);
        }
        if (phi_a2 & 1) {
            phi_t1 = 0;
            phi_a0 = 0;
        } else if (phi_a2 & 4) {
            phi_t1 = 2;
            phi_a0 = 1;
        } else {
            phi_t1 = 3;
            if (phi_a2 & 2) {
                phi_t1 = 1;
                phi_a0 = 0;
            } else {
                phi_a0 = 1;
            }
        }
        // regalloc here
        pad = &D_8004A3E0[phi_t1];
        gSPDisplayList(gDisplayListHeads[phi_t1]++, D_8004A44C);
        gSPBranchList(gDisplayListHeads[phi_t1]++, *pad);
        func_80005CC0(phi_a0, &gDisplayListHeads[phi_t1]);
        D_8004A3E0[0] = gDisplayListHeads[0];
        D_8004A3E0[2] = gDisplayListHeads[2];
        D_8004A3E0[1] = gDisplayListHeads[1];
        D_8004A3E0[3] = gDisplayListHeads[3];
    }
    func_8000561C();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80005F10.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000630C.s")


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

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_80006740.s")

void func_800067B8(void) {
    D_8004A3F0 = 1;
}

void func_800067C8(s32 arg0) {
    D_8004A3F0 = 2;
    D_8004A3F4 = arg0;
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800067E0.s")

void func_80006854(void) {
    if (D_800492DC == 1) {
        D_800492DC = 2;
        while (osRecvMesg(&D_800492E8, 0, 0) != -1) {
        }
        osRecvMesg(&D_800492E8, 0, 1);
        D_800492DC = 0;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_800068E4.s")

struct UNK_FUNC_80006DF8 {
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

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_2_5/func_8000708C.s")

extern u32 D_80006DF8;
extern u32 D_80006E30;

void func_80007328(struct UnkStructFunc80007380 *arg0) {
    alloc_region(arg0->unkC, arg0->unk10);
    gDynamicBuffer3.buffer.poolEnd = &D_80006DF8;
    gDynamicBuffer3.unk10 = &D_80006E30;
    func_8000708C(arg0, 0);
}

extern u32 D_80006EE4;
extern u32 D_80006E94;

// weird usage of `at` as a temp var
#ifdef NON_MATCHING
void func_80007380(struct UnkStructFunc80007380 *arg0) {
    alloc_region(arg0->unkC, arg0->unk10);
    D_8004A490.unk0 = alloc_with_alignment(((arg0->unk40 * 8) - arg0->unk40) << 6, 8);
    D_8004A490.unk4 = arg0->unk40;
    D_8004A490.unk8 = arg0->unk44;
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
    HS64_omInit(&D_8004A490);
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
