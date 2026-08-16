#include "common.h"
#include "config.h"
#include "types.h"
#include "cfb.h"
#include "segments.h"

#include "GObj.h"
#include "DObj.h"
#include "SPObj.h"

#include "main/anim.h"
#include "main/contpad.h"
#include "main/gtl.h"
#include "main/vi.h"

#include "ovl1/game.h"
#include "ovl1/ovl1_2.h"

// forward decl
void func_801552F8_ovl4(Gfx **arg0);
void func_80155168_ovl4(void);

//============================
//            DATA
//============================

u32 D_8015A0F0_ovl4[] = {
    0x2E018000,
    0x43160000,
    0x44C9CB46,
    0x15800000,
    0x00000000,
    0x422627F0,
    0x06280000,
    0xC02EC66C,
    0x426BCF1B,
    0x0A138000,
    0xC01369C0,
    0xBEA7B8D6,
    0x43975A95,
    0x4042D45E,
    0x42A27B97,
    0x4175DB9F,
    0x435198B8,
    0xC0C3B5AD,
    0x0C10002C,
    0x42A00000,
    0xBDDA9CA4,
    0x0C028032,
    0xC22882CE,
    0xBFB0D07A,
    0x442C76FC,
    0x40EC63B4,
    0x17800064,
    0x00000000,
    0x422627EF,
    0x08280064,
    0x4201DBB9,
    0xC1EFA18A,
    0x0C010064,
    0x42C01EB8,
    0xC0A9A7F7,
    0x04000004,
    0x2E018006,
    0x43160000,
    0x44C9CB46,
    0x2E018006,
    0x43160000,
    0x44F11224,
    0x2E01800A,
    0x43160000,
    0x4500D4ED,
    0x2E01800A,
    0x43160000,
    0x45092C8D,
    0x2E018008,
    0x43160000,
    0x45121A08,
    0x0C100038,
    0x43200000,
    0x401030DC,
    0x04000002,
    0x2E018004,
    0x43160000,
    0x4518E85E,
    0x2E018000,
    0x43480000,
    0x4518E85E,
    0x0C028032,
    0xC3200000,
    0xC045F165,
    0x44654000,
    0x400FDC91,
    0x0400000A,
    0x2E01801E,
    0x43480000,
    0x451C4000,
    0x2E01800A,
    0x43FA0000,
    0x451C4000,
    0x2E018000,
    0x43FA0000,
    0x451C4000,
    0, // ANIM_CMD_END
};

u32 D_8015A224_ovl4[] = {
    0x2E018000,
    0x43160000,
    0x44C9CB46,
    0x15800000,
    0x00000000,
    0x422627F0,
    0x06280000,
    0xC02EC66C,
    0x426BCF1B,
    0x0A138000,
    0xC01369C0,
    0xBEA7B8D6,
    0x43975A95,
    0x40237BD9,
    0x42A27B97,
    0x4175DB9F,
    0x435198B8,
    0xC0C3B5AD,
    0x0C10002C,
    0x42A00000,
    0xBDDA9CA4,
    0x0C028032,
    0xC22882CE,
    0xBFC3C242,
    0x442C76FC,
    0x40EC63B4,
    0x17800064,
    0x00000000,
    0x422627EF,
    0x08280064,
    0x4201DBB9,
    0xC1EFA18A,
    0x0C010064,
    0x43300F5D,
    0xC0132EFF,
    0x04000004,
    0x2E018006,
    0x43160000,
    0x44C9CB46,
    0x2E018006,
    0x43160000,
    0x44F11224,
    0x2E01800A,
    0x43160000,
    0x4500D4ED,
    0x2E01800A,
    0x43160000,
    0x45092C8D,
    0x2E018008,
    0x43160000,
    0x45121A08,
    0x0C100038,
    0x43700000,
    0x40A202BC,
    0x04000002,
    0x2E018004,
    0x43160000,
    0x4518E85E,
    0x2E018000,
    0x43480000,
    0x4518E85E,
    0x0C028032,
    0xC3200000,
    0xC054D0C1,
    0x44654000,
    0x3F403930,
    0x0400000A,
    0x2E01801E,
    0x43480000,
    0x451C4000,
    0x2E01800A,
    0x43FA0000,
    0x451C4000,
    0x2E018000,
    0x43FA0000,
    0x451C4000,
    0, // ANIM_CMD_END
};

u32 D_8015A358_ovl4[][7] = {
    {1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1},
};

u32 D_8015A400_ovl4[][6] = {
    {8, 9, 10, 11},
    {6, 7, 8, 9, 10},
    {6, 7, 8, 9, 10},
    {6, 7, 8, 9, 10},
    {6, 7, 8, 9, 10},
    {6, 7, 8, 9},
};

u32 D_8015A490_ovl4[] = {7, 5, 5, 5, 5, 5};
u32 D_8015A4A8_ovl4[] = {3, 2, 2, 2, 2, 2};
u32 D_8015A4C0_ovl4[] = {4, 3, 3, 3, 3, 3};
u32 D_8015A4D8_ovl4[] = {1, 1, 1, 1, 1, 1};

u32 D_8015A4F0_ovl4[][12] = {
    {0x00030014, 0x00030015, 0x00030016, 0x00030017, 0x00030018, 0x00030019, 0x0003001A, 0x0003001B},
    {0x00030021, 0x00030022, 0x00030023, 0x00030024, 0x00030025, 0x00030026, 0x00030027, 0x00030028, 0x00030029, 0x0003002A},
    {0x0003002E, 0x0003002F, 0x00030030, 0x00030031, 0x00030032, 0x00030033, 0x00030034, 0x00030035, 0x00030036, 0x00030037},
    {0x0003003B, 0x0003003C, 0x0003003D, 0x0003003E, 0x0003003F, 0x00030040, 0x00030041, 0x00030042, 0x00030043, 0x00030044},
    {0x00030048, 0x00030049, 0x0003004A, 0x0003004B, 0x0003004C, 0x0003004D, 0x0003004E, 0x0003004F, 0x00030050, 0x00030051},
    {0x00030055, 0x00030056, 0x00030057, 0x00030058, 0x00030059, 0x0003005A, 0x0003005B, 0x0003005C},
};

u32 D_8015A610_ovl4[][12] = {
    {0x0003001E, 0x0003001F, 0x00030020, 0x00030021, 0x00030022, 0x00030023, 0x00030024, 0x00030025},
    {0x0003002A, 0x0003002B, 0x0003002C, 0x0003002D, 0x0003002E, 0x0003002F, 0x00030030, 0x00030031, 0x00030032, 0x00030033},
    {0x00030037, 0x00030038, 0x00030039, 0x0003003A, 0x0003003B, 0x0003003C, 0x0003003D, 0x0003003E, 0x0003003F, 0x00030040},
    {0x00030043, 0x00030044, 0x00030045, 0x00030046, 0x00030047, 0x00030048, 0x00030049, 0x0003004A, 0x0003004B, 0x0003004C},
    {0x0003004F, 0x00030050, 0x00030051, 0x00030052, 0x00030053, 0x00030054, 0x00030055, 0x00030056, 0x00030057, 0x00030058},
    {0x0003005B, 0x0003005C, 0x0003005D, 0x0003005E, 0x0003005F, 0x00030060, 0x00030061, 0x00030062},
};

u32 D_8015A730_ovl4[][2] = {
    {0x0003001C, 0x00030026},
    {0x0003002B, 0x00030034},
    {0x00030038, 0x00030041},
    {0x00030045, 0x0003004D},
    {0x00030052, 0x00030059},
    {0x0003005D, 0x00030063},
};

