#include <ultra64.h>
#include <macros.h>

#include "types.h"
#include "main.h"
#include "segments.h"

struct Overlay ovl1Def = OVERLAY(ovl1);

u32 D_8003DC94 = 0;

#define SETUP_STACK_AND_START_THREAD(thread, stack) {\
    stack[7] = STACK_TOP_MAGIC;\
    osStartThread(&thread);\
}

// .bss
u64 gEntryStack[ENTRY_STACK_LEN_U64]; // Stack pointer set to this by EntryPoint

OSThread gIdleThread;
 u64 idleThreadStack[IDLE_THREAD_STACK_LEN_U64];

OSThread gMainThread;
 u64 gMainThreadStack[0x80]; // Stack for gMainThread

OSThread gAudioThread;
 u64 gAudioThreadStack[0xC0]; // Stack for gAudioThread

OSThread gGameThread;
 u64 gGameThreadStack[MAIN_THREAD_STACK_LEN_U64];

OSThread gControllerThread;
 u64 gThread6Stack[0x100]; // Stack for gControllerThread

u8 gRSPBootUcode[0x100]; // Boot ucode

u8 gSPImemOkay;
u8 gSPDmemOkay;
OSMesg D_80048A04;
OSMesgQueue gThreadInitializedMQ;

OSMesg piMesgBuffer[NUM_PI_MESSAGES];
OSMesgQueue piMesgQueue;

void *D_80048B00;
u32 pad13[0x1C]; // ?

extern OSPiHandle *gRomHandle;


OSThread *unused_get_main_thread(void) {
    return &gGameThread;
}

u64 *unused_get_main_thread_stack(void) {
    return gGameThreadStack;
}

u16 unused_get_main_thread_stack_length(void) {
    return MAIN_THREAD_STACK_LEN;
}

#define SP_IMEM 0xA4001000

void check_sp_imem(void) {
    gSPImemOkay = (HW_REG(SP_IMEM, u32) == 0x17D7) ? 1 : 0;
}

#define SP_DMEM 0xA4000000

void check_sp_dmem(void) {
    gSPDmemOkay = (HW_REG(SP_DMEM, s32) == -1) ? 1 : 0;
}

extern void fatal_printf(const char *fmt, ...);

void thread_crash_stack_overflow(s32 threadNum) {
    fatal_printf("thread stack overflow  id = %d\n", threadNum);
    while (1);
}

void func_80000510(void) {
    if (gEntryStack[7] != STACK_TOP_MAGIC) {
        thread_crash_stack_overflow(0);
    }
    if (idleThreadStack[7] != STACK_TOP_MAGIC) {
        thread_crash_stack_overflow(1);
    }
    if (gMainThreadStack[7] != STACK_TOP_MAGIC) {
        thread_crash_stack_overflow(3);
    }
    if (gGameThreadStack[7] != STACK_TOP_MAGIC) {
        thread_crash_stack_overflow(5);
    }
}

extern void osCreateViManager(OSPri x);
extern void func_80002EBC(void); // Initializes a PI Handle
extern void init_dma_message_queue(void);
extern void dma_read(u32 x, void *y, u32 z);
extern void thread3_main(void *);
extern void auThreadMain(void *);
extern void func_800051E0(void *);
void dma_overlay_load(struct Overlay *);
void func_800076D0();
void game_tick(s32);
void crash_screen_start_thread();

extern OSPiHandle *osCartRomInit(void);

void thread5_game(UNUSED void *arg) {
    osCreateViManager(0xFE);
    gRomHandle = osCartRomInit();
    func_80002EBC();
    osCreatePiManager(OS_PRIORITY_PIMGR, &piMesgQueue, &piMesgBuffer[0], NUM_PI_MESSAGES);
    init_dma_message_queue();
    dma_read(0xB0000B70, gRSPBootUcode, sizeof(gRSPBootUcode));
    check_sp_imem();
    check_sp_dmem();
    osCreateMesgQueue(&gThreadInitializedMQ, &D_80048A04, 1);

    osCreateThread(&gMainThread, 3, thread3_main, NULL, &gMainThreadStack[0x80], 120);
    SETUP_STACK_AND_START_THREAD(gMainThread, gMainThreadStack);
    osRecvMesg(&gThreadInitializedMQ, NULL, OS_MESG_BLOCK);

    osCreateThread(&gAudioThread, 4, auThreadMain, NULL, &gAudioThreadStack[0xC0], 110);
    SETUP_STACK_AND_START_THREAD(gAudioThread, gAudioThreadStack);
    osRecvMesg(&gThreadInitializedMQ, NULL, OS_MESG_BLOCK);

    osCreateThread(&gControllerThread, 6, func_800051E0, NULL, &gThread6Stack[0x100], 115);
    SETUP_STACK_AND_START_THREAD(gControllerThread, gThread6Stack);
    osRecvMesg(&gThreadInitializedMQ, NULL, OS_MESG_BLOCK);
    
    func_800076D0();
    dma_overlay_load(&ovl1Def);
    game_tick(0);
}

void thread1_idle(void *arg) {
    crash_screen_start_thread();
    osCreateThread(&gGameThread, 5, thread5_game, arg, &gGameThreadStack[MAIN_THREAD_STACK_LEN_U64], 50);
    gGameThreadStack[7] = STACK_TOP_MAGIC;
    if (D_8003DC94 == 0) {
        osStartThread(&gGameThread);
    }
    osSetThreadPri(NULL, OS_PRIORITY_IDLE);
    while (1);
}

void cboot(void) {
    gEntryStack[7] = STACK_TOP_MAGIC;
    osInitialize();
    osCreateThread(&gIdleThread, 1, thread1_idle, &D_80048B00, &idleThreadStack[IDLE_THREAD_STACK_LEN_U64], OS_PRIORITY_APPMAX);
    SETUP_STACK_AND_START_THREAD(gIdleThread, idleThreadStack);
}
