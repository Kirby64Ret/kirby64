#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "D_8004A7C4.h"
#include "ovl1/ovl1_6.h"

extern struct KirbyState gKirbyState;
extern u32 func_80121194(void);
extern u32 D_800D6FAC;
extern void set_kirby_action_1(s16 a, s16 b);
 

extern Controller_800D6FE8 D_800D6FE8;

u32 func_80151100_ovl3(void) {
    if (!(gKirbyState.isTurning & 1)) {
        if (gKirbyState.unk17 == 0) {
            if (func_80121194() != 0) {
                gKirbyState.isTurning |= 1;
            }
        }
    }
    return 0;
}

u32 func_80151160_ovl3(void) {
    if (D_800D6FAC == 0) {
        if (((D_800D6FE8.buttonHeld & 0x400) == 0) && ((D_800D6FE8.buttonPressed & 0x8000) != 0)) {
            if (((D_800E8AE0[D_8004A7C4->objId] & 6) == 6) && (D_800D6FE8.buttonHeld & 0xB00)) {
                gKirbyState.unk44 = 1;
                set_kirby_action_1(0x17, 0x1B);
            }
            else {
                set_kirby_action_1(3, 5);
            }
                return 2;
        }
        if (((D_800E8AE0[D_8004A7C4->objId] & 6) == 6) && ((D_800D6FE8.buttonHeld & 0x800) != 0)) {
            if ((gKirbyState.action != 0xA) && (gKirbyState.action != 0xB)) {
                gKirbyState.unk44 = 1;
                set_kirby_action_1(0x17, 0x1B);
                return 2;
            }
        }
    }
    return 0;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
u32 func_80151288_ovl3(void) {
    s32 phi_v1 = 0;

    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        if (D_800D6FAC == 0) {
            if (gKirbyState.unk4 == 2) {
                if (((D_800D6FE8.buttonPressed & 0x8000) != 0)
                    || ((D_800D6FE8.buttonHeld & 0x300) != 0)
                    || (D_800D6FE8.buttonPressed & 0x8000) != 0
                    || (D_800D6FE8.buttonHeld & 0xF00) != 0) {
                        phi_v1 = 1;
                }
            } else {
                // phi_v1 = 0;
                if ((D_800D6FE8.buttonHeld & 0x3F) == 0) {
                    phi_v1 = 0;
                }
            }
            if (phi_v1 != 0) {
                if (func_80179130_ovl3() == 0) {
                    set_kirby_action_1(0x17, 0x1B);
                    if ((D_800D6FE8.buttonPressed & 0x8000) == 0) {
                        gKirbyState.unk44 = 0;
                        return 0xA;
                    }
                    gKirbyState.unk44 = 1;
                    return 0xA;
                }
                return 0xA;
            }
        }
    } else if ((gKirbyState.abilityInUse != 0x13)
        && (D_800D6FAC == 0)
        && ((D_800D6FE8.buttonPressed & 0x8000) != 0)
        && (gKirbyState.floatTimer != 0)
        && (gKirbyState.unk4 == 0)
        && (D_800E8920[D_8004A7C4->objId] == 0)) {

            gKirbyState.unk7 = 0;
            gKirbyState.unk44 = 0;
            set_kirby_action_1(0xC, 9);
            return 5;
    }
    return 0;
}

#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3/func_80151288_ovl3.s")
#endif

