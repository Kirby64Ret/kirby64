#include <ultra64.h>
#include <PR/os_vi.h>
#include "common.h"
#include "libc/stdarg.h"
#include "GObj.h"
#include "contpad.h"
#include "object_helpers.h"

// There is also some rmon functionality in this file

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
    "Interrupt",
    "TLB modification",
    "TLB exception on load",
    "TLB exception on store",
    "Address error on load",
    "Address error on store",
    "Bus error on inst.",
    "Bus error on data",
    "System call exception",
    "Breakpoint exception",
    "Reserved instruction",
    "Coprocessor unusable",
    "Arithmetic overflow",
    "Trap exception",
    "Virtual coherency on inst.",
    "Floating point exception",
    "Watchpoint exception",
    "Virtual coherency on data",
};

// More crash screen message pointers
const char *gFPUExceptionCauses[] = {
    "Unimplemented operation",
    "Invalid operation",
    "Division by zero",
    "Overflow",
    "Underflow",
    "Inexact operation",
};

s32 D_8003F86C = 0x0000001E;
u32 D_8003F870 = 0x00000019;


// vi bss
extern u32 scTimestampSetFb; // 0x80048C6C
extern u32 D_80048C70; // 0x80048C70
extern u32 D_80048C74; // 0x80048C74
extern u32 D_80048C78; // 0x80048C78
extern s32 gCurrScreenWidth;
// extern s32 gCurrScreenWidth;

// idk
extern u32 D_8004A430;
extern u32 D_8004A434;
extern u32 D_80095DC0;

// gtl or om
extern Gfx *gDisplayListHeads[4];

// fault data/bss
extern OSThread *(*gCrashScreenFramebuffer)(); // TODO: callback not framebuf


#ifdef MIPS_TO_C

