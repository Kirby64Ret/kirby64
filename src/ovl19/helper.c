// helper.cc

#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_1.h"
#include "ovl2/ovl2_8.h"
#include "D_8004A7C4.h"

extern u32 D_800D6E64;

#ifdef MIPS_TO_C
void func_8021EF00_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, &D_8022F080);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021EF00_ovl19.s")
#endif

extern f32 D_8022F74C;
extern s32 D_8012E7FC;
u32 func_8021F0A4_ovl19(struct GObj *arg0);
void func_8021E5DC_ovl19(void);

void func_8021EF44_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = D_8022F74C;
    D_800DEF90[D_8004A7C4->objId] = &func_8021E5DC_ovl19;
    D_800DF150[D_8004A7C4->objId] = &func_8021F0A4_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006A, 0x1869F, 0x10);
    D_800E8060[D_8004A7C4->objId] = 0;
    D_800EBBE0[D_8004A7C4->objId] = func_8021E2D0_ovl19(0, 1);
loop_1:
    if (D_800E8060[D_8004A7C4->objId] != 2) {
        finish_current_thread(1);
        goto loop_1;
    }
    func_800AA018(0x203A4);
    finish_current_thread(0x16);
    D_8012E7FC = 1;
    func_800AFA14();
}

#ifdef MIPS_TO_C
u32 func_8021F0A4_ovl19(struct GObj *arg0) {
    struct GObj *temp_v0_2;
    u32 temp_v0;

    temp_v0_2 = D_8004A7C4;
    if ((*(&D_800E8060 + (temp_v0_2->objId * 4)) == 0) && (*D_800E5F90 == 0xA)) {
        gKirbyState.unk3C = 0;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x4F;
        gKirbyState.unk68 = 1;
        *D_800E0D50 = temp_v0_2->objId;
        *(&D_800E8060 + (temp_v0_2->objId * 4)) = 1;
        if (-1.0f == *D_800E6A10) {
            temp_v0 = gKirbyState.isTurning;
            if ((temp_v0 & 1) != 0) {
                gKirbyState.turnDirection = 0;
                return temp_v0;
            }
            gKirbyState.isTurning = temp_v0 | 1;
            return temp_v0;
        }
        gKirbyState.isTurning = gKirbyState.isTurning & -2;
    }
    return temp_v0_2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021F0A4_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8021F174_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 phi_v0;

    func_8021DFD0_ovl19();
    temp_f0 = D_8022F750;
    D_800DF150[D_8004A7C4->objId] = NULL;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006B, 0x1869F, 0x10);
    D_800DFBD0[D_8004A7C4->objId][0xC]->unk54 = 2;
    func_801230E8(0x203BC, 0x203BD, 0);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] == 0) {
        finish_current_thread(1);
    }
loop_3:
    if (*D_800E8920 == 0) {
        finish_current_thread(1);
        goto loop_3;
    }
    func_801230E8(0x203B0, 0x203B1, 1);
    func_801230E8(0x203BE, 0x203BF, 0);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] == 1) {
        finish_current_thread(1);
    }
    (*(D_800DFBD0 + phi_v0))[0xC]->unk54 = 1;
    func_801230E8(0x203A6, 0x203A7, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021F174_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8021F3B4_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 5, &D_8022F088);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021F3B4_ovl19.s")
#endif

// some meme with the temp float
#ifdef NON_MATCHING
extern f32 D_8022F754, D_8022F758;
void func_8021F600_ovl19(struct GObj *arg0);
void func_8021E894_ovl19(s32, s32, f32);

