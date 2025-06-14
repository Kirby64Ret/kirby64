#include <ultra64.h>
#include <macros.h>

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A6BC0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A6E64.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A6F40.s")

#include "unk_structs/D_800D79D8.h"
extern f32 D_800D7A28[];
extern f32 D_800D7A50[];
extern f32 D_800D7A78[];
extern f32 D_800D7AA0[];
extern f32 D_800D7AC8[];
extern f32 D_800D7AF0[];
extern const f32 D_800D5CAC;

void func_800A6F68(u16 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 arg9) {
    f32 f_65535f;
    u16 idx;
    f32 tmp;
    struct UnkStruct800D79D8 *st;

    idx = (((arg0 - 10) >> 1));
    tmp = arg6;
    st = D_800D79D8[idx];
    if (st) {
        f_65535f = D_800D5CAC;
        if (arg1 != f_65535f) {
            st->unk3C = arg1;
            D_800D7A28[idx] = arg1;
        }
        if (arg2 != f_65535f) {
            st->unk40 = arg2;
            D_800D7A50[idx] = arg2;
        }
        if (arg3 != f_65535f) {
            st->unk44 = arg3;
            D_800D7A78[idx] = arg3;
        }
        if (arg4 != f_65535f) {
            st->unk48 = arg4;
            D_800D7AA0[idx] = arg4;
        }
        if (arg5 != f_65535f) {
            st->unk4C = arg5;
            D_800D7AC8[idx] = arg5;
        }
        if (tmp != f_65535f) {
            st->unk50 = tmp;
            D_800D7AF0[idx] = tmp;
        }
        if (arg7 != f_65535f) {
            st->unk54 = arg7;
        }
        if (arg8 != f_65535f) {
            st->unk58 = arg8;
        }
        if (arg9 != f_65535f) {
            st->unk5C = arg9;
        }
    }
}

extern const f32 D_800D5CB0;
void func_800A70C4(u16 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    f32 f_65535f;
    f32 tmp;
    struct UnkStruct800D79D8 *st;

    st = D_800D79D8[(u16)(arg0 - 10 >> 1)];
    tmp = arg4;
    if (st) {
        f_65535f = D_800D5CB0;
        if (arg1 != f_65535f) {
            st->unk20 = arg1;
        }
        if (arg2 != f_65535f) {
            st->unk24 = arg2;
        }
        if (arg3 != f_65535f) {
            st->unk28 = arg3;
        }
        if (tmp != f_65535f) {
            st->unk2C = tmp;
        }
    }
}

void func_800A7160(u16 arg0, u32 arg1) {
    struct UnkStruct800D79D8 *st;

    st = D_800D79D8[(u16)(arg0 - 10 >> 1)];
    if (st) {
        st->unk80 |= arg1;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A71A0.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A71E0.s")

extern struct GObj *D_800D79BC;

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A72AC.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7348.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7394.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A73B0.s")

void func_800A74B0(void) {
    do {}
    while (func_80020EB4_ovl1() != 0);
}

extern u32 sMusicCount, sSoundCount;
extern u16 D_800C0530[2];
// regalloc moment
#ifdef NON_MATCHING
void func_800A74D8(void) {
    func_80020C88_ovl1();
    play_music(0, 0x99999999);
    while (func_80020BB8_ovl1(0) != 0);
    func_80020998_ovl1(0, 0x7800);
    sMusicCount = D_800C0530[0] - 1;
    sSoundCount = D_800C0530[1];
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A74D8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7554.s")

extern s32 D_800D6B44;
extern const char *D_800D5CC0;
extern s16 D_800BFFC0[];
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A75B0.s")

extern const char D_800D5CE0[];
extern const char D_800D5CF8[];
extern const char D_800D5D14[];
extern s16 D_800C0040[];
void func_80023CB0_ovl1(u16);

void play_sound(s32 arg0) {
    if (arg0 == 0x99999999) {
        utilPrintf(&D_800D5CE0, arg0); // "use AllStopFGM macro.\n"
        return;
    }
    if (arg0 & 0x80000000) {
        utilPrintf(&D_800D5CF8, arg0); // "use stopLoopSeml function.\n"
        return;
    }
    if (D_800C0040[arg0] >= 0) {
        func_80023CB0((u16)D_800C0040[arg0]);
        return;
    }
    utilPrintf(&D_800D5D14, arg0); // "Error: No Entry FGM Number: %d\n"
}

s32 sound_str_atoi(u8 *str) {
    return ((str[0] * 100) + (str[1] * 10) + (str[2] * 1))
         - ((   '0' * 100) + (   '0' * 10) + (   '0' * 1));
}

extern u8 sMusicNames[][0x18];
s32 get_music_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sMusicCount) {
        return -1;
    }
    return sound_str_atoi(sMusicNames[idx]);
}

extern u8 sSoundNames[][0x18];
s32 get_sound_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sSoundCount) {
        return -1;
    }
    return sound_str_atoi(sSoundNames[idx]);
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A77E8.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7870.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A78D0.s")

void func_800A7A70(s32 arg0, s32 arg1, s32 arg2);

void func_800A7A40(void) {
    func_800A7A70(1, 0x30007, 0x30008);
}

void func_800A7A70(s32 arg0, s32 arg1, s32 arg2) {
    s32 tmp = func_800A9AA8(arg1, 3);
    
    func_8009B768(arg0, tmp, func_800A9AA8(arg2, 3));
}

extern s32 D_8012D920;
extern Gfx *gDisplayListHeads[4];
extern void func_8009E8F4(s32 hidden, u32 a, Gfx *b);

void func_800A7ABC(s32 arg0) {
    if (D_8012D920 != 1) {
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetCycleType(gDisplayListHeads[1]++, G_CYC_1CYCLE);
        gDPPipelineMode(gDisplayListHeads[1]++, G_PM_1PRIMITIVE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_NOOP2);
        func_8009E8F4(arg0, 3, &gDisplayListHeads[1]);
        gDPPipeSync(gDisplayListHeads[1]++);
        gDPSetColorDither(gDisplayListHeads[1]++, G_CD_MAGICSQ);
        gDPSetAlphaDither(gDisplayListHeads[1]++, G_AD_DISABLE);
        gDPSetRenderMode(gDisplayListHeads[1]++, G_RM_AA_ZB_XLU_SURF, G_RM_NOOP2);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7BF4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7E48.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7E7C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7EB4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7EE4.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7F10.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A7F74.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A802C.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A8100.s")

GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_2/func_800A8234.s")
