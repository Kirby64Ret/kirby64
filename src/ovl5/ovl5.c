#include <ultra64.h>
#include <macros.h>

#include "ovl0/ovl0_2.h"
#include "ovl1/ovl1_5.h"
#include "ovl1/ovl1_6.h"
#include "unk_structs/D_800D7178.h"

struct UnkStruct800AC954 *func_800AC954(s32, s32, s32);

struct UnkStruct8015C740 {
    s32 unk0;
    s32 unk4;
    f32 unk8;
    f32 unkC;
    u16 unk10[3];
    u16 unk16[3];
    u8 unk1C;
};
extern const char D_8018D450_ovl5[];

struct UnkStruct800AC954 *func_8015C740_ovl5(s32 arg0, struct UnkStruct8015C740 *arg1) {
    struct UnkStruct800AC954 *temp_v0; 

    temp_v0 = func_800AC954(arg0, arg1->unk4, func_800A8C40(arg1->unk0));
    if (temp_v0 == NULL) {
        fatal_printf(D_8018D450_ovl5); // "Can't get spobj in mglib\n"
        while (1);
    }
    temp_v0->unk20 = arg1->unk8;
    temp_v0->unk24 = arg1->unkC;
    if (arg1->unk10[0] != 0x29A) {
        temp_v0->primColorRed = arg1->unk10[0];
        temp_v0->primColorGreen = arg1->unk10[1];
        temp_v0->primColorBlue = arg1->unk10[2];
    }
    if (arg1->unk16[0] != 0x29A) {
        temp_v0->envColorRed = arg1->unk16[0];
        temp_v0->envColorGreen = arg1->unk16[1];
        temp_v0->envColorBlue = arg1->unk16[2];
    }
    temp_v0->renderFlags |= arg1->unk1C;
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

// does * 0.5f instead of / 2.0f
#ifdef NON_MATCHING
void func_8015C804_ovl5(struct UnkStructFunc8015C804 *arg0, f32 arg1, f32 arg2) {
    f32 phi_f6 = 2.0f;
    
    arg0->unk20 = arg1 - ((arg0->unk1C * arg0->unk28) / phi_f6);
    arg0->unk24 = arg2 - ((arg0->unk1E * arg0->unk2C) / phi_f6);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl5/ovl5/func_8015C804_ovl5.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
void func_8015C884_ovl5(Mat4 arg0, Mat4 arg1, Mat4 arg2) {
    Mat4 temp_a1;
    Mat4 temp_a1_2;
    Mat4 temp_a2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f18_2;
    s32 temp_a0;
    s32 temp_v0;
    void *temp_a1_3;
    void *temp_a2_2;
    Mat4 phi_a3;
    f32 phi_f16;
    f32 phi_f18;
    Mat4 phi_a1;
    Mat4 phi_t0;
    Mat4 phi_a2;
    s32 phi_a0;
    f32 phi_f16_2;
    f32 phi_f18_2;
    Mat4 phi_a1_2;
    Mat4 phi_a2_2;
    s32 phi_v0;

    phi_a3 = arg2;
    phi_t0 = arg0;
    for (phi_v0 = 0; phi_v0 < 4; phi_v0++) {
        arg2[phi_v0][temp_a0] = 0.0f;
    loop_1:
        temp_a1 = phi_a3;
        *temp_a1 = 0.0f;
        temp_f16 = *temp_a1;
        temp_f18 = phi_t0->unk0 * *arg1;
        phi_f16 = temp_f16;
        phi_f18 = temp_f18;
        phi_a1 = temp_a1;
        phi_a2 = arg1;
        phi_a0 = 4;
        phi_f16_2 = temp_f16;
        phi_f18_2 = temp_f18;
        phi_a1_2 = temp_a1;
        phi_a2_2 = arg1;
        if (4 != 0x10) {
    loop_2:
            temp_a2 = phi_a2 + 4;
            temp_a1_2->unk4 = (f32) (phi_f16 + phi_f18);
            temp_a1_2->unk4 = (f32) (temp_a1_2->unk4 + (phi_t0->unk4 * temp_a2->unkC));
            temp_a1_2->unk4 = (f32) (temp_a1_2->unk4 + (phi_t0->unk8 * temp_a2->unk1C));
            temp_a1_2->unk8 = 0.0f;
            temp_f16_2 = temp_a1_2->unk8;
            temp_a1_2->unk-4 = (f32) (temp_a1_2->unk4 + (phi_t0->unkC * temp_a2->unk2C));
            temp_f18_2 = phi_t0->unk8 * temp_a2->unk8;
            temp_a1_2 = phi_a1 + 4;
            phi_f16 = temp_f16_2;
            phi_f18 = temp_f18_2;
            phi_a1 = temp_a1_2;
            phi_a2 = temp_a2;
            phi_a0 += 4;
            phi_f16_2 = temp_f16_2;
            phi_f18_2 = temp_f18_2;
            phi_a1_2 = temp_a1_2;
            phi_a2_2 = temp_a2;
            if (temp_a0 != 0x10) {
                goto loop_2;
            }
        }
        temp_a2_2 = phi_a2_2 + 4;
        temp_a1_3 = phi_a1_2 + 4;
        temp_a1_3->unk-4 = (f32) (phi_f16_2 + phi_f18_2);
        temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_t0->unk4 * temp_a2_2->unkC));
        temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_t0->unk8 * temp_a2_2->unk1C));
        temp_a1_3->unk-4 = (f32) (temp_a1_3->unk-4 + (phi_t0->unkC * temp_a2_2->unk2C));
        phi_a3 = phi_a3 + 0x10;
        phi_t0 = phi_t0 + 0x10;
    }
}

