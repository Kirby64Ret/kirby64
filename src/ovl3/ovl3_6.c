#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "Player.h"

extern u8 D_801957D4_ovl3[];

extern void func_80153984_ovl3(void);
extern s32 func_801217B8(void);
extern void func_8011D67C(void);
extern void func_8011DC5C(void);
extern void func_8011DC04(s32);
#include "GObj.h"
#include "track_arrays.h"
#include "ovl1/ovl1_2_2.h"

extern u8 D_8019338C_ovl3[];
extern u8 D_8019154C_ovl3[];
extern s32 D_8012E80C[];

extern s32 func_801ACCA0_ovl7(s32, s32, f32, f32);
extern s32 func_800A8234(s32, s32, s32);
extern s32 func_80123170(void);
extern void func_800FB914(s32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);

extern void func_8011CF58(void);
extern s32 func_80111A04(u8 *, s32);
extern void func_80111C4C(s32);
extern s32 func_801693C4_ovl3(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
extern void func_80122F08(s32);
extern void func_801230E8(s32, s32, s32);
extern s32 func_801632B8_ovl3(s32);
extern s32 random_soft_s32_range(s32);
extern s32 D_8012E7FC;
#include "DObj.h"
#include "unk_structs/D_800E1B50.h"
extern void func_8015449C_ovl3(u8 *, s32);

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017CF60_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017D430_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017D8E8_ovl3.s")

#ifdef MIPS_TO_C
// 31/55: the ROM re-reads gKirbyState.unk3C for the D_800EC2E0 store after the
// loop; IDO CSEs it with the loop's own compare no matter how the loop or the
// store is written (do/while, while(1)+break, swapped compare, type-split
// store, pointer-punned read).
void func_8017DAD8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 idx;
    s32 rnd;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            idx = func_801632B8_ovl3(3);
            D_800E1B50[idx + 0x70] = (struct UnkStruct800E1B50 *) arg0;
            do {
                rnd = random_soft_s32_range(5);
            } while (rnd == gKirbyState.unk3C);
            D_8012E7FC = rnd;
            D_800EC2E0[idx].as_s32 = gKirbyState.unk3C;
            D_800EC660[idx] = D_800EA8A0[omCurrentObj->objId];
            D_800EA8A0[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017DAD8_ovl3.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017DBB8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017DF60_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E074_ovl3.s")

void func_8017E1EC_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C();
        func_8011D67C();
    } else if (gKirbyState.abilityInUse != 0) {
        func_8015449C_ovl3(D_8019338C_ovl3, 0);
        func_80111C4C(func_80111A04(D_8019154C_ovl3, omCurrentObj->objId));
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E284_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017E54C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EA0C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017EDDC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F1C0_ovl3.s")

void func_8017F8B8_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8920[omCurrentObj->objId] != 0) {
                temp = func_80123170();
                func_800FB914(2);
                play_sound(0x120);
                if (temp != -1) {
                    func_800A7F74(5, 1, temp, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8017F988_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180818_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80180B58_ovl3.s")

void func_80181014_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x2F;
    play_sound(0x22);
    if (func_801ACCA0_ovl7(0x3A, 0, 30.0f, 15.0f) != 0) {
        gKirbyState.abilityInUse = gKirbyState.ability;
    } else {
        gKirbyState.abilityInUse = 0;
    }
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_801810D0_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181110_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801815F4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181AF0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181CFC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80181F64_ovl3.s")

void func_80182658_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 6) {
                D_8012E80C[0] = func_800A8234(2, 1, 0x3A);
                D_8012E80C[1] = func_800A8234(2, 1, 0x3B);
            } else {
                D_8012E80C[0] = func_800A8234(2, 1, 0x33);
                D_8012E80C[1] = func_800A8234(2, 1, 0x34);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018271C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80182D9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801831EC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183428_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801835AC_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183A1C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183E38_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80183FF4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184538_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_801848A4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184B24_ovl3.s")

void func_80184C64_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80184CA4_ovl3.s")

void func_80185180_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (D_800E8920[omCurrentObj->objId] != 0) {
                play_sound(0x267);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185224_ovl3.s")

void func_801856A4_ovl3(s32 arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[omCurrentObj->objId] = 0x39;
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_801693C4_ovl3(0xE);
    func_801632B8_ovl3(8);
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 += 1;
    curObjSleepForever();
}

void func_80185748_ovl3(s32 arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185788_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185968_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80185A9C_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186248_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186750_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186A20_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80186E30_ovl3.s")

void func_80187FD0_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_8012E80C[0] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x11]);
            D_8012E80C[1] = func_800A8100(1, 1, 0x13, D_800DFBD0[omCurrentObj->objId][0x12]);
        }
    }
}

void func_80188078_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp;

    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            temp = func_801632B8_ovl3(9);
            D_800E98E0[temp] = gKirbyState.unk58;
            D_800E9AA0[temp].as_s32 = gKirbyState.unk5C;
            D_800E1B50[temp + 0x70] = (struct UnkStruct800E1B50 *) D_800DFBD0[omCurrentObj->objId][0xE];
            gKirbyState.unk58 = 0;
            gKirbyState.unk5C = 0;
            D_800DFBD0[omCurrentObj->objId][0xE]->flags = 2;
        }
    }
}

void func_8018813C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_8015449C_ovl3(D_801957D4_ovl3, 0);
        }
    }
}

void func_80188184_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(5);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80188238_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_80189914_ovl3.s")

void func_8018B188_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = 1;
            D_800EBBE0[omCurrentObj->objId] = func_801693C4_ovl3(0x12);
            D_800EC2E0[D_800EBBE0[omCurrentObj->objId]].as_s32 = 0;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018B228_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018CC54_ovl3.s")

void func_8018D460_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (gKirbyState.unk30 == 0) {
                if (gKirbyState.unk17 == 0) {
                    func_8011DC5C();
                    func_8011DC04(0x3C);
                }
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018D4C8_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018DDCC_ovl3.s")

void func_8018DF78_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            gKirbyState.unk44 += 1;
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018DFB4_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E164_ovl3.s")

void func_8018E36C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            func_801632B8_ovl3(0xA);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E3B0_ovl3.s")

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018E608_ovl3.s")

void func_8018F2B4_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            if (D_800E8AE0[omCurrentObj->objId] & 7) {
                if (D_800E8AE0[omCurrentObj->objId] & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
            } else if (gKirbyState.unk7 == 1) {
                play_sound(0x267);
            } else {
                play_sound(5);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/ovl3_6/func_8018F368_ovl3.s")

