// plyeff.cc - player effects?

#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "ovl2_8.h"
#include "ovl2_6.h"
#include "sounds.h"
#include "omCurrentObj.h"
#include "unk_structs/D_800DE350.h"
#include "ovl1/ovl1_6.h"
extern Controller_800D6FE8 gKirbyController;



void *func_8011BA10(struct CollisionTriangle *tri, u32 arg1) {
    u32 i;
    struct DynGeo_List *destructGroups;
    struct vCollisionHeader *vColHeader;
    u16 *destrucIndex;
    
    if (arg1 != 20) {
        vColHeader = D_8012D948[arg1].unk4;
    } else {
        vColHeader = D_8012940C.unk4;
    }
    
    destructGroups = &vColHeader->header.Destructable_Groups[tri->collisionIndex];
    
    destrucIndex = &vColHeader->header.Destructable_Indices[destructGroups->Index_To_Dynamic_Geo_Group];
    
    for (i = 0; i < destructGroups->Num_Dynamic_Geo_Group_Members; i++) {
        vColHeader->header.Triangles[*destrucIndex].normalType &= ~3;
        destrucIndex++;
    }
}

struct Struct800DFBD0 {
    
    u8 filler[0x54];
    s8 unk54;
};

extern u32 D_801290D0;


struct LayoutNode *func_8011BABC(struct CollisionTriangle *tri, u32 arg1) {
    u32 i;
    struct DynGeo_List *destructGroups;
    struct vCollisionHeader *vColHeader;
    u16 *destrucIndex;
    u32 phi_a0;

    if (arg1 != 20) {
        vColHeader = D_8012D948[arg1].unk4;
        phi_a0 = D_8012D948[arg1].unk1;
    } else {
        vColHeader = D_8012940C.unk4;
        phi_a0 = D_801290D0;
    }
    
    destructGroups = &vColHeader->header.Destructable_Groups[tri->collisionIndex];
    
    destrucIndex = &vColHeader->header.Destructable_Indices[destructGroups->Index_To_Dynamic_Geo_Group];
    
    for (i = 0; i < destructGroups->Num_Dynamic_Geo_Group_Members; i++) {
        vColHeader->header.Triangles[*destrucIndex].normalType &= ~3;
        destrucIndex++;
    }

    return D_800DFBD0[phi_a0][destructGroups->Unk_Index];
}

extern func_800A4794(Vec3f, struct LayoutNode *, struct vCollisionHeader *, struct DynGeo_List *);
extern func_800FD754(s32 *, f32, f32, f32);
extern func_800A4DB8(Vec3f, struct LayoutNode *);
extern func_800A802C(s32 *, s32, s32, Vec3f, Vec3f);


struct LayoutNode *func_8011BB98(struct CollisionTriangle *tri, u32 arg1) {
    u32 i;
    struct DynGeo_List *destructGroups;
    struct LayoutNode *temp_s0;
    struct vCollisionHeader *vColHeader;
    u16 *destrucIndex;
    u32 phi_t1;
    Vec3f sp44;
    Vec3f sp38;
    Vec3f sp2C;

    if (arg1 != 20) {
        vColHeader = D_8012D948[arg1].unk4;
        phi_t1 = D_8012D948[arg1].unk1;
    } else {
        vColHeader = D_8012940C.unk4;
        phi_t1 = D_801290D0;
    }
    
    destructGroups = &vColHeader->header.Destructable_Groups[tri->collisionIndex];
    
    destrucIndex = &vColHeader->header.Destructable_Indices[destructGroups->Index_To_Dynamic_Geo_Group];

    for (i = 0; i < destructGroups->Num_Dynamic_Geo_Group_Members; i++) {
        vColHeader->header.Triangles[*destrucIndex].normalType &= ~3;
        destrucIndex++;
    }

    temp_s0 = D_800DFBD0[phi_t1][destructGroups->Unk_Index];
    temp_s0->unk54 = 2;
    