#else
GLOBAL_ASM("asm/non_matchings/ovl5/ovl5/func_8015C884_ovl5.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 3ec45aadfc2cb619035fb802d88c52eacfab0326
f32 func_8015C9B4_ovl5(void *arg0, void *arg1, void *arg2, void *arg3) {
    Mat4 spD8;
    Mat4 sp98;
    Mat4 sp58;
    f32 sp44;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 phi_f0;
    f32 phi_f14;
    f32 phi_return;

    func_8001B008_ovl5(&sp98, arg0 + 0x1C, arg0->unk20, arg0->unk24, arg0->unk28, arg0->unk2C, arg0->unk30);
    guLookAtF(&sp58,
              arg0->unk3C, arg0->unk40, arg0->unk44,
              arg0->unk48, arg0->unk4C, arg0->unk50,
              arg0->unk54, arg0->unk58, arg0->unk5C
             );
    func_8015C884_ovl5(&sp58, &sp98, &spD8);
    temp_f0 = arg1->unk0;
    temp_f2 = arg1->unk4;
    temp_f12 = arg1->unk8;
    sp44 = sp10C + ((spDC * temp_f0) + (spEC * temp_f2) + (spFC * temp_f12));
    temp_f16 = sp114 + ((spE4 * temp_f0) + (spF4 * temp_f2) + (sp104 * temp_f12));
    if (temp_f16 < 0.0f) {
        temp_f0_2 = -temp_f16;
        phi_f0 = temp_f0_2;
        phi_return = temp_f0_2;
    } else {
        phi_f0 = temp_f16;
        phi_return = temp_f16;
    }
    temp_f2_2 = D_8018D46C_ovl5;
    phi_f14 = temp_f16;
    if (phi_f0 < temp_f2_2) {
        if (temp_f16 < 0.0f) {
            phi_f14 = D_8018D470_ovl5;
        } else {
            phi_f14 = temp_f2_2;
        }
    }
    temp_f14 = 1.0f / phi_f14;
    *arg2 = (sp108 + ((spD8 * temp_f0) + (spE8 * temp_f2) + (spF8 * temp_f12))) * temp_f14;
    *arg3 = sp44 * temp_f14;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl5/ovl5/func_8015C9B4_ovl5.s")
#endif

void func_8015CB74_ovl5(void) {

}

s32 func_800AEC70(s32, s32, s32);
extern u32 D_800D6B24;

void func_8015CB7C_ovl5(void) {
    if ((D_800D6B24 == 0) && (D_800D7178.unk74 == 0)) {
        if (D_80048F20[0].buttonPressed & 0x1000) {
            s32 phi_v0;

            func_800A7678(0x24C);
            func_800A699C();
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
                func_800A6A18();
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
