#include "common.h"
#include <macros.h>
#include "GObj.h"
#include "Player.h"
#include "track_arrays.h"
#include "ovl2/plylib.h"

struct UnkD6F58 {
    u8 pad0[0x50];
    u32 unk50;
    u32 unk54;
    u32 unk58;
};

extern struct UnkD6F58 D_800D6F58;
extern u16 D_800D6FB2;
extern s16 D_80198838_ovl3;

extern s32 func_80121194(void);
extern s32 func_801210B4(void);
extern s32 func_801210FC(void);
extern s32 func_80122558(void);
extern s32 func_801226FC(void);
extern s32 func_80179130_ovl3(void);
extern s32 func_801772CC_ovl3(s32);

s32 func_80151100_ovl3(void) {
    if (!(gKirbyState.isTurning & 1) && (gKirbyState.unk17 == 0) && (func_80121194() != 0)) {
        gKirbyState.isTurning |= 1;
    }
    return 0;
}

s32 func_80151160_ovl3(void) {
    if (D_800D6F58.unk54 == 0) {
        if (!(gKirbyController.buttonHeld & 0x400) && (gKirbyController.buttonPressed & 0x8000)) {
            if (((D_800E8AE0[omCurrentObj->objId] & 6) == 6) && (gKirbyController.buttonHeld & 0xB00)) {
                gKirbyState.unk44 = 1;
                set_kirby_action_1(0x17, 0x1B);
                return 2;
            }
            set_kirby_action_1(3, 5);
            return 2;
        }
        if (((D_800E8AE0[omCurrentObj->objId] & 6) == 6) && (gKirbyController.buttonHeld & 0x800) && (gKirbyState.action != 0xA) && (gKirbyState.action != 0xB)) {
            gKirbyState.unk44 = 1;
            set_kirby_action_1(0x17, 0x1B);
            return 2;
        }
    }
    return 0;
}

s32 func_80151288_ovl3(void) {
    s32 flag;

    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (D_800D6F58.unk54 == 0) {
            flag = 0;
            if (gKirbyState.unk4 == 2) {
                if ((gKirbyController.buttonPressed & 0x8000) || (gKirbyController.buttonHeld & 0x300)) {
                    flag = 1;
                }
            } else if (gKirbyController.buttonPressed & 0x8000) {
                flag = 1;
            } else if (!(gKirbyController.buttonHeld & 0x3F) && (gKirbyController.buttonHeld & 0xF00)) {
                flag = 1;
            }
            if (flag != 0) {
                if (func_80179130_ovl3() != 0) {
                    return 0xA;
                }
                set_kirby_action_1(0x17, 0x1B);
                if (gKirbyController.buttonPressed & 0x8000) {
                    gKirbyState.unk44 = 1;
                } else {
                    gKirbyState.unk44 = 0;
                }
                return 0xA;
            }
        }
    } else if ((gKirbyState.abilityInUse != 0x13) && (D_800D6F58.unk54 == 0)
            && (gKirbyController.buttonPressed & 0x8000) && (gKirbyState.floatTimer != 0)
            && (gKirbyState.unk4 == 0) && (D_800E8920[omCurrentObj->objId] == 0)) {
        gKirbyState.unk7 = 0;
        gKirbyState.unk44 = 0;
        set_kirby_action_1(0xC, 9);
        return 5;
    }
    return 0;
}

#ifdef PORT
/* Action-9 input predicate (inhale / spit / use-ability trigger), via m2c
 * with full context. D_800D6F58 is an undeclared 0x5A-byte global block
 * (HUD/pause state); the +0x50/+0x54/+0x58 gates are read at their N64
 * offsets -- nothing on PC writes them yet, so they read 0 (gates open). */
