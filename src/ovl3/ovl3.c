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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3/func_80151448_ovl3.s")

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

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3/func_80151E94_ovl3.s")
