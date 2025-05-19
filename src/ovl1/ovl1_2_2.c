#include "common.h"

extern u8 sMusicNames[][0x18];
extern u8 sSoundNames[][0x18];
extern u32 sMusicCount, sSoundCount;
extern s16 D_800C0040[];

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A74B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A74D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7554.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/play_music.s")

void play_sound(s32 arg0) {
    if (arg0 == 0x99999999) {
        print_error_stub("use AllStopFGM macro.\n", arg0);
        return;
    }
    if (arg0 & 0x80000000) {
        print_error_stub("use stopLoopSeml function.\n", arg0);
        return;
    }
    if (D_800C0040[arg0] >= 0) {
        func_80023CB0((u16)D_800C0040[arg0]);
        return;
    }
    print_error_stub("Error: No Entry FGM Number: %d\n", arg0);
}

s32 sound_str_atoi(u8 *str) {
    return ((str[0] * 100) + (str[1] * 10) + (str[2] * 1))
         - ((   '0' * 100) + (   '0' * 10) + (   '0' * 1));
}

s32 get_music_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sMusicCount) {
        return -1;
    }
    return sound_str_atoi(sMusicNames[idx]);
}

s32 get_sound_id_from_index(s32 idx) {
    if (idx < 0 || idx >= sSoundCount) {
        return -1;
    }
    return sound_str_atoi(sSoundNames[idx]);
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A77E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A78D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7A40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7A70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7ABC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7E48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7EB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7EE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7F10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A7F74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A802C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A8100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl1/ovl1_2_2/func_800A8234.s")
