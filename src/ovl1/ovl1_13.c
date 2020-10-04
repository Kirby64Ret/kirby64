#include <ultra64.h>
#include <macros.h>

extern s32 D_800D6E8C;
extern f32 gKirbyHp;
extern f32 D_800E7B20[];
extern void func_800A6B64(void);

#ifdef NON_MATCHING
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 change_kirby_hp(f32 arg0) {
    if ((random_u16() & 3) == 3) {
        if (!func_800A6B64) {
            if (arg0 < 0.0f) {
                arg0 *= 2;
            } else {
                arg0 = 0.0f;
            }
        }
    }
    if (D_800D6E8C == 0.0f) {
        return 0;
    }
    gKirbyHp += arg0;
    if (gKirbyHp <= 0.0f) {
        gKirbyHp = 0.0f;
    }
    if (gKirbyHp > 6.0f) {
        gKirbyHp = 6.0f;
    }
    D_800D6E8C = gKirbyHp;
    D_800E7B20[0] = gKirbyHp;
    return D_800D6E8C;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/change_kirby_hp.s")
#endif

extern s32 D_800D6E90;

void func_800BC0F0(s32 arg0) {
    if (arg0 < 0) {
        arg0 = 0;
    }
    if (arg0 >= 3) {
        arg0 = 2;
    }
    D_800D6E90 = arg0 + 0x23;
}

extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 D_800D6E94;

s32 func_800BC11C(f32 arg0) {
    f32 temp_f12;

    D_800D6E58 = arg0;
    if (D_800D6E58 < 0.0f) {
        D_800D6E58 = 0.0f;
    }
    if (D_800D6E5C < D_800D6E58) {
        D_800D6E58 = D_800D6E5C;
    }
    temp_f12 = (D_800D6E58 / D_800D6E5C) * 30.0f;
    if (D_800D6E58 == D_800D6E5C) {
        D_800D6E94 = 0x1E;
    } else {
        if (D_800D6E58 == 0.0f) {
            D_800D6E94 = 0;
        } else {
            if (temp_f12 < 1.0f) {
                D_800D6E94 = 1;
            } else {
                D_800D6E94 = temp_f12;
            }
        }
    }
    return D_800D6E94;
}

extern f32 D_800D6E58;
extern f32 D_800D6E5C;
extern s32 D_800D6EB8;
extern s32 D_800D6EAC;
extern s32 D_800D6E94;

void func_800BC1FC(s32 arg0) {
    D_800D6E58 = arg0;
    D_800D6E5C = D_800D6E58;
    D_800D6EAC = D_800D6EB8 = 0;
    D_800D6E94 = 0x1E;
}

extern s32 gKirbyStars;

void change_kirby_stars(s32 arg0) {
    gKirbyStars += arg0;
}

extern s32 gKirbyLives;
extern s32 D_800D6E88;

void change_kirby_lives(s32 arg0) {
    gKirbyLives += arg0;
    if (gKirbyLives < 0) {
        gKirbyLives = 0;
    }
    if (gKirbyLives > 100) {
        gKirbyLives = 100;
    }
    D_800D6E88 = gKirbyLives;
}

extern s32 D_800D6E54;
extern s32 D_8012E850;

void func_800BC298(s32 arg0) {
    if ((random_u16() & 3) == 2) {
        if (func_800F88A0_ovl1(arg0) == 0) {
            D_8012E850 = D_800D6E90 = D_800D6E54 = 0;
            return;
        }
    }
    if (arg0 < 0) {
        arg0 = 0;
    }
    if (arg0 >= 0x24) {
        arg0 = 0x23;
    }
    D_800D6E90 = arg0;
    D_800D6E54 = arg0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BC328(s32 arg0) {
    f32 temp_f16;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_v0_2;
    void *temp_a3;
    void *temp_v0;
    f32 phi_f6;
    f32 phi_f16;
    s32 phi_v0;
    ? phi_a3;

    temp_t0 = D_8004A7C4->unk0 * 4;
    temp_a3 = &D_800E9E20 + temp_t0;
    temp_v0 = (*temp_a3 * 4) + &D_800D552C;
    temp_f6 = (f32) temp_v0->unk0;
    phi_f6 = temp_f6;
    if (temp_v0->unk0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    *(&D_800E25D0 + temp_t0) = phi_f6;
    temp_f16 = (f32) temp_v0->unk4;
    phi_f16 = temp_f16;
    if (temp_v0->unk4 < 0) {
        phi_f16 = temp_f16 + 4294967296.0f;
    }
    *(&D_800E2790 + (D_8004A7C4->unk0 * 4)) = phi_f16;
    func_800AF8C0_ovl1(temp_v0->unk8, 0xA, 6, *temp_a3);
    func_800A5B14_ovl1(arg0, 0xD0, 0xB0, 0x80, 0xFF);
loop_5:
    temp_v0_2 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    phi_v0 = temp_v0_2;
    if (*(&D_800E9C60 + temp_v0_2) != 0) {
        func_800ACBDC_ovl1(arg0);
        func_800B1900_ovl1(D_8004A7C4->unk2);
        phi_v0 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    }
    phi_a3 = 0;
    if (*(&D_800E9AA0 + phi_v0) != 0) {
        phi_a3 = 1;
    }
    func_800AF920_ovl1(phi_a3, phi_a3);
    func_8000B6BC(1);
    goto loop_5;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BC328.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BC4C0(s32 arg0) {
    f32 temp_f16;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_v0_2;
    void *temp_a3;
    void *temp_v0;
    f32 phi_f6;
    f32 phi_f16;
    s32 phi_v0;
    ? phi_a3;

    temp_t0 = D_8004A7C4->unk0 * 4;
    temp_a3 = &D_800E9E20 + temp_t0;
    temp_v0 = (*temp_a3 * 4) + &D_800D5550;
    temp_f6 = (f32) temp_v0->unk0;
    phi_f6 = temp_f6;
    if (temp_v0->unk0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    *(&D_800E25D0 + temp_t0) = phi_f6;
    temp_f16 = (f32) temp_v0->unk4;
    phi_f16 = temp_f16;
    if (temp_v0->unk4 < 0) {
        phi_f16 = temp_f16 + 4294967296.0f;
    }
    *(&D_800E2790 + (D_8004A7C4->unk0 * 4)) = phi_f16;
    func_800AF8C0_ovl1(temp_v0->unk8, 0xA, 4, *temp_a3);
loop_5:
    temp_v0_2 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    phi_v0 = temp_v0_2;
    if (*(&D_800E9C60 + temp_v0_2) != 0) {
        func_800ACBDC_ovl1(arg0);
        func_800B1900_ovl1(D_8004A7C4->unk2);
        phi_v0 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    }
    phi_a3 = 0;
    if (*(&D_800E98E0 + phi_v0) == 0) {
        phi_a3 = 0;
        if (*(&D_800E9AA0 + phi_v0) != 0) {
            phi_a3 = 1;
        }
    }
    func_800AF920_ovl1(phi_a3, phi_a3);
    func_8000B6BC(1);
    goto loop_5;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BC4C0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BC664(s32 arg0) {
    f32 temp_f16;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_v0_2;
    void *temp_a3;
    void *temp_v0;
    f32 phi_f6;
    f32 phi_f16;
    s32 phi_v0;
    ? phi_a3;

    temp_t0 = D_8004A7C4->unk0 * 4;
    temp_a3 = &D_800E9E20 + temp_t0;
    temp_v0 = (*temp_a3 * 4) + &D_800D5574;
    temp_f6 = (f32) temp_v0->unk0;
    phi_f6 = temp_f6;
    if (temp_v0->unk0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    *(&D_800E25D0 + temp_t0) = phi_f6;
    temp_f16 = (f32) temp_v0->unk4;
    phi_f16 = temp_f16;
    if (temp_v0->unk4 < 0) {
        phi_f16 = temp_f16 + 4294967296.0f;
    }
    *(&D_800E2790 + (D_8004A7C4->unk0 * 4)) = phi_f16;
    func_800AF8C0_ovl1(temp_v0->unk8, 0xA, 6, *temp_a3);
    func_800A5B14_ovl1(arg0, 0xD0, 0xB0, 0x80, 0xFF);
loop_5:
    temp_v0_2 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    phi_v0 = temp_v0_2;
    if (*(&D_800E9C60 + temp_v0_2) != 0) {
        func_800ACBDC_ovl1(arg0);
        func_800B1900_ovl1(D_8004A7C4->unk2);
        phi_v0 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    }
    phi_a3 = 0;
    if (*(&D_800E9AA0 + phi_v0) != 0) {
        phi_a3 = 1;
    }
    func_800AF920_ovl1(phi_a3, phi_a3);
    func_8000B6BC(1);
    goto loop_5;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BC664.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BC800(s32 arg0) {
    f32 temp_f16;
    f32 temp_f6;
    s32 temp_t0;
    s32 temp_v0_2;
    void *temp_a3;
    void *temp_v0;
    f32 phi_f6;
    f32 phi_f16;
    s32 phi_v0;
    ? phi_a3;

    temp_t0 = D_8004A7C4->unk0 * 4;
    temp_a3 = &D_800E9E20 + temp_t0;
    temp_v0 = (*temp_a3 * 4) + &D_800D5598;
    temp_f6 = (f32) temp_v0->unk0;
    phi_f6 = temp_f6;
    if (temp_v0->unk0 < 0) {
        phi_f6 = temp_f6 + 4294967296.0f;
    }
    *(&D_800E25D0 + temp_t0) = phi_f6;
    temp_f16 = (f32) temp_v0->unk4;
    phi_f16 = temp_f16;
    if (temp_v0->unk4 < 0) {
        phi_f16 = temp_f16 + 4294967296.0f;
    }
    *(&D_800E2790 + (D_8004A7C4->unk0 * 4)) = phi_f16;
    func_800AF8C0_ovl1(temp_v0->unk8, 0xA, 4, *temp_a3);
loop_5:
    temp_v0_2 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    phi_v0 = temp_v0_2;
    if (*(&D_800E9C60 + temp_v0_2) != 0) {
        func_800ACBDC_ovl1(arg0);
        func_800B1900_ovl1(D_8004A7C4->unk2);
        phi_v0 = *(&D_800E0D50 + (D_8004A7C4->unk0 * 4)) * 4;
    }
    phi_a3 = 0;
    if (*(&D_800E98E0 + phi_v0) != 0) {
        phi_a3 = 0;
        if (*(&D_800E9AA0 + phi_v0) != 0) {
            phi_a3 = 1;
        }
    }
    func_800AF920_ovl1(phi_a3, phi_a3);
    func_8000B6BC(1);
    goto loop_5;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BC800.s")
#endif

extern Gfx *gDisplayListHeads[4];
extern s32 D_800E9AA0[];

void draw_pause_bg(s32 *arg0) {
    Gfx* list = gDisplayListHeads[0];
    if (D_800E9AA0[*arg0] != 0) {
        gDPPipeSync(list++);
        gDPSetCycleType(list++, G_CYC_1CYCLE);
        gDPSetRenderMode(list++, G_RM_OPA_SURF, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_A_IN, G_BL_CLR_IN, G_BL_1MA));
        gDPSetPrimColor(list++, 0, 0, 0xF4, 0xD8, 0xA2, 0xFF);
        gDPSetCombineLERP(list++, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE);
        gDPFillRectangle(list++, 0, 0, 320, 182);
        gDisplayListHeads[0] = list;
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BCA5C(void) {
    s32 sp3C;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v1;
    void *temp_t9;
    s32 phi_a3;
    u16 phi_v0;

    temp_t9 = &D_800EC2E0 + (D_8004A7C4->unk0 * 4);
    if (*temp_t9 != 0) {
        *(&D_800D55BC + (*temp_t9 * 4))();
    }
    if (D_800BE4F0 == 0x21) {
        *(&D_800E9E20 + (D_8004A7C4->unk0 * 4)) = 2;
    } else {
        if (func_800F8560_ovl1() == 9) {
            *(&D_800E9E20 + (D_8004A7C4->unk0 * 4)) = 1;
        } else {
            *(&D_800E9E20 + (D_8004A7C4->unk0 * 4)) = 0;
        }
    }
    phi_a3 = 1;
loop_8:
    sp3C = phi_a3;
    temp_a3 = phi_a3;
    temp_v1 = func_800AEC70_ovl1(0x27, 0x3C, 0x50, phi_a3) * 4;
    *(&D_800EC2E0 + temp_v1) = temp_a3;
    temp_a3 = temp_a3 + 1;
    *(&D_800E9E20 + temp_v1) = (s32) (*(&D_800E9E20 + (D_8004A7C4->unk0 * 4)) * 3);
    phi_a3 = temp_a3;
    if (temp_a3 != 5) {
        goto loop_8;
    }
    func_800AF9B8_ovl1(0x28, 0xE, temp_a3);
    *(&D_800E98E0 + (D_8004A7C4->unk0 * 4)) = 0;
    *(&D_800E9C60 + (D_8004A7C4->unk0 * 4)) = 0;
    *(&D_800E9AA0 + (D_8004A7C4->unk0 * 4)) = 0;
    func_800A56F4_ovl1(0xA, 0xA, 0x136, 0xB6, 0xF0, 0xD8, 0xA0);
    func_800A5A14_ovl1(0, 0x10, 0);
    func_80020A20_ovl1(0, 0x5000, 0x10);
    func_80023884_ovl1();
    func_800A7678(0xED);
    if (D_800D6B24 != 0) {
loop_10:
        func_8000B6BC(1);
        if (D_800D6B24 != 0) {
            goto loop_10;
        }
    }
    *(&D_800E9AA0 + (D_8004A7C4->unk0 * 4)) = 1;
    func_800A5A14_ovl1(0xFF, -0x10, 0);
    if (D_800D6B24 != 0) {
loop_12:
        func_8000B6BC(1);
        if (D_800D6B24 != 0) {
            goto loop_12;
        }
    }
    func_8000B6BC((s32) (3.0f * D_800D6B14));
loop_14:
    if ((D_80048F22 & 0x9000) == 0) {
        phi_v0 = D_80048F22;
        if ((D_80048F22 & 0x800) != 0) {
            func_800A7678(0x113);
            *(&D_800E98E0 + (D_8004A7C4->unk0 * 4)) = 0;
            phi_v0 = D_80048F22;
        }
        if ((phi_v0 & 0x400) != 0) {
            func_800A7678(0x113);
            *(&D_800E98E0 + (D_8004A7C4->unk0 * 4)) = 1;
        }
        func_8000B6BC(1);
        goto loop_14;
    }
    func_800A7678(0xED);
    temp_v0 = D_8004A7C4->unk0 * 4;
    if ((1 == *(&D_800E98E0 + temp_v0)) && (1 != *(&D_800E9E20 + temp_v0))) {
        if (D_800BE4F0 == 0x21) {
            D_800D6B6C = 1;
        }
        D_800BE4F8 = 0;
        func_800A5744_ovl1(0, 0, 0);
        func_800A5A14_ovl1(0, 0x20, 2);
        func_80020A20_ovl1(0, 0, 8);
        if (D_800D6B24 != 0) {
loop_26:
            func_8000B6BC(1);
            if (D_800D6B24 != 0) {
                goto loop_26;
            }
        }
        func_80020968_ovl1(0);
    } else {
        func_800A5A14_ovl1(0, 0x10, 0);
        if (D_800D6B24 != 0) {
loop_29:
            func_8000B6BC(1);
            if (D_800D6B24 != 0) {
                goto loop_29;
            }
        }
        *(&D_800E9AA0 + (D_8004A7C4->unk0 * 4)) = 0;
        *(&D_800E9C60 + (D_8004A7C4->unk0 * 4)) = 1;
        func_80020A20_ovl1(0, 0x7800, 0x10);
        func_80023794_ovl1();
        func_800A5A14_ovl1(0xFF, -0x10, 0);
        if (D_800D6B24 != 0) {
loop_31:
            func_8000B6BC(1);
            if (D_800D6B24 != 0) {
                goto loop_31;
            }
        }
        D_800BE544 = 0x8000;
    }
    func_800B1900_ovl1(D_8004A7C4->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BCA5C.s")
#endif

extern f32 D_800E25D0[];
extern f32 D_800E2790[];
extern s32 *D_8004A7C4;
extern s32 D_800E9AA0[];
extern s32 D_800E98E0[];
extern s32 D_800E9FE0[];
extern s32 D_800AD1A0;

typedef struct {
    u8 filler0[4];
} struct_800ED500;

typedef struct {
    u8 filler0[0x13];
    u8 unk13;
} struct_800AC954;

extern struct_800ED500 D_800ED500;

#ifdef NON_MATCHING
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BCEEC(s32 arg0) {
    s32 temp;
    struct_800AC954 *temp_v0;

    temp_v0 = func_800AC954_ovl1(arg0, 0, &D_800ED500);
    temp_v0->unk13 |= 4;
    func_8000A5FC_ovl1(arg0, &D_800AD1A0, 0xA, 0x80000000, 0xA);
    func_800AF96C_ovl1(1);
    D_800E25D0[*D_8004A7C4] = 7.0f;
    D_800E2790[*D_8004A7C4] = 182.0f;
    D_800E9FE0[*D_8004A7C4] = 0;
    func_800AFA14_ovl1(D_800E98E0[*D_8004A7C4] = D_800E9AA0[*D_8004A7C4] = D_800E9FE0[*D_8004A7C4], D_800E9FE0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BCEEC.s")
#endif

extern s32 D_800D6BB0;
extern s32 D_800D5460[];
extern s32 D_800ED510[];

#ifdef NON_MATCHING
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void draw_lives_digit(s32 arg0, s32 arg1, s32 arg2) {
    s32 *phi_v1;
    s32 *phi_a0;
    s32 phi_a1;

    phi_a0 = (u16*)D_800ED510 + arg0 + 0xa00;
    phi_v1 = 0x10 + func_800A8BAC_ovl1(D_800D5460[D_800D6BB0 * 10 + arg1]);

    for (phi_a1 = 0; phi_a1 != 30; phi_a1 += 2) {
        phi_a0[phi_a1 * 0xa0 + 0] = phi_v1[phi_a1 * 0xa + 0];
        phi_a0[phi_a1 * 0xa0 + 1] = phi_v1[phi_a1 * 0xa + 1];
        phi_a0[phi_a1 * 0xa0 + 2] = phi_v1[phi_a1 * 0xa + 2];
        phi_a0[phi_a1 * 0xa0 + 3] = phi_v1[phi_a1 * 0xa + 3];
        phi_a0[phi_a1 * 0xa0 + 4] = phi_v1[phi_a1 * 0xa + 4];
        phi_a0[phi_a1 * 0xa0 + 5] = phi_v1[phi_a1 * 0xa + 5];
        phi_a0[phi_a1 * 0xa0 + 6] = phi_v1[phi_a1 * 0xa + 6];
        phi_a0[phi_a1 * 0xa0 + 7] = phi_v1[phi_a1 * 0xa + 7];
        phi_a0[phi_a1 * 0xa0 + 8] = phi_v1[phi_a1 * 0xa + 8];


        phi_a0[(phi_a1 + 1) * 0xa0 + 0] = phi_v1[(phi_a1 + 1) * 0xa + 0];
        phi_a0[(phi_a1 + 1) * 0xa0 + 1] = phi_v1[(phi_a1 + 1) * 0xa + 1];
        phi_a0[(phi_a1 + 1) * 0xa0 + 2] = phi_v1[(phi_a1 + 1) * 0xa + 2];
        phi_a0[(phi_a1 + 1) * 0xa0 + 3] = phi_v1[(phi_a1 + 1) * 0xa + 3];
        phi_a0[(phi_a1 + 1) * 0xa0 + 4] = phi_v1[(phi_a1 + 1) * 0xa + 4];
        phi_a0[(phi_a1 + 1) * 0xa0 + 5] = phi_v1[(phi_a1 + 1) * 0xa + 5];
        phi_a0[(phi_a1 + 1) * 0xa0 + 6] = phi_v1[(phi_a1 + 1) * 0xa + 6];
        phi_a0[(phi_a1 + 1) * 0xa0 + 7] = phi_v1[(phi_a1 + 1) * 0xa + 7];
        phi_a0[(phi_a1 + 1) * 0xa0 + 8] = phi_v1[(phi_a1 + 1) * 0xa + 8];
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/draw_lives_digit.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 draw_hp_segment(s32 arg0, s32 arg1) {
    s32 temp_a1;
    void *temp_a0;
    void *temp_v1;
    void *phi_v1;
    void *phi_a0;
    s32 phi_a1;

    phi_v1 = func_800A8BAC_ovl1(*(&D_800D53DC + ((D_800D6BB0 * 8) + (arg1 * 4)))) + 0x10;
    phi_a0 = ((arg0 * 0x28) + 0xAB4) + &D_800ED510;
    phi_a1 = 0;
loop_1:
    temp_a1 = phi_a1 + 2;
    temp_v1 = phi_v1 + 0x50;
    *phi_a0 = (s32) *phi_v1;
    temp_a0 = phi_a0 + 0x500;
    temp_a0->unk-4FC = (s32) temp_v1->unk-4C;
    temp_a0->unk-4F8 = (s32) temp_v1->unk-48;
    temp_a0->unk-4F4 = (s32) temp_v1->unk-44;
    temp_a0->unk-4F0 = (s32) temp_v1->unk-40;
    temp_a0->unk-4EC = (s32) temp_v1->unk-3C;
    temp_a0->unk-4E8 = (s32) temp_v1->unk-38;
    temp_a0->unk-4E4 = (s32) temp_v1->unk-34;
    temp_a0->unk-4E0 = (s32) temp_v1->unk-30;
    temp_a0->unk-4DC = (s32) temp_v1->unk-2C;
    temp_a0->unk-280 = (s32) temp_v1->unk-28;
    temp_a0->unk-27C = (s32) temp_v1->unk-24;
    temp_a0->unk-278 = (s32) temp_v1->unk-20;
    temp_a0->unk-274 = (s32) temp_v1->unk-1C;
    temp_a0->unk-270 = (s32) temp_v1->unk-18;
    temp_a0->unk-26C = (s32) temp_v1->unk-14;
    temp_a0->unk-268 = (s32) temp_v1->unk-10;
    temp_a0->unk-264 = (s32) temp_v1->unk-C;
    temp_a0->unk-260 = (s32) temp_v1->unk-8;
    temp_a0->unk-25C = (s32) temp_v1->unk-4;
    phi_v1 = temp_v1;
    phi_a0 = temp_a0;
    phi_a1 = temp_a1;
    if (temp_a1 != 0x1A) {
        goto loop_1;
    }
    return 0x1A;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/draw_hp_segment.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_800BD208(s32 arg0, s32 arg1) {
    s32 temp_t7;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a0;
    s32 phi_v0;

    temp_v1 = func_800A8BAC_ovl1(*(&D_800D5408 + ((D_800D6BB0 * 8) + (arg1 * 4))));
    temp_a0 = ((arg0 * 8) + 0x4E34) + &D_800ED510;
    *temp_a0 = (s32) temp_v1->unk10;
    temp_t7 = temp_v1->unk14;
    temp_a0 = temp_a0 + 0x780;
    temp_v1 = temp_v1 + 0x28;
    temp_a0->unk-77C = temp_t7;
    temp_a0->unk-500 = (s32) temp_v1->unk-10;
    temp_a0->unk-4FC = (s32) temp_v1->unk-C;
    temp_a0->unk-280 = (s32) temp_v1->unk-8;
    temp_a0->unk-27C = (s32) temp_v1->unk-4;
    phi_v1 = temp_v1;
    phi_a0 = temp_a0;
    phi_v0 = 3;
loop_1:
    temp_v0 = phi_v0 + 4;
    temp_v1_2 = phi_v1 + 0x20;
    *phi_a0 = (s32) *phi_v1;
    temp_a0_2 = phi_a0 + 0xA00;
    temp_a0_2->unk-9FC = (s32) temp_v1_2->unk-1C;
    temp_a0_2->unk-780 = (s32) temp_v1_2->unk-18;
    temp_a0_2->unk-77C = (s32) temp_v1_2->unk-14;
    temp_a0_2->unk-500 = (s32) temp_v1_2->unk-10;
    temp_a0_2->unk-4FC = (s32) temp_v1_2->unk-C;
    temp_a0_2->unk-280 = (s32) temp_v1_2->unk-8;
    temp_a0_2->unk-27C = (s32) temp_v1_2->unk-4;
    phi_v1 = temp_v1_2;
    phi_a0 = temp_a0_2;
    phi_v0 = temp_v0;
    if (temp_v0 != 0xB) {
        goto loop_1;
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BD208.s")
#endif

void draw_kirby_stars(s32 arg0) {
    s32 i;

    if (arg0 < 0) {
        arg0 = 0;
    }

    if (arg0 > 30) {
        arg0 = 30;
    }

    for (i = 0; i != 30; i++) {
        if (i < arg0) {
            draw_star_segments(i, 1);
        } else {
            draw_star_segments(i, 0);
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 draw_star_segments(s32 arg0, s32 arg1) {
    s32 temp_t7;
    s32 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *phi_v1;
    void *phi_a0;
    s32 phi_v0;

    temp_v1 = func_800A8BAC_ovl1(*(&D_800D5434 + ((D_800D6BB0 * 8) + (arg1 * 4))));
    temp_a0 = ((arg0 * 8) + 0x4E34) + &D_800ED510;
    *temp_a0 = (s32) temp_v1->unk10;
    temp_t7 = temp_v1->unk14;
    temp_a0 = temp_a0 + 0x780;
    temp_v1 = temp_v1 + 0x28;
    temp_a0->unk-77C = temp_t7;
    temp_a0->unk-500 = (s32) temp_v1->unk-10;
    temp_a0->unk-4FC = (s32) temp_v1->unk-C;
    temp_a0->unk-280 = (s32) temp_v1->unk-8;
    temp_a0->unk-27C = (s32) temp_v1->unk-4;
    phi_v1 = temp_v1;
    phi_a0 = temp_a0;
    phi_v0 = 3;
loop_1:
    temp_v0 = phi_v0 + 4;
    temp_v1_2 = phi_v1 + 0x20;
    *phi_a0 = (s32) *phi_v1;
    temp_a0_2 = phi_a0 + 0xA00;
    temp_a0_2->unk-9FC = (s32) temp_v1_2->unk-1C;
    temp_a0_2->unk-780 = (s32) temp_v1_2->unk-18;
    temp_a0_2->unk-77C = (s32) temp_v1_2->unk-14;
    temp_a0_2->unk-500 = (s32) temp_v1_2->unk-10;
    temp_a0_2->unk-4FC = (s32) temp_v1_2->unk-C;
    temp_a0_2->unk-280 = (s32) temp_v1_2->unk-8;
    temp_a0_2->unk-27C = (s32) temp_v1_2->unk-4;
    phi_v1 = temp_v1_2;
    phi_a0 = temp_a0_2;
    phi_v0 = temp_v0;
    if (temp_v0 != 0xB) {
        goto loop_1;
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/draw_star_segments.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_800BD460(s32 arg0, s32 arg1) {
    s32 temp_a1;
    void *temp_a0;
    void *temp_v1;
    void *phi_v1;
    void *phi_a0;
    s32 phi_a1;

    phi_v1 = func_800A8BAC_ovl1(*(&D_800D5310 + ((D_800D6BB0 * 0x28) + (arg1 * 4)))) + 0x10;
    phi_a0 = ((arg0 * 2) + 0x1180) + &D_800ED510;
    phi_a1 = 0;
loop_1:
    temp_a1 = phi_a1 + 4;
    phi_a0->unk0 = (s32) phi_v1->unk0;
    phi_a0->unk4 = (s32) phi_v1->unk4;
    temp_v1 = phi_v1 + 0xC0;
    phi_a0->unkC = (s32) phi_v1->unkC;
    phi_a0->unk8 = (s32) phi_v1->unk8;
    temp_a0 = phi_a0 + 0xA00;
    temp_a0->unk-9EC = (s32) temp_v1->unk-AC;
    temp_a0->unk-9F0 = (s32) temp_v1->unk-B0;
    temp_a0->unk-9E4 = (s32) temp_v1->unk-A4;
    temp_a0->unk-9E8 = (s32) temp_v1->unk-A8;
    temp_a0->unk-9DC = (s32) temp_v1->unk-9C;
    temp_a0->unk-9E0 = (s32) temp_v1->unk-A0;
    temp_a0->unk-9D4 = (s32) temp_v1->unk-94;
    temp_a0->unk-9D8 = (s32) temp_v1->unk-98;
    temp_a0->unk-77C = (s32) temp_v1->unk-8C;
    temp_a0->unk-780 = (s32) temp_v1->unk-90;
    temp_a0->unk-774 = (s32) temp_v1->unk-84;
    temp_a0->unk-778 = (s32) temp_v1->unk-88;
    temp_a0->unk-76C = (s32) temp_v1->unk-7C;
    temp_a0->unk-770 = (s32) temp_v1->unk-80;
    temp_a0->unk-764 = (s32) temp_v1->unk-74;
    temp_a0->unk-768 = (s32) temp_v1->unk-78;
    temp_a0->unk-75C = (s32) temp_v1->unk-6C;
    temp_a0->unk-760 = (s32) temp_v1->unk-70;
    temp_a0->unk-754 = (s32) temp_v1->unk-64;
    temp_a0->unk-758 = (s32) temp_v1->unk-68;
    temp_a0->unk-4FC = (s32) temp_v1->unk-5C;
    temp_a0->unk-500 = (s32) temp_v1->unk-60;
    temp_a0->unk-4F4 = (s32) temp_v1->unk-54;
    temp_a0->unk-4F8 = (s32) temp_v1->unk-58;
    temp_a0->unk-4EC = (s32) temp_v1->unk-4C;
    temp_a0->unk-4F0 = (s32) temp_v1->unk-50;
    temp_a0->unk-4E4 = (s32) temp_v1->unk-44;
    temp_a0->unk-4E8 = (s32) temp_v1->unk-48;
    temp_a0->unk-4DC = (s32) temp_v1->unk-3C;
    temp_a0->unk-4E0 = (s32) temp_v1->unk-40;
    temp_a0->unk-4D4 = (s32) temp_v1->unk-34;
    temp_a0->unk-4D8 = (s32) temp_v1->unk-38;
    temp_a0->unk-27C = (s32) temp_v1->unk-2C;
    temp_a0->unk-280 = (s32) temp_v1->unk-30;
    temp_a0->unk-274 = (s32) temp_v1->unk-24;
    temp_a0->unk-278 = (s32) temp_v1->unk-28;
    temp_a0->unk-26C = (s32) temp_v1->unk-1C;
    temp_a0->unk-270 = (s32) temp_v1->unk-20;
    temp_a0->unk-264 = (s32) temp_v1->unk-14;
    temp_a0->unk-268 = (s32) temp_v1->unk-18;
    temp_a0->unk-25C = (s32) temp_v1->unk-C;
    temp_a0->unk-260 = (s32) temp_v1->unk-10;
    temp_a0->unk-254 = (s32) temp_v1->unk-4;
    temp_a0->unk-258 = (s32) temp_v1->unk-8;
    phi_v1 = temp_v1;
    phi_a0 = temp_a0;
    phi_a1 = temp_a1;
    if (temp_a1 != 0x20) {
        goto loop_1;
    }
    return 0x20;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BD460.s")
#endif

extern s32 D_800D6EA0;

void draw_kirby_lives(void) {
    s32 temp2;
    s32 temp_a2;

    temp_a2 = D_800D6E88 - 1;
    if (D_800D6EA0 != D_800D6E88) {
        D_800D6EA0 = D_800D6E88;
        if (temp_a2 > 99) {
            temp_a2 = 99;
        }
        if (temp_a2 < 0) {
            temp_a2 = 0;
        }
        draw_lives_digit(0x22, temp_a2 / 10, temp_a2); // should be called with 2 args, but then temp_a2 is not placed in a2
        draw_lives_digit(0x34, temp_a2 % 10, temp_a2);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BD6E0(void) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_at;
    s32 temp_t4;
    s32 temp_v0;
    s32 phi_v0;
    s32 phi_a0;
    ? phi_a1;

    if (1 == D_800D6E8C) {
        if (D_800D6EC0 == 0) {
            if (func_800F8560_ovl1(1) != 3) {
                if (D_800D6B24 == 0) {
                    func_800A7678(0xEC);
                    D_800D6EC0 = (s32) (D_800D6EC0 + 1);
                }
            }
        }
    }
    if (D_800D6EA4 == D_800D6E8C) {
        D_800D6EB4 = 0;
        return;
    }
    temp_v0 = D_800D6EB4 + 1;
    D_800D6EB4 = temp_v0;
    phi_v0 = temp_v0;
    if (temp_v0 >= 5) {
        D_800D6EB4 = 1;
        phi_v0 = 1;
    }
    if (1 == phi_v0) {
        if (D_800D6E8C < D_800D6EA4) {
            temp_a0 = D_800D6EA4 - 1;
            D_800D6EA4 = temp_a0;
            phi_a0 = temp_a0;
            phi_a1 = 0;
        } else {
            func_800A7678(0xD3, 0, &D_800D6EA4, 1);
            temp_t4 = D_800D6EA4 + 1;
            temp_at = temp_t4 < 2;
            D_800D6EA4 = temp_t4;
            temp_a0_2 = temp_t4 - 1;
            phi_a0 = temp_a0_2;
            phi_a1 = 1;
            if (temp_at == 0) {
                D_800D6EC0 = 0;
                phi_a0 = temp_a0_2;
                phi_a1 = 1;
            }
        }
        draw_hp_segment(phi_a0, phi_a1, &D_800D6EA4);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BD6E0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BD7FC(void) {
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t7;
    s32 temp_v0;
    void *temp_t0;
    s32 phi_s0;
    ? phi_s1;

    temp_t7 = D_800D6EBC - 1;
    D_800D6EBC = temp_t7;
    if (temp_t7 <= 0) {
        D_800D6EBC = 0;
        if (D_800F4D10 != 0) {
loop_2:
            temp_v0 = D_800F4D10 + 1;
            temp_t0 = &D_800D55D0 + (temp_v0 * 4);
            D_800F4D10 = temp_v0;
            D_800D6EBC = (s32) *temp_t0;
            if (*temp_t0 >= 0) {
                phi_s1 = 0;
                if (*temp_t0 >= 0xA) {
                    phi_s1 = 1;
                }
                phi_s0 = 0;
loop_7:
                draw_star_segments(phi_s0, phi_s1);
                temp_s0 = phi_s0 + 1;
                phi_s0 = temp_s0;
                if (temp_s0 != 0x1E) {
                    goto loop_7;
                }
                return;
            }
            D_800F4D10 = 0;
            D_800D6EBC = 0;
            return;
        }
        temp_t1 = D_800D6E98 + 1;
        if (gKirbyStars != D_800D6E98) {
            D_800D6E98 = temp_t1;
            if (temp_t1 >= 0x1E) {
                D_800F4D10 = 0;
                gKirbyStars = (s32) (gKirbyStars - 0x1E);
                D_800D6E98 = 0;
                func_800A7678(1, &gKirbyStars);
                change_kirby_lives(1);
                goto loop_2;
            }
            D_800D6EBC = 3;
            func_800A7678(0x117, &gKirbyStars);
            draw_star_segments(D_800D6E98 - 1, 1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BD7FC.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BD92C(void) {
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_t2;
    s32 temp_t6;
    s32 temp_v0;
    s32 phi_v0;
    s32 phi_s0;
    s32 phi_s0_2;
    ? phi_a1;

    if (0.0f == D_800D6E5C) {
        D_800D6EB8 = 0;
        return;
    }
    if (D_800D6EAC == D_800D6E94) {
        if (D_800D6E9C != 0) {
            D_800D6EB8 = 0;
            return;
        }
    }
    temp_v0 = D_800D6EB8 + 1;
    D_800D6EB8 = temp_v0;
    phi_v0 = temp_v0;
    if (temp_v0 >= 3) {
        D_800D6EB8 = 1;
        phi_v0 = 1;
    }
    if (phi_v0 == 1) {
        if (D_800D6E94 == 0) {
            phi_s0 = 0;
loop_10:
            func_800BD208_ovl1(phi_s0, 0);
            temp_s0 = phi_s0 + 1;
            phi_s0 = temp_s0;
            if (temp_s0 != 0x1E) {
                goto loop_10;
            }
            D_800D6E94 = 0;
            D_800D6EAC = 0;
            return;
        }
        if (D_800D6E9C == 0) {
            func_800A7678(0xD3, D_800D6E94, &D_800D6E9C);
            temp_t2 = D_800D6EAC + 1;
            D_800D6EAC = temp_t2;
            temp_s0_2 = temp_t2 - 1;
            phi_s0_2 = temp_s0_2;
            phi_a1 = 1;
            if (0x1E == temp_t2) {
                D_800D6E9C = (s32) (D_800D6E9C + 1);
                phi_s0_2 = temp_s0_2;
                phi_a1 = 1;
            }
        } else {
            if (D_800D6E94 < D_800D6EAC) {
                temp_s0_3 = D_800D6EAC - 1;
                D_800D6EAC = temp_s0_3;
                phi_s0_2 = temp_s0_3;
                phi_a1 = 0;
            } else {
                func_800A7678(0xD3, 0, &D_800D6E9C);
                temp_t6 = D_800D6EAC + 1;
                D_800D6EAC = temp_t6;
                phi_s0_2 = temp_t6 - 1;
                phi_a1 = 1;
            }
        }
        func_800BD208_ovl1(phi_s0_2, phi_a1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BD92C.s")
#endif

extern u8 D_800D55F8[];
extern s32 D_800D6EA8;

void func_800BDAA8(void) {
    if (D_800D6E90 != D_800D6EA8) {
        func_800BD460_ovl1(0xE4, D_800D55F8[D_800D6E90 * 2]);
        func_800BD460_ovl1(0x108, D_800D55F8[D_800D6E90 * 2 + 1]);
    }
    D_800D6EA8 = D_800D6E90;
}

extern s32 D_800BE508;
extern s32 D_800BE4FC;
extern s32 D_800D6E98;
extern s32 D_800D6EA4;
extern s32 D_800D6EB0;

void func_800BDB18(void) {
    s32 i;
    
    if (gKirbyStars >= 30) {
        do {
            gKirbyStars -= 30;
            change_kirby_lives(1);
        } while (gKirbyStars >= 30);
    }

    if ((D_800BE508 != 0) || (D_800BE4FC != 0)) {
            for (i = 0; i < (u32) gKirbyHp; i++) {
                draw_hp_segment(i, 1);
            }
        D_800D6E8C = D_800D6EA4 = (u32) gKirbyHp;
    }
    draw_kirby_stars(gKirbyStars);
    D_800D6E98 = D_800D6EB0 = gKirbyStars;
}

extern s16 D_800D6B30;

void func_800BDD08(void) {
    draw_kirby_lives();
    if (D_800D6B30 != 0) {
        func_800BD6E0_ovl1();
        if (D_800D6E94 == 0) {
            func_800BD7FC_ovl1();
        }
        func_800BD92C_ovl1();
    }
    func_800BDAA8_ovl1();
}

void func_800BDD68(void) {
    func_800BDAA8_ovl1();
}

void func_800BDD88(s32 arg0) {

}

void func_800BDD90(s32 arg0) {

}

extern s32 D_800D6EA8;
extern s32 D_800D6EA0;
extern s32 D_800D6EB0;
extern s32 D_800D6EAC;
extern s32 D_800D6EA4;
extern s32 D_800D6EC0;
extern s32 D_800F4D10;
extern s32 D_800D6EBC;
extern s32 D_800D6EB8;
extern s32 D_800D6EB4;

void func_800BDD98(void) {
    D_800D6EA8 = -1;
    D_800D6EA4 = D_800D6EAC = D_800D6EB0 = D_800D6EA0 = 0;
    D_800D6EB4 = D_800D6EB8 = D_800D6EBC = D_800F4D10 = D_800D6EC0 = 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BDE0C(s32 arg0) {
    s32 temp_v1;
    void *temp_a2;
    void *temp_v0;
    void *phi_a2;
    void *phi_v0;
    s32 phi_v1;
    void *phi_a3;

    D_800D6F58 = &D_800ED510;
    if (D_800F4D14 != 0) {
        if (D_800F6198 != 0) {
            func_800A8934_ovl1(0x50002, 0x10, 0, &D_800ED510);
            phi_a2 = &D_800EDA24;
            phi_a3 = &D_800EDA10;
loop_3:
            phi_a2->unk0 = (u16) D_800EDA60;
            phi_a2->unk2 = (u16) D_800EDA60;
            phi_v0 = phi_a3 + 0x18;
            phi_v1 = 0xC;
loop_4:
            temp_v1 = phi_v1 + 4;
            phi_v0->unk2 = (u16) D_800EDA60;
            phi_v0->unk4 = (u16) D_800EDA60;
            phi_v0->unk6 = (u16) D_800EDA60;
            temp_v0 = phi_v0 + 8;
            temp_v0->unk-8 = (u16) D_800EDA60;
            phi_v0 = temp_v0;
            phi_v1 = temp_v1;
            if (temp_v1 != 0xD8) {
                goto loop_4;
            }
            temp_a2 = phi_a2 + 0x280;
            phi_a2 = temp_a2;
            phi_a3 = phi_a3 + 0x280;
            if (temp_a2 != &D_800F4324) {
                goto loop_3;
            }
        } else {
            D_800D6F50 = 0;
            func_800A8934_ovl1(*(&D_800D52FC + (D_800D6BB0 * 4)), 0x10, 0, &D_800ED510);
            func_800BDB18();
        }
        D_800F4D14 = 0;
    }
    if (D_800F6198 != 0) {
        func_800BDD68_ovl1();
        return;
    }
    func_800BDD08_ovl1();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BDE0C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
void func_800BDF2C(void) {
    s32 temp_a1;
    s32 temp_t7;
    void *temp_a0;
    void *phi_v1;
    void *phi_a0;
    s32 phi_a1;

    temp_t7 = D_800D6F50 << 8;
    phi_v1 = temp_t7 + &D_800F5770;
    phi_a0 = temp_t7 + &D_800F4D70;
    phi_a1 = 0;
loop_1:
    temp_a1 = phi_a1 + 4;
    phi_v1->unk0 = 0xFFFE7961;
    phi_a0->unk0 = 0;
    phi_v1->unk4 = 0xFFFE7961;
    phi_a0->unk4 = 0;
    phi_v1->unk8 = 0xFFFE7961;
    phi_a0->unk8 = 0;
    phi_v1->unkC = 0xFFFE7961;
    phi_a0->unkC = 0;
    temp_a0 = phi_a0 + 0x10;
    phi_v1 = phi_v1 + 0x10;
    phi_a0 = temp_a0;
    phi_a1 = temp_a1;
    if (temp_a1 != 0x40) {
        goto loop_1;
    }
    func_800BDD98_ovl1(temp_a0, temp_a1, 0x40);
    D_800F4D14 = 1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BDF2C.s")
#endif

void func_800BDFB8(s32 *arg0, s32 arg1, u32 arg2) {
    s32 i;
    for (i = 0; i < arg2; i++) {
        if (arg0[arg1 + i] == 0xffff) {
            break;
        }
        func_800A8BAC_ovl1(arg0[arg1 + i]);
    }
}

void func_800BE028(s32 *arg0, s32 arg1, u32 arg2) {
    s32 i;
    for (i = 0; i < arg2; i++) {
        if (arg0[arg1 + i] == 0xffff) {
            break;
        }
        func_800A8A7C_ovl1(arg0[arg1 + i]);
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_800BE098(void) {
    s32 sp18;
    s32 temp_a1;
    s32 temp_v0;
    void *temp_a3;
    void *temp_at;
    void *phi_t0;
    void *phi_t1;
    void *phi_t2;
    void *phi_v0;
    void *phi_v1;
    s32 phi_a1;
    void *phi_a3;
    void *phi_t3;

    D_800F4D18 = 2;
    phi_t0 = &D_800F6170;
    phi_t1 = &D_800F4D48;
    phi_t2 = &D_800F4D20;
    phi_a3 = &D_800F4D70;
    phi_t3 = &D_800F5770;
loop_1:
    *phi_t0 = 0;
    *phi_t1 = 0;
    *phi_t2 = 0;
    phi_v0 = phi_t3;
    phi_v1 = phi_a3;
    phi_a1 = 0;
loop_2:
    temp_a1 = phi_a1 + 4;
    phi_v0->unk0 = 0xFFFE7961;
    phi_v1->unk0 = 0;
    phi_v0->unk4 = 0xFFFE7961;
    phi_v1->unk4 = 0;
    phi_v0->unk8 = 0xFFFE7961;
    phi_v1->unk8 = 0;
    phi_v0->unkC = 0xFFFE7961;
    phi_v1->unkC = 0;
    phi_v0 = phi_v0 + 0x10;
    phi_v1 = phi_v1 + 0x10;
    phi_a1 = temp_a1;
    if (temp_a1 != 0x40) {
        goto loop_2;
    }
    temp_a3 = phi_a3 + 0x100;
    phi_t0 = phi_t0 + 4;
    phi_t1 = phi_t1 + 4;
    phi_t2 = phi_t2 + 4;
    phi_a3 = temp_a3;
    phi_t3 = phi_t3 + 0x100;
    if (temp_a3 != &D_800F5770) {
        goto loop_1;
    }
    sp18 = func_800AEC70_ovl1(0x26, 0x4A, 0x50, temp_a3);
    if (func_800F8560_ovl1() != 9) {
        func_800BDFB8_ovl1(&D_800D5310, ((D_800D6BB0 * 4) + D_800D6BB0) * 2, 8);
    } else {
        D_800D6E54 = 0;
        D_800D6E90 = 0;
        func_800BDFB8_ovl1(&D_800D5310 + 0x5310, ((D_800D6BB0 * 4) + D_800D6BB0) * 2, 0xA);
    }
    func_800BDFB8_ovl1(&D_800D53DC, D_800D6BB0 * 2, 2);
    func_800BDFB8_ovl1(&D_800D5408, D_800D6BB0 * 2, 2);
    func_800BDFB8_ovl1(&D_800D5434, D_800D6BB0 * 2, 2);
    func_800BDFB8_ovl1(&D_800D5460, ((D_800D6BB0 * 4) + D_800D6BB0) * 2, 0xA);
    func_800A8934_ovl1(0x50001, 0, 0x10, &D_800ED500);
    D_800ED500.unk8 = (void *) (D_800ED500.unk8 + &D_800ED510);
    D_800ED500.unkC = (void *) (D_800ED500.unkC + &D_800ED510);
    D_800F6198 = 0;
    D_800D6EC4 = 0;
    if ((D_800D6F3C == 4) || (D_800D6F3C == 3)) {
        D_800F6198 = 1;
        temp_v0 = func_800AEA64_ovl1(0x2D, 0x4A, 0x50, &D_800ED500);
        temp_at = &D_800E98E0 + (temp_v0 * 4);
        sp18 = temp_v0;
        *temp_at = 0;
    } else {

    }
    func_800BDF2C_ovl1();
    func_800BDE0C_ovl1(0);
    func_80002B7C_ovl1(&func_800BDE0C);
    return sp18;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BE098.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
? func_800BE320(void *arg0) {
    arg0->unkC = (?32) saved_reg_ra;
    arg0->unk68 = (?32) ERROR(cfc1);
    arg0->unk8 = (void *) sp;
    arg0->unk34 = (?32) saved_reg_fp;
    arg0->unk14 = (?32) saved_reg_s0;
    arg0->unk18 = (?32) saved_reg_s1;
    arg0->unk1C = (?32) saved_reg_s2;
    arg0->unk20 = (?32) saved_reg_s3;
    arg0->unk24 = (?32) saved_reg_s4;
    arg0->unk28 = (?32) saved_reg_s5;
    arg0->unk2C = (?32) saved_reg_s6;
    arg0->unk30 = (?32) saved_reg_s7;
    arg0->unk38 = (f64) saved_reg_f20;
    arg0->unk40 = (f64) saved_reg_f22;
    arg0->unk48 = (f64) saved_reg_f24;
    arg0->unk50 = (f64) saved_reg_f26;
    arg0->unk58 = (f64) saved_reg_f28;
    arg0->unk60 = (f64) saved_reg_f30;
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BE320.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit e0e006e8858ba357d1dcb4dc64f038b7df278aa6
s32 func_800BE374(void *arg0, s32 arg1) {
    s32 phi_return;

    phi_return = arg1;
    if (arg1 == 0) {
        phi_return = 1;
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl1/ovl1_13/func_800BE374.s")
#endif
