#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "sounds.h"
#include "stages.h"
#include "buffers.h"

#include "D_8004A7C4.h"
#include "ovl1/ovl1_6.h"
#include "ovl2/ovl2_8.h"

extern void func_800AA78C(s32, s32, f32);
extern void play_sound(s32 a);

extern struct KirbyState gKirbyState;

VTABLE vtbl_80196990 = {
    0x8016CA8C,    0x8016D3A8,    0x8016DA14,    0x8016DDE8,
    0x8016E638,    0x8016E8A0,    0x8016EF5C,    0x8016F6DC,
    0x8016F80C,    0x8016FD88,    0x801702F0,    0x80170794,
    0x80170AC4,    0x801712F8,    0x80171E00,    0x801727D8,
    0x801741DC,    0x80174504,    0x801747F0,    0x80174A30,
    0x80174C10,    0x8017599C,    0x80176490,    0x80176860,
    0x80172AE4,    0x801736BC,    0x80173CB4,    0x80173EC0,
    0x801772E0,    0x801776E8,    0x80177B40,    0x80177E78,
};

VTABLE D_80196A10 = {
    0x801782C8,    0x80178728,    0x801789D8,    0x80179370,
    0x80179C28,    0x8017B068,    0x8017B78C,    0x8017BD68,
    0x8017BF34,    0x8017C418,    0x8017CF60,    0x8017D8E8,
    0x8017E074,    0x8017E284,    0x8017EA0C,    0x8017F1C0,
    0x80180818,    0x80181014,    0x80181110,    0x80181AF0,
    0x80181F64,    0x80182D9C,    0x801835AC,    0x80183E38,
    0x80184538,    0x80184B24,    0x80184CA4,    0x801856A4,
    0x80185788,    0x80185A9C,    0x80186750,    0x80186E30,
    0x80189914,    0x8018CC54,    0x8018DDCC,    0x8018E164,
    0x8018E608,    0x8017C418,    0x80156050,    0x801567B8,
    0x8015A44C,    0x8015849C,    0x80158528,    0x8015882C,
    0x80158924,    0x80158C40,    0x80158DB4,    0x80159164,
    0x80159BA0,    0x8015A144,    0x801585A0,    0x80158604,
    0x801586A8,    0x801587AC,
};

VTABLE D_80196AE8 = {
    0x8016D1E8,    0x8016D81C,    0x8016DD0C,    0x8016E15C,
    0x8016EE5C,    0x8016F240,    0x8016F7C8,    0x8016FB58,
    0x8016FFF8,    0x80170638,    0x80170A24,    0x80170D88,
    0x801717F0,    0x80172234,    0x80172A3C,    0x80174284,
    0x801746E0,    0x8017499C,    0x80174B7C,    0x80175754,
    0x801760FC,    0x80176DE0,    0x80173260,    0x80173AF4,
    0x80173E40,    0x80174144,    0x80177438,    0x8017782C,
    0x80177CBC,    0x80177FB4,    0x80178420,    0x8017883C,
    0x80178B18,    0x8017982C,    0x8017A390,    0x8017B3C4,
    0x8017B8F4,    0x8017BEF4,    0x8017C1FC,    0x8017CAF8,
};

VTABLE D_80196B88 = {
    0x8017D430,    0x8017DBB8,    0x8017E1EC,    0x8017E54C,
    0x8017EDDC,    0x8017F988,    0x80180B58,    0x801810D0,
    0x801815F4,    0x80181CFC,    0x8018271C,    0x80183428,
    0x80183A1C,    0x80183FF4,    0x801848A4,    0x80184C64,
    0x80185224,    0x80185748,    0x80185968,    0x80186248,
    0x80186A20,    0x80188238,    0x8018B228,    0x8018D4C8,
    0x8018DFB4,    0x8018E3B0,    0x8018F368,    0x80156594,
    0x80157738,    0x8015A92C,    0x80158508,    0x80158564,
    0x801588D0,    0x80158B10,    0x80158CA8,    0x80158EEC,
    0x80159ADC,    0x80159EF0,    0x8015A31C,    0x80158668,
    0x80158688,    0x80158744,    0x8015880C,
};

u32 D_80196C34[] = {
    BANK_INDEX(2, 315),
    BANK_INDEX(2, 316),
    BANK_INDEX(2, 317),
    BANK_INDEX(2, 318),
    BANK_INDEX(2, 319),
    BANK_INDEX(2, 320),
};


extern const char D_801972D0[];
extern s32 D_800BE514;

extern u32 D_800BE4FC;


extern struct {
    s32 unk0;
    Vector unk4;
    Vector unk10;
    f32 unk1C;
    u32 unk20;
    u8 unk21;
} *D_8012E944;

void func_80177000_ovl3(struct GObj *arg0);
void func_8016C558_ovl3(struct GObj *arg0);

void func_80152348_ovl3(f32);

extern s32 D_80196D48[];
extern u16 D_800D6FB0;
extern f32 D_80197840;

extern f32 D_80192704, D_801926E8;

// very close if you ask me
// just need to fix the switch case and
//      separate some deduplicated immediate loads
#ifdef NON_MATCHING
void func_8016BF60_ovl3(struct GObj *arg0) {
    if (gKirbyState.unk28 != 0) {
        gKirbyState.action = 0x1F;
        gKirbyState.previousAction = 0x1F;
        func_801DB1E0_ovl3();
        func_800AFA14();
    }
    D_800DF150[D_8004A7C4->objId] = func_8016C558_ovl3;
    assign_new_process_entry(gEntityGObjProcessArray3[D_8004A7C4->objId], func_80177000_ovl3);
    func_8011C8F8();
    func_800A9864(D_80196D48[gKirbyState.unk4], 0x20, 0x10);
    gKirbyState.unk154 = 2;
    if (D_800D6FB0 != 0) {
        gKirbyState.inhaledEntityData = 0;
        gKirbyState.isHoldingEntity = 0;
        gKirbyState.unk4 = 0;
        switch (D_800D6FB0 >> 8) {
            case 1:
                func_80227F38_ovl19();
                break;
            case 2:
                gKirbyState.abilityState = 0x4B;
                break;
        }
    }
    if (gKirbyState.unk4 == 1) {
        D_800E0490[D_8004A7C4->objId] = &D_80192704;
    } else {
        D_800E0490[D_8004A7C4->objId] = &D_801926E8;
    }
    func_800F8E6C(arg0);
    func_80152348_ovl3(20.0f);
    D_8012E944 = func_800FF144();
    if (D_8012E944 != 0) {
        D_8012E944->unk10.x = 18.0f;
        D_8012E944->unk10.y = 20.0f;
        D_8012E944->unk10.z = -240.0f;
        D_8012E944->unk21 = 0;
    }
    if (gKirbyState.unk4 != 0) {
        func_8011CCB8();
    }
    gKirbyState.floatTimer = 0xF0;
    D_80198830.unk0 = 0;
    D_80198830.unk2 = 2;
    if (D_800BE4FC == 2) {
        switch (D_800BE514 & 0x7FFFFFFF) {
            case 1:
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0;
                break;
            case 0:
            case 9:
                if (D_800BE514 & 0x80000000) {
                    D_800E6A10[D_8004A7C4->objId] = -1.0f;
                    gKirbyState.unkB = 4;
                } else {
                    D_800E6A10[D_8004A7C4->objId] = 1.0f;
                    gKirbyState.unkB = 3;
                }
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0x47;
                break;
            case 4:
            case 11:
                if (D_800BE514 & 0x80000000) {
                    D_800E6A10[D_8004A7C4->objId] = -1.0f;
                } else {
                    D_800E6A10[D_8004A7C4->objId] = 1.0f;
                }
                gKirbyState.unkB = 1;
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0x47;
                break;
            case 12:
                gKirbyState.unk3C = (D_800BE514 & 0x7FFFFFFF);
                if (D_800BE514 & 0x80000000) {
                    D_800E6A10[D_8004A7C4->objId] = -1.0f;
                } else {
                    D_800E6A10[D_8004A7C4->objId] = 1.0f;
                }
                gKirbyState.unkB = 2;
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0x47;
                break;
            case 5:
            case 6:
                if (gKirbyState.unk4 == 0) {
                    gKirbyState.unk3C = (D_800BE514 & 0x7FFFFFFF);
                    gKirbyState.unkB = 5;
                } else {
                    gKirbyState.unk3C = 0;
                    if ((D_800BE514 & 0x7FFFFFFF) == 5) {
                        gKirbyState.unkB = 2;
                    } else {
                        gKirbyState.unkB = 1;
                    }
                }
                if (D_800BE514 & 0x80000000) {
                    D_800E6A10[D_8004A7C4->objId] = -1.0f;
                } else {
                    D_800E6A10[D_8004A7C4->objId] = 1.0f;
                }
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0x47;
                break;
            case 7:
            case 8:
                if (gKirbyState.unk4 == 0) {
                    gKirbyState.unk3C = (D_800BE514 & 0x7FFFFFFF);
                    gKirbyState.unkB = 6;
                } else {
                    gKirbyState.unk3C = 0;
                    gKirbyState.unkB = 1;
                }
                if (D_800BE514 & 0x80000000) {
                    D_800E6A10[D_8004A7C4->objId] = -1.0f;
                } else {
                    D_800E6A10[D_8004A7C4->objId] = 1.0f;
                }
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0x47;
                break;
            default:
                print_error_stub(&D_801972D0, (D_800BE514 & 0x7FFFFFFF));
                gEntityVtableIndexArray[D_8004A7C4->objId] = 0;
                break;
        }
    } else {
        gEntityVtableIndexArray[D_8004A7C4->objId] = 0;
    }
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 0x56, vtbl_80196990);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016BF60_ovl3.s")
#endif

void func_8016C510_ovl3(struct GObj *arg0) {
    call_virtual_function(gEntityVtableIndexArray[D_8004A7C4->objId], 0x56, vtbl_80196990);
}

extern f32 gKirbyHp;
extern s32 D_800D6B54;
extern u32 gGameTampered;


extern s32 D_80193168;
extern f32 D_80197344;
extern f32 D_80197348;
void func_8011D4A4(f32);
s32 func_801693C4_ovl3(s32);
s32 random_soft_s32_range(s32);
s32 func_8012209C(void);

// kirby jump start?
void func_8016C558_ovl3(struct GObj *arg0) {
    f32 **tmp;
    s32 idx;
    Vector sp24;

    func_8011E548();
    func_8011DAF8();
    if (gKirbyState.unk17 != 0) {
        gKirbyState.unkA = 0;
    }
    if (gKirbyState.unk68 == 2) {
        func_8015449C_ovl3(&D_80193168, 0);
    }
    call_virtual_function(D_800DDFD0[D_8004A7C4->objId], 0x53, &D_80196AE8);
    if (func_8012209C() != 0) {
        gKirbyState.unk17 = 1;
    }
    if (gKirbyState.unk17 != 0) {
        func_8015A9F8_ovl3();
    }
    if ((gKirbyState.abilityInUse == 0xF) && (gKirbyState.unk38 == D_80197344)) {
        func_80121BCC(0xF9);
    } else {
        func_80121BCC(0xFB);
    }
    func_80121A04();
    func_80121D3C();
    func_801212A4();
    if ((D_800D6B54 == 0) && (gKirbyHp != 0.0f)) {
        if ((gKirbyState.unk15C != 0) && (gKirbyState.unk14 == 0)) {
            func_8011D4A4(gKirbyState.unk158);
        }
        func_80121F50();
    }
    if (D_800E3210[D_8004A7C4->objId] <= 0.0f) {
        gKirbyState.isTurning &= ~4;
    }
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (gKirbyState.vel[1] > 8.0f) {
            if (gKirbyState.action != 0xD) {
                if (gKirbyState.action != 9) {
                    idx = func_801693C4_ovl3(1);
                    if (idx != -1) {
                        tmp = D_800E0490[D_8004A7C4->objId];
                        D_800EC2E0[idx] = 0;
                        D_800EC660[idx] = tmp[1][1]
                                        + tmp[1][0];
                    }
                }
            }
        }
    }
    if (gKirbyState.action == 0xB) {
        func_800B2340(&sp24, D_800DFBD0[D_8004A7C4->objId][2], 0xFFFF);
        if (!(&sp24)) {
            // fake match :)
        }
        D_8012E944->unk4.x = sp24.x;
        D_8012E944->unk4.y = sp24.y;
        D_8012E944->unk4.z = sp24.z;
        D_8012E944->unk1C = gEntitiesAngleYArray[D_8004A7C4->objId];
    } else {
        if (gEntityVtableIndexArray[D_8004A7C4->objId] != 0x50) {
            func_800FF200(D_8012E944);
        }
    }
    if ((gKirbyState.action != 0xD)
     && (gKirbyState.action != 6)
     && (gKirbyState.ceilingCollisionNext != 0))
    {
        if (D_800E3210[D_8004A7C4->objId] > 0.0f) {
            D_800E3750[D_8004A7C4->objId] = 0.0f;
            D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
            D_800E3C90[D_8004A7C4->objId] = D_80197348;
        }
    }
    if (gKirbyState.unk15 != 0) {
        gKirbyState.unk15--;
    }
    if (gKirbyState.unk16 != 0) {
        gKirbyState.unk16--;
    }
    if (D_800E8920[D_8004A7C4->objId] != 0) {
        if (gGameTampered != 0) {
            gKirbyState.floatTimer = random_soft_s32_range(0x3C) + 0x5A;
        } else {
            gKirbyState.floatTimer = 0xF0;
        }
        gKirbyState.unkBA = 0;
    }
    if (gKirbyState.action != 0x17) {
        if (gKirbyState.unkD == -2) {
            set_kirby_action_1(0x10, 1);
        }
    }
    if (gKirbyState.abilityInUse != 1) {
        if (D_80198830.unk0 == 0) {
            D_80198830.unk2 = D_80198830.unk2 + 1;
            if (D_80198830.unk2 < 2) {
                D_80198830.unk0 = 0x1E;
            } else {
                D_80198830.unk0 = 0;
                D_80198830.unk2 = 2;
            }
        } else if (D_80198830.unk0 > 0) {
            D_80198830.unk0--;
        }
    }
    if (gKirbyState.abilityInUse != 0xC) {
        if (D_80198830.unkA == 0) {
            if (D_800E8920[D_8004A7C4->objId] != 0
            || (D_800E8AE0[D_8004A7C4->objId] & 6))
            {
                D_80198830.unk8 = 3;
            }
        } else {
            D_80198830.unkA--;
        }
    }
}

#ifdef __MIPS_TO_C
void func_8016CA8C_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk2C = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0;
    if (gKirbyState.unk4 == 1) {
        D_800E0490[D_8004A7C4->objId] = &D_80192704;
    } else {
        D_800E0490[D_8004A7C4->objId] = &D_801926E8;
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    D_800E6690[D_8004A7C4->objId] = 0.0f;
    D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
    D_800E6850[D_8004A7C4->objId] = D_8019734C;
    if ((gKirbyState.unk4 == 2) && (func_800AA888(0x20007, D_8004A7C4) == 0)) {
        func_80122F08(0x20007);
    }
    if (gKirbyState.unk150 == 0 || (D_800E8AE0[D_8004A7C4->objId] & 6)) {
        if (gKirbyState.unk4 == 2) {
            if ((gKirbyState.previousAction != 0) && (gKirbyState.previousAction != 0x11)) {
                func_800AA78C(0x200C3, 0x20007, 12.0f);
            }
            func_801230E8(0x200C3, 0x200C4, 0);
            func_800AFA14();
        }
        phi_v1 = gKirbyState.unk4;
        if (gKirbyState.unk4 == 0) {
            phi_v1 = gKirbyState.unk4;
            if (D_800E7B20[D_8004A7C4->objId] <= D_80197350) {
                if (gKirbyState.previousAction != 0) {
                    func_800AA78C(0x200D3, 0x20007, 12.0f);
                }
                func_801230E8(0x200D3, 0x200D4, 0);
                func_800AFA14();
                phi_v1 = gKirbyState.unk4;
            }
        }
        if ((phi_v1 == 1) || ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0)) {
            if (phi_v1 == 0) {
                if (gKirbyState.previousAction != 0) {
                    func_800AA78C(0x2009B, 0x20007, 12.0f);
                }
                func_801230E8(0x2009B, 0x2009C, 0);
            } else {
                if (gKirbyState.previousAction != 0) {
                    func_800AA78C(0x20169, 0x20009, 12.0f);
                }
                func_801230E8(0x20169, 0x2016A, 0);
            }
            func_800AFA14();
        }
        if (gKirbyState.previousAction != 0) {
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
        gKirbyState.unk44 = -1;
loop_34:
        temp_s1 = random_soft_s32_range(8) + 8;
        if (temp_s1 > 0) {
loop_35:
            func_801230E8(0x2009B, 0x2009C, 1);
            temp_s0 = phi_s0 + 1;
            phi_s0 = temp_s0;
            if (temp_s0 < temp_s1) {
                goto loop_35;
            }
        }
loop_36:
        temp_v0_6 = random_soft_s32_range(3);
        if (temp_v0_6 == gKirbyState.unk44) {
            goto loop_36;
        }
        D_8012E804 = temp_v0_6;
        temp_s0_2 = (temp_v0_6 * 8) + &D_80196C34;
        func_800AA78C(*temp_s0_2, 0x20007, 12.0f);
        func_80123004(temp_s0_2, 0, 0);
        while (gKirbyState.isTurning & 1 || func_800AF230() != 0) {
            func_800AA78C(0x2009B, 0x20007, 12.0f);
        }
        finish_current_thread(1);
        goto loop_38;
    }
    gKirbyState.unk3C = 0;
    D_800E9AA0[D_8004A7C4->objId] = gKirbyState.turnDirection;
    gKirbyState.isTurning |= 2;
    while (1) {
        if (gKirbyState.unk150 == 2) {
            gKirbyState.unk30 = 1;
        } else {
            gKirbyState.unk30 = 0;
        }
        if (gKirbyState.unk3C != 0) {
            if (gKirbyState.unk30 == 0) {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20017, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x2015B, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B9, 0x20007, 3.0f);
                        }
                        break;
                }
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        func_800AA78C(0x20015, 0x20007, 3.0f);
                        break;
                    case 1:
                        func_800AA78C(0x20159, 0x20009, 3.0f);
                        break;
                    case 2:
                        if (gKirbyState.previousAction != 0x11) {
                            func_800AA78C(0x200B7, 0x20007, 3.0f);
                        }
                        break;
                }
            }
        } else {
            gKirbyState.unk3C++;
        }
        if (gKirbyState.unk30 == 0) {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20017, 0x20018, 0);
                    break;
                case 1:
                    func_801230E8(0x2015B, 0x2015C, 0);
                    break;
                case 2:
                    func_801230E8(0x200B9, 0x200BA, 0);
                    break;
            }
        } else {
            switch (gKirbyState.unk4) {
                case 0:
                    func_801230E8(0x20015, 0x20016, 0);
                    break;
                case 1:
                    func_801230E8(0x20159, 0x2015A, 0);
                    break;
                case 2:
                    func_801230E8(0x200B7, 0x200B8, 0);
                    break;
            }
        }
        D_800E9720[D_8004A7C4->objId] = 0xF;
        while (D_800E9720[D_8004A7C4->objId]-- != 0) {
            finish_current_thread(1);
        }
        if (D_800D6B54 == 0) {
            play_sound(0xEB);
        }
    loop_86:
        if ((gKirbyState.isTurning & 1) != 0) {
            continue;
        }
        finish_current_thread(1);
        goto loop_86;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016CA8C_ovl3.s")
#endif

extern s32 D_8012E7E0;
s32 ovl3_process_command_string(u8 *);

void func_8016D1E8_ovl3(struct GObj *arg0) {
    u8 cmd[] = {2, 3, 9, 0xB, 0xF};
    s32 phi_a0;

    D_800E98E0[D_8004A7C4->objId] = gKirbyState.unk150;
    func_80153984_ovl3();
    func_8011CF58();
    if (ovl3_process_command_string(&cmd) != 0 || gKirbyState.unk17 != 0) {
        gKirbyState.isTurning &= ~2;
        return;
    }
    else if (gKirbyState.unk150 != 0) {
        phi_a0 = gKirbyState.turnDirection;
        if (phi_a0 == 0) {
            if (gKirbyState.unk150 != D_800E98E0[D_8004A7C4->objId]) {
                assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], func_8016C510_ovl3);
                phi_a0 = D_8012E7E0;
                if (1) {}
            }
        } else {
            if (D_800E9AA0[D_8004A7C4->objId] == 0) {
                assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], func_8016C510_ovl3);
                phi_a0 = D_8012E7E0;
            }
        }
        D_800E9AA0[D_8004A7C4->objId] = phi_a0;
    }
    else if (gKirbyState.unk150 != D_800E98E0[D_8004A7C4->objId]) {
        assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], func_8016C510_ovl3);
    }
}


#ifdef MIPS_TO_C
void func_8016D3A8_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    struct GObj *temp_a3;
    struct GObj *temp_a3_2;
    struct GObj *temp_a3_3;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v1_3;
    u8 temp_v1;
    u8 temp_v1_2;
    f32 phi_f2;
    f32 phi_f0;
    u8 phi_v0;
    f32 phi_f2_2;

    temp_a3 = D_8004A7C4;
    gKirbyState.unk44 = 0;
    ((temp_a3->objId * 4) + 0x800F0000)->unk-68E0 = 0;
    if ((D_800E8AE0[temp_a3->objId] & 6) != 0) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
    }
    temp_a3_2 = D_8004A7C4;
    D_800DDFD0[temp_a3_2->objId] = 1;
    if (gKirbyState.previousAction == 1) {
        temp_v0 = temp_a3_2->objId;
        if ((D_800E8AE0[temp_v0] & 6) == 0) {
            phi_f2 = 0.75f;
        } else {
            phi_f2 = 0.375f;
        }
        D_800E64D0[temp_v0] = phi_f2 * D_800E6A10[temp_v0];
        temp_v0_2 = temp_a3_2->objId;
        if ((D_800E8AE0[temp_v0_2] & 6) == 0) {
            phi_f0 = 0.625f;
        } else {
            phi_f0 = 0.3125f;
        }
        D_800E6690[temp_v0_2] = phi_f0 * D_800E6A10[temp_v0_2];
        D_800E6850[temp_a3_2->objId] = 5.0f;
        temp_v1 = gKirbyState.unk4;
        if (temp_v1 != 0) {
            if (temp_v1 != 1) {
                if (temp_v1 != 2) {

                } else {
                    func_801230E8(0x200C5, 0x200C6, 0);
                }
            } else {
                func_801230E8(0x2016B, 0x2016C, 0);
            }
        } else {
            func_801230E8(0x2009D, 0x2009E, 0);
        }
        if ((gKirbyController.buttonHeld & 0x300) == 0) {
loop_18:
            finish_current_thread(1);
            if ((gKirbyController.buttonHeld & 0x300) == 0) {
                goto loop_18;
            }
        }
    }
loop_20:
    temp_v1_2 = gKirbyState.unk4;
    if (temp_v1_2 != 0) {
        if (temp_v1_2 != 1) {
            if (temp_v1_2 != 2) {
                phi_v0 = gKirbyState.unk4;
            } else {
                func_801230E8(0x200D1, 0x200D2, 0);
block_27:
                phi_v0 = gKirbyState.unk4;
            }
        } else {
            func_801230E8(0x2017F, 0x20180, 0);
            goto block_27;
        }
    } else {
        func_801230E8(0x20141, 0x20142, 0);
        goto block_27;
    }
    if (phi_v0 == 0) {
loop_29:
        temp_v1_3 = gKirbyState.unk44;
        if (temp_v1_3 != 0) {
block_40:
            finish_current_thread(1);
            goto loop_29;
        }
        if ((gKirbyState.isTurning & 1) != 0) {
            goto block_40;
        }
        temp_a3_3 = D_8004A7C4;
        temp_v0_3 = temp_a3_3->objId;
        temp_f0 = D_800E6A10[temp_v0_3];
        if ((temp_f0 != 1.0f) || ((gKirbyState.rightCollisionNext & 1) == 0)) {
            if ((temp_f0 == -1.0f) && ((gKirbyState.leftCollisionNext & 8) != 0)) {

            } else {
                goto block_40;
            }
        }
        temp_f0_2 = D_800E64D0[temp_v0_3];
        if (temp_f0_2 < 0.0f) {
            phi_f2_2 = -temp_f0_2;
        } else {
            phi_f2_2 = temp_f0_2;
        }
        if (!(phi_f2_2 > 2.0f)) {
            gKirbyState.unk44 = 1;
            goto block_40;
        }
        gKirbyState.unk44 = temp_v1_3 + 1;
        D_800E6690[temp_a3_3->objId] = 0.0f;
        temp_v0_4 = temp_a3_3->objId;
        D_800E64D0[temp_v0_4] = D_800E6690[temp_v0_4];
        D_800E6850[temp_a3_3->objId] = D_80197354;
        func_801230E8(0x200FF, 0x20100, 1);
        goto loop_20;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016D3A8_ovl3.s")
#endif

extern void func_800AECC0(f32);
extern void func_800AED20(f32);

void func_8016D81C_ovl3(struct GObj *arg0) {
    u8 cmd[] = {2, 4, 3, 9, 8, 7, 0xC, 0xF};

    func_80153984_ovl3();
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    } else {
        func_800AECC0(3.0f);
        func_800AED20(3.0f);
    }
    if (ovl3_process_command_string(&cmd) == 0) {
        func_801219C8();
        if (!(gKirbyState.isTurning & 1)) {
            if (func_801210FC(&gKirbyState) == 0) {
                if (!(gKirbyController.buttonHeld & 0x300)) {
                    if (D_800E9720[D_8004A7C4->objId] < 10) {
                        D_800E9720[D_8004A7C4->objId]++;
                    }
                }
            } else if (gKirbyController.buttonHeld & 0x300) {
                if ((D_800E9720[D_8004A7C4->objId] > 0) && (D_800E9720[D_8004A7C4->objId] < 7)) {
                    gKirbyState.unk38 = arg0->unk40 * 0.5f;
                    if (gKirbyState.unk38 >= 25.0f) {
                        gKirbyState.unk38 -= 25.0f;
                    }
                    set_kirby_action_1(2, 4);
                } else {
                    D_800E9720[D_8004A7C4->objId] = 0;
                }
            }
        } else {
            gKirbyState.unk44 = 0;
            D_800E9720[D_8004A7C4->objId] = 0;
        }
    }
    func_8011ED68();
}

#ifdef MIPS_TO_C
void func_8016DA14_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    u8 temp_a1;
    u8 phi_a0;
    u8 phi_a1;
    struct GObj *phi_v1;
    s32 phi_v0;
    f32 phi_f2;

    gKirbyState.unk7 = 1;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 2;
    func_80122A80();
loop_1:
    phi_a0 = gKirbyState.unk4;
    phi_a1 = gKirbyState.unk4;
loop_2:
    if (phi_a0 != 0) {
        if (phi_a0 != 1) {
            if (phi_a0 != 2) {

            } else {
block_8:
                func_8012307C(0x200CD, 0x200CE, (bitwise f32) (bitwise s32) gKirbyState.unk38, 0);
                func_800AFA14();
block_9:
                phi_a1 = gKirbyState.unk4;
            }
        } else {
            func_8012307C(0x20175, 0x20176, (bitwise f32) (bitwise s32) gKirbyState.unk38, 0);
            func_800AFA14();
            goto block_8;
        }
    } else {
        func_8012307C(0x2005D, 0x2005E, (bitwise f32) (bitwise s32) gKirbyState.unk38, 0);
        goto block_9;
    }
    if ((phi_a1 == 0) && (gKirbyState.unk44 == 0)) {
        phi_v1 = D_8004A7C4;
loop_13:
        if (((gKirbyState.isTurning & 1) != 0) || (gKirbyState.unk44 != 0) || (temp_v0 = phi_v1->objId, (D_800E6A10[temp_v0] != 1.0f)) || (phi_v0 = temp_v0 * 4, ((gKirbyState.rightCollisionNext & 1) == 0))) {
            temp_v0_2 = phi_v1->objId;
            if ((D_800E6A10[temp_v0_2] == -1.0f) && (phi_v0 = temp_v0_2 * 4, ((gKirbyState.leftCollisionNext & 8) != 0))) {

            } else {
block_25:
                finish_current_thread(1);
                phi_v1 = D_8004A7C4;
                goto loop_13;
            }
        }
        temp_f0 = *(D_800E64D0 + phi_v0);
        if (temp_f0 < 0.0f) {
            phi_f2 = -temp_f0;
        } else {
            phi_f2 = temp_f0;
        }
        if (!(phi_f2 > 2.0f)) {
            gKirbyState.unk44 = 1;
            goto block_25;
        }
        temp_a1 = gKirbyState.unk4;
        gKirbyState.unk44 = gKirbyState.unk44 + 1;
        D_800E6690[phi_v1->objId] = 0.0f;
        temp_v0_3 = phi_v1->objId;
        D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
        D_800E6850[phi_v1->objId] = D_80197358;
        if (temp_a1 != 0) {
            phi_a0 = temp_a1;
            phi_a1 = temp_a1;
            if (temp_a1 == 1) {
                goto loop_2;
            }
            phi_a0 = temp_a1;
            phi_a1 = temp_a1;
            if (temp_a1 == 2) {
                goto loop_2;
            }
            phi_a0 = temp_a1;
            phi_a1 = temp_a1;
        } else {
            func_801230E8(0x200FF, 0x20100, 1);
            goto loop_1;
        }
        goto loop_2;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016DA14_ovl3.s")
#endif

void func_8016DD0C_ovl3(struct GObj *arg0) {
    u8 cmd[] = {4, 2, 3, 9, 8, 7, 0xF};

    func_80153984_ovl3();
    func_8011CF58();
    if (ovl3_process_command_string(&cmd) == 0) {
        if ((D_800E64D0[D_8004A7C4->objId] == 0.0f) && ((gKirbyController.buttonHeld & 0x300) == 0)) {
            gKirbyState.unk7 = 0;
            set_kirby_action_1(0, 1);
        } else if (func_801215DC() == 2) {
            gKirbyState.isTurning |= 1;
        }
        func_8011ED68();
    }
}


#ifdef MIPS_TO_C
void func_8016DDE8_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    u8 temp_v0_4;
    u8 temp_v0_5;
    s32 phi_v0;

    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 0;
    gKirbyState.jumpHeight = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 3;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    phi_v0 = 0;
    if ((D_800E8AE0[temp_v0->objId] & 6) == 6) {
        phi_v0 = 1;
    }
    if (phi_v0 != 0) {
        play_sound(SOUND_OYOGI1);
        temp_v0_2 = D_8004A7C4;
        gKirbyState.unkCC = 4.0f;
        D_800E3210[temp_v0_2->objId] = 8.5f;
        D_800E3750[temp_v0_2->objId] = D_8019735C;
        D_800E3C90[temp_v0_2->objId] = 8.5f;
    } else {
        play_sound(SOUND_MYJUMP1);
        gKirbyState.unkCC = 8.0f;
        temp_v0_3 = D_8004A7C4;
        D_800E3210[temp_v0_3->objId] = func_80123144(0x41880000);
        D_800E3750[temp_v0_3->objId] = D_80197360;
        D_800E3C90[temp_v0_3->objId] = 16.0f;
    }
    D_800E83E0[D_8004A7C4->objId] = 0;
    D_800E8920[D_8004A7C4->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x2009F, 0x20007, 3.0f);
    } else {
        func_800AFA54(*(&D_800DFA10 + (D_8004A7C4->objId * 4)), 0x20007);
    }
    temp_v0_4 = gKirbyState.unk4;
    if (temp_v0_4 != 0) {
        if (temp_v0_4 != 1) {
            if (temp_v0_4 != 2) {

            } else {
                func_801230E8(0x200C7, 0x200C8, 0);
            }
        } else {
            func_801230E8(0x2016D, 0x2016E, 0);
        }
    } else {
        func_801230E8(0x2009F, 0x200A0, 0);
    }
    while (gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
        finish_current_thread(1);
    }
    temp_v0_5 = gKirbyState.unk4;
    gKirbyState.isFullJump = gKirbyState.isFullJump + 1;
    if (temp_v0_5 != 0) {
        if (temp_v0_5 != 1) {
            if (temp_v0_5 != 2) {

            } else {
                func_801230E8(0x200C9, 0x200CA, 1);
            }
        } else {
            func_801230E8(0x2016F, 0x20170, 1);
        }
    } else {
        func_801230E8(0x200A1, 0x200A2, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016DDE8_ovl3.s")
#endif

extern const f32 D_80197364;
extern const f32 D_801973A4;
extern s32 *D_80190F2C;
extern u16 D_8012BCA0;
extern s32 *D_801903E0, *D_80190358;
extern s32 D_8019395C;

extern f32 D_80197368;
extern f32 D_8019736C;
void func_8016854C_ovl3(s32 *, s32, f32);

u8 D_80196C64[] = {1, 5, 9, 8, 7, 6, 0xF};

#ifdef NON_MATCHING
void func_8016E15C_ovl3(struct GObj *arg0) {
    u8 cmd[] = {1, 5, 9, 8, 7, 6, 0xF};

    func_80153984_ovl3();
    if (ovl3_process_command_string(&cmd) != 0) {
        gKirbyState.unk15C = (gKirbyState.unk4 == 1) ? &D_80190358 : &D_801903E0;
    }
    else if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            D_800E6690[D_8004A7C4->objId] = 0.0f;
            D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
            D_800E6850[D_8004A7C4->objId] = D_80197364;
            D_800E3750[D_8004A7C4->objId] = 0.0f;
            D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
            D_800E3C90[D_8004A7C4->objId] = D_80197364;
            D_8012BCA0 &= 0x07;
            gKirbyState.unk15C = (gKirbyState.unk4 == 1) ? &D_801903E0 : &D_80190358;
            set_kirby_action_1(0xA, 0xD);
            if (gKirbyState.unk4 == 2) {
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = -3;
                return;
            }
        } else {
            if (((D_800E8AE0[D_8004A7C4->objId] & 6) == 0)
             && (gKirbyState.unk68 == 0)
             && (func_8015449C_ovl3(&D_8019395C, 0) != 0)
             && (gKirbyState.unkD == 2))
            {
                gKirbyState.unk4 = 0;
                gKirbyState.unkD = -3;
            }
            D_800E3210[D_8004A7C4->objId] = 0.0f;
            func_800BB468(0xB, 0xA);
            if (func_80179130_ovl3() == 0) {
                set_kirby_action_1(6, 6);
            }
        }
    } else {
        if (gKirbyState.unk30 != 0) {
            if (func_80179130_ovl3() == 0) {
                set_kirby_action_1(6, 6);
            }
        } else {
            if (gKirbyState.isFullJump == 0) {
                func_8011EBD4();
            }
            if ((D_800E83E0[D_8004A7C4->objId] & 0xFFFF) == 2) {
                D_800E3750[D_8004A7C4->objId] = 0.0f;
                D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
                D_800E3C90[D_8004A7C4->objId] = D_80197368;
                func_800BB468(0xB, 0xA, D_800E3750, &gKirbyState);
                if (func_80179130_ovl3() == 0) {
                    set_kirby_action_1(6, 6);
                }
            } else {
                if ((D_800E8AE0[D_8004A7C4->objId] & 6) == 0) {
                    if ((gKirbyState.unk9 & 1) == 0) {
                        if (gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
                            if (gKirbyState.unk4 == 0) {
                                func_8016854C_ovl3(&D_80190F2C, arg0->unk3C->unk10, 1.0f);
                            }
                        }
                    }
                }
            }
        }
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[D_8004A7C4->objId] = 0.0f;
        D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
        D_800E6850[D_8004A7C4->objId] = D_8019736C;
    }
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016E15C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016E638_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    u8 temp_v0_2;
    u8 temp_v0_3;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 3;
    D_800E8920[temp_v0->objId] = 0;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    D_800E83E0[temp_v0->objId] = 0;
    if (gKirbyState.previousAction == 0xB) {
        func_800AA78C(0x2009F, 0x20007, 3.0f);
    } else {
        func_800AFA54(*(&D_800DFA10 + (temp_v0->objId * 4)), 0x20007);
    }
    temp_v0_2 = gKirbyState.unk4;
    if (temp_v0_2 != 0) {
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 2) {

            } else {
                func_801230E8(0x200C7, 0x200C8, 0);
            }
        } else {
            func_801230E8(0x2016D, 0x2016E, 0);
        }
    } else {
        func_801230E8(0x2009F, 0x200A0, 0);
    }
    if ((bitwise f32) gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
loop_14:
        finish_current_thread(1);
        if ((bitwise f32) gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
            goto loop_14;
        }
    }
    temp_v0_3 = gKirbyState.unk4;
    gKirbyState.isFullJump = gKirbyState.isFullJump + 1;
    if (temp_v0_3 != 0) {
        if (temp_v0_3 != 1) {
            if (temp_v0_3 != 2) {

            } else {
                func_801230E8(0x200C9, 0x200CA, 1);
            }
        } else {
            func_801230E8(0x2016F, 0x20170, 1);
        }
    } else {
        func_801230E8(0x200A1, 0x200A2, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016E638_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016E8A0_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    s32 *temp_v0;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_9;
    struct GObj *temp_a2;
    struct GObj *temp_a2_2;
    struct GObj *temp_a2_3;
    struct GObj *temp_a2_4;
    struct GObj *temp_a2_5;
    u32 temp_a0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u8 temp_v0_2;
    u8 temp_v0_3;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v0;
    f32 *phi_t2;
    struct GObj *phi_a2;
    struct GObj *phi_a2_2;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.isFullJump = 1;
    func_8011CF58();
    temp_a2 = D_8004A7C4;
    D_800DDFD0[temp_a2->objId] = 4;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    temp_v1 = temp_a2->objId;
    temp_f2 = D_80197370;
    D_800EA6E0[temp_v1] = D_800E3210[temp_v1];
    temp_v1_2 = temp_a2->objId;
    D_800EA8A0[temp_v1_2] = D_800E64D0[temp_v1_2];
    temp_v1_3 = temp_a2->objId;
    D_800EAA60[temp_v1_3] = D_800E6690[temp_v1_3];
    temp_v1_4 = temp_a2->objId;
    D_800EAC20[temp_v1_4] = D_800E6850[temp_v1_4];
    D_800E3750[temp_a2->objId] = 0.0f;
    temp_v1_5 = temp_a2->objId;
    D_800E3210[temp_v1_5] = D_800E3750[temp_v1_5];
    D_800E3C90[temp_a2->objId] = temp_f2;
    D_800E6690[temp_a2->objId] = 0.0f;
    temp_v1_6 = temp_a2->objId;
    D_800E64D0[temp_v1_6] = D_800E6690[temp_v1_6];
    D_800E6850[temp_a2->objId] = temp_f2;
    D_800E9720[temp_a2->objId] = 0;
    temp_v1_7 = temp_a2->objId;
    phi_v1 = temp_v1_7 * 4;
    if (D_800E9720[temp_v1_7] < 2) {
loop_4:
        finish_current_thread(1);
        temp_a2_2 = D_8004A7C4;
        temp_v0 = &D_800E9720[temp_a2_2->objId];
        *temp_v0 = *temp_v0 + 1;
        temp_v1_8 = temp_a2_2->objId;
        if (D_800E9720[temp_v1_8] < 2) {
            goto loop_4;
        }
        phi_v1 = temp_v1_8 * 4;
    }
    *(D_800E3210 + phi_v1) = *(D_800EA6E0 + phi_v1);
    temp_v1_9 = D_8004A7C4->objId;
    *(D_800E64D0 + (temp_v1_9 * 4)) = D_800EA8A0[temp_v1_9];
    temp_v1_10 = D_8004A7C4->objId;
    *(D_800E6690 + (temp_v1_10 * 4)) = D_800EAA60[temp_v1_10];
    temp_v1_11 = D_8004A7C4->objId;
    *(D_800E6850 + (temp_v1_11 * 4)) = D_800EAC20[temp_v1_11];
    D_800DDFD0[D_8004A7C4->objId] = 3;
    D_800E8920[D_8004A7C4->objId] = 0;
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    temp_v1_12 = D_8004A7C4->objId;
    temp_a0 = D_800EC2E0[temp_v1_12];
    phi_v1_2 = temp_v1_12 * 4;
    phi_a2 = D_8004A7C4;
    if (temp_a0 != 0x80000000) {
        play_sound(temp_a0);
        temp_a2_3 = D_8004A7C4;
        phi_v1_2 = temp_a2_3->objId * 4;
        phi_t2 = D_800E3750;
        phi_a2 = temp_a2_3;
    }
    phi_v0 = 0;
    if ((*(D_800E8AE0 + phi_v1_2) & 6) == 6) {
        phi_v0 = 1;
    }
    if (phi_v0 != 0) {
        gKirbyState.unkCC = 4.0f;
        *(phi_t2 + (phi_a2->objId * 4)) = D_80197374;
        ((phi_a2->objId * 4) + 0x800E0000)->unk3C90 = 8.5f;
        phi_a2_2 = phi_a2;
    } else {
        gKirbyState.unkCC = 8.0f;
        *(phi_t2 + (phi_a2->objId * 4)) = D_80197378;
        if (func_80123144(0x41880000) < 0.0f) {
            temp_a2_4 = D_8004A7C4;
            D_800E3C90[temp_a2_4->objId] = -func_80123144(0x41880000);
            phi_a2_2 = temp_a2_4;
        } else {
            temp_a2_5 = D_8004A7C4;
            D_800E3C90[temp_a2_5->objId] = func_80123144(0x41880000);
            phi_a2_2 = temp_a2_5;
        }
    }
    func_800AFA54(*(&D_800DFA10 + (phi_a2_2->objId * 4)));
    temp_v0_2 = gKirbyState.unk4;
    if (temp_v0_2 != 0) {
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 2) {

            } else {
                func_801230E8(0x200C7, 0x200C8, 0);
            }
        } else {
            func_801230E8(0x2016D, 0x2016E, 0);
        }
    } else {
        func_801230E8(0x2009F, 0x200A0, 0);
    }
    if ((bitwise f32) gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
loop_26:
        finish_current_thread(1);
        if ((bitwise f32) gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) {
            goto loop_26;
        }
    }
    temp_v0_3 = gKirbyState.unk4;
    if (temp_v0_3 != 0) {
        if (temp_v0_3 != 1) {
            if (temp_v0_3 != 2) {

            } else {
                func_801230E8(0x200C9, 0x200CA, 1);
            }
        } else {
            func_801230E8(0x2016F, 0x20170, 1);
        }
    } else {
        func_801230E8(0x200A1, 0x200A2, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016E8A0_ovl3.s")
#endif

s32 func_80111A04(s32, s32);

void func_8016EE5C_ovl3(struct GObj *arg0) {
    if ((gKirbyState.unkCC < D_800E3210[D_8004A7C4->objId]) && (gKirbyState.unk4 == 0)) {
        func_80111C4C(func_80111A04(&D_80190F2C, D_8004A7C4->objId));
    }
    if (gKirbyController.buttonHeld & 0x8000) {
        D_800E64D0[D_8004A7C4->objId] = D_800EA8A0[D_8004A7C4->objId];
        D_800E6690[D_8004A7C4->objId] = D_800EAA60[D_8004A7C4->objId];
        D_800E6850[D_8004A7C4->objId] = D_800EAC20[D_8004A7C4->objId];
        set_kirby_action_1(3, 5);
    }
}

extern f32 D_8019737C, D_80197380;
s32 func_800AA888(s32);

// regalloc
// this file sucks
#ifdef NON_MATCHING
void func_8016EF5C_ovl3(struct GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 5;
    D_800E0490[D_8004A7C4->objId] = (gKirbyState.unk4 == 1) ? &D_80192704 : &D_801926E8;
    gKirbyState.unk15C = (gKirbyState.unk4 == 1) ? &D_801903E0 : &D_80190358;
    D_800E83E0[D_8004A7C4->objId] = 0;
    D_800E9560[D_8004A7C4->objId] = 0;
    D_800E9720[D_8004A7C4->objId] = 0x17;
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        func_80120A28();
        D_800E3750[D_8004A7C4->objId] = D_8019737C;
        D_800E3C90[D_8004A7C4->objId] = 1.0f;
    } else {
        D_800E3750[D_8004A7C4->objId] = D_80197380;
        D_800E3C90[D_8004A7C4->objId] = 16.0f;
    }
    switch (gKirbyState.unk4) {
        case 0:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20089, 0x20007, 12.0f);
            }
            func_801230E8(0x20089, 0x2008A, 0);
            break;
        case 1:
            if (func_800AA888(0x20009) == 0) {
                func_80122F08(0x20009);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x20165, 0x20009, 12.0f);
            }
            func_801230E8(0x20165, 0x20166, 0);
            break;
        case 2:
            if (func_800AA888(0x20007) == 0) {
                func_80122F08(0x20007);
            }
            if (gKirbyState.previousAction == 0x1B) {
                func_800AA78C(0x200C1, 0x20007, 12.0f);
            }
            func_801230E8(0x200C1, 0x200C2, 0);
            break;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016EF5C_ovl3.s")
