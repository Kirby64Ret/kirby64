// helper.cc

#include <ultra64.h>
#include <macros.h>
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_1.h"
#include "ovl2/ovl2_8.h"
#include "unk_structs/D_8022FAB0.h"
#include "GObj.h"
#include "main/object_manager.h"
#include "ovl0/lbvector.h"
#include "ovl2/ovl2_8.h"
#include "ovl2/ovl2_3.h"
#include "ovl1/ovl1_3.h"
#include "ovl1/ovl1_8.h"
#include "Player.h"
#include "helplib.h"

extern u32 D_800D6E64;
extern s32 D_8012E7FC;

void func_80221BC8_ovl19(void);
void func_8021E5DC_ovl19(void);
void func_8021F0A4_ovl19(GObj *arg0);
void func_802228F8_ovl19(struct GObj *arg0);
void func_80222038_ovl19(struct GObj *arg0);
void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2);
void func_802226FC_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
void func_8021F600_ovl19(struct GObj *arg0);
void func_8021E894_ovl19(s32, s32, f32);
void func_8021FE5C_ovl19(struct GObj *arg0);
void func_80221928_ovl19(struct GObj *arg0);
void func_8021EA20_ovl19(s32, s32, f32);
void func_80220138_ovl19(GObj*);
void func_80222CE0_ovl19(GObj*);
void func_802222F0_ovl19(GObj *arg0);
void func_80221654_ovl19(struct GObj *arg0);

// migrate into respective funcs
extern VTABLE D_8022F080_ovl19;
extern VTABLE D_8022F088_ovl19;
extern VTABLE D_8022F09C_ovl19;
extern VTABLE D_8022F0A4_ovl19;
extern void (*D_8022F158_ovl19)(GObj *);
extern VTABLE D_8022F14C_ovl19;
extern VTABLE D_8022F144_ovl19;
extern VTABLE D_8022F0D8_ovl19;
extern VTABLE D_8022F0E8_ovl19;
extern VTABLE D_8022F13C_ovl19;

// rodata
extern f32 D_8022F7AC, D_8022F7B0, D_8022F7B4;

void func_8021EF00_ovl19(GObj *arg0) {
    // extern void func_8021EF44_ovl19(GObj*);
    // extern void func_8021F174_ovl19(GObj*);
    // VTABLE D_8022F080_ovl19 = {
    //     func_8021EF44_ovl19,
    //     func_8021F174_ovl19,
    // };

    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, D_8022F080_ovl19);
}

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
        omSleep(1);
        goto loop_1;
    }
    func_800AA018(0x203A4);
    omSleep(0x16);
    D_8012E7FC = 1;
    func_800AFA14();
}

void func_8021F0A4_ovl19(GObj *arg0) {
    if ((D_800E8060[D_8004A7C4->objId] == 0) && (D_800E5F90[0] == 0x0000000A)) {
        gKirbyState.unk3C = 0;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x4F;
        gKirbyState.unk68 = 1;
        D_800E0D50[0] = D_8004A7C4->objId;
        D_800E8060[D_8004A7C4->objId] = 1;
        if (D_800E6A10[0] == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
    }
}

// regalloc
#ifdef NON_MATCHING
void func_8021F174_ovl19(GObj *arg0) {
    func_8021DFD0_ovl19();
    D_800DF150[D_8004A7C4->objId] = NULL;
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.2f;
    func_800A9864(0x2006B, 0x1869F, 0x10);
    D_800DFBD0[D_8004A7C4->objId][12]->unk54 = 2;
    func_801230E8(0x203BC, 0x203BD, 0);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] == 0) {
        omSleep(1);
    }