extern u16 D_800D6FB2, D_800D6FB0, D_80198838;
extern u32 D_800D6FA8;
#ifdef MIPS_TO_C
// generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
u32 func_80151448_ovl3(void) {
    s32 temp_a0_4;
    s32 temp_v0_3;
    u16 temp_a0;
    u16 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a2;
    u32 temp_v0;
    u8 temp_a1;
    u8 temp_v0_2;

    if (((gKirbyState.isTurning & 1) != 0) || (temp_v0 = D_800D6FAC, (temp_v0 != 0))) {
        gKirbyState.unkA4 = 0;
        if ((D_800D6FEA & 0x4000) != 0) {
            gKirbyState.unkA = 1;
        }
    } else if (gKirbyState.unk17 != 0) {

    } else if (D_800D6FB2 == 2) {
        if ((D_800D6FEA & 0x4000) != 0 || gKirbyState.unkA == 1) {
            gKirbyState.unkA = 0;
            gKirbyState.unk7 = 0;
            gKirbyState.unk30 = 0;
            set_kirby_action_1(0x17, 0x1A);
            return 9;
        }
    } else {
        if ((temp_v0 == 0) && (D_800D6FA8 == 0) && (gKirbyState.unk4 == 2)) {
            temp_a0 = D_800D6FEA;
            if ((temp_a0 & 0x4000) != 0) {
                set_kirby_action_1(0x1B, 0x19);
                return 9;
            }
            if ((temp_a0 & 0x3F) != 0 || gKirbyState.unkA == 3) {
                gKirbyState.unkA = 0;
                set_kirby_action_1(0x13, 0x13);
                return 9;
            }
        } 
        temp_a2 = gKirbyState.abilityInUse;
        gKirbyState.unkA4 = 0;
        temp_a0_2 = D_800D6FEA;
        temp_a1 = gKirbyState.unk4;
        if ((temp_a2 == 0) && (gKirbyState.unk8 == 0) && ((D_800D6FA8 | temp_v0 | D_800D6FB0) == 0)) {
            if (((D_8004A7C4->objId * 4) + 0x800F0000)->unk-76E0 != 0) {
                if (((temp_a0_2 & 0x400) == 0) && ((temp_a0_2 & 0x3F) != 0)) {
                    gKirbyState.unkA4 = 1;
                }
            } else if ((temp_a0_2 & 0x3F) != 0) {
                gKirbyState.unkA4 = 1;
            }
            if (gKirbyState.unkA4 != 0) {
                gKirbyState.unkA4 = 0;
                if (temp_a1 != 0) {
                    if (temp_a1 == 1) {
                        gKirbyState.unk7 = 0;
                        set_kirby_action_1(0x11, 0x11);
                        return 9;
                    }
                    if (temp_a1 != 2) {

                    }
                } else if (gKirbyState.ability != 0) {
                    temp_v0_2 = gKirbyState.action;
                    if ((temp_v0_2 != 0xA) && (temp_v0_2 != 0xB)) {
                        gKirbyState.unk7 = 0;
                        set_kirby_action_1(0x11, 0x11);
                        return 9;
                    }
                }
            }
        }
        if (((temp_a0_2 & 0x4000) != 0) || (gKirbyState.unkA == 1)) {
            gKirbyState.unkA = 0;
            if (temp_a1 != 0) {
                if (temp_a1 == 1) {
                    set_kirby_action_1(0x1A, 0x19);
                    return 9;
                }
            } else {
                temp_a0_3 = gKirbyState.ability;
                if (temp_a0_3 == 0) {
                    gKirbyState.unk30 = 0;
                    gKirbyState.unk7 = 0;
                    set_kirby_action_1(0x18, 0x18);
                    return 9;
                }
                if (temp_a2 == 0) {
                    if ((temp_a0_3 != 0xC) || (D_80198838 != 0)) {
                        temp_v0_3 = func_801772CC_ovl3(temp_a0_3, 0x18, temp_a2, 2);
                        temp_a0_4 = temp_v0_3;
                        if (temp_v0_3 != 0xFFFF) {
                            gKirbyState.unk30 = 0;
                            gKirbyState.unk16 = 0;
                            set_kirby_action_1(temp_a0_4, 0x1A);
                            return 9;
                        }
                    }
                }
            }
        } else if (temp_a1 != 0) {
            if (temp_a1 != 1) {
                if (temp_a1 != 2) {

                } else if ((temp_a0_2 & 0x400) != 0) {
                    gKirbyState.unk7 = 0;
                    set_kirby_action_1(0x12, 0x12);
                    return 9;
                }
            } else if ((((D_8004A7C4->objId * 4) + 0x800F0000)->unk-76E0 != 0) && ((temp_a0_2 & 0x400) != 0)) {
                gKirbyState.unk30 = 0;
                gKirbyState.unk7 = 0;
                set_kirby_action_1(0xB, 0x10);
                return 9;
            }
        }
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3/func_80151448_ovl3.s")
#endif

u32 func_801517FC_ovl3(void) {
    if (func_80179130_ovl3() != 0) {
        return 3;
    } else {
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            set_kirby_action_1(6, 6);
            return 3;
        }
        return 0;
    }
}

u32 func_80151864_ovl3(void) {
    if (D_800D6FAC == 0) {
        if ((D_800D6FE8.buttonHeld & 0x400) != 0) {
            if (gKirbyState.unk4 == 0) {
                if ((gKirbyState.isTurning & 2) == 0) {
                    gKirbyState.unk30 = 0;
                    gKirbyState.unk7 = (u8)0;
                    set_kirby_action_1(9, 0xE);
                    return 4;
                }
            }
        }
    }
    return 0;
}

extern u32 func_80122558(void);

u32 func_801518E0_ovl3(void) {
    if (func_80122558() != 0) {
        return 8;
    }
    return 0;
}

extern u32 func_801226FC(void);

u32 func_8015190C_ovl3(void) {
    if (func_801226FC() != 0) {
        return 7;
    }
    return 0;
}

extern f32 D_800E3210[];
u32 func_80151938_ovl3(void) {
    if (gKirbyState.unk151 != 0 && !(gKirbyState.isTurning & 1) &&
        gKirbyState.unk4 == 0 && D_800E3210[D_8004A7C4->objId] <= 0.0f &&
        func_801210FC() != 0)
    {
        set_kirby_action_1(0xF, 0xC);
        return 6;
    }
    return 0;
}

u32 func_801519D4_ovl3(void) {
    if (gKirbyState.unk4 == 0) {
        if ((D_800D6FE8.buttonPressed & 0x400) != 0) {
            gKirbyState.unk7 = 0;
            set_kirby_action_1(9, 0xE);
            return 0xB;
        }
    }
    if ((gKirbyState.isTurning & 1) == 0) {
        if (D_800D6FAC == 0) {
            if (func_80121194() != 0) {
                gKirbyState.unk2C = 0xE;
                gKirbyState.isTurning |= 1;
            } else {
                if ((D_800D6FE8.buttonHeld & 0x300) != 0) {
                    if ((D_800D6FE8.buttonHeld & 0x400) == 0) {
                        gKirbyState.unk38 = 0.0f;
                        set_kirby_action_1(1, 3);
                        return 0xB;
                    }
                }
            }
        }
    } else {
        if (gKirbyState.unk2C != 0) {
            gKirbyState.unk2C = (s32) (gKirbyState.unk2C - 1);
        } else {
            if ((D_800D6FE8.buttonHeld & 0x300) != 0) {
                if ((D_800D6FE8.buttonHeld & 0x400) == 0) {
                    gKirbyState.unk38 = 0.0f;
                    set_kirby_action_1(1, 3);
                    return 0xB;
                }
            }
        }
    }
    return 0;
}

extern f32 D_800E64D0[];
extern u32 D_8012E7F4;

u32 func_80151AF4_ovl3(void) {
    if ((D_8012E7F4 & 1) == 0) {
        if ((D_800D6FE8.buttonHeld & (L_JPAD | R_JPAD)) == 0) {
            if (0.0f == D_800E64D0[D_8004A7C4->objId]) {
                set_kirby_action_1(0, 1);
                return 0xC;
            }
        }
    }
    return 0;
}

u32 func_80151B78_ovl3(void) {
    if (gKirbyState.unk17 != 0) {
        if (gKirbyState.unk30 != 0) {
            set_kirby_action_1(0, 1);
            return 0xD;
        }
        return 0;
    } else {
        if (gKirbyState.unk30 != 0) {
            set_kirby_action_1(0, 1);
            return 0xD;
        }
        else if (func_801210B4() == 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    break;
                case 1:
                    if ((D_800D6FAC == 0) && (D_800D6FE8.buttonHeld & D_JPAD)) {
                        set_kirby_action_1(0xB, 0x10);
                        return 0xD;
                    }
                    break;
                case 2:
                    break;
            }
        } else {
            set_kirby_action_1(1, 3);
            return 0xD;
        }
    }
    return 0;
}