#endif


extern s32 D_800D6FAC;
extern f32 D_80197384;
extern f32 D_80197388;
extern f32 D_8019738C;
u8 cmd_8016F240[] = {1, 5, 9, 8, 7, 6, 0xF};
// im sure somebody can do this one :)
#ifdef NON_MATCHING
void func_8016F240_ovl3(struct GObj *arg0) {

    func_80153984_ovl3();
    func_8011CF58();
    if (ovl3_process_command_string(&cmd_8016F240) == 0) {
        if ((gKirbyState.unk17 == 0) || (gKirbyState.unkB != 2)) {
            if ((gKirbyState.unk17 == 0) && gKirbyController.buttonPressed & 0x8000) {
                D_800E9560[D_8004A7C4->objId] = 2;
            } else {
                if (D_800E9560[D_8004A7C4->objId] != 0) {
                    D_800E9560[D_8004A7C4->objId]--;
                }
            }
            if (D_800E8920[D_8004A7C4->objId] != 0) {
                D_800E3750[D_8004A7C4->objId] = 0.0f;
                D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
                D_800E3C90[D_8004A7C4->objId] = D_80197384;
                if (D_800D6B54 == 0) {
                    play_sound(0x149);
                }
                if (gKirbyState.unk17 != 0) {
                    D_800E9560[D_8004A7C4->objId] = 0;
                }
                if (D_800E9560[D_8004A7C4->objId] != 0) {
                    func_80122B40();
                    set_kirby_action_1(3, 5);
                } else if (D_800E64D0[D_8004A7C4->objId] == 0.0f) {
                    gKirbyState.unk7 = 0;
                    if ((gKirbyState.unk17 == 0) && (D_800D6FAC == 0)
                     && (gKirbyController.buttonHeld & 0x400 != 0)
                     && (gKirbyState.unk4 == 1))
                    {
                        set_kirby_action_1(0xB, 0x10);
                    } else {
                        set_kirby_action_1(7, 7);
                    }
                } else {
                    gKirbyState.unk44 = 0;
                    if (gKirbyState.unk7 == 0) {
                        func_80122B40();
                        set_kirby_action_1(1, 3);
                    } else {
                        gKirbyState.unk38 = 0.0f;
                        set_kirby_action_1(2, 4);
                    }
                    func_80122FB0(1);
                }
            } else if ((D_800E83E0[D_8004A7C4->objId] & 0xFFFF) == 2) {
                *D_800EC2E0 = 0x80000000;
                gKirbyState.unk7 = 0;
                if ((D_800E8AE0[D_8004A7C4->objId] & 6) == 0) {
                    D_800E3210[D_8004A7C4->objId] = 8.0f;
                } else {
                    D_800E3210[D_8004A7C4->objId] = 4.0f;
                }
                D_800E3750[D_8004A7C4->objId] = 0.0f;
                D_800E3C90[D_8004A7C4->objId] = 0.0f;
                set_kirby_action_1(5, 5);
            } else if (func_80179130_ovl3(5) != 0) {
                gKirbyState.unk7 = 0;
            } else {
                if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
                    D_800E3750[D_8004A7C4->objId] = D_80197388;
                    D_800E3C90[D_8004A7C4->objId] = 1.0f;
                } else if (gKirbyState.unk4 == 0) {
                    if (D_800E9720[D_8004A7C4->objId]-- == 0) {
                        set_kirby_action_1(8, 8);
                    }
                }
            }
        }
    } else {
        gKirbyState.unk7 = 0;
    }
    if (gKirbyState.horizontalCollision == 0) {
        func_8011ED68();
    } else {
        D_800E6690[D_8004A7C4->objId] = 0.0f;
        D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
        D_800E6850[D_8004A7C4->objId] = D_8019738C;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016F240_ovl3.s")
#endif

// cmd_strings

u8 D_80196C74[] = {1, 2, 3, 9, 4, 0xD, 0xF};
u8 D_80196C7C[] = {1, 5, 9, 8, 7, 0xF};
u8 D_80196C84[] = {1, 2, 0xF};
u8 D_80196C88[] = {1, 0xF};
u8 D_80196C8C[] = {2, 9, 0xF};
u8 D_80196C90[] = {5, 9, 0xF};
u8 D_80196C94[] = {9, 2, 0xF};
u8 D_80196C98[] = {1, 2, 9, 0xF};
u8 D_80196C9C[] = {3, 0xF};


#ifdef MIPS_TO_C
void func_8016F6DC_ovl3(struct GObj *arg0) {
    u8 temp_v0;
    struct KirbyState *phi_v1;

    D_8012E7F0 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 6;
    func_80122B40();
    temp_v0 = gKirbyState.unk4;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                phi_v1 = &gKirbyState;
            } else {
                func_801230E8(0x200CB, 0x200CC, 1);
block_7:
                phi_v1 = &gKirbyState;
            }
        } else {
            func_801230E8(0x20171, 0x20172, 1);
            goto block_7;
        }
    } else {
        func_801230E8(0x200B5, 0x200B6, 1);
        goto block_7;
    }
    phi_v1->unk30 = phi_v1->unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016F6DC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016F7C8_ovl3(struct GObj *arg0) {
    ? sp18;

    sp18.unk0 = D_80196C74.unk0;
    sp18.unk4 = (first 3 bytes) D_80196C74.unk4;
    func_80153984_ovl3();
    ovl3_process_command_string(&sp18);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016F7C8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016F80C_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    s32 temp_v0_2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_4;
    struct GObj *temp_v0_5;
    u32 temp_v1;
    u32 temp_v1_2;
    struct GObj *phi_v0;

    D_800E83E0[D_8004A7C4->objId] = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 7;
    D_800E0490[temp_v0->objId] = &D_801926E8;
    gKirbyState.unk44 = 0;
    func_801230E8(0x20021, 0x20022, 0);
    if (func_800AF230() == 0) {
loop_1:
        if (gKirbyState.unk44 != 2) {
            finish_current_thread(1);
            if (func_800AF230() == 0) {
                goto loop_1;
            }
        }
    } else {
        gKirbyState.unk44 = 1;
        func_801230E8(0x20023, 0x20024, 0);
        while (gKirbyState.unk44 != 2) {
            finish_current_thread(1);
        }
    }
    if (D_800E8920[D_8004A7C4->objId] != 0) {
        temp_v0_2 = func_801693C4_ovl3(1);
        if (temp_v0_2 != -1) {
            D_800EC660[temp_v0_2] = 0.0f;
            D_800EC2E0[temp_v0_2] = 1;
        }
    }
    temp_v0_3 = D_8004A7C4;
    temp_f2 = D_80197390;
    D_800E6690[temp_v0_3->objId] = 0.0f;
    temp_v1 = temp_v0_3->objId;
    D_800E64D0[temp_v1] = D_800E6690[temp_v1];
    D_800E6850[temp_v0_3->objId] = temp_f2;
    D_800E3750[temp_v0_3->objId] = 0.0f;
    temp_v1_2 = temp_v0_3->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[temp_v0_3->objId] = temp_f2;
    func_800BB468(0xB, 0xA, D_800E6690);
    play_sound(0x110);
    func_801230E8(0x20025, 0x20026, 0);
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) == 0) {
        finish_current_thread(4);
        temp_v0_4 = D_8004A7C4;
        D_800E3210[temp_v0_4->objId] = 8.0f;
        D_800E3750[temp_v0_4->objId] = D_80197394;
        D_800E3C90[temp_v0_4->objId] = 16.0f;
        phi_v0 = temp_v0_4;
    } else {
        finish_current_thread(6);
        temp_v0_5 = D_8004A7C4;
        D_800E3210[temp_v0_5->objId] = 3.0f;
        D_800E3750[temp_v0_5->objId] = -0.25f;
        D_800E3C90[temp_v0_5->objId] = 3.0f;
        phi_v0 = temp_v0_5;
    }
    D_800E8920[phi_v0->objId] = 0;
    gKirbyState.unk44 = 3;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016F80C_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_8016FB58_ovl3(void *arg0) {
    ? sp20;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    u32 phi_v1;
    s32 phi_v0;
    struct KirbyState *phi_a3;

    sp20.unk0 = D_80196C7C.unk0;
    sp20.unk4 = D_80196C7C.unk4;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp20) == 0) {
        if ((gKirbyState.unk17 == 0) || (phi_a3 = &gKirbyState, (gKirbyState.unkB != 2))) {
            temp_v1 = gKirbyState.unk44;
            phi_v1 = temp_v1;
            if (temp_v1 == 1) {
                func_8016854C_ovl3(&D_80190F94, arg0->unk3C->unk10, 0x3F800000, &gKirbyState);
                phi_v1 = gKirbyState.unk44;
            }
            if (phi_v1 == 3) {
                phi_a3 = &gKirbyState;
                if (D_800E3210[D_8004A7C4->objId] <= 0.0f) {
                    set_kirby_action_1(6, 6);
                    phi_a3 = &gKirbyState;
                }
            } else {
                temp_v1_2 = D_8004A7C4;
                temp_v0_2 = temp_v1_2->objId;
                if ((D_800E8920[temp_v0_2] != 0) || (phi_v0 = temp_v0_2 * 4, ((D_800E83E0[temp_v0_2] & 0xFFFF) == 2))) {
                    gKirbyState.unk44 = 2;
                    phi_v0 = temp_v1_2->objId * 4;
                }
                phi_a3 = &gKirbyState;
                if ((*(D_800E8AE0 + phi_v0) & 6) != 0) {
                    func_8011CF58();
                    temp_v1_3 = D_8004A7C4;
                    D_800E3750[temp_v1_3->objId] = D_80197398;
                    D_800E3C90[temp_v1_3->objId] = 4.0f;
                    phi_a3 = &gKirbyState;
                }
            }
        }
    } else {
        gKirbyState.unk7 = 0;
        phi_a3 = &gKirbyState;
    }
    if (phi_a3->horizontalCollision == 0) {
        return func_8011ED68();
    }
    temp_v1_4 = D_8004A7C4;
    D_800E6690[temp_v1_4->objId] = 0.0f;
    temp_v0 = temp_v1_4->objId;
    D_800E64D0[temp_v0] = D_800E6690[temp_v0];
    D_800E6850[temp_v1_4->objId] = D_8019739C;
    return temp_v0 * 4;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016FB58_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016FD88_ovl3(struct GObj *arg0) {
    s32 *temp_v1_2;
    s32 *temp_v1_3;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    D_800E9720[D_8004A7C4->objId] = 5;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 8;
    func_80120A28();
    gKirbyState.unk15C = &D_80190448;
    temp_v0 = D_8004A7C4;
    temp_v1 = gKirbyState.abilityInUse;
    D_800E98E0[temp_v0->objId] = temp_v1;
    D_800E9AA0[temp_v0->objId] = 0;
    if (temp_v1 != 0x12) {
        func_800AA78C(0x20105, 0x20007, 3.0f, &gKirbyState);
        func_801230E8(0x20105, 0x20106, 0);
        D_800D6F10 = 1;
        if ((gKirbyController.buttonHeld & 0x400) != 0) {
loop_2:
            finish_current_thread(1);
            if ((gKirbyController.buttonHeld & 0x400) != 0) {
                goto loop_2;
            }
        }
        D_800D6F10 = 0;
        temp_v1_2 = &D_800E9AA0[D_8004A7C4->objId];
        *temp_v1_2 = *temp_v1_2 + 1;
        func_801230E8(0x20107, 0x20108, 1);
    } else {
        func_801693C4_ovl3(9, 0x20000);
        func_801230E8(0x20109, 0x2010A, 1);
        func_801230E8(0x2010B, 0x2010C, 0);
        D_800D6F10 = 1;
        if ((gKirbyController.buttonHeld & 0x400) != 0) {
loop_5:
            finish_current_thread(1);
            if ((gKirbyController.buttonHeld & 0x400) != 0) {
                goto loop_5;
            }
        }
        temp_v0_2 = D_8004A7C4;
        D_800D6F10 = 0;
        D_800E98E0[temp_v0_2->objId] = 0;
        temp_v1_3 = &D_800E9AA0[temp_v0_2->objId];
        *temp_v1_3 = *temp_v1_3 + 1;
        func_801230E8(0x2010D, 0x2010E, 1);
    }
    D_8012E7F0 = D_8012E7F0 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016FD88_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8016FFF8_ovl3(struct GObj *arg0) {
    ? sp24;
    s32 *temp_v0_2;
    s32 temp_v1;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    struct GObj *phi_a0;

    sp24 = (first 3 bytes) D_80196C84;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp24) != 0) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk15C = &D_80190358;
        return;
    }
    temp_a0 = D_8004A7C4;
    temp_v0 = temp_a0->objId;
    if (D_800E8920[temp_v0] == 0) {
        if (D_800E98E0[temp_v0] != 0x12) {
            D_800D6F10 = 0;
            gKirbyState.unkA = 0;
            gKirbyState.unk15C = &D_80190358;
            set_kirby_action_1(6, 6);
            return;
        }
        func_8011CF58();
        func_801217B8();
        return;
    }
    if (gKirbyState.unk30 != 0) {
block_8:
        D_800D6F10 = 0;
        gKirbyState.unk15C = &D_80190358;
        temp_v0_3 = temp_a0->objId;
        if (D_800E8920[temp_v0_3] != 0) {
            D_800E3750[temp_v0_3] = 0.0f;
            temp_v0_4 = temp_a0->objId;
            D_800E3210[temp_v0_4] = D_800E3750[temp_v0_4];
            D_800E3C90[temp_a0->objId] = D_801973A0;
        }
        set_kirby_action_1(0, 1);
        return;
    }
    if (gKirbyState.unk17 != 0) {
        goto block_8;
    }
    if ((D_800D6FAC == 0) && (D_800E9720[temp_v0] == 0) && (func_80122460() != 0) && ((gKirbyController.buttonHeld & 0x400) != 0) && (gKirbyState.unk4 == 0)) {
        D_800D6F10 = 0;
        gKirbyState.unkA = 0;
        D_8012BCA0 = D_8012BCA0 & 7;
        set_kirby_action_1(0xA, 0xD);
        return;
    }
    temp_a0_2 = D_8004A7C4;
    if (D_800E9AA0[temp_a0_2->objId] != 0) {
        if ((gKirbyState.unk17 == 0) && ((gKirbyController.buttonPressed & 0x4000) != 0)) {
            gKirbyState.unkA = 1;
        }
    } else if (((gKirbyController.buttonHeld & 0x400) != 0) && ((gKirbyController.buttonPressed & 0x8000) != 0)) {
        gKirbyState.unkA = 2;
    }
    phi_a0 = temp_a0_2;
    if ((gKirbyState.isTurning & 1) == 0) {
        phi_a0 = temp_a0_2;
        if (gKirbyState.unkA == 2) {
            D_800D6F10 = 0;
            gKirbyState.unkA = 0;
            set_kirby_action_1(0x19, 0xF);
            phi_a0 = D_8004A7C4;
        }
    }
    temp_v0_2 = &D_800E9720[phi_a0->objId];
    temp_v1 = *temp_v0_2;
    if (temp_v1 != 0) {
        *temp_v0_2 = temp_v1 - 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8016FFF8_ovl3.s")
#endif



#ifdef NON_MATCHING
void func_801702F0_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 9;
    gKirbyState.unk68 = (gKirbyState.unk68 != 3) ? 1 : 3;
    gKirbyState.unk15C = (gKirbyState.unk4 == 1) ? &D_801903E0 : &D_80190358;
    if (gKirbyState.ceilingCollisionNext != 0) {
        play_sound(0xFF);
        // something's wrong here {
        if ((gKirbyState.unk4 == 1) || (gKirbyState.previousAction == 9)) {
            D_800E3210[D_8004A7C4->objId] = 5.0f;
            D_800E3750[D_8004A7C4->objId] = 0.0f;
            D_800E3C90[D_8004A7C4->objId] = 5.0f;
        } else {
            D_800E3210[D_8004A7C4->objId] = D_801973A4;
            D_800E3750[D_8004A7C4->objId] = 0.0f;
            D_800E3C90[D_8004A7C4->objId] = 5.0f;
        }
        // }
        if (D_800E6A10[D_8004A7C4->objId] == -1.0f) {
            if (gKirbyState.unk4 == 1) {
                func_801230E8(0x20177, 0x20178, 1);
            } else {
                func_801230E8(0x200F7, 0x200F8, 1);
            }
        } else if (gKirbyState.unk4 == 1) {
            func_801230E8(0x20179, 0x2017A, 1);
        } else {
            func_801230E8(0x200FB, 0x200FC, 1);
        }
        D_800E3210[D_8004A7C4->objId] = 0.0f;
        D_800E3750[D_8004A7C4->objId] = 0.0f;
        D_800E3C90[D_8004A7C4->objId] = 0.0f;
    } else {
        play_sound(0x101);
        D_800E3210[D_8004A7C4->objId] = -5.0f;
        D_800E3750[D_8004A7C4->objId] = 0.0f;
        D_800E3C90[D_8004A7C4->objId] = 5.0f;
        if (D_800E6A10[D_8004A7C4->objId] == -1.0f) {
            func_801230E8(0x200F9, 0x200FA, 1);
        } else {
            func_801230E8(0x200FD, 0x200FE, 1);
        }
    }
    gKirbyState.unk30++;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801702F0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80170638_ovl3(struct GObj *arg0) {
    s32 temp_v1;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1_2;
    struct GObj *phi_v0;

    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk68 != 3) {
            gKirbyState.unk68 = 0;
        } else {
            gKirbyState.unk68 = 3;
        }
        if (gKirbyState.ceilingCollisionNext != 0) {
            func_80153FC8_ovl3();
            func_80152348_ovl3(0x41200000);
            phi_v0 = D_8004A7C4;
        } else {
            temp_v0 = D_8004A7C4;
            D_800E8920[temp_v0->objId] = 0;
            phi_v0 = temp_v0;
        }
        temp_v1 = phi_v0->objId;
        if (D_800E8920[temp_v1] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        D_800E3210[temp_v1] = 0.0f;
        set_kirby_action_1(0, 1);
        return;
    }
    if (func_80153FC8_ovl3() != 0) {
        temp_v0_2 = D_8004A7C4;
        D_800E6690[temp_v0_2->objId] = 0.0f;
        temp_v1_2 = temp_v0_2->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[temp_v0_2->objId] = D_801973A8;
        return;
    }
    func_8011ED68();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80170638_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80170794_ovl3(struct GObj *arg0) {
    D_8012E7F0 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0xA;
    func_80120A28();
    D_800E0490[D_8004A7C4->objId] = &D_801926E8;
    if (func_800AA888(0x20009) == 0) {
        func_80122F08(0x20009);
    } else {
        func_800AFA54(*(&D_800DFA10 + (D_8004A7C4->objId * 4)));
    }
    func_801230E8(0x20167, 0x20168, 0);
    D_800DF310[D_8004A7C4->objId] = &func_801708A0;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80170794_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801708A0_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f12;
    u32 temp_v0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_f12 = (bitwise f32) gKirbyState.unk84;
        if (temp_f12 != 0.0f) {
            if (temp_f12 < 0.0f) {
                temp_f0 = gKirbyHp;
                if ((temp_f0 + temp_f12) >= 1.0f) {
                    change_kirby_hp(temp_f12);
                } else {
                    change_kirby_hp(-(temp_f0 - 1.0f));
                }
                play_sound(0xDA);
            } else {
                change_kirby_hp(temp_f12);
            }
            gKirbyState.unk84 = 0.0f;
        }
        temp_v0 = gKirbyState.unk8C;
        if ((temp_v0 & 0xFFFF) != 0) {
            if ((temp_v0 & 1) != 0) {
                play_sound(0xCA);
                func_80121F14(ERROR(Read from unset register $a0));
            } else if ((temp_v0 & 2) != 0) {
                play_sound(0xCB);
            }
        } else if (gKirbyState.unk88 != 0) {
            play_sound(1);
            change_kirby_lives(gKirbyState.unk88);
            gKirbyState.unk88 = 0;
        } else if (gKirbyState.unk8 != 0) {
            play_sound(0xCA);
        }
        func_8011E190();
        play_sound(0xE8);
        gKirbyState.unk4 = 0;
        gKirbyState.unk8 = 0;
        gKirbyState.numberInhaled = 0;
        gKirbyState.unkD = 7;
        func_800BB468(0xB, 0xA);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801708A0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80170A24_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        if (func_800AA888(0x20007) == 0) {
            func_80122F08(0x20007);
        }
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        set_kirby_action_1(0, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80170A24_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80170AC4_ovl3(struct GObj *arg0) {
    f32 temp_f22;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_4;
    struct GObj *temp_v0_5;
    u32 temp_v0;
    u32 temp_v1;
    f32 phi_f20;

    temp_v0 = gKirbyState.unk44;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 == 2) {
block_8:
                temp_v0_5 = D_8004A7C4;
                D_800E3210[temp_v0_5->objId] = 0.0f;
                D_800E3750[temp_v0_5->objId] = -0.125f;
                D_800E3C90[temp_v0_5->objId] = 2.0f;
                func_801230E8(0x20099, 0x2009A, 0);
                temp_f22 = D_801973AC;
                phi_f20 = 2.0f;
loop_9:
                func_800AECC0(phi_f20);
                func_800AED20(phi_f20);
                finish_current_thread(1);
                phi_f20 = phi_f20 + temp_f22;
                goto loop_9;
            }
        } else {
block_7:
            play_sound(0xE0);
            gKirbyState.unk2C = 3;
            temp_v0_3 = D_8004A7C4;
            D_800E3210[temp_v0_3->objId] = 8.0f;
            D_800E3750[temp_v0_3->objId] = -1.0f;
            D_800E3C90[temp_v0_3->objId] = 8.0f;
            func_801230E8(0x20095, 0x20096, 1);
            temp_v0_4 = D_8004A7C4;
            D_800E3750[temp_v0_4->objId] = -0.125f;
            D_800E3C90[temp_v0_4->objId] = 2.0f;
            func_801230E8(0x20097, 0x20098, 0);
        }
    } else {
        gKirbyState.unkA = 0;
        gKirbyState.unk4C = 0;
        func_8011CF58();
        temp_v0_2 = D_8004A7C4;
        D_800DDFD0[temp_v0_2->objId] = 0xB;
        D_800E0490[temp_v0_2->objId] = &D_80192720;
        gKirbyState.unk15C = &D_801903E0;
        D_800E3750[temp_v0_2->objId] = 0.0f;
        temp_v1 = temp_v0_2->objId;
        D_800E3210[temp_v1] = D_800E3750[temp_v1];
        func_800AFA54(*(&D_800DFA10 + (temp_v0_2->objId * 4)));
        func_801230E8(0x20093, 0x20094, 1);
        if (gKirbyState.floatTimer < 0x3C) {
            gKirbyState.unk44 = 2;
            goto block_8;
        }
        gKirbyState.unk44 = 1;
        goto block_7;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80170AC4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80170D88_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f2;
    s32 temp_v0_4;
    s32 temp_v1_9;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_5;
    u32 temp_v1;
    u32 temp_v1_10;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u8 temp_v0;
    void *temp_a0;
    u32 phi_v1;
    struct KirbyState *phi_t0;
    struct KirbyState *phi_t0_2;
    struct KirbyState *phi_t0_3;
    struct KirbyState *phi_t0_4;

    sp24 = D_80196C88;
    func_80153984_ovl3();
    temp_v1 = D_8004A7C4->objId;
    if (D_800E3210[temp_v1] >= 0.0f) {
        D_800E8920[temp_v1] = 0;
    }
    ovl3_process_command_string(&sp24);
    if (D_800D6B54 != 0) {
        set_kirby_action_1(6, 6);
        func_8011E0E8();
        return;
    }
    if (gKirbyState.unk17 != 0) {
        temp_v0 = gKirbyState.unkB;
        if ((temp_v0 != 1) && (temp_v0 != 2)) {
block_7:
            temp_v1_2 = gKirbyState.floatTimer;
            phi_t0_2 = &gKirbyState;
            if (temp_v1_2 != 0) {
                phi_v1 = temp_v1_2;
                phi_t0 = &gKirbyState;
                if (gKirbyState.unk44 == 1) {
                    if (gKirbyState.unk4C == 0) {
                        phi_v1 = temp_v1_2;
                        phi_t0 = &gKirbyState;
                        if (temp_v1_2 < 0x5B) {
                            gKirbyState.unk4C = func_800A8100(2, 1, 0xB, D_800DFBD0[D_8004A7C4->objId][9]);
block_14:
                            phi_v1 = gKirbyState.floatTimer;
                            phi_t0 = &gKirbyState;
                        }
                    } else {
                        phi_v1 = temp_v1_2;
                        phi_t0 = &gKirbyState;
                        if (temp_v1_2 == 0x3C) {
                            gKirbyState.unk44 = 2;
                            assign_new_process_entry(*(&gEntityGObjProcessArray + (D_8004A7C4->objId * 4)), &D_8016C510);
                            goto block_14;
                        }
                    }
                }
                phi_t0->floatTimer = phi_v1 - 1;
                phi_t0_2 = phi_t0;
            }
            if ((phi_t0_2->isTurning & 1) == 0) {
                if ((D_800D6FEA & 0x4000) != 0) {
block_23:
                    temp_v0_2 = D_8004A7C4;
                    temp_v1_4 = temp_v0_2->objId;
                    if (D_800E8920[temp_v1_4] == 0) {
                        D_800E3210[temp_v1_4] = 0.0f;
                        D_800E3750[temp_v0_2->objId] = 0.0f;
                        D_800E3C90[temp_v0_2->objId] = 16.0f;
                    } else {
                        temp_a0 = &gEntityGObjProcessArray + 0x3750;
                        *(temp_a0 + (temp_v1_4 * 4)) = 0.0f;
                        temp_v1_5 = temp_v0_2->objId;
                        D_800E3210[temp_v1_5] = *(temp_a0 + (temp_v1_5 * 4));
                        D_800E3C90[temp_v0_2->objId] = D_801973B0;
                    }
                    func_8011E0E8();
                    gKirbyState.unkA = 0;
                    set_kirby_action_1(0x1A, 0x19);
                    return;
                }
                if (phi_t0_2->unk17 != 0) {
                    goto block_23;
                }
                if (phi_t0_2->floatTimer == 0) {
                    goto block_23;
                }
                if (phi_t0_2->unkA == 1) {
                    goto block_23;
                }
                temp_v1_3 = D_8004A7C4->objId;
                if (D_800E8920[temp_v1_3] != 0) {
                    goto block_23;
                }
                if ((D_800E8AE0[temp_v1_3] & 6) != 0) {
                    goto block_23;
                }
            } else if ((D_800D6FEA & 0x4000) != 0) {
                phi_t0_2->unkA = 1;
            }
            phi_t0_4 = phi_t0_2;
            if (phi_t0_2->unk44 == 1) {
                phi_t0_3 = phi_t0_2;
                if ((phi_t0_2->ceilingCollisionNext != 0) && (phi_t0_3 = &gKirbyState, (func_80122460() != 0))) {
                    temp_v0_3 = D_8004A7C4;
                    temp_f2 = D_801973B4;
                    D_800E6690[temp_v0_3->objId] = 0.0f;
                    temp_v1_6 = temp_v0_3->objId;
                    D_800E64D0[temp_v1_6] = D_800E6690[temp_v1_6];
                    D_800E6850[temp_v0_3->objId] = temp_f2;
                    D_800E3750[temp_v0_3->objId] = 0.0f;
                    temp_v1_7 = temp_v0_3->objId;
                    D_800E3210[temp_v1_7] = D_800E3750[temp_v1_7];
                    D_800E3C90[temp_v0_3->objId] = temp_f2;
                    func_8011E0E8();
                    set_kirby_action_1(0xA, 0xD);
                    phi_t0_4 = &gKirbyState;
                } else {
                    temp_v0_4 = phi_t0_3->unk2C;
                    if (temp_v0_4 == 0) {
                        phi_t0_4 = phi_t0_3;
                        if (phi_t0_3->ceilingCollisionNext == 0) {
                            phi_t0_4 = phi_t0_3;
                            if ((D_800D6FEA & 0x8000) != 0) {
                                assign_new_process_entry(*(&gEntityGObjProcessArray + (D_8004A7C4->objId * 4)), &D_8016C510);
                                phi_t0_4 = &gKirbyState;
                            }
                        }
                    } else {
                        phi_t0_3->unk2C = temp_v0_4 - 1;
                        phi_t0_4 = phi_t0_3;
                    }
block_39:
                }
            } else {
                goto block_39;
            }
            if (phi_t0_4->unk17 == 0) {
                temp_v0_5 = D_8004A7C4;
                temp_v1_8 = temp_v0_5->objId;
                temp_v1_9 = temp_v1_8 * 4;
                if (phi_t0_4->horizontalCollision == 0) {
                    if ((gKirbyController.buttonHeld & 0x300) != 0) {
                        *(D_800E6690 + temp_v1_9) = (&D_800E6A10[temp_v1_8])[0x1A84] * D_801973BC;
                        D_800E6850[temp_v0_5->objId] = 2.5f;
                        return;
                    }
                    *(D_800E6690 + temp_v1_9) = D_800E6A10[temp_v1_8] * D_801973B8;
                    D_800E6850[temp_v0_5->objId] = 0.0f;
                    return;
                }
                *(D_800E6690 + temp_v1_9) = 0.0f;
                temp_v1_10 = temp_v0_5->objId;
                D_800E64D0[temp_v1_10] = *(D_800E6690 + (temp_v1_10 * 4));
                D_800E6850[temp_v0_5->objId] = D_801973C0;
            }
        }
    } else {
        goto block_7;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80170D88_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_801712F8_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_801712F8_ovl3.s line 121.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801712F8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801717F0_ovl3(struct GObj *arg0) {
    ? sp40;
    ? sp3C;
    f32 sp38;
    f32 sp34;
    f32 temp_f0;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_8;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    struct GObj *temp_v1_6;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_7;
    u32 temp_v0_9;
    u8 temp_v0_6;
    u32 phi_v0;
    s32 phi_a0;
    s32 phi_v0_2;
    struct GObj *phi_v1;
    f32 phi_f12;
    f32 phi_f0;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f2_3;

    sp40 = (first 3 bytes) D_80196C8C;
    sp3C = (first 3 bytes) D_80196C90;
    if (gKirbyState.unk17 == 0) {
        if (D_800E98E0[D_8004A7C4->objId] != 5) {
            func_80153B98_ovl3(&gKirbyState);
        } else {
            func_80153984_ovl3(&gKirbyState);
        }
        if (D_800E98E0[D_8004A7C4->objId] == 5) {
            phi_v0 = ovl3_process_command_string(&sp3C);
        } else {
            phi_v0 = ovl3_process_command_string(&sp40);
        }
        if (phi_v0 != 0) {
            func_8011CF58();
            func_8011DC5C(ERROR(Read from unset register $f12));
            func_8011E234();
            func_8011E0E8();
            if ((D_800D6FEA & 0x4000) != 0) {
                temp_v1 = D_8004A7C4;
                D_800E3750[temp_v1->objId] = 0.0f;
                temp_v0 = temp_v1->objId;
                D_800E3210[temp_v0] = D_800E3750[temp_v0];
                D_800E3C90[temp_v1->objId] = D_801973E4;
            }
            if (func_80121194() != 0) {
                temp_v1_2 = D_8004A7C4;
                temp_v0_2 = temp_v1_2->objId;
                if ((D_800E8AE0[temp_v0_2] & 6) != 0) {
                    D_800E64D0[temp_v0_2] = D_800E6A10[temp_v0_2] * -2.0f;
                    temp_v0_3 = temp_v1_2->objId;
                    D_800E6690[temp_v0_3] = D_800E6A10[temp_v0_3] * D_801973E8;
                    ((temp_v1_2->objId * 4) + 0x800E0000)->unk6850 = 2.0f;
                } else {
                    D_800E64D0[temp_v0_2] = D_800E6A10[temp_v0_2] * -6.0f;
                    temp_v0_4 = temp_v1_2->objId;
                    D_800E6690[temp_v0_4] = D_800E6A10[temp_v0_4] * 0.125f;
                    D_800E6850[temp_v1_2->objId] = 6.0f;
                }
                gKirbyState.isTurning = gKirbyState.isTurning & ~4;
            } else {
                temp_v1_3 = D_8004A7C4;
                D_800E6690[temp_v1_3->objId] = 0.0f;
                temp_v0_5 = temp_v1_3->objId;
                ((temp_v0_5 * 4) + 0x800E0000)->unk64D0 = D_800E6690[temp_v0_5];
                ((temp_v1_3->objId * 4) + 0x800E0000)->unk6850 = *0x80190000;
                gKirbyState.isTurning = gKirbyState.isTurning | 4;
            }
            if (gKirbyState.previousAction == 0xA) {
                gKirbyState.unk15 = 8;
                return;
            }
        } else {
            if (func_8011F690() != 0) {
                func_8011DC5C(ERROR(Read from unset register $f12));
                func_8011E0E8();
                assign_new_process_entry(*(&gEntityGObjProcessArray + (D_8004A7C4->objId * 4)), &D_8016C510);
                return;
            }
            if (D_8012E7C5 != 0xA) {
                func_8011E0E8();
                func_8011DC5C(ERROR(Read from unset register $f12));
                return;
            }
        }
    } else {
        temp_v0_6 = gKirbyState.unkB;
        if (temp_v0_6 == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (temp_v0_6 == 1) {
            temp_v1_4 = D_8004A7C4;
            temp_v0_7 = temp_v1_4->objId;
            temp_v0_8 = temp_v0_7 * 4;
            temp_a0 = D_800E8AE0[temp_v0_7] & 6;
            if (temp_a0 == 0) {
                phi_a0 = temp_a0;
                phi_v0_2 = temp_v0_8;
                phi_v1 = temp_v1_4;
                phi_f0 = 4.0f;
            } else {
                phi_a0 = temp_a0;
                phi_v0_2 = temp_v0_8;
                phi_v1 = temp_v1_4;
                phi_f0 = 2.0f;
            }
        } else {
            temp_v1_5 = D_8004A7C4;
            temp_v0_9 = temp_v1_5->objId;
            temp_v0_10 = temp_v0_9 * 4;
            if (D_800E98E0[temp_v0_9] != 4) {
                temp_a0_2 = D_800E8AE0[temp_v0_9] & 6;
                if (temp_a0_2 == 0) {
                    phi_a0 = temp_a0_2;
                    phi_v0_2 = temp_v0_10;
                    phi_v1 = temp_v1_5;
                    phi_f0 = -4.0f;
                } else {
                    phi_a0 = temp_a0_2;
                    phi_v0_2 = temp_v0_10;
                    phi_v1 = temp_v1_5;
                    phi_f0 = -2.0f;
                }
            } else {
                temp_a0_3 = (&D_800E8AE0[temp_v0_9])[-0x1D48] & 6;
                if (temp_a0_3 == 0) {
                    phi_a0 = temp_a0_3;
                    phi_v0_2 = temp_v0_10;
                    phi_v1 = temp_v1_5;
                    phi_f0 = -10.0f;
                } else {
                    phi_a0 = temp_a0_3;
                    phi_v0_2 = temp_v0_10;
                    phi_v1 = temp_v1_5;
                    phi_f0 = -5.0f;
                }
            }
        }
        if (phi_a0 == 0) {
            phi_f12 = 3.0f;
        } else {
            phi_f12 = 1.5f;
        }
        *(D_800E6690 + phi_v0_2) = 0.0f;
        temp_v0_11 = phi_v1->objId;
        D_800E64D0[temp_v0_11] = D_800E6690[temp_v0_11];
        sp34 = phi_f12;
        sp38 = phi_f0;
        D_800E6850[phi_v1->objId] = D_801973F0;
        func_800AECC0(phi_f12);
        func_800AED20(phi_f12);
        temp_v1_6 = D_8004A7C4;
        temp_f0 = phi_f0;
        D_800E3210[temp_v1_6->objId] = temp_f0;
        if (temp_f0 < 0.0f) {
            phi_f2 = -temp_f0;
        } else {
            phi_f2 = temp_f0;
        }
        if (phi_f2 < 0.0f) {
            if (temp_f0 < 0.0f) {
                phi_f2_2 = -temp_f0;
            } else {
                phi_f2_2 = temp_f0;
            }
            D_800E3C90[temp_v1_6->objId] = -phi_f2_2;
        } else {
            if (temp_f0 < 0.0f) {
                phi_f2_3 = -temp_f0;
            } else {
                phi_f2_3 = temp_f0;
            }
            D_800E3C90[temp_v1_6->objId] = phi_f2_3;
        }
        temp_v0_12 = D_8012E7EC;
        D_8012E7EC = temp_v0_12 - 1;
        if (temp_v0_12 == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C(0.0f);
            func_8011E0E8();
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801717F0_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80171E00_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80171E00_ovl3.s line 119.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80171E00_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80172234_ovl3(struct GObj *arg0) {
    u8 sp3C[] = {9, 2, 0xF};

    // sp3C = D_80196C94;
    if (gKirbyState.unk17 == 0) {
        if ((D_800E98E0[D_8004A7C4->objId] == 6) || (D_800E98E0[D_8004A7C4->objId] == 5)) {
            if (D_800E8920[D_8004A7C4->objId] != 0) {
                func_80153984_ovl3(&gKirbyState);
            } else {
                func_80153B98_ovl3(&gKirbyState);
            }
        } else {
            func_80153B98_ovl3(&gKirbyState);
        }
        if (D_800E98E0[D_8004A7C4->objId] != 0) {
            if ((gKirbyState.unk3C == 0) && (ovl3_process_command_string(&sp3C) != 0)) {
                func_8011CF58();
                func_8011E234();
                func_8011DC5C();
                func_8011E0E8();
                if ((D_800D6FEA & 0x4000) != 0) {
                    D_800E3750[D_8004A7C4->objId] = 0.0f;
                    D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
                    D_800E3C90[D_8004A7C4->objId] = D_80197410;
                }
                if (gKirbyState.action == 5) {
                    if (func_80121194() != 0) {
                        gKirbyState.isTurning &= ~4;
                        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
                            D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * -2.0f;
                            D_800E6690[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * D_80197414;
                            D_800E6850[D_8004A7C4->objId] = 2.0f;
                        } else {
                            D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * -6.0f;
                            D_800E6690[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * 0.125f;
                            D_800E6850[D_8004A7C4->objId] = 6.0f;
                        }
                    } else {
                        D_800E6690[D_8004A7C4->objId] = 0.0f;
                        D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
                        D_800E6850[D_8004A7C4->objId] = D_80197418;
                        gKirbyState.isTurning |= 4;
                    }
                } else {
                    gKirbyState.isTurning &= ~4;
                }
                if (gKirbyState.previousAction == 0xB) {
                    gKirbyState.unk15 = 8;
                    return;
                }
            } else {
                if (func_8011FEF8() != 0) {
                    func_8011DC5C();
                    func_8011E0E8();
                    assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], func_8016C510_ovl3);
                    return;
                }
                if (gKirbyState.action != 0xB) {
                    func_8011E234();
                    func_8011DC5C();
                    func_8011E0E8();
                    return;
                }
            }
        }
    } else {
        if (gKirbyState.unkB == 0) {
            print_error_stub(&D_801972F8);
            while (1)
        }
        if (gKirbyState.unkB == 1) {
            phi_f0_2 = 4.0f;
        } else {
            if (D_800E98E0[D_8004A7C4->objId] != 4) {
                phi_f0_2 = -4.0f;
            } else {
                phi_f0_2 = -10.0f;
            }
        }
        phi_f0 = phi_f0_2;
        phi_f12 = 3.0f;
        if (D_800E8AE0[D_8004A7C4->objId] & 6) {
            phi_f0 *= 0.5f;
            phi_f12 = 3.0f * 0.5f;
        }
        // sp38 = phi_f0;
        // sp34 = phi_f12;
        func_800AECC0(phi_f12);
        func_800AED20(phi_f12);
        D_800E3210[D_8004A7C4->objId] = phi_f0;
        if (ABSF(phi_f0) < 0.0f) {
            D_800E3C90[D_8004A7C4->objId] = -ABSF(phi_f0);
        } else {
            D_800E3C90[D_8004A7C4->objId] = ABSF(phi_f0);
        }
        if (gKirbyState.unk2C-- == 0) {
            D_800BE4F8 = 2;
            func_8011DC5C();
            func_8011E0E8();
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80172234_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801727D8_ovl3(struct GObj *arg0) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v1_3;
    struct GObj *temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;
    f32 phi_f2;
    f32 phi_at;
    s32 phi_v1;
    f32 phi_f2_2;
    f32 phi_at_2;
    s32 phi_v1_2;

    D_8012E7F0 = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0xE;
    D_800E3750[temp_v0->objId] = 0.0f;
    temp_v1 = temp_v0->objId;
    D_800E3210[temp_v1] = D_800E3750[temp_v1];
    D_800E3C90[temp_v0->objId] = D_8019741C;
    temp_v1_2 = temp_v0->objId;
    temp_v1_3 = temp_v1_2 * 4;
    temp_a0 = &D_800E64D0[temp_v1_2];
    if ((D_800E8AE0[temp_v1_2] & 6) != 0) {
        temp_a0_2 = &D_800E64D0[temp_v1_2];
        temp_f0 = *temp_a0_2;
        if (temp_f0 < 0.0f) {
            phi_f2 = -temp_f0;
        } else {
            phi_f2 = temp_f0;
        }
        if (!(phi_f2 < 1.0f)) {
            phi_at = (bitwise f32) &D_40C06A10;
            phi_v1 = temp_v1_3;
        } else {
            *temp_a0_2 = D_800E6850[temp_v1_2];
            D_800E6850[temp_v0->objId] = 1.0f;
            phi_at = 6.0f;
            phi_v1 = temp_v0->objId * 4;
        }
        temp_f0_2 = phi_at;
        *(D_800E3210 + phi_v1) = temp_f0_2;
        D_800E3750[temp_v0->objId] = *0x80190000;
        D_800E3C90[temp_v0->objId] = temp_f0_2;
    } else {
        temp_f0_3 = *temp_a0;
        if (temp_f0_3 < 0.0f) {
            phi_f2_2 = -temp_f0_3;
        } else {
            phi_f2_2 = temp_f0_3;
        }
        if (!(phi_f2_2 < 3.0f)) {
            phi_at_2 = (bitwise f32) &D_41106A10;
            phi_v1_2 = temp_v1_3;
        } else {
            *temp_a0 = D_800E6850[temp_v1_2] * 3.0f;
            D_800E6850[temp_v0->objId] = 3.0f;
            phi_at_2 = 9.0f;
            phi_v1_2 = temp_v0->objId * 4;
        }
        *(D_800E3210 + phi_v1_2) = phi_at_2;
        D_800E3750[temp_v0->objId] = D_80197424;
        D_800E3C90[temp_v0->objId] = 17.0f;
    }
    play_sound(0xEA);
    func_801230E8(0x200B3, 0x200B4, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801727D8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80172A3C_ovl3(struct GObj *arg0) {
    s32 sp1C;
    u32 temp_v0;

    sp1C = D_80196C98;
    func_80153984_ovl3();
    if ((ovl3_process_command_string(&sp1C) == 0) && ((D_8012E7F4 & 1) == 0) && (func_80121194() != 0)) {
        temp_v0 = D_8004A7C4->objId;
        D_800E6690[temp_v0] = D_800E6A10[temp_v0] * 0.5f;
    }
    if (D_8012E7F0 != 0) {
        set_kirby_action_1(6, 6);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80172A3C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80172AE4_ovl3(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s32 temp_v1_4;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    u32 temp_v0;
    u32 temp_v0_8;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_5;
    u32 temp_v1_6;
    s32 phi_v1;
    s32 phi_v0;
    u32 phi_v1_2;

    gKirbyState.unk30 = 0;
    gKirbyState.unk44 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp_a0 = D_8004A7C4;
    D_800DDFD0[temp_a0->objId] = 0x16;
    gKirbyState.numberInhaled = 0;
    D_80198820 = 0.0f;
    gKirbyState.currentInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.unk8C = 0 & 0xFF;
    gKirbyState.unk8 = 0;
    gKirbyState.unkD = -1;
    gKirbyState.isInhaling = 0;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.unk84 = D_80198820;
    gKirbyState.unkB2 = gKirbyState.numberInhaled;
    D_800E8060[temp_a0->objId] = -2;
    func_80120A28();
    func_80122F08(0x20008);
    func_801693C4_ovl3(0);
    D_800E0490[D_8004A7C4->objId] = &D_8019273C;
    gKirbyState.unk154 = 2;
    func_801230E8(0x20148, 0x20149, 1);
    gKirbyState.isInhaling = gKirbyState.isInhaling + 1;
    gKirbyState.unk44 = 1;
loop_1:
    temp_v0 = gKirbyState.unk44;
    if (temp_v0 != 1) {
        if (temp_v0 != 2) {
            if (temp_v0 != 3) {
                phi_v1_2 = D_8004A7C4->objId;
block_60:
                phi_v1 = phi_v1_2 * 4;
            } else {
                func_800AA5C4(0x20154, 0x20008, 0x40C00000);
                if (func_800AA368(arg0->unk3C->unk10) == 0) {
loop_41:
                    temp_v0_2 = gKirbyState.numberInhaled;
                    if ((temp_v0_2 != 0) && (temp_v0_2 == gKirbyState.unkB2)) {
                        phi_v1_2 = D_8004A7C4->objId;
                        goto block_60;
                    } else {
                        finish_current_thread(1);
                        if (func_800AA368(arg0->unk3C->unk10) == 0) {
                            goto loop_41;
                        }
block_45:
                        func_801230E8(0x20154, 0x20155, 0);
loop_46:
                        temp_v1 = D_8004A7C4->objId;
                        if ((D_800E8920[temp_v1] == 0) || (temp_f0 = D_800E64D0[temp_v1], (temp_f0 == 0.0f))) {
                            gKirbyState.unk44 = 1;
                            goto loop_1;
                        } else if (D_800E6850[temp_v1] != 0.0f) {
                            temp_f2 = D_800E6A10[temp_v1];
                            if ((temp_f2 != 1.0f) || !(temp_f0 > 0.0f)) {
                                if ((temp_f2 == -1.0f) && (temp_f0 < 0.0f)) {
block_54:
                                    gKirbyState.unk44 = 2;
                                    goto loop_1;
                                } else {
block_55:
                                    temp_v0_3 = gKirbyState.numberInhaled;
                                    if ((temp_v0_3 == 0) || (phi_v1 = temp_v1 * 4, (temp_v0_3 != gKirbyState.unkB2))) {
                                        finish_current_thread(1);
                                        goto loop_46;
                                    }
                                }
                            } else {
                                goto block_54;
                            }
                        } else {
                            goto block_55;
                        }
                    }
                } else {
                    goto block_45;
                }
            }
        } else {
            func_800AA5C4(0x20156, 0x20008, 0x40C00000);
            if (func_800AA368(arg0->unk3C->unk10) == 0) {
loop_23:
                temp_v0_4 = gKirbyState.numberInhaled;
                if ((temp_v0_4 != 0) && (temp_v0_4 == gKirbyState.unkB2)) {
                    phi_v1_2 = D_8004A7C4->objId;
                    goto block_60;
                } else {
                    finish_current_thread(1);
                    if (func_800AA368(arg0->unk3C->unk10) == 0) {
                        goto loop_23;
                    }
block_27:
                    func_801230E8(0x20156, 0x20157, 0);
loop_28:
                    temp_v1_2 = D_8004A7C4->objId;
                    if ((D_800E8920[temp_v1_2] == 0) || (temp_f0_2 = D_800E64D0[temp_v1_2], (temp_f0_2 == 0.0f))) {
                        gKirbyState.unk44 = 1;
                        goto loop_1;
                    } else if (D_800E6850[temp_v1_2] != 0.0f) {
                        temp_f2_2 = D_800E6A10[temp_v1_2];
                        if ((temp_f2_2 != 1.0f) || !(temp_f0_2 < 0.0f)) {
                            if ((temp_f2_2 == -1.0f) && (temp_f0_2 > 0.0f)) {
block_36:
                                gKirbyState.unk44 = 3;
                                goto loop_1;
                            } else {
block_37:
                                temp_v0_5 = gKirbyState.numberInhaled;
                                if ((temp_v0_5 == 0) || (phi_v1 = temp_v1_2 * 4, (temp_v0_5 != gKirbyState.unkB2))) {
                                    finish_current_thread(1);
                                    goto loop_28;
                                }
                            }
                        } else {
                            goto block_36;
                        }
                    } else {
                        goto block_37;
                    }
                }
            } else {
                goto block_27;
            }
        }
    } else {
        func_800AA5C4(0x2014A, 0x20008, 0x40C00000);
        if (func_800AA368(arg0->unk3C->unk10) == 0) {
loop_6:
            temp_v0_6 = gKirbyState.numberInhaled;
            if ((temp_v0_6 != 0) && (temp_v0_6 == gKirbyState.unkB2)) {
                phi_v1_2 = D_8004A7C4->objId;
                goto block_60;
            } else {
                finish_current_thread(1);
                if (func_800AA368(arg0->unk3C->unk10) == 0) {
                    goto loop_6;
                }
block_10:
                func_801230E8(0x2014A, 0x2014B, 0);
loop_11:
                temp_v1_3 = D_8004A7C4->objId;
                if ((D_800E8920[temp_v1_3] != 0) && (temp_f0_3 = D_800E64D0[temp_v1_3], (temp_f0_3 != 0.0f))) {
                    temp_f2_3 = D_800E6A10[temp_v1_3];
                    if ((temp_f2_3 != 1.0f) || !(temp_f0_3 > 0.0f)) {
                        if ((temp_f2_3 == -1.0f) && (temp_f0_3 < 0.0f)) {
block_17:
                            gKirbyState.unk44 = 2;
                        } else {
                            gKirbyState.unk44 = 3;
                        }
                    } else {
                        goto block_17;
                    }
                    goto loop_1;
                } else {
                    temp_v0_7 = gKirbyState.numberInhaled;
                    if ((temp_v0_7 == 0) || (phi_v1 = temp_v1_3 * 4, (temp_v0_7 != gKirbyState.unkB2))) {
                        finish_current_thread(1);
                        goto loop_11;
                    }
                }
            }
        } else {
            goto block_10;
        }
    }
    if ((*(D_800E8AE0 + phi_v1) & 6) != 0) {
        func_800A8100(1, 1, 3, (*(D_800DFBD0 + phi_v1))->unk8);
    } else {
        func_800A8100(1, 1, 2, (*(D_800DFBD0 + phi_v1))->unk8);
    }
    func_8011CF58();
    gKirbyState.unk4 = 1;
    temp_v0_8 = func_8011E1E8(gKirbyState.secondInhale, gKirbyState.firstInhale);
    gKirbyState.currentInhale = temp_v0_8;
    if (gKirbyState.numberInhaled >= 2) {
        if (temp_v0_8 < 8) {
            phi_v0 = func_801BC580_ovl3(temp_v0_8);
        } else {
            phi_v0 = func_801BC27C_ovl3(temp_v0_8, 0);
        }
        temp_v1_4 = phi_v0;
        if (phi_v0 != -1) {
            D_800E8220[temp_v1_4] = 1;
            assign_new_process_entry(*(&gEntityGObjProcessArray + (temp_v1_4 * 4)), &D_801A9618);
        }
    }
    play_sound(0xE5);
    temp_a0_2 = D_8004A7C4;
    temp_v1_5 = temp_a0_2->objId;
    if (D_800E8920[temp_v1_5] != 0) {
        D_800E6690[temp_v1_5] = 0.0f;
        temp_v1_6 = temp_a0_2->objId;
        D_800E64D0[temp_v1_6] = D_800E6690[temp_v1_6];
        D_800E6850[temp_a0_2->objId] = D_80197428;
    }
    func_80122F08(0x20009);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk8 == 0) {
        func_801230E8(0x20163, 0x20164, 1);
    }
    D_800E0490[D_8004A7C4->objId] = &D_80192704;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80172AE4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80173260_ovl3(struct GObj *arg0) {
    s32 sp1C;
    s32 sp18;
    f32 *temp_v0;
    s32 temp_a0;
    u16 temp_v0_2;
    u32 temp_v0_3;
    struct KirbyState *phi_v1;
    struct KirbyState *phi_v1_2;
    struct KirbyState *phi_v1_3;

    sp1C = 0;
    sp18 = D_800DFBD0[D_8004A7C4->objId][8];
    func_80153984_ovl3();
    sp18->unk30 = D_80198820;
    if ((func_801217B8() == 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        temp_v0 = &D_800E3210[D_8004A7C4->objId];
        if (*temp_v0 > 0.0f) {
            *temp_v0 = 0.0f;
        }
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.isInhaling = 0;
        sp1C = 1;
        ((D_8004A7C4->objId * 4) + 0x800F0000)->unk-7FA0 = -1;
        *0x801A0000 = 3;
        phi_v1_3 = &gKirbyState;
    } else {
        phi_v1_2 = &gKirbyState;
        if (gKirbyState.unk4 == 1) {
            phi_v1_2 = &gKirbyState;
            if (gKirbyState.unk8 == 0) {
                temp_a0 = D_800E8920[D_8004A7C4->objId];
                if ((temp_a0 != 0) && ((gKirbyController.buttonHeld & 0x400) == 0) && ((D_800D6FEA & 0x8000) != 0)) {
                    set_kirby_action_1(3, 5);
block_19:
                    phi_v1 = &gKirbyState;
                } else if ((D_800D6FEA & 0x4000) != 0) {
                    set_kirby_action_1(0x1A, 0x19);
                    goto block_19;
                } else {
                    temp_v0_2 = gKirbyController.buttonHeld;
                    if ((temp_v0_2 & 0x3F) != 0) {
                        gKirbyState.unk7 = 0;
                        set_kirby_action_1(0x11, 0x11);
                        goto block_19;
                    } else {
                        phi_v1 = &gKirbyState;
                        if (temp_a0 != 0) {
                            phi_v1 = &gKirbyState;
                            if ((temp_v0_2 & 0x400) != 0) {
                                set_kirby_action_1(0xB, 0x10);
                                goto block_19;
                            }
                        }
                    }
                }
                phi_v1_2 = phi_v1;
                if (phi_v1->action != 0x18) {
                    phi_v1->isInhalingBlock = 0;
                    phi_v1->isInhaling = 0;
                    return;
                }
            }
        }
        if (phi_v1_2->unk30 != 0) {
            sp1C = 1;
            phi_v1_3 = phi_v1_2;
        } else {
            phi_v1_3 = phi_v1_2;
            if (phi_v1_2->isInhaling != 0) {
                phi_v1_3 = phi_v1_2;
                if (phi_v1_2->unkB2 == 0) {
                    phi_v1_3 = phi_v1_2;
                    if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                        if (phi_v1_2->unk8 != 0) {
                            phi_v1_2->unk8 = 0;
                        }
                        sp1C = 1;
                        phi_v1_3 = phi_v1_2;
                    }
                }
            }
        }
    }
    if (sp1C != 0) {
        func_80122F08(*(&D_80196D48 + (phi_v1_3->unk4 * 4)));
        gKirbyState.unk154 = 2;
        gKirbyState.isInhalingBlock = 0;
        gKirbyState.isInhaling = 0;
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
            return;
        }
        if (D_800E8920[D_8004A7C4->objId] != 0) {
            if ((gKirbyController.buttonHeld & 0x300) != 0) {
                set_kirby_action_1(1, 3);
                return;
            }
            set_kirby_action_1(0, 1);
            return;
        }
        set_kirby_action_1(6, 6);
        return;
    }
    func_8011ED68();
    temp_v0_3 = D_8004A7C4->objId;
    if ((D_800E8920[temp_v0_3] != 0) && (gKirbyState.unk4 != 1) && (gKirbyState.isInhaling != 0)) {
        if ((D_800E8AE0[temp_v0_3] & 6) == 0) {
            func_800AECC0(1.25f);
            func_800AED20(1.25f);
            return;
        }
        func_800AECC0(0.5f);
        func_800AED20(0.5f);
        return;
    }
    if ((D_800E8AE0[temp_v0_3] & 6) != 0) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        return;
    }
    func_800AECC0(2.0f);
    func_800AED20(2.0f);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80173260_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801736BC_ovl3(struct GObj *arg0) {
    f32 sp5C;
    f32 sp54;
    f32 *temp_a0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    s32 temp_a1;
    s32 temp_v1_5;
    s32 temp_v1_8;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_4;
    struct GObj *temp_v0_5;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_6;
    u32 temp_v1_7;
    void *temp_a0;
    void *temp_v0_3;
    f32 phi_f2;
    s32 phi_v1;
    f32 phi_f0;
    s32 phi_v1_2;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x17;
    func_80120AF8(&sp54);
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    if ((D_800E8AE0[temp_v1] & 6) == 0) {
        phi_f2 = 9.0f;
    } else {
        phi_f2 = 4.5f;
    }
    D_800E64D0[temp_v1] = phi_f2 * sp54 * D_800E6A10[temp_v1];
    temp_f0 = 9.0f * sp54;
    if (temp_f0 < 0.0f) {
        D_800E6850[temp_v0->objId] = -temp_f0;
    } else {
        D_800E6850[temp_v0->objId] = temp_f0;
    }
    sp5C = 0.0f;
    D_800E9720[temp_v0->objId] = 4;
    D_800E83E0[temp_v0->objId] = 0;
    func_80122C30();
    func_801230E8(0x200F5, 0x200F6, 0);
    finish_current_thread(1);
    temp_v1_2 = D_8004A7C4->objId;
    temp_f0_2 = D_800E64D0[temp_v1_2];
    phi_v1 = temp_v1_2 * 4;
    phi_f0 = temp_f0_2;
    if (temp_f0_2 != 0.0f) {
loop_7:
        temp_a0 = phi_v1 + D_800E9720;
        temp_a1 = *temp_a0;
        if (temp_a1 == 0) {
            phi_v1_2 = phi_v1;
            if (sp5C == 0.0f) {
                func_80120AF8(&sp54);
                temp_v0_2 = D_8004A7C4;
                temp_v1_3 = temp_v0_2->objId;
                D_800E6690[temp_v1_3] = D_800E6A10[temp_v1_3] * (2.0f * sp5C);
                *(D_800E6850 + (temp_v0_2->objId * 4)) = 0.0f;
                temp_v1_4 = temp_v0_2->objId;
                phi_f0 = D_800E64D0[temp_v1_4];
                phi_v1_2 = temp_v1_4 * 4;
            }
        } else {
            *temp_a0 = temp_a1 - 1;
            temp_v1_5 = D_8004A7C4->objId;
            phi_f0 = D_800E64D0[temp_v1_5];
            phi_v1_2 = temp_v1_5 * 4;
        }
        if (!(phi_f0 > 0.0f) || ((gKirbyState.rightCollisionNext & 1) == 0)) {
            temp_v0_3 = phi_v1_2 + D_800E83E0;
            if (!(phi_f0 < 0.0f) || ((gKirbyState.leftCollisionNext & 8) == 0)) {
                if (*temp_v0_3 != 6) {
                    *temp_v0_3 = 0;
                    finish_current_thread(1);
                    temp_v1_6 = D_8004A7C4->objId;
                    temp_f0_3 = D_800E64D0[temp_v1_6];
                    phi_v1 = temp_v1_6 * 4;
                    phi_f0 = temp_f0_3;
                    if (temp_f0_3 != 0.0f) {
                        goto loop_7;
                    }
block_17:
                    func_8011E0E8();
                    gKirbyState.unk30 = gKirbyState.unk30 + 1;
                    func_800AFA14();
                }
            }
        }
    } else {
        goto block_17;
    }
    func_8011E0E8();
    temp_v0_4 = D_8004A7C4;
    gKirbyState.unk15C = &D_80190358;
    D_800E8920[temp_v0_4->objId] = 0;
    D_800E3210[temp_v0_4->objId] = 8.0f;
    D_800E3750[temp_v0_4->objId] = D_8019742C;
    D_800E3C90[temp_v0_4->objId] = 16.0f;
    func_800AFA54(*(&D_800DFA10 + (temp_v0_4->objId * 4)));
    func_801230E8(0x20089, 0x2008A, 0);
    temp_v0_5 = D_8004A7C4;
    temp_a0_2 = &D_800E64D0[temp_v0_5->objId];
    *temp_a0_2 = -*temp_a0_2;
    D_800E6690[temp_v0_5->objId] = 0.0f;
    temp_v1_7 = temp_v0_5->objId;
    temp_v1_8 = temp_v1_7 * 4;
    temp_f0_4 = -D_800E64D0[temp_v1_7];
    if (temp_f0_4 < 0.0f) {
        *(D_800E6850 + temp_v1_8) = -temp_f0_4;
    } else {
        *(D_800E6850 + temp_v1_8) = temp_f0_4;
    }
    gKirbyState.unk44 = gKirbyState.unk44 + 1;
    finish_current_thread(8);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801736BC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80173AF4_ovl3(struct GObj *arg0) {
    u16 sp1C;
    struct GObj *temp_v1;
    u32 temp_v0;
    u32 temp_v0_2;

    sp1C = D_80196C9C;
    if ((D_8012E7F0 == 0) && (D_8012E804 == 0) && (D_800E8920[D_8004A7C4->objId] != 0)) {
        func_8015449C_ovl3(&D_801930CC, 0);
    }
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp1C) != 0) {
        func_8011E0E8();
    }
    if (D_8012E7F0 == 0) {
        if (D_8012E804 == 0) {
            temp_v0 = D_8004A7C4->objId;
            if (D_800E8920[temp_v0] != 0) {
                func_8016854C_ovl3(&D_801910AC, D_800DFBD0[temp_v0][7], 0x3F800000);
                return;
            }
        }
    } else {
        temp_v1 = D_8004A7C4;
        D_800E6690[temp_v1->objId] = 0.0f;
        temp_v0_2 = temp_v1->objId;
        D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
        D_800E6850[temp_v1->objId] = D_80197430;
        if ((gKirbyController.buttonHeld & 0x400) != 0) {
            set_kirby_action_1(9, 0xE);
            return;
        }
        if (D_800E8920[temp_v1->objId] != 0) {
            set_kirby_action_1(0, 1);
            return;
        }
        set_kirby_action_1(6, 6);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80173AF4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80173CB4_ovl3(struct GObj *arg0) {
    struct GObj *temp_v1;
    u32 temp_v0;
    struct GObj *phi_v1;

    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x18;
    func_80120A28();
    gKirbyState.unkD = 6;
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        temp_v0 = D_8004A7C4->objId;
        if ((D_800E8AE0[temp_v0] & 6) != 0) {
            func_800A8100(1, 1, 9, D_800DFBD0[temp_v0][2]);
        } else {
            func_800A8100(1, 1, 8, D_800DFBD0[temp_v0][2]);
        }
        phi_v1 = D_8004A7C4;
    } else {
        temp_v1 = D_8004A7C4;
        D_800EC2E0[func_801632B8_ovl3(0)] = D_800DFBD0[temp_v1->objId][2];
        phi_v1 = temp_v1;
    }
    gKirbyState.unk4 = 0;
    D_800E0490[phi_v1->objId] = &D_801926E8;
    func_801230E8(0x20152, 0x20153, 1);
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80173CB4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80173E40_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        func_8011D67C(6);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80173E40_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80173EC0_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    struct GObj *temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;

    gKirbyState.unk30 = 0;
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 4;
    }
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    temp_f2 = D_80197434;
    D_800DDFD0[temp_v0->objId] = 0x19;
    D_800E6690[temp_v0->objId] = 0.0f;
    temp_v1 = temp_v0->objId;
    D_800E64D0[temp_v1] = D_800E6690[temp_v1];
    D_800E6850[temp_v0->objId] = temp_f2;
    D_800E3750[temp_v0->objId] = 0.0f;
    temp_v1_2 = temp_v0->objId;
    D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
    D_800E3C90[temp_v0->objId] = temp_f2;
    if (gKirbyState.unkE == 0) {
        func_801230E8(0x20113, 0x20114, 0);
    } else {
        func_801230E8(0x20115, 0x20116, 0);
    }
    D_800DF310[D_8004A7C4->objId] = &D_8017404C;
    func_800AF27C();
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80173EC0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017404C_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s8 temp_v0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = D_8012E7CE;
        if (temp_v0 == 0) {
            if ((random_soft_s32_range(3) & 2) != 0) {
                play_sound(0xDE);
            } else {
                play_sound(0xDF);
            }
            play_sound(0xE7);
            gKirbyState.unk4 = 0;
            gKirbyState.unkD = 5;
            return;
        }
        if (temp_v0 == arg2) {
            if ((random_soft_s32_range(3) & 2) != 0) {
                play_sound(0xDE);
            } else {
                play_sound(0xDF);
            }
            play_sound(0xE7);
            D_8012E7C4 = 0;
            D_8012E7CD = 5;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017404C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174144_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (D_8012E7CD != 4) {
        func_801217B8();
        if (D_8012E7F0 != 0) {
            if (D_800E8920[D_8004A7C4->objId] == 0) {
                set_kirby_action_1(6, 6);
                return;
            }
            set_kirby_action_1(0, 1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174144_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801741DC_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0xF;
    gKirbyState.unk4 = 0;
    gKirbyState.unk68 = 0;
    gKirbyState.unkD = -1;
    if (func_800AA888(0x20007) == 0) {
        func_80122F08(0x20007);
    }
    func_801230E8(0x2010F, 0x20110, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801741DC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174284_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u8 temp_v0_5;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.ceilingCollisionNext != 0) {
        if (func_80122460() != 0) {
            if (gKirbyState.unk24 != 0) {
                gKirbyState.unk24 = 0;
                D_800E7CE0[D_8004A7C4->objId] = 0x2D;
            }
            temp_v1 = D_8004A7C4;
            temp_f2 = D_80197438;
            D_800E6690[temp_v1->objId] = 0.0f;
            temp_v0 = temp_v1->objId;
            D_800E64D0[temp_v0] = D_800E6690[temp_v0];
            D_800E6850[temp_v1->objId] = temp_f2;
            temp_v0_2 = temp_v1->objId;
            if (D_800E3210[temp_v0_2] > 0.0f) {
                D_800E3750[temp_v0_2] = 0.0f;
                temp_v0_3 = temp_v1->objId;
                D_800E3210[temp_v0_3] = D_800E3750[temp_v0_3];
                D_800E3C90[temp_v1->objId] = temp_f2;
            }
            D_8012BCA0 = D_8012BCA0 & 7;
            set_kirby_action_1(0xA, 0xD);
            return;
        }
        D_800E3210[D_8004A7C4->objId] = 0.0f;
    }
    if (gKirbyState.horizontalCollision != 0) {
        temp_v1_2 = D_8004A7C4;
        D_800E6690[temp_v1_2->objId] = 0.0f;
        temp_v0_4 = temp_v1_2->objId;
        D_800E64D0[temp_v0_4] = D_800E6690[temp_v0_4];
        D_800E6850[temp_v1_2->objId] = D_8019743C;
    }
    if (gKirbyState.unk17 != 0) {
        temp_v0_5 = gKirbyState.unkB;
        if ((temp_v0_5 == 1) || (temp_v0_5 == 2)) {
            if (gKirbyState.unk24 != 0) {
                gKirbyState.unk24 = 0;
                return;
            }
        } else {
block_15:
            if (gKirbyState.unk30 != 0) {
                if (gKirbyState.unk24 != 0) {
                    gKirbyState.unk24 = 0;
                    D_800E7CE0[D_8004A7C4->objId] = 0x2D;
                }
                func_8011D67C(&gKirbyState);
            }
        }
    } else {
        goto block_15;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174284_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174504_ovl3(struct GObj *arg0) {
    s32 temp_v1;
    u32 temp_a0;
    s32 phi_v0;

    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    gKirbyState.unkD = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.firstInhale = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x10;
    func_80120A28();
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    if (gKirbyState.unk4 == 1) {
        func_801230E8(0x20146, 0x20147, 0);
    } else {
        temp_a0 = gKirbyState.ability;
        if (temp_a0 < 8) {
            phi_v0 = func_801BBFE4_ovl3(temp_a0);
        } else {
            phi_v0 = func_801BC27C_ovl3(temp_a0, 0);
        }
        temp_v1 = phi_v0;
        if (phi_v0 != -1) {
            D_800E8220[temp_v1] = 1;
            assign_new_process_entry(*(&gEntityGObjProcessArray + (temp_v1 * 4)), &D_801A9618);
            gKirbyState.unk4 = 1;
            gKirbyState.currentInhale = gKirbyState.ability;
        }
        gKirbyState.ability = 0;
        func_8012310C(0);
        func_801230E8(0x20144, 0x20145, 0);
    }
    D_800DF310[D_8004A7C4->objId] = &D_80174680;
    func_800AF27C();
    gKirbyState.unkD = 2;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174504_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174680_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        play_sound(0xE6);
        gKirbyState.unk4 = 2;
        gKirbyState.currentInhale = 0;
        gKirbyState.unkD = 1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174680_ovl3.s")
#endif

extern u16 D_800D6FEA;
#ifdef MIPS_TO_C
void func_801746E0_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    if (func_801217B8() != 0) {
        func_80122B40();
        func_80122FB0(1);
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unkB8 != 6
         || func_80179060_ovl3(0x42200000) != 0
         || gKirbyState.unkA != 0
         || gKirbyState.unkBA != 0
        ) {
            if (D_800E8920[D_8004A7C4->objId] != 0) {
                set_kirby_action_1(0, 1);
            } else {
                set_kirby_action_1(6, 6);
            }
            return;
        }
        set_kirby_action_1(0x1F, 0x14);
    }
    if ((D_800D6FEA & 0x3F) != 0) {
        gKirbyState.unkA = 3;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801746E0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801747F0_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x11;
    func_80120A28();
    if (gKirbyState.unkD != -2) {
        gKirbyState.unkD = 3;
    }
    func_80122F08(0x20008);
    gKirbyState.unk154 = 2;
    func_801230E8(0x2014E, 0x2014F, 0);
    D_800DF310[D_8004A7C4->objId] = &D_8017492C;
    func_800AF27C();
    if (gKirbyState.unkD != -2) {
        func_80122F08(0x20009);
        func_801230E8(0x20173, 0x20174, 0);
        gKirbyState.unk154 = 2;
        D_800E0490[D_8004A7C4->objId] = &D_80192704;
    } else {
        gKirbyState.unk4 = 0;
        gKirbyState.unkD = -1;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801747F0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017492C_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f) && (gKirbyState.unkD != -2)) {
        play_sound(0xE5);
        gKirbyState.unk4 = 1;
        gKirbyState.unkD = -1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017492C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017499C_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (D_8012E7F0 != 0) {
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        set_kirby_action_1(0, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017499C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174A30_ovl3(struct GObj *arg0) {
    D_8012E7F0 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x12;
    func_80122F08(0x20007);
    D_8012E914 = 2;
    func_80120A28();
    func_801230E8(0x200DF, 0x200E0, 0);
    D_800DF310[D_8004A7C4->objId] = &D_80174AEC;
    func_800AF27C();
    D_8012E7F0 = D_8012E7F0 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174A30_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174AEC_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        if ((random_soft_s32_range(3) & 2) != 0) {
            play_sound(0xDE);
        } else {
            play_sound(0xDF);
        }
        play_sound(0xE7);
        gKirbyState.unk4 = 0;
        if (gKirbyState.unkD != -2) {
            gKirbyState.unkD = 8;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174AEC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80174B7C_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    if (func_801217B8() != 0) {
        func_80122B40();
    }
    if (D_8012E7F0 != 0) {
        if (D_800E8920[D_8004A7C4->objId] == 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        set_kirby_action_1(0, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174B7C_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80174C10_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80174C10_ovl3.s line 136.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80174C10_ovl3.s")
#endif

extern f32 D_8019747C;

void func_80175754_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[D_8004A7C4->objId] = 0.0f;
        D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
        D_800E6850[D_8004A7C4->objId] = D_8019747C;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[D_8004A7C4->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
        D_800E7CE0[D_8004A7C4->objId] = 0x2D;
        if ((gKirbyState.unk4 != 0) && (gKirbyState.damageType >= 2)) {
            D_800E7CE0[D_8004A7C4->objId] += 0x1A;
        }
    }
    func_8011ED68();
}

#ifdef MIPS_TO_C
Failed to decompile function func_8017599C_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8017599C_ovl3.s line 133.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017599C_ovl3.s")
#endif


extern f32 D_801974B4;

void func_801760FC_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    u32 temp_v1;
    u8 temp_v0_2;

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.horizontalCollision != 0) {
        D_800E6690[D_8004A7C4->objId] = 0.0f;
        D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
        D_800E6850[D_8004A7C4->objId] = D_801974B4;
    }
    if (gKirbyState.unk30 != 0) {
        if (gKirbyState.unk8 != 0) {
            set_kirby_action_1(0xB, 0x10);
        } else if (func_80179130_ovl3() == 0) {
            if (D_800E8920[D_8004A7C4->objId] == 0) {
                set_kirby_action_1(6, 6);
            } else {
                switch (gKirbyState.unk4) {
                    case 0:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(9, 0xE);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 1:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(0xB, 0x10);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                    case 2:
                        if ((gKirbyController.buttonHeld & 0x400) != 0) {
                            set_kirby_action_1(0x12, 0x12);
                        } else {
                            set_kirby_action_1(0, 1);
                        }
                        break;
                }
            }
        }
        gKirbyState.unk24 = 0;
    }
}

extern u8 D_80198825;
extern Gfx **gDisplayListHeads;
// When the easy GBI macro function doesnt match!!!!!!!!!!!!!!!!!!!!!!!
#ifdef MIPS_TO_C
Gfx *func_801762E0_ovl3(struct GObj *arg0) {
    Gfx *temp_a0;
    Gfx *temp_a1;
    Gfx *temp_a2;
    Gfx *temp_a3;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v1;
    Gfx *temp_v1_2;

    temp_v1 = *gDisplayListHeads;
    temp_v0_2 = temp_v1 + 8;
    temp_v1->words.w0 = 0xE7000000;
    temp_v1->words.w1 = 0;
    temp_v0_2->words.w1 = 0x504340;
    temp_v0_2->words.w0 = 0xE200001C;
    temp_a1 = temp_v0_2 + 8;
    temp_a1->words.w0 = 0xFA000000;
    temp_a2 = temp_a1 + 8;
    temp_a1->words.w1 = D_80198825 & 0xFF;
    temp_a3 = temp_a2 + 8;
    temp_a2->words.w0 = 0xFCFFFFFF;
    temp_a2->words.w1 = 0xFFFDF6FB;
    temp_v1_2 = temp_a3 + 8;
    temp_a3->words.w1 = 0x28028;
    temp_a3->words.w0 = 0xF64D8398;
    temp_a0 = temp_v1_2 + 8;
    temp_v1_2->words.w1 = 0;
    temp_v1_2->words.w0 = 0xE7000000;
    temp_a0->words.w1 = 0x552078;
    temp_a0->words.w0 = 0xE200001C;
    temp_v0 = temp_a0 + 8;
    *gDisplayListHeads = temp_v0;
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801762E0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void *func_80176398_ovl3(void) {
    struct GObj *temp_v0_2;
    void *temp_v0;
    void *temp_v1;

    temp_v0_2 = func_8000A180(2, 0, 0x19, 0x80000000);
    if (temp_v0_2 != 0) {
        func_8000A5FC(temp_v0_2, &D_801762E0, 0xC, 0x80000000, -1);
    }
    D_80198824 = 1;
    func_8000A888_ovl3(D_800DE350[D_8004A7C4->objId], 0xC, 0x80000000);
    temp_v0 = D_800D79B0.unk4;
    temp_v0->unk44 = temp_v0->unk44 & ~1;
    temp_v1 = D_800D79B0.unk4->unk3C;
    temp_v1->unk80 = temp_v1->unk80 | 1;
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176398_ovl3.s")
#endif

#ifdef MIPS_TO_C
s16 func_8017644C_ovl3(void) {
    s16 temp_v0;

    temp_v0 = D_80198824;
    if (temp_v0 != 0) {
        D_80198824 = temp_v0 + 5;
        if (D_80198824 >= 0xFF) {
            D_80198824 = 0xFF;
        }
    }
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017644C_ovl3.s")
#endif


extern s32 D_80198824;
#ifdef MIPS_TO_C
void func_80176484_ovl3(void) {
    D_80198824 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176484_ovl3.s")
#endif

extern f32 D_801974B8, D_801974BC;
extern s32 D_800D6B58;
extern s32 D_800BE4F8;
extern void func_800B1870(s32);

void func_80176814_ovl3(struct GObj *arg0);

// this function sucks
// one instruction length difference btw
#ifdef NON_MATCHING
void func_80176490_ovl3(struct GObj *arg0) {
    f32 temp_f12;

    gKirbyState.unk30 = 1;
    func_800AECC0(D_800D6B10);
    func_800AED20(D_800D6B10);
    D_800DF150[D_8004A7C4->objId] = func_80176814_ovl3;
    func_80122FB0(0);
    func_800B1F68(gEntityGObjProcessArray4[D_8004A7C4->objId], func_800B1870);
    func_80122F08(0x20007);
    temp_f12 = D_801974BC;
    gEntitiesScaleXArray[D_8004A7C4->objId] = D_801974B8;
    gEntitiesScaleYArray[D_8004A7C4->objId] = D_801974B8;
    gEntitiesScaleZArray[D_8004A7C4->objId] = D_801974B8;
    gKirbyState.unk15C = 0;
    D_800DF310[D_8004A7C4->objId] = 0;
    D_800D6F10 = 0;
    gKirbyState.numberInhaled = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4 = 0;
    gKirbyState.isInhaling = 0;
    gKirbyState.isInhalingBlock = 0;
    gKirbyState.numberInhaling = gKirbyState.numberInhaled;
    D_800E8060[D_8004A7C4->objId] = -1;
    D_800E6690[D_8004A7C4->objId] = 0.0f;
    D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
    D_800E6850[D_8004A7C4->objId] = temp_f12;
    D_800E3750[D_8004A7C4->objId] = 0.0f;
    D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
    D_800E3C90[D_8004A7C4->objId] = temp_f12;
    gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
    if (!(gKirbyState.isTurning & 1)) {
        gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E17D0[D_8004A7C4->objId];
    }
    func_800FB914(0);
    func_80020C88_ovl3();
    func_800A7EB4();
    if ((gKirbyState.floorCollisionNext != 0) && (gKirbyState.ceilingCollisionNext != 0)) {
        gKirbyState.unk30 = 0;
    }
    if ((gKirbyHp == 0.0f) && (D_800E7B20[D_8004A7C4->objId] != 0.0f)) {
        play_sound(0xDC);
    } else if (gKirbyState.damageType >= 2) {
        play_sound(0xD9);
    } else {
        play_sound(0xD8);
    }
    func_8011DA34();
    func_80020998_ovl3(0, 0x7800);
    func_800A75B0(0, 5);
    func_80176398_ovl3();
    func_800BB498();
    func_800BB468(2, 0);
    D_800D6B58 = 0x400;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    func_801230E8(0x20065, 0x20066, 1);
    D_800D6B58 = 0x5A;
    D_800D6B54 = 1;
    D_800BE4F8 = 6;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176490_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80176814_ovl3(struct GObj *arg0) {
    if (D_8012E7F0 != 0) {
        func_80153984_ovl3();
        if (func_80121658() != 0) {
            D_8012E7F0 = 0;
        }
    }
    func_8011E548();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176814_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80176860_ovl3(struct GObj *arg0) {
    f32 *temp_a0;
    f32 temp_f0;
    struct GObj *temp_v0;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_5;
    struct GObj *temp_v0_6;
    struct GObj *temp_v0_7;
    struct GObj *temp_v0_8;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u8 temp_v0_2;
    u8 temp_v0_4;

    D_800E9720[D_8004A7C4->objId] = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x15;
    temp_v1 = temp_v0->objId;
    temp_a0 = &D_800E3210[temp_v1];
    if ((D_800E8AE0[temp_v1] & 0x80) != 0) {
        temp_f0 = *temp_a0;
        if ((temp_f0 < 0.0f) && (temp_f0 < -1.0f)) {
            *temp_a0 = -1.0f;
            D_800E3750[temp_v0->objId] = D_801974C0;
            D_800E3C90[temp_v0->objId] = 1.0f;
        }
    }
    if (gKirbyState.unk4 == 1) {
        gKirbyState.unk15C = &D_801903E0;
    } else {
        gKirbyState.unk15C = &D_80190358;
    }
    if (gKirbyState.previousAction != 0x1E) {
        if (gKirbyState.unk44 != 0) {
            D_800E3210[temp_v0->objId] = 6.0f;
            D_800E3750[temp_v0->objId] = D_801974C4;
            D_800E3C90[temp_v0->objId] = 1.0f;
        }
        play_sound(0x10B);
        temp_v0_2 = gKirbyState.unk4;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 != 1) {
                if (temp_v0_2 != 2) {

                } else {
                    func_800AA78C(0x200CF, 0x20007, 0x40C00000);
                    func_801230E8(0x200CF, 0x200D0, 0);
                }
            } else {
                func_800AA78C(0x2017D, 0x20009, 0x40C00000);
                func_801230E8(0x2017D, 0x2017E, 0);
            }
        } else {
            func_800AA78C(0x20111, 0x20007, 0x40C00000);
            func_801230E8(0x20111, 0x20112, 0);
        }
        temp_v0_3 = D_8004A7C4;
        D_800DF310[temp_v0_3->objId] = &D_80122CA0;
        if (gKirbyState.unk44 != 0) {
            D_800E9720[temp_v0_3->objId] = 9;
            func_800AECC0(4.0f);
            func_800AED20(4.0f);
        }
    }
loop_20:
    temp_v0_4 = gKirbyState.unk17;
    if ((temp_v0_4 == 0) && ((gKirbyController.buttonPressed & 0x8000) != 0)) {
        D_800E9720[D_8004A7C4->objId] = 0xF;
        play_sound(0x10B);
        func_800AECC0(4.0f);
        func_800AED20(4.0f);
        temp_v0_5 = D_8004A7C4;
        D_800E3210[temp_v0_5->objId] = 6.0f;
        D_800E3750[temp_v0_5->objId] = D_801974C8;
        D_800E3C90[temp_v0_5->objId] = 6.0f;
    } else if (D_800E9720[D_8004A7C4->objId] == 0) {
        if ((temp_v0_4 == 0) && ((gKirbyController.buttonHeld & 0x400) != 0)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            temp_v0_6 = D_8004A7C4;
            temp_v1_2 = temp_v0_6->objId;
            if (D_800E3C90[temp_v1_2] != 2.5f) {
                D_800E3210[temp_v1_2] = -2.5f;
                D_800E3750[temp_v0_6->objId] = 0.0f;
                D_800E3C90[temp_v0_6->objId] = 2.5f;
            }
        } else if ((temp_v0_4 == 0) && ((gKirbyController.buttonHeld & 0x800) != 0)) {
            func_800AECC0(2.0f);
            func_800AED20(2.0f);
            temp_v0_7 = D_8004A7C4;
            temp_v1_3 = temp_v0_7->objId;
            if (D_800E3C90[temp_v1_3] != 1.5f) {
                D_800E3210[temp_v1_3] = 1.5f;
                D_800E3750[temp_v0_7->objId] = 0.0f;
                D_800E3C90[temp_v0_7->objId] = 1.5f;
            }
        } else {
            func_800AECC0(1.0f);
            func_800AED20(1.0f);
            temp_v0_8 = D_8004A7C4;
            D_800E3750[temp_v0_8->objId] = D_801974CC;
            D_800E3C90[temp_v0_8->objId] = 1.0f;
        }
    }
    finish_current_thread(1);
    goto loop_20;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176860_ovl3.s")
#endif

#ifdef MIPS_TO_C
u32 func_80176DE0_ovl3(struct GObj *arg0) {
    ? sp28;
    s32 *temp_v0_3;
    s32 *temp_v1;
    s32 temp_a0;
    struct GObj *temp_v1_2;
    u32 temp_ret;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_4;
    f32 *phi_at;
    u32 phi_return;

    sp28.unk0 = D_80196CA0.unk0;
    sp28.unk4 = D_80196CA0.unk4;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_80153984_ovl3();
    if ((D_8012E7D7 == 0) && ((gKirbyController.buttonHeld & 0xF00) != 0)) {
        D_800E9560[D_8004A7C4->objId] = 0x1E;
    } else {
        temp_v0_2 = D_8004A7C4->objId;
        temp_v1 = &D_800E9560[temp_v0_2];
        if (D_800E3210[temp_v0_2] > 0.0f) {
            D_800E9560[temp_v0_2] = 0x1E;
        } else {
            *temp_v1 = *temp_v1 - 1;
        }
    }
    temp_ret = ovl3_process_command_string(&sp28);
    phi_return = temp_ret;
    if (temp_ret == 0) {
        temp_v1_2 = D_8004A7C4;
        temp_v0_3 = &D_800E9720[temp_v1_2->objId];
        temp_a0 = *temp_v0_3;
        if (temp_a0 != 0) {
            *temp_v0_3 = temp_a0 - 1;
        }
        if (D_8012E7D7 == 0) {
            temp_v0_4 = temp_v1_2->objId;
            temp_v0 = temp_v0_4 * 4;
            if ((gKirbyController.buttonHeld & 0x300) != 0) {
                D_800E6690[temp_v0_4] = (&D_800E6A10[temp_v0_4])[0x1A84] * D_801974D4;
                D_800E6850[temp_v1_2->objId] = D_801974D8;
                return temp_v0;
            }
            D_800E6690[temp_v0_4] = D_800E6A10[temp_v0_4] * D_801974D0;
            phi_at = &D_800E6850[temp_v1_2->objId];
            phi_return = temp_v0;
block_15:
            *phi_at = 0.0f;
        } else {
            phi_return = temp_v0_3;
            if (D_800D6B54 != 0) {
                D_800E6690[temp_v1_2->objId] = D_801974DC;
                phi_at = &D_800E6850[temp_v1_2->objId];
                phi_return = temp_v0_3;
                goto block_15;
            }
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80176DE0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177000_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;

    func_800B1F68(gEntityGObjProcessArray4[D_8004A7C4->objId], &D_801770E0);
    temp_v0 = D_8004A7C4;
    D_800DE190[temp_v0->objId] = 0;
    D_800DDE10[temp_v0->objId] = 0;
    call_virtual_function(D_800DDE10[temp_v0->objId], 2, &D_80196CA8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177000_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177098_ovl3(struct GObj *arg0) {
    call_virtual_function(D_800DDE10[D_8004A7C4->objId], 2, &D_80196CA8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177098_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801770E0_ovl3(struct GObj *arg0) {
    call_virtual_function(D_800DE190[D_8004A7C4->objId], 2, &D_80196CB0);
    func_80120E74(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801770E0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177130_ovl3(struct GObj *arg0) {
    D_800DE190[D_8004A7C4->objId] = 0;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177130_ovl3.s")
#endif

void func_8017716C_ovl3(struct GObj *arg0) {

}

#ifdef MIPS_TO_C
void func_80177174_ovl3(struct GObj *arg0) {
    f32 *temp_v1;
    f32 *temp_v1_2;
    s32 *temp_v0_2;
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    D_800EB4E0[temp_v0->objId] = 0;
    D_800DE190[temp_v0->objId] = 1;
    gEntitiesScaleYArray[temp_v0->objId] = D_801974E0;
    temp_v1 = &gEntitiesScaleYArray[temp_v0->objId];
    *temp_v1 = *temp_v1 + D_801974E4;
    finish_current_thread(2);
    temp_v1_2 = &gEntitiesScaleYArray[D_8004A7C4->objId];
    *temp_v1_2 = *temp_v1_2 + D_801974E8;
    finish_current_thread(2);
    temp_v0_2 = &D_800EB4E0[D_8004A7C4->objId];
    *temp_v0_2 = *temp_v0_2 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177174_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_80177270_ovl3(struct GObj *arg0) {
    u32 temp_v0;
    s32 phi_return;

    temp_v0 = D_8004A7C4->objId;
    phi_return = temp_v0 * 4;
    if (D_800EB4E0[temp_v0] != 0) {
        gEntitiesScaleYArray[temp_v0] = D_801974EC;
        phi_return = func_80122FB0(0);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177270_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_801772CC_ovl3(struct GObj *arg0) {
    return *(&D_80196CB8 + (arg0 * 4));
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801772CC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801772E0_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    struct GObj *temp_v0;
    u32 temp_v1;

    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x1A;
    D_800E0490[temp_v0->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    D_800E3750[temp_v0->objId] = (bitwise f32) gKirbyState.unkC4;
    temp_f0 = (bitwise f32) gKirbyState.unkC8;
    if (temp_f0 < 0.0f) {
        D_800E3C90[temp_v0->objId] = -temp_f0;
    } else {
        D_800E3C90[temp_v0->objId] = temp_f0;
    }
    temp_v1 = temp_v0->objId;
    D_800E6690[temp_v1] = D_800E6A10[temp_v1] * (bitwise f32) gKirbyState.unkBC;
    temp_f0_2 = (bitwise f32) gKirbyState.unkC0;
    if (temp_f0_2 < 0.0f) {
        D_800E6850[temp_v0->objId] = -temp_f0_2;
    } else {
        D_800E6850[temp_v0->objId] = temp_f0_2;
    }
    func_801230E8(0x20087, 0x20088, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801772E0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177438_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f0;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u8 temp_v1;
    u8 temp_v1_2;

    sp24 = D_80196D60;
    func_80153984_ovl3();
    temp_v1 = gKirbyState.unkB;
    if ((temp_v1 != 1) && (temp_v1 != 2)) {
        if (D_800D6B54 != 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (ovl3_process_command_string(&sp24) == 0) {
            if ((gKirbyState.unkB9 == 0) && ((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
                gKirbyState.isTurning = gKirbyState.isTurning | 1;
            }
            if (gKirbyState.unk17 != 0) {
block_12:
                temp_v1_5 = D_8004A7C4;
                temp_v0_4 = temp_v1_5->objId;
                if (D_800E8920[temp_v0_4] == 0) {
                    set_kirby_action_1(6, 6);
                    return;
                }
                D_800E3750[temp_v0_4] = 0.0f;
                temp_v0_5 = temp_v1_5->objId;
                D_800E3210[temp_v0_5] = D_800E3750[temp_v0_5];
                D_800E3C90[temp_v1_5->objId] = D_801974F0;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            temp_v1_2 = gKirbyState.unkB;
            if (temp_v1_2 == 4) {
                goto block_12;
            }
            if (temp_v1_2 == 3) {
                goto block_12;
            }
            temp_v1_3 = D_8004A7C4;
            temp_v0 = temp_v1_3->objId;
            if (D_800E8920[temp_v0] != 0) {
                D_800E3750[temp_v0] = 0.0f;
                temp_v0_2 = temp_v1_3->objId;
                D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
                ((temp_v1_3->objId * 4) + 0x800E0000)->unk3C90 = D_801974F4;
                set_kirby_action_1(1, 3);
                func_80122FB0(1);
                return;
            }
            if (func_80179060_ovl3(0x42200000) != 0) {
                set_kirby_action_1(0x17, 0x1B);
            }
            temp_v1_4 = D_8004A7C4;
            temp_v0_3 = temp_v1_4->objId;
            D_800E6690[temp_v0_3] = D_800E6A10[temp_v0_3] * gKirbyState.unkBC;
            temp_f0 = gKirbyState.unkC0;
            if (temp_f0 < 0.0f) {
                D_800E6850[temp_v1_4->objId] = -temp_f0;
                return;
            }
            D_800E6850[temp_v1_4->objId] = temp_f0;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177438_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801776E8_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;
    u32 temp_v1;

    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x1B;
    D_800E0490[temp_v0->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    if ((gKirbyController.buttonHeld & 0x300) == 0) {
        temp_v1 = temp_v0->objId;
        D_800E6690[temp_v1] = D_800E6A10[temp_v1] * -(bitwise f32) gKirbyState.unkBC;
        D_800E6850[temp_v0->objId] = 0.0f;
    }
    D_800E3750[temp_v0->objId] = (bitwise f32) gKirbyState.unkC4;
    temp_f0 = (bitwise f32) gKirbyState.unkC8;
    if (temp_f0 < 0.0f) {
        D_800E3C90[temp_v0->objId] = -temp_f0;
    } else {
        D_800E3C90[temp_v0->objId] = temp_f0;
    }
    func_801230E8(0x20087, 0x20088, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801776E8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017782C_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f0;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u8 temp_v1;
    u8 temp_v1_2;

    sp24 = D_80196D64;
    func_80153984_ovl3();
    temp_v1 = gKirbyState.unkB;
    if ((temp_v1 != 1) && (temp_v1 != 2)) {
        if (D_800D6B54 != 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (ovl3_process_command_string(&sp24) == 0) {
            if ((gKirbyState.unkB9 == 0) && ((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
                gKirbyState.isTurning = gKirbyState.isTurning | 1;
            }
            if (gKirbyState.unk17 != 0) {
block_12:
                temp_v1_5 = D_8004A7C4;
                temp_v0_4 = temp_v1_5->objId;
                if (D_800E8920[temp_v0_4] == 0) {
                    set_kirby_action_1(6, 6);
                    return;
                }
                D_800E3750[temp_v0_4] = 0.0f;
                temp_v0_5 = temp_v1_5->objId;
                D_800E3210[temp_v0_5] = D_800E3750[temp_v0_5];
                D_800E3C90[temp_v1_5->objId] = D_801974F8;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            temp_v1_2 = gKirbyState.unkB;
            if (temp_v1_2 == 4) {
                goto block_12;
            }
            if (temp_v1_2 == 3) {
                goto block_12;
            }
            temp_v1_3 = D_8004A7C4;
            temp_v0 = temp_v1_3->objId;
            if (D_800E8920[temp_v0] != 0) {
                D_800E3750[temp_v0] = 0.0f;
                temp_v0_2 = temp_v1_3->objId;
                D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
                ((temp_v1_3->objId * 4) + 0x800E0000)->unk3C90 = D_801974FC;
                if ((gKirbyController.buttonHeld & 0x300) != 0) {
                    set_kirby_action_1(1, 3);
                    func_80122FB0(1);
                    return;
                }
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            if (func_80179060_ovl3(0x42200000, D_800E3750, &gKirbyState) != 0) {
                set_kirby_action_1(6, 6);
            }
            if ((gKirbyController.buttonHeld & 0x300) != 0) {
                temp_v1_4 = D_8004A7C4;
                temp_v0_3 = temp_v1_4->objId;
                D_800E6690[temp_v0_3] = D_800E6A10[temp_v0_3] * gKirbyState.unkBC;
                temp_f0 = gKirbyState.unkC0;
                if (!(temp_f0 < 0.0f)) {
                    D_800E6850[temp_v1_4->objId] = temp_f0;
                    return;
                }
                D_800E6850[temp_v1_4->objId] = -temp_f0;
                return;
            }
            D_800E6850[D_8004A7C4->objId] = 0.0f;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017782C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177B40_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v1;
    u32 temp_v0;
    u32 temp_v0_2;

    func_8011CF58();
    temp_v1 = D_8004A7C4;
    D_800DDFD0[temp_v1->objId] = 0x1C;
    gKirbyState.unk3C = gKirbyState.turnDirection;
    D_800E0490[temp_v1->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    D_800E3750[temp_v1->objId] = 0.0f;
    temp_v0 = temp_v1->objId;
    D_800E3210[temp_v0] = D_800E3750[temp_v0];
    D_800E3C90[temp_v1->objId] = D_80197500;
    temp_v0_2 = temp_v1->objId;
    D_800E6690[temp_v0_2] = D_800E6A10[temp_v0_2] * (bitwise f32) gKirbyState.unkBC;
    temp_f0 = (bitwise f32) gKirbyState.unkC0;
    if (temp_f0 < 0.0f) {
        D_800E6850[temp_v1->objId] = -temp_f0;
    } else {
        D_800E6850[temp_v1->objId] = temp_f0;
    }
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[D_8004A7C4->objId] = &D_80122CA0;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177B40_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177CBC_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f0;
    struct GObj *temp_v1;
    u32 temp_v0;
    struct KirbyState *phi_a2;

    sp24 = D_80196D68;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp24) == 0) {
        if ((gKirbyState.unkB9 == 0) && ((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
            gKirbyState.isTurning = gKirbyState.isTurning | 1;
        }
        if ((gKirbyState.unk17 == 0) || (gKirbyState.unkB != 4)) {

        } else {
block_8:
            set_kirby_action_1(6, 6);
            return;
        }
        if (gKirbyState.unkB == 3) {
            goto block_8;
        }
        phi_a2 = &gKirbyState;
        if (func_80179060_ovl3(0x42700000, 6) == 0) {
            if (D_800E8920[D_8004A7C4->objId] != 0) {
                set_kirby_action_1(1, 3);
            } else {
                set_kirby_action_1(6, 6);
            }
            phi_a2 = &gKirbyState;
        }
        temp_v1 = D_8004A7C4;
        temp_v0 = temp_v1->objId;
        D_800E6690[temp_v0] = D_800E6A10[temp_v0] * phi_a2->unkBC;
        temp_f0 = phi_a2->unkC0;
        if (temp_f0 < 0.0f) {
            D_800E6850[temp_v1->objId] = -temp_f0;
            return;
        }
        D_800E6850[temp_v1->objId] = temp_f0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177CBC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177E78_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;

    D_8012E87A = 1;
    func_8011D614();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x1D;
    D_800E8920[temp_v0->objId] = 0;
    play_sound(0x245);
    temp_v0_2 = D_8004A7C4;
    temp_f0 = D_80197504;
    D_800E3210[temp_v0_2->objId] = 12.0f;
    D_800E3750[temp_v0_2->objId] = D_80197508;
    D_800E3C90[temp_v0_2->objId] = 3.5f;
    temp_v1 = temp_v0_2->objId;
    D_800E64D0[temp_v1] = D_800E6A10[temp_v1] * temp_f0;
    D_800E6690[temp_v0_2->objId] = 0.0f;
    D_800E6850[temp_v0_2->objId] = temp_f0;
    func_801230E8(0x20087, 0x20088, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177E78_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80177FB4_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    u32 temp_v0;
    u8 temp_a0;
    u8 temp_a0_2;
    struct GObj *phi_v1;

    sp24 = D_80196D6C;
    func_80153984_ovl3();
    temp_a0 = D_8012E7CB;
    if ((temp_a0 != 1) && (temp_a0 != 2)) {
        if (D_800D6B54 != 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (ovl3_process_command_string(&sp24) == 0) {
            if ((gKirbyController.buttonHeld & 0x300) != 0) {
                temp_v0 = D_8004A7C4->objId;
                D_800E6690[temp_v0] = D_800E6A10[temp_v0] * 0.125f;
                if (func_801210FC(&D_8004A7C4) != 0) {
                    temp_v1 = D_8004A7C4;
                    D_800E6850[temp_v1->objId] = D_8019750C;
                    phi_v1 = temp_v1;
                } else {
                    temp_v1_2 = D_8004A7C4;
                    D_800E6850[temp_v1_2->objId] = 1.5f;
                    phi_v1 = temp_v1_2;
                }
            } else {
                temp_v1_3 = D_8004A7C4;
                D_800E6850[temp_v1_3->objId] = D_80197510;
                phi_v1 = temp_v1_3;
            }
            if (gKirbyState.unk17 != 0) {
block_13:
                temp_v0_5 = phi_v1->objId;
                if (D_800E8920[temp_v0_5] == 0) {
                    set_kirby_action_1(6, 6);
                    return;
                }
                D_800E3750[temp_v0_5] = 0.0f;
                temp_v0_6 = phi_v1->objId;
                D_800E3210[temp_v0_6] = D_800E3750[temp_v0_6];
                D_800E3C90[phi_v1->objId] = D_80197514;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            temp_a0_2 = gKirbyState.unkB;
            if (temp_a0_2 == 4) {
                goto block_13;
            }
            if (temp_a0_2 == 3) {
                goto block_13;
            }
            temp_v0_2 = phi_v1->objId;
            if (D_800E8920[temp_v0_2] != 0) {
                temp_f2 = D_80197518;
                D_800E3750[temp_v0_2] = 0.0f;
                temp_v0_3 = phi_v1->objId;
                D_800E3210[temp_v0_3] = D_800E3750[temp_v0_3];
                D_800E3C90[phi_v1->objId] = temp_f2;
                if ((gKirbyController.buttonHeld & 0x300) != 0) {
                    set_kirby_action_1(1, 3);
                    func_80122FB0(1);
                    return;
                }
                D_800E6690[phi_v1->objId] = 0.0f;
                temp_v0_4 = phi_v1->objId;
                ((temp_v0_4 * 4) + 0x800E0000)->unk64D0 = D_800E6690[temp_v0_4];
                *(D_800E6850 + (phi_v1->objId * 4)) = temp_f2;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            if (func_80179060_ovl3(0x42200000, temp_a0_2, D_800E3750, D_800E6850) != 0) {
                set_kirby_action_1(0x17, 0x1B);
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80177FB4_ovl3.s")
#endif

#ifdef NON_MATCHING
void func_801782C8_ovl3(struct GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x1E;
    D_800E0490[D_8004A7C4->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    D_800E3750[D_8004A7C4->objId] = gKirbyState.unkC4;
    D_800E3C90[D_8004A7C4->objId] = ABSF(gKirbyState.unkC8);
    D_800E64D0[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * gKirbyState.unkC0;
    D_800E6690[D_8004A7C4->objId] = D_800E6A10[D_8004A7C4->objId] * gKirbyState.unkBC;
    D_800E6850[D_8004A7C4->objId] = 0.0f;
    func_801230E8(0x20087, 0x20088, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801782C8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80178420_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u8 temp_v1;
    u8 temp_v1_2;

    sp24 = D_80196D70;
    func_80153984_ovl3();
    temp_v1 = gKirbyState.unkB;
    if ((temp_v1 != 1) && (temp_v1 != 2)) {
        if (D_800D6B54 != 0) {
            set_kirby_action_1(6, 6);
            return;
        }
        if (ovl3_process_command_string(&sp24) == 0) {
            if ((gKirbyState.unkB9 == 0) && ((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
                gKirbyState.isTurning = gKirbyState.isTurning | 1;
            }
            if (gKirbyState.unk17 != 0) {
block_12:
                temp_v1_5 = D_8004A7C4;
                temp_v0_5 = temp_v1_5->objId;
                if (D_800E8920[temp_v0_5] == 0) {
                    set_kirby_action_1(6, 6);
                    return;
                }
                D_800E3750[temp_v0_5] = 0.0f;
                temp_v0_6 = temp_v1_5->objId;
                D_800E3210[temp_v0_6] = D_800E3750[temp_v0_6];
                D_800E3C90[temp_v1_5->objId] = D_8019751C;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            temp_v1_2 = gKirbyState.unkB;
            if (temp_v1_2 == 4) {
                goto block_12;
            }
            if (temp_v1_2 == 3) {
                goto block_12;
            }
            temp_v1_3 = D_8004A7C4;
            temp_v0 = temp_v1_3->objId;
            if (D_800E8920[temp_v0] != 0) {
                temp_f2 = D_80197520;
                D_800E3750[temp_v0] = 0.0f;
                temp_v0_2 = temp_v1_3->objId;
                D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
                D_800E3C90[temp_v1_3->objId] = temp_f2;
                if ((gKirbyController.buttonHeld & 0x300) != 0) {
                    set_kirby_action_1(1, 3);
                    func_80122FB0(1);
                    return;
                }
                D_800E6690[temp_v1_3->objId] = 0.0f;
                temp_v0_3 = temp_v1_3->objId;
                D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
                ((temp_v1_3->objId * 4) + 0x800E0000)->unk6850 = temp_f2;
                play_sound(0x149);
                set_kirby_action_1(7, 7);
                return;
            }
            if (func_80179060_ovl3(0x42200000, D_800E3750) != 0) {
                set_kirby_action_1(0x17, 0x1B);
                return;
            }
            temp_v1_4 = D_8004A7C4;
            temp_v0_4 = temp_v1_4->objId;
            if (D_800E64D0[temp_v0_4] == 0.0f) {
                D_800E3750[temp_v0_4] = D_80197524;
                D_800E3C90[temp_v1_4->objId] = 16.0f;
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80178420_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80178728_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;

    gKirbyState.unkBA = 1;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x1F;
    D_800E0490[temp_v0->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    D_800E3210[temp_v0->objId] = 0.0f;
    D_800E3750[temp_v0->objId] = (bitwise f32) gKirbyState.unkC4;
    temp_f0 = (bitwise f32) gKirbyState.unkC8;
    if (temp_f0 < 0.0f) {
        D_800E3C90[temp_v0->objId] = -temp_f0;
    } else {
        D_800E3C90[temp_v0->objId] = temp_f0;
    }
    func_801230E8(0x20087, 0x20088, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80178728_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017883C_ovl3(struct GObj *arg0) {
    u16 sp24;
    f32 temp_f0;
    struct GObj *temp_v1_3;
    u32 temp_v0;
    u8 temp_v1;
    u8 temp_v1_2;

    sp24 = D_80196D74;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_80153984_ovl3();
    temp_v1 = gKirbyState.unkB;
    if ((temp_v1 != 1) && (temp_v1 != 2) && (ovl3_process_command_string(&sp24) == 0)) {
        if ((gKirbyState.unkB9 == 0) && ((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
            gKirbyState.isTurning = gKirbyState.isTurning | 1;
        }
        if (gKirbyState.unk17 != 0) {
block_10:
            set_kirby_action_1(6, 6);
            return;
        }
        temp_v1_2 = gKirbyState.unkB;
        if (temp_v1_2 == 4) {
            goto block_10;
        }
        if (temp_v1_2 == 3) {
            goto block_10;
        }
        if ((gKirbyController.buttonHeld & 0x300) != 0) {
            temp_v1_3 = D_8004A7C4;
            temp_v0 = temp_v1_3->objId;
            D_800E6690[temp_v0] = D_800E6A10[temp_v0] * gKirbyState.unkBC;
            temp_f0 = gKirbyState.unkC0;
            if (!(temp_f0 < 0.0f)) {
                D_800E6850[temp_v1_3->objId] = temp_f0;
                return;
            }
            D_800E6850[temp_v1_3->objId] = -temp_f0;
            return;
        }
        D_800E6850[D_8004A7C4->objId] = 0.0f;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017883C_ovl3.s")
#endif

extern void func_80122CA0(struct GObj *arg0, s32 arg1, f32 arg2);
extern f32 D_80197528;

void func_801789D8_ovl3(struct GObj *arg0) {
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x20;
    D_800E0490[D_8004A7C4->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    D_800E3750[D_8004A7C4->objId] = 0.0f;
    D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
    D_800E3C90[D_8004A7C4->objId] = D_80197528;
    gKirbyState.unk44 = 0;
    gKirbyState.unk3C = 2;
    D_800E9560[D_8004A7C4->objId] = 8;
    func_800AA78C(0x200CF, 0x20007, 3.0f);
    func_801230E8(0x200CF, 0x200D0, 0);
    D_800DF310[D_8004A7C4->objId] = func_80122CA0;
    func_800AFA14();
}

#ifdef MIPS_TO_C
void func_80178B18_ovl3(struct GObj *arg0) {
    u16 sp24;
    s32 sp20;
    s32 *temp_a0;
    s32 *temp_a0_2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_4;
    struct GObj *temp_v0_5;
    struct GObj *temp_v0_6;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    s32 phi_v1;
    struct KirbyState *phi_a2;
    s32 phi_t3;
    s32 *phi_a0;
    struct KirbyState *phi_a2_2;

    sp24 = D_80196D78;
    D_800E8920[D_8004A7C4->objId] = 0;
    func_80153984_ovl3();
    if (ovl3_process_command_string(&sp24) == 0) {
        sp20 = 0;
        if ((gKirbyState.unk17 == 0) || (gKirbyState.unkB != 4)) {

        } else {
block_4:
            set_kirby_action_1(6, 6);
            return;
        }
        if (gKirbyState.unkB == 3) {
            goto block_4;
        }
        temp_v1 = D_8004A7C4->objId;
        phi_v1 = temp_v1 * 4;
        if ((D_800E8AE0[temp_v1] & 6) != 0) {
            phi_a2 = &gKirbyState;
            if (func_80179060_ovl3(0x42700000, 6) == 0) {
                temp_v1_2 = D_8004A7C4->objId;
                phi_v1 = temp_v1_2 * 4;
                phi_a2 = &gKirbyState;
                if (D_800E8920[temp_v1_2] != 0) {
block_8:
                    if (*(D_800E8920 + phi_v1) != 0) {
                        set_kirby_action_1(1, 3);
                    } else {
                        set_kirby_action_1(6, 6);
                    }
                    phi_a2 = &gKirbyState;
                }
            }
        } else {
            goto block_8;
        }
        if (phi_a2->unk44 == 0) {
            if ((func_80179060_ovl3(0x42700000) == 0) || (temp_v0 = D_8004A7C4, temp_v1_3 = temp_v0->objId, (D_800E9560[temp_v1_3] == 0))) {
                temp_v0_2 = D_8004A7C4;
                D_800E3750[temp_v0_2->objId] = 0.0f;
                temp_v1_4 = temp_v0_2->objId;
                D_800E3210[temp_v1_4] = D_800E3750[temp_v1_4];
                D_800E3C90[temp_v0_2->objId] = D_8019752C;
                D_800E9560[temp_v0_2->objId] = 8;
                gKirbyState.unk44 = 1;
                phi_a2_2 = &gKirbyState;
            } else {
                phi_a2_2 = &gKirbyState;
                if (gKirbyState.unk3C == 2) {
                    sp20 = 1;
                    D_800E3210[temp_v1_3] = 1.0f;
                    D_800E3750[temp_v0->objId] = D_80197530;
                    D_800E3C90[temp_v0->objId] = 0.0f;
                    gKirbyState.unk3C = 0;
                    temp_a0 = &D_800E9560[temp_v0->objId];
                    phi_t3 = *temp_a0 - 1;
                    phi_a0 = temp_a0;
                    phi_a2_2 = &gKirbyState;
block_22:
                    *phi_a0 = phi_t3;
                }
            }
        } else {
            temp_v0_3 = D_8004A7C4;
            temp_v1_5 = temp_v0_3->objId;
            if (D_800E8920[temp_v1_5] != 0) {
                D_800E3750[temp_v1_5] = 0.0f;
                temp_v1_6 = temp_v0_3->objId;
                D_800E3210[temp_v1_6] = D_800E3750[temp_v1_6];
                D_800E3C90[temp_v0_3->objId] = D_80197534;
                D_800E9560[temp_v0_3->objId] = 8;
                phi_a2->unk44 = 0;
                phi_a2_2 = phi_a2;
            } else {
                phi_a2_2 = phi_a2;
                if (phi_a2->unk3C == 1) {
                    sp20 = 1;
                    D_800E3210[temp_v1_5] = -1.0f;
                    D_800E3750[temp_v0_3->objId] = D_80197538;
                    D_800E3C90[temp_v0_3->objId] = 0.0f;
                    phi_a2->unk3C = 0;
                    temp_a0_2 = &D_800E9560[temp_v0_3->objId];
                    phi_t3 = *temp_a0_2 - 1;
                    phi_a0 = temp_a0_2;
                    phi_a2_2 = phi_a2;
                    goto block_22;
                }
            }
        }
        if ((phi_a2_2->unkB9 == 0) && ((phi_a2_2->isTurning & 1) == 0) && (func_80121194() != 0)) {
            gKirbyState.isTurning = gKirbyState.isTurning | 1;
        }
        if (sp20 != 0) {
            if ((gKirbyController.buttonHeld & 0x300) == 0) {
                if ((random_soft_s32_range(3) & 1) == 0) {
                    temp_v0_5 = D_8004A7C4;
                    D_800E64D0[temp_v0_5->objId] = -0.5f;
                    D_800E6690[temp_v0_5->objId] = D_80197540;
                    D_800E6850[temp_v0_5->objId] = 0.0f;
                    return;
                }
                temp_v0_4 = D_8004A7C4;
                D_800E64D0[temp_v0_4->objId] = 0.5f;
                D_800E6690[temp_v0_4->objId] = D_8019753C;
                D_800E6850[temp_v0_4->objId] = 0.0f;
                return;
            }
            temp_v0_6 = D_8004A7C4;
            temp_v1_7 = temp_v0_6->objId;
            D_800E64D0[temp_v1_7] = D_800E6A10[temp_v1_7] * 0.5f;
            temp_v1_8 = temp_v0_6->objId;
            D_800E6690[temp_v1_8] = D_800E6A10[temp_v1_8] * D_80197544;
            D_800E6850[temp_v0_6->objId] = 0.0f;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80178B18_ovl3.s")
#endif

#ifdef MIPS_TO_C
? func_80179060_ovl3(f32 arg0) {
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 *temp_a0;
    struct GObj *temp_v0;
    u32 temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    void *phi_v0;
    u32 phi_v1;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    if ((D_800E8AE0[temp_v1] & 6) != 0) {
        temp_a0 = &sp28;
        sp28 = gEntitiesNextPosXArray[temp_v1];
        sp2C = gEntitiesNextPosYArray[temp_v0->objId] + arg0;
        sp30 = gEntitiesNextPosZArray[temp_v0->objId];
        temp_v0_2 = func_8010DF9C(temp_a0);
        if (temp_v0_2 != 0) {
            phi_v0 = &D_8012BCA0;
            phi_v1 = 0;
loop_3:
            temp_v1_2 = phi_v1 + 1;
            if (phi_v0->unk40->unk4 == 1) {
                return 1;
            }
            phi_v0 = phi_v0 + 4;
            phi_v1 = temp_v1_2;
            if (temp_v1_2 < temp_v0_2) {
                goto loop_3;
            }
        }
    }
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80179060_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80179130_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80179130_ovl3.s line 28.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80179130_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80179370_ovl3(struct GObj *arg0) {
    f32 *temp_v0_5;
    f32 temp_f2;
    s16 temp_v0_4;
    s32 *temp_v0_3;
    s32 temp_v0_2;
    s32 temp_v1_4;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_5;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a1_7;
    u32 temp_a1_8;
    void *temp_v0;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f0_4;

    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp_v1 = D_8004A7C4;
    temp_f2 = D_80197580;
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[temp_v1->objId] = 0x21;
    D_800E0490[temp_v1->objId] = &D_80192794;
    gKirbyState.unk15C = &D_801904B0;
    D_800E3750[temp_v1->objId] = 0.0f;
    temp_a1 = temp_v1->objId;
    D_800E3210[temp_a1] = D_800E3750[temp_a1];
    D_800E3C90[temp_v1->objId] = temp_f2;
    D_800E6690[temp_v1->objId] = 0.0f;
    temp_a1_2 = temp_v1->objId;
    D_800E64D0[temp_a1_2] = D_800E6690[temp_a1_2];
    D_800E6850[temp_v1->objId] = temp_f2;
    func_80122F08(0x2000A);
    gKirbyState.unk154 = 2;
    func_801230E8(0x20182, 0x20183, 1);
    temp_v0 = (D_80198832 * 8) + &D_80196D80;
    D_800E9720[D_8004A7C4->objId] = temp_v0->unk0;
    play_sound(temp_v0->unk4);
    temp_v1_2 = D_8004A7C4;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x21, D_800DFBD0[D_8004A7C4->objId][2]);
    temp_a1_3 = temp_v1_2->objId;
    if ((D_800E8AE0[temp_a1_3] & 6) == 0) {
        phi_f0 = 8.5f;
    } else {
        phi_f0 = 4.25f;
    }
    D_800E64D0[temp_a1_3] = phi_f0 * D_800E6A10[temp_a1_3];
    temp_a1_4 = temp_v1_2->objId;
    D_800E6690[temp_a1_4] = D_800E6A10[temp_a1_4] * 0.5f;
    temp_a1_5 = temp_v1_2->objId;
    temp_v0_2 = D_800E8AE0[temp_a1_5] & 6;
    if (temp_v0_2 == 0) {
        phi_f0_2 = 8.5f;
    } else {
        phi_f0_2 = 4.25f;
    }
    if (phi_f0_2 < 0.0f) {
        if (temp_v0_2 == 0) {
            phi_f0_3 = 8.5f;
        } else {
            phi_f0_3 = 4.25f;
        }
        D_800E6850[temp_a1_5] = -phi_f0_3;
    } else {
        if (temp_v0_2 == 0) {
            phi_f0_4 = 8.5f;
        } else {
            phi_f0_4 = 4.25f;
        }
        D_800E6850[temp_a1_5] = phi_f0_4;
    }
    func_801230E8(0x20184, 0x20185, 0);
loop_16:
    if (gKirbyState.unk17 != 0) {
        temp_v1_3 = D_8004A7C4;
        D_800E6690[temp_v1_3->objId] = 0.0f;
        temp_a1_6 = temp_v1_3->objId;
        D_800E64D0[temp_a1_6] = D_800E6690[temp_a1_6];
        D_800E6850[temp_v1_3->objId] = D_80197584;
    } else {
        temp_v0_3 = &D_800E9720[D_8004A7C4->objId];
        temp_v1_4 = *temp_v0_3;
        *temp_v0_3 = temp_v1_4 - 1;
        if (temp_v1_4 != 0) {
            finish_current_thread(1);
            goto loop_16;
        }
    }
    func_8011E0E8();
    func_801230E8(0x20186, 0x20187, 1);
    if (gKirbyState.unk17 != 0) {
        temp_v1_5 = D_8004A7C4;
        D_800E6690[temp_v1_5->objId] = 0.0f;
        temp_a1_7 = temp_v1_5->objId;
        D_800E64D0[temp_a1_7] = D_800E6690[temp_a1_7];
        D_800E6850[temp_v1_5->objId] = D_80197588;
        gKirbyState.abilityInUse = 0;
    } else {
        func_80120A28();
        temp_v0_4 = D_80198830.unk2;
        gKirbyState.abilityInUse = 0;
        if (temp_v0_4 > 0) {
            D_80198830.unk2 = temp_v0_4 - 1;
        }
        D_80198830.unk0 = 0x1E;
        func_8011D614();
        temp_a1_8 = D_8004A7C4->objId;
        temp_v0_5 = &D_800E6690[temp_a1_8];
        if ((D_800E8AE0[temp_a1_8] & 6) == 0) {
            *temp_v0_5 = *temp_v0_5 * 3.0f;
        }
        func_801230E8(0x20188, 0x20189, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80179370_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017982C_ovl3(struct GObj *arg0) {
    f32 *temp_at;
    f32 *temp_v1;
    f32 temp_f0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1_3;
    struct GObj *temp_a2;
    struct GObj *temp_a2_2;
    u16 temp_v0;
    u32 temp_v1_2;
    u32 temp_v1_4;
    u32 temp_v1_5;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f0_4;
    f32 phi_f0_5;
    f32 phi_f0_6;
    f32 phi_f0_7;
    f32 *phi_at;
    f32 phi_f12;

    if (func_800AA888(0x20007) == 0) {
        func_80153AD4_ovl3();
        temp_a2 = D_8004A7C4;
        temp_v1 = &gEntitiesNextPosYArray[temp_a2->objId];
        *temp_v1 = *temp_v1 - D_800EC9E4;
        D_800E8920[temp_a2->objId] = 0;
    } else {
        func_80153984_ovl3();
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
        return;
    }
    temp_a2_2 = D_8004A7C4;
    if (gKirbyState.horizontalCollision != 0) {
        D_800E64D0[temp_a2_2->objId] = 0.0f;
    }
    if (gKirbyState.abilityInUse != 0) {
        temp_v0 = gKirbyController.buttonHeld;
        if ((temp_v0 & 0x300) != 0) {
            temp_v1_2 = temp_a2_2->objId;
            temp_v1_3 = temp_v1_2 * 4;
            temp_f0 = D_800E6A10[temp_v1_2];
            if ((temp_f0 != 1.0f) || ((temp_v0 & 0x100) == 0)) {
                if ((temp_f0 == -1.0f) && ((temp_v0 & 0x200) != 0)) {
block_13:
                    temp_v0_3 = D_800E8AE0[temp_v1_2] & 6;
                    if (temp_v0_3 == 0) {
                        phi_f0_3 = 10.5f;
                    } else {
                        phi_f0_3 = 5.25f;
                    }
                    if (phi_f0_3 < 0.0f) {
                        if (temp_v0_3 == 0) {
                            phi_f0_4 = 10.5f;
                        } else {
                            phi_f0_4 = 5.25f;
                        }
                        *(temp_v1_3 + 0x800E0000) = -phi_f0_4;
                        phi_f12 = 5.25f;
                    } else {
                        if (temp_v0_3 == 0) {
                            phi_f0_7 = 10.5f;
                        } else {
                            phi_f0_7 = 5.25f;
                        }
                        phi_at = &D_800E6850[temp_v1_2];
                        phi_f12 = 5.25f;
block_48:
                        *phi_at = phi_f0_7;
                    }
                } else {
                    temp_v0_2 = D_800E8AE0[temp_v1_2] & 6;
                    if (temp_v0_2 == 0) {
                        phi_f0 = 6.5f;
                    } else {
                        phi_f0 = 3.25f;
                    }
                    if (phi_f0 < 0.0f) {
                        if (temp_v0_2 == 0) {
                            phi_f0_2 = 6.5f;
                        } else {
                            phi_f0_2 = 3.25f;
                        }
                        *(temp_v1_3 + 0x800E0000) = -phi_f0_2;
                        phi_f12 = 3.25f;
                    } else {
                        if (temp_v0_2 == 0) {
                            phi_f0_7 = 6.5f;
                        } else {
                            phi_f0_7 = 3.25f;
                        }
                        phi_at = &D_800E6850[temp_v1_2];
                        phi_f12 = 3.25f;
                        goto block_48;
                    }
                }
            } else {
                goto block_13;
            }
        } else {
            temp_v1_4 = temp_a2_2->objId;
            temp_v0_4 = D_800E8AE0[temp_v1_4] & 6;
            if (temp_v0_4 == 0) {
                phi_f0_5 = 8.5f;
            } else {
                phi_f0_5 = 4.25f;
            }
            temp_at = &D_800E6850[temp_v1_4];
            if (phi_f0_5 < 0.0f) {
                if (temp_v0_4 == 0) {
                    phi_f0_6 = 8.5f;
                } else {
                    phi_f0_6 = 4.25f;
                }
                D_800E6850[temp_v1_4] = -phi_f0_6;
                phi_f12 = 4.25f;
            } else {
                if (temp_v0_4 == 0) {
                    phi_f0_7 = 8.5f;
                    phi_at = temp_at;
                    phi_f12 = 4.25f;
                } else {
                    phi_f0_7 = 4.25f;
                    phi_at = temp_at;
                    phi_f12 = 4.25f;
                }
                goto block_48;
            }
        }
        func_80111C4C(func_80111A04(phi_f12, &D_801910F0, temp_a2_2->objId, temp_a2_2));
        return;
    }
    temp_v1_5 = temp_a2_2->objId;
    if (D_800E8920[temp_v1_5] != 0) {
        if ((gKirbyController.buttonHeld & 0x300) != 0) {
            set_kirby_action_1(1, 3);
            return;
        }
    } else if ((D_800D6FAC == 0) && ((D_800D6FEA & 0x8000) != 0) && (gKirbyState.floatTimer != 0)) {
        if ((D_800E8AE0[temp_v1_5] & 6) != 0) {
            set_kirby_action_1(0x17, 0x1B);
            return;
        }
        gKirbyState.unk44 = 0;
        set_kirby_action_1(0xC, 9);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017982C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80179C28_ovl3(void *arg0) {
    void *sp54;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f22;
    s32 temp_v0_2;
    s32 temp_v0_9;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    s32 phi_v0;
    s32 phi_v0_2;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk40 = 0.0f;
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        temp_v1 = D_8004A7C4;
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[temp_v1->objId] = 0x22;
        gKirbyState.unk3C = -1;
        gKirbyState.unk44 = -1;
        temp_v0 = temp_v1->objId;
        temp_v0_2 = temp_v0 * 4;
        phi_v0_2 = temp_v0_2;
        if (D_800E8920[temp_v0] == 0) {
            phi_v0 = temp_v0_2;
            if ((gKirbyController.buttonHeld & 0x4400) == 0x4400) {
                temp_f12 = D_8019758C;
                D_800E6690[temp_v0] = 0.0f;
                temp_v0_3 = temp_v1->objId;
                D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
                D_800E6850[temp_v1->objId] = temp_f12;
                D_800E3910[temp_v1->objId] = 0.0f;
                temp_v0_4 = temp_v1->objId;
                temp_f0 = D_800E3910[temp_v0_4];
                D_800E3590[temp_v0_4] = temp_f0;
                D_800E33D0[temp_v1->objId] = temp_f0;
                D_800E3050[temp_v1->objId] = temp_f0;
                D_800E3E50[temp_v1->objId] = temp_f12;
                temp_v0_5 = temp_v1->objId;
                D_800E3AD0[temp_v0_5] = D_800E3E50[temp_v0_5];
                phi_v0 = temp_v1->objId * 4;
            }
            *(D_800E3210 + phi_v0) = 0.0f;
            D_800E3750[temp_v1->objId] = D_80197590;
            D_800E3C90[temp_v1->objId] = 18.0f;
            phi_v0_2 = temp_v1->objId * 4;
        }
        *(D_800E98E0 + phi_v0_2) = *(D_800E6A10 + phi_v0_2);
        play_sound(0x11C);
        func_80122F08(0x20007);
        gKirbyState.unk15C = &D_80190518;
        func_801230E8(0x2018C, 0x2018D, 1);
        gKirbyState.unk44 = 1;
        gKirbyState.unk3C = 1;
    }
    temp_v0_6 = gKirbyState.unk44;
    if (temp_v0_6 != 0) {
        if (temp_v0_6 != 1) {
            if (temp_v0_6 != 2) {
                if (temp_v0_6 != 3) {

                } else {
                    gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
                    func_80120A28();
                    play_sound(0x11D);
                    temp_v0_7 = D_8004A7C4->objId;
                    func_800A7F74(2, 1, 0x30, (bitwise f32) (bitwise s32) gEntitiesNextPosXArray[temp_v0_7], gEntitiesNextPosYArray[temp_v0_7] + 20.0f, gEntitiesNextPosZArray[temp_v0_7]);
                    func_8011D614();
                    func_801230E8(0x2018A, 0x2018B, 1);
                    gKirbyState.abilityInUse = 0;
                    gKirbyState.unk30 = gKirbyState.unk30 + 1;
                }
            } else {
block_18:
                temp_v1_2 = D_8004A7C4;
                D_800EA8A0[temp_v1_2->objId] = 0.0f;
                D_800E9720[temp_v1_2->objId] = 0;
                func_80122F08(0x2000B);
                gKirbyState.unk154 = 2;
                func_800AA154(0x2018F);
                temp_f22 = D_80197594;
                sp54 = &D_8017A2C0;
loop_19:
                func_800AA018(0x20191);
                D_800DF310[D_8004A7C4->objId] = sp54;
loop_20:
                temp_v0_9 = D_8004A7C4->objId;
                temp_f0_2 = D_800E64D0[temp_v0_9];
                if ((temp_f0_2 != 0.0f) || (D_800E6850[temp_v0_9] != 0.0f)) {
                    if (D_800E8920[temp_v0_9] != 0) {
                        if (!(temp_f22 < D_800EA8A0[temp_v0_9]) || (temp_f0_2 != 0.0f)) {
                            finish_current_thread(1);
                            goto loop_20;
                        }
                    }
                } else {
                    D_800E9720[temp_v0_9] = 0x1E;
                    func_800AA5C4(0x2018E, 0x2000B, 0x40C00000);
                    if (func_800AA368(arg0->unk3C->unk10) == 0) {
loop_27:
                        temp_v0_10 = D_8004A7C4->objId;
                        if (D_800E6850[temp_v0_10] != 0.0f) {
                            goto loop_19;
                        }
                        if (D_800E8920[temp_v0_10] != 0) {
                            finish_current_thread(1);
                            if (func_800AA368(arg0->unk3C->unk10) == 0) {
                                goto loop_27;
                            }
block_30:
                            func_800AA018(0x2018E);
loop_31:
                            temp_v0_11 = D_8004A7C4->objId;
                            if (D_800E6850[temp_v0_11] != 0.0f) {
                                goto loop_19;
                            }
                            if (D_800E8920[temp_v0_11] != 0) {
                                if (((gKirbyState.isTurning & 1) != 0) || (D_800E9720[temp_v0_11] != 0)) {
                                    finish_current_thread(1);
                                    goto loop_31;
                                }
                            }
                        }
                    } else {
                        goto block_30;
                    }
                }
                func_800AA154(0x20190);
                D_800E9720[D_8004A7C4->objId] = -1;
            }
        } else {
            D_800EA6E0[D_8004A7C4->objId] = 0.0f;
            func_80122F08(0x2000C);
            gKirbyState.unk154 = 1;
            gKirbyState.unk40 = 0.0f;
            temp_v0_8 = D_8004A7C4->objId;
            if (D_800E8920[temp_v0_8] != 0) {
                if ((D_800E64D0[temp_v0_8] != 0.0f) || (func_800F8824(gKirbyState.unk124, (bitwise s32) D_800E17D0[temp_v0_8]) != 0.0f)) {
                    play_sound(0x121);
                }
            }
        }
    } else {
        goto block_18;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80179C28_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017A2C0_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 sp24;
    u32 temp_v0;

    if ((arg1 == 0) && (arg2 != 0.0f) && (D_800E8920[D_8004A7C4->objId] != 0)) {
        sp24 = func_80123170(arg2);
        func_800FB914(ERROR(Read from unset register $f12));
        play_sound(0x120);
        if (sp24 != -1) {
            temp_v0 = D_8004A7C4->objId;
            func_800A7F74(5, 1, sp24, (bitwise f32) (bitwise s32) gEntitiesNextPosXArray[temp_v0], gEntitiesNextPosYArray[temp_v0], gEntitiesNextPosZArray[temp_v0]);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017A2C0_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8017A390_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8017A390_ovl3.s line 216.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017A390_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017B068_ovl3(struct GObj *arg0) {
    f32 *temp_v1;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f20;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v0_9;
    struct GObj *temp_a0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    f32 phi_f0;
    s32 phi_v0;
    f32 phi_f0_2;
    s32 phi_v0_2;

    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.unk48 = 1;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[D_8004A7C4->objId] = 0x23;
    func_80120A28();
    temp_a0 = D_8004A7C4;
    temp_v0 = temp_a0->objId;
    D_800EAA60[temp_v0] = D_800E6A10[temp_v0];
    D_800EA8A0[temp_a0->objId] = 0.0f;
    temp_v0_2 = temp_a0->objId;
    D_800EA6E0[temp_v0_2] = D_800EA8A0[temp_v0_2];
    temp_v0_3 = temp_a0->objId;
    if ((D_800E8AE0[temp_v0_3] & 6) != 0) {
        D_800EAC20[temp_v0_3] = D_801975CC;
    } else {
        D_800EAC20[temp_v0_3] = D_80196A10;
    }
    func_80122F08(0x2000D);
    gKirbyState.unk154 = 2;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x31);
    gKirbyState.unk50 = func_800A8234(2, 1, 0x32);
    func_8011DC04(0xBC);
    func_800AA018(0x20192);
    temp_f20 = D_801975D4;
loop_4:
    if (gKirbyState.unk17 == 0) {
        if (gKirbyState.unk44 == 0) {
            if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                gKirbyState.unk44 = 1;
            }
            temp_v0_4 = D_8004A7C4->objId;
            phi_f0 = D_800EA6E0[temp_v0_4];
            phi_v0 = temp_v0_4 * 4;
block_14:
            *(D_800EA8A0 + phi_v0) = phi_f0;
            temp_v0_7 = D_8004A7C4->objId;
            temp_v1 = &D_800EA6E0[temp_v0_7];
            *temp_v1 = *temp_v1 - *(D_800EAC20 + (temp_v0_7 * 4));
            temp_v0_8 = D_8004A7C4->objId;
            temp_v1_2 = &D_800EA6E0[temp_v0_8];
            temp_f0_2 = *temp_v1_2;
            phi_f0_2 = temp_f0_2;
            phi_v0_2 = temp_v0_8 * 4;
            if (temp_f0_2 < 0.0f) {
                *temp_v1_2 = temp_f0_2 + D_801975D0;
                temp_v0_9 = D_8004A7C4->objId;
                phi_f0_2 = D_800EA6E0[temp_v0_9];
                phi_v0_2 = temp_v0_9 * 4;
            }
            (*(D_800DFBD0 + phi_v0_2))->unk4->unk34 = phi_f0_2;
            finish_current_thread(1);
            goto loop_4;
        } else {
            temp_v0_5 = D_8004A7C4->objId;
            temp_v0_6 = temp_v0_5 * 4;
            if (D_800E6A10[temp_v0_5] == D_800EAA60[temp_v0_5]) {
                if (!(D_800EA8A0[temp_v0_5] < *(D_800EAC20 + temp_v0_6))) {
                    phi_f0 = D_800EA6E0[temp_v0_5];
                    phi_v0 = temp_v0_6;
                    goto block_14;
                }
            } else {
                temp_f0 = D_800EA6E0[temp_v0_5];
                phi_f0 = temp_f0;
                phi_v0 = temp_v0_6;
                if (!(temp_f0 <= temp_f20) || (phi_f0 = temp_f0, phi_v0 = temp_v0_6, !(temp_f20 <= D_800EA8A0[temp_v0_5]))) {
                    goto block_14;
                }
            }
        }
    }
    func_8011E0E8();
    func_8011DC5C(ERROR(Read from unset register $f12));
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017B068_ovl3.s")
#endif

#ifdef MIPS_TO_C
u16 func_8017B3C4_ovl3(struct GObj *arg0) {
    f32 sp2C;
    f32 *temp_v1;
    struct GObj *temp_s0;
    struct GObj *temp_s0_2;
    struct GObj *temp_s0_3;
    u16 temp_ret;
    u16 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    void *temp_s0_4;
    void *temp_s0_5;
    void *temp_v0_5;
    u16 phi_return;

    func_80153984_ovl3();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        temp_s0 = D_8004A7C4;
        temp_v0_2 = temp_s0->objId;
        D_800E6A10[temp_v0_2] = D_800EAA60[temp_v0_2];
        temp_v0_3 = temp_s0->objId;
        temp_v1 = &D_800E17D0[temp_v0_3];
        if (D_800E6A10[temp_v0_3] == -1.0f) {
            *temp_v1 = *temp_v1 + D_801975D8;
        }
        return func_8011D67C(&D_801911E0);
    }
    temp_s0_2 = D_8004A7C4;
    temp_v0_4 = temp_s0_2->objId;
    if ((D_800E8AE0[temp_v0_4] & 6) != 0) {
        D_800EAC20[temp_v0_4] = D_801975DC;
    } else {
        D_800EAC20[temp_v0_4] = D_801975E0;
    }
    func_8016854C_ovl3(&D_801911E0, D_800DFBD0[temp_s0_2->objId][2], 0x3F800000);
    temp_s0_3 = D_8004A7C4;
    D_800D7238 = D_800DFBD0[temp_s0_3->objId][1]->unk34;
    if (D_800E6A10[temp_s0_3->objId] == 1.0f) {
        D_800D7238 = D_800D7238 + D_801975E8;
    } else {
        D_800D7238 = D_800D7238 - D_801975E8;
    }
    func_80154578_ovl3(&D_80193B34, 0, (bitwise s32) D_800D7238);
    temp_v0_5 = D_8012E80C;
    phi_return = temp_v0_5;
    if (temp_v0_5 != 0) {
        temp_s0_4 = temp_v0_5;
        func_800B2340(&sp2C, D_800DFBD0[D_8004A7C4->objId][0xE], 0xFFFF);
        temp_s0_4->unk4C->unk4 = sp2C;
        temp_s0_4->unk4C->unk8 = sp30;
        temp_s0_4->unk4C->unkC = sp34;
        func_800B26D8(&sp2C, D_800DFBD0[D_8004A7C4->objId][0xE], 0xFFFF);
        temp_s0_4->unk4C->unk10 = sp2C;
        temp_s0_4->unk4C->unk14 = sp30;
        temp_s0_4->unk4C->unk18 = sp34;
        temp_s0_5 = D_8012E810;
        func_800B2340(&sp2C, D_800DFBD0[D_8004A7C4->objId][9], 0xFFFF);
        temp_s0_5->unk4C->unk4 = sp2C;
        temp_s0_5->unk4C->unk8 = sp30;
        temp_s0_5->unk4C->unkC = sp34;
        temp_ret = func_800B26D8(&sp2C, D_800DFBD0[D_8004A7C4->objId][9], 0xFFFF);
        temp_s0_5->unk4C->unk10 = sp2C;
        temp_s0_5->unk4C->unk14 = sp30;
        temp_s0_5->unk4C->unk18 = sp34;
        phi_return = temp_ret;
    }
    if ((D_800E8920[D_8004A7C4->objId] != 0) && (D_8012E804 == 0)) {
        func_8011ED68();
        temp_v0 = gKirbyController.buttonHeld;
        if ((temp_v0 & 0x100) != 0) {
            D_800EAA60[D_8004A7C4->objId] = 1.0f;
            return temp_v0;
        }
        phi_return = temp_v0;
        if ((temp_v0 & 0x200) != 0) {
            D_800EAA60[D_8004A7C4->objId] = -1.0f;
            phi_return = temp_v0;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017B3C4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017B78C_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;

    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x24;
    D_800E0490[temp_v0->objId] = &D_801928BC;
    gKirbyState.unk15C = &D_80190358;
    func_80122F08(0x2000E);
    gKirbyState.unk154 = 2;
    temp_v0_2 = D_8004A7C4;
    temp_v1 = temp_v0_2->objId;
    if (D_800E8920[temp_v1] == 1) {
        D_800E6690[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0_2->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[temp_v0_2->objId] = D_801975EC;
        gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
    }
    func_8011DC04(0x139);
    func_8011DC30(0x26E);
    func_800AA154(0x20193);
    func_800AA154(0x20194);
    func_800AA154(0x20195);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017B78C_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_8017B8F4_ovl3(struct GObj *arg0) {
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    s32 temp_a3;
    s32 temp_ret;
    s32 temp_v0_2;
    s32 temp_v0_7;
    s32 temp_v0_8;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    void *temp_v1_5;
    s32 phi_a3;
    struct KirbyState *phi_t0;
    struct KirbyState *phi_t0_2;
    f32 phi_f2;
    s32 phi_v0;
    f32 phi_f0;
    s32 phi_return;
    f32 phi_f0_2;
    f32 phi_f12;

    temp_v0 = D_8004A7C4->objId;
    sp44 = 0;
    D_800E98E0[temp_v0] = D_800E8AE0[temp_v0];
    func_80153AD4_ovl3();
    temp_v1 = D_8004A7C4;
    temp_a0 = &gEntitiesNextPosYArray[temp_v1->objId];
    temp_a3 = sp44;
    *temp_a0 = *temp_a0 - D_800EC9E4;
    if (gKirbyState.horizontalCollision != 0) {
block_5:
        phi_a3 = 1;
    } else {
        temp_a0_2 = &sp38;
        sp38 = gEntitiesNextPosXArray[temp_v1->objId];
        sp40 = gEntitiesNextPosZArray[temp_v1->objId];
        sp44 = temp_a3;
        sp3C = gEntitiesNextPosYArray[temp_v1->objId];
        if (func_80155838_ovl3(temp_a0_2, 0x41A00000, 4, temp_a3) != 0) {
            goto block_5;
        } else {
            sp44 = temp_a3;
            sp3C = sp3C + 40.0f;
            phi_a3 = temp_a3;
            phi_t0 = &gKirbyState;
            if (func_80155838_ovl3(&sp38, 0x41A00000, 4, temp_a3) != 0) {
                goto block_5;
            }
        }
    }
    if ((phi_a3 != 0) || (temp_v0_2 = phi_t0->ceilingCollisionNext, (temp_v0_2 != 0))) {
        temp_v1_2 = D_8004A7C4;
        D_800E6690[temp_v1_2->objId] = 0.0f;
        temp_v0_3 = temp_v1_2->objId;
        D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
        D_800E6850[temp_v1_2->objId] = D_801975F0;
        D_800E3750[temp_v1_2->objId] = 0.0f;
        temp_v0_4 = temp_v1_2->objId;
        D_800E3210[temp_v0_4] = D_800E3750[temp_v0_4];
        D_800E3C90[temp_v1_2->objId] = D_801975F4;
        phi_t0->unk3C = 1;
        phi_t0->isTurning = phi_t0->isTurning | 0x4000;
    } else if ((temp_v0_2 == 0) && (phi_a3 == 0)) {
        phi_t0->unk3C = 0;
    }
    phi_t0_2 = phi_t0;
    if (phi_t0->unk3C == 0) {
        phi_t0_2 = &gKirbyState;
        if (func_80121658() != 0) {
            temp_v1_3 = D_8004A7C4;
            D_800E6690[temp_v1_3->objId] = 0.0f;
            temp_v0_5 = temp_v1_3->objId;
            D_800E64D0[temp_v0_5] = D_800E6690[temp_v0_5];
            D_800E6850[temp_v1_3->objId] = D_801975F8;
            play_sound(0x13E);
            gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
            phi_t0_2 = &gKirbyState;
        }
    }
    if (phi_t0_2->unk30 != 0) {
        func_8011DC5C(ERROR(Read from unset register $f12));
        temp_ret = func_8011D67C();
        gKirbyState.isTurning = gKirbyState.isTurning & ~0x4000;
        return temp_ret;
    }
    func_80111C4C(func_80111A04(&D_80191224, D_8004A7C4->objId));
    temp_v1_4 = D_8004A7C4;
    temp_v0_6 = temp_v1_4->objId;
    temp_v0_7 = temp_v0_6 * 4;
    phi_return = temp_v0_7;
    if (D_800E8920[temp_v0_6] == 0) {
        phi_return = temp_v0_7;
        if (gKirbyState.unk3C == 0) {
            temp_f0 = D_800E64D0[temp_v0_6] * 1.5f;
            if (temp_f0 < 0.0f) {
                phi_f2 = -temp_f0;
            } else {
                phi_f2 = temp_f0;
            }
            if (gKirbyState.unk7 != 0) {
                temp_f0_2 = *0x80190000;
                phi_f0_2 = temp_f0_2;
                phi_return = (bitwise s32) temp_f0_2;
            } else {
                if (phi_f2 < 2.0f) {
                    phi_f12 = 3.0f;
                } else {
                    phi_f12 = phi_f2;
                }
                temp_f0_3 = (phi_f12 * D_80197600) / 180.0f;
                phi_f0_2 = temp_f0_3;
                phi_return = (bitwise s32) temp_f0_3;
            }
            phi_v0 = temp_v0_7;
            phi_f0 = phi_f0_2;
            if ((D_800E8AE0[temp_v0_6] & 6) != 0) {
                temp_f0_4 = phi_f0_2 * 0.5f;
                phi_v0 = temp_v0_7;
                phi_f0 = temp_f0_4;
                phi_return = (bitwise s32) temp_f0_4;
                if ((D_800E98E0[temp_v0_6] & 6) != 0) {
                    D_800E6690[temp_v0_6] = D_80197604;
                    D_800E6850[temp_v1_4->objId] = 0.0f;
                    temp_v0_8 = temp_v1_4->objId * 4;
                    phi_v0 = temp_v0_8;
                    phi_f0 = temp_f0_4;
                    phi_return = temp_v0_8;
                }
            }
            temp_v1_5 = (*(D_800DFBD0 + phi_v0))->unk4;
            temp_v1_5->unk30 = temp_v1_5->unk30 + phi_f0;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017B8F4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017BD68_ovl3(struct GObj *arg0) {
    s32 *temp_v0_2;
    struct GObj *temp_v0;

    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[temp_v0->objId] = 0x25;
    D_800E9720[temp_v0->objId] = 0;
    func_80120A28();
    func_801632B8_ovl3(1);
    func_800AFA54(*(&D_800DFA10 + (D_8004A7C4->objId * 4)));
    func_801230E8(0x20019, 0x2001A, 0);
loop_1:
    if (gKirbyState.unk17 == 0) {
        if (D_800E9720[D_8004A7C4->objId] >= 4) {
            if (((gKirbyController.buttonHeld & 0x4000) != 0) && (func_800AF230() == 0)) {
block_5:
                temp_v0_2 = &D_800E9720[D_8004A7C4->objId];
                *temp_v0_2 = *temp_v0_2 + 1;
                finish_current_thread(1);
                goto loop_1;
            }
        } else {
            goto block_5;
        }
    }
    gKirbyState.unk3C = gKirbyState.unk3C + 1;
    func_801230E8(0x2001B, 0x2001C, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017BD68_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017BEF4_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017BEF4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017BF34_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    struct GObj *temp_v0_3;
    struct GObj *temp_v0_4;
    u32 temp_v0_2;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unkA = 0;
        gKirbyState.unk80 = gKirbyState.unk7C;
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            gKirbyState.unk16 = 0x14;
        } else {
            gKirbyState.unk16 = 0xA;
        }
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        temp_v0 = D_8004A7C4;
        D_800DDFD0[temp_v0->objId] = 0x26;
        D_800E0490[temp_v0->objId] = &D_801926E8;
        gKirbyState.unk15C = &D_80190358;
        gKirbyState.unk154 = 2;
        func_80120A28();
        gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
        func_801693C4_ovl3(6);
        func_8011DC04(0x56);
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x20077, 0x20078, 1);
        if ((gKirbyController.buttonHeld & 0x300) != 0) {
            gKirbyState.unk3C = 2;
            gKirbyState.unk44 = 2;
        } else {
            gKirbyState.unk3C = 1;
            gKirbyState.unk44 = 1;
        }
    }
    temp_v0_2 = gKirbyState.unk44;
    if (temp_v0_2 != 1) {
        if (temp_v0_2 != 2) {
            if (temp_v0_2 != 3) {

            }
        } else {
block_12:
            if (func_801210B4() == 1) {
                temp_v0_3 = D_8004A7C4;
                D_800E6690[temp_v0_3->objId] = 0.25f;
                D_800E6850[temp_v0_3->objId] = 2.0f;
            } else {
                temp_v0_4 = D_8004A7C4;
                D_800E6690[temp_v0_4->objId] = -0.25f;
                D_800E6850[temp_v0_4->objId] = 2.0f;
            }
            func_801230E8(0x20085, 0x20086, 0);
            func_800AFA14();
        }
    } else {
        func_801230E8(0x20079, 0x2007A, 1);
        func_800AFA14();
        goto block_12;
    }
    func_8011DC5C(ERROR(Read from unset register $f12));
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    func_801230E8(0x2007B, 0x2007C, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017BF34_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017C1FC_ovl3(struct GObj *arg0) {
    u16 temp_v0_2;
    u32 temp_v0;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    temp_v0 = gKirbyState.unk44;
    if (temp_v0 == 3) {
        if (gKirbyState.unk30 != 0) {
            func_8011D67C();
        }
    } else if (gKirbyState.unk17 != 0) {
        gKirbyState.unk44 = 3;
    } else if (temp_v0 != 1) {
        if (temp_v0 != 2) {
            if ((D_800CA7C4 & 0x4000) == 0) {
                gKirbyState.unkA = 4;
            }
        } else {
            if (D_800E64D0[*D_80056FE8] == 0.0f) {
                gKirbyState.unk44 = 1;
            } else if (gKirbyState.unk16 == 0) {
                if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                    gKirbyState.unk44 = 3;
                } else if (gKirbyState.unkA == 4) {
                    gKirbyState.unk44 = 3;
                }
            } else if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                gKirbyState.unkA = 4;
            }
            func_8011ED68();
        }
    } else {
        temp_v0_2 = gKirbyController.buttonHeld;
        if ((temp_v0_2 & 0x300) != 0) {
            gKirbyState.unk44 = 2;
        } else if (gKirbyState.unk16 == 0) {
            if ((temp_v0_2 & 0x4000) == 0) {
                gKirbyState.unk44 = 3;
            } else if (gKirbyState.unkA == 4) {
                gKirbyState.unk44 = 3;
            }
        } else if ((temp_v0_2 & 0x4000) == 0) {
            gKirbyState.unkA = 4;
        }
    }
    func_80120CCC(D_80197608, D_8019760C);
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        assign_new_process_entry(gEntityGObjProcessArray[D_8004A7C4->objId], func_8016C510_ovl3);
        gKirbyState.unk3C = gKirbyState.unk44;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017C1FC_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8017C418_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8017C418_ovl3.s line 93.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017C418_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8017CAF8_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8017CAF8_ovl3.s line 51.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017CAF8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017CF60_ovl3(struct GObj *arg0) {
    f32 *temp_v1_4;
    s32 *temp_v0_9;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 temp_v1_3;
    struct GObj *temp_a1;
    struct GObj *temp_a1_2;
    struct GObj *temp_a1_3;
    struct GObj *temp_a1_4;
    struct GObj *temp_a1_5;
    struct GObj *temp_a1_6;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    void *temp_v0_7;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    struct GObj *phi_a1;

    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    D_800EA6E0[D_8004A7C4->objId] = 0.0f;
    func_8011CF58();
    temp_a1 = D_8004A7C4;
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[temp_a1->objId] = 0x28;
    D_800E0490[temp_a1->objId] = &D_801928D8;
    gKirbyState.unk15C = &D_80190580;
    gKirbyState.unk44 = 0;
    func_8011DC04(0xAA);
    func_80122F08(0x20013);
    temp_a1_2 = D_8004A7C4;
    gKirbyState.unk154 = 2;
    D_800E3750[temp_a1_2->objId] = 0.0f;
    temp_v0 = temp_a1_2->objId;
    D_800E3210[temp_v0] = D_800E3750[temp_v0];
    D_800E3C90[temp_a1_2->objId] = D_80197664;
    temp_v0_2 = temp_a1_2->objId;
    D_800E6690[temp_v0_2] = D_800E6A10[temp_v0_2] * 0.5f;
    temp_v0_3 = temp_a1_2->objId;
    temp_v1 = D_800E8AE0[temp_v0_3] & 6;
    if (temp_v1 == 0) {
        phi_f0 = 10.0f;
    } else {
        phi_f0 = 5.0f;
    }
    if (phi_f0 < 0.0f) {
        if (temp_v1 == 0) {
            phi_f0_2 = 10.0f;
        } else {
            phi_f0_2 = 5.0f;
        }
        D_800E6850[temp_v0_3] = -phi_f0_2;
    } else {
        if (temp_v1 == 0) {
            phi_f0_3 = 10.0f;
        } else {
            phi_f0_3 = 5.0f;
        }
        D_800E6850[temp_v0_3] = phi_f0_3;
    }
    func_800AA018(0x201B8);
    if (func_800AF230() == 0) {
loop_13:
        if (gKirbyState.unk17 != 0) {
            temp_a1_3 = D_8004A7C4;
            D_800E6690[temp_a1_3->objId] = 0.0f;
            temp_v0_4 = temp_a1_3->objId;
            D_800E64D0[temp_v0_4] = D_800E6690[temp_v0_4];
            D_800E6850[temp_a1_3->objId] = D_80197668;
            phi_a1 = temp_a1_3;
        } else {
            finish_current_thread(1);
            if (func_800AF230() == 0) {
                goto loop_13;
            }
block_16:
            gKirbyState.unk44 = 1;
            func_800AA018(0x201B9);
            if (func_800AF230() == 0) {
loop_17:
                if (gKirbyState.unk17 != 0) {
                    temp_a1_4 = D_8004A7C4;
                    D_800E6690[temp_a1_4->objId] = 0.0f;
                    temp_v0_5 = temp_a1_4->objId;
                    D_800E64D0[temp_v0_5] = D_800E6690[temp_v0_5];
                    D_800E6850[temp_a1_4->objId] = D_8019766C;
                    phi_a1 = temp_a1_4;
                } else {
                    finish_current_thread(1);
                    if (func_800AF230() == 0) {
                        goto loop_17;
                    }
block_20:
                    temp_a1_5 = D_8004A7C4;
                    temp_v0_6 = temp_a1_5->objId;
                    if ((D_800E8AE0[temp_v0_6] & 6) == 0) {
                        D_800E9720[temp_v0_6] = 0x14;
                    } else {
                        D_800E9720[temp_v0_6] = 0xF;
                    }
                    temp_v0_7 = D_800E9720 + (temp_a1_5->objId * 4);
                    temp_v1_2 = *temp_v0_7;
                    *temp_v0_7 = temp_v1_2 - 1;
                    phi_a1 = temp_a1_5;
                    if (temp_v1_2 != 0) {
loop_24:
                        if (gKirbyState.unk17 != 0) {
                            D_800E6690[D_8004A7C4->objId] = 0.0f;
                            temp_v0_8 = D_8004A7C4->objId;
                            D_800E64D0[temp_v0_8] = D_800E6690[temp_v0_8];
                            D_800E6850[D_8004A7C4->objId] = D_80197670;
                            phi_a1 = D_8004A7C4;
                        } else {
                            finish_current_thread(1);
                            temp_a1_6 = D_8004A7C4;
                            temp_v0_9 = &D_800E9720[temp_a1_6->objId];
                            temp_v1_3 = *temp_v0_9;
                            *temp_v0_9 = temp_v1_3 - 1;
                            phi_a1 = temp_a1_6;
                            if (temp_v1_3 != 0) {
                                goto loop_24;
                            }
                        }
                    }
                }
            } else {
                goto block_20;
            }
        }
    } else {
        goto block_16;
    }
    gKirbyState.unk44 = -1;
    func_800AA154(0x201BA, phi_a1);
    func_8011DC5C(ERROR(Read from unset register $f12));
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80120A28();
    temp_v0_10 = D_8004A7C4->objId;
    if ((D_800E8AE0[temp_v0_10] & 6) == 0) {
        temp_v1_4 = &D_800E6690[temp_v0_10];
        *temp_v1_4 = *temp_v1_4 * 3.0f;
    }
    func_8011D614();
    func_801230E8(0x20188, 0x20189, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017CF60_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017D430_ovl3(f32 *arg0) {
    s32 sp38;
    void *sp24;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_v1_3;
    f32 temp_f0;
    s32 temp_a0;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_f4;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_4;
    u32 temp_v0;
    u32 temp_v0_3;
    u32 temp_v0_4;
    void *temp_v0_2;
    void *temp_v0_5;
    void *temp_v1;
    void *temp_v1_5;
    void *phi_v1;
    s32 phi_a0;
    f32 *phi_a0_2;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    s32 phi_a3;

    if (D_8012E7F0 != 0) {
        func_80153984_ovl3();
        func_801217B8();
        func_8011D67C();
        return;
    }
    phi_a0_2 = arg0;
    if (D_8012E804 >= 0) {
        temp_v0 = D_8004A7C4->objId;
        temp_v0_2 = func_80168408_ovl3(&D_8019139C, D_800DFBD0[temp_v0][2], (bitwise s32) D_800EA6E0[temp_v0]);
        if (temp_v0_2 != 0) {
            phi_v1 = temp_v0_2->unk20;
            phi_a0 = 0;
            if (temp_v0_2->unk1C > 0) {
loop_5:
                temp_a0 = phi_a0 + 1;
                temp_v1 = phi_v1 + 0x28;
                temp_v1->unk-1C = phi_v1->unkC * D_800EA6E0[D_8004A7C4->objId];
                temp_v1->unk-18 = phi_v1->unk10 * D_800EA6E0[D_8004A7C4->objId];
                temp_v1->unk-14 = temp_v1->unk-14 * D_800EA6E0[D_8004A7C4->objId];
                phi_v1 = temp_v1;
                phi_a0 = temp_a0;
                if (temp_a0 < temp_v0_2->unk1C) {
                    goto loop_5;
                }
            }
            func_80111C4C(temp_v0_2, temp_v0_2);
        }
        func_801521F0_ovl3(&D_80193D70, &D_8012E9C8, D_80193DC0, *(D_800EA6E0 + (D_8004A7C4->objId * 4)));
        func_8015449C_ovl3(&D_80193DC0, 0);
        temp_v1_2 = D_8004A7C4;
        temp_a0_2 = &D_800EA6E0[temp_v1_2->objId];
        temp_f0 = *temp_a0_2;
        phi_a0_2 = temp_a0_2;
        if (temp_f0 != 1.0f) {
            *temp_a0_2 = temp_f0 + D_80197674;
            temp_a0_3 = &D_800EA6E0[temp_v1_2->objId];
            phi_a0_2 = temp_a0_3;
            if (*temp_a0_3 > 1.0f) {
                *temp_a0_3 = 1.0f;
                phi_a0_2 = temp_a0_3;
            }
        }
    }
    func_80153984_ovl3(phi_a0_2);
    temp_v1_3 = &gEntitiesNextPosYArray[D_8004A7C4->objId];
    *temp_v1_3 = *temp_v1_3 - D_800EC9E4;
    func_8011CF58();
    if (gKirbyState.abilityInUse != 0) {
        temp_v1_4 = D_8004A7C4;
        temp_v0_3 = temp_v1_4->objId;
        ((temp_v0_3 * 4) + 0x800E0000)->unk6690 = D_800E6A10[temp_v0_3] * 0.5f;
        temp_v0_4 = temp_v1_4->objId;
        temp_a0_4 = D_800E8AE0[temp_v0_4] & 6;
        if (temp_a0_4 == 0) {
            phi_f0 = 10.0f;
        } else {
            phi_f0 = 5.0f;
        }
        if (phi_f0 < 0.0f) {
            if (temp_a0_4 == 0) {
                phi_f0_2 = 10.0f;
            } else {
                phi_f0_2 = 5.0f;
            }
            D_800E6850[temp_v0_4] = -phi_f0_2;
        } else {
            if (temp_a0_4 == 0) {
                phi_f0_3 = 10.0f;
            } else {
                phi_f0_3 = 5.0f;
            }
            D_800E6850[temp_v0_4] = phi_f0_3;
        }
    }
    if (gKirbyState.horizontalCollision != 0) {
        D_800E64D0[D_8004A7C4->objId] = 0.0f;
    }
    if (func_800AA888(0x20007, &gKirbyState) == 0) {
        D_800E8920[D_8004A7C4->objId] = 0;
    } else {
        func_801217B8();
    }
    if ((D_8012E860 != 0) && (D_8012E804 == 0)) {
        temp_f4 = arg0->unk40 * 0.5f;
        if (temp_f4 >= 0x18) {
            sp38 = temp_f4;
            print_error_stub(&D_80197570, temp_f4);
block_34:
            phi_a3 = sp38;
        } else {
            temp_v1_5 = (temp_f4 * 8) + &D_80191424;
            phi_a3 = temp_f4;
            if (D_80197678 != temp_v1_5->unk0) {
                sp38 = temp_f4;
                sp24 = temp_v1_5;
                temp_v0_5 = func_80168408_ovl3(&D_80191404, 0, *(D_800EA6E0 + (D_8004A7C4->objId * 4)), temp_f4);
                temp_v0_5->unk20->unkC = 0.0f;
                temp_v0_5->unk20->unk10 = 0.0f;
                temp_v0_5->unk20->unk14 = temp_v1_5->unk0;
                temp_v0_5->unk20->unk18 = temp_v1_5->unk4;
                temp_v0_5->unk20->unk8 = D_800DFBD0[D_8004A7C4->objId][2];
                func_80111C4C(temp_v0_5);
                goto block_34;
            }
        }
        temp_a0_5 = *(&D_80194348 + (phi_a3 * 4));
        if (temp_a0_5 != 0) {
            func_8015449C_ovl3(temp_a0_5, 0);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017D430_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017DAD8_ovl3(s32 arg0, s32 arg1, f32 arg2);


void func_8017D8E8_ovl3(struct GObj *arg0) {
    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk3C = -1;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x29;
    D_800EA8A0[D_8004A7C4->objId] = 1.0f;
    gKirbyState.unk44 = 0;
    gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
    D_800EA6E0[D_8004A7C4->objId] = 0.0f;
    func_80120A28();
    func_801230E8(0x201A7, 0x201A8, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20010);
    gKirbyState.unk154 = 7;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x2C);
    func_801230E8(0x201A5, 0x201A6, 0);
    D_800DF310[D_8004A7C4->objId] = func_8017DAD8_ovl3;
    while ((gKirbyState.unk17 == 0) && (gKirbyController.buttonHeld & 0x4000)) {
        finish_current_thread(1);
    }
    func_8011E0E8();
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    gKirbyState.abilityInUse = 0;
    func_801230E8(0x201A9, 0x201AA, 1);
    gKirbyState.unk30++;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017D8E8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017DAD8_ovl3(u32 arg0, s32 arg1, f32 arg2) {
    s32 sp24;
    f32 *temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    struct GObj *temp_a0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = func_801632B8_ovl3(arg2, 3);
        D_800E1D10[temp_v0] = arg0;
        sp24 = temp_v0;
loop_3:
        temp_v0_2 = random_soft_s32_range(5);
        if (temp_v0_2 == gKirbyState.unk3C) {
            goto loop_3;
        }
        D_8012E7FC = temp_v0_2;
        temp_a0 = D_8004A7C4;
        D_800EC2E0[sp24] = gKirbyState.unk3C;
        D_800EC660[sp24] = D_800EA8A0[temp_a0->objId];
        temp_a1 = &D_800EA8A0[temp_a0->objId];
        *temp_a1 = -*temp_a1;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017DAD8_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017DBB8_ovl3(struct GObj *arg0) {
    s32 sp3C;
    f32 sp30;
    u32 sp2C;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_a3;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_8;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_2;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_9;
    u32 temp_v1;
    s32 phi_v0;
    f32 phi_f0;
    s32 phi_v0_2;
    f32 phi_f0_2;
    s32 phi_v0_3;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
        return;
    }
    if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
        phi_v0 = func_80120CCC(D_8019767C, D_80197684);
    } else {
        phi_v0 = func_80120CCC(D_80197684, D_80197688);
    }
    temp_a3 = phi_v0;
    temp_v1 = gKirbyState.unk4C;
    if (temp_v1 != 0) {
        sp3C = temp_a3;
        sp2C = temp_v1;
        func_800B2340(&sp30, D_800DFBD0[D_8004A7C4->objId][0xA], 0xFFFF, temp_a3);
        sp2C->unk4C->unk4 = sp30;
        sp2C->unk4C->unk8 = sp34;
        sp2C->unk4C->unkC = sp38;
    }
    if (phi_v0 == 0) {
        temp_v0 = gKirbyState.unk44;
        if (temp_v0 == 0) {
            if ((gKirbyController.buttonHeld & 0x100) != 0) {
                gKirbyState.unk44 = 1;
            } else {
                gKirbyState.unk44 = -1;
            }
        } else if (temp_v0 == 1) {
            if ((gKirbyController.buttonHeld & 0x100) != 0) {
                func_8017DF60_ovl3(1);
            } else {
                func_8017DF60_ovl3(0);
            }
            temp_v1_2 = D_8004A7C4;
            temp_v0_2 = temp_v1_2->objId;
            temp_v0_3 = temp_v0_2 * 4;
            temp_f0 = D_800EA6E0[temp_v0_2];
            phi_f0 = temp_f0;
            phi_v0_2 = temp_v0_3;
            if (temp_f0 == 0.0f) {
                phi_f0 = temp_f0;
                phi_v0_2 = temp_v0_3;
                if ((gKirbyController.buttonHeld & 0x200) != 0) {
                    D_8012E804 = -1;
                    temp_v0_4 = temp_v1_2->objId;
                    phi_f0 = D_800EA6E0[temp_v0_4];
                    phi_v0_2 = temp_v0_4 * 4;
                }
            }
            (*(D_800DFBD0 + phi_v0_2))->unk1C->unk34 = phi_f0;
            temp_v0_5 = D_8004A7C4->objId;
            D_800DFBD0[temp_v0_5][7]->unk38 = -D_800EA6E0[temp_v0_5];
            temp_v0_6 = D_8004A7C4->objId;
            D_800DFBD0[temp_v0_6][2]->unk34 = D_800EA6E0[temp_v0_6];
        } else {
            if ((gKirbyController.buttonHeld & 0x200) != 0) {
                func_8017DF60_ovl3(1);
            } else {
                func_8017DF60_ovl3(0);
            }
            temp_v1_3 = D_8004A7C4;
            temp_v0_7 = temp_v1_3->objId;
            temp_v0_8 = temp_v0_7 * 4;
            temp_f0_2 = D_800EA6E0[temp_v0_7];
            phi_f0_2 = temp_f0_2;
            phi_v0_3 = temp_v0_8;
            if (temp_f0_2 == 0.0f) {
                phi_f0_2 = temp_f0_2;
                phi_v0_3 = temp_v0_8;
                if ((gKirbyController.buttonHeld & 0x100) != 0) {
                    D_8012E804 = 1;
                    temp_v0_9 = temp_v1_3->objId;
                    phi_f0_2 = D_800EA6E0[temp_v0_9];
                    phi_v0_3 = temp_v0_9 * 4;
                }
            }
            (*(D_800DFBD0 + phi_v0_3))->unk1C->unk34 = -phi_f0_2;
            temp_v0_10 = D_8004A7C4->objId;
            D_800DFBD0[temp_v0_10][7]->unk38 = D_800EA6E0[temp_v0_10];
            temp_v0_11 = D_8004A7C4->objId;
            D_800DFBD0[temp_v0_11][2]->unk34 = -D_800EA6E0[temp_v0_11];
        }
    }
    if (func_800AA888(0x20010) != 0) {
        func_8015449C_ovl3(&D_80193250, 0);
        func_80111C4C(func_80111A04(&D_80191508, D_8004A7C4->objId));
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017DBB8_ovl3.s")
#endif

#ifdef MIPS_TO_C
f32 func_8017DF60_ovl3(struct GObj *arg0) {
    f32 *temp_a0;
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 *temp_a0_4;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_return;
    f32 phi_return_2;

    if (arg0 != 0) {
        temp_v0 = D_8004A7C4;
        temp_v1 = temp_v0->objId;
        temp_a0 = &D_800EA6E0[temp_v1];
        if ((D_800E8AE0[temp_v1] & 6) == 0) {
            temp_f0 = D_8019768C;
            phi_f0 = temp_f0;
            phi_return = temp_f0;
        } else {
            temp_f0_2 = D_80197690;
            phi_f0 = temp_f0_2;
            phi_return = temp_f0_2;
        }
        temp_f2 = D_80197694;
        *temp_a0 = *temp_a0 + phi_f0;
        temp_a0_2 = &D_800EA6E0[temp_v0->objId];
        phi_return_2 = phi_return;
        if (temp_f2 < *temp_a0_2) {
            *temp_a0_2 = temp_f2;
            return phi_return;
        }
    } else {
        temp_v0_2 = D_8004A7C4;
        temp_v1_2 = temp_v0_2->objId;
        temp_a0_3 = &D_800EA6E0[temp_v1_2];
        if ((D_800E8AE0[temp_v1_2] & 6) == 0) {
            temp_f0_3 = D_80197698;
            phi_f0_2 = temp_f0_3;
            phi_return_2 = temp_f0_3;
        } else {
            temp_f0_4 = D_8019769C;
            phi_f0_2 = temp_f0_4;
            phi_return_2 = temp_f0_4;
        }
        *temp_a0_3 = *temp_a0_3 - phi_f0_2;
        temp_a0_4 = &D_800EA6E0[temp_v0_2->objId];
        if (*temp_a0_4 <= 0.0f) {
            *temp_a0_4 = 0.0f;
            D_8012E804 = 0;
        }
    }
    return phi_return_2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017DF60_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017E074_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x2A;
    func_80120A28();
    func_8011DC04(0xAB);
    func_8011DC30(0x26D);
    D_800EC2E0[func_801693C4_ovl3(7)] = 0;
    D_800EC2E0[func_801693C4_ovl3(7)] = 2;
    func_801230E8(0x201AE, 0x201AF, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20011);
    gKirbyState.unk154 = 2;
    D_800EC2E0[func_801693C4_ovl3(7)] = 1;
    func_801230E8(0x201AC, 0x201AD, 0);
    if (gKirbyState.unk17 == 0) {
loop_1:
        if (func_800AF230() == 0) {
            finish_current_thread(1);
            if (gKirbyState.unk17 == 0) {
                goto loop_1;
            }
        }
    }
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201B0, 0x201B1, 1);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017E074_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017E1EC_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C(ERROR(Read from unset register $f12));
        func_8011D67C();
        return;
    }
    if (gKirbyState.abilityInUse != 0) {
        func_8015449C_ovl3(&D_8019338C, 0);
        func_80111C4C(func_80111A04(&D_8019154C, D_8004A7C4->objId));
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017E1EC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017E284_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f20;
    s32 *temp_v0;
    s32 temp_v0_2;
    s32 temp_v1_2;
    struct GObj *temp_v1;

    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.isFullJump = 0;
    gKirbyState.jumpHeight = 0;
    gKirbyState.unk40 = 0.0f;
    D_800E98E0[D_8004A7C4->objId] = 1;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x2B;
    gKirbyState.unk44 = 0;
    func_80120A28();
    gKirbyState.unk15C = &D_801905E8;
    func_801230E8(0x201B4, 0x201B5, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20012);
    gKirbyState.unk154 = 5;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x2A, D_800DFBD0[D_8004A7C4->objId][4]);
    D_800E9720[D_8004A7C4->objId] = 0;
    func_800AA018(0x201B2);
    temp_f20 = D_801976A4;
loop_1:
    if (gKirbyState.unk17 == 0) {
        temp_f0 = gKirbyState.unk40;
        if (temp_f20 != temp_f0) {
            temp_v1 = D_8004A7C4;
            gEntitiesAngleXArray[temp_v1->objId] = -temp_f0;
            gKirbyState.unk40 = temp_f0 + D_801976A0;
            if (temp_f20 <= gKirbyState.unk40) {
                gKirbyState.unk40 = temp_f20;
            }
            temp_v0 = &D_800E9720[temp_v1->objId];
            *temp_v0 = *temp_v0 + 1;
        }
        if ((gKirbyController.buttonHeld & 0x4000) != 0) {
            finish_current_thread(1);
            goto loop_1;
        } else {
            temp_v0_2 = func_801632B8_ovl3(4);
            temp_v1_2 = temp_v0_2 * 4;
            D_800E1D10[temp_v0_2] = D_800DFBD0[D_8004A7C4->objId][4];
            *(D_800EC660 + temp_v1_2) = gKirbyState.unk40;
            play_sound(0xB5);
            play_sound(0xB6);
            D_800E98E0[D_8004A7C4->objId] = 0;
            func_800AA154(0x201B3);
        }
    }
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201B6, 0x201B7, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017E284_ovl3.s")
#endif

#ifdef MIPS_TO_C
struct GObj *func_8017E54C_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_a0;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    u16 temp_a0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    struct KirbyState *phi_a1;
    s32 phi_v1;
    s32 phi_a0;
    s32 phi_v0;
    s32 phi_v1_2;
    s32 phi_a0_2;
    s32 phi_v1_3;
    struct KirbyState *phi_a1_2;
    struct GObj *phi_return;
    s32 *phi_a0_3;
    s32 phi_v1_4;

    func_80153984_ovl3();
    if (gKirbyState.unk44 != 1) {
        func_801217B8();
    }
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
        return func_8011D67C();
    }
    if (gKirbyState.abilityInUse != 0) {
        phi_a1 = &gKirbyState;
        if (D_800DFBD0[D_8004A7C4->objId][3]->unk54 == 2) {
            func_8011E0E8();
            phi_a1 = &gKirbyState;
        }
    } else {
        temp_f0 = gKirbyState.unk40;
        phi_a1 = &gKirbyState;
        if (temp_f0 != 0.0f) {
            gKirbyState.unk40 = temp_f0 - D_801976A8;
            if (gKirbyState.unk40 <= 0.0f) {
                gKirbyState.unk40 = 0.0f;
            }
            gEntitiesAngleXArray[D_8004A7C4->objId] = -gKirbyState.unk40;
            phi_a1 = &gKirbyState;
        }
    }
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    temp_a0 = D_800E8920[temp_v1];
    phi_v1 = temp_v1 * 4;
    phi_a0 = temp_a0;
    if (temp_a0 != 0) {
        D_800E6690[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[temp_v0->objId] = D_801976AC;
        phi_a1->unk44 = 0;
        temp_v1_3 = temp_v0->objId;
        phi_v1 = temp_v1_3 * 4;
        phi_a0 = D_800E8920[temp_v1_3];
    }
    if (*(D_800E98E0 + phi_v1) != 0) {
        if (phi_a0 != 0) {
            if (phi_a1->isFullJump == 0) {
                phi_a0_2 = phi_a0;
                phi_v1_3 = phi_v1;
                phi_a1_2 = phi_a1;
                phi_return = temp_v0;
                if ((D_800D6FEA & 0x8000) != 0) {
                    phi_a1->unk44 = 1;
                    D_800E8920[temp_v0->objId] = 0;
                    phi_v0 = 0;
                    if ((D_800E8AE0[temp_v0->objId] & 6) == 6) {
                        phi_v0 = 1;
                    }
                    if (phi_v0 != 0) {
                        play_sound(0x10B);
                        gKirbyState.unkCC = 4.0f;
                        temp_v0_2 = D_8004A7C4;
                        D_800E3210[temp_v0_2->objId] = 8.5f;
                        D_800E3750[temp_v0_2->objId] = D_801976B0;
                        D_800E3C90[temp_v0_2->objId] = 8.5f;
                        temp_v1_4 = temp_v0_2->objId;
                        phi_a0_3 = &D_800E8920[temp_v1_4];
                        phi_v1_3 = temp_v1_4 * 4;
                        phi_a1_2 = &gKirbyState;
                        phi_return = temp_v0_2;
                    } else {
                        play_sound(0xF7);
                        gKirbyState.unkCC = 8.0f;
                        temp_v0_3 = D_8004A7C4;
                        D_800E3210[temp_v0_3->objId] = func_80123144(0x41880000, &gKirbyState);
                        D_800E3750[temp_v0_3->objId] = D_801976B4;
                        D_800E3C90[temp_v0_3->objId] = 16.0f;
                        temp_v1_5 = temp_v0_3->objId;
                        phi_a0_3 = &D_800E8920[temp_v1_5];
                        phi_v1_3 = temp_v1_5 * 4;
                        phi_a1_2 = &gKirbyState;
                        phi_return = temp_v0_3;
                    }
block_35:
                    phi_a0_2 = *phi_a0_3;
                }
            } else {
                phi_a1->isFullJump = 0;
                phi_a1->jumpHeight = 0;
                temp_v1_6 = temp_v0->objId;
                phi_a0_3 = &D_800E8920[temp_v1_6];
                phi_v1_3 = temp_v1_6 * 4;
                phi_a1_2 = phi_a1;
                phi_return = temp_v0;
                goto block_35;
            }
        } else {
            temp_f0_2 = *(D_800E3210 + phi_v1);
            if (temp_f0_2 > 0.0f) {
                phi_v1_2 = phi_v1;
                if (temp_f0_2 < phi_a1->unkCC) {
                    temp_a0_2 = phi_a1->isFullJump;
                    phi_v1_2 = phi_v1;
                    if (temp_a0_2 == 0) {
                        phi_a1->isFullJump = temp_a0_2 + 1;
                        phi_a1->unk44 = 2;
                        phi_v1_2 = temp_v0->objId * 4;
                    }
                }
                phi_v1_4 = phi_v1_2;
                if (phi_a1->ceilingCollisionNext != 0) {
                    *(D_800E3210 + phi_v1_2) = 0.0f;
                    phi_a1->unk44 = 2;
                    phi_v1_4 = temp_v0->objId * 4;
                }
                phi_a0_3 = D_800E8920 + phi_v1_4;
                phi_v1_3 = phi_v1_4;
                phi_a1_2 = phi_a1;
                phi_return = (bitwise struct GObj *) temp_f0_2;
                goto block_35;
            } else {
                phi_a0_2 = phi_a0;
                phi_v1_3 = phi_v1;
                phi_a1_2 = phi_a1;
                phi_return = (bitwise struct GObj *) temp_f0_2;
                if (phi_a1->isFullJump != 0) {
                    phi_a1->unk44 = 2;
                    temp_v1_7 = temp_v0->objId;
                    phi_a0_3 = &D_800E8920[temp_v1_7];
                    phi_v1_3 = temp_v1_7 * 4;
                    phi_a1_2 = phi_a1;
                    phi_return = (bitwise struct GObj *) temp_f0_2;
                    goto block_35;
                }
            }
        }
    } else {
        phi_a0_2 = phi_a0;
        phi_v1_3 = phi_v1;
        phi_a1_2 = phi_a1;
        phi_return = temp_v0;
        if (phi_a0 != 0) {
            phi_a0_2 = phi_a0;
            phi_v1_3 = phi_v1;
            phi_a1_2 = phi_a1;
            phi_return = temp_v0;
            if (phi_a1->isFullJump != 0) {
                phi_a1->isFullJump = 0;
                phi_a1->jumpHeight = 0;
                temp_v1_8 = temp_v0->objId;
                phi_a0_3 = &D_800E8920[temp_v1_8];
                phi_v1_3 = temp_v1_8 * 4;
                phi_a1_2 = phi_a1;
                phi_return = temp_v0;
                goto block_35;
            }
        }
    }
    if (phi_a0_2 == 0) {
        if ((*(D_800E3210 + phi_v1_3) > 0.0f) && (phi_a1_2->isFullJump == 0)) {
            func_8011EBD4(phi_a0_2, phi_a1_2);
        }
        phi_return = func_8011ED68();
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017E54C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017EA0C_ovl3(struct GObj *arg0) {
    s16 temp_v1;
    s32 temp_a0;
    struct GObj *temp_t0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    struct GObj *phi_t0;
    s16 phi_v1;
    struct 
{
  u32 unk0;
  u32 unk4;
  u32 unk8;
  u32 unkC;
  u32 unk10;
} *phi_t1;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk4C = 0;
        temp_v0 = D_8004A7C4->objId;
        D_800EA6E0[temp_v0] = D_800E6A10[temp_v0];
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[D_8004A7C4->objId] = 0x2C;
        func_80122F08(0x20016);
        D_8012E914 = 2;
    }
    temp_v1 = D_80198830.unk8;
    temp_t0 = D_8004A7C4;
    D_800EC2E0[func_801693C4_ovl3(8)] = temp_v1;
    D_800E8920[temp_t0->objId] = 0;
    if ((D_800E8AE0[temp_t0->objId] & 6) != 0) {
        D_800D7238 = D_801976BC;
    } else {
        D_800D7238 = D_80196D98;
    }
    temp_v0_2 = temp_t0->objId;
    if ((D_800E8AE0[temp_v0_2] & 6) == 0) {
        D_800E3210[temp_v0_2] = *(&D_80196D98 + (temp_v1 * 4));
    } else {
        D_800E3210[temp_v0_2] = *(&D_80196D98 + (temp_v1 * 4)) * 0.5f;
    }
    D_800E3750[temp_t0->objId] = D_800D7238;
    temp_v0_3 = temp_t0->objId;
    temp_a0 = D_800E8AE0[temp_v0_3] & 6;
    if (temp_a0 == 0) {
        phi_f0 = 16.0f;
    } else {
        phi_f0 = 8.0f;
    }
    if (phi_f0 < 0.0f) {
        if (temp_a0 == 0) {
            phi_f0_2 = 16.0f;
        } else {
            phi_f0_2 = 8.0f;
        }
        D_800E3C90[temp_v0_3] = -phi_f0_2;
    } else {
        if (temp_a0 == 0) {
            phi_f0_3 = 16.0f;
        } else {
            phi_f0_3 = 8.0f;
        }
        D_800E3C90[temp_v0_3] = phi_f0_3;
    }
    if (temp_v1 == 3) {
        func_800BB468(8.0f, 0xB, 0xA);
        phi_v1 = D_80198838;
block_26:
        phi_t0 = D_8004A7C4;
    } else if (temp_v1 == 2) {
        func_800BB468(8.0f, 6, 0x10);
        phi_v1 = D_80198838;
        goto block_26;
    } else {
        phi_t0 = temp_t0;
        phi_v1 = temp_v1;
        phi_t1 = &D_80198830;
        if (temp_v1 == 1) {
            func_800BB468(8.0f, 0, 0);
            phi_v1 = D_80198838;
            goto block_26;
        }
    }
    D_800E9720[phi_t0->objId] = 0xA;
    phi_t1->unk8 = phi_v1 - 1;
    phi_t1->unkA = 0xF;
    if (phi_t1->unk8 != 0) {
        func_800AA864(0x201C5, 2);
    } else {
        phi_t1->unkA = 0x14;
        D_8012E80C = func_800A8100(1, 1, 0x22, D_800DFBD0[phi_t0->objId][2]);
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            func_800AA864(0x201C5, 4);
        } else {
            func_800AA864(0x201C5, 8);
        }
        D_80198838 = 3;
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017EA0C_ovl3.s")
#endif

#ifdef MIPS_TO_C
f32 func_8017EDDC_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    s16 temp_v1;
    s16 temp_v1_2;
    s32 *temp_a1;
    s32 temp_a2;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1_4;
    s32 temp_v1_5;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    u16 temp_v1_3;
    u32 temp_v0;
    u32 temp_v0_9;
    s32 phi_v0;
    struct GObj *phi_a0;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f0_4;
    f32 phi_f0_5;
    f32 phi_f0_6;
    f32 phi_f0_7;
    f32 phi_return;
    f32 phi_return_2;
    f32 phi_return_3;
    f32 phi_return_4;
    f32 phi_return_5;
    u32 phi_v0_2;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
block_3:
        func_8011E0E8();
        gKirbyState.abilityInUse = 0;
        temp_v0_9 = D_8004A7C4->objId;
        D_800E6A10[temp_v0_9] = D_800EA6E0[temp_v0_9];
        return func_8011D67C();
    }
    if (gKirbyState.unk17 != 0) {
        goto block_3;
    }
    temp_a0 = D_8004A7C4;
    temp_v0 = temp_a0->objId;
    temp_v0_2 = temp_v0 * 4;
    if (D_800E8920[temp_v0] != 0) {
        goto block_3;
    }
    temp_v1 = D_80198830.unk8;
    if (temp_v1 != 0) {
        temp_a1 = &D_800E9720[temp_v0];
        temp_a2 = *temp_a1;
        if (temp_a2 == 0) {
            phi_v0 = temp_v0_2;
            phi_a0 = temp_a0;
            if (temp_v1 != 0) {
                phi_v0 = temp_v0_2;
                phi_a0 = temp_a0;
                if ((D_800D6FEA & 0x4000) != 0) {
                    assign_new_process_entry(*(&gEntityGObjProcessArray + temp_v0_2), &D_8016C510, temp_a2);
                    temp_a0_2 = D_8004A7C4;
                    phi_v0_2 = temp_a0_2->objId;
                    phi_a0 = temp_a0_2;
block_12:
                    phi_v0 = phi_v0_2 * 4;
                }
            }
        } else {
            *temp_a1 = temp_a2 - 1;
            phi_v0_2 = temp_a0->objId;
            phi_a0 = temp_a0;
            goto block_12;
        }
    } else {
        temp_v1_2 = D_80198830.unkA;
        phi_v0 = temp_v0_2;
        phi_a0 = temp_a0;
        if (temp_v1_2 != 0) {
            D_80198830.unkA = temp_v1_2 - 1;
            phi_v0_2 = temp_a0->objId;
            phi_a0 = temp_a0;
            goto block_12;
        }
    }
    temp_v1_3 = gKirbyController.buttonHeld;
    if ((temp_v1_3 & 0x300) != 0) {
        if ((temp_v1_3 & 0x100) == 0) {
            *(D_800EA6E0 + phi_v0) = -1.0f;
            temp_v0_6 = phi_a0->objId;
            temp_v0_7 = temp_v0_6 * 4;
            if ((D_800E8AE0[temp_v0_6] & 6) == 0) {
                (temp_v0_7 + 0x800E0000)->unk6690 = -0.625f;
            } else {
                (temp_v0_7 + 0x800E0000)->unk6690 = -0.3125f;
            }
            temp_v0_8 = phi_a0->objId;
            temp_v1_5 = D_800E8AE0[temp_v0_8] & 6;
            if (temp_v1_5 == 0) {
                phi_f0_4 = 5.0f;
            } else {
                phi_f0_4 = 2.5f;
            }
            if (!(phi_f0_4 < 0.0f)) {
                if (temp_v1_5 == 0) {
                    temp_f0_7 = 5.0f;
                    phi_f0_6 = temp_f0_7;
                    phi_return_4 = temp_f0_7;
                } else {
                    temp_f0_8 = 2.5f;
                    phi_f0_6 = temp_f0_8;
                    phi_return_4 = temp_f0_8;
                }
                (&D_800E6850[temp_v0_8])[0x1A14] = phi_f0_6;
                return phi_return_4;
            }
            if (temp_v1_5 == 0) {
                temp_f0_5 = 5.0f;
                phi_f0_5 = temp_f0_5;
                phi_return_3 = temp_f0_5;
            } else {
                temp_f0_6 = 2.5f;
                phi_f0_5 = temp_f0_6;
                phi_return_3 = temp_f0_6;
            }
            *((temp_v0_8 * 4) + 0x800E0000) = -phi_f0_5;
            return phi_return_3;
        }
        *(D_800EA6E0 + phi_v0) = 1.0f;
        temp_v0_3 = phi_a0->objId;
        temp_v0_4 = temp_v0_3 * 4;
        if ((D_800E8AE0[temp_v0_3] & 6) == 0) {
            (temp_v0_4 + 0x800E0000)->unk6690 = 0.625f;
        } else {
            (temp_v0_4 + 0x800E0000)->unk6690 = 0.3125f;
        }
        temp_v0_5 = phi_a0->objId;
        temp_v1_4 = D_800E8AE0[temp_v0_5] & 6;
        if (temp_v1_4 == 0) {
            phi_f0 = 5.0f;
        } else {
            phi_f0 = 2.5f;
        }
        if (!(phi_f0 < 0.0f)) {
            if (temp_v1_4 == 0) {
                temp_f0_3 = 5.0f;
                phi_f0_3 = temp_f0_3;
                phi_return_2 = temp_f0_3;
            } else {
                temp_f0_4 = 2.5f;
                phi_f0_3 = temp_f0_4;
                phi_return_2 = temp_f0_4;
            }
            (&D_800E6850[temp_v0_5])[0x1A14] = phi_f0_3;
            return phi_return_2;
        }
        if (temp_v1_4 == 0) {
            temp_f0 = 5.0f;
            phi_f0_2 = temp_f0;
            phi_return = temp_f0;
        } else {
            temp_f0_2 = 2.5f;
            phi_f0_2 = temp_f0_2;
            phi_return = temp_f0_2;
        }
        *((temp_v0_5 * 4) + 0x800E0000) = -phi_f0_2;
        return phi_return;
    }
    if ((*(D_800E8AE0 + phi_v0) & 6) == 0) {
        phi_f0_7 = 0.625f;
        phi_return_5 = 0.625f;
    } else {
        phi_f0_7 = 0.3125f;
        phi_return_5 = 0.3125f;
    }
    *(D_800E6690 + phi_v0) = -phi_f0_7 * *(D_800E6A10 + phi_v0);
    D_800E6850[phi_a0->objId] = 0.0f;
    return phi_return_5;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017EDDC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017F1C0_ovl3(void *arg0) {
    void *sp4C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f22;
    s32 temp_v0_2;
    s32 temp_v0_9;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    u32 temp_v0;
    u32 temp_v0_10;
    u32 temp_v0_11;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_7;
    u32 temp_v0_8;
    s32 phi_v0;
    s32 phi_v0_2;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk40 = 0.0f;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk38 = D_801976C0;
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        temp_v1 = D_8004A7C4;
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[temp_v1->objId] = 0x2D;
        D_800E9560[temp_v1->objId] = 0;
        D_800E0490[temp_v1->objId] = &D_801928F4;
        gKirbyState.unk3C = -1;
        gKirbyState.unk44 = -1;
        temp_v0 = temp_v1->objId;
        temp_v0_2 = temp_v0 * 4;
        phi_v0_2 = temp_v0_2;
        if (D_800E8920[temp_v0] == 0) {
            phi_v0 = temp_v0_2;
            if ((gKirbyController.buttonHeld & 0x4400) == 0x4400) {
                temp_f12 = D_801976C4;
                D_800E6690[temp_v0] = 0.0f;
                temp_v0_3 = temp_v1->objId;
                D_800E64D0[temp_v0_3] = D_800E6690[temp_v0_3];
                D_800E6850[temp_v1->objId] = temp_f12;
                D_800E3910[temp_v1->objId] = 0.0f;
                temp_v0_4 = temp_v1->objId;
                temp_f0 = D_800E3910[temp_v0_4];
                D_800E3590[temp_v0_4] = temp_f0;
                D_800E33D0[temp_v1->objId] = temp_f0;
                D_800E3050[temp_v1->objId] = temp_f0;
                D_800E3E50[temp_v1->objId] = temp_f12;
                temp_v0_5 = temp_v1->objId;
                D_800E3AD0[temp_v0_5] = D_800E3E50[temp_v0_5];
                phi_v0 = temp_v1->objId * 4;
            }
            *(D_800E3210 + phi_v0) = 0.0f;
            D_800E3750[temp_v1->objId] = D_801976C8;
            D_800E3C90[temp_v1->objId] = 18.0f;
            phi_v0_2 = temp_v1->objId * 4;
        }
        *(D_800E83E0 + phi_v0_2) = 0;
        temp_v0_6 = temp_v1->objId;
        D_800E98E0[temp_v0_6] = D_800E6A10[temp_v0_6];
        play_sound(0x124);
        func_80122F08(0x20007);
        func_801230E8(0x2018C, 0x2018D, 1);
        gKirbyState.unk15C = &D_8019062C;
        gKirbyState.unk44 = 1;
        gKirbyState.unk3C = 1;
    }
    temp_v0_7 = gKirbyState.unk44;
    if (temp_v0_7 != 0) {
        if (temp_v0_7 != 1) {
            if (temp_v0_7 != 2) {
                if (temp_v0_7 != 3) {

                } else {
                    gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
                    gKirbyState.abilityInUse = 0;
                    func_80120A28();
                    play_sound(0x11D);
                    func_8011D614();
                    func_801230E8(0x2018A, 0x2018B, 0);
                    finish_current_thread(1);
                    temp_f0_2 = D_801976D0;
                    temp_v1_2 = D_8004A7C4;
                    gKirbyState.unk38 = 1.0f;
                    gEntitiesScaleXArray[temp_v1_2->objId] = temp_f0_2;
                    gEntitiesScaleYArray[temp_v1_2->objId] = temp_f0_2;
                    gEntitiesScaleZArray[temp_v1_2->objId] = temp_f0_2;
                    func_800AF27C();
                    gKirbyState.unk30 = gKirbyState.unk30 + 1;
                }
            } else {
block_18:
                temp_v1_3 = D_8004A7C4;
                D_800EA8A0[temp_v1_3->objId] = 0.0f;
                D_800E9720[temp_v1_3->objId] = 0;
                func_80122F08(0x2000B);
                gKirbyState.unk154 = 2;
                func_800AA154(0x2018F);
                temp_f22 = D_801976CC;
                sp4C = &D_8017F8B8;
loop_19:
                func_800AA018(0x20191);
                D_800DF310[D_8004A7C4->objId] = sp4C;
loop_20:
                temp_v0_9 = D_8004A7C4->objId;
                temp_f0_3 = D_800E64D0[temp_v0_9];
                if ((temp_f0_3 != 0.0f) || (D_800E6850[temp_v0_9] != 0.0f)) {
                    if (D_800E8920[temp_v0_9] != 0) {
                        if (!(temp_f22 < D_800EA8A0[temp_v0_9]) || (temp_f0_3 != 0.0f)) {
                            finish_current_thread(1);
                            goto loop_20;
                        }
                    }
                } else {
                    D_800E9720[temp_v0_9] = 0x1E;
                    func_800AA5C4(0x2018E, 0x2000B, 0x40C00000);
                    if (func_800AA368(arg0->unk3C->unk10) == 0) {
loop_27:
                        temp_v0_10 = D_8004A7C4->objId;
                        if (D_800E6850[temp_v0_10] != 0.0f) {
                            goto loop_19;
                        }
                        if (D_800E8920[temp_v0_10] != 0) {
                            finish_current_thread(1);
                            if (func_800AA368(arg0->unk3C->unk10) == 0) {
                                goto loop_27;
                            }
block_30:
                            func_800AA018(0x2018E);
loop_31:
                            temp_v0_11 = D_8004A7C4->objId;
                            if (D_800E6850[temp_v0_11] != 0.0f) {
                                goto loop_19;
                            }
                            if (D_800E8920[temp_v0_11] != 0) {
                                if (((gKirbyState.isTurning & 1) != 0) || (D_800E9720[temp_v0_11] != 0)) {
                                    finish_current_thread(1);
                                    goto loop_31;
                                }
                            }
                        }
                    } else {
                        goto block_30;
                    }
                }
                func_800AA154(0x20190);
                D_800E9720[D_8004A7C4->objId] = -1;
            }
        } else {
            D_800EA6E0[D_8004A7C4->objId] = 0.0f;
            func_80122F08(0x2000C);
            gKirbyState.unk154 = 1;
            gKirbyState.unk40 = 0.0f;
            temp_v0_8 = D_8004A7C4->objId;
            if (D_800E8920[temp_v0_8] != 0) {
                if ((D_800E64D0[temp_v0_8] != 0.0f) || (func_800F8824(gKirbyState.unk124, (bitwise s32) D_800E17D0[temp_v0_8]) != 0.0f)) {
                    play_sound(0x121);
                }
            }
        }
    } else {
        goto block_18;
    }
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017F1C0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8017F8B8_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 sp24;
    u32 temp_v0;

    if ((arg1 == 0) && (arg2 != 0.0f) && (D_800E8920[D_8004A7C4->objId] != 0)) {
        sp24 = func_80123170(arg2);
        func_800FB914(ERROR(Read from unset register $f12));
        play_sound(0x120);
        if (sp24 != -1) {
            temp_v0 = D_8004A7C4->objId;
            func_800A7F74(5, 1, sp24, (bitwise f32) (bitwise s32) gEntitiesNextPosXArray[temp_v0], gEntitiesNextPosYArray[temp_v0], gEntitiesNextPosZArray[temp_v0]);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017F8B8_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8017F988_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8017F988_ovl3.s line 226.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8017F988_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80180818_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    u32 temp_v0;
    u32 temp_v0_2;

    gKirbyState.unk30 = 0;
    gKirbyState.unk3C = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    temp_v1 = D_8004A7C4;
    D_800DDFD0[temp_v1->objId] = 0x2E;
    if ((D_800E8920[temp_v1->objId] == 0) && ((gKirbyController.buttonHeld & 0x400) != 0)) {
        gKirbyState.unk44 = 0;
    } else {
        gKirbyState.unk44 = 1;
    }
    D_800E0490[temp_v1->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_801906D8;
    func_80122F08(0x20017);
    gKirbyState.unk154 = 0xD;
    func_8011DC04(0x125);
    if (gKirbyState.unk44 == 0) {
        temp_v1_2 = D_8004A7C4;
        temp_f2 = D_8019770C;
        D_800E6690[temp_v1_2->objId] = 0.0f;
        temp_v0 = temp_v1_2->objId;
        D_800E64D0[temp_v0] = D_800E6690[temp_v0];
        D_800E6850[temp_v1_2->objId] = temp_f2;
        D_800E3750[temp_v1_2->objId] = 0.0f;
        temp_v0_2 = temp_v1_2->objId;
        D_800E3210[temp_v0_2] = D_800E3750[temp_v0_2];
        D_800E3C90[temp_v1_2->objId] = temp_f2;
        func_801230E8(0x201CF, 0x201D0, 1);
    } else {
        func_801230E8(0x201CB, 0x201CC, 1);
    }
    gKirbyState.abilityInUse = gKirbyState.ability;
    if (gKirbyState.unk44 == 0) {
        func_801230E8(0x201C9, 0x201CA, 0);
    } else {
        func_801230E8(0x201C7, 0x201C8, 0);
    }
    if ((gKirbyController.buttonHeld & 0x4000) != 0) {
loop_11:
        if (gKirbyState.unk17 == 0) {
            finish_current_thread(1);
            if ((gKirbyController.buttonHeld & 0x4000) != 0) {
                goto loop_11;
            }
        }
    }
    func_8011DC5C(ERROR(Read from unset register $f12));
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    play_sound(0x229);
    D_800EC2E0[func_801632B8_ovl3(5)] = gKirbyState.unk44;
    func_800AECC0(D_800E09D0[D_8004A7C4->objId] * 0.25f);
    func_800AED20(D_800E09D0[D_8004A7C4->objId] * 0.25f);
    func_80120A28();
    if (gKirbyState.unk44 == 0) {
        func_801230E8(0x201D1, 0x201D2, 1);
    } else {
        func_801230E8(0x201CD, 0x201CE, 1);
    }
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80180818_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80180B58_ovl3(struct GObj *arg0) {
    ? sp3C;
    s32 sp38;
    f32 *temp_v1;
    s32 temp_v1_2;
    struct GObj *temp_a3;
    struct GObj *temp_a3_2;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    struct KirbyState *phi_t0;
    struct GObj *phi_a3;

    func_80153AD4_ovl3();
    temp_a3 = D_8004A7C4;
    temp_v1 = &gEntitiesNextPosYArray[temp_a3->objId];
    *temp_v1 = *temp_v1 - D_800EC9E4;
    if (gKirbyState.unk44 == 1) {
        if ((gKirbyState.horizontalCollision == 0) && (gKirbyState.abilityInUse != 0)) {
            temp_v0 = temp_a3->objId;
            D_800E6690[temp_v0] = D_800E6A10[temp_v0] * D_80197710;
            temp_v0_2 = temp_a3->objId;
            temp_v1_2 = D_800E8AE0[temp_v0_2] & 6;
            if (temp_v1_2 == 0) {
                phi_f0 = 6.0f;
            } else {
                phi_f0 = 3.0f;
            }
            if (phi_f0 < 0.0f) {
                if (temp_v1_2 == 0) {
                    phi_f0_2 = 6.0f;
                } else {
                    phi_f0_2 = 3.0f;
                }
                D_800E6850[temp_v0_2] = -phi_f0_2;
            } else {
                if (temp_v1_2 == 0) {
                    phi_f0_3 = 6.0f;
                } else {
                    phi_f0_3 = 3.0f;
                }
                D_800E6850[temp_v0_2] = phi_f0_3;
            }
            func_80121658(3.0f);
block_18:
            phi_t0 = &gKirbyState;
        } else {
            D_800E3750[temp_a3->objId] = 0.0f;
            temp_v0_3 = temp_a3->objId;
            D_800E3210[temp_v0_3] = D_800E3750[temp_v0_3];
            D_800E3C90[temp_a3->objId] = D_80197714;
            phi_t0 = &gKirbyState;
        }
    } else {
        func_80121658();
        goto block_18;
    }
    if (phi_t0->unk30 != 0) {
        func_8011E0E8();
        func_8011DC5C(ERROR(Read from unset register $f12));
        func_8011D67C();
        gKirbyState.isTurning = gKirbyState.isTurning & ~0x4000;
        return;
    }
    if (phi_t0->abilityInUse != 0) {
        sp38 = 0;
        func_8011CF58();
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
            } else {
                gKirbyState.isTurning = gKirbyState.isTurning & ~0x4000;
            }
            phi_a3 = D_8004A7C4;
        } else {
            temp_a3_2 = D_8004A7C4;
            if (D_800E8920[temp_a3_2->objId] != 0) {
                gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
                phi_a3 = temp_a3_2;
            } else {
                gKirbyState.isTurning = gKirbyState.isTurning & ~0x4000;
                phi_a3 = temp_a3_2;
            }
        }
        func_8016854C_ovl3(&D_801916E8, D_800DFBD0[phi_a3->objId][9], 0x3F800000, phi_a3);
        if (gKirbyState.unk44 == 0) {
            func_80152070_ovl3(&D_801948A4, &D_8012E9C8, 3, 0x3F800000);
        } else {
            func_80152070_ovl3(&D_801948D4, &D_8012E9C8, 3, 0x3F800000);
        }
        func_8015449C_ovl3(&D_80194904, 0);
        func_800B2340(&sp3C, D_800DFBD0[D_8004A7C4->objId][9], 0xFFFF);
        if (gKirbyState.unk44 == 1) {
            if (gKirbyState.horizontalCollision != 0) {
                sp38 = 1;
            } else {
                if (func_80155838_ovl3(&sp3C, 0x41E40000, 2) != 0) {
                    sp38 = 1;
                }
                if (func_80155838_ovl3(&sp3C, 0x428C0000, 5) != 0) {
                    sp38 = sp38 + 1;
                }
            }
            if (sp38 == 0) {
                func_8011E0E8();
                return;
            }
            if (gKirbyState.unk4C == 0) {
                gKirbyState.unk4C = func_800A8100(2, 1, 0x49, D_800DFBD0[D_8004A7C4->objId][0x12]);
                return;
            }
        } else {
            if (func_80155838_ovl3(&sp3C, 0xC2820000, 3) != 0) {
                sp38 = 1;
            }
            if (sp38 != 0) {
                if (gKirbyState.unk4C == 0) {
                    gKirbyState.unk4C = func_800A8100(2, 1, 0x4A, D_800DFBD0[D_8004A7C4->objId][0x12]);
                    return;
                }
            } else {
                func_8011E0E8();
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80180B58_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80181014_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x2F;
    play_sound(0x22);
    if (func_801ACCA0_ovl3(0x3A, 0, 0x41F00000, 0x41700000) != 0) {
        gKirbyState.abilityInUse = gKirbyState.ability;
    } else {
        gKirbyState.abilityInUse = 0;
    }
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80181014_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801810D0_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801810D0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80181110_ovl3(struct GObj *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    s32 temp_v1_6;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_7;
    void *temp_v0_4;
    f32 phi_f0;
    f32 phi_f0_2;
    s32 phi_v1;
    f32 phi_f2;
    f32 phi_f16;
    f32 phi_f0_3;
    f32 phi_f12;
    f32 phi_f14;

    temp_v0 = D_8004A7C4;
    D_800E9AA0[temp_v0->objId] = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = D_800E9AA0[temp_v0->objId];
    func_8011CF58();
    temp_v0_2 = D_8004A7C4;
    D_800DDFD0[temp_v0_2->objId] = 0x30;
    D_800E6690[temp_v0_2->objId] = 0.0f;
    temp_v1 = temp_v0_2->objId;
    if (D_800E8920[temp_v1] != 0) {
        D_800E3750[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0_2->objId;
        D_800E3210[temp_v1_2] = D_800E3750[temp_v1_2];
        D_800E3C90[temp_v0_2->objId] = D_80197718;
    }
    play_sound(0xBB);
    gKirbyState.unk15C = &D_80190378;
    func_801230E8(0x201BB, 0x201BC, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    ((D_8004A7C4->objId * 4) + 0x800E0000)->unk490 = &D_8019297C;
    gKirbyState.unk15C = &D_80190670;
    func_80122F08(0x20014);
    gKirbyState.unk154 = 1;
    gKirbyState.unk4C = func_800A8100(2, 1, 0x3E, D_800DFBD0[D_8004A7C4->objId][1]);
    gKirbyState.unk50 = func_800A8100(2, 1, 0x3F, D_800DFBD0[D_8004A7C4->objId][2]);
    func_8011DC04(0xC6);
    temp_v0_3 = D_8004A7C4;
    temp_v1_3 = temp_v0_3->objId;
    if ((D_800E8AE0[temp_v1_3] & 6) != 0) {
        temp_f2 = D_800E64D0[temp_v1_3];
        if (temp_f2 < 0.0f) {
            phi_f0 = -temp_f2;
        } else {
            phi_f0 = temp_f2;
        }
        if (phi_f0 > 1.5f) {
            temp_f0 = temp_f2 * 1.5f;
            if (temp_f0 < 0.0f) {
                D_800D7238 = -temp_f0;
            } else {
                D_800D7238 = temp_f0;
            }
        } else {
            D_800D7238 = 5.0f;
        }
    } else {
        temp_f2_2 = D_800E64D0[temp_v1_3];
        if (temp_f2_2 < 0.0f) {
            phi_f0_2 = -temp_f2_2;
        } else {
            phi_f0_2 = temp_f2_2;
        }
        if (phi_f0_2 > 4.0f) {
            temp_f0_2 = temp_f2_2 * 1.5f;
            if (temp_f0_2 < 0.0f) {
                D_800D7238 = -temp_f0_2;
            } else {
                D_800D7238 = temp_f0_2;
            }
        } else {
            D_800D7238 = 7.0f;
        }
    }
    temp_v1_4 = temp_v0_3->objId;
    *(D_800E64D0 + (temp_v1_4 * 4)) = D_800E6A10[temp_v1_4] * D_800D7238;
    temp_v1_5 = temp_v0_3->objId;
    D_800E6690[temp_v1_5] = D_800E6A10[temp_v1_5] * D_8019771C;
    ((temp_v0_3->objId * 4) + 0x800E0000)->unk6850 = 0.0f;
    temp_v1_6 = temp_v0_3->objId * 4;
    temp_f2_3 = *(D_800E64D0 + temp_v1_6);
    phi_v1 = temp_v1_6;
    phi_f2 = temp_f2_3;
    phi_f16 = 0.0f;
    if (0.0f != temp_f2_3) {
loop_20:
        if (gKirbyState.unk17 == 0) {
            temp_v0_4 = D_800E6690 + phi_v1;
            if ((D_800D6FEA & 0x4000) == 0) {
                if ((*(D_800E8AE0 + phi_v1) & 6) != 0) {
                    phi_f12 = 2.0f;
                    phi_f14 = 1.25f;
                } else {
                    phi_f12 = 4.0f;
                    phi_f14 = D_80197720;
                }
                if (phi_f2 < phi_f16) {
                    phi_f0_3 = -phi_f2;
                } else {
                    phi_f0_3 = phi_f2;
                }
                if (phi_f0_3 < phi_f12) {
                    *temp_v0_4 = *temp_v0_4 * phi_f14;
                }
                finish_current_thread(1);
                temp_v1_7 = D_8004A7C4->objId;
                temp_f2_4 = D_800E64D0[temp_v1_7];
                phi_v1 = temp_v1_7 * 4;
                phi_f2 = temp_f2_4;
                phi_f16 = 0.0f;
                if (temp_f2_4 != 0.0f) {
                    goto loop_20;
                }
            }
        }
    }
    func_8011DC5C(ERROR(Read from unset register $f12));
    func_8011E0E8();
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_801230E8(0x201BD, 0x201BE, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80181110_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 func_801815F4_ovl3(struct GObj *arg0) {
    f32 *temp_a1;
    f32 *temp_a1_2;
    f32 *temp_a2;
    f32 temp_f0;
    f32 temp_f12;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v1_5;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_5;
    u32 temp_v0_7;
    void *temp_a0;
    s32 phi_v0;
    s32 phi_v0_2;
    struct GObj *phi_v1;
    s32 phi_v0_3;
    s32 phi_return;
    u32 phi_v0_4;

    temp_v0 = D_8004A7C4->objId;
    D_800E98E0[temp_v0] = D_800E8AE0[temp_v0];
    func_80153AD4_ovl3();
    temp_f12 = D_80197724;
    func_80121828(temp_f12, 0x41800000, temp_f12, 0x41000000);
    if (gKirbyState.unk30 != 0) {
        gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
        func_8011CF58();
        return func_8011D67C();
    }
    if (gKirbyState.unk17 != 0) {
        temp_v1 = D_8004A7C4;
        D_800E6690[temp_v1->objId] = 0.0f;
        temp_v0_2 = temp_v1->objId;
        D_800E64D0[temp_v0_2] = D_800E6690[temp_v0_2];
        D_800E6850[temp_v1->objId] = D_80197728;
    }
    temp_v1_2 = D_8004A7C4;
    temp_v0_3 = temp_v1_2->objId;
    temp_v0_4 = temp_v0_3 * 4;
    phi_v0 = temp_v0_4;
    if ((D_800E8AE0[temp_v0_3] & 6) != 0) {
        temp_a1 = &D_800E64D0[temp_v0_3];
        phi_v0 = temp_v0_4;
        if ((D_800E98E0[temp_v0_3] & 6) == 0) {
            *temp_a1 = *temp_a1 * D_8019772C;
            phi_v0 = temp_v1_2->objId * 4;
        }
    }
    if (gKirbyState.horizontalCollision != 0) {
        phi_v0_3 = phi_v0;
        if (*(D_800E9AA0 + phi_v0) == 0) {
            phi_v0_2 = phi_v0;
            phi_v1 = temp_v1_2;
            if (gKirbyState.abilityInUse != 0) {
                play_sound(0xC7);
                temp_v1_3 = D_8004A7C4;
                phi_v0_2 = temp_v1_3->objId * 4;
                phi_v1 = temp_v1_3;
            }
            temp_a0 = D_800E6690 + phi_v0_2;
            *temp_a0 = -*temp_a0;
            temp_a1_2 = &D_800E64D0[phi_v1->objId];
            *temp_a1_2 = -*temp_a1_2 * D_80197730;
            temp_a2 = &D_800E6A10[phi_v1->objId];
            *temp_a2 = -*temp_a2;
            D_800E9AA0[phi_v1->objId] = 1;
            phi_v0_4 = phi_v1->objId;
block_13:
            phi_v0_3 = phi_v0_4 * 4;
        }
    } else {
        *(D_800E9AA0 + phi_v0) = 0;
        phi_v0_4 = temp_v1_2->objId;
        goto block_13;
    }
    if (*(D_800E8920 + phi_v0_3) != 0) {
        temp_v1_4 = D_8004A7C4;
        gEntitiesAngleXArray[temp_v1_4->objId] = -func_800F8824(D_8012BCAC, *(D_800E17D0 + phi_v0_3));
        temp_v0_5 = temp_v1_4->objId;
        if (D_800E64D0[temp_v0_5] != 0.0f) {
            temp_f0 = gEntitiesAngleXArray[temp_v0_5];
            if (temp_f0 != 0.0f) {
                if (temp_f0 > 0.0f) {
                    D_800E6690[temp_v0_5] = D_800E6A10[temp_v0_5] * D_8019773C;
                } else {
                    D_800E6690[temp_v0_5] = D_800E6A10[temp_v0_5] * D_80197738;
                }
            } else {
                D_800E6690[temp_v0_5] = D_800E6A10[temp_v0_5] * D_8019773C;
            }
        }
        if (D_8012E860 != 0) {
            if (D_8012E818 == 0) {
                func_8011DC04(0xC6);
            }
            if (D_8012E80C == 0) {
                D_8012E80C = func_800A8100(2, 1, 0x3E, D_800DFBD0[D_8004A7C4->objId][1]);
                D_8012E810 = func_800A8100(2, 1, 0x3F, D_800DFBD0[D_8004A7C4->objId][2]);
            }
        }
    } else {
        func_8011E0E8();
        func_8011DC5C(ERROR(Read from unset register $f12));
    }
    temp_v0_6 = D_8012E860;
    phi_return = temp_v0_6;
    if (temp_v0_6 != 0) {
        temp_v0_7 = D_8004A7C4->objId;
        temp_v1_5 = D_800DFBD0[temp_v0_7][1];
        temp_v1_5->unk34 = temp_v1_5->unk34 + ((D_800E64D0[temp_v0_7] * 4.0f * D_80197740) / 180.0f);
        phi_return = func_80111C4C(func_80111A04(&D_8019172C, D_8004A7C4->objId));
        if (D_8012E80C != 0) {
            func_8016854C_ovl3(&D_80191794, D_800DFBD0[D_8004A7C4->objId][2], 0x3F800000);
            phi_return = func_8015449C_ovl3(&D_80194B1C, 0);
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801815F4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80181AF0_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    s32 phi_v0;

    gKirbyState.unk7C = 0.0f;
    temp_v0 = D_8004A7C4;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    D_800E98E0[temp_v0->objId] = 0;
    gKirbyState.unkA = 0;
    if ((D_800E8AE0[temp_v0->objId] & 6) != 0) {
        gKirbyState.unk16 = 0x20;
    } else {
        gKirbyState.unk16 = 0x10;
    }
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x31;
    func_80120A28();
    gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
    func_8011DC04(0xC8);
    func_8011DC30(0xC9);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20015);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201C0, 0x201C1, 0);
    if (func_800AF230() == 0) {
loop_4:
        temp_v0_2 = D_8004A7C4->objId;
        phi_v0 = temp_v0_2 * 4;
        if (D_800E98E0[temp_v0_2] == 0) {
            finish_current_thread(1);
            if (func_800AF230() == 0) {
                goto loop_4;
            }
block_6:
            func_801230E8(0x201C2, 0x201C3, 0);
            temp_v0_3 = D_8004A7C4->objId;
            phi_v0 = temp_v0_3 * 4;
            if (D_800E98E0[temp_v0_3] == 0) {
loop_7:
                finish_current_thread(1);
                temp_v0_4 = D_8004A7C4->objId;
                phi_v0 = temp_v0_4 * 4;
                if (D_800E98E0[temp_v0_4] == 0) {
                    goto loop_7;
                }
            }
        }
    } else {
        goto block_6;
    }
    gKirbyState.unk78 = *(D_800E6A10 + phi_v0);
    func_800AF314();
    func_8011DC5C(ERROR(Read from unset register $f12));
    func_800AA154(0x201C4);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80181AF0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80181CFC_ovl3(struct GObj *arg0) {
    s32 sp2C;
    f32 sp28;
    s32 sp24;
    f32 temp_f0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_t1_2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_t1;
    s32 phi_t0;
    s32 phi_t1;
    s32 phi_a2;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    } else {
        temp_v0 = D_8004A7C4;
        temp_t1 = temp_v0->objId;
        temp_t1_2 = temp_t1 * 4;
        if (D_800E98E0[temp_t1] == 0) {
            if (gKirbyState.unk17 != 0) {
                phi_t0 = 1;
                phi_t1 = temp_t1_2;
            } else if (gKirbyState.unk16 == 0) {
                if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                    phi_t0 = 1;
                    phi_t1 = temp_t1_2;
                } else {
                    phi_t0 = 0;
                    phi_t1 = temp_t1_2;
                    if (gKirbyState.unkA == 4) {
                        phi_t0 = 1;
                        phi_t1 = temp_t1_2;
                    }
                }
            } else {
                phi_t0 = 0;
                phi_t1 = temp_t1_2;
                if ((gKirbyController.buttonHeld & 0x4000) == 0) {
                    gKirbyState.unkA = 4;
                    phi_t0 = 0;
                    phi_t1 = temp_v0->objId * 4;
                }
            }
            temp_f0 = (*(D_800DFBD0 + phi_t1))->unk10->unk40;
            sp2C = phi_t0;
            sp28 = temp_f0;
            func_80152124_ovl3(&D_80194B28, &D_8012E9C8, D_80194C28, temp_f0, 35.0f, 0.0f);
            temp_a2 = func_80168408_ovl3(&D_80191860, 0, temp_f0);
            phi_a2 = temp_a2;
            if (phi_t0 != 0) {
                temp_v0_2 = D_8004A7C4;
                D_800E98E0[temp_v0_2->objId] = 1;
                gKirbyState.unk40 = temp_f0;
                D_800EA6E0[temp_v0_2->objId] = temp_f0 / 8.0f;
                phi_a2 = temp_a2;
            }
        } else {
            func_80152124_ovl3(&D_80194B28, &D_8012E9C8, D_80194C28, (bitwise s32) gKirbyState.unk40, 35.0f, 0.0f);
            temp_a2_2 = func_80168408_ovl3(&D_80191860, 0, (bitwise s32) gKirbyState.unk40);
            gKirbyState.unk40 = gKirbyState.unk40 - D_800EA6E0[D_8004A7C4->objId];
            phi_a2 = temp_a2_2;
        }
        sp24 = phi_a2;
        func_8015449C_ovl3(&D_80194C28, 0, phi_a2);
        func_80111C4C(sp24);
    }
    func_80120CCC(D_80197744, D_80197748);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80181CFC_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80181F64_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80181F64_ovl3.s line 172.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80181F64_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80182658_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 *phi_v0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            D_8012E80C = func_800A8234(2, 1, 0x3A);
            phi_v0 = func_800A8234(2, 1, 0x3B);
        } else {
            D_8012E80C = func_800A8234(2, 1, 0x33);
            phi_v0 = func_800A8234(2, 1, 0x34);
        }
        D_8012E810 = phi_v0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80182658_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8018271C_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018271C_ovl3.s line 186.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018271C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80182D9C_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_v0_3;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    s32 phi_a1;
    s32 *phi_a0;
    s32 phi_v1;

    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unkA = 0;
        gKirbyState.unk80 = gKirbyState.unk7C;
        if ((D_800E8AE0[D_8004A7C4->objId] & 6) != 0) {
            gKirbyState.unk16 = 0x20;
        } else {
            gKirbyState.unk16 = 0x10;
        }
        func_8011CF58();
        temp_v0 = D_8004A7C4;
        temp_f2 = D_80197790;
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[temp_v0->objId] = 0x33;
        D_800E3750[temp_v0->objId] = 0.0f;
        temp_v1 = temp_v0->objId;
        D_800E3210[temp_v1] = D_800E3750[temp_v1];
        D_800E3C90[temp_v0->objId] = temp_f2;
        D_800E6690[temp_v0->objId] = 0.0f;
        temp_v1_2 = temp_v0->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[temp_v0->objId] = temp_f2;
        D_800E9C60[temp_v0->objId] = -1;
        temp_v1_3 = temp_v0->objId;
        temp_a1 = D_800E9C60[temp_v1_3];
        D_800E9AA0[temp_v1_3] = temp_a1;
        D_800E98E0[temp_v0->objId] = temp_a1;
        play_sound(0xBA);
        func_801230E8(0x201EB, 0x201EC, 1);
        gKirbyState.unk3C = 1;
        gKirbyState.unk15C = &D_801907C8;
        func_80122F08(0x2001B);
        gKirbyState.unk154 = 1;
        if (D_800E6A10[D_8004A7C4->objId] == 1.0f) {
            func_800AA154(0x201E5);
        } else {
            func_800AA154(0x201E6);
        }
        temp_v0_2 = D_8004A7C4;
        gKirbyState.unk44 = 1;
        D_800E9560[temp_v0_2->objId] = 3;
        temp_v1_4 = temp_v0_2->objId;
        temp_a0 = &D_800E9560[temp_v1_4];
        temp_a1_2 = *temp_a0;
        phi_a1 = temp_a1_2;
        phi_a0 = temp_a0;
        phi_v1 = temp_v1_4 * 4;
        if (temp_a1_2 != 0) {
loop_8:
            *phi_a0 = phi_a1 - 1;
            if (D_800E6A10[D_8004A7C4->objId] == 1.0f) {
                func_800AA018(0x201E3);
            } else {
                func_800AA018(0x201E4);
            }
            D_800DF310[D_8004A7C4->objId] = &D_801831EC;
            func_800AF27C();
            temp_v1_5 = D_8004A7C4->objId;
            temp_a0_2 = &D_800E9560[temp_v1_5];
            temp_a1_3 = *temp_a0_2;
            phi_a1 = temp_a1_3;
            phi_a0 = temp_a0_2;
            phi_v1 = temp_v1_5 * 4;
            if (temp_a1_3 != 0) {
                goto loop_8;
            }
        }
loop_13:
        if (*(D_800E6A10 + phi_v1) == 1.0f) {
            func_800AA018(0x201E8);
        } else {
            func_800AA018(0x201E7);
        }
loop_16:
        temp_v0_3 = D_800E8920[D_8004A7C4->objId];
        if (temp_v0_3 != 0) {
            finish_current_thread(1);
            goto loop_16;
        }
        if (temp_v0_3 == 0) {
loop_19:
            finish_current_thread(1);
            if (D_800E8920[D_8004A7C4->objId] == 0) {
                goto loop_19;
            }
        }
        play_sound(0x149);
        if (D_800E6A10[D_8004A7C4->objId] == 1.0f) {
            func_800AA154(0x201EA);
        } else {
            func_800AA154(0x201E9);
        }
        phi_v1 = D_8004A7C4->objId * 4;
        goto loop_13;
    }
    play_sound(0x24B);
    gKirbyState.abilityInUse = 0;
    func_8011D614();
    func_800AA154(0x201ED);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80182D9C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801831EC_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 sp2C;
    s32 temp_v0;
    s32 temp_v1;
    struct GObj *temp_a1;
    struct GObj *temp_a1_2;
    struct GObj *temp_a1_3;
    struct GObj *temp_a1_4;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v1_2;
    u32 temp_v1_3;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = func_801ACCA0_ovl3(arg2, 0x39, 0, 0x41F00000, 0x41700000);
        temp_a1 = D_8004A7C4;
        sp2C = temp_v0;
        D_800E98E0[temp_v0] = D_800E9560[temp_a1->objId];
        temp_v1 = D_800E9560[temp_a1->objId];
        if (temp_v1 != 0) {
            if (temp_v1 != 1) {
                if (temp_v1 == 2) {
                    temp_a1_2 = D_8004A7C4;
                    D_800E9C60[temp_a1_2->objId] = random_soft_s32_range(8);
                    D_800E9AA0[sp2C] = D_800E9C60[temp_a1_2->objId];
                    D_800E9720[sp2C] = 0x78;
                }
            } else {
loop_7:
                temp_v0_2 = random_soft_s32_range(8);
                temp_a1_3 = D_8004A7C4;
                D_800D71F8 = temp_v0_2;
                temp_v1_2 = temp_a1_3->objId;
                if (temp_v0_2 == D_800E9C60[temp_v1_2]) {
                    goto loop_7;
                }
                D_800E9AA0[temp_v1_2] = temp_v0_2;
                D_800E9AA0[sp2C] = D_800E9AA0[temp_a1_3->objId];
                D_800E9720[sp2C] = 0x5A;
            }
        } else {
loop_10:
            temp_v0_3 = random_soft_s32_range(8);
            temp_a1_4 = D_8004A7C4;
            D_800D71F8 = temp_v0_3;
            temp_v1_3 = temp_a1_4->objId;
            if (temp_v0_3 == D_800E9C60[temp_v1_3]) {
                goto loop_10;
            }
            if (temp_v0_3 == D_800E9AA0[temp_v1_3]) {
                goto loop_10;
            }
            D_800E98E0[temp_v1_3] = temp_v0_3;
            D_800E9AA0[sp2C] = D_800E98E0[temp_a1_4->objId];
            D_800E9720[sp2C] = 0x3C;
        }
        play_sound(0x53);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801831EC_ovl3.s")
#endif

#ifdef MIPS_TO_C
struct KirbyState *func_80183428_ovl3(struct GObj *arg0) {
    s32 sp1C;
    u32 temp_a0;
    s32 phi_v1;
    struct KirbyState *phi_return;

    sp1C = 0;
    func_80153984_ovl3();
    func_8011CF58();
    func_80121658();
    temp_a0 = gKirbyState.unk44;
    phi_v1 = sp1C;
    if (temp_a0 != 2) {
        if (gKirbyState.unk17 != 0) {
            phi_v1 = 1;
        } else if (gKirbyState.unk16 == 0) {
            if ((D_800D6FEA & 0x4000) != 0) {
                phi_v1 = 1;
            } else {
                phi_v1 = sp1C;
                if (gKirbyState.unkA == 4) {
                    phi_v1 = 1;
                }
            }
        } else {
            phi_v1 = sp1C;
            if ((D_800D6FEA & 0x4000) != 0) {
                gKirbyState.unkA = 4;
                phi_v1 = sp1C;
            }
        }
    }
    if ((phi_v1 != 0) && (temp_a0 != 2)) {
        gKirbyState.unk44 = 2;
        assign_new_process_entry(*(&gEntityGObjProcessArray + (D_8004A7C4->objId * 4)), &D_8016C510, 2);
    }
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C(ERROR(Read from unset register $f12));
        func_8011E0E8();
        gEntitiesAngleXArray[D_8004A7C4->objId] = 0.0f;
        return func_8011D67C();
    }
    if (gKirbyState.unk3C != 0) {
        phi_return = func_8016854C_ovl3(&D_80191950, D_800DFBD0[D_8004A7C4->objId][1], 0x3F800000);
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80183428_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801835AC_ovl3(struct GObj *arg0) {
    s32 temp_a0_5;
    s32 temp_v0;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    struct GObj *temp_v1_3;
    struct GObj *temp_v1_4;
    struct GObj *temp_v1_5;
    u32 temp_a0;
    u32 temp_a0_2;
    u32 temp_a0_3;
    u32 temp_a0_4;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f0_4;
    struct GObj *phi_v1;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    D_800E9720[D_8004A7C4->objId] = 0x14;
    func_8011CF58();
    temp_v1 = D_8004A7C4;
    D_800DDFD0[temp_v1->objId] = 0x34;
    D_800E0490[temp_v1->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    func_80122F08(0x2001D);
    gKirbyState.unk154 = 2;
    func_80120A28();
    temp_v1_2 = D_8004A7C4;
    D_800E83E0[temp_v1_2->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[temp_v1_2->objId];
    D_800E9560[temp_v1_2->objId] = 0x19;
    gKirbyState.unk4C = func_800A8234(2, 1, 0x3D);
    func_800AA154(0x201F6);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_8011DC04(0xC3);
    gKirbyState.unk40 = D_80197794;
    func_801693C4_ovl3(0xB);
    gKirbyState.unk15C = 0;
    temp_v1_3 = D_8004A7C4;
    temp_a0 = temp_v1_3->objId;
    D_800EA6E0[temp_a0] = D_800DFBD0[temp_a0][2]->unk20;
    temp_a0_2 = temp_v1_3->objId;
    if ((D_800E8AE0[temp_a0_2] & 6) == 0) {
        phi_f0 = 0.25f;
    } else {
        phi_f0 = 0.125f;
    }
    D_800E6690[temp_a0_2] = phi_f0 * D_800E6A10[temp_a0_2];
    temp_a0_3 = temp_v1_3->objId;
    temp_v0 = D_800E8AE0[temp_a0_3] & 6;
    if (temp_v0 == 0) {
        phi_f0_2 = 5.0f;
    } else {
        phi_f0_2 = 2.5f;
    }
    if (phi_f0_2 < 0.0f) {
        if (temp_v0 == 0) {
            phi_f0_3 = 5.0f;
        } else {
            phi_f0_3 = 2.5f;
        }
        D_800E6850[temp_a0_3] = -phi_f0_3;
    } else {
        if (temp_v0 == 0) {
            phi_f0_4 = 5.0f;
        } else {
            phi_f0_4 = 2.5f;
        }
        D_800E6850[temp_a0_3] = phi_f0_4;
    }
    func_800AA018(0x201F7);
    temp_v1_4 = D_8004A7C4;
    D_800E6310[temp_v1_4->objId] = 0;
    phi_v1 = temp_v1_4;
    if ((D_800D6FEA & 0x4000) == 0) {
loop_16:
        temp_v1_5 = D_8004A7C4;
        phi_v1 = temp_v1_5;
        if (gKirbyState.unk17 == 0) {
            phi_v1 = temp_v1_5;
            if (gKirbyState.horizontalCollision == 0) {
                temp_a0_4 = temp_v1_5->objId;
                phi_v1 = temp_v1_5;
                if (D_800E83E0[temp_a0_4] == 0) {
                    phi_v1 = temp_v1_5;
                    if (D_800E6310[temp_a0_4] == 0) {
                        finish_current_thread(1);
                        if ((D_800D6FEA & 0x4000) == 0) {
                            goto loop_16;
                        }
                        phi_v1 = D_8004A7C4;
                    }
                }
            }
        }
    }
    D_800E6690[phi_v1->objId] = 0.0f;
    temp_a0_5 = phi_v1->objId;
    D_800E64D0[temp_a0_5] = D_800E6690[temp_a0_5];
    D_800E6850[phi_v1->objId] = D_80197798;
    func_8011D614();
    func_8011DC5C(ERROR(Read from unset register $f12));
    func_8011E0E8();
    gKirbyState.abilityInUse = 0;
    D_800E9560[D_8004A7C4->objId] = 0;
    play_sound(0xC5);
    func_800A8100(2, 1, 0x38, D_800DFBD0[D_8004A7C4->objId][0xE]);
    func_800A8100(2, 1, 0x39, D_800DFBD0[D_8004A7C4->objId][0xE]);
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    func_801230E8(0x2018A, 0x2018B, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801835AC_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80183A1C_ovl3(struct GObj *arg0) {
    f32 sp4C;
    u32 sp48;
    f32 *temp_v0_3;
    s32 *temp_a0_2;
    s32 *temp_v0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    struct GObj *temp_a2;
    u32 temp_v0_2;
    u32 temp_v1;
    void *temp_a0_3;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_v0_6;
    struct GObj **phi_t0;
    f32 phi_f0;
    f32 phi_f0_2;
    f32 phi_f0_3;
    f32 phi_f0_4;

    func_80153984_ovl3();
    func_8011CF58();
    if (func_80121658() != 0) {
        if (D_8012E860 != 0) {
            play_sound(0x11F);
        } else {
            play_sound(0x149);
        }
    }
    if (gKirbyState.unk30 != 0) {
        func_8011D67C();
    } else {
        temp_a2 = D_8004A7C4;
        temp_v0 = &D_800E9560[temp_a2->objId];
        temp_a0 = *temp_v0;
        phi_t0 = &D_8004A7C4;
        if (temp_a0 != 0) {
            *temp_v0 = temp_a0 - 1;
            temp_v1 = temp_a2->objId;
            if (D_800E9560[temp_v1] == 0) {
                func_8011E0E8();
            } else {
                temp_v0_2 = gKirbyState.unk4C;
                sp48 = temp_v0_2;
                func_800B2340(&sp4C, D_800DFBD0[temp_v1][2], 0xFFFF, &gKirbyState);
                temp_v0_2->unk4C->unk4 = sp4C;
                temp_v0_2->unk4C->unk8 = sp50;
                temp_v0_2->unk4C->unkC = sp54;
            }
            phi_t0 = &D_8004A7C4;
            if (D_8012E860 != 0) {
                temp_a2_2 = D_8004A7C4;
                temp_a0_2 = &D_800E9720[*temp_a2_2];
                temp_a1 = *temp_a0_2;
                phi_t0 = &D_8004A7C4;
                if (temp_a1 != 0) {
                    *temp_a0_2 = temp_a1 - 1;
                    temp_v1_2 = *temp_a2_2;
                    D_800DFBD0[temp_v1_2][2]->unk20 = D_800EA6E0[temp_v1_2];
                    temp_v0_3 = &D_800EA6E0[*D_8004A7C4];
                    *temp_v0_3 = *temp_v0_3 + 7.5f;
                    phi_t0 = &D_8004A7C4;
                }
            }
        }
        if (gKirbyState.abilityInUse != 0) {
            temp_a2_3 = *phi_t0;
            temp_v1_3 = *temp_a2_3;
            temp_v0_4 = D_800DFBD0[temp_v1_3][2];
            if ((D_800E8AE0[temp_v1_3] & 6) != 0) {
                D_800D7238 = D_8019779C;
            } else {
                D_800D7238 = D_80196690;
            }
            if (D_800E6A10[*temp_a2_3] == 1.0f) {
                temp_v0_4->unk38 = temp_v0_4->unk38 - D_800D7238;
            } else {
                temp_v0_4->unk38 = temp_v0_4->unk38 + D_800D7238;
            }
            temp_a2_4 = *phi_t0;
            temp_v1_4 = *temp_a2_4;
            if ((D_800E8AE0[temp_v1_4] & 6) == 0) {
                phi_f0 = 0.25f;
            } else {
                phi_f0 = 0.125f;
            }
            *((temp_v1_4 * 4) + 0x800E0000) = phi_f0 * D_800E6A10[temp_v1_4];
            temp_v1_5 = *temp_a2_4;
            temp_v0_5 = D_800E8AE0[temp_v1_5] & 6;
            if (temp_v0_5 == 0) {
                phi_f0_2 = 5.0f;
            } else {
                phi_f0_2 = 2.5f;
            }
            if (phi_f0_2 < 0.0f) {
                if (temp_v0_5 == 0) {
                    phi_f0_3 = 5.0f;
                } else {
                    phi_f0_3 = 2.5f;
                }
                D_800E6850[temp_v1_5] = -phi_f0_3;
            } else {
                if (temp_v0_5 == 0) {
                    phi_f0_4 = 5.0f;
                } else {
                    phi_f0_4 = 2.5f;
                }
                D_800E6850[temp_v1_5] = phi_f0_4;
            }
            temp_v0_6 = func_80111574(2.5f, &D_8019071C, *temp_a2_4, temp_a2_4, &gKirbyState);
            temp_a0_3 = temp_v0_6;
            temp_v0_6->unk20->unk18 = 35.0f * D_8012E800;
            temp_v0_6->unk20->unk10 = 38.0f * D_8012E800;
            func_80111C4C(temp_a0_3);
        } else if (func_800AA888(0x20007, D_800E6A10) != 0) {
            func_8015449C_ovl3(&D_80195058, 0);
            func_80111C4C(func_80111A04(&D_801917D8, D_8004A7C4->objId));
        }
    }
    func_80120CCC(D_801977A4, D_801977A8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80183A1C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80183E38_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    u32 temp_v1;
    u32 temp_v1_2;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk3C = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x35;
    D_800E0490[temp_v0->objId] = &D_801929B4;
    gKirbyState.unk15C = &D_80190358;
    func_80122F08(0x20018);
    gKirbyState.unk154 = 1;
    temp_v0_2 = D_8004A7C4;
    temp_v1 = temp_v0_2->objId;
    if (D_800E8920[temp_v1] == 1) {
        D_800E6690[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0_2->objId;
        D_800E64D0[temp_v1_2] = D_800E6690[temp_v1_2];
        D_800E6850[temp_v0_2->objId] = D_801977AC;
        gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
    }
    func_8011DC04(0x13B);
    func_8011DC30(0x13C);
    gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
    func_800AA154(0x201D3);
    func_800AA154(0x201D4);
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    func_800AA154(0x201D5);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80183E38_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80183FF4_ovl3(struct GObj *arg0) {
    s32 sp4C;
    f32 sp48;
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 *temp_a0;
    f32 *temp_v1_2;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    s32 temp_v0;
    s32 temp_v1_7;
    struct GObj *temp_a3;
    struct GObj *temp_a3_2;
    struct GObj *temp_a3_3;
    struct GObj *temp_a3_4;
    u32 temp_v1;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    void *temp_v0_2;
    void *temp_v0_3;
    s32 phi_t0;
    struct KirbyState *phi_t1;
    struct KirbyState *phi_t1_2;
    f32 phi_f2;
    f32 phi_at;
    s32 phi_v1;
    f32 phi_f0;
    s32 phi_v1_2;
    f32 phi_f0_2;
    u32 phi_v1_3;
    f32 phi_f12;

    temp_v1 = D_8004A7C4->objId;
    sp4C = 0;
    D_800E98E0[temp_v1] = D_800E8AE0[temp_v1];
    func_80153AD4_ovl3();
    temp_a3 = D_8004A7C4;
    temp_v1_2 = &gEntitiesNextPosYArray[temp_a3->objId];
    *temp_v1_2 = *temp_v1_2 - D_800EC9E4;
    if (gKirbyState.horizontalCollision != 0) {
block_5:
        phi_t0 = 1;
    } else {
        temp_a0 = &sp38;
        sp38 = gEntitiesNextPosXArray[temp_a3->objId];
        sp40 = gEntitiesNextPosZArray[temp_a3->objId];
        sp4C = sp4C;
        sp3C = gEntitiesNextPosYArray[temp_a3->objId];
        if (func_80155838_ovl3(temp_a0, 0x41A00000, 4, temp_a3) != 0) {
            goto block_5;
        } else {
            sp4C = sp4C;
            sp3C = sp3C + 40.0f;
            phi_t0 = sp4C;
            phi_t1 = &gKirbyState;
            if (func_80155838_ovl3(&sp38, 0x41A00000, 4) != 0) {
                goto block_5;
            }
        }
    }
    if ((phi_t0 != 0) || (temp_v0 = phi_t1->ceilingCollisionNext, (temp_v0 != 0))) {
        temp_a3_2 = D_8004A7C4;
        D_800E6690[temp_a3_2->objId] = 0.0f;
        temp_v1_3 = temp_a3_2->objId;
        D_800E64D0[temp_v1_3] = D_800E6690[temp_v1_3];
        D_800E6850[temp_a3_2->objId] = D_801977B0;
        D_800E3750[temp_a3_2->objId] = 0.0f;
        temp_v1_4 = temp_a3_2->objId;
        D_800E3210[temp_v1_4] = D_800E3750[temp_v1_4];
        D_800E3C90[temp_a3_2->objId] = D_801977B4;
        phi_t1->unk3C = 1;
        phi_t1->isTurning = phi_t1->isTurning | 0x4000;
    } else if ((temp_v0 == 0) && (phi_t0 == 0)) {
        phi_t1->unk3C = 0;
    }
    phi_t1_2 = phi_t1;
    if (phi_t1->unk3C == 0) {
        phi_t1_2 = &gKirbyState;
        if (func_80121658() != 0) {
            temp_a3_3 = D_8004A7C4;
            D_800E6690[temp_a3_3->objId] = 0.0f;
            temp_v1_5 = temp_a3_3->objId;
            D_800E64D0[temp_v1_5] = D_800E6690[temp_v1_5];
            D_800E6850[temp_a3_3->objId] = D_801977B8;
            play_sound(0x13E);
            gKirbyState.isTurning = gKirbyState.isTurning | 0x4000;
            phi_t1_2 = &gKirbyState;
        }
    }
    if (phi_t1_2->unk30 != 0) {
        func_8011DC5C(ERROR(Read from unset register $f12));
        func_8011D67C();
        gKirbyState.isTurning = gKirbyState.isTurning & ~0x4000;
        return;
    }
    func_80120CCC(D_801977BC, D_801977C0);
    temp_a3_4 = D_8004A7C4;
    temp_v1_6 = temp_a3_4->objId;
    temp_v1_7 = temp_v1_6 * 4;
    phi_v1_2 = temp_v1_7;
    if (D_800E8920[temp_v1_6] == 0) {
        phi_v1_2 = temp_v1_7;
        if (gKirbyState.unk3C == 0) {
            temp_f0 = D_800E64D0[temp_v1_6] * 1.5f;
            if (temp_f0 < 0.0f) {
                phi_f2 = -temp_f0;
            } else {
                phi_f2 = temp_f0;
            }
            if (gKirbyState.unk7 != 0) {
                phi_f0_2 = *0x80190000;
            } else {
                if (phi_f2 < 2.0f) {
                    phi_f12 = 3.0f;
                } else {
                    phi_f12 = phi_f2;
                }
                phi_f0_2 = (phi_f12 * D_801977C8) / 180.0f;
            }
            phi_v1 = temp_v1_7;
            phi_f0 = phi_f0_2;
            if ((D_800E8AE0[temp_v1_6] & 6) != 0) {
                temp_f0_2 = phi_f0_2 * 0.5f;
                if ((D_800E98E0[temp_v1_6] & 6) == 0) {
                    phi_at = (bitwise f32) &D_BF8077CC;
                    phi_v1 = temp_v1_7;
                    phi_f0 = temp_f0_2;
                } else {
                    D_800E6690[temp_v1_6] = D_80196690;
                    D_800E6850[temp_a3_4->objId] = 0.0f;
                    phi_v1 = temp_a3_4->objId * 4;
                    phi_f0 = temp_f0_2;
block_33:
                    phi_at = -1.0f;
                }
            } else {
                goto block_33;
            }
            if (phi_at == *(D_800E6A10 + phi_v1)) {
                temp_v0_2 = (*(D_800DFBD0 + phi_v1))->unk4;
                temp_v0_2->unk38 = temp_v0_2->unk38 + phi_f0;
                phi_v1_3 = D_8004A7C4->objId;
            } else {
                temp_v0_3 = (*(D_800DFBD0 + phi_v1))->unk4;
                temp_v0_3->unk38 = temp_v0_3->unk38 - phi_f0;
                phi_v1_3 = D_8004A7C4->objId;
            }
            phi_v1_2 = phi_v1_3 * 4;
        }
    }
    temp_f0_3 = (*(D_800DFBD0 + phi_v1_2))->unk28->unk44;
    sp48 = temp_f0_3;
    func_80152124_ovl3(&D_80194910, &D_8012E9C8, D_80194A10, temp_f0_3, 25.0f, 0.0f);
    sp44 = func_80168408_ovl3(&D_80191994, 0, temp_f0_3);
    func_8015449C_ovl3(&D_80194A10, 0);
    func_80111C4C(sp44);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80183FF4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80184538_ovl3(struct GObj *arg0) {
    f32 temp_f2;
    s32 *temp_v0_2;
    s32 temp_v1;
    struct GObj *temp_v0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_s0;
    u32 phi_s0;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk30 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    func_8011CF58();
    temp_v0 = D_8004A7C4;
    temp_f2 = D_801977D0;
    D_800DDFD0[temp_v0->objId] = 0x36;
    D_800E3750[temp_v0->objId] = 0.0f;
    temp_a1 = temp_v0->objId;
    D_800E3210[temp_a1] = D_800E3750[temp_a1];
    D_800E3C90[temp_v0->objId] = temp_f2;
    D_800E6690[temp_v0->objId] = 0.0f;
    temp_a1_2 = temp_v0->objId;
    D_800E64D0[temp_a1_2] = D_800E6690[temp_a1_2];
    D_800E6850[temp_v0->objId] = temp_f2;
    D_800E83E0[temp_v0->objId] = 0;
    gKirbyState.unk78 = -D_800E6A10[temp_v0->objId];
    play_sound(0x24);
    D_800E9720[D_8004A7C4->objId] = 0x2D;
    func_801230E8(0x201DD, 0x201DE, 1);
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_80122F08(0x20019);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201D7, 0x201D8, 1);
    gKirbyState.unk15C = &D_8019080C;
    func_801230E8(0x201DB, 0x201DC, 0);
loop_1:
    if ((gKirbyState.unk17 == 0) && ((gKirbyController.buttonPressed & 0x4000) == 0)) {
        temp_a1_3 = D_8004A7C4->objId;
        temp_v0_2 = &D_800E9720[temp_a1_3];
        if (D_800E83E0[temp_a1_3] == 0) {
            temp_v1 = *temp_v0_2;
            *temp_v0_2 = temp_v1 - 1;
            if (temp_v1 != 0) {
                finish_current_thread(1);
                goto loop_1;
            }
        }
    }
    play_sound(0x25);
    func_801230E8(0x201D9, 0x201DA, 1);
    gKirbyState.abilityInUse = 0;
    func_800BB468(6, 0x10);
    phi_s0 = 0;
loop_7:
    D_800EC2E0[func_801632B8_ovl3(6)] = phi_s0;
    temp_s0 = phi_s0 + 1;
    phi_s0 = temp_s0;
    if (temp_s0 != 8) {
        goto loop_7;
    }
    D_800DFBD0[D_8004A7C4->objId][2]->unk80->unk5B = 0xFF;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_80122F08(0x20016);
    gKirbyState.unk154 = 2;
    gKirbyState.unk4C = func_800A8100(1, 1, 0x22, D_800DFBD0[D_8004A7C4->objId][2]);
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    func_800AA154(0x201C5);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80184538_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801848A4_ovl3(struct GObj *arg0) {
    s32 temp_a0;
    s32 temp_v1_2;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    u16 temp_v1;
    struct GObj *phi_v0;
    s32 phi_a0;

    func_80153984_ovl3();
    if (gKirbyState.unk30 != 0) {
        func_801217B8(&gKirbyState);
        if (gKirbyState.unk30 == 2) {
block_3:
            func_8011E0E8();
            func_8011D67C();
            return;
        }
        if (D_800E8920[D_8004A7C4->objId] != 0) {
            goto block_3;
        }
    } else {
        temp_v1 = gKirbyController.buttonHeld;
        if ((temp_v1 & 0x300) != 0) {
            if ((temp_v1 & 0x100) != 0) {
                temp_v0 = D_8004A7C4;
                D_800E6690[temp_v0->objId] = 0.5f;
                D_800E6850[temp_v0->objId] = 2.0f;
                phi_v0 = temp_v0;
            } else {
                temp_v0_2 = D_8004A7C4;
                D_800E6690[temp_v0_2->objId] = -0.5f;
                D_800E6850[temp_v0_2->objId] = 2.0f;
                phi_v0 = temp_v0_2;
            }
        } else {
            temp_v0_3 = D_8004A7C4;
            D_800E6850[temp_v0_3->objId] = 0.0f;
            phi_v0 = temp_v0_3;
        }
        if ((temp_v1 & 0xC00) != 0) {
            if ((temp_v1 & 0x800) != 0) {
                D_800E8920[phi_v0->objId] = 0;
                D_800E3750[phi_v0->objId] = 0.5f;
                *((phi_v0->objId * 4) + 0x800E0000) = 1.0f;
            } else {
                D_800E3750[phi_v0->objId] = -0.5f;
                D_800E3C90[phi_v0->objId] = 2.0f;
            }
        } else {
            D_800E3C90[phi_v0->objId] = 0.0f;
        }
        phi_a0 = &gKirbyState;
        if (gKirbyState.abilityInUse != 0) {
            temp_v1_2 = phi_v0->objId;
            temp_a0 = D_800E9720[temp_v1_2];
            if ((temp_a0 == 3) || (temp_a0 == 1)) {
                D_800DFBD0[temp_v1_2][2]->unk80->unk5B = 0;
                phi_a0 = temp_a0;
            } else {
                D_800DFBD0[temp_v1_2][2]->unk80->unk5B = 0xFF;
                phi_a0 = temp_a0;
            }
        }
        func_80120CCC(D_801977D4, D_801977D8, phi_a0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801848A4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80184B24_ovl3(struct GObj *arg0) {
    s32 temp_t2;
    struct GObj *temp_v0;

    gKirbyState.unk30 = 0;
    D_8019883C = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    temp_v0 = D_8004A7C4;
    D_800DDFD0[temp_v0->objId] = 0x37;
    D_800E0490[temp_v0->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    func_80120A28();
    func_80122F08(0x2001A);
    gKirbyState.unk154 = 2;
    func_801693C4_ovl3(0xC);
    gKirbyState.unk44 = 0;
    if (0 < 3) {
loop_2:
        play_sound(0xBB);
        func_800AA154(*(&D_80196DA8 + (gKirbyState.unk44 * 4)));
        if ((gKirbyController.buttonHeld & 0x4000) != 0) {
            temp_t2 = gKirbyState.unk44 + 1;
            gKirbyState.unk44 = temp_t2;
            if (temp_t2 < 3) {
                goto loop_2;
            }
        }
    }
    gKirbyState.unk44 = -1;
    func_800AA154(0x201E2);
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80184B24_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80184C64_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80184C64_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80184CA4_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80184CA4_ovl3.s line 174.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80184CA4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80185180_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    u32 temp_v0;
    u32 temp_v1;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = D_8004A7C4->objId;
        temp_v1 = D_800E8AE0[temp_v0];
        if ((temp_v1 & 7) != 0) {
            if ((temp_v1 & 2) == 0) {
                play_sound(9);
                return;
            }
            play_sound(0x10C);
            return;
        }
        if (D_800E8920[temp_v0] != 0) {
            play_sound(0x267);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185180_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 *func_80185224_ovl3(struct GObj *arg0) {
    f32 sp3C;
    f32 *temp_v0_2;
    f32 *temp_v0_3;
    f32 *temp_v0_5;
    f32 *temp_v0_6;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 *temp_ret;
    s32 *temp_v0_7;
    s32 temp_v0_4;
    struct GObj *temp_a0;
    struct GObj *temp_a0_2;
    u32 temp_a2;
    u32 temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;
    f32 phi_f2;
    f32 phi_f2_2;
    f32 phi_f2_3;
    f32 *phi_v0;
    s32 *phi_return;
    f32 phi_f0;

    func_80153AD4_ovl3();
    func_8011CF58();
    if (gKirbyState.unk30 != 0) {
        func_8011DC5C(ERROR(Read from unset register $f12));
        func_8011E0E8();
        return func_8011D67C();
    }
    temp_v0 = gKirbyState.unk44;
    if (temp_v0 != 1) {
        if (temp_v0 != 2) {
            if (temp_v0 != 3) {
                phi_return = func_801217B8();
            } else {
block_17:
                if ((gKirbyState.isTurning & 1) == 0) {
                    func_801219C8();
                    if ((gKirbyState.isTurning & 1) != 0) {
                        temp_v0_3 = &D_800E6690[D_8004A7C4->objId];
                        *temp_v0_3 = -*temp_v0_3;
                    }
                }
                if ((D_800E8920[D_8004A7C4->objId] != 0) && ((D_800D6FEA & 0x8000) != 0)) {
                    gKirbyState.unk44 = 2;
                }
                func_801217B8();
block_24:
                func_80120AF8(&sp3C);
                temp_a0 = D_8004A7C4;
                temp_v1 = temp_a0->objId;
                ((temp_v1 * 4) + 0x800E0000)->unk6690 = D_800E6A10[temp_v1] * (0.625f * sp40);
                temp_v1_2 = temp_a0->objId;
                temp_v0_4 = D_800E8AE0[temp_v1_2] & 6;
                if (temp_v0_4 == 0) {
                    temp_f0 = 6.0f * sp3C;
                    phi_f2 = temp_f0;
                    phi_f0 = temp_f0;
                } else {
                    temp_f0_2 = 6.0f * sp3C;
                    phi_f2 = temp_f0_2 * 0.5f;
                    phi_f0 = temp_f0_2;
                }
                if (phi_f2 < 0.0f) {
                    if (temp_v0_4 == 0) {
                        phi_f2_2 = phi_f0;
                    } else {
                        phi_f2_2 = phi_f0 * 0.5f;
                    }
                    D_800E6850[temp_v1_2] = -phi_f2_2;
                } else {
                    if (temp_v0_4 == 0) {
                        phi_f2_3 = phi_f0;
                    } else {
                        phi_f2_3 = phi_f0 * 0.5f;
                    }
                    D_800E6850[temp_v1_2] = phi_f2_3;
                }
                temp_a2 = temp_a0->objId;
                if (D_800E6310[temp_a2] != 0) {
                    D_800E64D0[temp_a2] = 0.0f;
block_43:
                } else {
                    temp_v0_5 = &D_800E64D0[temp_a2];
                    if ((gKirbyState.leftCollisionNext == 0) || (phi_v0 = temp_v0_5, !(*temp_v0_5 < 0.0f))) {
                        temp_v0_6 = &D_800E64D0[temp_a2];
                        if (gKirbyState.rightCollisionNext != 0) {
                            phi_v0 = temp_v0_6;
                            if (*temp_v0_6 > 0.0f) {
block_42:
                                *phi_v0 = 0.0f;
                                goto block_43;
                            }
                        }
                    } else {
                        goto block_42;
                    }
                }
                func_80111C4C(func_80111A04(0.5f, &D_80191A40, temp_a0->objId, temp_a0->objId, &gKirbyState));
                temp_a0_2 = D_8004A7C4;
                temp_v0_7 = &D_800E9720[temp_a0_2->objId];
                *temp_v0_7 = *temp_v0_7 - 1;
                if ((D_800E9720[temp_a0_2->objId] == 0) || (phi_return = temp_v0_7, (gKirbyState.unk17 != 0))) {
                    gKirbyState.unk44 = 4;
                    phi_return = temp_v0_7;
                }
            }
        } else {
            if (D_800E8920[D_8004A7C4->objId] != 0) {
                gKirbyState.isFullJump = 0;
                gKirbyState.jumpHeight = 0;
                gKirbyState.unk44 = 1;
            } else {
                if (((gKirbyState.isTurning & 1) == 0) && (func_80121194() != 0)) {
                    gKirbyState.isTurning = gKirbyState.isTurning | 1;
                }
                if (gKirbyState.ceilingCollisionNext != 0) {
                    gKirbyState.isFullJump = 1;
                    temp_v0_2 = &D_800E3210[D_8004A7C4->objId];
                    if (*temp_v0_2 > 0.0f) {
                        *temp_v0_2 = 0.0f;
                    }
                    gKirbyState.unk44 = 3;
                }
                if (gKirbyState.isFullJump == 0) {
                    func_8011EBD4();
                }
            }
            goto block_24;
        }
    } else {
        goto block_17;
    }
    if (gKirbyState.unk3C != gKirbyState.unk44) {
        temp_ret = assign_new_process_entry(*(&gEntityGObjProcessArray + (D_8004A7C4->objId * 4)), &D_8016C510);
        gKirbyState.unk3C = gKirbyState.unk44;
        phi_return = temp_ret;
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185224_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_801856A4_ovl3(struct GObj *arg0) {
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x39;
    gKirbyState.abilityInUse = gKirbyState.ability;
    func_801693C4_ovl3(0xE);
    func_801632B8_ovl3(8);
    func_80122F08(0x20008);
    func_801230E8(0x20150, 0x20151, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_801856A4_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80185748_ovl3(struct GObj *arg0) {
    func_80153984_ovl3();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185748_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80185788_ovl3(struct GObj *arg0) {
    struct GObj *temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;

    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    temp_v0 = D_8004A7C4;
    D_800E9560[temp_v0->objId] = 0;
    temp_v1 = temp_v0->objId;
    if ((D_800E8AE0[temp_v1] & 6) != 0) {
        D_800E9720[temp_v1] = 0x12;
    } else {
        D_800E9720[temp_v1] = 9;
    }
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[D_8004A7C4->objId] = 0x3A;
    func_80120A28();
    func_801230E8(0x201F2, 0x201F3, 1);
    func_80122F08(0x2001C);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F0, 0x201F1, 0);
    temp_v1_2 = D_8004A7C4->objId;
    if ((D_800E8AE0[temp_v1_2] & 6) != 0) {
        D_800E9560[temp_v1_2] = 0xB;
        finish_current_thread(6);
    } else {
        D_800E9560[temp_v1_2] = 5;
    }
    play_sound(0x5A);
    D_800EC2E0[func_801693C4_ovl3(0xF)] = 0;
    D_800EC2E0[func_801693C4_ovl3(0xF)] = 1;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    func_80122F08(0x20007);
    gKirbyState.unk154 = 2;
    func_801230E8(0x201F4, 0x201F5, 1);
    gKirbyState.unk30 = gKirbyState.unk30 + 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185788_ovl3.s")
#endif

#ifdef MIPS_TO_C
s32 *func_80185968_ovl3(struct GObj *arg0) {
    s32 *temp_v0_3;
    s32 *temp_v1;
    s32 temp_a0;
    struct GObj *temp_v0;
    struct GObj *temp_v0_2;
    struct GObj *phi_v0;
    s32 *phi_return;

    func_80153984_ovl3();
    func_801217B8();
    if (gKirbyState.unk30 != 0) {
        return func_8011D67C();
    }
    phi_return = &D_8004A7C4;
    if (gKirbyState.abilityInUse != 0) {
        temp_v0 = D_8004A7C4;
        temp_v1 = &D_800E9720[temp_v0->objId];
        temp_a0 = *temp_v1;
        if (temp_a0 == 0) {
            func_8015449C_ovl3(&D_801953CC, 0);
            func_80111C4C(func_80111A04(&D_80191B54, D_8004A7C4->objId));
            temp_v0_2 = D_8004A7C4;
            phi_v0 = temp_v0_2;
            phi_return = temp_v0_2;
        } else {
            *temp_v1 = temp_a0 - 1;
            phi_v0 = temp_v0;
            phi_return = temp_v0;
        }
        if (D_800E9560[phi_v0->objId] != 0) {
            func_8015449C_ovl3(&D_801953E8, 0);
            func_80111C4C(func_80111A04(&D_80191BBC, D_8004A7C4->objId));
            temp_v0_3 = &D_800E9560[D_8004A7C4->objId];
            *temp_v0_3 = *temp_v0_3 - 1;
            phi_return = temp_v0_3;
        }
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185968_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80185A9C_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80185A9C_ovl3.s line 136.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80185A9C_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80186248_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80186248_ovl3.s line 91.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80186248_ovl3.s")
#endif


// s32 func_801693C4_ovl3(s32);
s32 func_801210B4(void);

// regalloc
// this file sucks
#ifdef NON_MATCHING
void func_80186750_ovl3(struct GObj *arg0) {
    if (gKirbyState.abilityInUse == 0) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk7 = 0;
        gKirbyState.unk7C = 0.0f;
        gKirbyState.unk80 = gKirbyState.unk7C;
        func_8011CF58();
        gKirbyState.abilityInUse = gKirbyState.ability;
        D_800DDFD0[D_8004A7C4->objId] = 0x3C;
        D_800E0490[D_8004A7C4->objId] = &D_801926E8;
        gKirbyState.unk15C = &D_80190358;
        gKirbyState.unk154 = 2;
        D_800E98E0[D_8004A7C4->objId] = 0;
        gKirbyState.unk40 = D_80197840;
        gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
        D_800EC2E0[func_801693C4_ovl3(0x11)] = 0;
        D_800EC2E0[func_801693C4_ovl3(0x11)] = 1;
        func_80120A28();
        gKirbyState.unk3C = 0;
        gKirbyState.unk44 = 0;
        func_801230E8(0x2007F, 0x20080, 1);
        D_800E9560[D_8004A7C4->objId] = 0;
        if ((gKirbyController.buttonHeld & 0x300) != 0) {
            gKirbyState.unk44 =
            gKirbyState.unk3C = 3;
        } else {
            gKirbyState.unk44 =
            gKirbyState.unk3C = 2;
        }
    }
    switch (gKirbyState.unk44) {
        case 2:
            func_801230E8(0x2007D, 0x2007E, 1);
            func_800AFA14();
        case 3:
            if (func_801210B4() == 1) {
                D_800E6690[D_8004A7C4->objId] = 0.25f;
                D_800E6850[D_8004A7C4->objId] = 2.0f;
            } else {
                D_800E6690[D_8004A7C4->objId] = -0.25f;
                D_800E6850[D_8004A7C4->objId] = 2.0f;
            }
            func_801230E8(0x20083, 0x20084, 0);
            func_800AFA14();
        case 1:
            gKirbyState.abilityInUse = 0;
            gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
            func_801230E8(0x20081, 0x20082, 1);
    }
    gKirbyState.unk30++;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80186750_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80186A20_ovl3:

Label L80186BF8_ovl3 refers to a delay slot; this is currently not supported.
Please modify the assembly to work around it (e.g. copy the instruction
to all jump sources and move the label, or add a nop to the delay slot).
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80186A20_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80186E30_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80186E30_ovl3.s line 151.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80186E30_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80187FD0_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        D_8012E80C = func_800A8100(1, 1, 0x13, D_800DFBD0[D_8004A7C4->objId][0x11]);
        D_8012E810 = func_800A8100(1, 1, 0x13, D_800DFBD0[D_8004A7C4->objId][0x12]);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80187FD0_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80188078_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    s32 temp_v0;
    s32 temp_v1;
    struct GObj *temp_a0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = func_801632B8_ovl3(arg2, 9);
        temp_v1 = temp_v0 * 4;
        D_800E98E0[temp_v0] = gKirbyState.unk58;
        temp_a0 = D_8004A7C4;
        *(D_800E9AA0 + temp_v1) = gKirbyState.unk5C;
        *(D_800E1D10 + temp_v1) = D_800DFBD0[temp_a0->objId][0xE];
        gKirbyState.unk58 = 0;
        gKirbyState.unk5C = 0;
        D_800DFBD0[temp_a0->objId][0xE]->unk54 = 2;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80188078_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8018813C_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 0) && (arg2 != 0.0f)) {
        func_8015449C_ovl3(arg2, &D_801957D4, 0);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018813C_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_80188184_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    u32 temp_v0;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        temp_v0 = D_800E8AE0[D_8004A7C4->objId];
        if ((temp_v0 & 7) != 0) {
            if ((temp_v0 & 2) == 0) {
                play_sound(5);
                return;
            }
            play_sound(0x10C);
            return;
        }
        if (D_8012E7C7 == 1) {
            play_sound(0x267);
            return;
        }
        play_sound(5);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80188184_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80188238_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80188238_ovl3.s line 132.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80188238_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_80189914_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_80189914_ovl3.s line 135.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_80189914_ovl3.s")
#endif

#ifdef MIPS_TO_C
void func_8018B188_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    struct GObj *temp_v1;

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        D_800EA520[D_8004A7C4->objId] = 1;
        temp_v1 = D_8004A7C4;
        D_800EBBE0[temp_v1->objId] = func_801693C4_ovl3(arg2, 0x12);
        D_800EC2E0[D_800EBBE0[temp_v1->objId]] = 0;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018B188_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8018B228_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018B228_ovl3.s line 138.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018B228_ovl3.s")
#endif

#ifdef MIPS_TO_C
Failed to decompile function func_8018CC54_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018CC54_ovl3.s line 179.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018CC54_ovl3.s")
#endif

void func_8018D460_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && arg2 != 0.0f) {
        if (gKirbyState.unk30 == 0 && gKirbyState.unk17 == 0) {
            func_8011DC5C();
            func_8011DC04(0x3C);
        }
    }
}

#ifdef MIPS_TO_C
Failed to decompile function func_8018D4C8_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018D4C8_ovl3.s line 97.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018D4C8_ovl3.s")
#endif


extern u32 *D_8018DF78;
extern f32 D_800E6A10[];

#ifdef NON_MATCHING
void func_8018DDCC_ovl3(struct GObj *arg0) {
    Controller_800D6FE8 *dsa;
    u32 dsa2;

    gKirbyState.unk7C = 0.0f;
    gKirbyState.unk44 = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.unk7 = 0;
    gKirbyState.unk80 = gKirbyState.unk7C;
    func_8011CF58();
    D_800DDFD0[D_8004A7C4->objId] = 0x40;
    func_80120A28();
    gKirbyState.abilityInUse = gKirbyState.ability;
    gKirbyState.unk78 = -D_800E6A10[D_8004A7C4->objId];
    func_80122F08(0x2002B);
    gKirbyState.unk154 = 2;
    play_sound(0x42);
    func_801230E8(0x20274, 0x20275, 1);
    func_801230E8(0x20276, 0x20277, 0);

    dsa = (&gKirbyController);
    while (dsa->buttonHeld & 0x4000) {
        if (gKirbyState.unk17 == 0) {
            finish_current_thread(1);
        }
    }
    play_sound(0x43);
    func_801230E8(0x20278, 0x20279, 0);
    D_800DF310[D_8004A7C4->objId] = &D_8018DF78;
    finish_current_thread(0xC);
    gKirbyState.unk78 = D_800E6A10[D_8004A7C4->objId];
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30++;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018DDCC_ovl3.s")
#endif

void func_8018DF78_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && arg2 != 0.0f) {
        gKirbyState.unk44++;
    }
}

#ifdef MIPS_TO_C
void func_8018DFB4_ovl3(struct GObj *arg0) {
    f32 sp1C;
    f32 temp_f0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_v0_2;
    void *temp_a0;
    void *temp_v0;
    f32 phi_f0;
    s32 phi_a1;

    func_80153984_ovl3();
    func_8011CF58();
    func_801217B8();
    if (D_8012E7F0 != 0) {
        func_8011D67C();
        return;
    }
    func_80120CCC(D_80197B5C, D_80197B60);
    if (D_8012E804 == 4) {
        temp_a1 = D_800DFBD0[D_8004A7C4->objId][9];
        phi_f0 = temp_a1->unk44;
        phi_a1 = temp_a1;
    } else {
        temp_a1_2 = D_800DFBD0[D_8004A7C4->objId][9];
        phi_f0 = temp_a1_2->unk40;
        phi_a1 = temp_a1_2;
    }
    sp1C = phi_f0;
    temp_v0 = func_80168408_ovl3(&D_801921FC, phi_a1, phi_f0);
    temp_a0 = temp_v0;
    temp_v0->unk20->unk30 = D_800DFBD0[D_8004A7C4->objId][0xC];
    func_80111C4C(temp_a0);
    temp_v0_2 = D_8012E804;
    temp_f0 = phi_f0;
    if (temp_v0_2 == 4) {
        func_80152070_ovl3(*(&D_80196DB4 + (temp_v0_2 * 4)), &D_8012E9C8, D_801963E4, temp_f0);
    } else {
        func_801521F0_ovl3(*(&D_80196DB4 + (temp_v0_2 * 4)), &D_8012E9C8, D_801963E4, temp_f0);
    }
    func_80154578_ovl3(&D_801963E4, 0, gEntitiesAngleYArray[D_8004A7C4->objId] - D_80197B64);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018DFB4_ovl3.s")
#endif

extern Vector D_80198848;
extern Vector D_80198858;

extern const f32 D_80197B68;
void func_8018E36C_ovl3(struct GObj *arg0, s32 arg1, f32 arg2);
#ifdef MIPS_TO_C
void func_8018E164_ovl3(struct GObj *this) {
    f32 temp_f2 = D_80197B68;

    gKirbyState.unk30 = 0;
    func_8011CF58();
    gKirbyState.abilityInUse = gKirbyState.ability;
    D_800DDFD0[D_8004A7C4->objId] = 0x41;
    D_80198848.x = D_800E64D0[D_8004A7C4->objId];
    D_80198848.y = D_800E6690[D_8004A7C4->objId];
    D_80198848.z = D_800E6850[D_8004A7C4->objId];
    D_800E6690[D_8004A7C4->objId] = 0.0f;
    D_800E64D0[D_8004A7C4->objId] = D_800E6690[D_8004A7C4->objId];
    D_800E6850[D_8004A7C4->objId] = temp_f2;
    if (D_800E8920[D_8004A7C4->objId] == 0) {
        D_80198858.x = D_800E3210[D_8004A7C4->objId];
        D_80198858.y = D_800E3750[D_8004A7C4->objId];
        D_80198858.z = D_800E3C90[D_8004A7C4->objId];
    }
    D_800E3750[D_8004A7C4->objId] = 0.0f;
    D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
    D_800E3C90[D_8004A7C4->objId] = temp_f2;
    func_801693C4_ovl3(0x14);
    func_801230E8(0x20041, 0x20042, 0);
    D_800DF310[D_8004A7C4->objId] = func_8018E36C_ovl3;
    func_800AF27C();
    gKirbyState.abilityInUse = 0;
    gKirbyState.unk30 += 1;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018E164_ovl3.s")
#endif

void func_8018E36C_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && arg2 != 0.0f) {
        func_801632B8_ovl3(0xA);
    }
}

extern const f32 D_80197B6C;

void func_8018E3B0_ovl3(struct GObj *this) {
    func_80153984_ovl3();
    if (gKirbyState.unk30 != 0) {
        D_800E64D0[D_8004A7C4->objId] = D_80198848.x;
        D_800E6690[D_8004A7C4->objId] = D_80198848.y;
        D_800E6850[D_8004A7C4->objId] = D_80198848.z;
        if (D_800E8920[D_8004A7C4->objId] != 0) {
            if ((gKirbyController.buttonHeld & 0x400) != 0) {
                set_kirby_action_1(9, 0xE);
                return;
            }
            if (gKirbyState.unk7 != 0) {
                gKirbyState.unk44 = 0;
                gKirbyState.unk38 = 0.0f;
                set_kirby_action_1(2, 4);
                return;
            }
            if (D_800E64D0[D_8004A7C4->objId] != 0.0f) {
                set_kirby_action_1(1, 3);
                return;
            }
            set_kirby_action_1(0, 1);
            return;
        }
        D_800E3210[D_8004A7C4->objId] = D_80198858.x;
        D_800E3750[D_8004A7C4->objId] = D_80198858.y;
        D_800E3C90[D_8004A7C4->objId] = D_80198858.z;
        if (gKirbyState.previousAction == 5 && D_800E3210[D_8004A7C4->objId] > 0.0f) {
            D_800EC2E0[D_8004A7C4->objId] = 0x80000000;
            set_kirby_action_1(4, 5);
        } else {
            if (D_800E3210[D_8004A7C4->objId] > 0.0f) {
                D_800E3750[D_8004A7C4->objId] = 0;
                D_800E3210[D_8004A7C4->objId] = D_800E3750[D_8004A7C4->objId];
                D_800E3C90[D_8004A7C4->objId] = D_80197B6C;
            }
            set_kirby_action_1(6, 6);
        }
    }
}

#ifdef MIPS_TO_C
Failed to decompile function func_8018E608_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018E608_ovl3.s line 94.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018E608_ovl3.s")
#endif

// kirby footsteps?
void func_8018F2B4_ovl3(struct GObj *arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0 && arg2 != 0.0f) {
        if (D_800E8AE0[D_8004A7C4->objId] & 7) {
            if ((D_800E8AE0[D_8004A7C4->objId] & 2)) {
                play_sound(SOUND_OYOGIWALK1);
            }
            else play_sound(SOUND_ASIOTOMIZU1);
        }
        else if (gKirbyState.unk7 == 1) {
            play_sound(SOUND_ASIOTO1D);
        }
        else play_sound(SOUND_ASIOTO1);
    }
}

#ifdef MIPS_TO_C
Failed to decompile function func_8018F368_ovl3:

Unable to determine jump table for jr instruction at ../kirby_decomp/asm/non_matchings/ovl3/ovl3_5/func_8018F368_ovl3.s line 123.

There must be a read of a variable in the same block as
the instruction, which has a name starting with "jtbl"/"jpt_".
#else
GLOBAL_ASM("asm/non_matchings/ovl3/ovl3_5/func_8018F368_ovl3.s")
#endif
