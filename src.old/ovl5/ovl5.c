#include <ultra64.h>
#include <macros.h>
#include "sounds.h"

#include "ovl0/ovl0_2.h"
#include "ovl1/ovl1_5.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800D7178.h"

struct UnkStruct800AC954 *func_800AC954(s32, s32, s32);


extern const char D_8018D450_ovl5[];

struct UnkStruct800AC954 *func_8015C740_ovl5(s32 arg0, struct UnkStruct8015C740 *arg1) {
    struct UnkStruct800AC954 *temp_v0; 

    temp_v0 = func_800AC954(arg0, arg1->mode, func_800A8C40(arg1->image));
    if (temp_v0 == NULL) {
        fatal_printf(D_8018D450_ovl5); // "Can't get spobj in mglib\n"
        while (1);
    }
    temp_v0->xOffset = arg1->xOffset;
    temp_v0->yOffset = arg1->yOffset;
    if (arg1->primColor[0] != 0x29A) {
        temp_v0->primColorRed = arg1->primColor[0];
        temp_v0->primColorGreen = arg1->primColor[1];
        temp_v0->primColorBlue = arg1->primColor[2];
    }
    if (arg1->envColor[0] != 0x29A) {
        temp_v0->envColorRed = arg1->envColor[0];
        temp_v0->envColorGreen = arg1->envColor[1];
        temp_v0->envColorBlue = arg1->envColor[2];
    }
    temp_v0->renderFlags |= arg1->flags;
    return temp_v0;
}

struct UnkStructFunc8015C804 {
    u32 pad[7];
    u16 unk1C;
    u16 unk1E;
    f32 unk20;
    f32 unk24;
    f32 unk28;
    f32 unk2C;
};

void func_8015C804_ovl5(struct UnkStructFunc8015C804 *arg0, f32 arg1, f32 arg2) {
    arg0->unk20 = arg1 - ((arg0->unk1C * arg0->unk28) / 2);
    arg0->unk24 = arg2 - ((arg0->unk1E * arg0->unk2C) / 2);
}

GLOBAL_ASM("asm/non_matchings/ovl5/ovl5/func_8015C884_ovl5.s")

GLOBAL_ASM("asm/non_matchings/ovl5/ovl5/func_8015C9B4_ovl5.s")

void func_8015CB74_ovl5(void) {

}

s32 func_800AEC70(s32, s32, s32);
extern u32 D_800D6B24;

void func_8015CB7C_ovl5(void) {
    if ((D_800D6B24 == 0) && (D_800D7178.unk74 == 0)) {
        if (gPlayerControllers[0].buttonPressed & 0x1000) {
            s32 phi_v0;

            play_sound(SOUND_MINIPAUSE1);
            utilPauseAllGObjs();
            D_800D7178.unk74 = 1;
            if (0) {

            }
            switch (D_800D7178.unk44) {
                case 29:
                    phi_v0 = func_800AEC70(8, 0, 0x70);
                    break;
                case 31:
                    phi_v0 = func_800AEC70(6, 0, 0x70);
                    phi_v0 = phi_v0;
                    break;
                case 30:
                    phi_v0 = func_800AEC70(7, 0, 0x70);
                    break;
            }
            D_800E98E0[phi_v0] = 0;
        }
    } else {
        if (D_800D7178.unk78 != 0) {
            if (D_800D7178.unk78 == 2) {
                utilResumeAllGObjs();
            }
            D_800D7178.unk74 = 0;
            D_800D7178.unk78 = 0;
        }
    }
    func_8000AD88_ovl5();
}

extern u8 D_800D6BB9, D_800D6BBA, D_800D6BBB;
u8 func_8015CCA8_ovl5(s32 arg0) {
    switch (arg0) {
        case 29: return D_800D6BB9;
        case 30: return D_800D6BBB;
        case 31: return D_800D6BBA;
    }
}