u32 D_8015A760_ovl4[][2] = {
    {0x0003001D, 0x00030027},
    {0x0003002C, 0x00030035},
    {0x00030039, 0x00030042},
    {0x00030046, 0x0003004E},
    {0x00030053, 0x0003005A},
    {0x0003005E, 0x00030064},
};

Gfx D_8015A790_ovl4[] = {
    gsDPPipeSync(),
    gsSPSetGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BACK | G_LIGHTING | G_SHADING_SMOOTH),
    gsSPSetLights1(D_800BE548),
    gsSPEndDisplayList(),
};

ScreenSettings D_8015A7C0_ovl4 = {
    gFrameBuffer, D_803DA800, NULL,
    D_8012EB00,
    SCREEN_WIDTH, SCREEN_HEIGHT,
    0x00000299
};

SceneSetup D_8015A7DC_ovl4 = {
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
        func_801552F8_ovl4,
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
    func_80155168_ovl4,
};

SpriteFile D_8015A868_ovl4 = {
    0x00030206,
    1,
    0,
    0,
    {NO_COL, NO_COL, NO_COL},
    {NO_COL, NO_COL, NO_COL},
    0
};

u32 D_8015A888_ovl4[] = {
    0,
    0x00030009,
    0x0003000A,
    0x0003000B,
    0x0003000C,
    0x0003000D,
};

u32 D_8015A8A0_ovl4[] = {
    0x00030013,
    0x00030020,
    0x0003002D,
    0x0003003A,
    0x00030047,
    0x00030054,
};

u32 D_8015A8B8_ovl4[][2] = {
    {0, 0},
    {0, 0},
    {0, 0x00030036},
    {0, 0},
    {0, 0},
    {0, 0},
};

u32 D_8015A8E8_ovl4[] = {
    0x000300B8,
    0x000300BD,
    0x000300C0,
    0x000300C2,
};

u32 D_8015A8F8_ovl4[] ={
    0x00030116,
    0x00030117,
    0x00030159,
    0x0003015A,
    0x00030197,
    0x00030198,
    0x000301D6,
    0x000301D7,
};

u32 D_8015A918_ovl4 = 0x000300C4;

// TODO: struct?
u32 D_8015A91C_ovl4[] = {0x000301DA, 0};

u32 D_8015A924_ovl4[] = {6, 4, 4, 4, 4, 4};

u32 D_8015A93C_ovl4 = 0x0003001F;

// TODO: struct?
u32 D_8015A940_ovl4[] = {0, 0x00030029};

u32 D_8015A948_ovl4 = 0x0003001E;

u32 D_8015A94C_ovl4[] = {0, 0x00030028};

AnimCmd **D_8015A954_ovl4[] = {
    D_8015A0F0_ovl4,
    D_8015A224_ovl4,
    D_8015A0F0_ovl4,
    D_8015A224_ovl4,
    D_8015A0F0_ovl4,
    D_8015A224_ovl4,
    D_8015A0F0_ovl4,
};

u32 D_8015A970_ovl4[] = {
    0x0000001B,
    0x0000001A,
    0x0000001C,
    0x0000001D,
    0x0000001E,
    0x00000024,
    0x00000024,
    0x00000000,
};

#ifdef MIPS_TO_C