    if (tri->collisionParameter == 0) {
        func_800A4794(sp44, temp_s0, vColHeader, destructGroups);
        func_800FD754(NULL, sp44[0], sp44[1], sp44[2]);
    } else {
        func_800A4794(sp38, temp_s0, vColHeader, destructGroups);
        func_800A4DB8(sp2C, temp_s0);
        func_800A802C(NULL, 3, 54, sp38, sp2C);
    }
    return temp_s0;
}

void func_8011BD08(struct CollisionTriangle *tri, u32 arg1) {
    func_8011BB98(tri, arg1);
    play_sound(SOUND_BGBRAKE1);
}

// start is the same as the above functions
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011BD30.s")

extern u8 D_80126E20[];
u32 func_8011BED0(u16 arg0, u16 arg1, u16 arg2) {
    if ((arg0) == 9) {
        if (arg1 == 0) {
            return 1;
        }
        if (arg1 == arg2 || ((arg1 < 8) && (D_80126E20[arg1] & D_80126E20[arg2]))) {
            return 1;
        }
        return 0;
    }
    return 1;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011BF4C.s")

void func_8011C2A0(void *arg0) {
    play_sound(11);
    func_8011BA10(*(u32 *)((u32)arg0+0x84), 20); // todo: struct
}

void vec3_cross_product(Vector *v1, Vector *v2, Vector *dst) {
    dst->x = (v1->y * v2->z) - (v1->z * v2->y);
    dst->y = (v1->z * v2->x) - (v1->x * v2->z);
    dst->z = (v1->x * v2->y) - (v1->y * v2->x);
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011C344.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011C4E8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011C720.s")

extern s32 D_8011D0FC; // probably part of a struct

void func_8011C838(void) {
    struct UnkStruct800DE350 *temp = D_800DE350[request_track_general(18, 0, 1)];
    
    temp->unk48 = &D_8011D0FC;
}

struct UnkStruct800D6F18 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};

extern s32 D_800D6F10;
extern struct UnkStruct800D6F18 D_800D6F18[2];
//regalloc
#ifdef NON_MATCHING
void func_8011C87C(void) {
    u32 i;
    
    gKirbyState.unk4 = 0;
    gKirbyState.isHoldingEntity = 0;
    gKirbyState.inhaledEntityData = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.currentInhale = 0;
    
    for (i = 0; i < 2; i++) {
        D_800D6F18[i].unk4 = 0;
        D_800D6F18[i].unk8 = 0;
        D_800D6F18[i].unkC = 0;
        D_800D6F18[i].unk0 = 0;
    }

    D_800D6F10 = 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011C87C.s")
#endif

void func_8011C8D0(void) {
    func_80105180(&gPositionState);
    D_800D6F18[1].unkC = 0;
}


extern f32 D_80128E28;
extern s32 D_800BE50C;
extern f32 D_800BE510;
extern f32 D_80128E24;
extern s32 D_800B531C;
extern s32 D_8011CFF4;
extern s32 D_8012EADC;
extern s32 D_8012EAE0;
extern f32 gKirbyHp;
extern s32 D_800D6E54;

void func_800F88C8(s32, s32, f32);
// some sort of init_kirby function?
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011C8F8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011CCB8.s")

void func_800AECC0(f32);
void func_800AED20(f32);
extern s32 D_800E8AE0[];


void func_8011CF58(void) {
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}

void func_8011CFE0(void) {
    gKirbyState.unk4 = 0;
    gKirbyState.numberInhaled = 0;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011CFF4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011D0FC.s")

struct UnkStruct801290D8 {
    u8 filler[0x14];
    u16 unk14;
};

extern u8 D_8012E7D7;
extern s32 D_800D6B54, D_800D6B58, D_800BE4F8, D_800D708C;
extern struct UnkStruct801290D8 *D_801290D8;
s32 change_kirby_hp(f32);

void func_8011D40C(void) {
    if (D_800D6B54 == 0) {
        D_8012E7D7 = 1;
        change_kirby_hp(-6.0f);
        D_800D6B54 = 1;
        D_800D6B58 = 0x96;
        D_800BE4F8 = 6;
        func_800FA414(6);
        D_800D708C = D_801290D8->unk14;
        func_80020998_ovl2(0, 0x7800);
        play_music(0, 5);
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011D4A4.s")

extern s32 D_801926E8;
extern s32 D_80190358;

void func_8011D614(void) {
    func_8011CF58();
    func_800A9760(0x20007);
    
    D_800E0490[omCurrentObj->objId] = &D_801926E8;

    gKirbyState.unk15C = &D_80190358;
    gKirbyState.unk154 = 2;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011D67C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011D858.s")

extern f32 func_800F951C(s32 arg1,f32 arg2,s32 arg3,f32 arg4);
f32 func_8011D9E0(s32 arg1, f32 arg2, s32 arg3, f32 arg4) {
    f32 temp_f0;

    temp_f0 = func_800F951C(arg1, arg2, arg3, arg4);
    if (temp_f0 == D_80128EF8) {
        return D_80128EFC;
    }
    return temp_f0;
}


GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011DA34.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011DAF8.s")

void func_8011DC04(u32 arg0) {
	func_800A77E8(arg0, &D_8012E818, &D_8012E81C);
}

void func_8011DC30(u32 arg0) {
    func_800A77E8(arg0, &D_8012E820, &D_8012E824);
}

void func_8011DC5C(void) {
    if (gKirbyState.unk58 != 0) {
        func_800A7870(&gKirbyState.unk58, &gKirbyState.unk5C);
    }
    gKirbyState.unk58 = 0;
    gKirbyState.unk5C = 0;
    if (gKirbyState.unk60 != 0) {
        func_800A7870(&gKirbyState.unk60, &gKirbyState.unk64);
    }
    gKirbyState.unk60 = 0;
    gKirbyState.unk64 = 0;
}

void func_8011DCD0(void) {
    if (gKirbyState.unk60 != 0) {
        func_800A7870(&D_8012E820, &D_8012E824);
    }
    gKirbyState.unk60 = 0;
    gKirbyState.unk64 = (u16)0;
}

void func_8011DD18(s32 arg0) {
    if (gGameState != 0x21) {
        if (arg0 != gKirbyState.ability) {
            gKirbyState.ability = arg0;
            func_8012310C(arg0);
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011DD5C.s")

void func_8011E0E8(void) {
    if (gKirbyState.unk4C != 0) {
        if (gKirbyState.unk48 == 0) {
            func_800A22D4(gKirbyState.unk4C);
        } else {
            func_800A1F30(gKirbyState.unk4C);
        }
        gKirbyState.unk4C = 0;
        gKirbyState.unk48 = 0;
    }
    if (gKirbyState.unk50 != 0) {
        if (gKirbyState.unk48 == 0) {
            func_800A22D4(gKirbyState.unk50);
        } else {
            func_800A1F30(gKirbyState.unk50);
        }
        gKirbyState.unk50 = 0;
        gKirbyState.unk48 = 0;
    }
}

void func_8011E190(void) {
	u32 temp_a0;
	u32 temp_v0;
	
    if (gGameState != 0x21) {
		temp_a0 = gKirbyState.currentInhale;
		temp_v0 = gKirbyState.currentInhale;
        if (temp_v0 != 0) {
            gKirbyState.ability = (s32) gKirbyState.currentInhale;
            func_8012310C(temp_a0);
        }
        gKirbyState.secondInhale = 0;
        gKirbyState.firstInhale = 0;
        gKirbyState.currentInhale = 0;
    }
}


extern s32 D_80126EF8[][0x90 / 4];
s32 func_8011E1E8(s32 arg0, s32 arg1) {
    if (arg1 >= 8) {
        return arg1;
    }
    if (arg0 >= 8) {
        return arg0;
    }
    return D_80126EF8[arg0][arg1];
}

void func_8011E234(void) {
    D_8012E922 = 0x14;
}

u8 func_8011E244(void) {
    if (D_800E8920[PLAYERTRACK] == 1) {
        return D_8012E9B8;
    } else {
		return 0x14;
	}
}

u8 func_8011E270(void) {
    if (D_8012E8C2 == 0x12 || D_8012E8C2 == 0x13) {
        return 1;
    }
    return 0;
}

extern f32 D_80128F18;
f32 func_8011E2A0(void) {
    f32 temp_f2;

    if ((gKirbyState.isTurning & 0x4000) == 0) {
        temp_f2 = (f32)gKirbyState.unk114->unk10 * D_80128F18;
        if (temp_f2 != 0.0f) {
            return temp_f2 * D_80128F18;
        }
    }
    return 0.0f;
}

void func_8011E31C(Vector *arg0) {
    arg0->x = gPositionState.kirbyHeadPos[PLAYERTRACK];
    arg0->y = gPositionState.kirbyHeight[1];
    arg0->z = gPositionState.kirbyHeadPos[2];
}

s32 func_8011E340(void) {
    if (gKirbyState.floorCollisionNext != 0) {
        return gKirbyState.unk114;
    } else {
		return 0;
	}
}

s32 func_8011E368(void) {
    return D_800D6F10;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011E374.s")

void func_8011E438(void) {
    gKirbyState.unk4 = 0;
    gKirbyState.unk17 = 1;
    gKirbyState.abilityInUse = 0;
    set_kirby_action_2(0x48, 0x1C);
    D_800E6850[PLAYERTRACK] = 0.0f;
    D_800E64D0[PLAYERTRACK] = D_800E6690[PLAYERTRACK] = D_800E6850[PLAYERTRACK];
    D_800E3210[PLAYERTRACK] = 0.0f;
    D_800E3750[PLAYERTRACK] = D_80128F20;
    D_800E3C90[PLAYERTRACK] = 16.0f;
    gEntitiesScaleZArray[PLAYERTRACK] = D_80128F24;
    gEntitiesScaleXArray[PLAYERTRACK] = gEntitiesScaleYArray[PLAYERTRACK] = gEntitiesScaleZArray[PLAYERTRACK];
}

void func_8011E4E4(u32 arg0) {
    gKirbyState.unk17 = 1;
    gKirbyState.unk18 = 1;
    gKirbyState.abilityState = arg0;
    gKirbyState.unk68 = 1;
}

void func_8011E504(void) {
    gKirbyState.unk17 = 0;
    gKirbyState.unk18 = 0;
    gKirbyState.abilityState = 0;
    gKirbyState.unk24 = 0;
    gKirbyState.unk68 = 0;
}

void func_8011E524(void) {
    if (gKirbyState.unk16C == 0) {
        gKirbyState.unk16C = 1;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011E548.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011E978.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011EBD4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011ED68.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011F690.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8011FEF8.s")


extern f32 D_80129068;
void func_80120AF8(Vector *arg0);
void func_80120A28(void) {
    Vector sp24;
    if ((D_800E8AE0[omCurrentObj->objId] & 6) != 0) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_80129068;
        D_800E6850[omCurrentObj->objId] = 0.0f;
    } else {
        func_80120AF8(&sp24);
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * sp24.z;
        D_800E6850[omCurrentObj->objId] = 0.0f;
    }
}

extern f32 D_80129070, D_8012906C;
struct UnkStruct80128434 {
    Vector unk0;
    u32 unkC;
    Vector unk10;
};

extern struct UnkStruct80128434 D_80128434[];
void func_80120AF8(Vector *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) != 0) {
            arg0->z = D_8012906C;
        } else {
            arg0->z = D_80129070;
        }
        arg0->y = 1.0f;
        arg0->x = 1.0f;
        // return;
    } else {
    // * 0x1C
        arg0->x = D_80128434[gKirbyState.unk10A].unk0.x;
        arg0->y = D_80128434[gKirbyState.unk10A].unk0.y;
        arg0->z = D_80128434[gKirbyState.unk10A].unk0.z;
    }
}


// some prototype meme (and the early return doesnt help)
#ifdef NON_MATCHING
extern u32 D_80128348[];
u32 func_80120BCC(void) {
    u32 phi_v1;

    phi_v1 = 0;
    if (gKirbyState.ability != 0) {
        phi_v1 = 0;
        if (gKirbyState.abilityInUse == 0) {
            gKirbyState.hpAfterDamage = gKirbyHp;
            if (gKirbyState.abilityDropTimer == 0) {
                gKirbyState.abilityDropTimer = D_80128348[gKirbyState.hpAfterDamage] + 0x2D;
                return;
            }
            gKirbyState.droppedAbility = gKirbyState.ability;
            gKirbyState.abilityDropTimer = 0;
            gKirbyState.isTakingDamage = 1;
            gKirbyState.ability = 0;
            phi_v1 = 1;
        }
    }
    return phi_v1;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80120BCC.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80120CCC.s")

// take damage?
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80120E74.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801210B4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801210FC.s")


u32 func_80121194(void) {
    if (D_8012E7D7 == 0
        && ((D_800E6A10[omCurrentObj->objId] == 1.0f && gKirbyController.buttonHeld & L_JPAD)
        ||  (D_800E6A10[omCurrentObj->objId] == -1.0f && gKirbyController.buttonHeld & R_JPAD))
        ) {
        return 1;
    }
    return 0;
}

u8 kirby_in_inactionable_state(void) {
    if ((gKirbyState.unk17 != 0) && (gKirbyState.abilityState != 0)) {
        return 3;
    }
    if (gKirbyState.abilityState != 0) {
        return 2;
    }
    if (gKirbyState.unk17 != 0) {
        return 1;
    }
    return 0;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121284.s")

extern const f32 65535.0;
extern s32 D_800E85A0[];
void func_801212A4(void) {
    Vector currPos;
    Vector nextPos;

    if (D_800D6B54 == 0) {
        currPos.x = gEntitiesPosXArray[omCurrentObj->objId];
        currPos.y = gEntitiesPosYArray[omCurrentObj->objId];
        currPos.z = gEntitiesPosZArray[omCurrentObj->objId];
        nextPos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        nextPos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        nextPos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        if (func_8010474C(&currPos, &nextPos) != 0) {
            if (D_800D6B54 == 0) {
                func_8011D40C();
                if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                    D_800E3750[omCurrentObj->objId] = 0.0f;
                    D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
                    D_800E3C90[omCurrentObj->objId] = 65535.0f;
                }
            }
        } else {
            if ((gKirbyState.ceilingCollisionNext != 0) && (gKirbyState.floorCollisionNext != 0) && (gKirbyState.action != 0x1D)
                &&(gKirbyState.ceilingType != 4) && (gKirbyState.ceilingType != 5)
            ) {
                change_kirby_hp(-6.0f);
                set_kirby_action_1(0x16, 0x17);
            }
            else if ((gKirbyState.rightCollisionNext != 0) && (gKirbyState.leftCollisionNext != 0) && (gKirbyState.unk104 != 2) && (gKirbyState.unk106 != 2)) {
                change_kirby_hp(-6.0f);
                set_kirby_action_1(0x16, 0x17);
            }
            else if ((gKirbyState.unk140 != 0)
                && (D_800E7B20[omCurrentObj->objId] != 0) && (D_800E7CE0[omCurrentObj->objId] == 0)
                    && (gKirbyState.action != 0x1D) && (gKirbyState.unk68 == 0) && (gKirbyState.action != 0x16)
            ) {
                if (change_kirby_hp(-1.0f) == 0) {
                    set_kirby_action_1(0x16, 0x17);
                } else {
                    func_80120BCC();
                    if (gKirbyState.unk140 & 0x40000) {
                        D_800E85A0[omCurrentObj->objId] = 1;
                    } else if (gKirbyState.unk140 & 0x80000) {
                        D_800E85A0[omCurrentObj->objId] = -1;
                    }
                    gKirbyState.unk24 = 1;
                    set_kirby_action_1(0x14, 0x16);
                }
            }
        }
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801215DC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121658.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801217B8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121828.s")

void func_801219C8(void) {
    if (func_801215DC() == 2) {
        gKirbyState.isTurning |= 1;
    }
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121A04.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121BCC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121C90.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121D3C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121F14.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80121F50.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8012209C.s")

u32 func_80122460(void) {
    if ((gKirbyState.ceilingCollisionNext != 0) && (D_800E3210[omCurrentObj->objId] > 0.0f)) {
        if ((gKirbyState.ceilingType == 4) || (gKirbyState.ceilingType == 5)) {
            if (func_8010D8A4(&gPositionState) != 0) {
                return 1;
            }
        }
    } else if ((gKirbyState.floorCollisionNext != 0)
        && (D_800E3210[omCurrentObj->objId] <= 0.0f)
        && (gKirbyState.floorType == 4)
        && (func_8010D8A4(&gPositionState) != 0)) {
        
        return 1;
    }
    return 0;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122558.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801226FC.s")

u8 func_801229D0(void) {
    if (gPositionState.byteArray[2] != 0x14) {
        D_8012E922 = (s16) gPositionState.byteArray[2];
    }
    else if (gPositionState.byteArray[3] != 0x14) {
        D_8012E922 = (s16) gPositionState.byteArray[3];
    }
}

extern const char *D_80128DC0;
extern s32 D_80128420[];
extern s16 D_8012E894;
void func_80122A10(s32 arg0) {
    if ((D_8012E894 > 0) && (D_8012E894 < 5)) {
        func_800A8100(0, 1, D_80128420[D_8012E894], arg0);
        return;
    }
    // "plydmg ptcl kind over![plylib.cc] max: %x, kind: %x\n"
    print_error_stub("plydmg ptcl kind over![plylib.cc] max: %x, kind: %x\n", 5, D_8012E894);
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122A80.s")




extern s16 D_8012844C[][2];

extern void func_800A7F74(u32 a, u32 b, u16 c, f32 d, f32 e, f32 f);

#ifdef NON_MATCHING
void func_80122B40(void) {
    u16 phi_a2;

    if (D_800E8AE0[omCurrentObj->objId] & 7) {
        if (D_800E8AE0[omCurrentObj->objId] & 6)
            phi_a2 = 19;
        else
            phi_a2 = 14;
    } else {
        // TODO: Fix some regalloc over here!
        if (gKirbyState.vel[2] < -12.5f)
            phi_a2 = D_8012844C[gKirbyState.unk10A * 7][1];
        else
            phi_a2 = D_8012844C[gKirbyState.unk10A * 7][PLAYERTRACK];
    }
    func_800A7F74(5, 1, phi_a2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122B40.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122C30.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122CA0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122CE8.s")

void func_80122F08(u32 arg0) {
    if (!(arg0 != 0x20007 && arg0 != 0x20008 && arg0 != 0x20009)) {
        func_800A9760(arg0);
    } else {
        func_800A8EC0(arg0);
    }
    func_800AFA88(omCurrentObj);
}

// set_kirby_action? Two of them?
void set_kirby_action_1(s32 actionChange, s32 action) {
    if (actionChange != 0xFFFF) {
        gKirbyState.actionChange = actionChange;
        gKirbyState.previousAction = gKirbyState.action;
        gKirbyState.action = action;
    }
}

void set_kirby_action_2(s32 actionChange, u32 action) {
    gKirbyState.actionChange = actionChange;
    gKirbyState.previousAction = gKirbyState.action;
    gKirbyState.action = action;
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80122FB0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80123004.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_8012307C.s")

void func_8012307C(s32 arg0, s32 arg1, f32 arg2, s32 arg3);
void func_801230E8(s32 arg0, s32 arg1, s32 arg2) {
	func_8012307C(arg0, arg1, 0.0f, arg2);
}

void func_8012310C(s32 currentInhale) {
    if (currentInhale != 0) {
        play_sound(0x104);
    }
    func_800BC298(currentInhale);
}

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80123144.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80123170.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801231D8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80123240.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_801232A8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_8/func_80123354.s")
