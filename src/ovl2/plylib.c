#include <PR/gbi.h>
#include "common.h"
#include "GObj.h"
#include "Player.h"
#include "buffers.h"
#include "main/gtl.h"
#include "main/lbvector.h"
#include "main/lbmatrix.h"
#include "ovl2/ovl2_8.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"
#include "ovl1/ovl1_13.h"
#include "plylib.h"
#include "sounds.h"
#include "unk_structs/D_800DE350.h"

// ovl7_5.h
void func_801AC4EC_ovl7(GObj *);

// ovl1 bss
extern s32 D_800E85A0[];
extern s32 D_800D6B54;
extern u32 D_800D7010;

// ovl2 data
extern u8 D_80126E20[];

// ovl2 bss
extern u8 D_8012E7D7;
extern u32 D_801290D0;

void func_8011D0FC(struct LayoutNode *ln, s32 arg1, u32 arg2);

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

#ifdef MIPS_TO_C

struct LayoutNode *func_8011BB98(void *arg0, s32 arg1) {
    s32 sp44;
    s32 sp38;
    ? sp2C;
    s32 temp_lo;
    struct DynGeo_List *temp_a3;
    struct LayoutNode *temp_s0;
    struct struct8011BA10_temp *temp_v0;
    struct vCollisionHeader *var_a2;
    u16 *var_v1;
    u32 var_a0;
    u8 var_t1;
    void *temp_v0_2;

    if (arg1 != 0x14) {
        temp_v0 = &D_8012D948[arg1];
        var_a2 = temp_v0->unk4;
        var_t1 = temp_v0->unk1;
    } else {
        var_a2 = D_80129410;
        var_t1 = D_801290D0;
    }
    var_a0 = 0;
    temp_a3 = &var_a2->header.Destructable_Groups[arg0->unkA];
    var_v1 = &var_a2->header.Destructable_Indices[temp_a3->Index_To_Dynamic_Geo_Group];
    if (temp_a3->Num_Dynamic_Geo_Group_Members != 0) {
        do {
            var_a0 += 1;
            temp_lo = *var_v1 * 0x14;
            var_v1 += 2;
            temp_v0_2 = var_a2->header.Triangles + temp_lo;
            temp_v0_2->unk8 = temp_v0_2->unk8 & ~3;
        } while (var_a0 < temp_a3->Num_Dynamic_Geo_Group_Members);
    }
    temp_s0 = D_800DFBD0[var_t1][temp_a3->Unk_Index];
    temp_s0->unk54 = 2;
    if (arg0->unk10 == 0) {
        func_800A4794(&sp44, temp_s0, var_a2, temp_a3);
        func_800FD754(0, sp44, sp48, sp4C);
    } else {
        func_800A4794(&sp38, temp_s0, var_a2, temp_a3);
        func_800A4DB8(&sp2C, temp_s0);
        func_800A802C(0, 3, 0x36, &sp38, &sp2C);
    }
    return temp_s0;
}
#else
struct LayoutNode *func_8011BB98(struct CollisionTriangle *tri, u32 arg1);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011BB98.s")
#endif

void func_8011BD08(struct CollisionTriangle *tri, u32 arg1) {
    func_8011BB98(tri, arg1);
    play_sound(SOUND_BGBRAKE1);
}

#ifdef MIPS_TO_C
struct LayoutNode *func_8011BD30(void *arg0, s32 arg1) {
    struct LayoutNode *sp2C;
    s32 *var_s1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_lo;
    s32 temp_s0;
    struct DynGeo_List *temp_a1;
    struct LayoutNode *temp_t3;
    struct struct8011BA10_temp *temp_v0;
    struct vCollisionHeader *var_a0;
    u16 *var_v0;
    u16 temp_v0_2;
    u32 var_v1;
    u8 var_a3;
    void *var_s0;

