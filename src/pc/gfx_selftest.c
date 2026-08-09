/* A synthetic F3DEX2 display list, submitted through the game's own path.
 *
 * WHY THIS EXISTS, and why it is not a toy.
 *
 * The renderer integration cannot be exercised by the game yet. thread5_game
 * starts the audio thread and then blocks on gThreadInitializedMQ waiting for
 * it to report in; auThreadMain is still undecompiled, so its weak stub
 * returns without posting, and the game thread never reaches gtlInit() -- let
 * alone builds a display list. Every part of the Fast3D wiring downstream of
 * osSpTaskStartGo would therefore be untested code committed on faith.
 *
 * This closes that gap by generating the one thing that is missing. It is a
 * real test rather than a mock because everything on the path is the real
 * thing:
 *
 *   - the list is assembled with THE GAME'S OWN <PR/gbi.h> macros, under the
 *     same -DF3DEX_GBI_2 the rest of the build uses. If this tree's gbi.h
 *     disagrees with libultraship's F3DEX2 opcode numbering, or if the Gfx
 *     union does not have the layout Fast3D expects at LP64, this is where it
 *     shows -- and those are exactly the two things most likely to be quietly
 *     wrong in a 64-bit port;
 *   - it goes through osSpTaskLoad/osSpTaskStartGo in src/pc/os_sp.c, so the
 *     OSTask handling, the SP-done/DP-done deferral and the frame accounting
 *     in the backend are all covered;
 *   - it is submitted between a retrace's pcb_frame_begin and the next
 *     pcb_frame_end, which is where the game's own task will land.
 *
 * KIRBY_PC_GFXTEST=1 turns it on. It is off by default and contributes
 * nothing to a normal run.
 *
 * What it draws: a full-screen fill in one colour with a smaller rectangle in
 * another on top of it, the colours cycling per frame. Fill rectangles are
 * chosen deliberately -- they need no matrices, no vertices and no textures,
 * so a failure is unambiguously in the plumbing rather than in the geometry
 * pipeline. Once the game does produce lists this file has served its purpose.
 */
#include <ultra64.h>
#include <PR/gbi.h>
#include <stddef.h>
#include <stdlib.h>

#include "pc/pc_platform.h"
#include "pc/pc_backend.h"

#define GFXTEST_W 320
#define GFXTEST_H 240

static int sEnabled = -1;
static u32 sFrame;

/* A framebuffer the RDP would render into. Nothing reads it -- Fast3D draws to
 * the host GPU -- but gsDPSetColorImage needs an address, and giving it a real
 * one keeps the list identical in shape to something the game would build. */
static u16 sColorImage[GFXTEST_W * GFXTEST_H];

static Gfx sList[16];
static OSTask sTask;

int pc_gfx_selftest_enabled(void) {
    if (sEnabled < 0) {
        const char *p = getenv("KIRBY_PC_GFXTEST");
        sEnabled = (p != NULL && *p != '0');
        if (sEnabled) {
            pc_trace(PC_TR_GFX,
                     "[gfxtest] synthetic display lists enabled\n");
        }
    }
    return sEnabled;
}

/* RGBA5551 packed twice, which is what G_SETFILLCOLOR wants in fill mode:
 * the RDP writes 32 bits per cycle and a 16-bit framebuffer takes two
 * pixels from it. */
static u32 fill5551(int r, int g, int b) {
    u16 c = (u16)(((r & 0x1F) << 11) | ((g & 0x1F) << 6) | ((b & 0x1F) << 1) | 1);
    return ((u32)c << 16) | c;
}

void pc_gfx_selftest_frame(void) {
    Gfx *g = sList;
    int phase;
    int x0;

    if (!pc_gfx_selftest_enabled() || !pcb_has_renderer()) {
        return;
    }

    phase = (int)(sFrame % 96);
    x0 = 40 + phase * 2;
    sFrame++;

    gDPSetCycleType(g++, G_CYC_FILL);
    gDPSetColorImage(g++, G_IM_FMT_RGBA, G_IM_SIZ_16b, GFXTEST_W, sColorImage);
    gDPSetScissor(g++, G_SC_NON_INTERLACE, 0, 0, GFXTEST_W, GFXTEST_H);

    /* Background. gDPFillRectangle's lower-right is INCLUSIVE on the RDP, so
     * the last row and column are W-1/H-1. Getting this wrong is a one-pixel
     * bug on hardware and a scissor rejection in some renderers, which is
     * exactly the kind of thing worth having a test for. */
    gDPSetFillColor(g++, fill5551(2, 4, 10));
    gDPFillRectangle(g++, 0, 0, GFXTEST_W - 1, GFXTEST_H - 1);
    gDPPipeSync(g++);

    /* A moving bar, so a stuck frame is visible as a stationary one. */
    gDPSetFillColor(g++, fill5551(31, 24, 4));
    gDPFillRectangle(g++, x0, 90, x0 + 60, 150);
    gDPPipeSync(g++);

    gDPFullSync(g++);
    gSPEndDisplayList(g++);

    sTask.t.type = M_GFXTASK;
    sTask.t.flags = 0;
    sTask.t.ucode_boot = NULL;
    sTask.t.ucode_boot_size = 0;
    sTask.t.ucode = NULL;
    sTask.t.ucode_size = 0;
    sTask.t.ucode_data = NULL;
    sTask.t.ucode_data_size = 0;
    sTask.t.dram_stack = NULL;
    sTask.t.dram_stack_size = 0;
    sTask.t.output_buff = NULL;
    sTask.t.output_buff_size = NULL;
    sTask.t.data_ptr = (u64 *)sList;
    sTask.t.data_size = (u32)((u8 *)g - (u8 *)sList);
    sTask.t.yield_data_ptr = NULL;
    sTask.t.yield_data_size = 0;

    osSpTaskLoad(&sTask);
    osSpTaskStartGo(&sTask);
}
