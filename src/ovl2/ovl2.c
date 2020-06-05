#include <ultra64.h>
#include <macros.h>

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
s32 func_800F61A0(void) {
    s32 temp_ret;
    void *temp_s0;
    void *temp_s1;
    void *temp_s3;
    void *phi_s3;
    s32 phi_s2;
    s32 phi_return;
    s32 phi_return_2;

    phi_return = func_801114E0_ovl2();
    if (D_800BE544 <= 0) {
        phi_return_2 = func_800A5268_ovl2();
        if (D_800D7B68 != 0) {
            phi_return_2 = func_800F7578_ovl2();
        }
        phi_s3 = &D_800DD710;
        phi_s2 = 0;
loop_4:
        temp_s0 = &D_800DDA90 + phi_s2;
        if (-1 != *phi_s3) {
            temp_s1 = &D_800DE350 + phi_s2;
            phi_return_2 = *temp_s0;
            if ((*temp_s0 & 0x38) != 0) {
                temp_ret = func_8000A498_ovl2(*temp_s1, *temp_s0 & 7, (*temp_s1)->unk10);
                *temp_s0 = (s32) (*temp_s1)->unkC;
                phi_return_2 = temp_ret;
            }
        }
        temp_s3 = phi_s3 + 4;
        phi_s3 = temp_s3;
        phi_s2 = phi_s2 + 4;
        phi_return = phi_return_2;
        if (temp_s3 != &D_800DD84C) {
            goto loop_4;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F61A0.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
void func_800F629C(void) {

}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F629C.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
Failed to decompile function func_800F62A4_ovl2:

Unable to determine jump table for jr instruction.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl".
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F62A4_ovl2.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
void func_800F64B0_ovl2(void) {
    s32 sp20;
    s32 temp_a0;
    void *temp_t5;
    void *temp_t9;
    void *temp_v0;
    s32 phi_a0;
    u8 phi_v1;
    void *phi_v0;
    s32 phi_a1;
    s32 phi_a1_2;
    s32 phi_a1_3;

    D_800D6B30 = (u16)0;
    temp_v0 = func_8000BDF0_ovl2(0x19, 0x80000000, 0x63, 3, 0xFF);
    D_800D6B20 = temp_v0;
    func_80007C00_ovl2(temp_v0->unk3C + 8, 0x41200000, 0x41200000, 0x439B0000, 182.0f);
    func_8000A180_ovl2(0, &D_800F62A4, 0x1A, 0x80000000);
    func_800AE048_ovl2(0x40);
    func_800AE0F0_ovl2();
    func_800A6E64_ovl2();
    func_800A78D0_ovl2(0);
    if (D_800BE500 == 6) {
        if (D_800BE504 == 0) {
            if (D_800BE534 != 2) {
block_3:
                if (D_800BE500 == 5) {
                    if (3 == D_800BE504) {
block_5:
                        func_800A8724_ovl2(2);
                    } else {
block_6:
                        if (D_800BE500 == 4) {
                            if (3 == D_800BE504) {
                                if (3 == D_800BE534) {
                                    if (D_800BE508 != 0) {
                                        func_800A8724_ovl2(3);
                                    } else {
block_11:
                                        func_800A8724_ovl2(0);
                                    }
                                } else {
                                    goto block_11;
                                }
                            } else {
                                goto block_11;
                            }
                        } else {
                            goto block_11;
                        }
                    }
                } else {
                    goto block_6;
                }
            } else {
                goto block_5;
            }
        } else {
            goto block_3;
        }
    } else {
        goto block_3;
    }
    func_800F8274_ovl2();
    if (func_800F8560_ovl2() != 9) {
        func_80114CCC_ovl2();
        func_8010DCDC_ovl2();
        func_800FF2C8_ovl2();
    }
    func_8011C838_ovl2();
    func_800BE098_ovl2();
    func_800A6BC0_ovl2(5);
    phi_a0 = 0;
loop_15:
    temp_t9 = D_800D799C->unk3C + phi_a0;
    phi_v1 = temp_t9->unk64->unk4;
    phi_v0 = temp_t9->unk64;
    if (6 == temp_t9->unk64->unk4) {
        temp_t9->unk64->unk4 = (u8)0xCU;
        temp_t5 = D_800D799C->unk3C + phi_a0;
        phi_v1 = temp_t5->unk64->unk4;
        phi_v0 = temp_t5->unk64;
    }
    temp_a0 = phi_a0 + 4;
    if (7 == phi_v1) {
        phi_v0->unk4 = (u8)0xD;
    }
    phi_a0 = temp_a0;
    if (temp_a0 != 8) {
        goto loop_15;
    }
    if (D_801290D8->unkC != 0x22) {
        if (D_801290D8->unkC != 0x27) {
            if (D_801290D8->unkC != 0x28) {
                if (D_801290D8->unkC != 0x29) {
                    phi_a1 = D_801290D8->unkC;
                } else {
                    sp20 = D_801290D8->unkC;
                    phi_a1 = D_801290D8->unkC;
                    if (func_800B9DF8_ovl2(2, D_801290D8->unkC, (u8)0xCU, 7) != 0) {
                        phi_a1 = 8;
                    }
                }
            } else {
                sp20 = D_801290D8->unkC;
                phi_a1 = D_801290D8->unkC;
                if (func_800B9DF8_ovl2(2, D_801290D8->unkC, (u8)0xCU, 7) != 0) {
                    phi_a1 = 0x12;
                }
            }
        } else {
            sp20 = D_801290D8->unkC;
            phi_a1 = D_801290D8->unkC;
            if (func_800B9DF8_ovl2(2, D_801290D8->unkC, (u8)0xCU, 7) != 0) {
                phi_a1 = 0xD;
            }
        }
    } else {
        phi_a1 = D_801290D8->unkC;
        if ((D_800BE508 + 0x800D0000)->unk6E20 != 0) {
            phi_a1 = D_800D6B48;
        }
    }
    D_800D6B48 = phi_a1;
    phi_a1_3 = phi_a1;
    if (D_800D6B70 == 1) {
        phi_a1_3 = D_801290D8->unkC;
    }
    phi_a1_2 = phi_a1_3;
    if (D_800D6F3C >= 3) {
        phi_a1_2 = phi_a1_3;
        if (D_800D6F3C != 4) {
            phi_a1_2 = 0;
        }
    }
    func_800A75B0_ovl2(0, phi_a1_2);
    if (func_800F8560_ovl2() == 2) {
        func_800BB98C_ovl2(2, 0);
        return;
    }
    if (D_800BE508 == 0) {
        if (D_800BE4FC == 0) {
            func_800BB98C_ovl2(0, 0);
            return;
        }
    }
    func_800A5744_ovl2(0, 0, 0);
    func_800A5A14_ovl2(0xFF, -0x10, 0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F64B0_ovl2.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
void func_800F6830_ovl2(void) {
    ? sp40;
    void *sp3C;
    ? sp3A;
    s32 temp_t4;
    s32 temp_v0;
    void *temp_v1;

    D_800D6F40 = (u16) D_80048F20.unk0;
    D_800D6F42 = (u16) D_80048F20.unk2;
    D_800D6F44 = (u16) D_80048F20.unk4;
    if (D_800D7B68 != 0) {
        sp3C = D_800D799C->unk3C;
        func_80019EB0_ovl2(&sp40, D_800D799C->unk3C->unk3C, D_800D799C->unk3C->unk40, D_800D799C->unk3C->unk44, D_800D799C->unk3C->unk48, D_800D799C->unk3C->unk4C, D_800D799C->unk3C->unk50, D_800D799C->unk3C->unk54, D_800D799C->unk3C->unk58, D_800D799C->unk3C->unk5C);
        func_8001B008_ovl2(&D_800D6ED0, &sp3A, D_800D799C->unk3C->unk20, D_800D799C->unk3C->unk24, D_800D799C->unk3C->unk28, D_800D799C->unk3C->unk2C, D_800D799C->unk3C->unk30);
        func_800340D0_ovl2(&sp40, &D_800D6ED0, &D_800D6ED0);
    }
    temp_v1 = (D_801290D8->unkA * 0xC) + &D_800D478C;
    D_800D6B20->unk3C->unk84 = (s32) ((((temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18)) | (temp_v1->unk1 << 0x10)) | 0xFF);
    D_800BE4EC = (s32) (D_800BE4EC + 1);
    func_800BBF60_ovl2(&D_800BE4EC);
    if (D_800BE544 >= 0) {
        if (D_800BE4F8 == 1) {
            if (0.0f != D_800D6E50) {
                if (func_800F8560_ovl2() != 3) {
                    if (D_800BE544 == 0) {
                        if ((D_80048F22 & 0x1000) != 0) {
                            func_800BB3F0_ovl2();
                            func_800A699C_ovl2();
                            temp_v0 = func_800AEA64_ovl2(0x27, 0x4A, 0x70);
                            temp_t4 = temp_v0 * 4;
                            D_800BE544 = temp_v0;
                            (temp_t4 + 0x800F0000)->unk-3D20 = 0;
                        }
                    } else {
                        if ((D_800BE544 & 0x8000) != 0) {
                            D_800BE544 = 0;
                            func_800A6A18_ovl2();
                        }
                    }
                }
            } else {
block_11:
                if (D_80128700 == (f32) D_800BE544) {
                    D_800BE544 = -0x270F;
                } else {
                    if (D_800BE544 < 0) {
                        D_800BE544 = (s32) (D_800BE544 + 1);
                    }
                }
            }
        } else {
            goto block_11;
        }
    } else {
        goto block_11;
    }
    func_800F61A0_ovl2();
    func_8000AD88_ovl2();
    func_800F629C_ovl2();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F6830_ovl2.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
void func_800F6AB0_ovl2(void *arg0) {
    void *temp_v1;

    temp_v1 = *arg0;
    *arg0 = (void *) (temp_v1 + 8);
    temp_v1->unk0 = 0xDE000000;
    temp_v1->unk4 = &D_80123E90;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F6AB0_ovl2.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
void func_800F6AD4(s32 arg0, ? arg1) {
    s32 temp_t0;
    void *temp_v1;
    void *phi_a0;
    void *phi_v1;

    D_800D6B70 = arg0;
    D_80123EC0.unkC = (void *) (&D_8012EB00 - 0x1900);
    func_80007BA4_ovl2(&D_80123EC0, arg0);
    phi_a0 = &D_803B6900;
    phi_v1 = &D_803D6900;
loop_1:
    phi_a0->unk0 = (u16)1;
    phi_v1->unk3F00 = (u16)1;
    phi_a0->unk2 = (u16)1;
    phi_v1->unk3F02 = (u16)1;
    phi_a0->unk4 = (u16)1;
    phi_v1->unk3F04 = (u16)1;
    phi_a0->unk6 = (u16)1;
    temp_v1 = phi_v1 + 8;
    temp_v1->unk3EFE = (u16)1;
    phi_a0 = phi_a0 + 8;
    phi_v1 = temp_v1;
    if (temp_v1 != &D_803FC100) {
        goto loop_1;
    }
    temp_t0 = &D_803B6900 - &D_8022FB50;
    D_80123F68.unk10 = temp_t0;
    D_80123EEC = temp_t0;
    D_800D6FA8 = 0;
    D_8012D920 = 0;
    D_800D6FAC = 0;
    D_800D7B80 = 0;
    D_800D7B7C = 0;
    D_800D7B78 = 0;
    func_800A41B0_ovl2(0x40000000, &D_800D7B7C, &D_803FC100);
    if (D_800BE500 == 6) {
        if (D_800BE504 == 0) {
            if (D_800BE534 == 2) {
                func_80007380_ovl2(&D_80123F68);
            } else {
block_6:
                func_80007380_ovl2(0x80123EDC);
            }
        } else {
            goto block_6;
        }
    } else {
        goto block_6;
    }
    func_800F7484_ovl2(D_800BE508);
    func_800BB3F0_ovl2();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2/func_800F6AD4.s")
#endif