void func_8021F3F8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    D_800E98E0[D_8004A7C4->objId] = 0;
    D_800E9AA0[D_8004A7C4->objId] = func_800FCE50();
    temp_f0 = D_8022F754;
    D_800DEF90[D_8004A7C4->objId] = func_8021E894_ovl19;
    D_800DF150[D_8004A7C4->objId] = func_8021F600_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_8022F758;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    D_800EBBE0[D_8004A7C4->objId] = func_8021E2D0_ovl19(1, 3);
    D_800EBDA0[D_8004A7C4->objId] = func_8021E2D0_ovl19(1, 4);
    func_800A9864(0x2006F, 0x1869F, 0x10);
    if (D_800D6E64 == 0) {
        func_801230E8(0x203CD, 0x203CE, 0);
        while (D_800E98E0[D_8004A7C4->objId] == 0) {
            finish_current_thread(1);
        }
        func_8021FA2C_ovl19();
        func_801230E8(0x203CB, 0x203CC, 1);
    }
    func_801230E8(0x203CF, 0x203D0, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021F3F8_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8021F600_ovl19(struct GObj *arg0) {
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    s32 *temp_v0_2;
    s32 temp_v0;
    u32 temp_v1;

    temp_v1 = D_8004A7C4->objId;
    if ((D_800E98E0[temp_v1] == 0) && (D_800D6E64 == 0)) {
        temp_v0 = D_800E9AA0[temp_v1];
        sp2C = *gEntitiesNextPosXArray;
        sp30 = 0.0f;
        sp34 = *gEntitiesNextPosZArray;
        sp24 = 0.0f;
        sp20 = temp_v0->unk8;
        sp28 = temp_v0->unk10;
        if (vec3_dist_square(&sp2C, &sp20) < 102400.0f) {
            temp_v0_2 = &D_800E98E0[D_8004A7C4->objId];
            *temp_v0_2 = *temp_v0_2 + 1;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021F600_ovl19.s")
#endif

extern f32 D_8022F75C, D_8022F760;


void func_8021F6D8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F75C;
    D_800DF150[D_8004A7C4->objId] = NULL;
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_8022F760;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x20070, 0x1869F, 0x10);
    if (D_800D6E64 == 0) {
        D_800DFBD0[D_8004A7C4->objId][3]->unk54 = 1;
        func_801230E8(0x203DC, 0x203DD, 0);
        while (D_800E98E0[D_800E0D50[D_8004A7C4->objId]] == 0) {
            finish_current_thread(1);
        }
        func_801230E8(0x203DA, 0x203DB, 0);
    } else {
        D_800DFBD0[D_8004A7C4->objId][3]->unk54 = 2;
    }
    func_800AFA14();
}

void func_8021F8A4_ovl19(struct GObj *arg0) {
    Vector sp44;

    D_800DEF90[D_8004A7C4->objId] = NULL;
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.25f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.25f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.25f;
    func_800A9864(0x20071, 0x1869F, 0x10);
    while (1) {
        func_800B2340(&sp44, D_800DFBD0[D_800E0D50[D_8004A7C4->objId]][1], D_800E0D50[D_8004A7C4->objId]);
        gEntitiesNextPosXArray[D_8004A7C4->objId] = sp44.x;
        gEntitiesNextPosYArray[D_8004A7C4->objId] = sp44.y + 0.5f;
        gEntitiesNextPosZArray[D_8004A7C4->objId] = sp44.z;
        finish_current_thread(1);
    }
}

extern f32 gKirbyHp;
extern const char D_8022F720[];
// minor changes that i'm too tired to look at atm lol
#ifdef NON_MATCHING
void func_8021FA2C_ovl19(void) {
    Vector sp34;
    struct EntityThing800E9AA0 *sp2C = D_800E9AA0[D_8004A7C4->objId];
    s32 temp_v0 = request_track_general(0x1C, 0x1E, 0x3C);

    if (temp_v0 >= 0x3C || temp_v0 == -1) {
// block_2:
        if (temp_v0 != -1) {
            func_800B1900(temp_v0 & 0xFFFF);
        }
        print_error_stub(&D_8022F720);
        return;
    }
    // if (temp_v0 == -1) {
    //     goto block_2;
    // }
    if (D_800E7880[D_8004A7C4->objId] == 2) {
        D_800E77A0[temp_v0] = 5;
        D_800E7880[temp_v0] = 1;
    } else if (6.0f == gKirbyHp) {
        D_800E77A0[temp_v0] = 9;
        D_800E7880[temp_v0] = 1;
    } else {
        (&D_800E77A0[temp_v0])[0x3BD0] = 0;
        D_800E7880[temp_v0] = 1;
    }
    D_800E7730[temp_v0] = 3;
    D_800E76C0[temp_v0] = 0xFF;
    D_800E8E60[temp_v0] = 1;
    func_800B2340(&sp34, D_800DFBD0[D_800EBBE0[D_8004A7C4->objId]][2], D_800EBBE0[D_8004A7C4->objId], temp_v0);
    gEntitiesPosXArray[temp_v0] = sp34.x;
    gEntitiesNextPosXArray[temp_v0] = sp34.x;
    gEntitiesPosYArray[temp_v0] = sp34.y;
    gEntitiesNextPosYArray[temp_v0] = sp34.y;
    gEntitiesPosZArray[temp_v0] = sp34.z;
    gEntitiesNextPosZArray[temp_v0] = sp34.z;
    D_800E6150[temp_v0] = sp2C->unk0;
    D_800E5F90[temp_v0] = sp2C->unk0;
    D_800E6D90[temp_v0] = sp2C->unk24;
    D_800E6BD0[temp_v0] = sp2C->unk24;
    D_800EC120[D_8004A7C4->objId] = temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021FA2C_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8021FC7C_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, &D_8022F09C);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021FC7C_ovl19.s")
#endif


// regalloc at the loop
#ifdef NON_MATCHING
void func_8021FE5C_ovl19(struct GObj *arg0);
extern f32 D_8022F764;

void func_8021FCC0_ovl19(struct GObj *arg0) {
    f32 tmp;

    func_8021DFD0_ovl19();
    tmp = D_8022F764;
    D_800DEF90[D_8004A7C4->objId] = func_8021E5DC_ovl19;
    D_800DF150[D_8004A7C4->objId] = func_8021FE5C_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = 0.0f;
    gEntitiesScaleXArray[D_8004A7C4->objId] = tmp;
    gEntitiesScaleYArray[D_8004A7C4->objId] = tmp;
    gEntitiesScaleZArray[D_8004A7C4->objId] = tmp;
    func_800A9864(0x20067, 0x1869F, 0x10);
    D_800EBBE0[D_8004A7C4->objId] = func_8021E2D0_ovl19(2, 1);
    D_800E98E0[D_8004A7C4->objId] = 0;
    func_800AA018(0x2035D);
    while (D_800E98E0[D_8004A7C4->objId] == 0) {
        finish_current_thread(1);
    }
    D_800E98E0[D_800EBBE0[D_8004A7C4->objId]] = 1;
    func_800AA154(0x2035E);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021FCC0_ovl19.s")
#endif

#ifdef NON_MATCHING
void func_8021FE5C_ovl19(struct GObj *arg0) {
    Vector sp20, sp2C;
    if (D_800E98E0[D_8004A7C4->objId] == 0) {
        if (gKirbyState.unk16C != 0) {
            if ((gEntitiesNextPosYArray[D_8004A7C4->objId] - 20.0f) <= *gEntitiesNextPosYArray) {
                sp2C.y = 0.0f;
                sp2C.x = gEntitiesNextPosXArray[0];
                sp2C.z = gEntitiesNextPosZArray[0];

                sp20.x = gEntitiesNextPosXArray[D_8004A7C4->objId];
                sp20.y = 0.0f;
                sp20.z = gEntitiesNextPosZArray[D_8004A7C4->objId];
                if (vec3_dist_square(&sp2C, &sp20) < 6400.0f) {
                    D_800E98E0[D_8004A7C4->objId]++;
                    gKirbyState.unk17 = 1;
                    gKirbyState.abilityState = 0;
                    gKirbyState.unk68 = 1;
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021FE5C_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8021FF90_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 phi_v0;

    D_800E9AA0[D_8004A7C4->objId] = 0;
    func_8021DFD0_ovl19();
    temp_v0 = D_8004A7C4;
    temp_f0 = D_8022F768;
    D_800DF150[temp_v0->objId] = &func_80220138_ovl19;
    gEntitiesAngleYArray[temp_v0->objId] = 0.0f;
    (&gEntitiesScaleXArray)[temp_v0->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v0->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v0->objId] = temp_f0;
    func_800A9864(0x20060, 0x1869F, 0x10);
    D_800E98E0[D_8004A7C4->objId] = 0;
    func_801230E8(0x202EF, 0x202F0, 0);
    temp_v0_2 = D_8004A7C4->objId;
    phi_v0 = temp_v0_2 * 4;
    if (D_800E98E0[temp_v0_2] == 0) {
loop_1:
        finish_current_thread(1);
        temp_v0_3 = D_8004A7C4->objId;
        phi_v0 = temp_v0_3 * 4;
        if (D_800E98E0[temp_v0_3] == 0) {
            goto loop_1;
        }
    }
    *(D_800E9AA0 + phi_v0) = 1;
    func_801230E8(0x202ED, 0x202EE, 1);
    gKirbyState.unk17 = 0;
    gKirbyState.unk68 = 0;
    D_800E8760[D_8004A7C4->objId] = 0;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8021FF90_ovl19.s")
#endif

#ifdef MIPS_TO_C
struct GObj *func_80220138_ovl19(struct GObj *arg0) {
    void *sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    struct GObj *temp_ret;
    struct GObj *temp_v0;
    u32 temp_v1;
    struct GObj *phi_return;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    phi_return = temp_v0;
    if (D_800E9AA0[temp_v1] != 0) {
        sp2C = gEntitiesNextPosXArray[temp_v1];
        sp20 = sp2C;
        sp24 = gEntitiesNextPosYArray[temp_v0->objId] + 240.0f;
        sp34 = gEntitiesNextPosZArray[temp_v0->objId];
        sp28 = sp34;
        sp3C = &D_801964E8;
        sp38 = D_8022F76C;
        sp30 = gEntitiesNextPosYArray[temp_v0->objId] + 239.0f;
        temp_ret = func_8011BF4C(&sp20, &D_80155ED8, gEntitiesNextPosYArray);
        D_800E9AA0[D_8004A7C4->objId] = 0;
        phi_return = temp_ret;
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220138_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022023C_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, &D_8022F0A4);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8022023C_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80220280_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;

    func_8021E184_ovl19();
    temp_v1 = D_8004A7C4;
    (&D_800DF150[temp_v1->objId])[0x194] = &D_8022FAB8;
    D_800DF150[temp_v1->objId] = &func_8022045C_ovl19;
    if (D_800D6E64 == 0) {
        D_800D6F18->unk0 = random_soft_s32_range(7);
loop_2:
        temp_v0 = random_soft_s32_range(7);
        D_800D6F18->unk4 = temp_v0;
        if (D_800D6F18->unk0 == temp_v0) {
            goto loop_2;
        }
loop_3:
        temp_v0_2 = random_soft_s32_range(7);
        D_800D6F18->unk8 = temp_v0_2;
        if (D_800D6F18->unk0 == temp_v0_2) {
            goto loop_3;
        }
        if (D_800D6F18->unk4 == temp_v0_2) {
            goto loop_3;
        }
        D_800D6E64 = 1;
    }
    temp_v0_3 = func_8021E2D0_ovl19(3, 2);
    temp_t0 = temp_v0_3 * 4;
    D_800D71F8 = temp_v0_3;
    *(D_800EC2E0 + temp_t0) = 0;
    temp_v0_4 = func_8021E2D0_ovl19(3, 2);
    temp_t2 = temp_v0_4 * 4;
    D_800D71F8 = temp_v0_4;
    *(D_800EC2E0 + temp_t2) = 1;
    temp_v0_5 = func_8021E2D0_ovl19(3, 2);
    temp_f0 = D_8022F770;
    D_800D71F8 = temp_v0_5;
    temp_v1_2 = D_8004A7C4;
    D_800EC2E0[temp_v0_5] = 2;
    gEntitiesNextPosXArray[temp_v1_2->objId] = 140.0f;
    (&gEntitiesScaleXArray)[temp_v1_2->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v1_2->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v1_2->objId] = temp_f0;
    func_800A9864(0x2006F, 0x27, 0x10);
    func_801230E8(0x203D5, 0x203D6, 1);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220280_ovl19.s")
#endif

#ifdef MIPS_TO_C
s8 func_8022045C_ovl19(struct GObj *arg0) {
    s32 *temp_v1;
    s32 temp_a0;
    s8 temp_v0;
    struct GObj *temp_v0_2;
    u8 phi_a1;

    if ((D_8012E860 == 0x1F) && (*D_800E98E0 < 3)) {
        temp_v0_2 = D_8004A7C4;
        temp_v1 = &D_800E98E0[temp_v0_2->objId];
        temp_a0 = *temp_v1;
        if ((temp_a0 & 0xFF) != 0x30) {
            *temp_v1 = temp_a0 + 1;
            phi_a1 = (D_800E98E0[temp_v0_2->objId].unk3 + 0x30) & 0xFF;
        } else {
            phi_a1 = 0x60;
        }
    } else {
        D_800E98E0[D_8004A7C4->objId] = 0;
        phi_a1 = 0x30;
    }
    D_8022FAB8.unk12 = 0x32;
    temp_v0 = D_8022FAB8.unk12;
    D_8022FAB8.unk4 = phi_a1;
    D_8022FAB8.unk0 = phi_a1;
    D_8022FAB8.unk5 = phi_a1;
    D_8022FAB8.unk1 = phi_a1;
    D_8022FAB8.unk6 = phi_a1;
    D_8022FAB8.unk2 = phi_a1;
    D_8022FAB8.unkC = phi_a1;
    D_8022FAB8.unk8 = phi_a1;
    D_8022FAB8.unkD = phi_a1;
    D_8022FAB8.unk9 = phi_a1;
    D_8022FAB8.unkE = phi_a1;
    D_8022FAB8.unkA = phi_a1;
    D_8022FAB8.unk11 = temp_v0;
    D_8022FAB8.unk10 = temp_v0;
    return temp_v0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8022045C_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022054C_ovl19(struct GObj *arg0) {
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s32 *temp_v0_3;
    s32 temp_v0_2;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    u32 temp_a0;
    u32 temp_v0;

    if (D_800D6F18->unk1C == 0) {
        temp_v1 = D_8004A7C4;
        D_800D6F18->unk1C = 1;
        D_800DEF90[temp_v1->objId] = NULL;
        func_800B1F68(gEntityGObjProcessArray5[temp_v1->objId], &func_800B1434);
        D_800E98E0[D_8004A7C4->objId] = 3;
        D_800D6F18->unk10 = 0;
        D_800D6F18->unkC = -1;
        func_800F8E6C(arg0);
loop_2:
        temp_v1_2 = D_8004A7C4;
        temp_v0 = temp_v1_2->objId;
        if (D_800E98E0[temp_v0] == 0) {
            func_800B1900(temp_v0 & 0xFFFF);
block_14:
            finish_current_thread(1);
            goto loop_2;
        }
        temp_v0_2 = D_800D6F18->unkC;
        if (-1 == temp_v0_2) {
            goto block_14;
        }
        if (D_800D6F18->unk0 == temp_v0_2) {
            D_800D6F18->unk10 = D_800D6F18->unk10 | 1;
        } else if (D_800D6F18->unk4 == temp_v0_2) {
            D_800D6F18->unk10 = D_800D6F18->unk10 | 2;
        } else if (D_800D6F18->unk8 == temp_v0_2) {
            D_800D6F18->unk10 = D_800D6F18->unk10 | 4;
        }
        D_800D6F18->unkC = -1;
        temp_v0_3 = &D_800E98E0[temp_v1_2->objId];
        *temp_v0_3 = *temp_v0_3 - 1;
        temp_a0 = temp_v1_2->objId;
        if (D_800E98E0[temp_a0] != 0) {
            goto block_14;
        }
        if (7 != D_800D6F18->unk10) {
            goto block_14;
        }
        gEntitiesNextPosYArray[temp_a0] = 60.0f;
        if (D_800D6E30[D_800BE508] == 0) {
            play_sound(0x112);
            func_800A7F74(3, 0, 0xCE, 0x43960000, gEntitiesNextPosYArray[D_8004A7C4->objId], 0.0f);
            finish_current_thread(0x12);
            sp74 = 0.0f;
            sp7C = 0.0f;
            sp68 = 0.0f;
            sp6C = 0.0f;
            sp70 = 0.0f;
            sp5C = 1.0f;
            sp60 = 1.0f;
            sp64 = 1.0f;
            sp78 = gEntitiesNextPosYArray[D_8004A7C4->objId];
            play_sound(0x1FC);
            func_800FCD14(0xFF, 3, 0.5f, 3, 7, 2, 0, 0, 0x13, &sp74, &sp68, &sp5C);
        }
    }
    func_800B1900(D_8004A7C4->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8022054C_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80220814_ovl19(struct GObj *arg0) {
    struct GObj *temp_v0;
    u32 temp_v1;

    func_8021E184_ovl19();
    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    gEntitiesNextPosXArray[temp_v1] = *(&D_8022F0B0 + (D_800EC2E0[temp_v1] * 4));
    gEntitiesNextPosYArray[temp_v0->objId] = 70.0f;
    gEntitiesNextPosZArray[temp_v0->objId] = -199.0f;
    func_800A9864(*(&D_8022F0BC + ((D_800D6F18 + (D_800EC2E0[temp_v0->objId] * 4))->unk0 * 4)), 0x1869F, 0x10, D_800EC2E0);
loop_1:
    func_800AA018(0x203E3);
loop_2:
    if ((0x1F == gKirbyState.abilityInUse) && (*D_800E98E0 < 3)) {
        func_800AA018(0x203E2);
loop_5:
        if (gKirbyState.abilityInUse == 0) {
            goto loop_1;
        }
        if (*D_800E98E0 >= 3) {
            goto loop_1;
        }
        finish_current_thread(1);
        goto loop_5;
    }
    finish_current_thread(1);
    goto loop_2;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220814_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_802209A0_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 4, &D_8022F0D8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_802209A0_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_802209E4_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    s32 temp_v0;
    struct GObj *temp_v1;

    func_8021E184_ovl19();
    if (D_800D6E64 == 0) {
        D_800D6F18->unk0 = random_soft_s32_range(3);
        D_800D6E64 = 1;
    }
    temp_v0 = func_8021E2D0_ovl19(4, 2);
    D_800D71F8 = temp_v0;
    D_800EC2E0[temp_v0] = D_800D6F18->unk0;
    func_8021E2D0_ovl19(4, 3);
    temp_v1 = D_8004A7C4;
    temp_f0 = D_8022F774;
    gEntitiesNextPosXArray[temp_v1->objId] = 80.0f;
    gEntitiesNextPosYArray[temp_v1->objId] = 0.0f;
    gEntitiesNextPosZArray[temp_v1->objId] = -80.0f;
    (&gEntitiesScaleXArray)[temp_v1->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v1->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v1->objId] = temp_f0;
    func_800A9864(0x2006F, 0x1869F, 0x10);
    func_801230E8(0x203D5, 0x203D6, 1);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_802209E4_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80220B40_ovl19(struct GObj *arg0) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    struct GObj *temp_s0;
    struct GObj *temp_s0_2;
    u32 temp_v0;
    u32 temp_v0_2;

    temp_s0 = D_8004A7C4;
    D_800DEF90[temp_s0->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[temp_s0->objId], &func_800B1434);
    temp_s0_2 = D_8004A7C4;
    gEntitiesNextPosYArray[temp_s0_2->objId] = 200.0f;
    D_800E6BD0[temp_s0_2->objId] = 0.5f;
    finish_current_thread(2);
loop_1:
    if (func_800AB490(D_800D6F18->unk0) == 0) {
        finish_current_thread(1);
        goto loop_1;
    }
    func_800F8E6C(arg0);
    if (D_800D6E30[D_800BE508] == 0) {
        play_sound(0x112);
        temp_v0 = D_8004A7C4->objId;
        func_800A7F74(3, 0, 0xCE, (bitwise s32) gEntitiesNextPosXArray[temp_v0], gEntitiesNextPosYArray[temp_v0], gEntitiesNextPosZArray[temp_v0]);
        finish_current_thread(0x12);
        sp5C = 0.0f;
        sp64 = 0.0f;
        sp50 = 0.0f;
        sp54 = 0.0f;
        sp58 = 0.0f;
        sp4C = 1.0f;
        sp48 = 1.0f;
        sp44 = 1.0f;
        sp60 = gEntitiesNextPosYArray[D_8004A7C4->objId];
        play_sound(0x1FC);
        temp_v0_2 = D_8004A7C4->objId;
        func_800FCD14(0xFF, *(&D_800E5F93 + (temp_v0_2 * 4)), (bitwise f32) (bitwise s32) D_800E6BD0[temp_v0_2], 3, 7, 2, 0, 0, 0x28, &sp5C, &sp50, &sp44);
    }
    func_800B1900(D_8004A7C4->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220B40_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80220D54_ovl19(struct GObj *arg0) {
    func_8021E184_ovl19();
    gEntitiesNextPosXArray[D_8004A7C4->objId] = 0.0f;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = 0.0f;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = -140.0f;
    func_800A9864(0x20079, 0x1869F, 0x10);
    D_800DFBD0[D_8004A7C4->objId]->unk4->unk80->unk80 = D_800EC2E0[D_8004A7C4->objId];
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220D54_ovl19.s")
#endif

void func_80220E14_ovl19(struct GObj *arg0) {
    D_800DEF90[D_8004A7C4->objId] = NULL;
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]] + 0.5f;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.25f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.25f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.25f;
    func_800A9864(0x20071, 0x1869F, 0x10, D_800E0D50);
    func_800AFA14();
}

#ifdef MIPS_TO_C
void func_80220F48_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 4, &D_8022F0E8);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220F48_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80220F8C_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    s32 temp_v0;
    s32 temp_v0_2;
    struct GObj *temp_v1;

    func_8021E184_ovl19();
    D_800E98E0[D_8004A7C4->objId] = 0;
    if (D_800D6E64 == 0) {
        D_800D6F18->unk0 = random_soft_s32_range(7);
loop_2:
        temp_v0 = random_soft_s32_range(7);
        D_800D6F18->unk4 = temp_v0;
        if (D_800D6F18->unk0 == temp_v0) {
            goto loop_2;
        }
loop_3:
        temp_v0_2 = random_soft_s32_range(7);
        D_800D6F18->unk8 = temp_v0_2;
        if (D_800D6F18->unk0 == temp_v0_2) {
            goto loop_3;
        }
        if (D_800D6F18->unk4 == temp_v0_2) {
            goto loop_3;
        }
        D_800D6E64 = 1;
    }
    func_8021E2D0_ovl19(5, 3);
    temp_v1 = D_8004A7C4;
    temp_f0 = D_8022F778;
    (&gEntitiesScaleXArray)[temp_v1->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v1->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v1->objId] = temp_f0;
    func_800A9864(0x2006F, 0x1869F, 0x10);
    func_801230E8(0x203D1, 0x203D2, 0);
    D_800DF310[D_8004A7C4->objId] = &func_80221108_ovl19;
    func_800AF27C();
    func_801230E8(0x203D3, 0x203D4, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80220F8C_ovl19.s")
#endif


extern u32 D_800D71F8;
#ifdef MIPS_TO_C
void func_80221108_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp_v0 = func_8021E2D0_ovl19(5, 2);

    if ((arg1 == 0) && (arg2 != 0.0f)) {
        D_800D71F8 = temp_v0;
        D_800EC2E0[temp_v0] = D_800E98E0[D_8004A7C4->objId];
        D_800E98E0[D_8004A7C4->objId]++;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221108_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_802211A0_ovl19(struct GObj *arg0) {
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s32 *temp_v0_3;
    s32 temp_v0_2;
    struct GObj *temp_a2;
    struct GObj *temp_a2_2;
    u32 temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;
    struct GObj *phi_a2;

    temp_a2 = D_8004A7C4;
    D_800DEF90[temp_a2->objId] = NULL;
    func_800B1F68(gEntityGObjProcessArray5[temp_a2->objId], &func_800B1434, temp_a2);
    D_800E98E0[D_8004A7C4->objId] = 3;
    D_800D6F18->unk10 = 0;
    D_800D6F18->unkC = -1;
    func_800F8E6C(arg0);
loop_1:
    temp_a2_2 = D_8004A7C4;
    temp_v0 = temp_a2_2->objId;
    if (D_800E98E0[temp_v0] == 0) {
        func_800B1900(temp_v0 & 0xFFFF);
block_13:
        finish_current_thread(1);
        goto loop_1;
    }
    temp_v0_2 = D_800D6F18->unkC;
    if (-1 == temp_v0_2) {
        goto block_13;
    }
    if (D_800D6F18->unk0 == temp_v0_2) {
        D_800D6F18->unk10 = D_800D6F18->unk10 | 1;
    } else if (D_800D6F18->unk4 == temp_v0_2) {
        D_800D6F18->unk10 = D_800D6F18->unk10 | 2;
    } else if (D_800D6F18->unk8 == temp_v0_2) {
        D_800D6F18->unk10 = D_800D6F18->unk10 | 4;
    }
    D_800D6F18->unkC = -1;
    temp_v0_3 = &D_800E98E0[temp_a2_2->objId];
    *temp_v0_3 = *temp_v0_3 - 1;
    temp_v1 = temp_a2_2->objId;
    if (D_800E98E0[temp_v1] != 0) {
        goto block_13;
    }
    if (7 != D_800D6F18->unk10) {
        goto block_13;
    }
    gEntitiesNextPosYArray[temp_v1] = 160.0f;
    phi_a2 = temp_a2_2;
    if (D_800D6E30[D_800BE508] == 0) {
        play_sound(0x112);
        temp_v1_2 = D_8004A7C4->objId;
        func_800A7F74(3, 0, 0xCE, (bitwise s32) gEntitiesNextPosXArray[temp_v1_2], gEntitiesNextPosYArray[temp_v1_2], gEntitiesNextPosZArray[temp_v1_2]);
        finish_current_thread(0x12);
        sp74 = 0.0f;
        sp7C = 0.0f;
        sp68 = 0.0f;
        sp6C = 0.0f;
        sp70 = 0.0f;
        sp5C = 1.0f;
        sp60 = 1.0f;
        sp64 = 1.0f;
        sp78 = gEntitiesNextPosYArray[D_8004A7C4->objId];
        play_sound(0x1FC);
        temp_v1_3 = D_8004A7C4->objId;
        func_800FCD14(0xFF, *(&D_800E5F93 + (temp_v1_3 * 4)), (bitwise f32) (bitwise s32) D_800E6BD0[temp_v1_3], 3, 7, 2, 0, 0, 0x35, &sp74, &sp68, &sp5C);
        phi_a2 = D_8004A7C4;
    }
    func_800B1900(phi_a2->unk2);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_802211A0_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80221480_ovl19(struct GObj *arg0) {
    struct GObj *temp_v0;
    u32 temp_v1;

    func_8021E184_ovl19();
    temp_v0 = D_8004A7C4;
    temp_v1 = D_8004A7C4->objId;
    gEntitiesNextPosXArray[D_8004A7C4->objId] = *(&D_8022F0F8 + (D_800EC2E0[D_8004A7C4->objId] * 4));
    gEntitiesNextPosYArray[D_8004A7C4->objId] = 110.0f;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = -100.0f;
    func_800A9864(*(&D_8022F104 + ((D_800D6F18 + (D_800EC2E0[D_8004A7C4->objId] * 4))->unk0 * 8)), 0x1869F, 0x10, D_800EC2E0);
    func_800AA018(*(&D_8022F108 + ((D_800D6F18 + (D_800EC2E0[D_8004A7C4->objId] * 4))->unk0 * 8)));
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221480_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_8022159C_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    temp_f0 = D_8022F77C;
    D_800DEF90[temp_v0->objId] = NULL;
    D_800DF150[temp_v0->objId] = &func_80221654_ovl19;
    (&gEntitiesScaleXArray)[temp_v0->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v0->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v0->objId] = temp_f0;
    func_800A9864(0x20071, 0x1869F, 0x10);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8022159C_ovl19.s")
#endif

void func_80221654_ovl19(struct GObj *arg0) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[D_800E0D50[D_8004A7C4->objId]][1], D_800E0D50[D_8004A7C4->objId]);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = sp1C.x;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = sp1C.z;
}

#ifdef MIPS_TO_C
void func_8022170C_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, &D_8022F13C);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_8022170C_ovl19.s")
#endif

#ifdef NON_MATCHING
void func_80221928_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
extern f32 D_8022F780;

void func_80221750_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F780;
    D_800DEF90[D_8004A7C4->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x20060, 0x1869F, 0x10);
    func_8021E2D0_ovl19(6, 1);
    D_800DF150[D_8004A7C4->objId] = func_80221928_ovl19;
    while (TRUE) {
        D_800E9E20[D_8004A7C4->objId] = 0;
        func_800AA018(0x202E2);

        // loads from s1 instead of through an immediate
        func_800AA864(0x202E1, 1);
        D_800E9E20[D_8004A7C4->objId] = 1;
        func_80221BC8_ovl19();
        while (D_800E9E20[D_8004A7C4->objId] == 1) {
            finish_current_thread(1);
        }
        func_800AA018(0x202E4);
        func_800AA864(0x202E3, 1);
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221750_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80221928_ovl19(struct GObj *arg0) {
    f32 *temp_a0_2;
    f32 *temp_a0_3;
    f32 temp_f0;
    f32 temp_f0_2;
    s32 temp_a0;
    struct GObj *temp_v1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    f32 phi_f0;
    u32 phi_v0;
    f32 *phi_a0;
    u32 phi_return;

    temp_v1 = D_8004A7C4;
    temp_v0 = temp_v1->objId;
    temp_v0 = temp_v0 * 4;
    temp_a0 = D_800E9E20[temp_v0];
    if (temp_a0 == 0) {
        return func_80221A74_ovl19(temp_a0, D_800E9E20);
    }
    if (temp_a0 != 1) {
        return temp_v0;
    }
    temp_a0_2 = &D_800E4C50[temp_v0];
    temp_f0 = *temp_a0_2;
    phi_f0 = temp_f0;
    phi_v0 = temp_v0;
    phi_a0 = temp_a0_2;
    phi_return = (bitwise u32) temp_f0;
    if (0.0f <= temp_f0) {
        phi_f0 = temp_f0;
        phi_v0 = temp_v0;
        phi_a0 = temp_a0_2;
        phi_return = (bitwise u32) temp_f0;
        if (D_8022F784 <= gEntitiesAngleYArray[temp_v0]) {
            *temp_a0_2 = 0.0f;
            temp_v0_2 = temp_v1->objId;
            gEntitiesAngleYArray[temp_v0_2] = D_800E4C50[temp_v0_2];
            D_800E9E20[temp_v1->objId] = 2;
            temp_v0_3 = temp_v1->objId;
            temp_a0_3 = &D_800E4C50[temp_v0_3];
            temp_f0_2 = *temp_a0_3;
            phi_f0 = temp_f0_2;
            phi_v0 = temp_v0_3 * 4;
            phi_a0 = temp_a0_3;
            phi_return = (bitwise u32) temp_f0_2;
        }
    }
    if ((phi_f0 < 0.0f) && (*(gEntitiesAngleYArray + phi_v0) <= D_8022F788)) {
        *phi_a0 = 0.0f;
        temp_v0_4 = temp_v1->objId;
        gEntitiesAngleYArray[temp_v0_4] = D_800E4C50[temp_v0_4];
        D_800E9E20[temp_v1->objId] = 2;
        phi_return = temp_v0_4 * 4;
    }
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221928_ovl19.s")
#endif

#ifdef MIPS_TO_C
f32 func_80221A74_ovl19(void) {
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_ret;
    struct GObj *temp_v0;
    f32 phi_f2;
    s32 phi_v0;
    f32 phi_return;

    sp38 = 0.0f;
    sp34 = 0.0f;
    sp3C = 2.0f;
    lbvector_Rotate(&sp34, 2, (bitwise f32) (bitwise s32) gEntitiesAngleYArray[D_8004A7C4->objId]);
    temp_v0 = D_8004A7C4;
    sp2C = 0.0f;
    sp28 = *gEntitiesNextPosXArray - gEntitiesNextPosXArray[temp_v0->objId];
    sp30 = *gEntitiesNextPosZArray - gEntitiesNextPosZArray[temp_v0->objId];
    temp_ret = vec3_abs_angle_diff(&sp34, &sp28, gEntitiesNextPosZArray);
    temp_f0 = temp_ret;
    if (temp_f0 < 0.0f) {
        phi_f2 = -temp_f0;
    } else {
        phi_f2 = temp_f0;
    }
    temp_f14 = D_8022F78C;
    if (phi_f2 <= temp_f14) {
        D_800E4C50[D_8004A7C4->objId] = 0.0f;
        return temp_ret;
    }
    phi_v0 = 1;
    phi_return = (bitwise f32) 1;
    if (temp_f0 < 0.0f) {
        phi_v0 = -1;
        phi_return = (bitwise f32) -1;
    }
    D_800E4C50[D_8004A7C4->objId] = phi_v0 * temp_f14;
    return phi_return;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221A74_ovl19.s")
#endif

#ifdef MIPS_TO_C
f32 func_80221BC8_ovl19(void) {
    f32 temp_f0;
    f32 temp_f2;
    struct GObj *temp_v0;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_v0 = D_8004A7C4;
    temp_v1 = temp_v0->objId;
    temp_f2 = D_8022F790;
    temp_f0 = gEntitiesAngleYArray[temp_v1];
    if (temp_f0 <= temp_f2) {
        D_800E4C50[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0->objId;
        gEntitiesAngleYArray[temp_v1_2] = D_800E4C50[temp_v1_2];
        D_800E9E20[temp_v0->objId] = 2;
        return temp_f0;
    }
    if (D_8022F794 <= temp_f0) {
        D_800E4C50[temp_v1] = 0.0f;
        temp_v1_2 = temp_v0->objId;
        gEntitiesAngleYArray[temp_v1_2] = D_800E4C50[temp_v1_2];
        D_800E9E20[temp_v0->objId] = 2;
        return temp_f0;
    }
    if (D_8022F798 <= temp_f0) {
        D_800E4C50[temp_v1] = temp_f2;
        return temp_f0;
    }
    D_800E4C50[temp_v1] = D_8022F79C;
    return temp_f0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221BC8_ovl19.s")
#endif

extern f32 D_8022F7A0;
void func_80221CA8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = D_8022F7A0;
    D_800DEF90[D_8004A7C4->objId] = NULL;
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]] + 0.5f;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x20071, 0x1869F, 0x10, D_800E0D50);
    func_800AFA14();
}

#ifdef MIPS_TO_C
void func_80221DDC_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, &D_8022F144);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221DDC_ovl19.s")
#endif

extern f32 D_8022F7A4;
void func_80222038_ovl19(struct GObj *arg0);
void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2);
extern struct KirbyState gKirbyState;

void func_80221E20_ovl19(UNUSED struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = D_8022F7A4;
    D_800DF150[D_8004A7C4->objId] = &func_80222038_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006C, 0x1869F, 0x10);
    D_800E8060[D_8004A7C4->objId] = 0;
    func_800AA018(0x203C1);
    while (D_800E8060[D_8004A7C4->objId] != 1) {
        finish_current_thread(1);
    }
    func_8021E2D0_ovl19(7, 1);
    func_800AA018(0x203C0);
    D_800DF310[D_8004A7C4->objId] = &func_80221FC8_ovl19;
    func_800AF27C();
    func_800F753C();
    func_800AFBB4(0, D_8004A7C4);
    while (gKirbyState.unk30 == 0) {
        finish_current_thread(1);
    }
    func_800B1900((u16) D_8004A7C4->objId);
}

#ifdef MIPS_TO_C
void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 == 1.0f) {
            func_800FB914(arg2, 2);
            return;
        }
        if (arg2 == 2.0f) {
            func_800FB914(arg2, 1);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80221FC8_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80222038_ovl19(struct GObj *arg0) {
    u32 D_8004A7C4;

    if (*D_800E5F90 == 6) {
        *D_800E0D50 = D_8004A7C4->objId;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x50;
        gKirbyState.unk68 = 1;
        if (-1.0f == *D_800E6A10) {
            temp_v1 = gKirbyState.isTurning;
            if ((temp_v1 & 1) != 0) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning = temp_v1 | 1;
            }
        } else {
            gKirbyState.isTurning = gKirbyState.isTurning & -2;
        }
        play_sound(0x190);
        D_800DF150[D_8004A7C4->objId] = NULL;
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222038_ovl19.s")
#endif

#ifdef MIPS_TO_C 
void func_80222108_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    struct GObj *temp_v0_2;
    struct GObj *temp_v0_3;
    u32 temp_v1;
    void *temp_v0;

    func_8021E184_ovl19();
    temp_v0 = func_800FF144();
    D_8022FAB0 = temp_v0;
    if (temp_v0 != 0) {
        temp_v0->unk10 = 24.0f;
        D_8022FAB0->unk14 = 20.0f;
        D_8022FAB0->unk18 = -240.0f;
        D_8022FAB0->unk21 = 1;
    }
    temp_v0_2 = D_8004A7C4;
    temp_f0 = D_8022F7A8;
    D_800DEF90[temp_v0_2->objId] = &func_800B5064;
    (&D_800DF150[temp_v0_2->objId])[0x3C4] = 1;
    temp_v1 = temp_v0_2->objId;
    gEntitiesAngleYArray[temp_v1] = gEntitiesAngleYArray[(&D_800D9E20 + (temp_v1 * 4))->unkD50];
    D_800DF150[temp_v0_2->objId] = &func_802222F0_ovl19;
    (&gEntitiesScaleXArray)[temp_v0_2->objId] = temp_f0;
    (&gEntitiesScaleYArray)[temp_v0_2->objId] = temp_f0;
    (&gEntitiesScaleZArray)[temp_v0_2->objId] = temp_f0;
    func_800A9864(0x2006B, 0x1869F, 0x10, gEntitiesAngleYArray);
    D_800E98E0[D_8004A7C4->objId] = 0;
    func_801230E8(0x203AC, 0x203AD, 1);
    temp_v0_3 = D_8004A7C4;
    D_800E98E0[temp_v0_3->objId] = 1;
    D_800DEF90[temp_v0_3->objId] = &D_800B4924;
    D_800DFBD0[temp_v0_3->objId][8]->unk38 = 0.0f;
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222108_ovl19.s")
#endif

#include "ovl2/ovl2_8.h"
#include "ovl19_2.h"
extern f32 D_8022F7AC, D_8022F7B0, D_8022F7B4;
#ifdef MIPS_TO_C
void func_802222F0_ovl19(struct GObj *arg0) {
    Vector sp34;
    Vector sp28;
    f32 temp_f2;
    f32 phi_f12;

    if (D_800E98E0[D_8004A7C4->objId] != 0) {
        sp34.y = 0.0f;
        sp34.x = 0.0f;
        sp34.z = 1.0f;
        sp28.y = 0.0f;
        sp28.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[D_8004A7C4->objId];
        sp28.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[D_8004A7C4->objId];
        temp_f2 = vec3_abs_angle_diff(0.0f, &sp34, &sp28, &D_8004A7C4, gEntitiesNextPosZArray) * D_8022F7AC;
        if (temp_f2 < 0.0f) {
            if (temp_f2 < D_8022F7B4) {
                phi_f12 = D_8022F7B4;
            }
        } else {
            if (D_8022F7B0 < temp_f2) {
                phi_f12 = D_8022F7B4;
            }
        }
        D_800DFBD0[D_8004A7C4->objId][8]->angle[2] = phi_f12;
        D_800DFBD0[D_8004A7C4->objId][8]->pos[0] = 30.0f * phi_f12;
    }
    D_8022FAB0->unk4 = gEntitiesNextPosXArray[D_8004A7C4->objId];
    D_8022FAB0->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId];
    D_8022FAB0->unkC = gEntitiesNextPosZArray[D_8004A7C4->objId];
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_802222F0_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_802224BC_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, &D_8022F14C);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_802224BC_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80222500_ovl19(void) {
    s32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    Vector sp2C;
    Vector sp20;
    s32 temp_a1;
    struct GObj *temp_v0;

    temp_v0 = D_8004A7C4;
    temp_a1 = D_800DFBD0[temp_v0->objId][1];
    sp38 = 0.0f;
    sp3C = 0.0f;
    sp40 = 2.0f;
    sp44 = temp_a1;
    func_800B2340(&sp20, temp_a1, temp_v0->objId);
    sp2C = *gEntitiesNextPosXArray - sp20;
    sp30 = 0.0f;
    sp34 = *gEntitiesNextPosZArray - sp28;
    sp44->unk34 = vec3_abs_angle_diff(&sp38, &sp2C);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222500_ovl19.s")
#endif

void func_802226FC_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
extern f32 D_8022F7B8;

void func_802225A4_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F7B8;
    D_800DEF90[D_8004A7C4->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800AF980(0x18);
    func_800A9864(0x20068, 0x1869F, 0x10);
    D_800E9E20[D_8004A7C4->objId] = 0;
    D_800DF150[D_8004A7C4->objId] = func_802226FC_ovl19;
    func_800AA018(0x2035F);
    while (D_800E9E20[D_8004A7C4->objId] == 0) {
        finish_current_thread(1);
    }
    play_sound(0x258);
    func_800AA018(0x20360);
    func_800AFA14();
}

void func_802226FC_ovl19(struct GObj *arg0) {
    f32 dz;
    f32 dy;
    f32 dx;

    if (D_800E9E20[D_8004A7C4->objId] == 0) {
        dz = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[D_8004A7C4->objId];
        dy = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[D_8004A7C4->objId];
        dx = (gEntitiesNextPosYArray[0] + 20.0f) - gEntitiesNextPosYArray[D_8004A7C4->objId];
        if (((dz * dz) + ((dy * dy) + (dx * dx))) < 102400.0f) {
            func_8021E2D0_ovl19(9, 1);
            func_8021E2D0_ovl19(9, 2);
            D_800E9E20[D_8004A7C4->objId] = 1;
        }
    }
}

void func_802228F8_ovl19(struct GObj *arg0);
extern f32 D_8022F7BC;

void func_802227F0_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F7BC;
    D_800DEF90[D_8004A7C4->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800AF980(0x18);
    func_800A9864(0x20060, 0x1869F, 0x10);
    D_800DF150[D_8004A7C4->objId] = func_802228F8_ovl19;
    func_800AA018(0x202DE);
    func_800AA864(0x202DD, 1);
    func_800AA018(0x202E0);
    func_800AA018(0x202DF);
    func_800AFA14();
}

void func_802228F8_ovl19(struct GObj *arg0) {
    func_80222500_ovl19();
}

extern f32 D_8022F7C0;
void func_80222918_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = D_8022F7C0;
    D_800DEF90[D_8004A7C4->objId] = NULL;
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]] + 0.5f;
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800AF980(0x18, D_800E0D50, gEntitiesNextPosXArray, gEntitiesNextPosYArray);
    func_800A9864(0x20071, 0x1869F, 0x10);
    func_800AFA14();
}

#ifdef MIPS_TO_C
void func_80222A54_ovl19(struct GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, &D_8022F158);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222A54_ovl19.s")
#endif

#ifdef MIPS_TO_C
void func_80222A98_ovl19(struct GObj *arg0) {
    f32 temp_f0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    struct GObj *temp_v1;
    struct GObj *temp_v1_2;
    void *temp_v0;
    s32 phi_v0;

    func_8021E184_ovl19();
    temp_v0 = func_800FF144();
    D_8022FAB0 = temp_v0;
    if (temp_v0 != 0) {
        temp_v0->unk10 = 24.0f;
        D_8022FAB0->unk14 = 20.0f;
        D_8022FAB0->unk18 = -240.0f;
        D_8022FAB0->unk21 = 1;
    }
    temp_f0 = D_8022F7C4;
    D_800DEF90[D_8004A7C4->objId] = &D_8021E894;
    D_800DF150[D_8004A7C4->objId] = func_80222CE0_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = D_8022F7C8;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006B, 0x1869F, 0x10);
    D_800EBBE0[D_8004A7C4->objId] = func_8021E2D0_ovl19(0xA, 1 & 0xFF);
    D_800EBDA0[D_8004A7C4->objId] = func_8021E2D0_ovl19(0xA, 2);
    D_800E8060[D_8004A7C4->objId] = 0;
    func_801230E8(0x203B4, 0x203B5, 0);
    while (D_800E8060[D_8004A7C4->objId] == 0) {
        finish_current_thread(1);
    }
    while (D_800E8060[D_8004A7C4->objId] == 1) {
        finish_current_thread(1);
    }
    func_801230E8(0x203B6, 0x203B7, 0);
    func_800AFA14();
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222A98_ovl19.s")
#endif

#ifdef MIPS_TO_C
void *func_80222CE0_ovl19(struct GObj *arg0) {
    f32 sp24;
    struct GObj *temp_a0;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 phi_v1;

    temp_a0 = D_8004A7C4;
    temp_v1 = D_8004A7C4->objId * 4;
    phi_v1 = temp_v1;
    if (*(&D_800E8060 + temp_v1) == 0) {
        phi_v1 = temp_v1;
        if (*D_800E5F90 == 5) {
            gKirbyState.unk17 = 1;
            gKirbyState.abilityState = 0x51;
            *D_800E0D50 = D_8004A7C4->objId;
            *(&D_800E8060 + (D_8004A7C4->objId * 4)) = 1;
            gKirbyState.unk68 = 1;
            if (-1.0f == *D_800E6A10) {
                if (gKirbyState.isTurning & 1) {
                    gKirbyState.turnDirection = 0;
                } else {
                    gKirbyState.isTurning |= 1;
                }
            } else {
                gKirbyState.isTurning = gKirbyState.isTurning & -2;
            }
            phi_v1 = D_8004A7C4->objId * 4;
        }
    }
    func_800B2340(&sp24, (*(D_800DFBD0 + phi_v1))[1], 0xFFFF);
    D_8022FAB0->unk4 = sp24;
    D_8022FAB0->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId] + 0.5f;
    D_8022FAB0->unkC = sp2C;
    return &D_8022FAB0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_2/func_80222CE0_ovl19.s")
#endif

extern f32 D_8022F7CC;

void func_80222E3C_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F7CC;
    D_800DEF90[D_8004A7C4->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006D, 0x1869F, 0x10);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]] + 160.0f;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]] - 160.0f;
    func_800AA018(0x203C2);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] != 2) {
        finish_current_thread(1);
    }
    func_800AA018(0x203C3);
    func_800AFA14();
}

extern f32 D_8022F7D0;

void func_80223020_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = D_8022F7D0;
    D_800DEF90[D_8004A7C4->objId] = func_8021EA20_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006E, 0x1869F, 0x10);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = gEntitiesNextPosXArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = gEntitiesNextPosZArray[D_800E0D50[D_8004A7C4->objId]];
    func_800AA018(0x203C4);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] != 2) {
        finish_current_thread(1);
    }
    func_800AA018(0x203C5);
    func_800AFA14();
}