    if (arg1 != 0x14) {
        temp_v0 = &D_8012D948[arg1];
        var_a0 = temp_v0->unk4;
        var_a3 = temp_v0->unk1;
    } else {
        var_a0 = D_80129410;
        var_a3 = D_801290D0;
    }
    temp_a1 = &var_a0->header.Destructable_Groups[arg0->unkA];
    var_v1 = 0;
    var_v0 = &var_a0->header.Destructable_Indices[temp_a1->Index_To_Dynamic_Geo_Group];
    if (temp_a1->Num_Dynamic_Geo_Group_Members != 0) {
        do {
            var_v1 += 1;
            temp_lo = *var_v0 * 0x14;
            var_v0 += 2;
            (var_a0->header.Triangles + temp_lo)->unk10 = 0;
        } while (var_v1 < temp_a1->Num_Dynamic_Geo_Group_Members);
    }
    temp_v0_2 = temp_a1->Unk_Index;
    temp_s0 = temp_v0_2 * 4;
    temp_t3 = D_800DFBD0[var_a3][temp_v0_2];
    sp2C = temp_t3;
    if (D_8012E7B0.unk0 != NULL) {
        temp_a1_2 = *(*D_8012E7B0.unk0 + temp_s0);
        if (temp_a1_2 != 0) {
            func_8000C10C(temp_t3, temp_a1_2, 0, var_a3);
        }
    }
    if (D_8012E7B0.unk4 != NULL) {
        var_s1 = *(*D_8012E7B0.unk4 + temp_s0);
        if ((var_s1 != NULL) && (*var_s1 != 0)) {
            var_s0 = sp2C->unk80;
            if (var_s0 != NULL) {
                do {
                    temp_a1_3 = *var_s1;
                    if (temp_a1_3 != 0) {
                        func_8000C144(var_s0, temp_a1_3, 0);
                    }
                    var_s0 = *var_s0;
                    var_s1 += 4;
                } while (var_s0 != NULL);
            }
        }
    }
    return sp2C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011BD30.s")
#endif

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

#ifdef MIPS_TO_C

s32 func_8011BF4C(void *arg0, s32 (*arg1)(s32, s32)) {
    s32 spF8;
    void *spE8;
    f32 spDC;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    ? spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    s32 spA4;
    s32 spA0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    f32 var_f20;
    f32 var_f4;
    s32 temp_v0;
    s32 var_s0;
    u8 var_fp;
    void *temp_s4;
    void *var_s7;

    temp_s4 = arg0->unk1C;
    spF8 = 0;
    if (temp_s4 != NULL) {
        var_s7 = temp_s4->unk8;
        spE8 = var_s7;
        temp_f28 = cosf(arg0->unk18);
        temp_f30 = sinf(arg0->unk18);
        var_fp = 0;
        if (temp_s4->unk6 & 2) {
            spDC.unk0 = arg0->unkC;
            spDC.unk4 = arg0->unk10;
            spDC.unk8 = arg0->unk14;
        } else {
            spDC.unk0 = arg0->unk0;
            spDC.unk4 = arg0->unk4;
            spDC.unk8 = arg0->unk8;
        }
loop_5:
        if (temp_s4->unk0 != 0) {
loop_6:
            var_s0 = 1;
            temp_f10 = (var_s7->unk4 * temp_f30) + spDC;
            spCC = temp_f10;
            spD0 = var_s7->unk0 + spE0;
            temp_f18 = (var_s7->unk4 * temp_f28) + spE4;
            spD4 = temp_f18;
            temp_f0 = var_s7->unkC;
            temp_f22 = ((temp_f0 * temp_f30) + arg0->unk0) - temp_f10;
            temp_f24 = (var_s7->unk8 + arg0->unk4) - spD0;
            temp_f26 = ((temp_f0 * temp_f28) + arg0->unk8) - temp_f18;
            temp_f18_2 = sqrtf((temp_f22 * temp_f22) + (temp_f24 * temp_f24) + (temp_f26 * temp_f26)) / 200.0f;
            spB4.unk0 = spCC.unk0;
            spB4.unk4 = spCC.unk4;
            spB4.unk8 = spCC.unk8;
            temp_v0 = temp_f18_2 + 1;
            if (temp_v0 != 0) {
                var_f20 = temp_v0;
                if (temp_v0 < 0) {
                    var_f20 += 4294967296.0f;
                }
loop_9:
                spC0.unk0 = spB4.unk0;
                spC0.unk4 = spB4.unk4;
                var_f4 = var_s0;
                spC0.unk8 = spB4.unk8;
                if (var_s0 < 0) {
                    var_f4 += 4294967296.0f;
                }
                temp_f0_2 = var_f4 / var_f20;
                spB4 = (temp_f22 * temp_f0_2) + spCC;
                spB8 = (temp_f24 * temp_f0_2) + spD0;
                spBC = (temp_f26 * temp_f0_2) + spD4;
                var_s0 += 1;
                if (func_801045DC(&spC0, &spB4, temp_s4->unk2, temp_s4->unk4, 0, 0, 0, &spA4, &spA0) != 0) {
                    if (arg1 != NULL) {
                        if (arg1(spA4, spA0) != 0) {
                            var_fp = temp_s4->unk0;
                        }
                    } else {
                        func_8011BD08(spA4, spA0);
                    }
                    spF8 += 1;
                } else {
                    if (temp_v0 < var_s0) {
                        goto block_18;
                    }
                    goto loop_9;
                }
            } else {
block_18:
                var_fp += 1;
                var_s7 += 0x10;
                if (var_fp >= temp_s4->unk0) {

                } else {
                    goto loop_6;
                }
            }
        }
        var_s7 = spE8;
        if ((temp_s4->unk6 & 1) && (var_fp != temp_s4->unk0)) {
            var_fp = 0;
            goto loop_5;
        }
    }
    return spF8;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011BF4C.s")
#endif

#ifdef MIPS_TO_C

void func_8011C2A0(void *arg0) {
    play_sound(0xB);
    func_8011BA10(arg0->unk84, 0x14);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C2A0.s")
#endif

void vec3_cross_product(Vector *v1, Vector *v2, Vector *dst) {
    dst->x = (v1->y * v2->z) - (v1->z * v2->y);
    dst->y = (v1->z * v2->x) - (v1->x * v2->z);
    dst->z = (v1->x * v2->y) - (v1->y * v2->x);
}

#ifdef NON_MATCHING
s32 func_8011C344(Mtx *arg0, Vector *arg1, Vector *arg2) {
    Mat4 sp50;
    Vector sp44;
    Vector sp38;
    Vector sp2C;
    f32 vlen;

    sp44.x = arg2->x - arg1->x;
    sp44.y = arg2->y - arg1->y;
    sp44.z = arg2->z - arg1->z;
    vlen = lbvector_Len(&sp44);
    if (vlen < 1.0f) {
        return 0;
    }
    if ((sp44.x == 0.0f) && (sp44.z == 0.0f)) {
        sp2C.x = 0.0f;
        sp2C.y = 0.0f;
        sp2C.z = -1.0f;
    } else {
        sp2C.x = 0.0f;
        sp2C.y = 1.0f;
        sp2C.z = 0.0f;
    }
    lbvector_Normalize(&sp44);
    vec3_cross_product(&sp2C, &sp44, &sp38);
    vec3_cross_product(&sp44, &sp38, &sp2C);
    sp50[0][0] = sp38.x;
    sp50[0][1] = sp38.y;
    sp50[0][2] = sp38.z;

    sp50[1][0] = sp2C.x;
    sp50[1][1] = sp2C.y;
    sp50[1][2] = sp2C.z;

    sp50[0][3] =
    sp50[1][3] =
    sp50[2][3] = 0.0f;

    vlen /= 20.0f;
    sp50[2][0] = sp44.x * vlen;
    sp50[2][1] = sp44.y * vlen;
    sp50[2][2] = sp44.z * vlen;

    sp50[3][0] = arg1->x;
    sp50[3][1] = arg1->y;
    sp50[3][2] = arg1->z;

    sp50[3][3] = 1.0f;
    HS64_MtxF2L(&sp50, arg0);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C344.s")
#endif

#ifdef MIPS_TO_C

void func_8011C4E8(s32 arg0, void *arg1) {
    u8 *sp9C;
    f32 sp80;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 temp_f20;
    f32 temp_f22;
    u32 temp_s1;
    u32 var_s4;
    u8 *temp_a3;
    u8 *var_a3;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *temp_v0_4;
    void *var_s0;

    temp_a3 = arg1->unk1C;
    if (temp_a3 != NULL) {
        gSPDisplayList(gDisplayListHeads[2]++, &D_80126E68);
        sp9C = temp_a3;
        temp_f22 = cosf(arg1->unk18);
        var_a3 = temp_a3;
        temp_f20 = sinf(arg1->unk18);
        var_s0 = var_a3->unk8;
        if (var_a3->unk6 & 2) {
            sp80.unk0 = arg1->unkC;
            sp80.unk4 = arg1->unk10;
            sp80.unk8 = arg1->unk14;
        } else {
            sp80.unk0 = arg1->unk0;
            sp80.unk4 = arg1->unk4;
            sp80.unk8 = arg1->unk8;
        }
        
        for (var_s4 = 0; var_s4 < var_a3->unk0; var_s4 += 1) {
            temp_s1 = gDynamicBuffer1.top;
            sp6C = (var_s0->unk4 * temp_f20) + sp80;
            sp70 = var_s0->unk0 + sp84;
            sp74 = (var_s0->unk4 * temp_f22) + sp88;
            sp60 = (var_s0->unkC * temp_f20) + arg1->unk0;
            sp64 = var_s0->unk8 + arg1->unk4;
            sp9C = var_a3;
            sp68 = (var_s0->unkC * temp_f22) + arg1->unk8;
            var_a3 = sp9C;
            if (func_8011C344(temp_s1, &sp6C, &sp60, var_a3) != 0) {
                temp_v0_2 = gDisplayListHeads[2];
                gDisplayListHeads[2] = temp_v0_2 + 8;
                temp_v0_2->unk4 = temp_s1;
                temp_v0_2->unk0 = 0xDA380000;
                gSPDisplayList(gDisplayListHeads[2]++, &D_80126E90);
                gDynamicBuffer1.top += sizeof(Mtx);
            }
            var_s0 += 0x10;
        }
        gSPDisplayList(gDisplayListHeads[2]++, &D_80126EB0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C4E8.s")
#endif

#ifdef MIPS_TO_C

void func_8011C720(s32 arg0) {
    s16 *temp_v1;
    u32 temp_v0;

    *(&D_800D6F58 + 0x5A) = 0;
    *(&D_800D6F58 + 0x58) = 0;
    D_8012E7E8 = 0;
    temp_v0 = func_800F8560();
    temp_v1 = &D_800D6F58 + 0x58;
    switch (temp_v0) {
        case 0:
        case 1:
        case 2:
        case 10:
            func_8016BF60_ovl3(arg0, arg0);
            break;
        case 3:
            func_801F0050_ovl10(arg0, arg0);
            break;
        case 4:
            play_sound(0x136);
            *(&D_800D6F58 + 0x58) = 0x102;
            func_8016BF60_ovl3(arg0);
            break;
        case 5:
            *temp_v1 = 0x101;
            func_8016BF60_ovl3(arg0, arg0);
            break;
        case 6:
            *temp_v1 = 0x100;
            func_8016BF60_ovl3(arg0, arg0);
            break;
        case 8:
            *temp_v1 = 0x200;
            func_8016BF60_ovl3(arg0, arg0);
            break;
        case 9:
            D_8012E7E8 = 1;
            func_8016BF60_ovl3(arg0, arg0);
            break;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C720.s")
#endif

void func_8011C838(void) {
    u32 track = request_track_general(0x12, 0, 1);
    GObj *g = D_800DE350[track];

    g->unk48 = func_8011D0FC;
}

#ifdef MIPS_TO_C

void func_8011C87C(void) {
    void *var_a0;

    gKirbyState.unk4 = 0;
    gKirbyState.isHoldingEntity = 0;
    gKirbyState.inhaledEntityData = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.currentInhale = 0;
    var_a0 = &D_800D6ED0 + 0x48;
    do {
        var_a0 += 0x10;
        var_a0->unk-C = 0;
        var_a0->unk-8 = 0;
        var_a0->unk-4 = 0;
        var_a0->unk-10 = 0;
    } while (var_a0 != &D_800D6F38);
    *(&D_800D6ED0 + 0x40) = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C87C.s")
#endif

#ifdef MIPS_TO_C

void func_8011C8D0(void) {
    func_80105180(&gPositionState);
    *(&D_800D6ED0 + 0x64) = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C8D0.s")
#endif

#ifdef MIPS_TO_C
// plyInit
void func_8011C8F8(void) {
    s32 temp_t7;
    s32 temp_v0;
    u32 temp_a3;

    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800DEDD0[omCurrentObj->objId] = func_8011CFF4;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_80112A0C();
    func_80111534(omCurrentObj->objId);
    *(&D_800D6ED0 + 0x40) = 0;
    D_8012EADC = 0;
    D_8012EAE0 = 0;
    D_800E7B20[omCurrentObj->objId] = gKirbyHp;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E8AE0[omCurrentObj->objId] = 0;
    D_800E7CE0[omCurrentObj->objId] = 0;
    (D_800E7CE0 + 0x1C0)[omCurrentObj->objId] = 0;
    D_800E8060[omCurrentObj->objId] = 0;
    D_800E8760[omCurrentObj->objId] = 0;
    gKirbyState.actionChange = -1;
    gKirbyState.action = 0;
    gKirbyState.previousAction = 0;
    temp_t7 = 0 & 0xFF;
    if (gGameState == 0x21) {
        gKirbyState.abilityInUse = 0;
        gKirbyState.ability = 0;
    } else {
        gKirbyState.abilityInUse = 0;
        gKirbyState.ability = D_800D6E54;
    }
    gKirbyState.unk7 = 0;
    gKirbyState.unk24 = 0;
    gKirbyState.unk9 = 0;
    gKirbyState.isTurning = 0 & 0xFF;
    gKirbyState.unk30 = temp_t7 & 0xFF;
    gKirbyState.unkA = 0;
    gKirbyState.turnDirection = temp_t7;
    gKirbyState.unk8 = temp_t7;
    gKirbyState.unk14 = 0;
    gKirbyState.unk150 = 0;
    gKirbyState.unk153 = 0;
    gKirbyState.unk15 = 0;
    gKirbyState.unk88 = 0;
    gKirbyState.unkD = -1;
    gKirbyState.unkE = 0;
    gKirbyState.unkA4 = 0;
    gKirbyState.unk10 = 0;
    gKirbyState.damageFlashTimer = -1;
    gKirbyState.damageType = 0;
    gKirbyState.unk48 = 0;
    gKirbyState.unk50 = 0;
    gKirbyState.unk4C = 0;
    gKirbyState.unk6C = 0;
    gKirbyState.unk54 = 0x80000000;
    gKirbyState.unk60 = 0;
    gKirbyState.unk58 = 0;
    gKirbyState.unk64 = 0;
    gKirbyState.unk5C = 0;
    gKirbyState.unk68 = 0;
    gKirbyState.unk6A = 0;
    gKirbyState.isTakingDamage = 0;
    gKirbyState.droppedAbility = 0;
    gKirbyState.hpAfterDamage = 0;
    gKirbyState.abilityDropTimer = 0;
    gKirbyState.unk70 = 0;
    gKirbyState.unk74 = 0;
    gKirbyState.abilityState = 0;
    gKirbyState.unk18 = temp_t7;
    gKirbyState.unk17 = temp_t7;
    gKirbyState.unkB = 0;
    gKirbyState.unk15C = 0;
    gKirbyState.unk154 = 0;
    gKirbyState.isInhaling = 0;
    gKirbyState.unkB8 = 0;
    gKirbyState.unkBA = 0;
    gKirbyState.unk158 = 1.0f;
    temp_v0 = func_800F8560();
    if ((temp_v0 != 0) && (temp_v0 != 0xA)) {
        gKirbyState.unk4 = 0;
        gKirbyState.numberInhaled = 0;
    }
    gKirbyState.vel[0] = D_800E3050[omCurrentObj->objId];
    gKirbyState.vel[1] = D_800E3210[omCurrentObj->objId];
    gKirbyState.unk168 = 0.0f;
    gKirbyState.unk160 = 0;
    gKirbyState.unk162 = 0x14;
    gKirbyState.unk16C = 0;
    D_80198830.unk8 = 3;
    D_80198830.unk10 = -1;
    gKirbyState.vel[2] = D_800E33D0[omCurrentObj->objId];
    gKirbyState.unk164 = gKirbyState.unk168;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    temp_a3 = omCurrentObj->objId;
    D_800EC660[temp_a3] = D_800EC820[temp_a3];
    func_800F88C8(D_800DE350[omCurrentObj->objId], D_800BE50C, D_800BE510, temp_a3 * 4);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E17D0[omCurrentObj->objId] = 1.5707964f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C8F8.s")
#endif

#ifdef NON_MATCHING
s32 func_8011CCB8(void) {
// s32 plyInitCatchOver(void) {
    u32 disType_byte3;
    u32 bool_t2;
    s32 track;

    gKirbyState.inhaledEntityData |= (0xFF << 24);
    disType_byte3 = (u8)(gKirbyState.inhaledEntityData >> 8);
    switch ((u8)(gKirbyState.inhaledEntityData >> 0x10)) {                              /* switch 1 */
        case 0:                                     /* switch 1 */
            if (gKirbyState.isHoldingEntity == 1) {
                switch (disType_byte3) {                  /* switch 2 */
                    case 11:                        /* switch 2 */
                    case 25:                        /* switch 2 */
                    case 29:                        /* switch 2 */
                    case 32:                        /* switch 2 */
                    case 36:                        /* switch 2 */
                        gKirbyState.inhaledEntityData = 0;
                        gKirbyState.isHoldingEntity = 0;
                        gKirbyState.unk4 = 0;
                        return 0;
                    default:                                /* switch 2 */
                        track = request_track_general(0x17, 0xE, 0x1E, &gKirbyState);
                        bool_t2 = 0;
                        break;
                }
            }
            break;
        case 4:
            track = request_track_general(0x1A, 0xE, 0x1E);
            bool_t2 = 0;
            break;
        case 6:
            track = request_track_general(0x1F, 0xE, 0x1E);
            bool_t2 = 0;
            if (disType_byte3 == 0) {
                bool_t2 = 1;
            }
            break;
        default:                                    /* switch 1 */
        case 1:                                     /* switch 1 */
        case 2:                                     /* switch 1 */
        case 3:                                     /* switch 1 */
        case 5:                                     /* switch 1 */
            print_error_stub("plyInitCatchOver: No DisType Number=%x\n", gKirbyState.inhaledEntityData);
            while(1);
    }

    switch (gKirbyState.isHoldingEntity) { /* switch 3; irregular */
        case 0:                         /* switch 3 */
            gKirbyState.numberInhaling = 0;
            gKirbyState.isInhalingBlock = gKirbyState.numberInhaling;
            gKirbyState.isInhaling = gKirbyState.numberInhaling;
            D_800E8060[omCurrentObj->objId] = -2;
            gKirbyState.unkD = -1;
            break;
        case 1:                         /* switch 3 */
            gKirbyState.secondInhale = 0;
            gKirbyState.firstInhale = 0;
            gKirbyState.currentInhale = 0;
            gKirbyState.unkD = 2;
            break;
        default:                        /* switch 3 */
            print_error_stub("plyInitCatchOver: New Catch Number=%x\n", gKirbyState.isHoldingEntity);
            while(1);
    }

    if (bool_t2 != 0) {
        D_800E0650[track] = &gKirbyController + 0x70;
    }
    D_800E0D50[track] = omCurrentObj->objId;
    D_800E8E60[track] = 1;
    D_800E76C0[track] = gKirbyState.inhaledEntityData >> 0x18;
    D_800E7730[track] = gKirbyState.inhaledEntityData >> 0x10;
    D_800E77A0[track] = disType_byte3;
    D_800E7880[track] = 0xFF;
    D_800E8220[track] = gKirbyState.isHoldingEntity;
    assign_new_process_entry(gEntityGObjProcessArray[track], func_801AC4EC_ovl7);
    return track;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011CCB8.s")
#endif

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

#ifdef MIPS_TO_C

void func_8011CFF4(s32 arg0) {
    u32 *temp_a1;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_a1 = &D_800E7CE0[omCurrentObj->objId];
    temp_v1 = *temp_a1;
    if (temp_v1 != 0) {
        *temp_a1 = temp_v1 - 1;
        if (temp_v1 <= 0) {
            D_800E7CE0[omCurrentObj->objId] = 0;
        }
    }
    temp_v1_2 = omCurrentObj->objId;
    if (temp_v1_2 == 0) {
        func_80111534(temp_v1_2, temp_a1, D_800E7CE0);
    }
    if (gKirbyState.actionChange != -1) {
        gEntityVtableIndexArray[omCurrentObj->objId] = gKirbyState.actionChange;
        gKirbyState.actionChange = -1;
        if (*(&D_800D6F58 + 0x5A) == 2) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &D_8022947C);
            return;
        }
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], &D_8016C510);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011CFF4.s")
#endif

// plyWalk
#ifdef MIPS_TO_C
void func_8011D0FC(struct LayoutNode *arg0, s32 kind, int arg2) {
    f32 sp44;
    void *sp3C;
    f32 sp38;
    Vector sp20;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 temp_a1;
    s32 temp_v0;
    void (*temp_v0_5)(s32, s32, f32);
    void *temp_v0_2;

    switch (arg1) {
        case 9:
            func_800BB468(arg2, arg2, 0, arg0);
            return;
        case 12:
            sp44 = arg2;
            if ((bitwise s32) sp44 >= 0) {
                if (((bitwise s32) sp44 == 5) || ((bitwise s32) sp44 == 6) || ((bitwise s32) sp44 == 0x267)) {
                    temp_v0 = D_800E8AE0[omCurrentObj->objId];
                    if (temp_v0 & 7) {
                        if (temp_v0 & 2) {
                            play_sound(0x10C);
                            return;
                        }
                        play_sound(9);
                        return;
                    }
                    if (*(&D_800D6F58 + 0x5A) == 2) {
                        if (gKirbyState.unk7 != 0) {
                            play_sound(7);
                            return;
                        }
                        play_sound(8);
                        return;
                    }
                    if (gKirbyState.unk7 == 0) {
                        play_sound(*(&D_80128444 + (gKirbyState.unk10A * 0x1C)));
                        return;
                    }
                    play_sound(*(&D_80128446 + (gKirbyState.unk10A * 0x1C)));
                    return;
                }
                play_sound((bitwise s32) sp44);
                return;
            }
            return;
        case 13:
            sp38 = arg2;
            temp_a1 = (bitwise s32) sp38 & 0xFFFF;
            if (temp_a1 >= 0) {
                temp_v0_2 = func_800A19EC(arg2, (bitwise s32) sp38 >> 0x10, temp_a1, arg0);
                if (temp_v0_2 != NULL) {
                    if (temp_v0_2->unk4C != 0) {
                        sp3C = temp_v0_2;
                        func_800B2340(&sp20, arg0, 0xFFFF);
                        sp3C->unk4C->unk4 = sp20;
                        sp3C->unk4C->unk8 = sp20.y;
                        sp3C->unk4C->unkC = sp20.z;
                        return;
                    }
                    temp_v0_2->unk48 = arg0;
                    return;
                }
            }
            break;
        case -1:
            temp_v0_3 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_3 |= 0x40000000;
            return;
        case -2:
            temp_v0_4 = &D_800DD8D0[omCurrentObj->objId];
            *temp_v0_4 |= 0x80000000;
            return;
        default:
            temp_v0_5 = D_800DF310[omCurrentObj->objId];
            if (temp_v0_5 != NULL) {
                temp_v0_5(arg0, arg1, arg2);
            }
            break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D0FC.s")
#endif

#ifdef MIPS_TO_C
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D40C.s")
#endif

#ifdef MIPS_TO_C

void *func_8011D4A4(f32 arg0) {
    void *sp18;
    s32 var_a0;
    u8 temp_v0_2;
    void *temp_v0;
    void *var_v1;

    temp_v0 = func_80111574(gKirbyState.unk15C, omCurrentObj->objId);
    var_a0 = 0;
    var_v1 = temp_v0->unk20;
    if (temp_v0->unk1C > 0) {
        do {
            if (arg0 != 1.0f) {
                temp_v0_2 = var_v1->unk4;
                switch (temp_v0_2) {                /* irregular */
                    case 1:
                        var_v1->unk18 = var_v1->unk18 * arg0;
                        break;
                    case 2:
                        var_v1->unkC = var_v1->unkC * arg0;
                        var_v1->unk10 = var_v1->unk10 * arg0;
                        var_v1->unk14 = var_v1->unk14 * arg0;
                        var_v1->unk18 = var_v1->unk18 * arg0;
                        var_v1->unk1C = var_v1->unk1C * arg0;
                        var_v1->unk20 = var_v1->unk20 * arg0;
                        var_v1->unk24 = var_v1->unk24 * arg0;
                        break;
                }
            }
            if ((var_v1->unk8 == NULL) && (gKirbyState.unk154 != 0)) {
                var_v1->unk8 = D_800DFBD0[omCurrentObj->objId][gKirbyState.unk154];
            }
            var_a0 += 1;
            var_v1 += 0x28;
        } while (var_a0 < temp_v0->unk1C);
    }
    sp18 = temp_v0;
    func_80111C4C(arg0, temp_v0, temp_v0);
    return sp18;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D4A4.s")
#endif

#ifdef MIPS_TO_C

void func_8011D614(void) {
    func_8011CF58();
    func_800A9760(0x20007);
    D_800E0490[omCurrentObj->objId] = &D_801926E8;
    gKirbyState.unk15C = &D_80190358;
    gKirbyState.unk154 = 2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D614.s")
#endif

#ifdef MIPS_TO_C
void func_8011D67C(void) {
    if (*(&D_800D6F58 + 0x5A) == 2) {
        func_8011CF58();
        D_800E0490[omCurrentObj->objId] = &D_80192F64;
        gKirbyState.unk15C = &D_801923DC;
        gKirbyState.unk154 = 2;
    } else if (func_800AA888(0x20007) == 0) {
        func_8011CF58();
        func_80122F08(0x20007);
        D_800E0490[omCurrentObj->objId] = &D_801926E8;
        gKirbyState.unk15C = &D_80190358;
        gKirbyState.unk154 = 2;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    if (D_800E8920[omCurrentObj->objId] == 1) {
        if (gKirbyController.buttonHeld & 0x400) {
            set_kirby_action_1(9, 0xE);
        }
        else if (gKirbyController.buttonHeld & 0x300) {
            if (gKirbyState.unk7 != 0) {
                gKirbyState.unk44 = 0;
                gKirbyState.unk38 = 0.0f;
                set_kirby_action_1(2, 4);
            } else {
                set_kirby_action_1(1, 3);
            }
        } else {
            set_kirby_action_1(0, 1);
        }
    } else {
        set_kirby_action_1(6, 6);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D67C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8011D858(void *arg0, s32 arg1, f32 arg2) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    s32 var_v0;
    u32 temp_a2;

    if (D_800DD710[arg1] == -1) {
        return 0;
    }
    temp_a2 = omCurrentObj->objId;
    temp_f2 = (gEntitiesNextPosXArray[temp_a2] + arg0->unk0) - gEntitiesNextPosXArray[arg1];
    sp1C = gEntitiesNextPosZArray[temp_a2] + arg0->unk8;
    temp_f14 = arg0->unkC;
    temp_f16 = temp_f14 * arg2;
    if ((temp_f16 < temp_f2) || (temp_f0 = -temp_f14 * arg2, (temp_f2 < temp_f0))) {
        return 0;
    }
    temp_f14_2 = arg0->unk10;
    temp_f2_2 = (gEntitiesNextPosYArray[temp_a2] + arg0->unk4) - gEntitiesNextPosYArray[arg1];
    if (((temp_f14_2 * arg2) < temp_f2_2) || (temp_f2_2 < (-temp_f14_2 * arg2))) {
        return 0;
    }
    temp_f2_3 = sp1C - gEntitiesNextPosZArray[arg1];
    if ((temp_f16 < temp_f2_3) || (temp_f2_3 < temp_f0)) {
        return 0;
    }
    var_v0 = 1;
    if (func_800F9828(arg2, temp_f14_2, temp_a2, arg1, temp_a2, arg1) == 9999.0f) {
        var_v0 = 0;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D858.s")
#endif

#ifdef MIPS_TO_C

f32 func_8011D9E0(? arg1, ? arg3) {
    f32 temp_f0;

    temp_f0 = func_800F951C(arg1, arg3, arg1, arg3);
    if (temp_f0 == 9999.0f) {
        return 9999.0f;
    }
    return temp_f0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011D9E0.s")
#endif

#ifdef MIPS_TO_C

void func_8011DA34(void) {
    s32 *var_s2;
    s32 temp_v0;
    s32 var_s0;
    s32 var_s1;

    var_s2 = D_800DD710 + 0x10;
    var_s0 = 4;
    var_s1 = 0x10;
    do {
        temp_v0 = *var_s2;
        if ((temp_v0 != -1) && (temp_v0 != 0x23)) {
            if (*(D_800DD8D0 + var_s1) & 0x40) {
                func_800B19F4(0x7F, var_s0);
            } else {
                func_800B19F4(0x3F, var_s0);
            }
        }
        var_s0 += 1;
        var_s1 += 4;
        var_s2 += 4;
    } while (var_s0 != 0x4A);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DA34.s")
#endif

#ifdef MIPS_TO_C
void func_8011DAF8(void) {
    f32 temp_f0;
    u32 temp_v0;
    u32 temp_v0_2;

    if ((gKirbyState.action != 0x17) && !(gKirbyState.isTurning & 1)) {
        if ((gKirbyState.action == 0x16) || (gKirbyState.action == 0x18)) {
            temp_v0 = omCurrentObj->objId;
            gEntitiesAngleYArray[temp_v0] = D_800E17D0[temp_v0];
            return;
        }
        temp_v0_2 = omCurrentObj->objId;
        temp_f0 = D_800E6A10[temp_v0_2];
        if (((temp_f0 == 1.0f) && (D_800E64D0[temp_v0_2] >= 0.0f)) || ((temp_f0 == -1.0f) && (D_800E64D0[temp_v0_2] <= 0.0f))) {
            gEntitiesAngleYArray[temp_v0_2] = D_800E17D0[temp_v0_2];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DAF8.s")
#endif

#ifdef MIPS_TO_C

void func_8011DC04(void) {
    func_800A77E8(&D_8012E818, &D_8012E81C);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DC04.s")
#endif

#ifdef MIPS_TO_C

void func_8011DC30(void) {
    func_800A77E8(&D_8012E820, &D_8012E824);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DC30.s")
#endif

#ifdef MIPS_TO_C

void func_8011DC5C(void) {
    if (gKirbyState.unk58 != 0) {
        func_800A7870(&D_8012E818, &D_8012E81C);
    }
    gKirbyState.unk58 = 0;
    gKirbyState.unk5C = 0;
    if (gKirbyState.unk60 != 0) {
        func_800A7870(&D_8012E820, &D_8012E824);
    }
    gKirbyState.unk60 = 0;
    gKirbyState.unk64 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DC5C.s")
#endif

#ifdef MIPS_TO_C

void func_8011DCD0(void) {
    if (gKirbyState.unk60 != 0) {
        func_800A7870(&D_8012E820, &D_8012E824);
    }
    gKirbyState.unk60 = 0;
    gKirbyState.unk64 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DCD0.s")
#endif

#ifdef MIPS_TO_C
void func_8011DD18(u32 arg0) {
    if ((gGameState != 0x21) && (arg0 != gKirbyState.ability)) {
        gKirbyState.ability = arg0;
        func_8012310C(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DD18.s")
#endif

#ifdef MIPS_TO_C

void func_8011DD5C(f32 *arg0, u32 *arg1) {
    s32 sp1C;
    f32 sp18;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f12;
    f32 var_f16;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    s32 var_a2;
    u16 temp_t2;
    u16 temp_t3;
    u32 temp_v0;

    if (gKirbyState.unkB != 0) {
        *arg1 = 0;
        *arg0 = 0.0f;
        gKirbyState.unk13C = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        return;
    }
    if (gKirbyState.unk152 == 0) {
        gKirbyState.unk13C = 0;
        gKirbyState.unk153 = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        if (gKirbyState.abilityInUse == 0x1B) {
            *arg1 = 0;
            *arg0 = 0.0f;
            return;
        }
        if (((gKirbyState.floorType == 0x12) || (gKirbyState.floorType == 0x13)) && !(gKirbyState.isTurning & 0x4000)) {
            *arg1 = 0;
            if (gKirbyState.floorType == 0x13) {
                temp_t2 = gKirbyState.unk114->unk10;
                var_f10 = temp_t2;
                if (temp_t2 < 0) {
                    var_f10 += 4294967296.0f;
                }
                *arg0 = var_f10 * 0.1f;
                return;
            }
            temp_t3 = gKirbyState.unk114->unk10;
            var_f10_2 = temp_t3;
            if (temp_t3 < 0) {
                var_f10_2 += 4294967296.0f;
            }
            *arg0 = -(var_f10_2 * 0.1f);
            return;
        }
        *arg1 = 0;
        *arg0 = 0.0f;
        return;
    }
    if ((gKirbyState.abilityInUse == 2) || (gKirbyState.abilityInUse == 0xF) || (gKirbyState.abilityInUse == 0x14) || (gKirbyState.abilityInUse == 0x1B)) {
        *arg1 = 0;
        *arg0 = 0.0f;
        gKirbyState.unk13C = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        return;
    }
    if ((gKirbyState.isTurning & 0x4000) || (gKirbyState.action == 0xA) || (gKirbyState.action == 0xB)) {
        *arg1 = 0;
        *arg0 = 0.0f;
        gKirbyState.unk13C = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        return;
    }
    var_a2 = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        var_a2 = 1;
    }
    sp1C = var_a2;
    temp_f0 = sinf((bitwise f32) gKirbyState.unk130);
    var_f16 = temp_f0;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 < 0.00001f) {
        var_f16 = 0.0f;
    }
    sp1C = var_a2;
    sp18 = var_f16;
    temp_f0_2 = cosf((bitwise f32) gKirbyState.unk130);
    var_f12 = temp_f0_2;
    if (temp_f0_2 < 0.0f) {
        var_f2_2 = -temp_f0_2;
    } else {
        var_f2_2 = temp_f0_2;
    }
    if (var_f2_2 < 0.00001f) {
        var_f12 = 0.0f;
    }
    temp_f0_3 = (bitwise f32) gKirbyState.unk134 * 0.1f;
    gKirbyState.unk138 = (bitwise u32) (temp_f0_3 * var_f16);
    gKirbyState.unk13C = (bitwise u32) (temp_f0_3 * var_f12);
    *arg0 = (bitwise f32) gKirbyState.unk138;
    *arg1 = gKirbyState.unk13C;
    temp_v0 = omCurrentObj->objId;
    if (!(D_800E5C10[temp_v0] > 0.0f)) {
        if (var_f12 < 0.0f) {
            var_f2_3 = -var_f12;
        } else {
            var_f2_3 = var_f12;
        }
        if (var_f2_3 >= 0.85f) {
            goto block_42;
        }
    } else {
block_42:
        D_800E8920[temp_v0] = 0;
    }
    if ((var_a2 == 0) && (gKirbyState.unk153 == 0)) {
        gKirbyState.unk153 = 1;
        func_800BB468(var_f12, 0, 0xB, 0x3C, var_a2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DD5C.s")
#endif

#ifdef MIPS_TO_C

void func_8011E0E8(void) {
    struct Player *var_v0;
    u32 temp_a0;

    var_v0 = &gKirbyState;
    if (gKirbyState.unk4C != 0) {
        if (gKirbyState.unk48 == 0) {
            func_800A22D4(gKirbyState.unk4C);
        } else {
            func_800A1F30(gKirbyState.unk4C);
        }
        var_v0 = &gKirbyState;
        gKirbyState.unk4C = 0;
        gKirbyState.unk48 = 0;
    }
    temp_a0 = var_v0->unk50;
    if (temp_a0 != 0) {
        if (var_v0->unk48 == 0) {
            func_800A22D4(temp_a0);
        } else {
            func_800A1F30(temp_a0);
        }
        gKirbyState.unk50 = 0;
        gKirbyState.unk48 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E0E8.s")
#endif

#ifdef MIPS_TO_C
void func_8011E190(void) {
    if (gGameState != 0x21) {
        if (gKirbyState.currentInhale != 0) {
            gKirbyState.ability = gKirbyState.currentInhale;
            func_8012310C(gKirbyState.currentInhale);
        }
        gKirbyState.secondInhale = 0;
        gKirbyState.firstInhale = 0;
        gKirbyState.currentInhale = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E190.s")
#endif

#ifdef MIPS_TO_C

s32 func_8011E1E8(s32 arg0, s32 arg1) {
    if (arg1 >= 8) {
        return arg1;
    }
    if (arg0 >= 8) {
        return arg0;
    }
    return *(&D_80126EF8 + ((arg0 * 0x90) + (arg1 * 4)));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E1E8.s")
#endif

#ifdef MIPS_TO_C
void func_8011E234(void) {
    D_8012E922 = 0x14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E234.s")
#endif

#ifdef MIPS_TO_C
u8 func_8011E244(void) {
    if (*D_800E8920 == 1) {
        return D_8012E9B8;
    }
    return 0x14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E244.s")
#endif

#ifdef MIPS_TO_C
s32 func_8011E270(void) {
    if ((D_8012E8C2 == 0x12) || (D_8012E8C2 == 0x13)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E270.s")
#endif

#ifdef MIPS_TO_C
f32 func_8011E2A0(void) {
    f32 temp_f2;
    f32 var_f6;
    u16 temp_t9;

    if (!(gKirbyState.isTurning & 0x4000)) {
        temp_t9 = gKirbyState.unk114->unk10;
        var_f6 = temp_t9;
        if (temp_t9 < 0) {
            var_f6 += 4294967296.0f;
        }
        temp_f2 = var_f6 * 0.1f;
        if (temp_f2 != 0.0f) {
            return temp_f2 * 0.1f;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return 0.0f;
    }
    return 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E2A0.s")
#endif

#ifdef MIPS_TO_C
void func_8011E31C(void *arg0) {
    arg0->unk0 = gPositionState.kirbyHeadPos[0];
    arg0->unk4 = gPositionState.kirbyHeight[1];
    arg0->unk8 = gPositionState.kirbyHeadPos[2];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E31C.s")
#endif

#ifdef MIPS_TO_C
struct KirbyState_114 *func_8011E340(void) {
    if (gKirbyState.floorCollisionNext != 0) {
        return gKirbyState.unk114;
    }
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E340.s")
#endif

#ifdef MIPS_TO_C

s32 func_8011E368(void) {
    return *(&D_800D6ED0 + 0x40);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E368.s")
#endif

#ifdef MIPS_TO_C

f32 func_8011E374(void) {
    f32 sp30;
    ? sp2C;
    f32 sp28;
    f32 sp24;
    f32 sp20;
    f32 temp_f0;
    f32 var_f2;

    sp30 = 0.0f;
    sp20 = 0.0f;
    sp24 = 0.0f;
    sp30 = 0.0f;
    sp28 = D_800E6A10[omCurrentObj->objId];
    func_8001E344(&sp2C, (D_80129114->unk4 + (D_800E5F90[omCurrentObj->objId] * 0x10))->unk4, D_800E6BD0[omCurrentObj->objId]);
    temp_f0 = vec3_abs_angle_diff(&sp20, &sp2C);
    var_f2 = temp_f0;
    if (temp_f0 < 0.0f) {
        var_f2 = temp_f0 + 6.2831855f;
    }
    return var_f2;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E374.s")
#endif

void func_8011E438(void) {
    gKirbyState.unk4 = 0;
    gKirbyState.unk17 = 1;
    gKirbyState.abilityInUse = 0;
    set_kirby_action_2(0x48, 0x1C);
    D_800E6850[PLAYERTRACK] = 0.0f;
    D_800E64D0[PLAYERTRACK] = D_800E6690[PLAYERTRACK] = D_800E6850[PLAYERTRACK];
    D_800E3210[PLAYERTRACK] = 0.0f;
    D_800E3750[PLAYERTRACK] = -0.9806650281f;
    D_800E3C90[PLAYERTRACK] = 16.0f;
    gEntitiesScaleZArray[PLAYERTRACK] = 0.2f;
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

#ifdef MIPS_TO_C

void func_8011E548(void) {
    f32 sp44;
    f32 sp38;
    ? sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp28;
    GObj *temp_t0;
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 var_f12;
    f32 var_f12_2;
    f32 var_f14;
    u32 temp_v1;
    u32 temp_v1_2;

    if (!(gKirbyState.isTurning & 0x8000) && (gKirbyState.isTurning & 1)) {
        temp_t0 = omCurrentObj;
        if (D_800E8AE0[temp_t0->objId] & 6) {
            var_f14 = 0.3925f;
        } else {
            var_f14 = 0.5233333f;
        }
        if ((*(&D_800D6F58 + 0x54) == 0) && (gKirbyState.abilityInUse == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
        if (gKirbyState.turnDirection == 0) {
            temp_v0 = &D_800E6A10[temp_t0->objId];
            *temp_v0 = -*temp_v0;
            gKirbyState.turnDirection = D_800E6A10[temp_t0->objId];
            gKirbyState.unk7C = D_800E17D0[temp_t0->objId] + 3.1415927f;
            if (gKirbyState.unk7C >= 6.2831855f) {
                gKirbyState.unk7C -= 6.2831855f;
            }
        } else {
            sp44 = var_f14;
            if ((func_80121194(var_f14, &gKirbyState) != 0) && (*(&D_800D6F58 + 0x54) == 0)) {
                temp_v0_2 = &D_800E6A10[omCurrentObj->objId];
                *temp_v0_2 = -*temp_v0_2;
                gKirbyState.turnDirection = D_800E6A10[omCurrentObj->objId];
                temp_v1 = omCurrentObj->objId;
                sp44 = var_f14;
                func_8001E344(&sp34, (D_80129114->unk4 + (D_800E5F90[temp_v1] * 0x10))->unk4, D_800E6BD0[temp_v1], &gKirbyState);
                sp38 = 0.0f;
                sp2C = 0.0f;
                sp28 = 0.0f;
                sp30 = D_800E6A10[omCurrentObj->objId];
                gKirbyState.unk7C = vec3_abs_angle_diff(&sp28, &sp34);
                var_f14 = sp44;
                if (gKirbyState.unk7C < 0.0f) {
                    gKirbyState.unk7C += 6.2831855f;
                }
            } else {
                gKirbyState.unk7C = D_800E17D0[omCurrentObj->objId];
            }
        }
        gKirbyState.unk80 = gEntitiesAngleYArray[temp_t0->objId];
        if (gKirbyState.turnDirection == -1.0f) {
            if (gKirbyState.unk80 < gKirbyState.unk7C) {
                var_f12 = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
            } else {
                var_f12 = gKirbyState.unk80 - gKirbyState.unk7C;
            }
            if ((var_f12 - var_f14) < var_f14) {
                gKirbyState.unk80 = gKirbyState.unk7C;
                goto block_36;
            }
            gKirbyState.unk80 -= var_f14;
            if (gKirbyState.unk80 < 0.0f) {
                gKirbyState.unk80 += 6.2831855f;
            }
            goto block_35;
        }
        if (gKirbyState.unk7C < gKirbyState.unk80) {
            var_f12_2 = (gKirbyState.unk7C + 6.2831855f) - gKirbyState.unk80;
        } else {
            var_f12_2 = gKirbyState.unk7C - gKirbyState.unk80;
        }
        if ((var_f12_2 - var_f14) < var_f14) {
            gKirbyState.unk80 = gKirbyState.unk7C;
block_36:
            gKirbyState.turnDirection = 0;
            D_800E17D0[temp_t0->objId] = gKirbyState.unk7C;
            temp_v1_2 = temp_t0->objId;
            gEntitiesAngleYArray[temp_v1_2] = D_800E17D0[temp_v1_2];
            gKirbyState.isTurning &= ~1;
        } else {
            gKirbyState.unk80 += var_f14;
            if (gKirbyState.unk80 >= 6.2831855f) {
                gKirbyState.unk80 -= 6.2831855f;
            }
block_35:
            gEntitiesAngleYArray[temp_t0->objId] = gKirbyState.unk80;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E548.s")
#endif

#ifdef MIPS_TO_C

void func_8011E978(f32 arg0, f32 arg1) {
    f32 *temp_a0;
    f32 var_f12;
    u32 temp_a0_2;

    if (gKirbyState.isTurning & 1) {
        if ((*(&D_800D6F58 + 0x54) == 0) && (gKirbyState.abilityInUse == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
        if (gKirbyState.turnDirection == 0) {
            temp_a0 = &D_800E6A10[omCurrentObj->objId];
            *temp_a0 = -*temp_a0;
            gKirbyState.turnDirection = D_800E6A10[omCurrentObj->objId];
            gKirbyState.unk7C = D_800E17D0[omCurrentObj->objId] + 3.1415927f;
            if (gKirbyState.unk7C >= 6.2831855f) {
                gKirbyState.unk7C -= 6.2831855f;
            }
        } else {
            gKirbyState.unk7C = D_800E17D0[omCurrentObj->objId];
        }
        gKirbyState.unk80 = gEntitiesAngleYArray[omCurrentObj->objId];
        if (gKirbyState.unk80 < gKirbyState.unk7C) {
            var_f12 = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
        } else {
            var_f12 = gKirbyState.unk80 - gKirbyState.unk7C;
        }
        if ((var_f12 - arg0) < arg0) {
            gKirbyState.unk80 = gKirbyState.unk7C;
            gKirbyState.turnDirection = 0;
            D_800E17D0[omCurrentObj->objId] = gKirbyState.unk7C;
            temp_a0_2 = omCurrentObj->objId;
            gEntitiesAngleYArray[temp_a0_2] = D_800E17D0[temp_a0_2];
            gKirbyState.isTurning &= ~1;
        } else {
            if (arg1 == 1.0f) {
                gKirbyState.unk80 -= arg0;
                if (gKirbyState.unk80 < 0.0f) {
                    gKirbyState.unk80 += 6.2831855f;
                }
            } else {
                gKirbyState.unk80 += arg0;
                if (gKirbyState.unk80 >= 6.2831855f) {
                    gKirbyState.unk80 -= 6.2831855f;
                }
            }
            gEntitiesAngleYArray[omCurrentObj->objId] = gKirbyState.unk80;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E978.s")
#endif

#ifdef MIPS_TO_C
void func_8011EBD4(void) {
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 temp_f0;
    u32 temp_v1;

    if (gKirbyState.isFullJump == 0) {
        if ((gKirbyController.buttonHeld & 0x8000) && (gKirbyState.unk17 == 0)) {
            gKirbyState.jumpHeight = gKirbyState.jumpHeight + 1;
            return;
        }
        if (gKirbyState.jumpHeight < 0x11) {
            gKirbyState.isFullJump += 1;
            temp_f0 = 0x12 - gKirbyState.jumpHeight;
            if (gKirbyState.unkCC == 8.0f) {
                temp_v0 = &D_800E3210[omCurrentObj->objId];
                *temp_v0 += ((-0.980665f * temp_f0) + gKirbyState.unkCC) - 2.0f;
                return;
            }
            temp_v0_2 = &D_800E3210[omCurrentObj->objId];
            *temp_v0_2 += (-0.4f * temp_f0) + gKirbyState.unkCC;
        }
    } else {
        temp_v1 = omCurrentObj->objId;
        if (D_800E8AE0[temp_v1] & 6) {
            D_800E3750[temp_v1] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
            return;
        }
        D_800E3750[temp_v1] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011EBD4.s")
#endif

#ifdef MIPS_TO_C

void func_8011ED68(void) {
    f32 sp2C;
    f32 *var_v0;
    f32 *var_v0_2;
    f32 var_f0;
    f32 var_f2;
    s32 temp_t0;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    s32 var_a1;
    u32 temp_a1;
    u32 temp_a1_10;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a1_5;
    u32 temp_a1_6;
    u32 temp_a1_7;
    u32 temp_a1_8;
    u32 temp_a1_9;

    func_80120AF8(&sp2C);
    if ((gKirbyController.buttonHeld & 0x300) && (gKirbyState.unk17 == 0) && (*(&D_800D6F58 + 0x54) == 0)) {
        switch (gKirbyState.abilityInUse) {         /* switch 1 */
            case 2:                                 /* switch 1 */
            case 3:                                 /* switch 1 */
            case 6:                                 /* switch 1 */
            case 11:                                /* switch 1 */
            case 33:                                /* switch 1 */
                temp_a1 = omCurrentObj->objId;
                var_a1 = temp_a1 * 4;
                temp_v1 = D_800E8AE0[temp_a1] & 6;
                if (temp_v1 == 0) {
                    var_f2 = 0.25f * sp30;
                } else {
                    var_f2 = 0.25f * sp30 * 0.5f;
                }
                if (temp_v1 == 0) {
                    var_f0 = 2.0f;
                } else {
                    var_f0 = 1.0f;
                }
block_82:
                if (gKirbyController.buttonHeld & 0x100) {
                    *(D_800E6690 + var_a1) = var_f2;
                    if (var_f0 < 0.0f) {
                        D_800E6850[omCurrentObj->objId] = -var_f0;
                        return;
                    }
                    D_800E6850[omCurrentObj->objId] = var_f0;
                    return;
                }
                *(D_800E6690 + var_a1) = -var_f2;
                if (var_f0 < 0.0f) {
                    D_800E6850[omCurrentObj->objId] = -var_f0;
                    return;
                }
                D_800E6850[omCurrentObj->objId] = var_f0;
                return;
            case 20:                                /* switch 1 */
                temp_a1_2 = omCurrentObj->objId;
                var_a1 = temp_a1_2 * 4;
                temp_t0 = D_800E98E0[temp_a1_2];
                switch (temp_t0) {                  /* switch 2 */
                    default:                        /* switch 2 */
                    case 2:                         /* switch 2 */
                    case 5:                         /* switch 2 */
                        temp_v1_2 = D_800E8AE0[temp_a1_2] & 6;
                        if (temp_v1_2 == 0) {
                            var_f2 = 0.25f * sp30;
                        } else {
                            var_f2 = 0.25f * sp30 * 0.5f;
                        }
                        if (temp_v1_2 == 0) {
                            var_f0 = 2.0f;
                        } else {
                            var_f0 = 1.0f;
                        }
                        goto block_82;
                    case 4:                         /* switch 2 */
                    case 6:                         /* switch 2 */
                        temp_v1_3 = D_800E8AE0[temp_a1_2] & 6;
                        if (temp_v1_3 == 0) {
                            var_f2 = 0.25f;
                        } else {
                            var_f2 = 0.125f;
                        }
                        if (temp_v1_3 == 0) {
                            var_f0 = 2.0f;
                        } else {
                            var_f0 = 1.0f;
                        }
                        goto block_82;
                    case 7:                         /* switch 2 */
                        temp_v1_4 = D_800E8AE0[temp_a1_2] & 6;
                        if (temp_v1_4 == 0) {
                            var_f2 = 1.6f;
                        } else {
                            var_f2 = 0.8f;
                        }
                        if (temp_v1_4 == 0) {
                            var_f0 = 6.0f;
                        } else {
                            var_f0 = 3.0f;
                        }
                        goto block_82;
                }
                break;
            case 15:                                /* switch 1 */
                if (gKirbyState.unk38 == 1.0f) {
                    temp_a1_3 = omCurrentObj->objId;
                    var_a1 = temp_a1_3 * 4;
                    temp_v1_5 = D_800E8AE0[temp_a1_3] & 6;
                    if (temp_v1_5 == 0) {
                        var_f2 = 0.25f * sp30;
                    } else {
                        var_f2 = 0.25f * sp30 * 0.5f;
                    }
                    if (temp_v1_5 == 0) {
                        var_f0 = 2.0f;
                    } else {
                        var_f0 = 1.0f;
                    }
                } else {
                    temp_a1_4 = omCurrentObj->objId;
                    var_a1 = temp_a1_4 * 4;
                    temp_v1_6 = D_800E8AE0[temp_a1_4] & 6;
                    if (temp_v1_6 == 0) {
                        var_f2 = 0.625f * sp30;
                    } else {
                        var_f2 = 0.625f * sp30 * 0.5f;
                    }
                    if (temp_v1_6 == 0) {
                        var_f0 = 5.0f;
                    } else {
                        var_f0 = 2.5f;
                    }
                }
                goto block_82;
            case 32:                                /* switch 1 */
                temp_a1_5 = omCurrentObj->objId;
                var_a1 = temp_a1_5 * 4;
                temp_v1_7 = D_800E8AE0[temp_a1_5] & 6;
                if (temp_v1_7 == 0) {
                    var_f2 = 0.25f * sp30;
                } else {
                    var_f2 = 0.25f * sp30 * 0.5f;
                }
                if (temp_v1_7 == 0) {
                    var_f0 = 2.0f * sp2C;
                } else {
                    var_f0 = 2.0f * sp2C * 0.5f;
                }
                goto block_82;
            case 23:                                /* switch 1 */
            case 34:                                /* switch 1 */
                temp_a1_6 = omCurrentObj->objId;
                var_a1 = temp_a1_6 * 4;
                temp_v1_8 = D_800E8AE0[temp_a1_6] & 6;
                if (temp_v1_8 == 0) {
                    var_f2 = 0.8f * sp30;
                } else {
                    var_f2 = 0.8f * sp30 * 0.5f;
                }
                if (temp_v1_8 == 0) {
                    var_f0 = 6.0f * sp2C;
                } else {
                    var_f0 = 6.0f * sp2C * 0.5f;
                }
                goto block_82;
            case 7:                                 /* switch 1 */
            case 31:                                /* switch 1 */
                temp_a1_7 = omCurrentObj->objId;
                var_a1 = temp_a1_7 * 4;
                temp_v1_9 = D_800E8AE0[temp_a1_7] & 6;
                if (temp_v1_9 == 0) {
                    var_f2 = 0.625f * sp30;
                } else {
                    var_f2 = 0.625f * sp30 * 0.5f;
                }
                if (temp_v1_9 == 0) {
                    var_f0 = 5.0f * sp2C;
                } else {
                    var_f0 = 5.0f * sp2C * 0.5f;
                }
                goto block_82;
            case 0:                                 /* switch 1 */
                if (gKirbyState.action == 0x18) {
                    temp_a1_8 = omCurrentObj->objId;
                    var_a1 = temp_a1_8 * 4;
                    temp_v1_10 = D_800E8AE0[temp_a1_8] & 6;
                    if (temp_v1_10 == 0) {
                        var_f2 = 0.25f * sp30;
                    } else {
                        var_f2 = 0.25f * sp30 * 0.5f;
                    }
                    if (temp_v1_10 == 0) {
                        var_f0 = 2.0f * sp2C;
                    } else {
                        var_f0 = 2.0f * sp2C * 0.5f;
                    }
                } else {
                default:                            /* switch 1 */
                    temp_a1_9 = omCurrentObj->objId;
                    var_a1 = temp_a1_9 * 4;
                    if (D_800E8920[temp_a1_9] != 0) {
                        temp_v1_11 = D_800E8AE0[temp_a1_9] & 6;
                        if (temp_v1_11 == 0) {
                            var_v0 = (gKirbyState.unk7 * 8) + &D_80128338;
                            var_f2 = *var_v0 * sp30;
                        } else {
                            var_v0 = (gKirbyState.unk7 * 8) + &D_80128338;
                            var_f2 = *var_v0 * sp30 * 0.5f;
                        }
                        if (temp_v1_11 == 0) {
                            var_f0 = var_v0->unk4 * sp2C;
                        } else {
                            var_f0 = var_v0->unk4 * sp2C * 0.5f;
                        }
                    } else {
                        temp_v1_12 = D_800E8AE0[temp_a1_9] & 6;
                        if (temp_v1_12 == 0) {
                            var_v0_2 = (gKirbyState.unk7 * 8) + &D_80128338;
                            var_f2 = *var_v0_2;
                        } else {
                            var_v0_2 = (gKirbyState.unk7 * 8) + &D_80128338;
                            var_f2 = *var_v0_2 * 0.5f;
                        }
                        if (temp_v1_12 == 0) {
                            var_f0 = var_v0_2->unk4;
                        } else {
                            var_f0 = var_v0_2->unk4 * 0.5f;
                        }
                    }
                }
                goto block_82;
        }
    } else {
        temp_a1_10 = omCurrentObj->objId;
        if (D_800E8920[temp_a1_10] != 0) {
            if (D_800E8AE0[temp_a1_10] & 6) {
                D_800E6690[temp_a1_10] = D_800E6A10[temp_a1_10] * sp34;
                D_800E6850[omCurrentObj->objId] = 0.0f;
                return;
            }
            D_800E6690[temp_a1_10] = D_800E6A10[temp_a1_10] * (sp34 * 1.6f);
            D_800E6850[omCurrentObj->objId] = 0.0f;
            return;
        }
        D_800E6690[temp_a1_10] = D_800E6A10[temp_a1_10] * sp34;
        D_800E6850[omCurrentObj->objId] = 0.0f;
    case 3:                                         /* switch 2 */
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011ED68.s")
#endif

#ifdef MIPS_TO_C

s32 func_8011F690(void) {
    f32 sp20;
    f32 sp1C;
    GObj *temp_a3;
    f32 *var_at;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f12;
    s32 *temp_a0;
    s32 *temp_a0_2;
    s32 *temp_a0_3;
    s32 *temp_v1;
    s32 *var_v1;
    s32 temp_a1;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 var_a1;
    s32 var_a2;
    s32 var_v0;
    u32 temp_a2;
    u32 temp_a2_10;
    u32 temp_a2_11;
    u32 temp_a2_12;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a2_7;
    u32 temp_a2_8;
    u32 temp_a2_9;

    if (gKirbyState.unk17 != 0) {
        return 0;
    }
    temp_a2 = omCurrentObj->objId;
    D_800E9AA0[temp_a2].as_u32 = D_800E98E0[temp_a2];
    func_8010C734(&gPositionState, temp_a2 * 4);
    temp_a3 = omCurrentObj;
    temp_a2_2 = temp_a3->objId;
    var_a2 = temp_a2_2 * 4;
    temp_v1 = &D_800E98E0[temp_a2_2];
    var_a1 = *temp_v1;
    switch (var_a1) {
        case 1:
            if ((D_800E8920[temp_a2_2] != 0) && (func_80121194() != 0)) {
                D_800E6690[omCurrentObj->objId] = 0.0f;
                temp_a2_3 = omCurrentObj->objId;
                D_800E64D0[temp_a2_3] = D_800E6690[temp_a2_3];
                D_800E6850[omCurrentObj->objId] = 65535.0f;
                set_kirby_action_1(0, 1);
                return 0;
            }
            temp_a2_4 = omCurrentObj->objId;
            var_a2 = temp_a2_4 * 4;
            var_v1 = &D_800E98E0[temp_a2_4];
            if (*(&D_800D6F58 + 0x54) == 0) {
                if (gKirbyController.buttonHeld & 0x800) {
                    *var_v1 = 2;
                    var_a2 = omCurrentObj->objId * 4;
                    goto block_13;
                }
                if ((D_800E8920[temp_a2_4] == 0) && (gKirbyController.buttonHeld & 0x400)) {
                    *var_v1 = 3;
                    var_a2 = omCurrentObj->objId * 4;
block_13:
                    var_v1 = D_800E98E0 + var_a2;
                }
            }
            var_a1 = *var_v1;
        default:
block_62:
            if ((var_a1 == 1) || (var_a1 == 5)) {
                func_8011CF58();
            } else if (var_a1 != 4) {
                if (gKirbyController.buttonHeld & 0xC00) {
                    if (gKirbyController.buttonHeld & 0x800) {
                        if (!(*(D_800E8AE0 + var_a2) & 6)) {
                            var_f0 = 5.0f;
                        } else {
                            var_f0 = 2.5f;
                        }
                    } else if (!(*(D_800E8AE0 + var_a2) & 6)) {
                        var_f0 = -5.0f;
                    } else {
                        var_f0 = -2.5f;
                    }
                    *(D_800E3210 + var_a2) = var_f0;
                    D_800E3750[temp_a3->objId] = 0.0f;
                    if (var_f0 < 0.0f) {
                        D_800E3C90[temp_a3->objId] = -var_f0;
                    } else {
                        D_800E3C90[temp_a3->objId] = var_f0;
                    }
                } else {
                    if (*(D_800E3210 + var_a2) > 0.0f) {
                        *(D_800E3750 + var_a2) = -0.75f;
                        var_at = &D_800E3C90[temp_a3->objId];
                    } else {
                        *(D_800E3750 + var_a2) = 0.75f;
                        var_at = &D_800E3C90[temp_a3->objId];
                    }
                    *var_at = 0.0f;
                }
                func_8011CF58(0, var_a1, var_a2, temp_a3);
            } else {
                temp_v0 = *(D_800E8AE0 + var_a2) & 6;
                if (temp_v0 == 0) {
                    var_f12 = 3.0f;
                } else {
                    var_f12 = 1.5f;
                }
                if (temp_v0 == 0) {
                    var_f0_2 = 9.0f;
                } else {
                    var_f0_2 = 4.5f;
                }
                sp20 = var_f0_2;
                sp1C = var_f12;
                func_800AECC0(var_f12);
                func_800AED20(var_f12);
                temp_f2 = -var_f0_2;
                D_800E3210[omCurrentObj->objId] = temp_f2;
                D_800E3750[omCurrentObj->objId] = 0.0f;
                if (var_f0_2 < 0.0f) {
                    D_800E3C90[omCurrentObj->objId] = temp_f2;
                } else {
                    D_800E3C90[omCurrentObj->objId] = var_f0_2;
                }
            }
            temp_a2_5 = omCurrentObj->objId;
            var_v0 = 0;
            temp_a1 = D_800E98E0[temp_a2_5];
            if (temp_a1 != D_800E9AA0[temp_a2_5].as_u32) {
                var_v0 = temp_a1;
            }
            return var_v0;
        case 2:
            if ((gKirbyState.ceilingCollisionNext == 0) && (((temp_f0 = D_800E6A10[temp_a2_2], (temp_f0 == 1.0f)) && !((D_8012BCA0 >> 0x13) & 2)) || ((temp_f0 == -1.0f) && !((D_8012BCA0 >> 0x13) & 0x10)))) {
                if (func_80121194() != 0) {
                    set_kirby_action_1(3, 5);
                    return 0;
                }
                D_800E98E0[omCurrentObj->objId] = 5;
                temp_a2_6 = omCurrentObj->objId;
                var_a2 = temp_a2_6 * 4;
                var_a1 = D_800E98E0[temp_a2_6];
                goto block_62;
            }
            if (*(&D_800D6F58 + 0x54) == 0) {
                temp_t0 = gKirbyController.buttonHeld & 0x800;
                temp_a0 = &D_800E9720[temp_a2_2];
                if ((temp_t0 == 0) && (*temp_a0 >= 7)) {
                    *temp_a0 = 0;
                    D_800E98E0[temp_a3->objId] = 1;
                    temp_a2_7 = temp_a3->objId;
                    var_a2 = temp_a2_7 * 4;
                    var_a1 = D_800E98E0[temp_a2_7];
                } else {
                    temp_a0_2 = &D_800E9720[temp_a2_2];
                    if ((D_800E8920[temp_a2_2] == 0) && (gKirbyController.buttonHeld & 0x400)) {
                        *temp_a0_2 = 0;
                        D_800E98E0[temp_a3->objId] = 3;
                        temp_a2_8 = temp_a3->objId;
                        var_a2 = temp_a2_8 * 4;
                        var_a1 = D_800E98E0[temp_a2_8];
                    } else {
                        temp_v1_2 = *temp_a0_2;
                        if (temp_t0 != 0) {
                            if ((temp_v1_2 > 0) && (temp_v1_2 < 7)) {
                                *temp_a0_2 = 4;
                                temp_a2_9 = temp_a3->objId;
                                var_a2 = temp_a2_9 * 4;
                                var_a1 = D_800E98E0[temp_a2_9];
                            }
                        } else {
                            *temp_a0_2 = temp_v1_2 + 1;
                            temp_a2_10 = temp_a3->objId;
                            var_a2 = temp_a2_10 * 4;
                            var_a1 = D_800E98E0[temp_a2_10];
                        }
                    }
                }
            } else {
                *temp_v1 = 1;
                temp_a2_11 = temp_a3->objId;
                var_a2 = temp_a2_11 * 4;
                var_a1 = D_800E98E0[temp_a2_11];
            }
            goto block_62;
        case 4:
            if (*(&D_800D6F58 + 0x54) == 0) {
                if (!(gKirbyController.buttonHeld & 0x400) || (D_800E8920[temp_a2_2] != 0)) {
                    *temp_v1 = 1;
                    goto block_41;
                }
block_54:
                if ((gKirbyState.floorCollisionNext == 0) && (((temp_f0_2 = *(D_800E6A10 + var_a2), (temp_f0_2 == 1.0f)) && !((D_8012BCA0 >> 0x13) & 4)) || ((temp_f0_2 == -1.0f) && !((D_8012BCA0 >> 0x13) & 0x20)))) {
                    set_kirby_action_1(6, 6);
                    return 0;
                }
                var_a1 = *(D_800E98E0 + var_a2);
                goto block_62;
            }
            *temp_v1 = 1;
block_41:
            temp_a2_12 = temp_a3->objId;
            var_a2 = temp_a2_12 * 4;
            var_a1 = D_800E98E0[temp_a2_12];
            goto block_62;
        case 3:
            if (*(&D_800D6F58 + 0x54) == 0) {
                if (gKirbyController.buttonHeld & 0x800) {
                    D_800E9720[temp_a2_2] = 0;
                    D_800E98E0[temp_a3->objId] = 2;
                    goto block_53;
                }
                temp_a0_3 = &D_800E9720[temp_a2_2];
                if ((D_800E8920[temp_a2_2] != 0) || (temp_v1_3 = *temp_a0_3, ((temp_v1_3 < 7) == 0))) {
                    D_800E9720[temp_a2_2] = 0;
                    D_800E98E0[temp_a3->objId] = 1;
                    goto block_53;
                }
                if (gKirbyController.buttonHeld & 0x400) {
                    if ((temp_v1_3 > 0) && (temp_v1_3 < 7)) {
                        *temp_a0_3 = 0;
                        D_800E98E0[temp_a3->objId] = 4;
                        goto block_53;
                    }
                } else {
                    *temp_a0_3 = temp_v1_3 + 1;
block_53:
                    var_a2 = temp_a3->objId * 4;
                }
            }
            goto block_54;
        case 6:
            func_8011D67C();
            return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011F690.s")
#endif

#ifdef MIPS_TO_C

/*
Decompilation failure in function func_8011FEF8:

Unable to parse branch: label .L80120668 does not exist in function func_8011FEF8
*/

s32 D_80120000(s32 *arg2, s32 arg3, s32 arg5, f32 argF, f32 arg11, f32 arg15, f32 arg16) {
    f32 *temp_a0;
    f32 *temp_v0_4;
    f32 *temp_v0_5;
    f32 *var_at;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f0_4;
    f32 var_f10;
    f32 var_f12;
    s32 *var_a3;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    struct UnkStruct8004A7C4_3C_10 *temp_v0_3;
    u32 temp_v1_2;
    u32 temp_v1_3;
    u32 temp_v1_4;
    u32 temp_v1_5;
    u32 temp_v1_6;
    u32 temp_v1_7;
    u32 temp_v1_8;
    u32 temp_v1_9;
    u32 var_a0;
    void *temp_a1;

    temp_v1 = *arg2;
    temp_a3 = *(arg3 + (temp_v1 * 4));
    if ((temp_a3 == 1) || (temp_a3 == 5)) {
        func_8011CF58(temp_a3);
    } else if (temp_a3 != 4) {
        if (gKirbyController.buttonHeld & 0xC00) {
            if (gKirbyController.buttonHeld & 0x800) {
                if (!(D_800E8AE0[temp_v1] & 6)) {
                    var_f0 = 5.0f;
                } else {
                    var_f0 = 2.5f;
                }
            } else if (!(D_800E8AE0[temp_v1] & 6)) {
                var_f0 = -5.0f;
            } else {
                var_f0 = -2.5f;
            }
            D_800E3210[temp_v1] = var_f0;
            D_800E3750[*arg2] = 0.0f;
            if (var_f0 < 0.0f) {
                var_f10 = -var_f0;
                var_at = &D_800E3C90[*arg2];
                goto block_64;
            }
            D_800E3C90[*arg2] = var_f0;
        } else if (D_800E3210[temp_v1] > 0.0f) {
            D_800E3750[temp_v1] = -0.75f;
            D_800E3C90[*arg2] = 0.0f;
        } else {
            D_800E3750[temp_v1] = 0.75f;
            var_f10 = 0.0f;
            var_at = &D_800E3C90[*arg2];
block_64:
            *var_at = var_f10;
        }
        func_8011CF58(temp_a3);
    } else {
        temp_v0 = D_800E8AE0[temp_v1] & 6;
        if (temp_v0 == 0) {
            var_f12 = 3.0f;
        } else {
            var_f12 = 1.5f;
        }
        if (temp_v0 == 0) {
            var_f0_2 = 9.0f;
        } else {
            var_f0_2 = 4.5f;
        }
        arg16 = var_f0_2;
        arg15 = var_f12;
        func_800AECC0(var_f12);
        func_800AED20(arg15);
        temp_f2 = -arg16;
        D_800E3210[omCurrentObj->objId] = temp_f2;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        if (arg16 < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = temp_f2;
        } else {
            D_800E3C90[omCurrentObj->objId] = arg16;
        }
    }
    if (gKirbyState.data == 0) {
        temp_v1_2 = omCurrentObj->objId;
        if ((D_800E98E0[temp_v1_2] == D_800E9AA0[temp_v1_2].as_u32) && (func_801210FC() != 0)) {
            D_800EA360[omCurrentObj->objId] = gKirbyState.unk15C;
            gKirbyState.unk15C = 0;
            gKirbyState.data += 1;
        }
        temp_v1_3 = omCurrentObj->objId;
        var_a3 = &D_800E98E0[temp_v1_3];
        var_a0 = D_800E9AA0[temp_v1_3].as_u32;
    } else {
        temp_v0_2 = D_800E8AE0[omCurrentObj->objId] & 6;
        if (temp_v0_2 == 0) {
            var_f0_3 = 0.3927f;
        } else {
            var_f0_3 = 0.19635f;
        }
        if (temp_v0_2 != 0) {
            var_v0_2 = 0x10;
        } else {
            var_v0_2 = 8;
        }
        if (gKirbyState.data < var_v0_2) {
            temp_v0_3 = omCurrentObj->data->unk10;
            temp_v0_3->unk30.y -= var_f0_3;
            gKirbyState.data += 1;
            temp_v1_4 = omCurrentObj->objId;
            var_a3 = &D_800E98E0[temp_v1_4];
            var_a0 = D_800E9AA0[temp_v1_4].as_u32;
        } else {
            if ((D_800D7088 & 0x8000FFFF) != 3) {
                func_800FBE1C();
                func_800FA414(3);
            }
            omCurrentObj->data->unk10->unk30.y = 0.0f;
            temp_v0_4 = &D_800E6A10[omCurrentObj->objId];
            *temp_v0_4 = -*temp_v0_4;
            temp_a0 = &D_800E17D0[omCurrentObj->objId];
            *temp_a0 -= 3.1415927f;
            temp_v1_5 = omCurrentObj->objId;
            gEntitiesAngleYArray[temp_v1_5] = D_800E17D0[temp_v1_5];
            if (*(&D_800D6F58 + 0x5A) == 2) {
                temp_v1_6 = omCurrentObj->objId;
                var_v1 = temp_v1_6 * 4;
                if (D_800E6A10[temp_v1_6] == 1.0f) {
                    var_f0_4 = -7.6f;
                } else {
                    var_f0_4 = 7.6f;
                }
            } else {
                temp_v1_7 = omCurrentObj->objId;
                var_v1 = temp_v1_7 * 4;
                if (D_800E6A10[temp_v1_7] == 1.0f) {
                    var_f0_4 = -4.12f;
                } else {
                    var_f0_4 = 4.12f;
                }
            }
            temp_a1 = (D_80129114->unk4 + (*(D_800E5F90 + var_v1) * 0x10))->unk4;
            temp_v0_5 = var_v1 + D_800E6BD0;
            *temp_v0_5 += (1.0f / temp_a1->unkC) * var_f0_4;
            func_800F8570(omCurrentObj->objId, temp_a1, omCurrentObj, D_800E17D0);
            temp_v1_8 = omCurrentObj->objId;
            func_8001E300(&argF, (D_80129114->unk4 + (D_800E5F90[temp_v1_8] * 0x10))->unk4, D_800E6BD0[temp_v1_8]);
            gEntitiesNextPosXArray[omCurrentObj->objId] = argF;
            gEntitiesNextPosZArray[omCurrentObj->objId] = arg11;
            gKirbyState.data = 0;
            gKirbyState.unk15C = D_800EA360[omCurrentObj->objId];
            temp_v1_9 = omCurrentObj->objId;
            var_a3 = &D_800E98E0[temp_v1_9];
            var_a0 = D_800E9AA0[temp_v1_9].as_u32;
        }
    }
    temp_a3_2 = *var_a3;
    var_v0 = 0;
    if (temp_a3_2 != var_a0) {
        var_v0 = temp_a3_2;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011FEF8.s")
#endif

#ifdef MIPS_TO_C

void func_80120A28(void) {
    ? sp24;
    u32 temp_v0;
    u32 temp_v0_2;

    temp_v0 = omCurrentObj->objId;
    if (D_800E8AE0[temp_v0] & 6) {
        D_800E6690[temp_v0] = D_800E6A10[temp_v0] * 0.35f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        return;
    }
    func_80120AF8(&sp24);
    temp_v0_2 = omCurrentObj->objId;
    D_800E6690[temp_v0_2] = D_800E6A10[temp_v0_2] * sp2C;
    D_800E6850[omCurrentObj->objId] = 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120A28.s")
#endif

void func_80120AF8(Vector *arg0) {
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            arg0->z = 0.35f;
        } else {
            arg0->z = 0.225f;
        }
        arg0->y = 1.0f;
        arg0->x = 1.0f;
    } else {
        arg0->x = D_80128434[gKirbyState.unk10A].unk0.x;
        arg0->y = D_80128434[gKirbyState.unk10A].unk0.y;
        arg0->z = D_80128434[gKirbyState.unk10A].unk0.z;
    }
}

// control flow
#ifdef NON_MATCHING
extern f32 gKirbyHp;
extern u32 D_80128348[];
s32 func_80120BCC(void) {
    if ((gKirbyState.ability != 0) && (gKirbyState.abilityInUse == 0)) {
        gKirbyState.hpAfterDamage = gKirbyHp;
        if (gKirbyState.abilityDropTimer == 0) {
            gKirbyState.abilityDropTimer = D_80128348[gKirbyState.hpAfterDamage] + 0x2D;
            return 0;
        } else {
            gKirbyState.droppedAbility = gKirbyState.ability;
            gKirbyState.abilityDropTimer = 0;
            gKirbyState.isTakingDamage = 1;
            gKirbyState.ability = 0;
            return 1;
        }
    } else {
        return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120BCC.s")
#endif

#ifdef MIPS_TO_C
s32 func_80120CCC(f32 arg0, f32 arg1) {
    f32 temp_f2;
    u32 temp_v1;
    u32 temp_v1_2;

    if (gKirbyState.unk78 != 0.0f) {
        if (gKirbyState.unk78 == 1.0f) {
            if (gKirbyState.unk80 >= 0.0f) {
                gKirbyState.unk80 += arg0;
                if (arg1 <= gKirbyState.unk80) {
                    gKirbyState.unk7C = arg1;
                    gKirbyState.unk78 = 0.0f;
                    gKirbyState.unk80 = gKirbyState.unk7C;
                }
            } else {
                gKirbyState.unk80 += arg0;
                if (gKirbyState.unk80 >= 0.0f) {
                    gKirbyState.unk7C = 0.0f;
                    gKirbyState.unk80 = gKirbyState.unk7C;
                    goto block_12;
                }
            }
        } else if (gKirbyState.unk80 <= 0.0f) {
            temp_f2 = -arg1;
            gKirbyState.unk80 -= arg0;
            if (gKirbyState.unk80 <= temp_f2) {
                gKirbyState.unk7C = temp_f2;
                gKirbyState.unk78 = 0.0f;
                gKirbyState.unk80 = gKirbyState.unk7C;
            }
        } else {
            gKirbyState.unk80 -= arg0;
            if (gKirbyState.unk80 <= 0.0f) {
                gKirbyState.unk7C = 0.0f;
                gKirbyState.unk80 = gKirbyState.unk7C;
block_12:
                gKirbyState.unk78 = gKirbyState.unk80;
            }
        }
        temp_v1 = omCurrentObj->objId;
        gEntitiesAngleYArray[temp_v1] = D_800E17D0[temp_v1] + gKirbyState.unk80;
        return 1;
    }
    temp_v1_2 = omCurrentObj->objId;
    gEntitiesAngleYArray[temp_v1_2] = D_800E17D0[temp_v1_2] + gKirbyState.unk7C;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120CCC.s")
#endif

#ifdef MIPS_TO_C

void func_80120E74(s32 arg0) {
    s32 temp_a0;
    s32 temp_a2;
    s32 var_v0;
    s32 var_v1;
    u16 temp_t3;
    u32 temp_v1;
    void *temp_v1_2;

    func_800F90C0(omCurrentObj->objId, &gKirbyController + 0x70);
    func_800A7BF4(&D_800D7B80 + 0x18, &gKirbyController + 0x70);
    if (gKirbyState.damageFlashTimer == -1) {
        if (gKirbyState.damageType != 0) {
            gKirbyState.damageFlashTimer = -2;
            goto block_10;
        }
        temp_v1 = omCurrentObj->objId;
        if (D_800E7CE0[temp_v1] == 0) {
            if (gKirbyState.unk10 == 0) {
                func_800F90C0(temp_v1, &D_800D7010);
                return;
            }
            func_800A5404(&D_800D7010, gKirbyState.unk10);
            return;
        }
        var_v0 = 1;
        if (D_800BE4EC & 2) {
            var_v0 = 0;
        }
        func_800A5468(&D_800D7010, (var_v0 * 0xC) + &D_80128370);
        return;
    }
block_10:
    if (gKirbyState.damageFlashTimer == -2) {
        gKirbyState.damagePaletteIndex = 0xFFFF;
        D_800E7CE0[omCurrentObj->objId] = 0;
        gKirbyState.damagePaletteTimer = 1;
        gKirbyState.damageFlashTimer = *(&D_801283F0 + (gKirbyState.damageType * 0xC));
        goto block_14;
    }
    gKirbyState.damageFlashTimer = gKirbyState.damageFlashTimer - 1;
    if (gKirbyState.damageFlashTimer == 0) {
        gKirbyState.damageType = 0;
        gKirbyState.damageFlashTimer = -1;
        return;
    }
block_14:
    temp_v1_2 = (gKirbyState.damageType * 0xC) + &D_801283E8;
    temp_a0 = temp_v1_2->unk4;
    if (temp_a0 == -1) {
        func_800F90C0(omCurrentObj->objId, &D_800D7010);
        return;
    }
    temp_a2 = temp_v1_2->unk0;
    gKirbyState.damagePaletteTimer = gKirbyState.damagePaletteTimer - 1;
    if (gKirbyState.damagePaletteTimer == 0) {
        temp_t3 = gKirbyState.damagePaletteIndex + 1;
        var_v1 = temp_t3 & 0xFFFF;
        gKirbyState.damagePaletteIndex = temp_t3;
        if (var_v1 == temp_a0) {
            gKirbyState.damagePaletteIndex = 0;
            var_v1 = 0 & 0xFFFF;
        }
        gKirbyState.damagePaletteTimer = (temp_a2 + (var_v1 * 0x10))->unkC;
    }
    func_800A5404(&D_800D7010, (gKirbyState.damagePaletteIndex * 0x10) + temp_a2, temp_a2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120E74.s")
#endif

#ifdef MIPS_TO_C

s32 func_801210B4(void) {
    if ((D_800D6B54 == 0) && (gKirbyController.buttonHeld & 0x300)) {
        if (gKirbyController.buttonHeld & 0x100) {
            return 1;
        }
        return -1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801210B4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801210FC(void) {
    f32 temp_f0;

    if ((D_8012E7D7 == 0) && (((temp_f0 = D_800E6A10[omCurrentObj->objId], (temp_f0 == 1.0f)) && (gKirbyController.buttonHeld & 0x100)) || ((temp_f0 == -1.0f) && (gKirbyController.buttonHeld & 0x200)))) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801210FC.s")
#endif

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

#ifdef MIPS_TO_C
void func_80121284(u8 arg0) {
    if (gKirbyState.abilityState == 0) {
        gKirbyState.unk17 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121284.s")
#endif

// Matched previously, needs correct function prototypes
#ifdef NON_MATCHING
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
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801212A4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801215DC(void) {
    s32 var_v0;

    if (gKirbyState.isTurning & 1) {
        return 1;
    }
    var_v0 = 0;
    if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonHeld & 0x300)) {
        if (func_80121194() != 0) {
            return 2;
        }
        var_v0 = 1;
        /* Duplicate return node #7. Try simplifying control flow for better match */
        return var_v0;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801215DC.s")
#endif

#ifdef MIPS_TO_C
s32 func_80121658(void) {
    u32 temp_a0;
    u32 temp_a0_2;

    temp_a0 = omCurrentObj->objId;
    if (D_800E8920[temp_a0] != 0) {
        if (D_800E3210[temp_a0] != 0.0f) {
            D_800E3750[temp_a0] = 0.0f;
            temp_a0_2 = omCurrentObj->objId;
            D_800E3210[temp_a0_2] = D_800E3750[temp_a0_2];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            return 1;
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 0;
    }
    if (D_800E8AE0[temp_a0] & 6) {
        if (D_800E3C90[temp_a0] != 1.0f) {
            D_800E3750[temp_a0] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
        }
    } else if (D_800E3C90[temp_a0] != 16.0f) {
        D_800E3750[temp_a0] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121658.s")
#endif

#ifdef MIPS_TO_C

s32 func_801217B8(void) {
    if (func_80121658() != 0) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            play_sound(0x149);
            return 1;
        }
        play_sound(0x149);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801217B8.s")
#endif

#ifdef MIPS_TO_C
s32 func_80121828(f32 arg0, f32 arg1, ? arg2, f32 arg3) {
    u32 temp_a0;
    u32 temp_a0_2;

    temp_a0 = omCurrentObj->objId;
    if (D_800E8920[temp_a0] != 0) {
        if (D_800E3210[temp_a0] != 0.0f) {
            D_800E3750[temp_a0] = 0.0f;
            temp_a0_2 = omCurrentObj->objId;
            D_800E3210[temp_a0_2] = D_800E3750[temp_a0_2];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            return 1;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return 0;
    }
    if (D_800E8AE0[temp_a0] & 6) {
        if (arg3 != D_800E3C90[temp_a0]) {
            D_800E3750[temp_a0] = -0.4f;
            if (arg3 < 0.0f) {
                D_800E3C90[omCurrentObj->objId] = -arg3;
            } else {
                D_800E3C90[omCurrentObj->objId] = arg3;
            }
        }
    } else if (arg1 != D_800E3C90[temp_a0]) {
        D_800E3750[temp_a0] = -0.980665f;
        if (arg1 < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -arg1;
        } else {
            D_800E3C90[omCurrentObj->objId] = arg1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121828.s")
#endif

#ifdef MIPS_TO_C

void func_801219C8(void) {
    if (func_801215DC() == 2) {
        gKirbyState.isTurning |= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801219C8.s")
#endif

#ifdef MIPS_TO_C

void func_80121A04(void) {
    GObj *temp_a0;
    s32 temp_v1;
    u32 temp_v0;
    void *temp_v0_2;
    void *temp_v0_3;
    void *var_a0;

    temp_a0 = omCurrentObj;
    temp_v0 = temp_a0->objId;
    temp_v1 = D_800E8AE0[temp_v0];
    if (!(temp_v1 & 4) && (temp_v1 != 0)) {
        if (D_8012EADC == 0) {
            if (!(D_800DE350[temp_v0]->flags & 1)) {
                func_801693C4(2, &D_8012EADC);
            }
            D_8012EADC = 8;
        } else {
            D_8012EADC -= 1;
        }
        if (D_800E64D0[temp_a0->objId] != 0.0f) {
            var_a0 = D_8012EAE0;
            if (var_a0 == NULL) {
                if (D_8012E860 != 0xF) {
                    temp_v0_2 = func_800A8234(5, 1, 0x2C);
                    D_8012EAE0 = temp_v0_2;
                    var_a0 = temp_v0_2;
                } else {
                    temp_v0_3 = func_800A8234(2, 1, 0xA);
                    D_8012EAE0 = temp_v0_3;
                    var_a0 = temp_v0_3;
                }
            }
        } else {
            var_a0 = D_8012EAE0;
            if (var_a0 != NULL) {
                func_800A22D4(var_a0, &D_8012EADC);
                D_8012EAE0 = NULL;
                var_a0 = NULL;
            }
        }
        if (var_a0 != NULL) {
            var_a0->unk4C->unk4 = D_8012E904;
            D_8012EAE0->unk4C->unk8 = D_8012E908;
            D_8012EAE0->unk4C->unkC = D_8012E908;
        }
    } else {
        D_8012EADC = 0;
        if (D_8012EAE0 != NULL) {
            func_800A22D4(D_8012EAE0, &D_8012EADC);
            D_8012EAE0 = NULL;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121A04.s")
#endif

#ifdef MIPS_TO_C

void func_80121BCC(s32 arg0) {
    s32 temp_v1;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800E8AE0[temp_v0];
    if ((temp_v1 & 0x80) && (temp_v1 & 6) && ((gEntitiesNextPosYArray[temp_v0] - gEntitiesPosYArray[temp_v0]) < -2.45f)) {
        D_8012E7DC = 0xF0;
        play_sound(arg0);
        func_800A8100(5, 1, 0x16, 0);
        func_800A8100(5, 1, 0x1A, 0);
        func_800A8100(5, 1, 0x1D, 0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121BCC.s")
#endif

#ifdef MIPS_TO_C

s32 func_80121C90(void) {
    if (!(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.unk2C = 0xE;
            gKirbyState.isTurning |= 1;
            goto block_9;
        }
        if (gKirbyController.buttonHeld & 0x300) {
            return 1;
        }
        goto block_9;
    }
    if (gKirbyState.unk2C != 0) {
        gKirbyState.unk2C -= 1;
        goto block_9;
    }
    if (gKirbyController.buttonHeld & 0x300) {
        return 1;
    }
block_9:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121C90.s")
#endif

#ifdef MIPS_TO_C

void func_80121D3C(void) {
    u32 temp_v0;

    if (gKirbyState.unk9 & 1) {
        if (gKirbyState.unk6A != 0) {
            gKirbyState.unk6A = gKirbyState.unk6A - 1;
            if (gKirbyState.unk6A == 0) {
                gKirbyState.unk68 = 0;
                gKirbyState.unk9 &= 0xFFFE;
                func_800A22D4(gKirbyState.unk6C);
                if ((gKirbyState.unk54 != 0x80000000) && (D_800D6B54 == 0)) {
                    play_music(0, gKirbyState.unk54);
                    gKirbyState.unk54 = 0x80000000;
                }
            } else {
                gKirbyState.unk68 = 2;
                gKirbyState.unk6C->unk4C->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
                gKirbyState.unk6C->unk4C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
                gKirbyState.unk6C->unk4C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
            }
        } else {
            gKirbyState.unk68 = 2;
            gKirbyState.unk6A = 0x258;
            gKirbyState.unk54 = D_800D6B44;
            func_800BB468(4, 0x28);
            play_music(0, 0x1F);
            temp_v0 = func_800A8234(1, 1, 7);
            gKirbyState.unk6C = temp_v0;
            temp_v0->unk4C->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
            temp_v0->unk4C->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
            temp_v0->unk4C->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121D3C.s")
#endif

#ifdef MIPS_TO_C
void func_80121F14(void) {
    if (!(gKirbyState.unk9 & 1)) {
        gKirbyState.unk9 |= 1;
    } else {
        gKirbyState.unk6A = 0x258;
    }
    gKirbyState.unk8C &= ~1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121F14.s")
#endif

#ifdef MIPS_TO_C

void func_80121F50(void) {
    s32 var_v0;
    struct Player *var_a2;

    if (gKirbyState.isTakingDamage != 0) {
        if (gKirbyState.droppedAbility < 8) {
            var_v0 = func_801BBFE4_ovl7(gKirbyState.droppedAbility, &gKirbyState);
        } else {
            var_v0 = func_801BC27C_ovl7(gKirbyState.droppedAbility, 0, &gKirbyState);
        }
        var_a2 = &gKirbyState;
        if (var_v0 != -1) {
            if (gKirbyState.isTakingDamage == 1) {
                D_800E9C60[var_v0] = gKirbyState.hpAfterDamage;
                D_800E6A10[var_v0] = -*(&D_800E85A0 + (omCurrentObj->objId * 4));
            } else {
                D_800E9C60[var_v0] = 5;
                D_800E6A10[var_v0] = -D_800E6A10[omCurrentObj->objId];
            }
            play_sound(0x118);
            var_a2 = &gKirbyState;
        }
        var_a2->isTakingDamage = 0;
        func_800BC298(var_a2->ability);
        return;
    }
    gKirbyState.abilityDropTimer = gKirbyState.abilityDropTimer - 1;
    if (gKirbyState.abilityDropTimer <= 0) {
        gKirbyState.abilityDropTimer = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121F50.s")
#endif

#ifdef MIPS_TO_C

s32 func_8012209C(void) {
    f32 sp64;
    f32 sp60;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 sp38;
    f32 *temp_a0;
    f32 temp_f0;
    f32 temp_f0_2;
    u32 temp_v1;
    u32 temp_v1_2;
    u32 temp_v1_3;

    if (gKirbyState.unkB == 0) {
        if (func_800F9438(D_800E5F90[omCurrentObj->objId]) == 0) {
            return 0;
        }
        temp_v1 = omCurrentObj->objId;
        temp_a0 = D_800E0490[temp_v1]->unk4;
        sp48 = gEntitiesPosXArray[temp_v1];
        sp4C = gEntitiesPosYArray[omCurrentObj->objId] + *temp_a0;
        sp50 = gEntitiesPosZArray[omCurrentObj->objId];
        sp3C = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp40 = gEntitiesNextPosYArray[omCurrentObj->objId] + *temp_a0;
        sp44 = gEntitiesNextPosZArray[omCurrentObj->objId];
        temp_v1_2 = omCurrentObj->objId;
        temp_f0 = D_800E6BD0[temp_v1_2] - D_800E6D90[temp_v1_2];
        if (temp_f0 != 0.0f) {
            sp60 = temp_f0;
            if (func_80104AB4(&sp48, &sp3C, 1, 8, &sp38) != 0) {
                func_8010DC00(sp38, &sp54);
                if (sp58 == 0.0f) {
                    if (sp60 > 0.0f) {
                        if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) && (gKirbyState.abilityInUse != 0x21)) {
                            if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
                                if (!(gKirbyState.isTurning & 1)) {
                                    gKirbyState.isTurning |= 1;
                                } else {
                                    gKirbyState.turnDirection = 0;
                                }
                            } else {
                                gKirbyState.isTurning &= ~1;
                            }
                        }
                        gKirbyState.unkB = 4;
                    } else {
                        if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) && (gKirbyState.abilityInUse != 0x21)) {
                            if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
                                if (!(gKirbyState.isTurning & 1)) {
                                    gKirbyState.isTurning |= 1;
                                } else {
                                    gKirbyState.turnDirection = 0;
                                }
                            } else {
                                gKirbyState.isTurning &= ~1;
                            }
                        }
                        gKirbyState.unkB = 3;
                    }
                    goto block_33;
                }
            }
        }
        temp_v1_3 = omCurrentObj->objId;
        temp_f0_2 = gEntitiesNextPosYArray[temp_v1_3] - gEntitiesPosYArray[temp_v1_3];
        if (temp_f0_2 != 0.0f) {
            sp64 = temp_f0_2;
            if (func_80104AB4(&sp48, &sp3C, 1, 8, &sp38) != 0) {
                func_8010DC00(sp38, &sp54);
                if ((sp54 == 0.0f) && (sp5C == 0.0f)) {
                    if (sp64 > 0.0f) {
                        gKirbyState.unkB = 1;
                    } else {
                        gKirbyState.unkB = 2;
                    }
                    goto block_33;
                }
            }
        }
        return 0;
    }
block_33:
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8012209C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80122460(void) {
    if ((gKirbyState.ceilingCollisionNext != 0) && (D_800E3210[omCurrentObj->objId] > 0.0f)) {
        if (((gKirbyState.ceilingType == 4) || (gKirbyState.ceilingType == 5)) && (func_8010D8A4(&gPositionState) != 0)) {
            return 1;
        }
        goto block_11;
    }
    if ((gKirbyState.floorCollisionNext != 0) && (D_800E3210[omCurrentObj->objId] <= 0.0f) && (gKirbyState.floorType == 4) && (func_8010D8A4(&gPositionState) != 0)) {
        return 1;
    }
block_11:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122460.s")
#endif

#ifdef MIPS_TO_C

s32 func_80122558(void) {
    s32 sp74;
    ? sp1C;
    f32 temp_f0;
    s32 var_a1;
    u32 temp_v0;

    if ((gKirbyState.unk15 == 0) && (gKirbyState.unk4 == 0)) {
        var_a1 = 0;
        if (!(gKirbyState.isTurning & 5)) {
            M2C_MEMCPY_ALIGNED(&sp1C, &D_8012BCA0, 0x54);
            *(&sp1C + 0x54) = *(&D_8012BCA0 + 0x54);
            temp_f0 = D_800E6A10[omCurrentObj->objId];
            if (((temp_f0 == 1.0f) && (gKirbyState.rightCollisionNext != 0)) || ((temp_f0 == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
                sp74 = 0;
                var_a1 = 0;
                if ((func_8010C734(&gPositionState, 0, &D_8012BCA0) != 0) && ((temp_v0 = D_8012BCA0 >> 0x13, ((temp_v0 & 7) == 7)) || ((temp_v0 & 0x38) == 0x38))) {
                    var_a1 = 1;
                }
            }
            M2C_MEMCPY_ALIGNED(&D_8012BCA0, &sp1C, 0x58);
            if (var_a1 != 0) {
                gKirbyState.unk30 = 0;
                gKirbyState.unk168 = 0.0f;
                gKirbyState.unk164 = gKirbyState.unk168;
                set_kirby_action_1(0xD, 0xA);
                return 1;
            }
            goto block_13;
        }
    }
block_13:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122558.s")
#endif

#ifdef MIPS_TO_C

s32 func_801226FC(void) {
    s32 sp94;
    ? sp3C;
    f32 sp2C;
    f32 *temp_a1;
    f32 temp_f0;
    f32 var_f0;
    s32 var_v1;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;

    if ((gKirbyState.unk15 == 0) && (gKirbyState.unk4 == 0)) {
        var_v1 = 0;
        if (!(gKirbyState.isTurning & 5)) {
            M2C_MEMCPY_ALIGNED(&sp3C, &D_8012BCA0, 0x54);
            *(&sp3C + 0x54) = *(&D_8012BCA0 + 0x54);
            temp_f0 = D_800E6A10[omCurrentObj->objId];
            if (((temp_f0 == 1.0f) && (gKirbyState.rightCollisionNext != 0)) || ((temp_f0 == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
                sp94 = 0;
                var_v1 = 0;
                if ((func_8010CABC(&gPositionState, &D_8012BCA0) != 0) && ((temp_v0 = D_8012BCA0 >> 0x13, ((temp_v0 & 7) == 7)) || ((temp_v0 & 0x38) == 0x38))) {
                    var_v1 = 1;
                }
            }
            M2C_MEMCPY_ALIGNED(&D_8012BCA0, &sp3C, 0x54);
            *(&D_8012BCA0 + 0x54) = *(&sp3C + 0x54);
            if (var_v1 != 0) {
                temp_v0_2 = omCurrentObj->objId;
                if (D_800E6A10[temp_v0_2] == 1.0f) {
                    var_f0 = -0.25f;
                } else {
                    var_f0 = 0.25f;
                }
                temp_a1 = &D_800E6BD0[temp_v0_2];
                *temp_a1 += (1.0f / (D_80129114->unk4 + (D_800E5F90[temp_v0_2] * 0x10))->unk4->unkC) * var_f0;
                func_800F8570(omCurrentObj->objId, temp_a1);
                temp_v0_3 = omCurrentObj->objId;
                func_8001E300(&sp2C, (D_80129114->unk4 + (D_800E5F90[temp_v0_3] * 0x10))->unk4, D_800E6BD0[temp_v0_3]);
                gEntitiesNextPosXArray[omCurrentObj->objId] = sp2C;
                gEntitiesNextPosZArray[omCurrentObj->objId] = sp34;
                gKirbyState.unk168 = 0.0f;
                gKirbyState.unk30 = 0;
                gKirbyState.unk164 = gKirbyState.unk168;
                set_kirby_action_1(0xE, 0xB);
                func_801229D0();
                return 1;
            }
            goto block_16;
        }
    }
block_16:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801226FC.s")
#endif

#ifdef MIPS_TO_C
void func_801229D0(void) {
    if (gPositionState.byteArray[2] != 0x14) {
        D_8012E922 = gPositionState.byteArray[2];
        return;
    }
    if (gPositionState.byteArray[3] != 0x14) {
        D_8012E922 = gPositionState.byteArray[3];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801229D0.s")
#endif

#ifdef NON_MATCHING
extern s32 D_80128420[];
extern s16 D_8012E894;
void func_80122A10(GObj *g) {
    if ((D_8012E894 > 0) && (D_8012E894 < 5)) {
        func_800A8100(0, 1, D_80128420[D_8012E894]);
    } else {
        print_error_stub("plydmg ptcl kind over![plylib.cc] max: %x, kind: %x\n", 5, D_8012E894);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122A10.s")
#endif

#ifdef MIPS_TO_C

void func_80122A80(void) {
    s32 temp_v1;
    s32 var_v0;
    u16 var_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_v0 = temp_v0 * 4;
    temp_v1 = D_800E8AE0[temp_v0];
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) == 1) {
            var_a2 = 6;
            goto block_4;
        }
    } else {
        play_sound(0x45);
        var_a2 = *(&D_80128448 + (D_8012E8CA * 0x1C));
        var_v0 = omCurrentObj->objId * 4;
block_4:
        func_800A7F74(5, 1, var_a2, *(gEntitiesNextPosXArray + var_v0), *(gEntitiesNextPosYArray + var_v0), *(gEntitiesNextPosZArray + var_v0));
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122A80.s")
#endif

#ifdef MIPS_TO_C

void func_80122B40(void) {
    s32 temp_v1;
    u16 var_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    temp_v1 = D_800E8AE0[temp_v0];
    if (temp_v1 & 7) {
        if (temp_v1 & 6) {
            var_a2 = 0x13;
        } else {
            var_a2 = 0xE;
        }
    } else if (gKirbyState.vel[1] < -12.5f) {
        var_a2 = *(&D_8012844E + (gKirbyState.unk10A * 0x1C));
    } else {
        var_a2 = *(&D_8012844C + (gKirbyState.unk10A * 0x1C));
    }
    func_800A7F74(5, 1, var_a2, gEntitiesNextPosXArray[temp_v0], gEntitiesNextPosYArray[temp_v0], gEntitiesNextPosZArray[temp_v0]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122B40.s")
#endif

#ifdef MIPS_TO_C

void func_80122C30(void) {
    play_sound(0x102);
    D_8012E80C = func_800A8100(5, 1, *(&D_8012844A + (D_8012E8CA * 0x1C)), D_800DFBD0[omCurrentObj->objId]->unk4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122C30.s")
#endif

#ifdef MIPS_TO_C

void func_80122CA0(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 2) && (arg2 != 0.0f)) {
        func_80122CE8(arg2);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122CA0.s")
#endif

#ifdef MIPS_TO_C

void func_80122CE8(void) {
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    ? sp5C;
    ? sp50;
    ? *var_s2;
    ? *var_v0;
    ? var_a2;
    f32 temp_f0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s3;
    s32 var_v1;
    u32 temp_v1;
    void *temp_s1;

    temp_v1 = omCurrentObj->objId;
    sp7C = gEntitiesNextPosXArray[temp_v1];
    sp80 = *D_800E0490[temp_v1]->unk4 + gEntitiesNextPosYArray[temp_v1];
    sp84 = gEntitiesNextPosZArray[temp_v1];
    temp_v0 = func_8010DF9C(&sp7C);
    if ((temp_v0 != 0) && (var_s3 = 0, (temp_v0 != 0))) {
        var_s2 = &D_8012BCA0;
loop_3:
        temp_s1 = var_s2->unk40;
        if (temp_s1->unk4 == 1) {
            sp64 = sp7C;
            sp6C = sp84;
            sp68 = sp80 + 120.0f;
            temp_v0_2 = func_8010DF9C(&sp64);
            if (temp_v0_2 != 0) {
                var_v1 = 0;
                if (temp_v0_2 != 0) {
                    var_v0 = &D_8012BCA0;
loop_7:
                    var_v1 += 1;
                    if (var_v0->unk40->unk4 == 1) {
                        func_800A7F74(5, 1, 0x1E, sp7C, sp80, sp84);
                        return;
                    }
                    var_v0 += 4;
                    if (var_v1 == temp_v0_2) {
                        goto block_18;
                    }
                    goto loop_7;
                }
                goto block_18;
            }
            if (func_8010E048(temp_s1, var_s2->unk4C, &sp7C, &sp64, &sp5C, &sp50) != 0) {
                temp_f0 = sp54 - sp80;
                if (!(temp_f0 < 40.0f)) {
                    if (temp_f0 < 80.0f) {
                        var_a2 = 0x3B;
                    } else {
                        var_a2 = 0x3A;
                    }
                    goto block_17;
                }
            } else {
                var_a2 = 0x1E;
block_17:
                func_800A7F74(5, 1, var_a2, sp7C, sp80, sp84);
            }
        } else {
block_18:
            var_s3 += 1;
            var_s2 += 4;
            if (var_s3 == temp_v0) {

            } else {
                goto loop_3;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122CE8.s")
#endif

#ifdef MIPS_TO_C

void func_80122F08(s32 arg0) {
    if ((arg0 == 0x20007) || (arg0 == 0x20008) || (arg0 == 0x20009)) {
        func_800A9760();
    } else {
        func_800A8EC0();
    }
    func_800AFA88(omCurrentObj);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122F08.s")
#endif

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

#ifdef MIPS_TO_C

void func_80122FB0(s32 arg0) {
    D_800DDE10[omCurrentObj->objId] = arg0;
    assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], &D_80177098);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122FB0.s")
#endif

#ifdef MIPS_TO_C

void func_80123004(void *arg0, f32 arg1, s32 arg2) {
    s32 temp_a3;

    temp_a3 = arg0->unk4;
    if (temp_a3 != -1) {
        func_800A9F98(arg1, temp_a3, arg1, temp_a3);
    }
    if (arg2 == 0) {
        func_800A9F98(arg1, arg0->unk0, arg1);
        return;
    }
    func_800AA0C4(arg1, arg0->unk0, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80123004.s")
#endif

#ifdef MIPS_TO_C

void func_8012307C(s32 arg0, s32 arg1, f32 arg2, s32 arg3) {
    func_800A9F98(arg2, arg1, arg2);
    if (arg3 == 0) {
        func_800A9F98(arg2, arg0, arg2);
        return;
    }
    func_800AA0C4(arg2, arg0, arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8012307C.s")
#endif

#ifdef MIPS_TO_C

void func_801230E8(s32 arg0, s32 arg1, s32 arg2) {
    func_8012307C(0, arg2);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801230E8.s")
#endif

#ifdef MIPS_TO_C

void func_8012310C(s32 currentInhale) {
    if (currentInhale != 0) {
        play_sound(0x104);
    }
    func_800BC298(currentInhale, currentInhale);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8012310C.s")
#endif

#ifdef MIPS_TO_C

f32 func_80123144(f32 arg0) {
    return *(&D_80128440 + (D_8012E8CA * 0x1C)) * arg0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80123144.s")
#endif

#ifdef MIPS_TO_C

u16 func_80123170(void) {
    s32 temp_v0;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 & 7) {
        if (temp_v0 & 6) {
            return 0x13;
        }
        return 0xE;
    }
    return *(&D_8012844C + (D_8012E8CA * 0x1C));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80123170.s")
#endif

#ifdef MIPS_TO_C

u16 func_801231D8(void) {
    s32 temp_v0;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 & 7) {
        if (temp_v0 & 6) {
            return 0x13;
        }
        return 0xE;
    }
    return *(&D_8012844E + (D_8012E8CA * 0x1C));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801231D8.s")
#endif

#ifdef MIPS_TO_C

u16 func_80123240(void) {
    s32 temp_v0;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 != 0) {
        if ((temp_v0 & 7) == 1) {
            return 6;
        }
        return -1;
    }
    return *(&D_80128448 + (D_8012E8CA * 0x1C));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80123240.s")
#endif

void func_801232A8(Vector *arg0, u16 arg1) {
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            arg0->z = 0.35f;
        } else {
            arg0->z = 0.225f;
        }
        arg0->y = 1.0f;
        arg0->x = 1.0f;
    } else {
        arg0->x = D_80128434[arg1].unk0.x;
        arg0->y = D_80128434[arg1].unk0.y;
        arg0->z = D_80128434[arg1].unk0.z;
    }
}

extern Lights1 D_800BE548;
extern Lights1 D_800BE550;
#ifdef NON_MATCHING
void func_80123354(GObj *g) {
    if (!(D_800DD8D0[g->objId] & 0x40)) {
        switch (func_800AB0F4()) {
            case 19:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB120(g);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                return;
            case 21:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB1F0(g);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                return;
            case 23:
            case 25:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB2C0(g);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                return;
            case 27:
            case 29:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB3A0(g);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                return;
            case 20:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB174(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 22:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB244(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
            case 24:
            case 26:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;
                func_800AB314(g);

                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 28:
            case 30:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[g->objId]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[g->objId]);
                func_800A54FC(&D_800D7010, gDynamicBuffer1.top);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                gDynamicBuffer1.top += 0x18;

                func_800AB3F4(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            default:
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80123354.s")
#endif
