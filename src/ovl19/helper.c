// helper.cc

#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_1.h"
#include "ovl2/ovl2_8.h"
#include "ovl19/ovl19_2.h"
#include "D_8004A7C4.h"
#include "ovl0/object_manager.h"
#include "ovl2/ovl2_8.h"
#include "Player.h"
#include "helplib.h"

extern u32 D_800D6E64;
extern s32 D_8012E7FC;

void func_8021E5DC_ovl19(void);
u32 func_8021F0A4_ovl19(struct GObj *arg0);
void func_802228F8_ovl19(struct GObj *arg0);
void func_80222038_ovl19(struct GObj *arg0);
void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2);
void func_802226FC_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
void func_8021F600_ovl19(struct GObj *arg0);
void func_8021E894_ovl19(s32, s32, f32);

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021EF00_ovl19.s")

void func_8021EF44_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = 0.2f;
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

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F0A4_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F174_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F3B4_ovl19.s")

// some meme with the temp float
#ifdef NON_MATCHING

void func_8021F3F8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    D_800E98E0[D_8004A7C4->objId] = 0;
    D_800E9AA0[D_8004A7C4->objId] = func_800FCE50();
    temp_f0 = 0.2f;
    D_800DEF90[D_8004A7C4->objId] = func_8021E894_ovl19;
    D_800DF150[D_8004A7C4->objId] = func_8021F600_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = M_PIF/2;
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
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F3F8_ovl19.s")
#endif

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F600_ovl19.s")

void func_8021F6D8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
    D_800DF150[D_8004A7C4->objId] = NULL;
    gEntitiesAngleYArray[D_8004A7C4->objId] = M_PIF/2;
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
        print_error_stub("drawItemReq  Request Error!![helper.cc]\n");
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
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FA2C_ovl19.s")
#endif

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FC7C_ovl19.s")


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
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FCC0_ovl19.s")
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
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FE5C_ovl19.s")
#endif

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021FF90_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220138_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022023C_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220280_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022045C_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022054C_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220814_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802209A0_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802209E4_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220B40_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220D54_ovl19.s")

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

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220F48_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220F8C_ovl19.s")


extern u32 D_800D71F8;
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221108_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802211A0_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221480_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022159C_ovl19.s")

void func_80221654_ovl19(struct GObj *arg0) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[D_800E0D50[D_8004A7C4->objId]][1], D_800E0D50[D_8004A7C4->objId]);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = sp1C.x;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = sp1C.z;
}

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022170C_ovl19.s")

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
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221750_ovl19.s")
#endif

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221928_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221A74_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221BC8_ovl19.s")

void func_80221CA8_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
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

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221DDC_ovl19.s")

void func_80221E20_ovl19(UNUSED struct GObj *arg0) {
    f32 temp_f0;

    func_8021DFD0_ovl19();
    temp_f0 = 0.2f;
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

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221FC8_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80222038_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80222108_ovl19.s")

extern f32 D_8022F7AC, D_8022F7B0, D_8022F7B4;
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802222F0_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802224BC_ovl19.s")

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80222500_ovl19.s")

void func_802225A4_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
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

void func_802227F0_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
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

void func_80222918_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    temp_f0 = 0.2f;
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

extern void (*D_8022F158_ovl19)(GObj *);

void func_80222A54_ovl19(s32 arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, &D_8022F158_ovl19);
}

// GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80222A98_ovl19.s")
void func_80222CE0_ovl19(GObj*);
void func_80222A98_ovl19(GObj* arg0) {
    f32 temp_f0 = 0.2f;
    struct UnkStruct8022FAB0 *tmp;

    func_8021E184_ovl19();
    tmp = func_800FF144();
    D_8022FAB0 = tmp;
    if (tmp != NULL) {
        D_8022FAB0->unk10 = 24.0f;
        D_8022FAB0->unk14 = 20.0f;
        D_8022FAB0->unk18 = -240.0f;
        D_8022FAB0->unk21 = 1;
    }
    D_800DEF90[D_8004A7C4->objId] = func_8021E894_ovl19;
    D_800DF150[D_8004A7C4->objId] = func_80222CE0_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = 1.5707964f;
    gEntitiesScaleXArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleYArray[D_8004A7C4->objId] = temp_f0;
    gEntitiesScaleZArray[D_8004A7C4->objId] = temp_f0;
    func_800A9864(0x2006B, 0x1869F, 16);
    D_800EBBE0[D_8004A7C4->objId] = func_8021E2D0_ovl19(10, 1);
    D_800EBDA0[D_8004A7C4->objId] = func_8021E2D0_ovl19(10, 2);
    D_800E8060[D_8004A7C4->objId] = 0;
    func_801230E8(0x203B4, 0x203B5, 0);
    while (D_800E8060[D_8004A7C4->objId] == 0) omSleep(1);
    while (D_800E8060[D_8004A7C4->objId] == 1) omSleep(1);
    func_801230E8(0x203B6, 0x203B7, 0);
    func_800AFA14();
}

GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80222CE0_ovl19.s")

void func_80222E3C_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
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

void func_80223020_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
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