loop:
    if (D_800E8920[0] == 0) {
        omSleep(1);
        goto loop;
    }
    func_801230E8(0x203B0, 0x203B1, 1);
    func_801230E8(0x203BE, 0x203BF, 0);
    while (D_800E8060[D_800E0D50[D_8004A7C4->objId]] == 1) {
        omSleep(1);
    }
    D_800DFBD0[D_8004A7C4->objId][12]->unk54 = 1;
    func_801230E8(0x203A6, 0x203A7, 0);
    func_800AFA14();
}
#else
void func_8021F174_ovl19(GObj *arg0);
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8021F174_ovl19.s")
#endif

void func_8021F3B4_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 5, D_8022F088_ovl19);
}

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
            omSleep(1);
        }
        func_8021FA2C_ovl19();
        func_801230E8(0x203CB, 0x203CC, 1);
    }
    func_801230E8(0x203CF, 0x203D0, 0);
    func_800AFA14();
}

void func_8021F600_ovl19(GObj *arg0) {
    Vector sp2C, sp20;

    if ((D_800E98E0[D_8004A7C4->objId] == 0) && (D_800D6E64 == 0)) {
        struct EntityThing800E9AA0 *tmp = D_800E9AA0[D_8004A7C4->objId];

        sp2C.x = gEntitiesNextPosXArray[0];
        sp2C.y = 0.0f;
        sp2C.z = gEntitiesNextPosZArray[0];

        sp20.x = tmp->unk8;
        sp20.y = 0.0f;
        sp20.z = tmp->unk10;
        if (vec3_dist_square(&sp2C, &sp20) < 102400.0f) {
            D_800E98E0[D_8004A7C4->objId]++;
        }
    }
}

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
            omSleep(1);
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
        omSleep(1);
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

void func_8021FC7C_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, D_8022F09C_ovl19);
}

void func_8021FCC0_ovl19(struct GObj *arg0) {
    f32 tmp;

    func_8021DFD0_ovl19();
    tmp = 0.2f;
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
        omSleep(1);
    }
    D_800E98E0[D_800EBBE0[D_8004A7C4->objId]] = 1;
    func_800AA154(0x2035E);
    func_800AFA14();
}

void func_8021FE5C_ovl19(struct GObj *arg0) {
    Vector sp2C, sp20;
    if (D_800E98E0[D_8004A7C4->objId] == 0) {
        if (gKirbyState.unk16C != 0) {
            if ((gEntitiesNextPosYArray[D_8004A7C4->objId] - 20.0f) <= gEntitiesNextPosYArray[0]) {
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

void func_8021FF90_ovl19(s32 arg0) {
    D_800E9AA0[D_8004A7C4->objId] = NULL;
    func_8021DFD0_ovl19();
    D_800DF150[D_8004A7C4->objId] = func_80220138_ovl19;
    gEntitiesAngleYArray[D_8004A7C4->objId] = 0.0f;
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.2f;
    func_800A9864(0x20060, 0x1869F, 0x10);
    D_800E98E0[D_8004A7C4->objId] = 0;
    func_801230E8(0x202EF, 0x202F0, 0);
    while (D_800E98E0[D_8004A7C4->objId] == 0) {
        omSleep(1);
    }
    D_800E9AA0[D_8004A7C4->objId] = 1;
    func_801230E8(0x202ED, 0x202EE, 1);
    gKirbyState.unk17 = 0;
    gKirbyState.unk68 = 0;
    D_800E8760[D_8004A7C4->objId] = 0;
    func_800AFA14();
}

// Struct definition rabbit hole
#ifdef MIPS_TO_C
void func_80220138_ovl19(s32 arg0) {
    extern s32 D_801964E8;
    s32 *sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    u32 temp_v1;

    D_8004A7C4->objId = D_8004A7C4->objId;
    if (D_800E9AA0[D_8004A7C4->objId] != NULL) {
        sp2C = gEntitiesNextPosXArray[D_8004A7C4->objId];
        sp20 = sp2C;
        sp24 = gEntitiesNextPosYArray[D_8004A7C4->objId] + 240.0f;
        sp34 = gEntitiesNextPosZArray[D_8004A7C4->objId];
        sp28 = sp34;
        sp3C = &D_801964E8;
        sp38 = 1.5707964f;
        sp30 = gEntitiesNextPosYArray[D_8004A7C4->objId] + 239.0f;
        func_8011BF4C(&sp20, &func_80155ED8_ovl3);
        D_800E9AA0[D_8004A7C4->objId] = NULL;
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220138_ovl19.s")
#endif

void func_8022023C_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, D_8022F0A4_ovl19);
}


// Pit of Doom
// {
    // "struct offset vs absolute access" rabbit hole
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220280_ovl19.s")

    // having to define a struct thats only ever accessed here and the above function
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022045C_ovl19.s")

    // another struct def
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_8022054C_ovl19.s")

    // the same rabbit hole as func_80220280_ovl19, plus a triple nested loop
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220814_ovl19.s")

void func_802209A0_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 4, D_8022F0D8_ovl19);
}

    // the same rabbit hole as func_80220280_ovl19
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802209E4_ovl19.s")

    // the same rabbit hole as func_80220280_ovl19
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220B40_ovl19.s")

    // currently flying blind filling out LayoutNode->unk80 so I won't bother
    GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220D54_ovl19.s")
// }

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

void func_80220F48_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 4, D_8022F0E8_ovl19);
}