s32 func_80151448_ovl3(void) {
    extern s32 D_800E8920[];
    s32 func_801772CC_ovl3(s32);
    u32 gate50 = D_800D6F58.unk50;
    u32 gate54 = D_800D6F58.unk54;
    u32 gate58 = D_800D6F58.unk58;
    u16 btn;

    if ((gKirbyState.isTurning & 1) || gate54 != 0) {
        gKirbyState.unkA4 = 0;
        if (gKirbyController.buttonPressed & 0x4000) {
            gKirbyState.unkA = 1;
        }
        return 0;
    }
    if (gKirbyState.unk17 != 0) {
        return 0;
    }
    if (D_800D6FB2 == 2) {
        if ((gKirbyController.buttonPressed & 0x4000) || gKirbyState.unkA == 1) {
            gKirbyState.unkA = 0;
            gKirbyState.unk7 = 0;
            gKirbyState.unk30 = 0;
            set_kirby_action_1(0x17, 0x1A);
            return 9;
        }
        return 0;
    }
    if (gate54 == 0 && gate50 == 0 && gKirbyState.unk4 == 2) {
        btn = gKirbyController.buttonPressed;
        if (btn & 0x4000) {
            set_kirby_action_1(0x1B, 0x19);
            return 9;
        }
        if ((btn & 0x3F) || gKirbyState.unkA == 3) {
            gKirbyState.unkA = 0;
            set_kirby_action_1(0x13, 0x13);
            return 9;
        }
    }
    gKirbyState.unkA4 = 0;
    btn = gKirbyController.buttonPressed;
    if (gKirbyState.abilityInUse == 0 && gKirbyState.unk8 == 0
        && (gate50 | gate54 | gate58) == 0) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            if (!(btn & 0x400) && (btn & 0x3F)) {
                gKirbyState.unkA4 = 1;
            }
        } else if (btn & 0x3F) {
            gKirbyState.unkA4 = 1;
        }
        if (gKirbyState.unkA4 != 0) {
            gKirbyState.unkA4 = 0;
            if (gKirbyState.unk4 == 1) {
                gKirbyState.unk7 = 0;
                set_kirby_action_1(0x11, 0x11);
                return 9;
            }
            if (gKirbyState.unk4 == 0 && gKirbyState.ability != 0
                && gKirbyState.action != 0xA && gKirbyState.action != 0xB) {
                gKirbyState.unk7 = 0;
                set_kirby_action_1(0x11, 0x11);
                return 9;
            }
        }
    }
    if ((btn & 0x4000) || gKirbyState.unkA == 1) {
        gKirbyState.unkA = 0;
        if (gKirbyState.unk4 == 0) {
            if (gKirbyState.ability != 0) {
                if (gKirbyState.abilityInUse == 0
                    && (gKirbyState.ability != 0xC || D_80198838_ovl3 != 0)) {
                    s32 act = func_801772CC_ovl3((s32) gKirbyState.ability);

                    if (act != 0xFFFF) {
                        gKirbyState.unk30 = 0;
                        gKirbyState.unk16 = 0;
                        set_kirby_action_1(act, 0x1A);
                        return 9;
                    }
                }
                return 0;
            }
            gKirbyState.unk30 = 0;
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0x18, 0x18);
            return 9;
        }
        if (gKirbyState.unk4 == 1) {
            set_kirby_action_1(0x1A, 0x19);
            return 9;
        }
        return 0;
    }
    if (gKirbyState.unk4 == 1) {
        if (D_800E8920[omCurrentObj->objId] != 0 && (btn & 0x400)) {
            gKirbyState.unk30 = 0;
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0xB, 0x10);
            return 9;
        }
        return 0;
    }
    if (gKirbyState.unk4 == 2 && (btn & 0x400)) {
        gKirbyState.unk7 = 0;
        set_kirby_action_1(0x12, 0x12);
        return 9;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3/func_80151448_ovl3.s")
#endif

s32 func_801517FC_ovl3(void) {
    if (func_80179130_ovl3() != 0) {
        return 3;
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        set_kirby_action_1(6, 6);
        return 3;
    }
    return 0;
}

s32 func_80151864_ovl3(void) {
    if ((D_800D6F58.unk54 == 0) && (gKirbyController.buttonHeld & 0x400) && (gKirbyState.unk4 == 0) && !(gKirbyState.isTurning & 2)) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        set_kirby_action_1(9, 0xE);
        return 4;
    }
    return 0;
}

s32 func_801518E0_ovl3(void) {
    if (func_80122558() != 0) {
        return 8;
    }
    return 0;
}

s32 func_8015190C_ovl3(void) {
    if (func_801226FC() != 0) {
        return 7;
    }
    return 0;
}

s32 func_80151938_ovl3(void) {
    if ((gKirbyState.unk151 != 0) && !(gKirbyState.isTurning & 1) && (gKirbyState.unk4 == 0) && (D_800E3210[omCurrentObj->objId] <= 0.0f) && (func_801210FC() != 0)) {
        set_kirby_action_1(0xF, 0xC);
        return 6;
    }
    return 0;
}

s32 func_801519D4_ovl3(void) {
    if ((gKirbyState.unk4 == 0) && (gKirbyController.buttonPressed & 0x400)) {
        gKirbyState.unk7 = 0;
        set_kirby_action_1(9, 0xE);
        return 0xB;
    }
    if (!(gKirbyState.isTurning & 1)) {
        if (D_800D6F58.unk54 == 0) {
            if (func_80121194() != 0) {
                gKirbyState.unk2C = 0xE;
                gKirbyState.isTurning |= 1;
            } else if ((gKirbyController.buttonHeld & 0x300) && !(gKirbyController.buttonHeld & 0x400)) {
                gKirbyState.unk38 = 0.0f;
                set_kirby_action_1(1, 3);
                return 0xB;
            }
        }
    } else if (gKirbyState.unk2C != 0) {
        gKirbyState.unk2C -= 1;
    } else if ((gKirbyController.buttonHeld & 0x300) && !(gKirbyController.buttonHeld & 0x400)) {
        gKirbyState.unk38 = 0.0f;
        set_kirby_action_1(1, 3);
        return 0xB;
    }
    return 0;
}