extern f32 D_8012E7F8;

extern f32 D_80196DD0;

u8 func_80151C78_ovl3(void) {
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        if (D_800E8920[D_8004A7C4->objId] != 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    if (D_800D6FE8.buttonHeld & D_JPAD) {
                        set_kirby_action_1(9, 14);
                    }
                    else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
                case 1:
                    if (D_800D6FE8.buttonHeld & D_JPAD) {
                        set_kirby_action_1(0xB, 0x10);
                    }
                    else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
                case 2:
                    if (D_800D6FE8.buttonHeld & D_JPAD) {
                        set_kirby_action_1(0x12, 0x12);
                    }
                    else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
            }
            return 0xE;
        }
        if (func_80179130_ovl3() != 0) {
            return 0xE;
        }
        if ((D_800D6FE8.buttonHeld & (L_JPAD | R_JPAD | D_JPAD)) == 0) {
            if ((D_800E9560[D_8004A7C4->objId] == 0) && (D_800E64D0[D_8004A7C4->objId] == 0.0f) && (D_800E3210[D_8004A7C4->objId] <= D_80196DD0)) {
                set_kirby_action_1(6, 6);
                return 0xE;
            }
        }
    } else {
        if (D_800E8920[D_8004A7C4->objId] != 0) {
            set_kirby_action_1(1, 3);
        } else {
            set_kirby_action_1(3, 5);
        }
        D_8012E7F8 = 0.0f;
        return 0xE;
    }
    return 0;
}