// the same rabbit hole as func_80220280_ovl19
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80220F8C_ovl19.s")

extern u32 D_800D71F8;
// the same rabbit hole as func_80220280_ovl19
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221108_ovl19.s")

// the same rabbit hole as func_80220280_ovl19
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802211A0_ovl19.s")

// the same rabbit hole as func_80220280_ovl19
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221480_ovl19.s")

void func_8022159C_ovl19(s32 arg0) {
    D_800DEF90[D_8004A7C4->objId] = NULL;
    D_800DF150[D_8004A7C4->objId] = func_80221654_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.2f;
    func_800A9864(0x20071, 0x1869F, 0x10);
    func_800AFA14();
}

void func_80221654_ovl19(struct GObj *arg0) {
    Vector sp1C;

    func_800B2340(&sp1C, D_800DFBD0[D_800E0D50[D_8004A7C4->objId]][1], D_800E0D50[D_8004A7C4->objId]);
    gEntitiesNextPosXArray[D_8004A7C4->objId] = sp1C.x;
    gEntitiesNextPosYArray[D_8004A7C4->objId] = gEntitiesNextPosYArray[D_800E0D50[D_8004A7C4->objId]];
    gEntitiesNextPosZArray[D_8004A7C4->objId] = sp1C.z;
}

void func_8022170C_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, D_8022F13C_ovl19);
}

void func_80221750_ovl19(struct GObj *arg0) {
    f32 temp_f0;

    func_8021E184_ovl19();
    temp_f0 = 0.2f;
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
        func_800AA864(0x202E1, 1U);
        D_800E9E20[D_8004A7C4->objId] = 1;
        func_80221BC8_ovl19();
        while (D_800E9E20[D_8004A7C4->objId] == 1) {
            omSleep(1);
        }
        func_800AA018(0x202E4);
        func_800AA864(0x202E3, 1);
    }
}

void func_80221928_ovl19(GObj *arg0) {
    switch (D_800E9E20[D_8004A7C4->objId]) {
        case 0:
            func_80221A74_ovl19();
            break;
        case 1:
            if ((D_800E4C50[D_8004A7C4->objId] >= 0.0f) && (gEntitiesAngleYArray[D_8004A7C4->objId] >= 6.213372f)) {
                D_800E4C50[D_8004A7C4->objId] = 0.0f;
                gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E4C50[D_8004A7C4->objId];
                D_800E9E20[D_8004A7C4->objId] = 2;
            }
            if ((D_800E4C50[D_8004A7C4->objId] < 0.0f) && (gEntitiesAngleYArray[D_8004A7C4->objId] <= 0.06981317f)) {
                D_800E4C50[D_8004A7C4->objId] = 0.0f;
                gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E4C50[D_8004A7C4->objId];
                D_800E9E20[D_8004A7C4->objId] = 2;
            }
            break;
    }
}