s32 func_80151AF4_ovl3(void) {
    if (!(gKirbyState.isTurning & 1) && !(gKirbyController.buttonHeld & 0x300) && (D_800E64D0[omCurrentObj->objId] == 0.0f)) {
        set_kirby_action_1(0, 1);
        return 0xC;
    }
    return 0;
}

s32 func_80151B78_ovl3(void) {
    if (gKirbyState.unk17 != 0) {
        if (gKirbyState.unk30 != 0) {
            set_kirby_action_1(0, 1);
            return 0xD;
        }
        return 0;
    }
    if (gKirbyState.unk30 != 0) {
        set_kirby_action_1(0, 1);
        return 0xD;
    }
    if (func_801210B4() == 0) {
        switch (gKirbyState.unk4) {
            case 0:
                break;
            case 1:
                if ((D_800D6F58.unk54 == 0) && (gKirbyController.buttonHeld & 0x400)) {
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
    return 0;
}

extern s32 D_800E9560[];
extern s32 D_8012E7E8;

s32 func_80151C78_ovl3(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    if (gKirbyController.buttonHeld & 0x400) {
                        set_kirby_action_1(9, 0xE);
                    } else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
                case 1:
                    if (gKirbyController.buttonHeld & 0x400) {
                        set_kirby_action_1(0xB, 0x10);
                    } else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
                case 2:
                    if (gKirbyController.buttonHeld & 0x400) {
                        set_kirby_action_1(0x12, 0x12);
                    } else {
                        set_kirby_action_1(0, 1);
                    }
                    break;
            }
            return 0xE;
        }
        if (func_80179130_ovl3() != 0) {
            return 0xE;
        }
        if (!(gKirbyController.buttonHeld & 0x700) && (D_800E9560[omCurrentObj->objId] == 0)
         && (0.0f == D_800E64D0[omCurrentObj->objId]) && (D_800E3210[omCurrentObj->objId] <= -0.8f)) {
            set_kirby_action_1(6, 6);
            return 0xE;
        }
    } else {
        if (D_800E8920[omCurrentObj->objId] != 0) {
            set_kirby_action_1(1, 3);
        } else {
            set_kirby_action_1(3, 5);
        }
        *(f32 *) ((u8 *) &D_8012E7E8 + 0x10) = 0.0f;
        return 0xE;
    }
    return 0;
}

/* FACTORY: 3/118 words differ, and two of those three are one stack offset:
 * the ROM spills `ret` to sp+0x24 across case 1's discarded call, IDO here
 * spills it to sp+0x20. Same frame size (0x28), same saved registers, same
 * order. The third is verify.py resolving the compiler-generated jump table
 * against this file's own .rodata instead of the listing's
 * jtbl_80196DD4_ovl3 symbol, which is a measurement artifact of scoring a
 * draft in isolation rather than a real difference.
 *
 * Recovered from the listing, not from m2c, and three structural findings
 * were needed to get here from 115/119:
 *
 *   - The loop is INDEX-based, not pointer-based. The ROM zeroes $a1 and does
 *     `addu $s1, $a0, $a1` before the loop -- that is IDO strength-reducing
 *     `cmds[i]` with `i++` into a pointer walk, and its setup still
 *     materialises the initial index. Writing the pointer walk directly costs
 *     112 words; writing `p = &cmds[i]` and caching it costs 90.
 *   - `i` is declared BEFORE `ret`: the ROM zeroes $a1 then $v1.
 *   - Cases 7 and 8 are written in the source in the order 8, then 7.
 *     jtbl_80196DD4_ovl3 entry 6 points at .L80151FC4 (func_8015190C, case 7)
 *     and entry 7 at .L80151FA8 (func_801518E0, case 8), so the two bodies sit
 *     at each other's expected addresses. Emitting them in numeric order
 *     costs 2 extra words.
 *   - The early-out is `break`, not `return ret`. Both are correct C -- the
 *     function returns `ret` either way -- but `return` makes IDO invert the
 *     test to beqzl and branch around, which is 2 words and shifts the tail.
 *
 * This function had a PORT arm and no decompilation attempt at all, which the
 * decomp-first rule forbids. tools/decomp/refound_status.py counted it BARE. */
