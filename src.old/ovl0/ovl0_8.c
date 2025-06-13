#include <ultra64.h>
#include <macros.h>
#include "ovl0_8.h"
#include "libc/stdarg.h"

#define ALIGN8(val) (((u32)(val) + 3) & ~0x3)

u32 D_8003F3C0 = 0x00000000;
u32 D_8003F3C4 = 0x00000000;
u32 D_8003F3C8 = 0x00000003;
u32 D_8003F3CC = 0x00000000;

u32 D_8003F3D0[0x7][4] = {
    { 0x00000000, 0x00000000, 0x00000000, 0x00000003 },
    { 0x00000003, 0x00000000, 0x00000003, 0x00000003 },
    { 0x00000000, 0x00000003, 0x00000003, 0x00000003 },
    { 0x00000000, 0x00000003, 0x00000000, 0x00000006 },
    { 0x00000003, 0x00000003, 0x00000003, 0x00000006 },
    { 0x00000000, 0x00000006, 0x00000003, 0x00000006 },
    { 0x00000005, 0x00000006, 0x00000005, 0x00000006 },
};

// Only the first 7 in each row are used, and each of the first 7 elements of the row corresponds to a row in the above array
u32 D_8003F440[0x11][8] = {
    { 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000 },
    { 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000000, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000, 0x00000000 },
    { 0x00000000, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000000 },
    { 0x00000000, 0x00000000, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000000 },
    { 0x00000001, 0x00000001, 0x00000000, 0x00000001, 0x00000001, 0x00000000, 0x00000000, 0x00000000 },
    { 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000, 0x00000000 },
};

f32 D_8003F660[10] = {
    1.0f, 10.0f, 100.0f, 1000.0f, 10000.0f, 100000.0f, 1000000.0f, 10000000.0f, 100000000.0f, 1000000000.0f
};

u8 D_8003F688 = 0;

u8 crashScreenGlyphTable[128] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0x29, 0xFF, 0xFF, 0xFF, 0x2B, 0xFF, 0xFF, 0x25, 0x26, 0xFF, 0x2A, 0xFF, 0x27, 0x2C, 0xFF,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x24, 0xFF, 0xFF, 0xFF, 0xFF, 0x28,
    0xFF, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18,
    0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18,
    0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

// Is this really a u32 array? It seems to be used as such based on the assembly of the function it's used in
u32 gCrashScreenFont[0x40] = {
    0x70871C30, 0x8988A250, 0x88808290, 0x88831C90,
    0x888402F8, 0x88882210, 0x71CF9C10, 0xF9CF9C70,
    0x8228A288, 0xF200A288, 0x0BC11C78, 0x0A222208,
    0x8A222288, 0x71C21C70, 0x23C738F8, 0x5228A480,
    0x8A282280, 0x8BC822F0, 0xFA282280, 0x8A28A480,
    0x8BC738F8, 0xF9C89C08, 0x82288808, 0x82088808,
    0xF2EF8808, 0x82288888, 0x82288888, 0x81C89C70,
    0x8A08A270, 0x920DA288, 0xA20AB288, 0xC20AAA88,
    0xA208A688, 0x9208A288, 0x8BE8A270, 0xF1CF1CF8,
    0x8A28A220, 0x8A28A020, 0xF22F1C20, 0x82AA0220,
    0x82492220, 0x81A89C20, 0x8A28A288, 0x8A28A288,
    0x8A289488, 0x8A2A8850, 0x894A9420, 0x894AA220,
    0x70852220, 0xF8011000, 0x08020800, 0x10840400,
    0x20040470, 0x40840400, 0x80020800, 0xF8011000,
    0x70800000, 0x88822200, 0x08820400, 0x108F8800,
    0x20821000, 0x00022200, 0x20800020, 0x00000000,
};

// Crash screen message pointers
const char *gCPUExceptionCauses[] = {
    D_80040D10, D_80040D1C, D_80040D30, D_80040D48,
    D_80040D60, D_80040D78, D_80040D90, D_80040DA4,
    D_80040DB8, D_80040DD0, D_80040DE8, D_80040E00,
    D_80040E18, D_80040E2C, D_80040E3C, D_80040E58,
    D_80040E74, D_80040E8C,
};

// More crash screen message pointers
const char *gFPUExceptionCauses[] = {
	D_80040EA8, D_80040EC0, D_80040ED4, D_80040EE8,
	D_80040EF4, D_80040F00,
};

s32 D_8003F86C = 0x0000001E;
u32 D_8003F870 = 0x00000019;

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80020F40.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021444.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_800215F0.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021618.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021668.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021764.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021CB4.s")

// hidden file boundary?

extern struct {
    OSThread thread;
    u64 stack[0x800 / sizeof(u64)];
    OSMesgQueue mesgQueue; // D_80096ED8
    OSMesg mesg;
    u16 *framebuffer;
    u16 width; // gCurrScreenWidth
    u16 height;
} gCrashScreen;

// i think gCrashScreen isnt used here
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80021D34.s")

extern u16 *osViGetCurrentFramebuffer(void);

extern s32 gCurrScreenWidth;

void crash_screen_draw_glyph(u32 x, u32 y, s32 glyph) {
    u32 pad[4];
    const u32 *data;
    u16 *ptr;
    u32 bit;
    u32 rowMask;
    s32 i, j;

    data = &gCrashScreenFont[glyph / 5 * 7];
    ptr = osViGetCurrentFramebuffer() + gCurrScreenWidth * y + x;

    for (i = 0; i < 7; i++) {
        bit = 0x80000000U >> ((glyph % 5) * 6);
        rowMask = *data++;

        for (j = 0; j < 6; j++) {
            *ptr++ = (bit & rowMask) ? 0xffff : 0x0001;
            bit >>= 1;
        }
        ptr += gCurrScreenWidth - 6;
    }
}