#ifdef NON_MATCHING
void func_80221A74_ovl19(void) {
    Vector sp34;
    Vector sp28;
    f32 temp_f0;

    sp34.y = 0.0f;
    sp34.x = 0.0f;
    sp34.z = 2.0f;
    lbvector_Rotate(&sp34, AXIS_Y, gEntitiesAngleYArray[D_8004A7C4->objId]);
    sp28.z = 0.0f;
    sp28.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[D_8004A7C4->objId];
    sp28.y = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[D_8004A7C4->objId];
    temp_f0 = vec3_abs_angle_diff(&sp34, &sp28);
    if (ABSF(temp_f0) <= 0.06981317f) {
        D_800E4C50[D_8004A7C4->objId] = 0.0f;
    } else {
        D_800E4C50[D_8004A7C4->objId] = ((temp_f0 < 0.0f) ? -1 : 1) * 0.06981317f;
    }
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_80221A74_ovl19.s")
#endif

void func_80221BC8_ovl19(void) {
    if ((gEntitiesAngleYArray[D_8004A7C4->objId] <= 0.06981317f) || (gEntitiesAngleYArray[D_8004A7C4->objId] >= 6.213372f)) {
        D_800E4C50[D_8004A7C4->objId] = 0.0f;
        gEntitiesAngleYArray[D_8004A7C4->objId] = D_800E4C50[D_8004A7C4->objId];
        D_800E9E20[D_8004A7C4->objId] = 2;
    } else if (gEntitiesAngleYArray[D_8004A7C4->objId] >= M_PIF) {
        D_800E4C50[D_8004A7C4->objId] = 0.06981317f;
    } else {
        D_800E4C50[D_8004A7C4->objId] = -0.06981317f;
    }
}

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

void func_80221DDC_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 2, D_8022F144_ovl19);
}

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
        omSleep(1);
    }
    func_8021E2D0_ovl19(7, 1);
    func_800AA018(0x203C0);
    D_800DF310[D_8004A7C4->objId] = &func_80221FC8_ovl19;
    func_800AF27C();
    func_800F753C();
    func_800AFBB4(0, D_8004A7C4);
    while (gKirbyState.unk30 == 0) {
        omSleep(1);
    }
    func_800B1900((u16) D_8004A7C4->objId);
}

void func_80221FC8_ovl19(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 == 1.0f) {
            func_800FB914(2);
        } else if (arg2 == 2.0f) {
            func_800FB914(1);
        }
    }
}

