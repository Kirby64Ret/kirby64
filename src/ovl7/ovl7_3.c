#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"

// ovl2 bss
extern u32 D_8012BCA0;

extern void func_8010B480(struct Sub800E1B50_Unk84 *);
extern void func_8010B284(struct Sub800E1B50_Unk84 *);
extern void func_8010B67C(struct Sub800E1B50_Unk84 *);
extern void func_8010B860(struct Sub800E1B50_Unk84 *);

void func_801A0D50_ovl7(void (*cb)(GObj *)) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk9C = cb;
}

// https://decomp.me/scratch/wJPj6
#ifdef NON_MATCHING
s32 func_801A0D74_ovl7(GObj *arg0) {
    s32 oldIdx;
    Vector sp18;
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Sub800E1B50_Unk98 *functable = ent->unk98;
    struct Sub800E1B50_Unk84 *ent_sub84 = ent->unk84;

    if (ent_sub84 == NULL) {
        return 0;
    }
    if ((u32)ent->unk48 == -1) {
        return 0;
    }
    sp18.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp18.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp18.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    oldIdx = gEntityVtableIndexArray[omCurrentObj->objId];
    func_801A1724_ovl7(ent_sub84);

    if (((u32)ent->unk48 == (u32)func_8010B480)
     || ((u32)ent->unk48 == (u32)func_8010B284)
     || ((u32)ent->unk48 == (u32)func_8010B67C)
     || ((u32)ent->unk48 == (u32)func_8010B860)
    ) {
        D_800E8920[omCurrentObj->objId] = ent->unk48(ent_sub84);
    }
    if (D_800E8920[omCurrentObj->objId] == 0) {
        if (ent->unk48 != 0) {
            ent->unk48(ent_sub84);
            D_800E8920[omCurrentObj->objId] = ((D_8012BCA0 >> 0x13) & 0x1E00) ? 1 : 0;
        } else {
            D_800E8920[omCurrentObj->objId] = (D_800E78F0[omCurrentObj->objId] & 0x10) ? func_80109E00(ent_sub84) : func_80109DD8(ent_sub84);
        }
    } else {
        D_800E8920[omCurrentObj->objId] = (D_800E78F0[omCurrentObj->objId] & 0x10) ? func_8010B0D8(ent_sub84) : func_8010B0B0(ent_sub84);
    }
    func_801A187C_ovl7(ent_sub84);
    func_801A1B6C_ovl7();
    func_801A2068_ovl7();
    func_80105238(ent_sub84, &D_8012BCA0);
    if (functable == NULL) {
        return 0;
    }
    if (
        (((D_8012BCA0 >> 0x13) & 0x1C0 != 0) && ((D_8012BCA0 >> 0x13) & 0xE00))
     || (((D_8012BCA0 >> 0x13) & 7) && ((D_8012BCA0 >> 0x13) & 0x38))
    ) {
        gEntitiesNextPosXArray[omCurrentObj->objId] = sp18.x;
        gEntitiesNextPosYArray[omCurrentObj->objId] = sp18.y;
        gEntitiesNextPosZArray[omCurrentObj->objId] = sp18.z;
        if (functable->func20 != NULL) {
            functable->func20(arg0);
        }
        if (functable->unk0[6] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[6];
            func_80199628_ovl7(arg0);
        }
        if ((functable->func20 == NULL) && (functable->unk0[6] == -1)) {
            func_80199688_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if ((ent->unk44 != 0) && ((functable->func20 != NULL) || (functable->unk0[6] != -1))) {
        if (functable->func20 != NULL) {
            functable->func20(arg0);
        }
        if (functable->unk0[6] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[6];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 2) && ((functable->funcC != NULL) || (functable->unk0[1] != -1))) {
        if (functable->funcC != NULL) {
            functable->funcC(arg0);
        }
        if (functable->unk0[1] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[1];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if (D_800E8920[omCurrentObj->objId] == 1) { // check if this is needed
        if ((D_800E8920[omCurrentObj->objId] == 0) && ((functable->func8 != NULL) || (functable->unk0[0] != -1))) {
            if (functable->func8 != NULL) {
                functable->func8(arg0);
            }
            if (functable->unk0[0] != -1) {
                gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[0];
                func_80199628_ovl7(arg0);
            }
            return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
        }
    }
    else if ((D_800E8920[omCurrentObj->objId] == 1) && ((functable->func8 != NULL) || (functable->unk0[0] != -1))) {
        if (functable->func8 != NULL) {
            functable->func8(arg0);
        }
        if (functable->unk0[0] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[0];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if (((D_8012BCA0 >> 0x13) & 0x3F) ||
        ((D_800E6310[omCurrentObj->objId] != 0)
      && (D_800E64D0[omCurrentObj->objId] != 0.0f)
      && ((functable->func10 != NULL) || (functable->unk0[2] != -1)))
    ) {
        if (functable->func10 != NULL) {
            functable->func10(arg0);
        }
        if (functable->unk0[2] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[2];
            func_80199628_ovl7(arg0);
            omCurrentObj->objId = omCurrentObj->objId * 4;
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if ((D_800E8920[omCurrentObj->objId] == 1)
        &&  ((D_800E6A10[omCurrentObj->objId] == 1.0f)
        &&  ((D_8012BCA0 >> 0x13) & 0x400)
        && !((D_8012BCA0 >> 0x13) & 0x200)
        && !((D_8012BCA0 >> 0x13) & 0x800))
        ||  ((D_800E6A10[omCurrentObj->objId] == -1.0f)
        &&  ((D_8012BCA0 >> 0x13) & 0x800)
        && !((D_8012BCA0 >> 0x13) & 0x200)
        && !((D_8012BCA0 >> 0x13) & 0x400))
        && ((functable->func14 != NULL) || (functable->unk0[3] != -1))
    ) {
        if (functable->func14 != NULL) {
            functable->func14(arg0);
        }
        if (functable->unk0[3] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[3];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    // else
    if ((D_800E8920[omCurrentObj->objId] == 0) && (((D_8012BCA0 >> 0x13) & 0x1C0) != 0) && ((functable->func18 != NULL) || (functable->unk0[4] != -1))) {
        if (functable->func18 != NULL) {
            functable->func18(arg0);
        }
        if (functable->unk0[4] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[4];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 4) && ((functable->func1C != NULL) || (functable->unk0[5] != -1))) {
        if (functable->func1C != NULL) {
            functable->func1C(arg0);
        }
        if (functable->unk0[5] != -1) {
            gEntityVtableIndexArray[omCurrentObj->objId] = functable->unk0[5];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityVtableIndexArray[omCurrentObj->objId];
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A0D74_ovl7.s")
#endif

void func_801A1724_ovl7(struct Sub800E1B50_Unk84 *sub84) {
    sub84->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    sub84->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    sub84->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        sub84->unk1C = ABSF(sub84->unk1C);
        sub84->unk20 = (sub84->unk20) < 0.0f ? -(-(sub84->unk20)) : -(sub84->unk20);
    } else {
        sub84->unk1C = (sub84->unk1C) < 0.0f ? -(-(sub84->unk1C)) : -(sub84->unk1C);
        sub84->unk20 = ABSF(sub84->unk20);
    }
    sub84->unk24 = D_800E17D0[omCurrentObj->objId];
}

#ifdef MIPS_TO_C

void func_801A187C_ovl7(void *arg0) {
    void *sp2C;
    u32 sp1C;
    GObj *temp_a1;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_v0;
    u32 temp_t6;
    u32 var_v1;
    void *var_t0;

    temp_a1 = omCurrentObj;
    temp_t6 = temp_a1->objId;
    var_v0 = temp_t6 * 4;
    var_t0 = *(&D_800E1B50 + var_v0);
    sp1C = temp_t6;
    if ((D_800E8E60[temp_t6] != 1) && ((temp_f0 = arg0->unk4 - gEntitiesNextPosXArray[temp_t6], temp_f2 = arg0->unkC - gEntitiesNextPosZArray[temp_t6], (temp_f0 != 0.0f)) || (temp_f2 != 0.0f))) {
        sp2C = var_t0;
        func_800F8728(0, sp1C, temp_f0, temp_f2, arg0);
        var_v0 = omCurrentObj->objId * 4;
    }
    *(gEntitiesNextPosXArray + var_v0) = arg0->unk4;
    gEntitiesNextPosYArray[temp_a1->objId] = arg0->unk8;
    gEntitiesNextPosZArray[temp_a1->objId] = arg0->unkC;
    temp_v1 = var_t0->unk48;
    if ((&func_8010C274 != temp_v1) && (&func_8010C184 != temp_v1) && (&func_8010B480 != temp_v1) && (&func_8010B284 != temp_v1) && (&func_8010B67C != temp_v1) && (&func_8010B860 != temp_v1)) {
        if (D_800E8920[temp_a1->objId] == 1) {
            var_t0->unk78 = D_8012BCA0.unkC;
            var_t0->unk7C = D_8012BCA0.unk8;
        } else {
            var_t0->unk78 = 0;
            goto block_14;
        }
    } else {
        var_t0->unk78 = 0;
block_14:
        var_t0->unk7C = 0;
    }
    temp_v1_2 = var_t0->unk48;
    if ((&func_8010C274 != temp_v1_2) && (&func_8010C184 != temp_v1_2) && (&func_8010B480 != temp_v1_2) && (&func_8010B284 != temp_v1_2) && (&func_8010B67C != temp_v1_2) && (&func_8010B860 != temp_v1_2)) {
        var_t0->unk44 = 0;
        var_v1 = D_8012BCA0.unk0 >> 0x13;
        if (var_v1 & 0xE00) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24(D_8012BCA0.unk8, temp_a1);
            var_v1 = D_8012BCA0.unk0 >> 0x13;
        }
        if ((var_v1 & 7) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24(D_8012BCA0.unk20);
            var_v1 = D_8012BCA0.unk0 >> 0x13;
        }
        if ((var_v1 & 0x38) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24(D_8012BCA0.unk2C);
            var_v1 = D_8012BCA0.unk0 >> 0x13;
        }
        if ((var_v1 & 0x1C0) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24(D_8012BCA0.unk14);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A187C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A1B6C_ovl7(void) {
    s32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s32 sp48;
    void *sp40;
    ? sp3C;
    void *sp38;
    void *sp34;
    s32 *temp_v0_3;
    s32 *temp_v0_4;
    s32 *temp_v0_5;
    s32 *temp_v0_6;
    s32 *temp_v0_7;
    s32 *temp_v0_8;
    s32 *var_v0;
    s32 temp_a0;
    s32 temp_v0_2;
    s32 var_v1;
    s8 temp_v0_10;
    u32 temp_v1;
    u32 temp_v1_4;
    u8 temp_v0;
    u8 temp_v0_9;
    void *temp_a0_2;
    void *temp_a2;
    void *temp_t0;
    void *temp_v1_2;
    void *temp_v1_3;

    temp_v1 = omCurrentObj->objId;
    temp_t0 = *(&D_800E1B50 + (temp_v1 * 4));
    temp_a2 = temp_t0->unk84;
    sp60 = gEntitiesNextPosXArray[temp_v1];
    temp_v0 = temp_t0->unk42;
    switch (temp_v0) {                              /* irregular */
        case 0:
            sp64 = gEntitiesNextPosYArray[omCurrentObj->objId] + temp_a2->unk14;
            break;
        case 2:
            sp64 = gEntitiesNextPosYArray[omCurrentObj->objId] + temp_a2->unk18;
            break;
        default:
        case 1:
            sp64 = gEntitiesNextPosYArray[omCurrentObj->objId];
            break;
    }
    sp68 = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp6C = D_800E8AE0[temp_v1];
    sp38 = temp_t0;
    sp34 = temp_a2;
    sp40 = temp_t0->unk74;
    temp_v0_2 = func_8010DF9C(&sp60, omCurrentObj, temp_a2, gEntitiesNextPosYArray);
    if (temp_v0_2 != 0) {
        if (temp_v0_2 != 1) {
            if (temp_v0_2 != 2) {
                if (temp_v0_2 == 3) {
                    temp_v1_2 = *(&D_8012BCE0 + 8);
                    if (temp_v1_2->unk4 != 0) {
                        sp38->unk74 = temp_v1_2;
                        temp_v0_3 = &D_800E8AE0[omCurrentObj->objId];
                        *temp_v0_3 |= 1;
                    }
                    goto block_13;
                }
                goto block_18;
            }
block_13:
            temp_v1_3 = *(&D_8012BCE0 + 4);
            if (temp_v1_3->unk4 != 0) {
                sp38->unk74 = temp_v1_3;
                temp_v0_4 = &D_800E8AE0[omCurrentObj->objId];
                *temp_v0_4 |= 1;
            }
            goto block_15;
        }
block_15:
        if (D_8012BCE0->unk4 != 0) {
            sp38->unk74 = D_8012BCE0;
            temp_v0_5 = &D_800E8AE0[omCurrentObj->objId];
            *temp_v0_5 |= 1;
        }
    } else {
block_18:
        temp_v0_6 = &D_800E8AE0[omCurrentObj->objId];
        *temp_v0_6 &= ~1;
        sp38->unk74 = NULL;
    }
    temp_a0 = sp6C & 1;
    if (((temp_a0 == 0) && (var_v0 = &D_800E8AE0[omCurrentObj->objId], var_v1 = *var_v0, ((var_v1 & 1) != 0))) || ((var_v0 = &D_800E8AE0[omCurrentObj->objId], var_v1 = *var_v0, (temp_a0 != 0)) && !(var_v1 & 1))) {
        *var_v0 = var_v1 | 2;
        temp_v0_7 = &D_800E8AE0[omCurrentObj->objId];
        *temp_v0_7 |= 0x10;
    } else {
        *var_v0 = var_v1 & ~2;
        temp_v0_8 = &D_800E8AE0[omCurrentObj->objId];
        *temp_v0_8 &= ~0x10;
    }
    if (sp38->unk38 != -1) {
        temp_v1_4 = omCurrentObj->objId;
        if (D_800E8AE0[temp_v1_4] & 0x10) {
            temp_v0_9 = sp38->unk41;
            switch (temp_v0_9) {                    /* switch 1; irregular */
                case 0:                             /* switch 1 */
                    sp64 = gEntitiesNextPosYArray[temp_v1_4] + sp34->unk14;
                    sp58 = gEntitiesPosYArray[omCurrentObj->objId] + sp34->unk14;
                    break;
                case 2:                             /* switch 1 */
                    sp64 = gEntitiesNextPosYArray[temp_v1_4] + sp34->unk18;
                    sp58 = gEntitiesPosYArray[omCurrentObj->objId] + sp34->unk18;
                    break;
                default:                            /* switch 1 */
                case 1:                             /* switch 1 */
                    sp64 = gEntitiesNextPosYArray[temp_v1_4];
                    sp58 = gEntitiesPosYArray[omCurrentObj->objId];
                    break;
            }
            sp54 = gEntitiesPosXArray[omCurrentObj->objId];
            sp5C = gEntitiesPosZArray[omCurrentObj->objId];
            temp_a0_2 = sp38->unk74;
            if (temp_a0_2 != NULL) {
                if ((func_8010E048(temp_a0_2, 0x14, &sp54, &sp60, &sp3C, &sp48) != 0) && (sp38->unk38 == 0)) {
                    func_801AE73C_ovl7(1, sp48, sp4C, sp50);
                }
            } else if ((sp40 != NULL) && (func_8010E048(sp40, 0x14, &sp54, &sp60, &sp3C, &sp48) != 0) && (sp38->unk38 == 0)) {
                func_801AE73C_ovl7(1, sp48, sp4C, sp50);
            }
        }
    }
    temp_v0_10 = sp38->unk38;
    if ((temp_v0_10 != -1) && (temp_v0_10 > 0)) {
        sp38->unk38 = temp_v0_10 - 1;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_801A239C_ovl7();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A1B6C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A2068_ovl7(void) {
    s32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    void *sp24;
    s32 *temp_v0_2;
    s32 temp_v0;
    s32 temp_v1_3;
    s32 var_a1;
    u32 temp_v1;
    u32 temp_v1_2;
    void *temp_a1;

    temp_v1 = omCurrentObj->objId;
    temp_a1 = (*(&D_800E1B50 + (temp_v1 * 4)))->unk84;
    if (D_800E8AE0[temp_v1] & 1) {
        sp2C = gEntitiesNextPosXArray[temp_v1];
        sp30 = gEntitiesNextPosYArray[omCurrentObj->objId] + temp_a1->unk14;
        sp34 = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else if (D_800E8920[temp_v1] == 0) {
        sp2C = gEntitiesNextPosXArray[temp_v1];
        sp30 = gEntitiesNextPosYArray[omCurrentObj->objId] + temp_a1->unk18;
        sp34 = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else {
        sp30 = gEntitiesNextPosYArray[temp_v1] + temp_a1->unk18;
        temp_v1_2 = omCurrentObj->objId;
        if (D_800E6A10[temp_v1_2] == 1.0f) {
            sp24 = temp_a1;
            sp2C = (sinf(D_800E17D0[temp_v1_2]) * temp_a1->unk1C) + gEntitiesNextPosXArray[omCurrentObj->objId];
            sp34 = (cosf(D_800E17D0[omCurrentObj->objId]) * temp_a1->unk1C) + gEntitiesNextPosZArray[omCurrentObj->objId];
        } else {
            sp24 = temp_a1;
            sp2C = (sinf(D_800E17D0[temp_v1_2]) * temp_a1->unk20) + gEntitiesNextPosXArray[omCurrentObj->objId];
            sp34 = (cosf(D_800E17D0[omCurrentObj->objId]) * temp_a1->unk20) + gEntitiesNextPosZArray[omCurrentObj->objId];
        }
    }
    sp38 = 0;
    temp_v0 = func_8010DF9C(&sp2C, temp_a1);
    var_a1 = sp38;
    if (temp_v0 != 0) {
        if (temp_v0 != 1) {
            if (temp_v0 != 2) {
                if (temp_v0 == 3) {
                    if ((*(&D_8012BCE0 + 8))->unk4 != 0) {
                        var_a1 = 1;
                    }
                    goto block_13;
                }
            } else {
block_13:
                if ((*(&D_8012BCE0 + 4))->unk4 != 0) {
                    var_a1 |= 1;
                }
                goto block_15;
            }
        } else {
block_15:
            if (D_8012BCE0->unk4 != 0) {
                var_a1 |= 1;
            }
        }
    }
    temp_v0_2 = &D_800E8AE0[omCurrentObj->objId];
    temp_v1_3 = *temp_v0_2;
    if (temp_v1_3 & 1) {
        if (var_a1 != 0) {
            *temp_v0_2 = temp_v1_3 & ~4;
            return;
        }
        *temp_v0_2 = temp_v1_3 | 4;
        return;
    }
    if (var_a1 != 0) {
        *temp_v0_2 = temp_v1_3 | 4;
        return;
    }
    *temp_v0_2 = temp_v1_3 & ~4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2068_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A239C_ovl7(void) {
    s8 temp_v1;
    u16 temp_a0;
    u32 temp_v1_2;
    void *temp_v0;

    temp_v0 = *(&D_800E1B50 + (omCurrentObj->objId * 4));
    temp_v1 = temp_v0->unk39;
    if ((temp_v1 != -1) && (temp_v0->unk39 = temp_v1 - 1, (temp_v0->unk39 == 0))) {
        temp_v0->unk39 = 0x1E;
        temp_v1_2 = omCurrentObj->objId;
        temp_a0 = D_800E77A0[temp_v1_2];
        if ((temp_a0 >= 0x4E) && (temp_a0 < 0x5D)) {
            func_800FD570(0, 3, 0, 0, 0.0f);
            return;
        }
        func_800A7F74(3, 2, 0x3F, gEntitiesNextPosXArray[temp_v1_2], gEntitiesNextPosYArray[temp_v1_2], gEntitiesNextPosZArray[temp_v1_2]);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A239C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A248C_ovl7(void *arg0, ? arg1) {
    if (arg0 != NULL) {
        if (func_8010D668(arg1, arg1) != 0) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = arg0->unk4;
            gEntitiesNextPosYArray[omCurrentObj->objId] = arg0->unk8;
            gEntitiesNextPosZArray[omCurrentObj->objId] = arg0->unkC;
            D_800E8920[omCurrentObj->objId] = 1;
        } else {
            D_800E8920[omCurrentObj->objId] = 0;
        }
        func_80105180(arg0);
        func_801051AC(arg0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A248C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A2558_ovl7(s32 arg0) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    void *sp34;
    void *sp30;
    GObj *var_v1;
    f32 *temp_v0_3;
    f32 *var_at;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    s32 (*temp_v0_2)(void *);
    s32 temp_v0_4;
    s32 var_v0;
    u32 temp_a3;
    u32 temp_a3_2;
    u8 temp_t0;
    void *temp_a1;
    void *temp_t7;
    void *temp_v0;

    temp_a3 = omCurrentObj->objId;
    temp_t7 = *(&D_800E1B50 + (temp_a3 * 4));
    sp34 = temp_t7;
    temp_a1 = temp_t7->unk84;
    if (arg0 != 0) {
        temp_t0 = D_800E7730[temp_a3];
        switch (temp_t0) {
            case 1:
                var_f0 = 25.0f;
                break;
            case 2:
                var_f0 = 25.0f;
                break;
            case 4:
                var_f0 = 0.0f;
                break;
            case 3:
                var_f0 = 25.0f;
                break;
            case 6:
                var_f0 = 0.0f;
                break;
            default:
                if (D_800E0D50[temp_a3] != 0) {
                    var_f0 = 25.0f;
                } else {
                    var_f0 = 0.0f;
                }
                break;
        }
        if (temp_a1 != NULL) {
            sp30 = temp_a1;
            sp44 = var_f0;
            func_80105180(temp_a1, temp_a1, temp_a3);
        } else {
            sp44 = var_f0;
            temp_v0 = func_8010DCAC(temp_a1, temp_a1, temp_a3);
            sp30 = temp_v0;
            sp34->unk84 = temp_v0;
        }
        sp44 = var_f0;
        func_801A2ADC_ovl7(arg0);
        if ((sp34->unk88->unk1C != 0) && (D_800E8E60[omCurrentObj->objId] == 0)) {
            sp44 = var_f0;
            func_801051DC(sp30);
            temp_v0_2 = sp34->unk48;
            if (temp_v0_2 != NULL) {
                sp44 = var_f0;
                var_v1 = omCurrentObj;
                D_800E8920[var_v1->objId] = temp_v0_2(sp30);
            } else {
                sp44 = var_f0;
                var_v1 = omCurrentObj;
                D_800E8920[var_v1->objId] = func_80109DD8(sp30);
            }
            if (D_800E8920[var_v1->objId] == 0) {
                var_v1 = omCurrentObj;
                D_800E8920[var_v1->objId] = func_8010D668(sp30, var_f0, D_800E8920);
                if (sp34->unk88->unk1C == 2) {
                    temp_v0_3 = &gEntitiesAngleZArray[var_v1->objId];
                    var_f0_2 = *temp_v0_3;
                    if (var_f0_2 >= 6.2831855f) {
                        *temp_v0_3 = var_f0_2 - 6.2831855f;
                        var_at = &gEntitiesAngleZArray[var_v1->objId];
                        goto block_25;
                    }
                    if (var_f0_2 < 0.0f) {
                        *temp_v0_3 = var_f0_2 + 6.2831855f;
                        var_at = &gEntitiesAngleZArray[var_v1->objId];
block_25:
                        var_f0_2 = *var_at;
                    }
                    if ((var_f0_2 > 1.553343f) && (var_f0_2 < 1.5882497f)) {
                        func_8010CE44(sp30, 0x41C80000, D_800E8920);
                        goto block_35;
                    }
                    if ((var_f0_2 > 3.1241393f) && (var_f0_2 < 3.1590462f)) {
                        func_8010D42C(sp30, 0x41C80000, D_800E8920);
                        goto block_35;
                    }
                    if ((var_f0_2 > 4.694936f) && (var_f0_2 < 4.7298427f)) {
                        func_8010D138(sp30, 0x41C80000, D_800E8920);
block_35:
                        var_v1 = omCurrentObj;
                    }
                }
            }
            temp_a3_2 = var_v1->objId;
            var_v0 = temp_a3_2 * 4;
            temp_f0 = sp30->unk4 - gEntitiesNextPosXArray[temp_a3_2];
            temp_f2 = sp30->unkC - gEntitiesNextPosZArray[temp_a3_2];
            if ((temp_f0 != 0.0f) || (temp_f2 != 0.0f)) {
                func_800F8728(0, temp_a3_2, temp_f0, temp_f2, temp_a3_2);
                gEntitiesNextPosXArray[omCurrentObj->objId] = sp30->unk4;
                gEntitiesNextPosZArray[omCurrentObj->objId] = sp30->unkC;
                var_v0 = omCurrentObj->objId * 4;
            }
            *(gEntitiesNextPosYArray + var_v0) = sp30->unk8;
        }
        func_801051AC(sp30);
        sp38 = gEntitiesNextPosXArray[omCurrentObj->objId];
        sp3C = gEntitiesNextPosYArray[omCurrentObj->objId];
        sp40 = gEntitiesNextPosZArray[omCurrentObj->objId];
        temp_v0_4 = func_8010DF9C(&sp38);
        if (temp_v0_4 != 0) {
            if (temp_v0_4 != 1) {
                if (temp_v0_4 != 2) {
                    if (temp_v0_4 == 3) {
                        if ((*(&D_8012BCE0 + 8))->unk4 != 0) {
                            D_800E8AE0[omCurrentObj->objId] = 1;
                        }
                        goto block_46;
                    }
                    goto block_50;
                }
block_46:
                if ((*(&D_8012BCE0 + 4))->unk4 != 0) {
                    D_800E8AE0[omCurrentObj->objId] = 1;
                }
                goto block_48;
            }
block_48:
            if (D_8012BCE0->unk4 != 0) {
                D_800E8AE0[omCurrentObj->objId] = 1;
            }
        } else {
block_50:
            D_800E8AE0[omCurrentObj->objId] = 0;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2558_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A2ADC_ovl7(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    u32 temp_v1;
    void *ent = D_800E1B50[omCurrentObj->objId];
    temp_a1 = ->unk84;

    if (temp_a1 != NULL) {
        temp_a1->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        temp_a1->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        temp_a1->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        temp_a1->unk10 = arg0->unk0;
        temp_a1->unk14 = arg0->unk4;
        temp_a1->unk18 = arg0->unk8;
        temp_a1->unk1C = arg0->unkC;
        temp_a1->unk20 = arg0->unk10;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            temp_f0 = temp_a1->unk1C;
            if (temp_f0 < 0.0f) {
                temp_a1->unk1C = -temp_f0;
            } else {
                temp_a1->unk1C = temp_f0;
            }
            temp_f0_2 = temp_a1->unk20;
            if (temp_f0_2 < 0.0f) {
                temp_a1->unk20 = --temp_f0_2;
            } else {
                temp_a1->unk20 = -temp_f0_2;
            }
        } else {
            temp_f0_3 = temp_a1->unk1C;
            if (temp_f0_3 < 0.0f) {
                temp_a1->unk1C = --temp_f0_3;
            } else {
                temp_a1->unk1C = -temp_f0_3;
            }
            temp_f0_4 = temp_a1->unk20;
            if (temp_f0_4 < 0.0f) {
                temp_a1->unk20 = -temp_f0_4;
            } else {
                temp_a1->unk20 = temp_f0_4;
            }
        }
        temp_a1->unk24 = D_800E17D0[omCurrentObj->objId];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2ADC_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801A2C78_ovl7(f32 arg0) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp44;
    ? sp38;
    s32 sp28;
    GObj *temp_v1;
    f32 temp_f0;
    f32 temp_f2;
    s32 temp_t6;
    s32 var_a0;
    u32 temp_a0;
    u32 temp_a3;

    temp_a0 = omCurrentObj->objId;
    sp5C = gEntitiesNextPosXArray[temp_a0];
    sp60 = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
    sp64 = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp50 = gEntitiesPosXArray[omCurrentObj->objId];
    sp54 = gEntitiesPosYArray[omCurrentObj->objId] + arg0;
    sp58 = gEntitiesPosZArray[omCurrentObj->objId];
    temp_t6 = (*(&D_800E1B50 + (temp_a0 * 4)))->unk74;
    sp28 = temp_t6;
    if (temp_t6 == 0) {
        return 0;
    }
    if (func_8010E048(sp28, 0x14, &sp50, &sp5C, &sp38, &sp44) == 0) {
        return 0;
    }
    temp_v1 = omCurrentObj;
    temp_a3 = temp_v1->objId;
    var_a0 = temp_a3 * 4;
    if ((D_800E8E60[temp_a3] != 1) && ((temp_f0 = sp44 - gEntitiesNextPosXArray[temp_a3], temp_f2 = sp4C - gEntitiesNextPosZArray[temp_a3], (temp_f0 != 0.0f)) || (temp_f2 != 0.0f))) {
        func_800F8728(arg0, 0, temp_a3, temp_f0, temp_f2, temp_a3);
        var_a0 = omCurrentObj->objId * 4;
    }
    *(gEntitiesNextPosXArray + var_a0) = sp44;
    gEntitiesNextPosYArray[temp_v1->objId] = sp48 - arg0;
    gEntitiesNextPosZArray[temp_v1->objId] = sp4C;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2C78_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A2E64_ovl7(s32 arg0) {
    f32 *temp_a1;
    s32 *temp_a0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;

    if (func_801A2C78_ovl7((*(&D_800E1B50 + (omCurrentObj->objId * 4)))->unk84->unk18) != 0) {
        temp_a0 = &D_800E8AE0[omCurrentObj->objId];
        *temp_a0 &= ~1;
        D_800E8920[omCurrentObj->objId] = 0;
        temp_a1 = &gEntitiesNextPosYArray[omCurrentObj->objId];
        *temp_a1 += 0.1f;
        temp_v0 = omCurrentObj->objId;
        if ((gEntitiesNextPosYArray[temp_v0] < gEntitiesPosYArray[temp_v0]) && (D_800E8AE0[temp_v0] & 2) && ((D_8012BCA0 >> 0x13) & 0x1C0)) {
            D_800E5F90[temp_v0] = D_800E6150[temp_v0];
            temp_v0_2 = omCurrentObj->objId;
            D_800E6BD0[temp_v0_2] = D_800E6D90[temp_v0_2];
            temp_v0_3 = omCurrentObj->objId;
            gEntitiesNextPosXArray[temp_v0_3] = gEntitiesPosXArray[temp_v0_3];
            temp_v0_4 = omCurrentObj->objId;
            gEntitiesNextPosYArray[temp_v0_4] = gEntitiesPosYArray[temp_v0_4];
            temp_v0_5 = omCurrentObj->objId;
            gEntitiesNextPosZArray[temp_v0_5] = gEntitiesPosZArray[temp_v0_5];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2E64_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3000_ovl7(s32 arg0) {
    f32 *temp_a1;
    s32 *temp_a0;
    u32 temp_v0;
    u32 temp_v0_2;
    u32 temp_v0_3;
    u32 temp_v0_4;
    u32 temp_v0_5;

    if (func_801A2C78_ovl7((*(&D_800E1B50 + (omCurrentObj->objId * 4)))->unk84->unk14) != 0) {
        temp_a0 = &D_800E8AE0[omCurrentObj->objId];
        *temp_a0 |= 1;
        D_800E8920[omCurrentObj->objId] = 0;
        temp_a1 = &gEntitiesNextPosYArray[omCurrentObj->objId];
        *temp_a1 -= 0.1f;
        temp_v0 = omCurrentObj->objId;
        if ((gEntitiesPosYArray[temp_v0] < gEntitiesNextPosYArray[temp_v0]) && (D_800E8AE0[temp_v0] & 2) && ((D_8012BCA0 >> 0x13) & 0xE00)) {
            D_800E5F90[temp_v0] = D_800E6150[temp_v0];
            temp_v0_2 = omCurrentObj->objId;
            D_800E6BD0[temp_v0_2] = D_800E6D90[temp_v0_2];
            temp_v0_3 = omCurrentObj->objId;
            gEntitiesNextPosXArray[temp_v0_3] = gEntitiesPosXArray[temp_v0_3];
            temp_v0_4 = omCurrentObj->objId;
            gEntitiesNextPosYArray[temp_v0_4] = gEntitiesPosYArray[temp_v0_4];
            temp_v0_5 = omCurrentObj->objId;
            gEntitiesNextPosZArray[temp_v0_5] = gEntitiesPosZArray[temp_v0_5];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3000_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3198_ovl7(void) {
    f32 *temp_v0_2;
    f32 var_f6;
    u16 temp_a2;
    u16 temp_t7;
    u32 temp_a0;
    void *temp_a1;
    void *temp_v0;

    temp_a0 = omCurrentObj->objId;
    temp_v0 = *(&D_800E1B50 + (temp_a0 * 4));
    if ((D_800E8920[temp_a0] == 1) && (temp_a1 = temp_v0->unk7C, (temp_a1 != NULL)) && ((temp_a2 = temp_a1->unk12, (temp_a2 == 0x13)) || (temp_a2 == 0x12))) {
        temp_t7 = temp_a1->unk10;
        var_f6 = temp_t7;
        if (temp_t7 < 0) {
            var_f6 += 4294967296.0f;
        }
        D_800E5510[temp_a0] = var_f6 * 0.1f;
        if (temp_v0->unk7C->unk12 == 0x12) {
            temp_v0_2 = &D_800E5510[omCurrentObj->objId];
            *temp_v0_2 *= -1.0f;
        }
    } else {
        D_800E5510[temp_a0] = 0.0f;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3198_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3280_ovl7(void) {
    func_801A32A8_ovl7(omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3280_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A32A8_ovl7(s32 arg0) {
    void *sp1C;
    s32 temp_a1;
    void *temp_v0;

    temp_v0 = *(&D_800E1B50 + (arg0 * 4));
    temp_a1 = temp_v0->unk84;
    if (temp_a1 != 0) {
        sp1C = temp_v0;
        func_8010DC8C(temp_a1, temp_a1);
        temp_v0->unk84 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A32A8_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A32EC_ovl7(void *arg0) {
    D_801CE6D0_ovl7.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_801CE6E0_ovl7.unk0 = arg0->unk0;
    D_801CE6E0_ovl7.unk4 = arg0->unk4;
    D_801CE6E0_ovl7.unk8 = arg0->unk8;
    D_801CE6E0_ovl7.unkC = arg0->unkC;
    D_801CE6E0_ovl7.unk10 = arg0->unk10;
    D_801CE6D0_ovl7.unk24 = D_800E17D0[omCurrentObj->objId];
    func_80105180(&D_801CE6D0_ovl7, arg0);
    func_801051AC(&D_801CE6D0_ovl7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A32EC_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A33B8_ovl7(void *arg0) {
    f32 temp_f0;
    f32 temp_f2;
    s32 *var_at;
    s32 var_v0;
    s32 var_v0_2;
    u32 temp_a0;

    D_801CE6D0_ovl7.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_801CE6E0_ovl7.unk0 = arg0->unk0;
    D_801CE6E0_ovl7.unk4 = arg0->unk4;
    D_801CE6E0_ovl7.unk8 = arg0->unk8;
    D_801CE6E0_ovl7.unkC = arg0->unkC;
    D_801CE6E0_ovl7.unk10 = arg0->unk10;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        D_801CE6D0_ovl7.unk1C = arg0->unkC;
    } else {
        D_801CE6D0_ovl7.unk1C = arg0->unk10;
    }
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        D_801CE6D0_ovl7.unk20 = arg0->unk10;
    } else {
        D_801CE6D0_ovl7.unk20 = arg0->unkC;
    }
    D_801CE6D0_ovl7.unk24 = D_800E17D0[omCurrentObj->objId];
    if (D_800E8920[omCurrentObj->objId] == 0) {
        var_v0 = func_80109F60(&D_801CE6D0_ovl7);
        var_at = &D_800E8920[omCurrentObj->objId];
    } else {
        var_v0 = func_8010B238(&D_801CE6D0_ovl7);
        var_at = &D_800E8920[omCurrentObj->objId];
    }
    *var_at = var_v0;
    temp_a0 = omCurrentObj->objId;
    var_v0_2 = temp_a0 * 4;
    temp_f0 = D_801CE6D0_ovl7.unk4 - gEntitiesNextPosXArray[temp_a0];
    temp_f2 = D_801CE6D0_ovl7.unkC - gEntitiesNextPosZArray[temp_a0];
    if ((temp_f0 != 0.0f) || (temp_f2 != 0.0f)) {
        func_800F8728(0, temp_a0, temp_f0, temp_f2);
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.unk4;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.unkC;
        var_v0_2 = omCurrentObj->objId * 4;
    }
    *(gEntitiesNextPosYArray + var_v0_2) = D_801CE6D0_ovl7.unk8;
    func_80105238(&D_801CE6D0_ovl7, &D_8012BCA0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A33B8_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A3618_ovl7(void *arg0) {
    arg0->unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->unkC = gEntitiesPosXArray[omCurrentObj->objId];
    arg0->unk10 = gEntitiesPosYArray[omCurrentObj->objId];
    arg0->unk14 = gEntitiesPosZArray[omCurrentObj->objId];
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3618_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A36CC(s32 arg0) {
    ? *sp1C;
    ? *var_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_a2 = (temp_v0 << 5) - 0x1C0 + &D_801D0450_ovl7;
    if (temp_v0 == 0) {
        var_a2 = &D_801CE730_ovl7;
    }
    sp1C = var_a2;
    func_801A3618_ovl7(var_a2, var_a2);
    sp1C->unk18 = D_800E17D0[omCurrentObj->objId];
    func_8011BF4C(sp1C, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A36CC.s")
#endif

#ifdef MIPS_TO_C

void func_801A374C_ovl7(s32 arg0) {
    ? *sp1C;
    ? *var_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_a2 = (temp_v0 << 5) - 0x1C0 + &D_801D0450_ovl7;
    if (temp_v0 == 0) {
        var_a2 = &D_801CE730_ovl7;
    }
    sp1C = var_a2;
    func_801A3618_ovl7(var_a2, var_a2);
    sp1C->unk18 = *D_800E17D0;
    func_8011BF4C(sp1C, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A374C_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A37B8_ovl7(s32 arg0, s32 arg1) {
    ? *sp2C;
    ? sp20;
    ? *var_a2;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_a2 = (temp_v0 << 5) - 0x1C0 + &D_801D0450_ovl7;
    if (temp_v0 == 0) {
        var_a2 = &D_801CE730_ovl7;
    }
    sp2C = var_a2;
    func_801A3618_ovl7(var_a2, var_a2);
    func_800A4794(&sp20, arg1);
    sp2C->unk0 = sp20.unk0;
    sp2C->unk4 = sp20.unk4;
    sp2C->unk8 = sp20.unk8;
    sp2C->unk18 = D_800E17D0[omCurrentObj->objId];
    func_8011BF4C(sp2C, arg0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A37B8_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801A3864_ovl7(void) {
    void *sp24;
    s32 sp18;
    void *temp_v0;

    temp_v0 = func_8011BABC();
    sp24 = temp_v0;
    temp_v0->unk54 = 2;
    play_sound(0xA);
    func_800A4794(&sp18, sp24);
    func_800FD754(0, sp18, sp1C, sp20);
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3864_ovl7.s")
#endif

#ifdef MIPS_TO_C

s32 func_801A38BC_ovl7(void *arg0) {
    void *sp44;
    ? sp2C;
    ? sp20;
    void *temp_v0;

    temp_v0 = func_8011BABC();
    sp44 = temp_v0;
    temp_v0->unk54 = 2;
    if (arg0->unk10 == 0) {
        play_sound(0xA);
        func_800A4794(&sp2C, sp44);
        func_800A4DB8(&sp20, sp44);
        func_800A802C(0, 3, 0x36, &sp2C, &sp20);
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A38BC_ovl7.s")
#endif

#ifdef MIPS_TO_C
void func_801A3938(s32 arg0) {
    ? *var_v0;
    u32 temp_v1;

    temp_v1 = omCurrentObj->objId;
    var_v0 = (temp_v1 << 5) - 0x1C0 + &D_801D0450_ovl7;
    if (temp_v1 == 0) {
        var_v0 = &D_801CE730_ovl7;
    }
    if (arg0 != 0) {
        var_v0->unk1C = arg0;
        return;
    }
    var_v0->unk1C = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3938.s")
#endif

#ifdef MIPS_TO_C

void func_801A3980_ovl7(s32 arg0) {
    void *sp1C;
    u32 temp_a1;
    void *temp_v1;

    temp_a1 = omCurrentObj->objId;
    temp_v1 = *(&D_800E1B50 + (temp_a1 * 4));
    sp1C = temp_v1;
    func_800B1BF0(0, temp_a1);
    gEntitiesNextPosXArray[omCurrentObj->objId] = temp_v1->unk4C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = temp_v1->unk50;
    gEntitiesNextPosZArray[omCurrentObj->objId] = temp_v1->unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3980_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3A14_ovl7(s32 arg0) {
    void *temp_a1;
    void *temp_v0;

    temp_v0 = *(&D_800E1B50 + (omCurrentObj->objId * 4));
    temp_a1 = (((0xF - temp_v0->unk3D) & 0xFF) * 0xC) + &D_801C28B0_ovl7;
    temp_v0->unk58 = temp_a1->unkC;
    temp_v0->unk5C = temp_a1->unk10;
    temp_v0->unk60 = temp_a1->unk14;
    gEntitiesNextPosXArray[omCurrentObj->objId] = temp_v0->unk58 + temp_v0->unk4C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = temp_v0->unk5C + temp_v0->unk50;
    gEntitiesNextPosZArray[omCurrentObj->objId] = temp_v0->unk60 + temp_v0->unk54;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3A14_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3AE0_ovl7(void) {
    u8 temp_t0;
    void *temp_v0;

    temp_v0 = *(&D_800E1B50 + (omCurrentObj->objId * 4));
    temp_t0 = temp_v0->unk3D - 1;
    temp_v0->unk3D = temp_t0;
    if (!(temp_t0 & 0xFF)) {
        func_801A3980_ovl7();
        return;
    }
    func_801A3A14_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3AE0_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3B40_ovl7(void) {
    u16 temp_v1;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    if ((D_800E7730[temp_v0] == 0) && ((temp_v1 = D_800E77A0[temp_v0], ((temp_v1 < 0x4E) != 0)) || (temp_v1 >= 0x5D))) {
        play_sound(0x157);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3B40_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3BA4_ovl7(void) {
    u32 temp_v1;
    void *temp_v0;

    temp_v1 = omCurrentObj->objId;
    temp_v0 = *(&D_800E1B50 + (temp_v1 * 4));
    if (D_800E83E0[temp_v1] == 2) {
        temp_v0->unk3D = 0xF;
    } else {
        temp_v0->unk3D = 0xF;
    }
    temp_v0->unk6C = D_800E83E0[omCurrentObj->objId];
    temp_v0->unk30 = D_800E83E0[omCurrentObj->objId];
    temp_v0->unk4C = gEntitiesNextPosXArray[omCurrentObj->objId];
    temp_v0->unk50 = gEntitiesNextPosYArray[omCurrentObj->objId];
    temp_v0->unk54 = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_801A3B40_ovl7(D_800E83E0, &omCurrentObj);
    func_800B19F4(0x3E, omCurrentObj->objId, &omCurrentObj);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3BA4_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3CA8_ovl7(void) {
    s32 var_a0;
    u32 temp_v1;
    u8 temp_v0;

    temp_v1 = omCurrentObj->objId;
    temp_v0 = D_800E7730[temp_v1];
    switch (temp_v0) {                              /* irregular */
        default:
            var_a0 = 0;
            break;
        case 0:
            var_a0 = *(&D_801C2E84_ovl7 + (D_800E77A0[temp_v1] * 4));
            break;
        case 1:
            var_a0 = *(&D_801F33FC + (D_800E77A0[temp_v1] * 4));
            break;
        case 2:
            var_a0 = *(&D_801D789C + (D_800E77A0[temp_v1] * 4));
            break;
    }
    if (var_a0 != 0) {
        func_800A9760(var_a0);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3CA8_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3D6C_ovl7(void) {
    s32 temp_a0;
    void *temp_s0;
    void *temp_v0;

    temp_s0 = *(&D_800E1B50 + (omCurrentObj->objId * 4));
    func_801A3CA8_ovl7();
    temp_v0 = temp_s0->unk94;
    if (temp_v0->unk0 != -1) {
        func_800AECC0(temp_v0->unk8);
        func_800AED20(temp_s0->unk94->unk8);
        func_800AA018(temp_s0->unk94->unk0);
        temp_a0 = temp_s0->unk94->unk4;
        if (temp_a0 != -1) {
            func_800AA018(temp_a0);
        }
    } else {
        func_800AF408();
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3D6C_ovl7.s")
#endif

#ifdef MIPS_TO_C

void func_801A3E0C_ovl7(void) {
    u8 temp_t0;
    void *temp_v0;

    temp_v0 = *(&D_800E1B50 + (omCurrentObj->objId * 4));
    temp_t0 = temp_v0->unk3D - 1;
    temp_v0->unk3D = temp_t0;
    if (!(temp_t0 & 0xFF)) {
        func_801A3980_ovl7();
        return;
    }
    animUpdateModelTreeAnimation();
    func_8019F3B0_ovl7();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3E0C_ovl7.s")
#endif