void func_80020F40(s32 arg0, s32 arg1, s32 arg2, ? arg3) {
    ? *var_v1;
    Gfx *temp_a3;
    Gfx *temp_a3_2;
    Gfx *temp_a3_3;
    Gfx *var_v0;
    s32 *temp_a1;
    s32 temp_t8;
    s32 var_a2;
    void *temp_v1;
    void *var_a0;

    if ((arg2 >= 0) && (arg2 < 0x11)) {
        temp_a1 = (arg2 << 5) + &D_8003F440;
        var_v0 = *gDisplayListHeads;
        if (*temp_a1 == 0) {

        } else {
            temp_a3 = var_v0;
            var_v0 += 8;
            temp_a3->words.w0 = (((((D_8003F3C8 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | 0xF6000000 | (((((arg1 + D_8003F3CC) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
            temp_a3->words.w1 = (((((D_8003F3C0 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | (((((arg1 + D_8003F3C4) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
        }
        var_a0 = temp_a1 + 4;
        var_v1 = &D_8003F3D0;
        var_a2 = 1;
        do {
            var_a2 += 2;
            if (var_a0->unk0 != 0) {
                temp_a3_2 = var_v0;
                var_v0 += 8;
                temp_a3_2->words.w0 = (((((var_v1->unk8 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | 0xF6000000 | (((((arg1 + var_v1->unkC) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
                temp_a3_2->words.w1 = (((((var_v1->unk0 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | (((((arg1 + var_v1->unk4) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
            }
            temp_t8 = var_a0->unk4;
            var_a0 = var_a0 + 4 + 4;
            temp_v1 = var_v1 + 0x10;
            if (temp_t8 != 0) {
                temp_a3_3 = var_v0;
                var_v0 += 8;
                temp_a3_3->words.w0 = (((((temp_v1->unk8 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | 0xF6000000 | (((((arg1 + temp_v1->unkC) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
                temp_a3_3->words.w1 = (((((temp_v1->unk0 + arg0) * gCurrScreenWidth) / 320) & 0x3FF) << 0xE) | (((((arg1 + temp_v1->unk4) * gCurrScreenHeight) / 240) & 0x3FF) * 4);
            }
            var_v1 = temp_v1 + 0x10;
        } while (var_a2 != 7);
        D_80096520 = var_v1;
        *gDisplayListHeads = var_v0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80020F40.s")
#endif

#ifdef MIPS_TO_C

void func_80021444(s32 arg0, ? arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s32 temp_a3;
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s6;

    var_s1 = arg2;
    var_s3 = arg3;
    var_s6 = 0;
    if (arg3 > 0) {
        var_s0 = arg4;
        if (var_s3 < ((gCurrScreenWidth - arg0) / 7)) {
            var_s4 = (arg0 + (var_s3 * 7)) - 7;
            if (var_s1 < 0) {
                var_s1 = -var_s1;
                var_s6 = 1;
            }
            if (var_s0 <= 0) {
                var_s0 = -1;
            }
            if (var_s6 < var_s3) {
loop_7:
                temp_a3 = var_s0 == 0;
                var_s0 -= 1;
                func_80020F40(var_s4, arg1, (var_s1 % 10) & 0xF, temp_a3);
                var_s1 = var_s1 / 10;
                var_s3 -= 1;
                if ((arg5 != 0) && (var_s1 == 0) && (var_s0 < 0)) {
                    var_s4 -= 7;
                } else {
                    var_s4 -= 7;
                    if (var_s6 < var_s3) {
                        goto loop_7;
                    }
                }
            }
            if (var_s6 != 0) {
                func_80020F40(var_s4, arg1, 0x10, 0);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80021444.s")
#endif

#ifdef MIPS_TO_C

void func_800215F0(s32 arg4) {
    func_80021444(0, arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_800215F0.s")
#endif

#ifdef MIPS_TO_C

void func_80021618(f32 arg2, s32 arg4, s32 arg5) {
    func_80021444(arg2, *(&D_8003F660 + (arg4 * 4)) * arg2, arg4, arg5);
}
#else
void func_80021618(s32 arg0, s32 arg1, f32 arg2, s32 arg3, s32 arg4, s32 arg5);
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80021618.s")
#endif

#ifdef MIPS_TO_C

void func_80021668(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    arg0->unk0 = ((((gCurrScreenWidth * arg3) / 320) & 0x3FF) << 0xE) | 0xF6000000 | ((((arg4 * gCurrScreenHeight) / 240) & 0x3FF) * 4);
    arg0->unk4 = ((((gCurrScreenWidth * arg1) / 320) & 0x3FF) << 0xE) | ((((arg2 * gCurrScreenHeight) / 240) & 0x3FF) * 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80021668.s")
#endif

void func_80021764(GObj *g) {
    s32 i;
    u32 temp_v1;
    s32 offsetX = 40;
    s32 offsetY = 0x1F;

    func_8001663C(gDisplayListHeads, g->data.ptr, 0, g);
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_FILL);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_NOOP, G_RM_NOOP2);
    gDPSetFillColor(gDisplayListHeads[0]++, viPackRGBA(0xFF0000FF));
    func_80021618(offsetX, 0x15, D_8004A430 * 0.00390625f, 3, 2, 1);
    offsetX += 35;
    func_80021618(offsetX, 0x15, D_8004A434 * 0.00390625f, 3, 2, 1);
    offsetX += 35;
    func_80021618(offsetX, 0x15, D_80048C74 * 0.00390625f, 3, 2, 1);
    offsetX += 35;
    func_80021618(offsetX + 10, 0x15, (D_8004A430 * 0.00390625f) + (D_8004A434 * 0.00390625f), 3, 2, 1);
    offsetX += 70;
    func_80021618(offsetX, 0x15, D_80095DC0 * 0.00390625f, 3, 2, 1);
    offsetX += 35;
    func_80021618(offsetX, 0x15, D_80048C78 * 0.00390625f, 3, 2, 1);
    gDPPipeSync(gDisplayListHeads[0]++);

    #define CLAMP256(x) ((x) > 256 ? 256 : (x))
    func_80021668(gDisplayListHeads[0]++, 0x3E, offsetY, CLAMP256(D_8004A430 / 4) + 0x3E, offsetY + 1);
    offsetY += 2;
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetFillColor(gDisplayListHeads[0]++, viPackRGBA(0xFF00FFFF));
    func_80021668(gDisplayListHeads[0]++, 0x3E, offsetY, CLAMP256(D_8004A434 / 4) + 0x3E, offsetY + 1);
    offsetY += 2;
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetFillColor(gDisplayListHeads[0]++, viPackRGBA(0xFF00FF));
    func_80021668(gDisplayListHeads[0]++, 0x3E, offsetY, CLAMP256(D_80048C74 / 4) + 0x3E, offsetY + 1);
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetFillColor(gDisplayListHeads[0]++, viPackRGBA(0x101010FF));
    for (i = 62; i < (62 + 250); i += 64) {
        func_80021668(gDisplayListHeads[0]++, i, 0x1F, i, 0x24);
    }
    gDPPipeSync(gDisplayListHeads[0]++);
    gDPSetCycleType(gDisplayListHeads[0]++, G_CYC_1CYCLE);
    gDPSetRenderMode(gDisplayListHeads[0]++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
}

s32 func_80021CB4(s32 arg0, s32 arg1, s32 arg2) {
    if (ohFindById(-2) != 0) {
        return 0;
    }
    return ohCreateCamera(-2, ohUpdateStub, arg0, arg1, &func_80021764, arg2, 0, 0, 0, 0, 0, 0, 0);
}

// hidden file boundary?

typedef struct {
    OSThread thread;
    u64 stack[0x800 / sizeof(u64)];
    OSMesgQueue mesgQueue; // D_80096ED8
    OSMesg mesg;
    u16 *framebuffer;
    u16 width; // gCurrScreenWidth
    u16 height;
} FaultDesc;
extern FaultDesc gCrashScreen;

// https://decomp.me/scratch/fwh8t 98.04%
#ifdef NON_MATCHING
void *crash_screen_draw_rect(s32 x, s32 y, s32 width, s32 height) {
    u16* fb = (u16*) osViGetCurrentFramebuffer() + (gCurrScreenWidth * y) + x;
    s32 i;
    s32 j;

    for (i = 0; i < height; i++) {
        for (j = 0; j < width; j++, fb++) {
            *fb = GPACK_RGBA5551(0, 0, 0, 1);
        }
        fb += gCurrScreenWidth - width;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/crash_screen_draw_rect.s")
#endif

void crash_screen_draw_glyph(u32 x, u32 y, s32 glyph) {
    u32 pad[4];
    const u32 *data;
    u16 *ptr;
    u32 bit;
    u32 rowMask;
    s32 i, j;

    data = &gCrashScreenFont[glyph / 5 * 7];
    ptr = (u16*)osViGetCurrentFramebuffer() + gCurrScreenWidth * y + x;

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

    

    size = _Printf(write_to_buf, buf, fmt, (va_list)ALIGN4((u32)args));

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

void crash_screen_print_float_reg(s32 x, s32 y, s32 regNum, void *addr) {
    u32 bits;
    s32 exponent;

    bits = *(u32 *) addr;
    exponent = ((bits & 0x7f800000U) >> 0x17) - 0x7f;
    if ((exponent >= -0x7e && exponent <= 0x7f) || bits == 0) {
        crash_screen_print(x, y, "F%02d:%.3e", regNum, *(f32 *) addr);
    } else {
        crash_screen_print(x, y, "F%02d:%08XH", regNum, bits);
    }
}

void crash_screen_print_fpcsr(u32 fpcsr) {
    s32 i;
    u32 bit;

    bit = 1 << 17;
    crash_screen_print(30, 155, "FPCSR:%08XH", fpcsr);
    for (i = 0; i < 6; i++) {
        if (fpcsr & bit) {
            crash_screen_print(132, 155, "(%s)", gFPUExceptionCauses[i]);
            return;
        }
        bit >>= 1;
    }
}

u8 faultWaitButton(u32 btn, void *cfb) {
    do {
        crash_screen_sleep(0x10);
        func_8000464C();
        if (cfb != 0 && ((u32)osViGetCurrentFramebuffer() != (u32)cfb)) {
            return 1;
        }
    }
    while (btn != gPlayerControllers[0].buttonHeld);

    return 0;
}

// https://decomp.me/scratch/Odn7f 95.43%
#ifdef NON_MATCHING
void func_800222C4(OSThread* t, s32 arg1) {
    s16 cause;
    __OSThreadContext* ctx;
    s32 stackOffset;
    s32 y;
    u8* stackCsr;

    cause = ((u32) t->context.cause >> 2) & 0x1F;
    if (cause == 0x17) {
        cause = 0x10;
    }
    if (cause == 0x1F) {
        cause = 0x11;
    }
    osWritebackDCacheAll();
    switch (arg1) {
        
    }
    
    if (arg1 != 0) {
        crash_screen_draw_rect(0x19, 0x14, 0x10E, 0x19);
        if (arg1 != 2) {
            crash_screen_print(0x1E, 0x19, "THREAD:%d  (%s)", t->id, gCPUExceptionCauses[cause]);
        } else {
            crash_screen_print(0x1E, 0x19, "THREAD:%d  (%s)", t->id, "INF-LOOP");
        }
        if (cause == 0) {
            crash_screen_print(0xA0, 0x19, "IP (%02X)", (t->context.cause >> 8) & 0xFF);
            crash_screen_print(0xD2, 0x19, "RCP (%X)", 0xA4300008);
        }
        ctx = &t->context;
        crash_screen_print(0x1E, 0x23, "PC:%08XH   SR:%08XH   VA:%08XH", ctx->pc, ctx->sr, ctx->badvaddr);
        osWritebackDCacheAll();
        faultWaitButton(0, 0);
        faultWaitButton(0x2030, 0);
    }
    ctx = &t->context;
    crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
    if (arg1 != 2) {
        crash_screen_print(0x1E, 0x19, "THREAD:%d  (%s)", t->id, gCPUExceptionCauses[cause]);
    } else {
        crash_screen_print(0x1E, 0x19, "THREAD:%d  (%s)", t->id, "INF-LOOP");
    }
    crash_screen_print(0x1E, 0x23, "PC:%08XH   SR:%08XH   VA:%08XH", (s32) ctx->pc,  ctx->sr, ctx->badvaddr);
    if (cause == 0) {
        crash_screen_print(0xA0, 0x19, "IP (%02X)", ((u32) ctx->cause >> 8) & 0xFF);
        crash_screen_print(0xD2, 0x19, "RCP (%X)", 0xA4300008);
    }
    crash_screen_print(30, 50, "AT:%08XH   V0:%08XH   V1:%08XH", (u32) ctx->at, (u32) ctx->v0, (u32) ctx->v1);
    crash_screen_print(30, 60, "A0:%08XH   A1:%08XH   A2:%08XH", (u32) ctx->a0, (u32) ctx->a1, (u32) ctx->a2);
    crash_screen_print(30, 70, "A3:%08XH   T0:%08XH   T1:%08XH", (u32) ctx->a3, (u32) ctx->t0, (u32) ctx->t1);
    crash_screen_print(30, 80, "T2:%08XH   T3:%08XH   T4:%08XH", (u32) ctx->t2, (u32) ctx->t3, (u32) ctx->t4);
    crash_screen_print(30, 90, "T5:%08XH   T6:%08XH   T7:%08XH", (u32) ctx->t5, (u32) ctx->t6, (u32) ctx->t7);
    crash_screen_print(30, 100, "S0:%08XH   S1:%08XH   S2:%08XH", (u32) ctx->s0, (u32) ctx->s1, (u32) ctx->s2);
    crash_screen_print(30, 110, "S3:%08XH   S4:%08XH   S5:%08XH", (u32) ctx->s3, (u32) ctx->s4, (u32) ctx->s5);
    crash_screen_print(30, 120, "S6:%08XH   S7:%08XH   T8:%08XH", (u32) ctx->s6, (u32) ctx->s7, (u32) ctx->t8);
    crash_screen_print(30, 130, "T9:%08XH   GP:%08XH   SP:%08XH", (u32) ctx->t9, (u32) ctx->gp, (u32) ctx->sp);
    crash_screen_print(30, 140, "S8:%08XH   RA:%08XH", (u32) ctx->s8, (u32) ctx->ra);
    crash_screen_print_fpcsr(ctx->fpcsr);
    crash_screen_print_float_reg(0x1E, 0xAA, 0, &ctx->fp0.f.f_even);
    crash_screen_print_float_reg(0x78, 0xAA, 2, &ctx->fp2.f.f_even);
    crash_screen_print_float_reg(0xD2, 0xAA, 4, &ctx->fp4.f.f_even);
    crash_screen_print_float_reg(0x1E, 0xB4, 6, &ctx->fp6.f.f_even);
    crash_screen_print_float_reg(0x78, 0xB4, 8, &ctx->fp8.f.f_even);
    crash_screen_print_float_reg(0xD2, 0xB4, 0xA, &ctx->fp10.f.f_even);
    crash_screen_print_float_reg(0x1E, 0xBE, 0xC, &ctx->fp12.f.f_even);
    crash_screen_print_float_reg(0x78, 0xBE, 0xE, &ctx->fp14.f.f_even);
    crash_screen_print_float_reg(0xD2, 0xBE, 0x10, &ctx->fp16.f.f_even);
    crash_screen_print_float_reg(0x1E, 0xC8, 0x12, &ctx->fp18.f.f_even);
    crash_screen_print_float_reg(0x78, 0xC8, 0x14, &ctx->fp20.f.f_even);
    crash_screen_print_float_reg(0xD2, 0xC8, 0x16, &ctx->fp22.f.f_even);
    crash_screen_print_float_reg(0x1E, 0xD2, 0x18, &ctx->fp24.f.f_even);
    crash_screen_print_float_reg(0x78, 0xD2, 0x1A, &ctx->fp26.f.f_even);
    crash_screen_print_float_reg(0xD2, 0xD2, 0x1C, &ctx->fp28.f.f_even);
    crash_screen_print_float_reg(0x1E, 0xDC, 0x1E, &ctx->fp30.f.f_even);
    osWritebackDCacheAll();
    faultWaitButton(0, 0);
    faultWaitButton(0x2030, 0);
    crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
    stackCsr = (u8*) (uintptr_t) ctx->sp;

    crash_screen_print(26, 20, "SP Base %08x", (u32) stackCsr);

    y = 30;

    for (stackOffset = 0; stackOffset < 0x98; stackOffset += 8) {
        u32 word = *(u32*) stackCsr;
        s32 small = ((word & 0x7F800000) >> 23) - 127;

        if ((small >= -126 && small < 128) || word == 0) {
            crash_screen_print(
                26,
                y,
                "%03d:%02x%02x%02x%02x %.3e",
                stackOffset,
                stackCsr[0],
                stackCsr[1],
                stackCsr[2],
                stackCsr[3],
                (f64) * (f32*) stackCsr);
        } else {
            crash_screen_print(
                26,
                y,
                "%03d:%02x%02x%02x%02x %08x",
                stackOffset,
                stackCsr[0],
                stackCsr[1],
                stackCsr[2],
                stackCsr[3],
                word);
        }

        stackCsr += 4;
        word = *(u32*) stackCsr;
        small = ((word & 0x7F800000) >> 23) - 127;

        if ((small >= -126 && small < 128) || word == 0) {
            crash_screen_print(
                172,
                y,
                ":%02x%02x%02x%02x %.3e",
                stackCsr[0],
                stackCsr[1],
                stackCsr[2],
                stackCsr[3],
                (f64) * (f32*) stackCsr);
        } else {
            crash_screen_print(
                172,
                y,
                ":%02x%02x%02x%02x %08x",
                stackCsr[0],
                stackCsr[1],
                stackCsr[2],
                stackCsr[3],
                word);
        }
        y += 10;
        stackCsr += 4;
    }
    osWritebackDCacheAll();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_800222C4.s")
#endif

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

void faultSetUserCallback(OSThread (*arg0)()) {
    gCrashScreenFramebuffer = arg0;
}

#ifdef MIPS_TO_C
void func_80022A44(s32 arg0, s32 arg1) {
    D_8003F86C = arg0;
    D_8003F870 = arg1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80022A44.s")
#endif

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

    crash_screen_vprint(fmt, (va_list)ALIGN4((u32)args));

    va_end(args);
}


extern OSThread *(*D_80096EF8)(void);
extern OSMesgQueue *D_80096ED8;
void func_80022BC4(s32 arg0) {
    OSMesg *sp34;
    OSThread *cb_thread;
    OSThread *t;

    osSetEventMesg(OS_EVENT_CPU_BREAK, &D_80096ED8, 1);
    osSetEventMesg(OS_EVENT_FAULT, &D_80096ED8, 2);
    do {
        osRecvMesg(&D_80096ED8, &sp34, 1);
        t = get_crashed_thread();
    } while (t == NULL);
    D_8003F688 = 1;
    faultWaitButton(0, 0);
    faultWaitButton(0x2030, 0);
    faultWaitButton(0, 0);
    faultWaitButton(0x808, 0);
    faultWaitButton(0, 0);
    faultWaitButton(0x8200, 0);
    faultWaitButton(0, 0);
    faultWaitButton(0x4100, 0);
    faultWaitButton(0, 0);
    faultWaitButton(0x404, 0);
    func_800222C4(t, 1);
    if (gCrashScreenFramebuffer != NULL) {
        while (1) {
            faultWaitButton(0, 0);
            faultWaitButton(0x2030, 0);
            crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
            func_80022A44(0x1E, 0x19);
            cb_thread = gCrashScreenFramebuffer();
            faultWaitButton(0, 0);
            faultWaitButton(0x2030, 0);
            if (cb_thread != NULL) {
                func_800222C4(cb_thread, 0);
                faultWaitButton(0, 0);
                faultWaitButton(0x2030, 0);
            }
            func_800222C4(t, 0);
        }
    }
    while (1);
}

extern OSThread D_80096528;
extern OSMesg D_80096EF0;

void crash_screen_start_thread(void) {
    osCreateMesgQueue(&D_80096ED8, &D_80096EF0, 1);
    osCreateThread(&D_80096528, 8, func_80022BC4, NULL, &D_80096ED8, OS_PRIORITY_RMON);
    osStartThread(&D_80096528);
}

void func_80022E04(s32 arg0);
#ifdef _MIPS_TO_C
void func_80022E04(s32 arg0) {
    void *sp4C;
    OSThread *cb_thread;
    s32 pri;
    s32 var_s0;
    s32 var_s4;

    
    var_s0 = 0;
    scAddClient(&D_80096F00, &D_80096F10, &D_80096F08, 1);
    while (1) {
        osRecvMesg(&D_80096F10, &sp4C, 1);
        if (D_8003F688 != 0) {
            continue;
        }
        if (var_s4 == D_8003DCA4) {
            var_s0 ++;
        } else {
            var_s0 = 0;
        }
        var_s4 = D_8003DCA4;
        if (var_s0 < 0x12C) {
            continue;
        }
        D_8003F688 = 1;
        pri = osGetThreadPri(NULL);
        osSetThreadPri(NULL, OS_PRIORITY_RMON);
        faultWaitButton(0, 0);
        faultWaitButton(0x2030, 0);
        faultWaitButton(0, 0);
        faultWaitButton(0x808, 0);
        faultWaitButton(0, 0);
        faultWaitButton(0x8200, 0);
        faultWaitButton(0, 0);
        faultWaitButton(0x4100, 0);
        faultWaitButton(0, 0);
        faultWaitButton(0x404, 0);
        func_800222C4(&gGameThread, 2);
        if (gCrashScreenFramebuffer != NULL) {
            faultWaitButton(0, 0);
            faultWaitButton(0x2030, 0);
            crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
            func_80022A44(0x1E, 0x19);
            cb_thread = gCrashScreenFramebuffer();
            if (cb_thread != NULL) {
                faultWaitButton(0, 0);
                faultWaitButton(0x2030, 0);
                func_800222C4(cb_thread, 0);
            }
        }
        var_s0 = 0;
        faultWaitButton(0, 0);
        faultWaitButton(0x2030, 0);
        osSetThreadPri(NULL, pri);
        D_8003F688 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/func_80022E04.s")
#endif

extern OSThread *gCrashScreenThread;
extern u64 D_800978D8[];

void crash_screen_init(void) {
    osCreateThread(&gCrashScreenThread, 8, func_80022E04, 0, &D_800978D8, 0x69);
    osStartThread(&gCrashScreenThread);
}

#define SOME_ALIGNMENT(a) ((((u32)a) + 0x2F) & ~3)
// make the SOME_ALIGNMENT() generate explicit alignment code
#ifdef NON_MATCHING
void fatal_printf(s32 fmt, ...) {
    s32 pri;
    void *currFB;
    va_list args;
    va_start(args, fmt);

    D_8003F688 = 1;
    pri = osGetThreadPri(NULL);
    osSetThreadPri(NULL, 0xFA);
    faultWaitButton(0, NULL);
    faultWaitButton(0x2030, NULL);
    faultWaitButton(0, NULL);
    faultWaitButton(0x808, NULL);
    faultWaitButton(0, NULL);
    faultWaitButton(0x8200, NULL);
    faultWaitButton(0, NULL);
    faultWaitButton(0x4100, NULL);
    faultWaitButton(0, NULL);
    faultWaitButton(0x404, NULL);
    do {
        currFB = osViGetCurrentFramebuffer();
        crash_screen_draw_rect(0x19, 0x14, 0x10E, 0x19);
        func_80022A44(0x1E, 0x19);
        crash_screen_vprint(fmt, args);
        if (faultWaitButton(0, currFB) != 0) {
            continue;
        }
    } while (faultWaitButton(0x2030, currFB) != 0);
    osSetThreadPri(NULL, pri);
    D_8003F688 = 0;
    va_end(args);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/main/fault/fatal_printf.s")
#endif

void func_800231F0(void (*funcPointer)(void)) {
    s32 sp24;
    s32 currFB;

    D_8003F688 = 1;
    sp24 = osGetThreadPri(NULL);
    osSetThreadPri(NULL, OS_PRIORITY_RMON);
    do {
        currFB = osViGetCurrentFramebuffer();
        crash_screen_draw_rect(0x19, 0x14, 0x10E, 0xD2);
        func_80022A44(0x1E, 0x19);
        funcPointer();
    } while (faultWaitButton(0, currFB) != 0 || faultWaitButton(0x2030, currFB));
    osSetThreadPri(NULL, sp24);
    D_8003F688 = 0;
}
