#include "common.h"
#include "cfb.h"
#include "segments.h"
#include "GObj.h"

#include "main/audio.h"
#include "main/contpad.h"
#include "main/gtl.h"
#include "main/vi.h"

#include "ovl1/ovl1_2.h"

extern Lights1 D_800BE548;

// forward decls
void func_80159DE8_ovl4(void);
void func_80159ED8_ovl4(Gfx **);

Gfx D_8015C3E0_ovl4[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPSetLights1(D_800BE548),
    gsSPEndDisplayList(),
};

ScreenSettings D_8015C410_ovl4 = {
    gFrameBuffer, D_803DA800, NULL,
    D_8012EB00,
    SCREEN_WIDTH, SCREEN_HEIGHT,
    0x00000299
};

SceneSetup D_8015C42C_ovl4 = {
    {
        0,
        omUpdateAll, func_800A73B0,
        ovl5_VRAM_END, 0,
        1,
        2,

        0x4000,
        0x5800,
        0x800,
        0,

        0x4800,
        0,
        0x4000,

        func_80159ED8_ovl4,
        func_8000464C,
    },
    0x00000080,
    0x00000600,
    0x00000080,
    0x00000000,
    0x00000180,
    0x00000080,
    0x00000050,
    0x0000012C,
    0x00000000,
    0x00000000,
    0x000003E7,
    0x00000080,
    0x00000100,
    0x00000088,
    0x00000000,
    0x00000058,
    0x0000000A,
    0x00000090,
    func_80159DE8_ovl4
};

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159B00_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159B68_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159C40_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159CB8_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159D70_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159D78_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159DE8_ovl4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_5/func_80159ED8_ovl4.s")

void func_80159EFC_ovl4(void) {
    s32 i;

    auStopBGM();
    D_800D6B44 = 0x99999999;
    auFunc80020C88();
    D_8015C410_ovl4.zBuffer = VI_ZBUFFER_START(320, 240, 0, 10, u16);
    viApplyScreenSettings(&D_8015C410_ovl4);
    D_8015C42C_ovl4.gtlSetup.heapSize = (u32)&gFrameBuffer[0] - (u32)ovl5_VRAM_END;

    for (i = 0; i < (SCREEN_WIDTH * SCREEN_HEIGHT); i++) {
        gFrameBuffer[0][i] = GPACK_RGBA5551(0, 0, 0, 1);
        gFrameBuffer[1][i] = GPACK_RGBA5551(0, 0, 0, 1);
    }

    gtlCreateScene(&D_8015C42C_ovl4);
}