void func_80222038_ovl19(GObj *arg0) {
    if (D_800E5F90[0] == 6) {
        D_800E0D50[0] = D_8004A7C4->objId;
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x50;
        gKirbyState.unk68 = 1;
        if (D_800E6A10[0] == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
        play_sound(400);
        D_800DF150[D_8004A7C4->objId] = NULL;
    }
}

void func_80222108_ovl19(s32 arg0) {
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
    D_800DEF90[D_8004A7C4->objId] = func_800B5064;
    D_800E0F10[D_8004A7C4->objId] = 1;
    gEntitiesAngleYArray[D_8004A7C4->objId] = gEntitiesAngleYArray[D_800E0D50[D_8004A7C4->objId]];
    D_800DF150[D_8004A7C4->objId] = func_802222F0_ovl19;
    gEntitiesScaleXArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleYArray[D_8004A7C4->objId] = 0.2f;
    gEntitiesScaleZArray[D_8004A7C4->objId] = 0.2f;
    func_800A9864(0x2006B, 0x1869F, 0x10, gEntitiesAngleYArray);
    D_800E98E0[D_8004A7C4->objId] = 0;
    func_801230E8(0x203AC, 0x203AD, 1);
    D_800E98E0[D_8004A7C4->objId] = 1;
    D_800DEF90[D_8004A7C4->objId] = func_800B4924;
    D_800DFBD0[D_8004A7C4->objId][8]->angle.z = 0.0f;
    func_800AFA14();
}

// i suspect its that if/else block
#ifdef NON_MATCHING
void func_802222F0_ovl19(GObj *arg0) {
    Vector sp34;
    Vector sp28;
    f32 var_f12;

    if (D_800E98E0[D_8004A7C4->objId] != 0) {
        sp34.y = 0.0f;
        sp34.x = 0.0f;
        sp34.z = 1.0f;
        sp28.y = 0.0f;
        sp28.x = gEntitiesNextPosXArray[0] - gEntitiesNextPosXArray[D_8004A7C4->objId];
        sp28.z = gEntitiesNextPosZArray[0] - gEntitiesNextPosZArray[D_8004A7C4->objId];
        var_f12 = vec3_abs_angle_diff(&sp34, &sp28) * 0.6f;
        if (var_f12 < 0.0f) {
            if (var_f12 < -0.7853982f) {
                var_f12 = -0.7853982f;
            }
        } else {
            if (var_f12 > 0.7853982f) {
                var_f12 = 0.7853982f;
            }
        }
        D_800DFBD0[D_8004A7C4->objId][8]->angle.y = var_f12;
        D_800DFBD0[D_8004A7C4->objId][8]->pos.x = 30.0f * var_f12;
    }
    D_8022FAB0_ovl19->unk4 = gEntitiesNextPosXArray[D_8004A7C4->objId];
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId];
    D_8022FAB0_ovl19->unkC = gEntitiesNextPosZArray[D_8004A7C4->objId];
}
#else
GLOBAL_ASM("asm/nonmatchings/ovl19/helper/func_802222F0_ovl19.s")
#endif

void func_802224BC_ovl19(GObj *arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, D_8022F14C_ovl19);
}

void func_80222500_ovl19(void) {
    struct LayoutNode *node = D_800DFBD0[D_8004A7C4->objId][1];
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    sp38.x = 0.0f;
    sp38.y = 0.0f;
    sp38.z = 2.0f;
    // applies 
    func_800B2340(&sp20, node, D_8004A7C4->objId);
    sp2C.x = gEntitiesNextPosXArray[0] - sp20.x;
    sp2C.y = 0.0f;
    sp2C.z = gEntitiesNextPosZArray[0] - sp20.z;
    node->angle.y = vec3_abs_angle_diff(&sp38, &sp2C);
}

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
        omSleep(1);
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

void func_80222A54_ovl19(s32 arg0) {
    call_virtual_function(D_800E7880[D_8004A7C4->objId], 3, &D_8022F158_ovl19);
}

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

void func_80222CE0_ovl19(GObj *arg0) {
    Vector sp24;

    if ((D_800E8060[D_8004A7C4->objId] == 0) && (D_800E5F90[0] == 5)) {
        gKirbyState.unk17 = 1;
        gKirbyState.abilityState = 0x51;
        D_800E0D50[0] = D_8004A7C4->objId;
        D_800E8060[D_8004A7C4->objId] = 1;
        gKirbyState.unk68 = 1;
        if (*D_800E6A10 == -1.0f) {
            if (gKirbyState.isTurning & 1) {
                gKirbyState.turnDirection = 0;
            } else {
                gKirbyState.isTurning |= 1;
            }
        } else {
            gKirbyState.isTurning &= ~1;
        }
    }
    func_800B2340(&sp24, D_800DFBD0[D_8004A7C4->objId][1], 0xFFFF);
    D_8022FAB0_ovl19->unk4 = sp24.x;
    D_8022FAB0_ovl19->unk8 = gEntitiesNextPosYArray[D_8004A7C4->objId] + 0.5f;
    D_8022FAB0_ovl19->unkC = sp24.z;
}

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
        omSleep(1);
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
        omSleep(1);
    }
    func_800AA018(0x203C5);
    func_800AFA14();
}