void func_80151DE0_ovl4(void) {
    func_80151E20_ovl4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80151DE0_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80151E00_ovl4(void) {
    func_80154DDC_ovl4();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80151E00_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80151E20_ovl4(GObj *arg0) {
    GObj *temp_v1;
    GObj *temp_v1_2;
    s32 temp_v0_2;
    s32 var_s1;
    s32 var_s7;
    u32 temp_v0_3;
    void *temp_v0;

    D_8015C69C_ovl4 = func_80152124_ovl4();
    temp_v1 = omCurrentObj;
    D_8015C698_ovl4 = temp_v1->objId;
    D_800E98E0[temp_v1->objId] = 0;
    D_800E9AA0[temp_v1->objId] = 5;
    D_800E9C60[temp_v1->objId] = 0;
    D_800E9E20[temp_v1->objId] = 0;
    if (D_800D6B84 != 0) {
        D_800E9FE0[omCurrentObj->objId].as_u32 = func_80152268_ovl4(D_800D6B98);
    } else if (D_800D6B80 != 0) {
        D_800E9FE0[temp_v1->objId].as_u32 = D_800D6B9C;
    } else {
        D_800E9FE0[temp_v1->objId].as_u32 = D_800D6B9C + 1;
    }
    D_800EA1A0[temp_v1->objId] = 0;
    omLinkGObjDL(arg0, func_800AD1A0, 0x12, 0x80000000, 0x12);
    var_s7 = 0;
    do {
        var_s1 = 0;
loop_7:
        temp_v0 = func_8015C740_ovl5(arg0, &D_8015A868_ovl4);
        temp_v0->unk24 = var_s7;
        temp_v0->unk20 = var_s1;
        if (D_800D6B98 > 0) {
            temp_v0_2 = func_800A9AA8(*(&D_8015A888_ovl4 + (D_800D6B98 * 4)), 3);
            temp_v0->unk6C = temp_v0_2;
            temp_v0->unk78 = temp_v0_2;
            temp_v0->unkCC = temp_v0_2;
            temp_v0->unkD8 = temp_v0_2;
        }
        var_s1 += 0x3F;
        if (var_s1 != 0x13B) {
            goto loop_7;
        }
        var_s7 += 0x40;
    } while (var_s7 < 0x100);
    temp_v1_2 = omCurrentObj;
    D_800DF150[temp_v1_2->objId] = func_801525E8_ovl4;
    if ((D_8015C690_ovl4 == 2) || (D_8015C690_ovl4 == 3)) {
        do {
loop_13:
            temp_v0_3 = omCurrentObj->objId;
            if (D_800E9C60[temp_v0_3] != 0) {
                D_800DF150[temp_v0_3] = NULL;
                D_800E9E20[omCurrentObj->objId] = 1;
                func_80152A48_ovl4();
            }
            ohSleep(1);
            if (D_8015C690_ovl4 == 2) {
                goto loop_13;
            }
        } while (D_8015C690_ovl4 == 3);
    }
    D_800DF150[temp_v1_2->objId] = NULL;
    D_8015C690_ovl4 = 5;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80151E20_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_80152124_ovl4(void) {
    if (D_800D6B98 != 0) {
        return 4;
    }
    if (func_80152220_ovl4(0, 2) == 2) {
        return 4;
    }
    if (func_80152220_ovl4(0, 1) == 2) {
        return 3;
    }
    if (func_80152220_ovl4(0, 0) == 2) {
        return 2;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152124_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801521AC_ovl4(s32 arg0) {
    s32 temp_v0;

    switch (D_8015C69C_ovl4) {                      /* irregular */
        case 1:
            return arg0 == 0;
        case 2:
            temp_v0 = arg0 == 0;
            if (temp_v0 == 0) {
                return arg0 == 2;
            }
            return temp_v0;
        case 3:
            return arg0 != 1;
        case 4:
            return 1;
        default:
            return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801521AC_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_80152220_ovl4(s32 arg0, u32 arg1) {
    if (arg1 >= *(&D_800BE560 + (arg0 * 4))) {
        return 0;
    }
    return *(&D_800D6BE0 + ((arg0 * 6) + arg1)) & 3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152220_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80152268_ovl4(s32 arg0) {
    s32 var_s0;

    var_s0 = *(&D_800BE560 + (arg0 * 4)) - 1;
    if (var_s0 >= 0) {
loop_1:
        if (func_80152220_ovl4(arg0, var_s0) != 0) {
            return;
        }
        var_s0 -= 1;
        if (var_s0 < 0) {

        } else {
            goto loop_1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152268_ovl4.s")
#endif

#ifdef MIPS_TO_C
s32 func_801522D0_ovl4(f32 arg0) {
    if ((arg0 > -110.0f) && (arg0 < 110.0f)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801522D0_ovl4.s")
#endif

#ifdef MIPS_TO_C
s32 func_80152318_ovl4(f32 arg0) {
    if ((arg0 > -70.0f) && (arg0 < 90.0f)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152318_ovl4.s")
#endif

#ifdef MIPS_TO_C

void *func_80152360_ovl4(void *arg0) {
    DObj *temp_t0;

    temp_t0 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild;
    arg0->unk0 = temp_t0->pos.v.x;
    arg0->unk4 = temp_t0->pos.v.y;
    arg0->unk8 = temp_t0->pos.v.z;
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152360_ovl4.s")
#endif

#ifdef MIPS_TO_C

void *func_801523A0_ovl4(void *arg0, s32 arg1, s32 arg2) {
    DObj *temp_t8;
    s32 temp_v1;

    M2C_MEMCPY_ALIGNED(sp, &D_8015A358_ovl4, 0xA8);
    temp_v1 = arg2 * 4;
    temp_t8 = D_800DFBD0[*(&D_8015C6A8_ovl4 + temp_v1)][*(sp + (arg1 * 0x1C) + temp_v1)];
    arg0->unk0 = temp_t8->pos.v.x;
    arg0->unk4 = temp_t8->pos.v.y;
    arg0->unk8 = temp_t8->pos.v.z;
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801523A0_ovl4.s")
#endif

#ifdef MIPS_TO_C

void *func_80152444_ovl4(void *arg0, s32 arg1, s32 arg2) {
    DObj *temp_t1;

    M2C_MEMCPY_ALIGNED(sp, &D_8015A400_ovl4, 0x90);
    temp_t1 = D_800DFBD0[D_8015C694_ovl4][*(sp + (arg1 * 0x18) + (arg2 * 4))];
    arg0->unk0 = temp_t1->pos.v.x;
    arg0->unk4 = temp_t1->pos.v.y;
    arg0->unk8 = temp_t1->pos.v.z;
    return arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152444_ovl4.s")
#endif

#ifdef MIPS_TO_C

u32 func_801524E4_ovl4(void) {
    f32 sp50;
    f32 sp44;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_a0;
    u32 var_s0;

    var_s0 = 0;
    temp_a0 = D_800D6B98;
loop_1:
    if ((var_s0 == 0) || (func_80152220_ovl4(temp_a0, var_s0 - 1) != 0)) {
        func_80152360_ovl4(&sp50);
        func_801523A0_ovl4(&sp44, D_800D6B98, var_s0);
        temp_f0 = sp44 - sp50;
        temp_f2 = sp4C - sp58;
        if (sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <= 35.0f) {
            return var_s0;
        }
    }
    var_s0 += 1;
    if (*(&D_800BE560 + (D_800D6B98 * 4)) < var_s0) {
        return 0x29A;
    }
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801524E4_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801525E8_ovl4(f32 arg0) {
    f32 sp18;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f12_4;
    f32 var_f12;
    struct EntityThing800E9AA0 **temp_v1;
    struct EntityThing800E9AA0 *temp_a0;
    u16 var_v0;
    u32 temp_a0_2;
    u32 temp_v0;
    u32 temp_v0_2;

    var_f12 = arg0;
    if (D_800D6B80 == 0) {
        temp_v0 = omCurrentObj->objId;
        temp_v1 = &D_800E9AA0[temp_v0];
        temp_a0 = *temp_v1;
        if (temp_a0 != NULL) {
            *temp_v1 = temp_a0 - 1;
            return;
        }
        if ((D_800E9C60[temp_v0] != 0) || (D_800E9AA0[D_8015C694_ovl4] != NULL)) {
            D_800E98E0[D_8015C698_ovl4] = 0;
            return;
        }
        if (gPlayerControllers->buttonPressed & 0x9000) {
            temp_a0_2 = D_800E9FE0[temp_v0].as_u32;
            if (temp_a0_2 == 0) {
                D_8015C690_ovl4 = 4;
                play_sound(0x276);
                D_800D6B78 = 1;
                return;
            }
            if (temp_a0_2 != 0x29A) {
                D_8015C690_ovl4 = 3;
                D_800D6B9C = D_800E9FE0[D_8015C698_ovl4].as_u32 - 1;
                D_800E9C60[omCurrentObj->objId] = 1;
                play_sound(0x275);
                return;
            }
            goto block_11;
        }
block_11:
        if (gPlayerControllers->buttonPressed & 0x4000) {
            D_8015C690_ovl4 = 4;
            play_sound(0x276);
            D_800D6B78 = 1;
            return;
        }
        var_v0 = gPlayerControllers->buttonHeld;
        if (var_v0 & 0x100) {
            temp_f12 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x + 6.0f;
            sp18 = temp_f12;
            var_f12 = temp_f12;
            if (func_801522D0_ovl4(temp_f12, &D_8015C6A0_ovl4, omCurrentObj, gPlayerControllers, D_800E9C60) != 0) {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x = var_f12;
            } else {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x = 110.0f;
            }
            goto block_22;
        }
        if (var_v0 & 0x200) {
            temp_f12_2 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x - 6.0f;
            sp18 = temp_f12_2;
            var_f12 = temp_f12_2;
            if (func_801522D0_ovl4(temp_f12_2, &D_8015C6A0_ovl4, omCurrentObj, gPlayerControllers, D_800E9C60) != 0) {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x = var_f12;
            } else {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.x = -110.0f;
            }
block_22:
            var_v0 = gPlayerControllers->buttonHeld;
        }
        if (var_v0 & 0x800) {
            temp_f12_3 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z - 6.0f;
            sp18 = temp_f12_3;
            var_f12 = temp_f12_3;
            if (func_80152318_ovl4(temp_f12_3, &D_8015C6A0_ovl4) != 0) {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z = var_f12;
            } else {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z = -70.0f;
            }
        } else if (var_v0 & 0x400) {
            temp_f12_4 = D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z + 6.0f;
            sp18 = temp_f12_4;
            var_f12 = temp_f12_4;
            if (func_80152318_ovl4(temp_f12_4, &D_8015C6A0_ovl4) != 0) {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z = var_f12;
            } else {
                D_800DE350[D_8015C6A0_ovl4]->data.dobj->firstChild->pos.v.z = 90.0f;
            }
        }
        temp_v0_2 = func_801524E4_ovl4(var_f12, &D_8015C6A0_ovl4);
        D_800E9FE0[omCurrentObj->objId].as_u32 = temp_v0_2;
        if ((temp_v0_2 != 0x29A) && (temp_v0_2 != 0)) {
            D_800D6B9C = temp_v0_2 - 1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801525E8_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80152A48_ovl4(void) {
    s32 var_s0;

    func_800B3070(0x10, 0x40000000);
    switch (D_8015C690_ovl4) {                      /* irregular */
        case 2:
            func_800B2F54(0x10, *(&D_8015A954_ovl4 + (D_800D6B98 * 4)), 0x42480000);
block_5:
            var_s0 = 0;
            do {
                func_800A71A0(0x10);
                if ((var_s0 == 0x22) && (D_8015C690_ovl4 == 3)) {
                    D_8015C690_ovl4 = 5;
                }
                ohSleep(1);
                var_s0 += 1;
            } while (var_s0 != 0x32);
            return;
        case 3:
            func_800B2F54(0x10, *(&D_8015A954_ovl4 + (D_800D6B98 * 4)), 0);
            goto block_5;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152A48_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80152B50_ovl4(void *arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a2;
    void *temp_s1;

    temp_s1 = (arg1 * 8) + &D_8015A8F8_ovl4;
    temp_a2 = temp_s1->unk0;
    if (temp_a2 != 0) {
        func_800AA018(temp_a2, temp_a2);
    }
    temp_a0 = temp_s1->unk4;
    if (temp_a0 != 0) {
        func_800AA018(temp_a0);
    }
    if (func_800AF230() == 0) {
        do {
            if ((temp_s1 == &D_8015A8F8_ovl4) && (arg0->unk40 == 28.0f)) {
                play_sound(0xE2);
            }
            ohSleep(1);
        } while (func_800AF230() == 0);
    }
    D_800EA1A0[D_8015C698_ovl4] = 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152B50_ovl4.s")
#endif

#ifdef MIPS_TO_C

DObj *func_80152C34_ovl4(s32 arg0, s32 arg1) {
    DObj *sp64;

    sp4C[0].unk0 = D_8015A490_ovl4.unk0;
    sp4C[0].unk4 = D_8015A490_ovl4.unk4;
    sp4C[0].unk8 = D_8015A490_ovl4.unk8;
    sp4C[0].unkC = D_8015A490_ovl4.unkC;
    sp4C[0].unk10 = D_8015A490_ovl4.unk10;
    sp4C[0].unk14 = D_8015A490_ovl4.unk14;
    sp34[0].unk0 = D_8015A4A8_ovl4.unk0;
    sp34[0].unk4 = D_8015A4A8_ovl4.unk4;
    sp34[0].unk8 = D_8015A4A8_ovl4.unk8;
    sp34[0].unkC = D_8015A4A8_ovl4.unkC;
    sp34[0].unk10 = D_8015A4A8_ovl4.unk10;
    sp34[0].unk14 = D_8015A4A8_ovl4.unk14;
    sp1C[0].unk0 = D_8015A4C0_ovl4.unk0;
    sp1C[0].unk4 = D_8015A4C0_ovl4.unk4;
    sp1C[0].unk8 = D_8015A4C0_ovl4.unk8;
    sp1C[0].unkC = D_8015A4C0_ovl4.unkC;
    sp1C[0].unk10 = D_8015A4C0_ovl4.unk10;
    sp1C[0].unk14 = D_8015A4C0_ovl4.unk14;
    sp4[0].unk0 = D_8015A4D8_ovl4.unk0;
    sp4[0].unk4 = D_8015A4D8_ovl4.unk4;
    sp4[0].unk8 = D_8015A4D8_ovl4.unk8;
    sp4[0].unkC = D_8015A4D8_ovl4.unkC;
    sp4[0].unk10 = D_8015A4D8_ovl4.unk10;
    sp4[0].unk14 = D_8015A4D8_ovl4.unk14;
    switch (arg0) {                                 /* irregular */
        case 0:
            sp64 = D_800DFBD0[D_8015C694_ovl4][(&sp4C[0])[arg1]];
            break;
        case 1:
            sp64 = D_800DFBD0[D_8015C694_ovl4][(&sp34[0])[arg1]];
            break;
        case 2:
            sp64 = D_800DFBD0[D_8015C694_ovl4][(&sp1C[0])[arg1]];
            break;
        case 3:
            sp64 = D_800DFBD0[D_8015C694_ovl4][(&sp4[0])[arg1]];
            break;
    }
    return sp64;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152C34_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80152E38_ovl4(s32 arg0) {
    Vector sp50;
    Vector sp44;
    DObj *temp_v0;
    GObj *temp_s7;

    temp_s7 = D_800DE350[omCurrentObj->objId];
    if (func_801521AC_ovl4() == 0) {
        func_800B1900(omCurrentObj->unk2);
    }
    D_800E98E0[omCurrentObj->objId] = arg0;
    D_800E9AA0[omCurrentObj->objId] = 1;
    temp_v0 = func_80152C34_ovl4(D_800E98E0[omCurrentObj->objId], D_800D6B98);
    func_800B2340(&sp50, temp_v0, D_8015C694_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = (bitwise f32) sp50;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp50.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp50.z;
    func_800B26D8(&sp44, temp_v0, D_8015C694_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = (bitwise f32) sp44;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp44.z;
    func_800A9864(*(&D_8015A8E8_ovl4 + (arg0 * 4)), 0x1869F, 0x10);
loop_3:
    if ((D_800D6B78 != 1) && (D_800E9E20[D_8015C698_ovl4] != 0)) {
        D_800E9AA0[omCurrentObj->objId] = NULL;
        func_80152B50_ovl4(temp_s7, arg0);
    }
    ohSleep(1);
    goto loop_3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80152E38_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_8015306C_ovl4(void) {
    Vector sp3C;
    Vector sp30;

    func_800B2340(&sp3C, D_800DFBD0[D_8015C694_ovl4][*(&D_8015A924_ovl4 + (D_800D6B98 * 4))], D_8015C694_ovl4);
    gEntitiesNextPosXArray[omCurrentObj->objId] = (bitwise f32) sp3C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp3C.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp3C.z;
    func_800B26D8(&sp30, D_800DFBD0[D_8015C694_ovl4][*(&D_8015A924_ovl4 + (D_800D6B98 * 4))], D_8015C694_ovl4);
    gEntitiesAngleXArray[omCurrentObj->objId] = (bitwise f32) sp30;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp30.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp30.z;
    func_800A9864(D_8015A918_ovl4, 0x1869F, 0x10);
    if ((D_800D6B78 == 1) || (D_800E9E20[D_8015C698_ovl4] == 0)) {
        do {
loop_2:
            ohSleep(1);
            if (D_800D6B78 == 1) {
                goto loop_2;
            }
        } while (D_800E9E20[D_8015C698_ovl4] == 0);
    }
    if (D_8015A91C_ovl4.unk0 != 0) {
        func_800AA018(D_8015A91C_ovl4.unk0);
    }
    if (D_8015A91C_ovl4.unk4 != 0) {
        func_800AA018(D_8015A91C_ovl4.unk4);
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015306C_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_80153294_ovl4(s32 arg0, s32 arg1, s32 arg2) {
    if (*(&D_800D6BC8 + ((arg0 * 4) + arg1)) & (1 << arg2)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153294_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801532CC_ovl4(s32 arg0, s32 arg1) {
    if ((arg1 + 1) == *(&D_800BE560 + (arg0 * 4))) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801532CC_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801532FC_ovl4(s32 arg0) {
    if (*(&D_800D6BC0 + arg0) != 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801532FC_ovl4.s")
#endif

#ifdef MIPS_TO_C

s32 func_80153324_ovl4(s32 arg0) {
    if ((D_800D6B98 == 5) && (func_801532CC_ovl4(D_800D6B98, arg0, D_800D6B98) != 0) && (D_800D6BC0.unk5 != 0) && (D_800D6BC0.unk6 == 0) && (saveCheckCutsceneWatched(0xD) == 0) && (savePercentComplete == 0x64)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153324_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801533A8_ovl4(s32 arg0) {
    ? sp170;
    ? sp50;
    f32 temp_f20;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s0_3;
    s32 var_s1;

    M2C_MEMCPY_ALIGNED(&sp170, &D_8015A4F0_ovl4, 0x120);
    M2C_MEMCPY_ALIGNED(&sp50, &D_8015A610_ovl4, 0x120);
    if (func_80152220_ovl4(D_800D6B98, arg0) == 0) {
        func_800B1900(omCurrentObj->unk2);
    }
    *(&D_8015C6AC_ovl4 + (arg0 * 4)) = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_80153AB0_ovl4;
    var_s1 = arg0 * 8;
    if (func_80152220_ovl4(D_800D6B98, arg0) == 2) {
        var_s1 = arg0 * 8;
        if ((D_800D6B80 != 0) && ((arg0 + 1) == D_800D6B9C)) {
            var_s1 = arg0 * 8;
            func_800A9864(*(&sp170 + (D_800D6B98 * 0x30) + var_s1), 0x1869F, 0x10);
            func_800AA018(*(&sp50 + (D_800D6B98 * 0x30) + var_s1));
        } else {
            func_800A9864((&sp170 + (D_800D6B98 * 0x30) + var_s1)->unk4, 0x1869F, 0x10);
            func_800AA018((&sp50 + (D_800D6B98 * 0x30) + var_s1)->unk4);
        }
    } else {
        func_800A9864(*(&sp170 + (D_800D6B98 * 0x30) + var_s1), 0x1869F, 0x10);
        func_800AA018(*(&sp50 + (D_800D6B98 * 0x30) + var_s1));
    }
    if ((arg0 + 1) == D_800E9FE0[D_8015C698_ovl4].as_u32) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
    }
    if (D_800D6B80 != 0) {
        if (arg0 == D_800D6B9C) {
            func_800AFBB4(0, omCurrentObj);
        }
        var_s0 = 0;
        play_sound(0xF2);
        if (D_800D6B80 != 0) {
            do {
                if ((arg0 + 1) == D_800D6B9C) {
                    func_8000BBE0(D_800DE350[omCurrentObj->objId]);
                    if (((var_s0 / 2) % 2) != 0) {
                        func_800A9760(*(&sp170 + (D_800D6B98 * 0x30) + var_s1));
                    } else {
                        func_800A9760((&sp170 + (D_800D6B98 * 0x30) + var_s1)->unk4);
                    }
                }
                var_s0 += 1;
                ohSleep(1);
            } while (D_800D6B80 != 0);
        }
        if ((arg0 + 1) == D_800D6B9C) {
            func_8000BBE0(D_800DE350[omCurrentObj->objId]);
            func_800A9760((&sp170 + (D_800D6B98 * 0x30) + var_s1)->unk4);
            func_800A9F98((&sp50 + (D_800D6B98 * 0x30) + var_s1)->unk4, D_800DE350[omCurrentObj->objId]->animTimer);
        }
        play_sound(0xF3);
        if (arg0 == D_800D6B9C) {
            var_s0_2 = 0;
            ohSleep(0xA);
            if (0.0f < 15.0f) {
                do {
                    if (((var_s0_2 / 2) % 2) != 0) {
                        func_800AFBB4(0, omCurrentObj);
                    } else {
                        func_800AFBB4(1, omCurrentObj);
                    }
                    ohSleep(1);
                    var_s0_2 += 1;
                } while (var_s0_2 < 15.0f);
            }
        }
        func_800AFBB4(1, omCurrentObj);
    }
    var_s0_3 = 0;
loop_30:
    if ((arg0 + 1) == D_800E9FE0[D_8015C698_ovl4].as_u32) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
    }
    if (func_80153324_ovl4(arg0) != 0) {
        temp_f20 = D_800DE350[omCurrentObj->objId]->animTimer;
        if (((var_s0_3 / 2) % 2) != 0) {
            if (func_800AA888(*(&sp170 + (D_800D6B98 * 0x30) + var_s1)) == 0) {
                func_8000BBE0(D_800DE350[omCurrentObj->objId]);
                func_800A9760(*(&sp170 + (D_800D6B98 * 0x30) + var_s1));
                func_800A9F98(*(&sp50 + (D_800D6B98 * 0x30) + var_s1), temp_f20);
            }
        } else if (func_800AA888((&sp170 + (D_800D6B98 * 0x30) + var_s1)->unk4) == 0) {
            func_8000BBE0(D_800DE350[omCurrentObj->objId]);
            func_800A9760((&sp170 + (D_800D6B98 * 0x30) + var_s1)->unk4);
            func_800A9F98((&sp50 + (D_800D6B98 * 0x30) + var_s1)->unk4, temp_f20);
        }
        var_s0_3 += 1;
    }
    ohSleep(1);
    goto loop_30;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801533A8_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80153AB0_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153AB0_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80153AEC_ovl4(void) {
    ? sp30;

    M2C_MEMCPY_ALIGNED(&sp30, &D_8015A730_ovl4, 0x30);
    D_8015C6A8_ovl4 = omCurrentObj->objId;
    D_800DF150[omCurrentObj->objId] = func_80153C3C_ovl4;
    func_800A9864(*(&sp30 + (D_800D6B98 * 8)), 0x1869F, 0x10);
    func_800AA018((&sp30 + (D_800D6B98 * 8))->unk4);
loop_1:
    if (D_800E9FE0[D_8015C698_ovl4].as_u32 == 0) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(0.0f);
        func_800AED20(0.0f);
    }
    ohSleep(1);
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153AEC_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80153C3C_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153C3C_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80153C78_ovl4(void) {
    ? sp98;
    f32 sp8C;
    f32 sp80;
    DObj *temp_t0;
    DObj *temp_t6;
    DObj *temp_t8;
    DObj *var_v0;
    GObj *temp_a3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f12;
    f32 var_f14;
    f32 var_f20;
    f32 var_f22;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;

    M2C_MEMCPY_ALIGNED(&sp98, &D_8015A760_ovl4, 0x30);
    D_8015C6A0_ovl4 = omCurrentObj->objId;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_8015427C_ovl4;
    func_800A9864(*(&sp98 + (D_800D6B98 * 8)), 0x1869F, 0x10, omCurrentObj);
    func_800A9F98((sp + (D_800D6B98 * 8))->unk9C, D_800E9FE0[D_8015C698_ovl4].as_u32);
    if (D_800E9FE0[D_8015C698_ovl4].as_u32 == 0) {
        animUpdateModelTreeAnimation(D_800DE350[omCurrentObj->objId]);
    }
    func_800AF408();
    temp_a3 = omCurrentObj;
loop_3:
    if (D_800E98E0[temp_a3->objId] != 0) {
        D_800E9AA0[D_8015C698_ovl4] = 1;
        temp_t0 = D_800DE350[temp_a3->objId]->data.dobj->firstChild;
        sp8C.unk0 = temp_t0->pos.v.x;
        sp8C.unk4 = temp_t0->pos.v.y;
        sp8C.unk8 = temp_t0->pos.v.z;
        func_800A9F98((sp + (D_800D6B98 * 8))->unk9C, D_800E9FE0[D_8015C698_ovl4].as_u32);
        if (D_800E9FE0[D_8015C698_ovl4].as_u32 == 0) {
            animUpdateModelTreeAnimation(D_800DE350[omCurrentObj->objId]);
        }
        temp_t6 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
        sp80.unk0 = temp_t6->pos.v.x;
        sp80.unk4 = temp_t6->pos.v.y;
        sp80.unk8 = temp_t6->pos.v.z;
        func_800AF408();
        temp_t8 = D_800DE350[omCurrentObj->objId]->data.dobj->firstChild;
        temp_t8->pos.v.x = sp8C.unk0;
        temp_t8->pos.v.y = sp8C.unk4;
        temp_t8->pos.v.z = sp8C.unk8;
        if (sp88 < sp94) {
            var_f12 = -(sp88 - sp94);
        } else {
            var_f12 = sp88 - sp94;
        }
        if (sp80 < sp8C) {
            var_f14 = -(sp80 - sp8C);
        } else {
            var_f14 = sp80 - sp8C;
        }
        temp_f0 = atan2f(var_f12, var_f14);
        if (sp8C < sp80) {
            var_f22 = cosf(temp_f0) * 50.0f;
        } else {
            var_f22 = -(cosf(temp_f0) * 50.0f);
        }
        if (sp94 < sp88) {
            var_f20 = sinf(temp_f0) * 50.0f;
        } else {
            var_f20 = -(sinf(temp_f0) * 50.0f);
        }
loop_18:
        temp_v1 = omCurrentObj->objId;
        var_v1 = temp_v1 * 4;
        var_v0 = D_800DE350[temp_v1]->data.dobj->firstChild;
        temp_f0_2 = var_v0->pos.v.x;
        if (sp80 != temp_f0_2) {
            var_v0->pos.v.x = temp_f0_2 + var_f22;
            if (var_f22 > 0.0f) {
                temp_v1_2 = omCurrentObj->objId;
                var_v1 = temp_v1_2 * 4;
                var_v0 = D_800DE350[temp_v1_2]->data.dobj->firstChild;
                if (sp80 < var_v0->pos.v.x) {
                    var_v0->pos.v.x = sp80;
                    temp_v1_3 = omCurrentObj->objId;
                    var_v1 = temp_v1_3 * 4;
                    var_v0 = D_800DE350[temp_v1_3]->data.dobj->firstChild;
                }
            } else {
                temp_v1_4 = omCurrentObj->objId;
                var_v1 = temp_v1_4 * 4;
                var_v0 = D_800DE350[temp_v1_4]->data.dobj->firstChild;
                if (var_v0->pos.v.x < sp80) {
                    var_v0->pos.v.x = sp80;
                    temp_v1_5 = omCurrentObj->objId;
                    var_v1 = temp_v1_5 * 4;
                    var_v0 = D_800DE350[temp_v1_5]->data.dobj->firstChild;
                }
            }
        }
        temp_f0_3 = var_v0->pos.v.z;
        if (sp88 != temp_f0_3) {
            var_v0->pos.v.z = temp_f0_3 + var_f20;
            if (var_f20 > 0.0f) {
                temp_v1_6 = omCurrentObj->objId;
                var_v1 = temp_v1_6 * 4;
                var_v0 = D_800DE350[temp_v1_6]->data.dobj->firstChild;
                if (sp88 < var_v0->pos.v.z) {
                    var_v0->pos.v.z = sp88;
                    temp_v1_7 = omCurrentObj->objId;
                    var_v1 = temp_v1_7 * 4;
                    var_v0 = D_800DE350[temp_v1_7]->data.dobj->firstChild;
                }
            } else {
                temp_v1_8 = omCurrentObj->objId;
                var_v1 = temp_v1_8 * 4;
                var_v0 = D_800DE350[temp_v1_8]->data.dobj->firstChild;
                if (var_v0->pos.v.z < sp88) {
                    var_v0->pos.v.z = sp88;
                    temp_v1_9 = omCurrentObj->objId;
                    var_v1 = temp_v1_9 * 4;
                    var_v0 = D_800DE350[temp_v1_9]->data.dobj->firstChild;
                }
            }
        }
        if (sp80 != var_v0->pos.v.x) {
block_33:
            D_800E9AA0[D_8015C698_ovl4] = 1;
            ohSleep(1);
            goto loop_18;
        }
        if (sp88 != var_v0->pos.v.z) {
            goto block_33;
        }
        *(D_800E98E0 + var_v1) = 0;
        goto loop_3;
    }
    ohSleep(1);
    goto loop_3;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80153C78_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_8015427C_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015427C_ovl4.s")
#endif

#ifdef MIPS_TO_C

f32 func_801542B8_ovl4(s32 arg0, ? arg1) {
    u8 sp38;
    f32 var_f2;
    s32 var_s0;
    u8 *var_s1;

    var_s0 = 0;
    if (func_801532CC_ovl4() != 0) {
        if (func_801532FC_ovl4(arg0) != 0) {
            return 9.0f;
        }
        return 8.0f;
    }
    var_s1 = &sp38;
    do {
        var_s0 += 1;
        if (func_80153294_ovl4(arg0, arg1, var_s0) != 0) {
            *var_s1 = 1;
        } else {
            *var_s1 = 0;
        }
        var_s1 += 1;
    } while (var_s0 != 3);
    var_f2 = 0.0f;
    if (sp38 != 0) {
        var_f2 = 0.0f + 4.0f;
    }
    if (sp39 != 0) {
        var_f2 += 2.0f;
    }
    if (sp3A != 0) {
        var_f2 += 1.0f;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801542B8_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801543C8_ovl4(void) {
    f32 sp7C;
    GObj *temp_a1;
    GObj *temp_a1_2;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v1_3;
    f32 *temp_v1_6;
    f32 *temp_v1_9;
    f32 *var_v0_2;
    f32 *var_v0_3;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f0_2;
    s32 *temp_a2;
    s32 var_a0;
    s32 var_s7;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 var_v0;

    var_s7 = 1;
    D_800DF150[omCurrentObj->objId] = func_80154880_ovl4;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9864(D_8015A93C_ovl4, 0x1869F, 0x10);
    temp_a1 = omCurrentObj;
    var_v0 = D_800E9FE0[D_8015C698_ovl4].as_u32;
    D_800E98E0[temp_a1->objId] = var_v0 + 1;
loop_1:
    temp_v1 = temp_a1->objId;
    var_v1 = temp_v1 * 4;
    temp_a2 = &D_800E98E0[temp_v1];
    var_a0 = *temp_a2;
    if (var_a0 != var_v0) {
        *temp_a2 = var_v0;
        temp_v1_2 = temp_a1->objId;
        var_v1 = temp_v1_2 * 4;
        var_a0 = D_800E98E0[temp_v1_2];
        var_v0_2 = &gEntitiesScaleXArray[temp_v1_2];
        if ((var_a0 == 0x29A) || (var_a0 == 0)) {
            var_f0 = *var_v0_2;
            if (var_f0 > 0.0f) {
                do {
                    *var_v0_2 = var_f0 + -0.4f;
                    temp_v1_3 = &gEntitiesScaleYArray[temp_a1->objId];
                    *temp_v1_3 += -0.4f;
                    temp_a0 = &gEntitiesScaleZArray[temp_a1->objId];
                    *temp_a0 += -0.4f;
                    temp_v0 = &gEntitiesScaleXArray[temp_a1->objId];
                    if (*temp_v0 < 0.0f) {
                        *temp_v0 = 0.0f;
                        gEntitiesScaleYArray[temp_a1->objId] = 0.0f;
                        gEntitiesScaleZArray[temp_a1->objId] = 0.0f;
                    }
                    ohSleep(1);
                    temp_v1_4 = omCurrentObj->objId;
                    var_v1 = temp_v1_4 * 4;
                    var_v0_2 = &gEntitiesScaleXArray[temp_v1_4];
                    var_f0 = *var_v0_2;
                } while (var_f0 > 0.0f);
                var_a0 = D_800E98E0[temp_v1_4];
            }
        } else {
            if (var_s7 != 0) {
                var_s7 = 0;
            } else {
                play_sound(0x277);
                temp_a1_2 = omCurrentObj;
                temp_v1_5 = temp_a1_2->objId;
                var_v1 = temp_v1_5 * 4;
                var_v0_3 = &gEntitiesScaleXArray[temp_v1_5];
                var_f0_2 = *var_v0_3;
                if (var_f0_2 > 0.0f) {
                    do {
                        *var_v0_3 = var_f0_2 + -0.4f;
                        temp_v1_6 = &gEntitiesScaleYArray[temp_a1_2->objId];
                        *temp_v1_6 += -0.4f;
                        temp_a0_2 = &gEntitiesScaleZArray[temp_a1_2->objId];
                        *temp_a0_2 += -0.4f;
                        temp_v0_2 = &gEntitiesScaleXArray[temp_a1_2->objId];
                        if (*temp_v0_2 < 0.0f) {
                            *temp_v0_2 = 0.0f;
                            gEntitiesScaleYArray[temp_a1_2->objId] = 0.0f;
                            gEntitiesScaleZArray[temp_a1_2->objId] = 0.0f;
                        }
                        ohSleep(1);
                        temp_v1_7 = omCurrentObj->objId;
                        var_v1 = temp_v1_7 * 4;
                        var_v0_3 = &gEntitiesScaleXArray[temp_v1_7];
                        var_f0_2 = *var_v0_3;
                    } while (var_f0_2 > 0.0f);
                }
            }
            func_800A9F98(D_8015A940_ovl4.unk4, func_801542B8_ovl4(D_800D6B98, *(D_800E98E0 + var_v1) - 1));
            func_80152444_ovl4(&sp7C, D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1);
            gEntitiesNextPosXArray[omCurrentObj->objId] = sp7C;
            gEntitiesNextPosYArray[omCurrentObj->objId] = sp80;
            gEntitiesNextPosZArray[omCurrentObj->objId] = sp84;
            temp_v1_8 = omCurrentObj->objId;
            var_v1 = temp_v1_8 * 4;
            var_a0 = D_800E98E0[temp_v1_8];
        }
    }
    if (var_a0 != 0x29A) {
        temp_v0_3 = gEntitiesScaleXArray + var_v1;
        if (var_a0 != 0) {
            temp_f0 = *temp_v0_3;
            if (temp_f0 < 1.0f) {
                *temp_v0_3 = temp_f0 + 0.4f;
                temp_v1_9 = &gEntitiesScaleYArray[temp_a1->objId];
                *temp_v1_9 += 0.4f;
                temp_a0_3 = &gEntitiesScaleZArray[temp_a1->objId];
                *temp_a0_3 += 0.4f;
                temp_v0_4 = &gEntitiesScaleXArray[temp_a1->objId];
                if (*temp_v0_4 > 1.0f) {
                    *temp_v0_4 = 1.0f;
                    gEntitiesScaleYArray[temp_a1->objId] = 1.0f;
                    gEntitiesScaleZArray[temp_a1->objId] = 1.0f;
                }
            }
        }
    }
    ohSleep(1);
    var_v0 = D_800E9FE0[D_8015C698_ovl4].as_u32;
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801543C8_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80154880_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80154880_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801548BC_ovl4(void) {
    f32 sp7C;
    GObj *temp_a1;
    GObj *temp_a1_2;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *temp_v1_3;
    f32 *temp_v1_6;
    f32 *temp_v1_9;
    f32 *var_v0;
    f32 *var_v0_2;
    f32 temp_f0;
    f32 var_f0;
    f32 var_f0_2;
    s32 *temp_v0;
    s32 var_a0;
    s32 var_fp;
    s32 var_v1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 var_a2;

    var_fp = 1;
    D_800DF150[omCurrentObj->objId] = func_80154DA0_ovl4;
    func_800AECC0(0.0f);
    func_800AED20(0.0f);
    func_800A9864(D_8015A948_ovl4, 0x1869F, 0x10);
    temp_a1 = omCurrentObj;
    var_a2 = D_800E9FE0[D_8015C698_ovl4].as_u32;
    D_800E98E0[temp_a1->objId] = var_a2 + 1;
loop_1:
    temp_v1 = temp_a1->objId;
    var_v1 = temp_v1 * 4;
    temp_v0 = &D_800E98E0[temp_v1];
    var_a0 = *temp_v0;
    if (var_a0 != var_a2) {
        *temp_v0 = var_a2;
        temp_v1_2 = temp_a1->objId;
        var_v1 = temp_v1_2 * 4;
        var_a0 = D_800E98E0[temp_v1_2];
        var_v0 = &gEntitiesScaleXArray[temp_v1_2];
        if ((var_a0 == 0x29A) || (var_a0 == 0)) {
            var_f0 = *var_v0;
            if (var_f0 > 0.0f) {
                do {
                    *var_v0 = var_f0 + -0.4f;
                    temp_v1_3 = &gEntitiesScaleYArray[temp_a1->objId];
                    *temp_v1_3 += -0.4f;
                    temp_a0 = &gEntitiesScaleZArray[temp_a1->objId];
                    *temp_a0 += -0.4f;
                    temp_v0_2 = &gEntitiesScaleXArray[temp_a1->objId];
                    if (*temp_v0_2 < 0.0f) {
                        *temp_v0_2 = 0.0f;
                        gEntitiesScaleYArray[temp_a1->objId] = 0.0f;
                        gEntitiesScaleZArray[temp_a1->objId] = 0.0f;
                    }
                    ohSleep(1);
                    temp_v1_4 = omCurrentObj->objId;
                    var_v1 = temp_v1_4 * 4;
                    var_v0 = &gEntitiesScaleXArray[temp_v1_4];
                    var_f0 = *var_v0;
                } while (var_f0 > 0.0f);
                var_a0 = D_800E98E0[temp_v1_4];
            }
        } else {
            if (var_fp != 0) {
                var_fp = 0;
            } else {
                play_sound(0x277);
                temp_a1_2 = omCurrentObj;
                temp_v1_5 = temp_a1_2->objId;
                var_v1 = temp_v1_5 * 4;
                var_v0_2 = &gEntitiesScaleXArray[temp_v1_5];
                var_f0_2 = *var_v0_2;
                if (var_f0_2 > 0.0f) {
                    do {
                        *var_v0_2 = var_f0_2 + -0.4f;
                        temp_v1_6 = &gEntitiesScaleYArray[temp_a1_2->objId];
                        *temp_v1_6 += -0.4f;
                        temp_a0_2 = &gEntitiesScaleZArray[temp_a1_2->objId];
                        *temp_a0_2 += -0.4f;
                        temp_v0_3 = &gEntitiesScaleXArray[temp_a1_2->objId];
                        if (*temp_v0_3 < 0.0f) {
                            *temp_v0_3 = 0.0f;
                            gEntitiesScaleYArray[temp_a1_2->objId] = 0.0f;
                            gEntitiesScaleZArray[temp_a1_2->objId] = 0.0f;
                        }
                        ohSleep(1);
                        temp_v1_7 = omCurrentObj->objId;
                        var_v1 = temp_v1_7 * 4;
                        var_v0_2 = &gEntitiesScaleXArray[temp_v1_7];
                        var_f0_2 = *var_v0_2;
                    } while (var_f0_2 > 0.0f);
                }
            }
            if (func_801532CC_ovl4(D_800D6B98, *(D_800E98E0 + var_v1) - 1) != 0) {
                func_800A9F98(D_8015A94C_ovl4.unk4, 0.0f);
            } else {
                func_800A9F98(D_8015A94C_ovl4.unk4, D_800E98E0[omCurrentObj->objId]);
            }
            func_80152444_ovl4(&sp7C, D_800D6B98, D_800E98E0[omCurrentObj->objId] - 1);
            gEntitiesNextPosXArray[omCurrentObj->objId] = sp7C;
            gEntitiesNextPosYArray[omCurrentObj->objId] = sp80;
            gEntitiesNextPosZArray[omCurrentObj->objId] = sp84;
            temp_v1_8 = omCurrentObj->objId;
            var_v1 = temp_v1_8 * 4;
            var_a0 = D_800E98E0[temp_v1_8];
        }
    }
    if (var_a0 != 0x29A) {
        temp_v0_4 = gEntitiesScaleXArray + var_v1;
        if (var_a0 != 0) {
            temp_f0 = *temp_v0_4;
            if (temp_f0 < 1.0f) {
                *temp_v0_4 = temp_f0 + 0.4f;
                temp_v1_9 = &gEntitiesScaleYArray[temp_a1->objId];
                *temp_v1_9 += 0.4f;
                temp_a0_3 = &gEntitiesScaleZArray[temp_a1->objId];
                *temp_a0_3 += 0.4f;
                temp_v0_5 = &gEntitiesScaleXArray[temp_a1->objId];
                if (*temp_v0_5 > 1.0f) {
                    *temp_v0_5 = 1.0f;
                    gEntitiesScaleYArray[temp_a1->objId] = 1.0f;
                    gEntitiesScaleZArray[temp_a1->objId] = 1.0f;
                }
            }
        }
    }
    ohSleep(1);
    var_a2 = D_800E9FE0[D_8015C698_ovl4].as_u32;
    goto loop_1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801548BC_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80154DA0_ovl4(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_8015C694_ovl4];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80154DA0_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80154DDC_ovl4(s32 arg0) {
    GObj *temp_v0;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 var_v1;
    struct EntityThing800E9AA0 *temp_a1;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 var_v1_2;

    temp_v0 = omCurrentObj;
    temp_v1 = temp_v0->objId;
    var_v1 = temp_v1 * 4;
    temp_a1 = D_800E9AA0[temp_v1];
    switch (temp_a1) {
        case 1:
            func_80153AEC_ovl4(temp_a1);
            var_v1_2 = omCurrentObj->objId;
block_9:
            var_v1 = var_v1_2 * 4;
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            func_801533A8_ovl4(temp_a1 - 2, temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
        case 8:
        case 9:
        case 10:
        case 11:
            func_80152E38_ovl4(temp_a1 - 8, temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
        case 12:
            func_8015306C_ovl4(temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
        case 15:
            func_80153C78_ovl4(temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
        case 13:
            func_801543C8_ovl4(temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
        case 14:
            func_801548BC_ovl4(temp_a1);
            var_v1_2 = omCurrentObj->objId;
            goto block_9;
    }
    *(D_800E3750 + var_v1) = 0.0f;
    temp_v1_2 = temp_v0->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[temp_v0->objId] = 65535.0f;
    gEntitiesNextPosXArray[temp_v0->objId] = 0.0f;
    gEntitiesNextPosYArray[temp_v0->objId] = 0.0f;
    gEntitiesNextPosZArray[temp_v0->objId] = 0.0f;
    D_8015C694_ovl4 = temp_v0->objId;
    D_800E98E0[temp_v0->objId] = D_800D6B9C;
    D_800E9AA0[temp_v0->objId] = NULL;
    func_800A9864(*(&D_8015A8A0_ovl4 + (D_800D6B98 * 4)), 0x1869F, 0x10, D_800E3750);
    var_v0 = (D_800D6B98 * 8) + &D_8015A8B8_ovl4;
    temp_a0 = *var_v0;
    if (temp_a0 != 0) {
        func_800AA018(temp_a0);
        var_v0 = (D_800D6B98 * 8) + &D_8015A8B8_ovl4;
    }
    temp_a0_2 = var_v0->unk4;
    if (temp_a0_2 != 0) {
        func_800AA018(temp_a0_2);
    }
    if (D_800D6B80 != 0) {
        ohSleep(0x14);
        D_800D6B80 = 0;
        D_800E9AA0[D_8015C698_ovl4] = 0x1F;
        ohSleep(0xA);
        ohSleep(0xF);
        ohSleep(5);
        D_800E9FE0[D_8015C698_ovl4].as_u32 = D_800D6B9C + 1;
        D_800E98E0[D_8015C6A0_ovl4] = 1;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80154DDC_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801550D4_ovl4(void) {
    D_8015C690_ovl4 = 2;
    D_800D6B78 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801550D4_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801550EC_ovl4(s32 arg0) {
    if ((D_800D6B24 == 0) && (D_8015C690_ovl4 == 5)) {
        utilSetRectColorFullScreen(0, 0, 0);
        if (D_800D6B78 != 0) {
            utilSpawnRect(0, 0x10, 2);
            return;
        }
        utilSpawnRect(0, 8, 2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801550EC_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_80155168_ovl4(void) {
    struct EntityThing800E9AA0 *var_s0;

    gameSetUpdateRate(2.0f);
    ohCreateCameraWrapper(0x19, 0x80000000, 0x63, 1, 0);
    func_800AE048(0x80);
    func_800AE0F0();
    func_800A6E64();
    func_800A78D0(0);
    func_800A8724(0);
    func_800A7A40();
    func_801550D4_ovl4();
    func_800A6BC0(3);
    func_800A70C4(0x10, 0x422627F0, 0x477FFF00, 0x43480000, 16384.0f);
    func_800B3070(0x10, 0x40000000);
    func_800B2F54(0x10, *(&D_8015A954_ovl4 + (D_800D6B98 * 4)), 0);
    func_800A71A0(0x10);
    request_track_3(3, 0, 0x70);
    var_s0 = NULL;
    do {
        D_800E9AA0[request_track_general(4, 0, 0x70)] = var_s0;
        var_s0 += 1;
    } while (var_s0 != 0x10);
    play_music(0, *(&D_8015A970_ovl4 + (D_800D6B98 * 4)));
    HS64_omMakeGObj(0, func_801550EC_ovl4, 0x1A, 0x80000000);
    utilSetRectColorFullScreen(0, 0, 0);
    utilSpawnRect(0xFF, -0x10, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_80155168_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_801552F8_ovl4(void **arg0) {
    void *temp_v1;

    temp_v1 = *arg0;
    *arg0 = temp_v1 + 8;
    temp_v1->unk0 = 0xDE000000;
    temp_v1->unk4 = &D_8015A790_ovl4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_801552F8_ovl4.s")
#endif

#ifdef MIPS_TO_C

void func_8015531C_ovl4(void) {
    ? *var_v1;
    u16 (*var_a0)[0x11F80];

    D_8015A7C0_ovl4.zBuffer = D_8012EB00 - 0x1900;
    viApplyScreenSettings(&D_8015A7C0_ovl4);
    D_8015A7DC_ovl4.gtlSetup.heapSize = gFrameBuffer - &D_8018EE60;
    var_v1 = &D_803D6900;
    var_a0 = gFrameBuffer;
    do {
        var_a0[0][0] = 1;
        var_v1->unk3F00 = 1;
        var_a0[0][1] = 1;
        var_v1->unk3F02 = 1;
        var_a0[0][2] = 1;
        var_v1->unk3F04 = 1;
        var_a0[0][3] = 1;
        var_v1 += 8;
        var_v1->unk3EFE = 1;
        var_a0 += 8;
    } while (var_v1 != &D_803FC100);
    gtlCreateScene(&D_8015A7DC_ovl4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl4/ovl4_2/func_8015531C_ovl4.s")
#endif