extern u32 D_800D6B54;
#ifdef NON_MATCHING
//generated by mips_to_c commit 09d006c9da5d6bbcd31ac6ca5c9165c1a8533a83
u32 ovl3_process_command_string(u8 arg0[]) {
    u32 phi_v1_2;
    u32 phi_v1_3;

    if (D_800D6B54 == 0) {
        return 0;
    }
    phi_v1_3 = 0;
    while (arg0[phi_v1_3] != 0xF) {
        switch (arg0[phi_v1_3]) {
            case 1:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151100_ovl3();
                }
                break;
            case 2:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151160_ovl3();
                }
                break;
            case 3:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_801517FC_ovl3();
                }
                break;
            case 4:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151864_ovl3();
                }
                break;
            case 5:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151288_ovl3();
                }
                break;
            case 6:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151938_ovl3();
                }
                break;
            case 8:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_801518E0_ovl3();
                }
                break;
            case 7:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_8015190C_ovl3();
                }
                break;
            case 9:
                if (gKirbyState.unk17 == 0) {
                    phi_v1_2 = func_80151448_ovl3();
                }
                break;
            case 11:
                phi_v1_2 = func_801519D4_ovl3();
                break;
            case 12:
                phi_v1_2 = func_80151AF4_ovl3();
                break;
            case 13:
                phi_v1_2 = func_80151B78_ovl3();
                break;
            case 14:
                phi_v1_2 = func_80151C78_ovl3();
                break;
            case 10:
                break;
        }
        if (phi_v1_2 == 0) {
            continue;
        }
        phi_v1_3++;
    }
    return phi_v1_2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3/func_80151E94_ovl3.s")
#endif


