#include <ultra64.h>
#include <macros.h>

#include "omCurrentObj.h"
#include "types.h"
#include "stages.h"
#include "buffers.h"
#include "ovl1/ovl1_6.h"
extern struct Player gKirbyState;

extern f32 gKirbyHp;
s32 change_kirby_hp(f32);

// Joint was the best name here since it involves
// 2 players in an item that "joins" them (i.e. a vehicle)
// and this controls what animations play for every entity involved
struct JointAnim {
    u32 jointAnim1;
    u32 jointAnim2;
    u32 player1Anim1;
    u32 player1Anim2;
    u32 player2Anim1;
    u32 player2Anim2;
};
extern struct JointAnim D_8022F170[];
extern struct JointAnim D_8022F560[];

void func_80223200_ovl19(struct GObj *);
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80223200_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80223E68_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80224564_ovl19.s")

void func_802245A0_ovl19(s32 arg0) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp += 1.0f;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }
        
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &func_80223200_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_8022470C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80224858_ovl19.s")

void func_802248C0_ovl19(s32 arg0);
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_802248C0_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80225620_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80225DF8_ovl19.s")

void func_80225E38_ovl19(s32 arg0) {
    if ((D_800E83E0[omCurrentObj->objId] != 0) && (gKirbyState.unk44 != 7)) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp++;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802248C0_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

extern s32 D_8012E804, D_8012E80C, D_8012E810;
#ifdef NEEDS_RODATA
void func_80225FB4_ovl19(void) {
    f32 tmp = 12.0f;

    if (D_800E8920[omCurrentObj->objId] != 0) {
        D_800E6690[omCurrentObj->objId] = 0.45f;
        D_800E6850[omCurrentObj->objId] = ABSF(tmp);
        if (gKirbyState.unk4C == 0) {
            gKirbyState.unk48 = 0;
            D_8012E80C = func_800A8234(2, 1, 0x61);
            D_8012E810 = func_800A8234(2, 1, 0x61);
        }
    } else {
        if (D_8012E80C != 0) {
            func_8011E0E8();
        }
        if (D_8012E804 != 1) {
            D_800E6690[omCurrentObj->objId] = 0.025f;
            D_800E6850[omCurrentObj->objId] = 0.0f;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80225FB4_ovl19.s")
#endif

void func_802260FC_ovl19(struct GObj *);
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_802260FC_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80226AA8_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80226FFC_ovl19.s")

void func_8022703C_ovl19(s32 arg0) {
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        if (gKirbyState.unk68 == 3) {
            gKirbyHp++;
        }
        if (change_kirby_hp(-1.0f) == 0) {
            D_800E83E0[omCurrentObj->objId] = 1;
        } else {
            D_800E64D0[omCurrentObj->objId] = 7.5f;
        }
        switch (D_800E83E0[omCurrentObj->objId]) {
            case 1:
                gKirbyState.unk44 = 5;
                break;
            case 3: default:
                gKirbyState.unk44 = 4;
                break;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_802260FC_ovl19);
        D_800E98E0[omCurrentObj->objId] = gKirbyState.unk44;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_802271A8_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_802273A0_ovl19.s")

extern s32 D_8022FAD0; // bss
extern s32 D_8022FAF0; // bss
extern s32 D_800D6B54; // ovl1 bss

void func_8022759C_ovl19(struct GObj *gobj) {
    Vector vec;

    D_800E17D0[omCurrentObj->objId] = D_800E17D0[0];
    if (*D_800E7B20 != 0.0f) {
        if (D_800D6B54 == 0) {
            if (D_8012E804 != 4) {
                vec.x = gEntitiesNextPosXArray[omCurrentObj->objId];
                vec.y = gEntitiesNextPosYArray[omCurrentObj->objId];
                vec.z = gEntitiesNextPosZArray[omCurrentObj->objId];
                func_80155C68_ovl19(&D_8022FAD0, &vec);
            } else {
                func_80154648_ovl19(0, &D_8022FAF0, &D_8022FAD0);
            }
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227690_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_8022785C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227938_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227A38_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227AA8_ovl19.s")

extern s32 D_800D6B54;

u32 func_80227B20_ovl19(void) {
    Vector v0, v1;

    if (D_800D6B54 != 0 || D_800E7B20[omCurrentObj->objId] == 0.0f) {
        return 1;
    }
    v0.x = gEntitiesPosXArray[omCurrentObj->objId];
    v0.y = gEntitiesPosYArray[omCurrentObj->objId];
    v0.z = gEntitiesPosZArray[omCurrentObj->objId];
    v1.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    v1.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    v1.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (func_8010474C(&v0, &v1) != 0) {
        func_8011D40C();
        return 1;
    }
    if ((gKirbyState.unk140 != 0) && (D_800E7B20[omCurrentObj->objId] != 0.0f) && (gKirbyState.unk44 != 4)) {
        return 1;
    }
    return 0;
}

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227C88_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227D4C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227F38_ovl19.s")

#include "ovl19_2.h"
extern s8 D_8012E7D7;
void func_800B4954(void);
void func_802283A8_ovl19(struct GObj *);
void func_800A9864(f32, u32, s32, s32);
void func_800AECC0(f32);
void func_800AED20(f32);

#define MATHMA(x) (x * 0x18)
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80227F90_ovl19.s")

void func_802283A8_ovl19(struct GObj *this) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if ((D_800E98E0[omCurrentObj->objId] == 0) && (gEntitiesNextPosYArray[0] <= 35.0f)) {
        gKirbyState.abilityState = 0x4D;
        set_kirby_action_2((u8) gKirbyState.abilityState, 0x1C);
        D_800E98E0[omCurrentObj->objId] = 1;
    }
    func_800FF200(D_8022FAB0);
}

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_8022846C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_802284EC_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_8022858C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80228874_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_8022889C_ovl19.s")

GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80228C44_ovl19.s")

extern void func_800B1434(s32);
extern void func_800B4954(void);
GLOBAL_ASM("asm/non_matchings/ovl19/ovl19_3/func_80228EF4_ovl19.s")
