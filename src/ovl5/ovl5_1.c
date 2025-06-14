#include "common.h"

extern u8 D_800D6BB9, D_800D6BBA, D_800D6BBB;

#ifdef MIPS_TO_C

void *func_8015C740_ovl5(s32 arg0, void *arg1) {
    u16 temp_v1;
    u16 temp_v1_2;
    void *temp_v0;

    temp_v0 = func_800AC954(arg0, arg1->unk4, func_800A8C40(arg1->unk0));
    if (temp_v0 == NULL) {
        fatal_printf("Can't get spobj in mglib\n");
loop_2:
        goto loop_2;
    }
    temp_v0->unk20 = arg1->unk8;
    temp_v0->unk24 = arg1->unkC;
    temp_v1 = arg1->unk10;
    if (temp_v1 != 0x29A) {
        temp_v0->unk14 = temp_v1;
        temp_v0->unk15 = arg1->unk12;
        temp_v0->unk16 = arg1->unk14;
    }
    temp_v1_2 = arg1->unk16;
    if (temp_v1_2 != 0x29A) {
        temp_v0->unk18 = temp_v1_2;
        temp_v0->unk19 = arg1->unk18;
        temp_v0->unk1A = arg1->unk1A;
    }
    temp_v0->unk13 = temp_v0->unk13 | arg1->unk1C;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015C740_ovl5.s")
#endif

#ifdef MIPS_TO_C
void func_8015C804_ovl5(void *arg0, f32 arg1, f32 arg2) {
    f32 var_f6;
    u16 temp_t7;

    temp_t7 = arg0->unk1E;
    var_f6 = temp_t7;
    arg0->unk20 = arg1 - ((arg0->unk1C * arg0->unk28) / 2.0f);
    if (temp_t7 < 0) {
        var_f6 += 4294967296.0f;
    }
    arg0->unk24 = arg2 - ((var_f6 * arg0->unk2C) / 2.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015C804_ovl5.s")
#endif

#ifdef MIPS_TO_C
void func_8015C884_ovl5(void *arg0, f32 *arg1, f32 *arg2) {
    f32 *var_a1;
    f32 *var_a2;
    f32 *var_a3;
    f32 var_f16;
    f32 var_f18;
    s32 var_a0;
    s32 var_v0;
    void *temp_a1;
    void *temp_a2;
    void *var_t0;

    var_v0 = 0;
    var_a3 = arg2;
    var_t0 = arg0;
    do {
        var_a1 = var_a3;
        var_a2 = arg1;
        *var_a1 = 0.0f;
        var_a0 = 4;
        var_f16 = *var_a1;
        var_f18 = var_t0->unk0 * *var_a2;
        if (4 != 0x10) {
            do {
                var_a2 += 4;
                var_a0 += 4;
                var_a1 += 4;
                var_a1->unk-4 = var_f16 + var_f18;
                var_a1->unk-4 = var_a1->unk-4 + (var_t0->unk4 * var_a2->unkC);
                var_a1->unk-4 = var_a1->unk-4 + (var_t0->unk8 * var_a2->unk1C);
                var_a1->unk0 = 0.0f;
                var_f16 = var_a1->unk0;
                var_a1->unk-4 = var_a1->unk-4 + (var_t0->unkC * var_a2->unk2C);
                var_f18 = var_t0->unk0 * var_a2->unk0;
            } while (var_a0 != 0x10);
        }
        temp_a2 = var_a2 + 4;
        temp_a1 = var_a1 + 4;
        temp_a1->unk-4 = var_f16 + var_f18;
        temp_a1->unk-4 = temp_a1->unk-4 + (var_t0->unk4 * temp_a2->unkC);
        temp_a1->unk-4 = temp_a1->unk-4 + (var_t0->unk8 * temp_a2->unk1C);
        temp_a1->unk-4 = temp_a1->unk-4 + (var_t0->unkC * temp_a2->unk2C);
        var_v0 += 1;
        var_a3 += 0x10;
        var_t0 += 0x10;
    } while (var_v0 != 4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015C884_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_8015C9B4_ovl5(void *arg0, void *arg1, f32 *arg2, f32 *arg3) {
    f32 spD8;
    ? sp98;
    f32 sp44;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f14;

    func_8001B008(&sp98, arg0 + 0x1C, arg0->unk20, arg0->unk24, arg0->unk28, arg0->unk2C, arg0->unk30);
    guLookAtF(&sp58[0], arg0->unk3C, arg0->unk40, arg0->unk44, arg0->unk48, arg0->unk4C, arg0->unk50, arg0->unk54, arg0->unk58, arg0->unk5C);
    func_8015C884_ovl5(&sp58[0], &sp98, &spD8);
    temp_f0 = arg1->unk0;
    temp_f2 = arg1->unk4;
    temp_f12 = arg1->unk8;
    sp44 = sp10C + ((spDC * temp_f0) + (spEC * temp_f2) + (spFC * temp_f12));
    temp_f16 = sp114 + ((spE4 * temp_f0) + (spF4 * temp_f2) + (sp104 * temp_f12));
    var_f14 = temp_f16;
    if (temp_f16 < 0.0f) {
        var_f0 = -temp_f16;
    } else {
        var_f0 = temp_f16;
    }
    if (var_f0 < 0.1f) {
        if (temp_f16 < 0.0f) {
            var_f14 = -0.1f;
        } else {
            var_f14 = 0.1f;
        }
    }
    temp_f14 = 1.0f / var_f14;
    *arg2 = (sp108 + ((spD8 * temp_f0) + (spE8 * temp_f2) + (spF8 * temp_f12))) * temp_f14;
    *arg3 = sp44 * temp_f14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015C9B4_ovl5.s")
#endif

#ifdef MIPS_TO_C

void func_8015CB7C_ovl5(void) {
    s32 sp1C;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_v0;
    void *temp_v1;
    void *var_v1;

    if ((D_800D6B24 == 0) && ((&D_800D7158 + 0x20)->unk74 == 0)) {
        if (gPlayerControllers + 2 & START_BUTTON) {
            play_sound(SOUND_MINIPAUSE1);
            utilPauseAllGObjs();
            temp_v1 = &D_800D7158 + 0x20;
            temp_v0 = temp_v1->unk44;
            temp_v1->unk74 = 1;
            switch (temp_v0) {                      /* irregular */
                case 29:
                    var_v0 = request_track_3(8, 0, 0x70);
                    break;
                case 31:
                    var_v0 = request_track_3(6, 0, 0x70);
                    break;
                case 30:
                    var_v0 = request_track_3(7, 0, 0x70);
                    break;
            }
            D_800E98E0[var_v0] = 0;
        }
    } else {
        var_v1 = &D_800D7158 + 0x20;
        temp_v0_2 = var_v1->unk78;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 == 2) {
                utilResumeAllGObjs();
                var_v1 = &D_800D7158 + 0x20;
            }
            var_v1->unk74 = 0;
            var_v1->unk78 = 0;
        }
    }
    omUpdateAll();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl5/ovl5_1/func_8015CB7C_ovl5.s")
#endif

u8 func_8015CCA8_ovl5(s32 arg0) {
    switch (arg0) {
        case 29: return D_800D6BB9;
        case 30: return D_800D6BBB;
        case 31: return D_800D6BBA;
    }
}