char *write_to_buf(char *buffer, const char *data, size_t size) {
    return (char *) memcpy(buffer, data, size) + size;
}

void crash_screen_print(s32 x, s32 y, const char *fmt, ...) {
    u8 *ptr;
    u32 glyph;
    s32 size;
    u8 buf[0x100];

    va_list args;
    va_start(args, fmt);

    

    size = _Printf(write_to_buf, buf, fmt, (va_list)ALIGN8(args));

    if (size > 0) {
        ptr = buf;

        while (size > 0) {

            glyph = crashScreenGlyphTable[*ptr & 0x7f];

            if (glyph != 0xff) {
                crash_screen_draw_glyph(x, y, glyph);
            }

            size--;

            ptr++;
            x += 6;
        }
    }

    va_end(args);
}

void crash_screen_sleep(s32 ms) {
    u64 cycles = ms * 1000LL * 3000LL / 64ULL;
    osSetTime(0);
    while (osGetTime() < cycles) {
    }
}

extern const char *D_80040F14, *D_80040F20;
void crash_screen_print_float_reg(s32 x, s32 y, s32 regNum, void *addr) {
    u32 bits;
    s32 exponent;

    bits = *(u32 *) addr;
    exponent = ((bits & 0x7f800000U) >> 0x17) - 0x7f;
    if ((exponent >= -0x7e && exponent <= 0x7f) || bits == 0) {
        crash_screen_print(x, y, &D_80040F14, regNum, *(f32 *) addr);
    } else {
        crash_screen_print(x, y, &D_80040F20, regNum, bits);
    }
}

extern const char *D_80040F38;
extern const char *D_80040F2C;
void crash_screen_print_fpcsr(u32 fpcsr) {
    s32 i;
    u32 bit;

    bit = 1 << 17;
    crash_screen_print(30, 155, &D_80040F2C, fpcsr);
    for (i = 0; i < 6; i++) {
        if (fpcsr & bit) {
            crash_screen_print(132, 155, &D_80040F38, gFPUExceptionCauses[i]);
            return;
        }
        bit >>= 1;
    }
}

extern u16 gPlayerControllers;

u8 func_80022248(u32 arg0, s32 arg1) {
    do {
        crash_screen_sleep(0x10);
        func_8000464C();
        if (arg1 != 0 && (u32)osViGetCurrentFramebuffer() != arg1) {
            return 1;
        }
    }
    while (arg0 != gPlayerControllers);

    return 0;
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_800222C4.s")

OSThread *get_crashed_thread(void) {
    OSThread *thread;

    thread = __osGetActiveQueue();
    while (thread->priority != -1) {
        if (thread->priority > OS_PRIORITY_IDLE && thread->priority < OS_PRIORITY_MAX
            && (thread->flags & (OS_STATE_STOPPED | OS_STATE_RUNNABLE))) {
            return thread;
        }
        thread = thread->tlnext;
    }
    return NULL;
}

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80022A38.s")

GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80022A44.s")

void crash_screen_vprint(const char *fmt, va_list args) {
    u32 glyph;
    s32 size;
    u8 buf[256];
    u8 *ptr;

    size = _Printf(write_to_buf, buf, fmt, args);
    if (size > 0) {
        ptr = buf;

        while (size > 0) {
            glyph = crashScreenGlyphTable[*ptr & 0x7F];
            if (*ptr == '\n') {
                D_8003F86C = 0x1E;
                D_8003F870 += 0xA;
            } else {
                if (glyph != 0xFF) {
                    crash_screen_draw_glyph(D_8003F86C, D_8003F870, glyph);
                }
                if ((gCurrScreenWidth - 0x1E) < (D_8003F86C += 6)) {
                    D_8003F86C = 0x1E;
                    D_8003F870 += 0xA;
                }
            }
            ptr++;
            size--;
        }
    }
    osWritebackDCacheAll();
}

void crash_screen_printf(const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);

    crash_screen_vprint(fmt, (va_list)ALIGN8(args));

    va_end(args);
}


extern OSThread *(*D_80096EF8)(void);
extern OSMesgQueue *D_80096ED8;
void func_80022BC4(s32 arg);
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80022BC4.s")

extern OSThread D_80096528;
extern OSMesg D_80096EF0;

void crash_screen_start_thread(void) {
    osCreateMesgQueue(&D_80096ED8, &D_80096EF0, 1);
    osCreateThread(&D_80096528, 8, func_80022BC4, NULL, &D_80096ED8, 0xFA);
    osStartThread(&D_80096528);
}

void func_80022E04(s32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/func_80022E04.s")

extern OSThread *gCrashScreenThread;
extern u64 D_800978D8[];

void crash_screen_init(void) {
    osCreateThread(&gCrashScreenThread, 8, func_80022E04, 0, &D_800978D8, 0x69);
    osStartThread(&gCrashScreenThread);
}


#define SOME_ALIGNMENT(a) (((u32)a + 0x2F) & ~3)
GLOBAL_ASM("asm/non_matchings/ovl0/ovl0_8/fatal_printf.s")

void func_800231F0(void (*funcPointer)(void)) {
    s32 sp24;
    s32 currFB;

    D_8003F688 = 1;
    sp24 = osGetThreadPri(NULL);
    osSetThreadPri(NULL, 0xFA);
    do {
        currFB = osViGetCurrentFramebuffer();
        crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
        func_80022A44(0x1E, 0x19);
        funcPointer();
    } while (func_80022248(0, currFB) != 0 || func_80022248(0x2030, currFB));
    osSetThreadPri(NULL, sp24);
    D_8003F688 = 0;
}