#ifdef MIPS_TO_C
s32 func_80151E94_ovl3(u8 *cmds) {
    s32 func_801517FC_ovl3(void);
    s32 func_80151864_ovl3(void);
    s32 func_80151938_ovl3(void);
    s32 func_801518E0_ovl3(void);
    s32 func_8015190C_ovl3(void);
    s32 func_80151448_ovl3(void);
    s32 func_801519D4_ovl3(void);
    s32 func_80151100_ovl3(void);
    s32 func_80151160_ovl3(void);
    s32 func_80151288_ovl3(void);
    s32 func_80151AF4_ovl3(void);
    s32 func_80151B78_ovl3(void);
    s32 func_80151C78_ovl3(void);
    extern s32 D_800D6B54;
    s32 i = 0;
    s32 ret = 0;

    if (D_800D6B54 != 0) {
        return 0;
    }
    while (cmds[i] != 0xF) {
        switch (cmds[i]) {
            case 1:
                if (gKirbyState.unk17 == 0) {
                    func_80151100_ovl3();
                }
                break;
            case 2:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151160_ovl3();
                }
                break;
            case 3:
                if (gKirbyState.unk17 == 0) {
                    ret = func_801517FC_ovl3();
                }
                break;
            case 4:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151864_ovl3();
                }
                break;
            case 5:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151288_ovl3();
                }
                break;
            case 6:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151938_ovl3();
                }
                break;
            case 8:
                if (gKirbyState.unk17 == 0) {
                    ret = func_801518E0_ovl3();
                }
                break;
            case 7:
                if (gKirbyState.unk17 == 0) {
                    ret = func_8015190C_ovl3();
                }
                break;
            case 9:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151448_ovl3();
                }
                break;
            case 11:
                ret = func_801519D4_ovl3();
                break;
            case 12:
                ret = func_80151AF4_ovl3();
                break;
            case 13:
                ret = func_80151B78_ovl3();
                break;
            case 14:
                ret = func_80151C78_ovl3();
                break;
            default:
                break;
        }
        if (ret != 0) {
            break;
        }
        i++;
    }
    return ret;
}
#elif defined(PORT)
/* PORT: the action-transition dispatcher, from asm/nonmatchings/ovl3/ovl3/
 * func_80151E94_ovl3.s. Every player action tick hands it a small byte list
 * of transition-predicate ids (0xF-terminated); it calls the compiled
 * predicates above in order until one requests an action change, exactly
 * the jump table's mapping (ids 1..9 are gated on gKirbyState.unk17, id 1's
 * result is discarded like the ROM does, id 10 is a no-op). This is the
 * input -> state-machine wiring: the predicates read gKirbyController and
 * call set_kirby_action. */
s32 func_80151E94_ovl3(void *arg0) {
    s32 func_801517FC_ovl3(void);
    s32 func_80151864_ovl3(void);
    s32 func_80151938_ovl3(void);
    s32 func_801518E0_ovl3(void);
    s32 func_8015190C_ovl3(void);
    s32 func_80151448_ovl3(void);
    s32 func_801519D4_ovl3(void);
    s32 func_80151100_ovl3(void);
    s32 func_80151160_ovl3(void);
    s32 func_80151288_ovl3(void);
    s32 func_80151AF4_ovl3(void);
    s32 func_80151B78_ovl3(void);
    s32 func_80151C78_ovl3(void);
    extern s32 D_800D6B54;
    u8 *p = arg0;
    s32 ret = 0;
    u8 id;

    if (D_800D6B54 != 0) {
        return 0;
    }
    for (id = *p; id != 0xF; id = *(++p)) {
        switch (id) {
            case 1:
                if (gKirbyState.unk17 == 0) {
                    func_80151100_ovl3();
                }
                break;
            case 2:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151160_ovl3();
                }
                break;
            case 3:
                if (gKirbyState.unk17 == 0) {
                    ret = func_801517FC_ovl3();
                }
                break;
            case 4:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151864_ovl3();
                }
                break;
            case 5:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151288_ovl3();
                }
                break;
            case 6:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151938_ovl3();
                }
                break;
            case 7:
                if (gKirbyState.unk17 == 0) {
                    ret = func_8015190C_ovl3();
                }
                break;
            case 8:
                if (gKirbyState.unk17 == 0) {
                    ret = func_801518E0_ovl3();
                }
                break;
            case 9:
                if (gKirbyState.unk17 == 0) {
                    ret = func_80151448_ovl3();
                }
                break;
            case 11:
                ret = func_801519D4_ovl3();
                break;
            case 12:
                ret = func_80151AF4_ovl3();
                break;
            case 13:
                ret = func_80151B78_ovl3();
                break;
            case 14:
                ret = func_80151C78_ovl3();
                break;
            default:
                break;
        }
        if (ret != 0) {
            return ret;
        }
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3/func_80151E94_ovl3.s")
#endif
