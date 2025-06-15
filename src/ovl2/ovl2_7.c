#include "common.h"
#include "ovl2/ovl2_6.h"

extern struct CollisionState *gCollisionState;

#ifdef MIPS_TO_C
void func_80101400(u16 arg0) {
    u16 spB0[];
    s32 spAC;
    f32 spA0;
    f32 sp94;
    struct vCollisionHeader *sp90;
    struct bgmaprecord *sp8C;
    struct Normal *sp88;
    f32 sp78;
    s32 sp70;
    s32 sp6C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f20;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 var_f0;
    f32 var_f2;
    f32 var_f2_2;
    s32 var_a1_2;
    s32 var_a3_2;
    s32 var_t0;
    s32 var_v0;
    s32 var_v1_2;
    struct ColStateUnk4 *temp_v0_4;
    struct CollisionState *var_a2;
    struct Normal *temp_a0;
    struct Normal *temp_v0_2;
    struct Normal *var_a3;
    struct Normal *var_v1;
    struct bgmaprecord *temp_t2;
    struct bgmaprecord *var_a1;
    struct vCollisionHeader *var_t1;
    u16 temp_a0_2;
    u16 temp_v0;
    u16 var_a0;
    u16 var_s0;
    u16 var_v0_2;
    u8 temp_v0_3;

    var_a2 = gCollisionState;
    spA0.unk0 = var_a2->currPos.x;
    var_s0 = arg0;
    spA0.unk4 = var_a2->currPos.y;
    var_t0 = 0;
    spA0.unk8 = var_a2->currPos.z;
    sp94.unk0 = var_a2->nextPos.x;
    sp94.unk4 = var_a2->nextPos.y;
    sp94.unk8 = var_a2->nextPos.z;
    var_t1 = var_a2->unk30;
    var_v1 = var_a2->unk34;
    var_a1 = var_t1->header.Triangle_Norm_Cells;
    var_a3 = var_t1->header.Triangle_Normals;
loop_1:
    temp_t2 = &var_a1[var_s0];
    temp_a0 = &var_a3[temp_t2->index];
    if ((var_v1 == temp_a0) || ((var_v1 != NULL) && (((temp_f2 = temp_a0->x, temp_f0 = var_v1->x, (temp_f2 == temp_f0)) && (temp_a0->y == var_v1->y) && (temp_a0->z == var_v1->z) && (temp_a0->originOffset == var_v1->originOffset)) || ((-temp_a0->originOffset == var_v1->originOffset) && (((temp_f0 * temp_f2) + (var_v1->y * temp_a0->y) + (var_v1->z * temp_a0->z)) == -1.0f))))) {
        temp_a0_2 = temp_t2->part1;
        temp_v0 = temp_t2->part2;
        if (temp_a0_2 != 0) {
            if (temp_v0 != 0) {
                (*spB0)[var_t0] = temp_v0;
                var_v1 = var_a2->unk34;
                var_a3 = var_t1->header.Triangle_Normals;
                var_a1 = var_t1->header.Triangle_Norm_Cells;
                var_t0 += 1;
            }
            var_s0 = temp_a0_2;
            goto loop_1;
        }
        if (temp_v0 != 0) {
            var_s0 = temp_v0;
            goto loop_1;
        }
    } else {
        temp_f2_2 = temp_a0->x;
        temp_f12 = temp_a0->y;
        temp_f14 = temp_a0->z;
        temp_f16 = temp_a0->originOffset;
        var_a1_2 = 0;
        var_a3_2 = 0;
        var_v1_2 = 0;
        var_v0 = 0;
        temp_f18 = (temp_f2_2 * spA0) + (temp_f12 * spA4) + (temp_f14 * spA8) + temp_f16;
        temp_f20 = (temp_f2_2 * sp94) + (temp_f12 * sp98) + (temp_f14 * sp9C) + temp_f16;
        if (temp_f18 > 0.0f) {
            var_a1_2 = 1;
        }
        if (temp_f20 > 0.0f) {
            var_a3_2 = 1;
        }
        if (temp_f18 != 0.0f) {
            var_v1_2 = 1;
        }
        if (temp_f20 != 0.0f) {
            var_v0 = 1;
        }
        if ((var_a1_2 != var_a3_2) || (var_v1_2 != var_v0)) {
            temp_v0_2 = var_a2->unk38;
            if ((temp_v0_2 != temp_a0) && ((temp_v0_2 == NULL) || (((temp_f0_2 = temp_v0_2->x, (temp_f2_2 != temp_f0_2)) || (temp_f12 != temp_v0_2->y) || (temp_f14 != temp_v0_2->z) || (temp_f16 != temp_v0_2->originOffset)) && ((-temp_f16 != temp_v0_2->originOffset) || (((temp_f0_2 * temp_f2_2) + (temp_v0_2->y * temp_f12) + (temp_v0_2->z * temp_f14)) != -1.0f))))) {
                sp88 = temp_a0;
                sp70 = var_a1_2;
                sp6C = var_a3_2;
                spAC = var_t0;
                sp90 = var_t1;
                sp8C = temp_t2;
                sp78 = temp_f18;
                temp_v0_3 = var_a2->unk44(temp_a0, var_a1_2);
                if (temp_v0_3 != 0) {
                    temp_v0_4 = &gCollisionState->unk4[gCollisionState->numCells];
                    temp_f0_3 = (temp_a0->x * gCollisionState->deltaPos.x) + (temp_a0->y * gCollisionState->deltaPos.y) + (temp_a0->z * gCollisionState->deltaPos.z);
                    if (temp_f0_3 < 0.0f) {
                        var_f2 = -temp_f0_3;
                    } else {
                        var_f2 = temp_f0_3;
                    }
                    if (var_f2 < 0.00001f) {
                        if (temp_f18 < 0.0f) {
                            var_f0 = -temp_f18;
                        } else {
                            var_f0 = temp_f18;
                        }
                        if (temp_f20 < 0.0f) {
                            var_f2_2 = -temp_f20;
                        } else {
                            var_f2_2 = temp_f20;
                        }
                        if (var_f0 < var_f2_2) {
                            temp_v0_4->projection = 0.0f;
                        } else {
                            temp_v0_4->projection = 1.0f;
                        }
                    } else {
                        temp_v0_4->projection = -(temp_f18 / temp_f0_3);
                    }
                    temp_v0_4->cell = var_s0;
                    gCollisionState->numCells += 1;
                }
            }
        }
        if ((var_a1_2 != 0) || (var_a0 = 0, (var_a3_2 != 0))) {
            var_a0 = temp_t2->part1;
        }
        var_s0 = var_a0;
        if ((var_a1_2 == 0) || (var_v0_2 = 0, (var_a3_2 == 0))) {
            var_v0_2 = temp_t2->part2;
        }
        if (var_a0 != 0) {
            var_a2 = gCollisionState;
            if (var_v0_2 != 0) {
                (*spB0)[var_t0] = var_v0_2;
                var_t0 += 1;
            }
            var_a1 = var_t1->header.Triangle_Norm_Cells;
            var_a3 = var_t1->header.Triangle_Normals;
            var_v1 = var_a2->unk34;
            goto loop_1;
        }
        var_s0 = var_v0_2;
        if (var_v0_2 != 0) {
            var_a2 = gCollisionState;
            var_a1 = var_t1->header.Triangle_Norm_Cells;
            var_a3 = var_t1->header.Triangle_Normals;
            var_v1 = var_a2->unk34;
            goto loop_1;
        }
    }
    if (var_t0 != 0) {
        var_a2 = gCollisionState;
        var_s0 = (*spB0)[var_t0].unk-2;
        var_t0 -= 1;
        var_a1 = var_t1->header.Triangle_Norm_Cells;
        var_a3 = var_t1->header.Triangle_Normals;
        var_v1 = var_a2->unk34;
        goto loop_1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101400.s")
#endif

#ifdef MIPS_TO_C

s32 func_80101920(void *arg0, void *arg1, void *arg2, void *arg3) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 temp_v0_2;
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if (!(temp_v0 & 8)) {
        if ((temp_v0 & 4) && ((D_8012BD00 >> 0x1F) == 0)) {
            return 0;
        }
        temp_v0_2 = temp_v0 & 3;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 == 3) {
                if ((arg3 != NULL) && (arg2 != NULL)) {
                    temp_f0 = arg1->unk0;
                    temp_f2 = arg1->unk4;
                    temp_f12 = arg1->unk8;
                    if (((temp_f0 * arg3->unk0) + (temp_f2 * arg3->unk4) + (temp_f12 * arg3->unk8)) > 0.0f) {
                        if (((-temp_f0 * arg2->unk0) + (-temp_f2 * arg2->unk4) + (-temp_f12 * arg2->unk8)) > 0.0f) {
                            return 0;
                        }
                        /* Duplicate return node #13. Try simplifying control flow for better match */
                        return 1;
                    }
                    if (((temp_f0 * arg2->unk0) + (temp_f2 * arg2->unk4) + (temp_f12 * arg2->unk8)) > 0.0f) {
                        return 0;
                    }
                    /* Duplicate return node #13. Try simplifying control flow for better match */
                    return 1;
                }
                return 1;
            }
            if (temp_v0_2 & 1) {
                if (((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) || ((arg3 != NULL) && (((arg1->unk0 * arg3->unk0) + (arg1->unk4 * arg3->unk4) + (arg1->unk8 * arg3->unk8)) > 0.0f))) {
                    return 0;
                }
                /* Duplicate return node #25. Try simplifying control flow for better match */
                return 1;
            }
            if (((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) || ((arg3 != NULL) && (((-arg1->unk0 * arg3->unk0) + (-arg1->unk4 * arg3->unk4) + (-arg1->unk8 * arg3->unk8)) > 0.0f))) {
                return 0;
            }
            return 1;
        }
        /* Duplicate return node #26. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101920.s")
#endif

#ifdef MIPS_TO_C

s32 func_80101BA0(void *arg0, void *arg1, void *arg2, void *arg3) {
    s32 temp_v0_2;
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if (!(temp_v0 & 8)) {
        if ((temp_v0 & 4) && ((D_8012BD00 >> 0x1F) == 0)) {
            return 0;
        }
        temp_v0_2 = temp_v0 & 3;
        if (temp_v0_2 != 0) {
            if (temp_v0_2 == 3) {
                return 0;
            }
            if (temp_v0_2 & 1) {
                if (((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) || ((arg3 != NULL) && (((arg1->unk0 * arg3->unk0) + (arg1->unk4 * arg3->unk4) + (arg1->unk8 * arg3->unk8)) > 0.0f))) {
                    return 0;
                }
                /* Duplicate return node #18. Try simplifying control flow for better match */
                return 1;
            }
            if (((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) || ((arg3 != NULL) && (((-arg1->unk0 * arg3->unk0) + (-arg1->unk4 * arg3->unk4) + (-arg1->unk8 * arg3->unk8)) > 0.0f))) {
                return 0;
            }
            return 1;
        }
        /* Duplicate return node #19. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101BA0.s")
#endif

#ifdef MIPS_TO_C

s32 func_80101D50(void *arg0, ? arg1, ? arg2, ? arg3) {
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if (!(temp_v0 & 8) && (temp_v0 & 3)) {
        if ((temp_v0 & 4) && ((D_8012BD00 >> 0x1F) == 0)) {
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101D50.s")
#endif

#ifdef MIPS_TO_C

s32 func_80101DA8(void *arg0, ? arg1, ? arg2, ? arg3) {
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if (!(temp_v0 & 8)) {
        if (temp_v0 & 3) {
            if ((temp_v0 & 4) && ((D_8012BD00 >> 0x1F) == 0)) {
                return 0;
            }
            return 1;
        }
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 0;
    }
    if (arg0->unk12 == 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101DA8.s")
#endif

#ifdef MIPS_TO_C

void func_80101E14(void *arg1) {
    f32 sp20;
    f32 sp1C;
    f32 sp18;

    sp18 = -arg1->unk0;
    sp1C = -arg1->unk4;
    sp20 = -arg1->unk8;
    func_80101920(&sp18);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101E14.s")
#endif

#ifdef MIPS_TO_C
s32 func_80101E5C(void *arg0, void *arg1, void *arg2, ? arg3) {
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if ((temp_v0 & 8) && (arg0->unk12 == 0xC)) {
        if (temp_v0 & 1) {
            if ((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) {
                return 0;
            }
            /* Duplicate return node #9. Try simplifying control flow for better match */
            return 1;
        }
        if ((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) {
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101E5C.s")
#endif

#ifdef MIPS_TO_C
s32 func_80101F4C(void *arg0, void *arg1, void *arg2, ? arg3) {
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if ((temp_v0 & 8) && (arg0->unk12 == 3)) {
        if (temp_v0 & 1) {
            if ((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) {
                return 0;
            }
            /* Duplicate return node #9. Try simplifying control flow for better match */
            return 1;
        }
        if ((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) {
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80101F4C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010203C(void *arg0, void *arg1, void *arg2, ? arg3) {
    s32 sp24;
    u16 temp_a0;
    u16 temp_v1;

    temp_v1 = arg0->unk8;
    if (temp_v1 & 3) {
        temp_a0 = gCollisionState->unk4A;
        if (temp_a0 == arg0->unk12) {
            sp24 = temp_v1;
            if (func_8011BED0(temp_a0, arg0->unk10, gCollisionState->unk4C, arg2) != 0) {
                if (temp_v1 & 1) {
                    if ((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) {
                        goto block_11;
                    }
                    goto block_10;
                }
                if ((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) {
                    goto block_11;
                }
block_10:
                return 1;
            }
        }
    }
block_11:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010203C.s")
#endif

#ifdef MIPS_TO_C
s32 func_8010217C(void *arg0, ? arg1, ? arg2, ? arg3) {
    if ((arg0->unk12 == 1) && (arg0->unk8 & 3)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010217C.s")
#endif

#ifdef MIPS_TO_C
s32 func_801021BC(void *arg0, ? arg1, ? arg2, ? arg3) {
    if ((arg0->unk12 == 2) && (arg0->unk8 & 3)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801021BC.s")
#endif

#ifdef MIPS_TO_C

void func_801021FC(void) {
    func_80101D50();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801021FC.s")
#endif

#ifdef MIPS_TO_C
s32 func_8010221C(void *arg0, void *arg1, void *arg2, ? arg3) {
    u16 temp_v0;

    temp_v0 = arg0->unk8;
    if ((temp_v0 & 8) && (gCollisionState->unk48 == arg0->unkE) && (gCollisionState->unk4A == arg0->unk12)) {
        if (temp_v0 & 1) {
            if ((arg2 != NULL) && (((arg1->unk0 * arg2->unk0) + (arg1->unk4 * arg2->unk4) + (arg1->unk8 * arg2->unk8)) > 0.0f)) {
                return 0;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            return 1;
        }
        if ((arg2 != NULL) && (((-arg1->unk0 * arg2->unk0) + (-arg1->unk4 * arg2->unk4) + (-arg1->unk8 * arg2->unk8)) > 0.0f)) {
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010221C.s")
#endif

#ifdef MIPS_TO_C
s32 func_80102324(void *arg0, ? arg1, ? arg2, ? arg3) {
    if ((arg0->unk12 == 4) && (arg0->unk8 & 3)) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80102324.s")
#endif

#ifdef MIPS_TO_C
s32 func_80102364(void *arg0, s32 arg1) {
    f32 temp_f0;
    f32 var_f2;
    struct Normal *temp_v0;

    temp_f0 = arg0->unk4;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (!(var_f2 <= 0.5f)) {
        temp_v0 = gCollisionState->someNormal;
        if (temp_v0 != NULL) {
            if ((temp_v0->y * temp_f0) > 0.0f) {
                if (arg1 == 0) {
                    return 1;
                }
                /* Duplicate return node #11. Try simplifying control flow for better match */
                return 0;
            }
            if (arg1 != 0) {
                return 1;
            }
            /* Duplicate return node #11. Try simplifying control flow for better match */
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80102364.s")
#endif

#ifdef MIPS_TO_C
s32 func_801023FC(void *arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    struct Normal *temp_v0;

    temp_f0 = arg0->unk4;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 <= 0.5f) {
        temp_v0 = gCollisionState->someNormal;
        if (temp_v0 != NULL) {
            temp_f0_2 = (temp_v0->x * arg0->unk0) + (temp_v0->z * arg0->unk8);
            if (temp_f0_2 < 0.0f) {
                var_f2_2 = -temp_f0_2;
            } else {
                var_f2_2 = temp_f0_2;
            }
            if (var_f2_2 < 0.3f) {
                return 0;
            }
            if (temp_f0_2 > 0.0f) {
                if (arg1 == 0) {
                    return 1;
                }
                /* Duplicate return node #16. Try simplifying control flow for better match */
                return 0;
            }
            if (arg1 != 0) {
                return 1;
            }
            /* Duplicate return node #16. Try simplifying control flow for better match */
            return 0;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801023FC.s")
#endif

#ifdef MIPS_TO_C
s32 func_801024E8(void *arg0, s32 arg1) {
    struct Normal *temp_v0;

    temp_v0 = gCollisionState->someNormal;
    if (temp_v0 != NULL) {
        if (((temp_v0->x * arg0->unk0) + (temp_v0->y * arg0->unk4) + (temp_v0->z * arg0->unk8)) > 0.0f) {
            if (arg1 == 0) {
                return 1;
            }
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return 0;
        }
        if (arg1 != 0) {
            return 1;
        }
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801024E8.s")
#endif

#ifdef MIPS_TO_C
s32 func_80102570(void *arg0, s32 *arg1, void *arg2, s32 arg3, struct CollisionTriangle **arg4) {
    struct CollisionTriangle *sp64;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f16_3;
    f32 temp_f18;
    f32 temp_f18_2;
    f32 temp_f18_3;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f28;
    f32 temp_f28_2;
    f32 temp_f28_3;
    f32 temp_f28_4;
    f32 temp_f28_5;
    f32 temp_f28_6;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f30;
    f32 temp_f30_2;
    f32 temp_f30_3;
    f32 var_f10;
    f32 var_f10_2;
    f32 var_f12;
    f32 var_f14;
    f32 var_f20;
    f32 var_f20_2;
    f32 var_f22;
    f32 var_f22_2;
    f32 var_f2;
    f32 var_f8;
    f32 var_f8_2;
    s16 *temp_v0;
    s16 *temp_v0_2;
    s16 *temp_v0_3;
    s16 temp_a0_2;
    s16 temp_a0_4;
    s16 temp_a0_6;
    s16 temp_a1_2;
    s16 temp_a1_4;
    s16 temp_a1_6;
    s16 temp_t1;
    s16 temp_t1_2;
    s16 temp_t1_3;
    s16 temp_t2;
    s16 temp_t2_2;
    s16 temp_t2_3;
    s16 temp_t3;
    s16 temp_t3_2;
    s16 temp_t3_3;
    s16 temp_t4;
    s16 temp_t4_2;
    s16 temp_t4_3;
    s32 var_s4;
    s32 var_s4_2;
    s32 var_s4_3;
    s32 var_s7;
    struct CollisionTriangle *temp_s5;
    struct CollisionTriangle *temp_t6;
    struct CollisionTriangle *temp_t6_2;
    struct vCollisionHeader *temp_s3;
    u16 *var_s2;
    u16 *var_s2_2;
    u16 *var_s2_3;
    u16 temp_t5;
    u16 temp_t5_2;
    u16 temp_t5_3;
    void *temp_a0;
    void *temp_a0_3;
    void *temp_a0_5;
    void *temp_a1;
    void *temp_a1_3;
    void *temp_a1_5;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a2_5;
    void *temp_a2_6;
    void *temp_a3;
    void *temp_a3_2;
    void *temp_a3_3;
    void *temp_t0;
    void *temp_t0_2;
    void *temp_t0_3;

    temp_f0 = arg0->unk0;
    var_s7 = *arg1;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    temp_f0_2 = arg0->unk4;
    if (temp_f0_2 < 0.0f) {
        var_f12 = -temp_f0_2;
    } else {
        var_f12 = temp_f0_2;
    }
    temp_f0_3 = arg0->unk8;
    if (temp_f0_3 < 0.0f) {
        var_f14 = -temp_f0_3;
    } else {
        var_f14 = temp_f0_3;
    }
    temp_s3 = gCollisionState->unk30;
    if (var_f12 < var_f2) {
        var_s4 = var_s7 * 2;
        if (var_f14 < var_f2) {
            var_s2 = &temp_s3->header.Triangle_Cells[var_s7];
loop_12:
            temp_t5 = *var_s2;
            var_s2 += 2;
            temp_t6 = &temp_s3->header.Triangles[temp_t5 & 0x7FFF];
            sp64 = temp_t6;
            if (temp_t6 != arg3) {
                temp_v0 = temp_s3->header.vertices.Vertices;
                temp_f2 = arg2->unk8;
                temp_f0_4 = arg2->unk4;
                if (temp_s3->usingFloatVertices != 0) {
                    temp_a0 = temp_v0 + (temp_t6->vertex[0] * 0xC);
                    temp_f12 = temp_a0->unk4;
                    temp_f14 = temp_a0->unk8;
                    temp_a1 = temp_v0 + (temp_t6->vertex[1] * 0xC);
                    temp_f28 = temp_a1->unk4;
                    temp_f30 = temp_a1->unk8;
                    temp_a2 = temp_v0 + (temp_t6->vertex[2] * 0xC);
                    temp_f16 = temp_a2->unk4;
                    temp_f18 = temp_a2->unk8;
                    var_f20 = ((temp_f28 - temp_f12) * (temp_f2 - temp_f14)) - ((temp_f0_4 - temp_f12) * (temp_f30 - temp_f14));
                    var_f22 = ((temp_f16 - temp_f28) * (temp_f2 - temp_f30)) - ((temp_f0_4 - temp_f28) * (temp_f18 - temp_f30));
                    var_f8 = (temp_f12 - temp_f16) * (temp_f2 - temp_f18);
                    var_f10 = (temp_f0_4 - temp_f16) * (temp_f14 - temp_f18);
                } else {
                    temp_a2_2 = temp_v0 + (temp_t6->vertex[0] * 6);
                    temp_t2 = temp_a2_2->unk4;
                    temp_t1 = temp_a2_2->unk2;
                    temp_a3 = temp_v0 + (temp_t6->vertex[1] * 6);
                    temp_a0_2 = temp_a3->unk2;
                    temp_a1_2 = temp_a3->unk4;
                    temp_t0 = temp_v0 + (temp_t6->vertex[2] * 6);
                    temp_t3 = temp_t0->unk2;
                    temp_t4 = temp_t0->unk4;
                    var_f20 = ((temp_a0_2 - temp_t1) * (temp_f2 - temp_t2)) - ((temp_f0_4 - temp_t1) * (temp_a1_2 - temp_t2));
                    var_f22 = ((temp_t3 - temp_a0_2) * (temp_f2 - temp_a1_2)) - ((temp_f0_4 - temp_a0_2) * (temp_t4 - temp_a1_2));
                    var_f8 = (temp_t1 - temp_t3) * (temp_f2 - temp_t4);
                    var_f10 = (temp_f0_4 - temp_t3) * (temp_t2 - temp_t4);
                }
                temp_f28_2 = var_f8 - var_f10;
                if (((var_f20 <= 0.5f) && (var_f22 <= 0.5f) && (temp_f28_2 <= 0.5f)) || ((var_f20 >= -0.5f) && (var_f22 >= -0.5f) && (temp_f28_2 >= -0.5f))) {
                    *arg4 = sp64;
                    if (*(temp_s3->header.Triangle_Cells + var_s4) & 0x8000) {
                        return 0;
                    }
                    *arg1 = var_s7;
                    return 1;
                }
                goto block_25;
            }
block_25:
            var_s7 += 1;
            if (temp_t5 & 0x8000) {
                *arg4 = NULL;
                return 0;
            }
            var_s4 += 2;
            goto loop_12;
        }
    }
    var_s4_2 = var_s7 * 2;
    if (var_f14 < var_f12) {
        var_s4_3 = var_s7 * 2;
        var_s2_2 = &temp_s3->header.Triangle_Cells[var_s7];
loop_30:
        temp_t5_2 = *var_s2_2;
        var_s2_2 += 2;
        temp_s5 = &temp_s3->header.Triangles[temp_t5_2 & 0x7FFF];
        if (temp_s5 != arg3) {
            temp_v0_2 = temp_s3->header.vertices.Vertices;
            temp_f2_2 = arg2->unk8;
            temp_f12_2 = arg2->unk0;
            if (temp_s3->usingFloatVertices != 0) {
                temp_a0_3 = temp_v0_2 + (temp_s5->vertex[0] * 0xC);
                temp_f0_5 = temp_a0_3->unk0;
                temp_f14_2 = temp_a0_3->unk8;
                temp_a1_3 = temp_v0_2 + (temp_s5->vertex[1] * 0xC);
                temp_f28_3 = temp_a1_3->unk0;
                temp_f30_2 = temp_a1_3->unk8;
                temp_a2_3 = temp_v0_2 + (temp_s5->vertex[2] * 0xC);
                temp_f16_2 = temp_a2_3->unk0;
                temp_f18_2 = temp_a2_3->unk8;
                temp_f20 = ((temp_f28_3 - temp_f0_5) * (temp_f2_2 - temp_f14_2)) - ((temp_f12_2 - temp_f0_5) * (temp_f30_2 - temp_f14_2));
                temp_f22 = ((temp_f16_2 - temp_f28_3) * (temp_f2_2 - temp_f30_2)) - ((temp_f12_2 - temp_f28_3) * (temp_f18_2 - temp_f30_2));
                temp_f28_4 = ((temp_f0_5 - temp_f16_2) * (temp_f2_2 - temp_f18_2)) - ((temp_f12_2 - temp_f16_2) * (temp_f14_2 - temp_f18_2));
                if (((temp_f20 <= 0.5f) && (temp_f22 <= 0.5f) && (temp_f28_4 <= 0.5f)) || ((temp_f20 >= -0.5f) && (temp_f22 >= -0.5f) && (temp_f28_4 >= -0.5f))) {
                    *arg4 = temp_s5;
                    if (*(temp_s3->header.Triangle_Cells + var_s4_3) & 0x8000) {
                        return 0;
                    }
                    *arg1 = var_s7;
                    return 1;
                }
                goto block_53;
            }
            temp_a2_4 = temp_v0_2 + (temp_s5->vertex[0] * 6);
            temp_t4_2 = temp_a2_4->unk4;
            temp_t3_2 = temp_a2_4->unk0;
            temp_a3_2 = temp_v0_2 + (temp_s5->vertex[1] * 6);
            temp_a0_4 = temp_a3_2->unk0;
            temp_a1_4 = temp_a3_2->unk4;
            temp_t0_2 = temp_v0_2 + (temp_s5->vertex[2] * 6);
            temp_t1_2 = temp_t0_2->unk0;
            temp_t2_2 = temp_t0_2->unk4;
            temp_f20_2 = ((temp_a0_4 - temp_t3_2) * (temp_f2_2 - temp_t4_2)) - ((temp_f12_2 - temp_t3_2) * (temp_a1_4 - temp_t4_2));
            temp_f22_2 = ((temp_t1_2 - temp_a0_4) * (temp_f2_2 - temp_a1_4)) - ((temp_f12_2 - temp_a0_4) * (temp_t2_2 - temp_a1_4));
            if ((temp_f20_2 <= 0.5f) && (temp_f22_2 <= 0.5f)) {
                if ((((temp_t3_2 - temp_t1_2) * (temp_f2_2 - temp_t2_2)) - ((temp_f12_2 - temp_t1_2) * (temp_t4_2 - temp_t2_2))) <= 0.5f) {
                    *arg4 = temp_s5;
                    if (*(temp_s3->header.Triangle_Cells + var_s4_3) & 0x8000) {
                        return 0;
                    }
                    *arg1 = var_s7;
                    return 1;
                }
                goto block_53;
            }
            if ((temp_f20_2 >= -0.5f) && (temp_f22_2 >= -0.5f) && ((((temp_t3_2 - temp_t1_2) * (temp_f2_2 - temp_t2_2)) - ((temp_f12_2 - temp_t1_2) * (temp_t4_2 - temp_t2_2))) >= -0.5f)) {
                *arg4 = temp_s5;
                if (*(temp_s3->header.Triangle_Cells + var_s4_3) & 0x8000) {
                    return 0;
                }
                *arg1 = var_s7;
                return 1;
            }
            goto block_53;
        }
block_53:
        var_s7 += 1;
        if (temp_t5_2 & 0x8000) {
            *arg4 = NULL;
            return 0;
        }
        var_s4_3 += 2;
        goto loop_30;
    }
    var_s2_3 = &temp_s3->header.Triangle_Cells[var_s7];
loop_57:
    temp_t5_3 = *var_s2_3;
    var_s2_3 += 2;
    temp_t6_2 = &temp_s3->header.Triangles[temp_t5_3 & 0x7FFF];
    sp64 = temp_t6_2;
    if (temp_t6_2 != arg3) {
        temp_v0_3 = temp_s3->header.vertices.Vertices;
        temp_f0_6 = arg2->unk4;
        temp_f12_3 = arg2->unk0;
        if (temp_s3->usingFloatVertices != 0) {
            temp_a0_5 = temp_v0_3 + (temp_t6_2->vertex[0] * 0xC);
            temp_f2_3 = temp_a0_5->unk0;
            temp_f14_3 = temp_a0_5->unk4;
            temp_a1_5 = temp_v0_3 + (temp_t6_2->vertex[1] * 0xC);
            temp_f28_5 = temp_a1_5->unk0;
            temp_f30_3 = temp_a1_5->unk4;
            temp_a2_5 = temp_v0_3 + (temp_t6_2->vertex[2] * 0xC);
            temp_f16_3 = temp_a2_5->unk0;
            temp_f18_3 = temp_a2_5->unk4;
            var_f20_2 = ((temp_f28_5 - temp_f2_3) * (temp_f0_6 - temp_f14_3)) - ((temp_f12_3 - temp_f2_3) * (temp_f30_3 - temp_f14_3));
            var_f22_2 = ((temp_f16_3 - temp_f28_5) * (temp_f0_6 - temp_f30_3)) - ((temp_f12_3 - temp_f28_5) * (temp_f18_3 - temp_f30_3));
            var_f8_2 = (temp_f2_3 - temp_f16_3) * (temp_f0_6 - temp_f18_3);
            var_f10_2 = (temp_f12_3 - temp_f16_3) * (temp_f14_3 - temp_f18_3);
        } else {
            temp_a2_6 = temp_v0_3 + (temp_t6_2->vertex[0] * 6);
            temp_t2_3 = temp_a2_6->unk2;
            temp_t1_3 = temp_a2_6->unk0;
            temp_a3_3 = temp_v0_3 + (temp_t6_2->vertex[1] * 6);
            temp_a0_6 = temp_a3_3->unk0;
            temp_a1_6 = temp_a3_3->unk2;
            temp_t0_3 = temp_v0_3 + (temp_t6_2->vertex[2] * 6);
            temp_t3_3 = temp_t0_3->unk0;
            temp_t4_3 = temp_t0_3->unk2;
            var_f20_2 = ((temp_a0_6 - temp_t1_3) * (temp_f0_6 - temp_t2_3)) - ((temp_f12_3 - temp_t1_3) * (temp_a1_6 - temp_t2_3));
            var_f22_2 = ((temp_t3_3 - temp_a0_6) * (temp_f0_6 - temp_a1_6)) - ((temp_f12_3 - temp_a0_6) * (temp_t4_3 - temp_a1_6));
            var_f8_2 = (temp_t1_3 - temp_t3_3) * (temp_f0_6 - temp_t4_3);
            var_f10_2 = (temp_f12_3 - temp_t3_3) * (temp_t2_3 - temp_t4_3);
        }
        temp_f28_6 = var_f8_2 - var_f10_2;
        if (((var_f20_2 <= 0.5f) && (var_f22_2 <= 0.5f) && (temp_f28_6 <= 0.5f)) || ((var_f20_2 >= -0.5f) && (var_f22_2 >= -0.5f) && (temp_f28_6 >= -0.5f))) {
            *arg4 = sp64;
            if (*(temp_s3->header.Triangle_Cells + var_s4_2) & 0x8000) {
                return 0;
            }
            *arg1 = var_s7;
            return 1;
        }
        goto block_70;
    }
block_70:
    var_s7 += 1;
    if (temp_t5_3 & 0x8000) {
        *arg4 = NULL;
        return 0;
    }
    var_s4_2 += 2;
    goto loop_57;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80102570.s")
#endif

#ifdef MIPS_TO_C

s32 func_80103004(f32 *arg0, void *arg1, struct Normal **arg2, struct CollisionTriangle **arg3) {
    struct ColStateUnk4 sp9C;
    s32 sp94;
    struct CollisionTriangle *sp90;
    struct bgmaprecord *sp8C;
    s32 sp88;
    struct CollisionTriangle *sp78;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 temp_f20;
    f32 var_f22;
    s32 temp_s2;
    s32 temp_v1;
    s32 var_s3;
    struct CollisionState *temp_v0;
    struct Normal *temp_s0;
    struct bgmaprecord *temp_v1_2;
    u16 temp_s1;
    u16 temp_t7;
    u32 var_s4;

    var_f22 = *arg0;
    gCollisionState->numCells = 0;
    gCollisionState->unk4 = &sp9C;
    gCollisionState->deltaPos.x = gCollisionState->nextPos.x - gCollisionState->currPos.x;
    gCollisionState->deltaPos.y = gCollisionState->nextPos.y - gCollisionState->currPos.y;
    gCollisionState->deltaPos.z = gCollisionState->nextPos.z - gCollisionState->currPos.z;
    if ((gCollisionState->deltaPos.x == 0.0f) && (gCollisionState->deltaPos.y == 0.0f) && (gCollisionState->deltaPos.z == 0.0f)) {
        goto block_25;
    }
    func_80101400(gCollisionState->unk30->header.Num_Floor_Norms);
    temp_v0 = gCollisionState;
    temp_v1 = temp_v0->numCells;
    if (temp_v1 != 0) {
        var_s4 = 0;
        var_s3 = 0;
        sp8C = temp_v0->unk30->header.Triangle_Norm_Cells;
        if (temp_v1 != 0) {
            do {
                temp_s1 = *(temp_v0->unk4 + var_s3);
                temp_v1_2 = &sp8C[temp_s1];
                temp_t7 = temp_v1_2->code;
                sp88 = temp_t7;
                if (temp_t7 != 0) {
                    temp_f20 = (temp_v0->unk4 + var_s3)->unk4;
                    if (temp_f20 < var_f22) {
                        temp_s0 = &temp_v0->unk30->header.Triangle_Normals[temp_v1_2->index];
                        sp68 = (temp_v0->deltaPos.x * temp_f20) + temp_v0->currPos.x;
                        sp6C = (temp_v0->deltaPos.y * temp_f20) + temp_v0->currPos.y;
                        sp70 = (temp_v0->deltaPos.z * temp_f20) + temp_v0->currPos.z;
                        temp_s2 = func_80102570(temp_s0, &sp88, &sp68, temp_v0->unk3C, &sp78);
                        if (sp78 != NULL) {
                            if (gCollisionState->unk40(sp78, temp_s0, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0) {
                                sp94 = temp_s1;
                                var_f22 = temp_f20;
                                sp90 = sp78;
                            } else if (temp_s2 != 0) {
                                sp88 += 1;
                                func_80102570(temp_s0, &sp88, &sp68, gCollisionState->unk3C, &sp78);
                                if ((sp78 != NULL) && (gCollisionState->unk40(sp78, temp_s0, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0)) {
                                    sp94 = temp_s1;
                                    var_f22 = temp_f20;
                                    sp90 = sp78;
                                }
                            }
                        }
                    }
                }
                var_s4 += 1;
                var_s3 += 8;
            } while (var_s4 < gCollisionState->numCells);
        }
        if (var_f22 != *arg0) {
            if (arg2 != NULL) {
                *arg2 = &temp_v0->unk30->header.Triangle_Normals[sp8C[sp94].index];
            }
            if (arg3 != NULL) {
                *arg3 = sp90;
            }
            *arg0 = var_f22;
            if (arg1 != NULL) {
                arg1->unk0 = (gCollisionState->deltaPos.x * var_f22) + gCollisionState->currPos.x;
                arg1->unk4 = (gCollisionState->deltaPos.y * var_f22) + gCollisionState->currPos.y;
                arg1->unk8 = (gCollisionState->deltaPos.z * var_f22) + gCollisionState->currPos.z;
            }
            return 1;
        }
        goto block_25;
    }
block_25:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103004.s")
#endif

#ifdef MIPS_TO_C
s32 func_801033A8(void *arg0, void *arg1, void *arg2) {
    f32 sp14;
    f32 sp8;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    s32 var_v0;

    sp14.unk0 = arg1->unk0;
    sp14.unk4 = arg1->unk4;
    sp14.unk8 = arg1->unk8;
    sp8.unk0 = arg2->unk0;
    sp8.unk4 = arg2->unk4;
    sp8.unk8 = arg2->unk8;
    temp_f0 = arg0->unkA0;
    if ((sp14 < temp_f0) && (sp8 < temp_f0)) {
        return 0;
    }
    temp_f0_2 = arg0->unkAC;
    if ((temp_f0_2 < sp14) && (temp_f0_2 < sp8)) {
        return 0;
    }
    temp_f0_3 = arg0->unkA4;
    if ((sp18 < temp_f0_3) && (spC < temp_f0_3)) {
        return 0;
    }
    temp_f0_4 = arg0->unkB0;
    if ((temp_f0_4 < sp18) && (temp_f0_4 < spC)) {
        return 0;
    }
    temp_f0_5 = arg0->unkA8;
    if ((sp1C < temp_f0_5) && (sp10 < temp_f0_5)) {
        return 0;
    }
    temp_f0_6 = arg0->unkB4;
    var_v0 = 1;
    if ((temp_f0_6 < sp1C) && (temp_f0_6 < sp10)) {
        var_v0 = 0;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801033A8.s")
#endif

#ifdef MIPS_TO_C

s32 func_80103528(f32 *arg0, ? *arg1, ? arg2, ? arg3, u32 *arg4) {
    f32 spAC;
    f32 spA8;
    f32 sp9C;
    ? sp90;
    u32 sp88;
    s32 sp84;
    f32 sp68;
    f32 sp5C;
    f32 sp54;
    Vector *var_s0;
    Vector *var_s0_2;
    f32 var_f0;
    f32 var_f12;
    f32 var_f2;
    s32 temp_v0;
    s32 var_v0;
    u32 var_s1;
    u32 var_s3;
    u32 var_s4;

    if (D_8012BD00.unk40 != D_8012BD00.unk44) {
        sp9C.unk0 = gCollisionState->currPos.x;
        sp9C.unk4 = gCollisionState->currPos.y;
        sp9C.unk8 = gCollisionState->currPos.z;
        spAC = 1.1f;
        gCollisionState->unk30 = D_80129410;
        if (func_80103004(&spAC, &sp90) != 0) {
            gCollisionState->nextPos.x = sp90.unk0;
            gCollisionState->nextPos.y = sp90.unk4;
            gCollisionState->nextPos.z = sp90.unk8;
            sp84 = 1;
        } else {
            sp84 = 0;
            spAC = 1.0f;
        }
        sp88 = 0x14;
        var_s3 = 0;
        if (D_8012D940 != 0) {
            var_s0 = &D_8012D948;
            do {
                if (!(var_s0->unk2 & 1)) {
                    spA8 = 1.1f;
                    gCollisionState->unk30 = (bitwise struct vCollisionHeader *) var_s0->y;
                    if (var_s0->unk2 & 2) {
                        func_80112ED4(var_s0 + 0x18, &sp68, &sp9C);
                        func_80112ED4(var_s0 + 0x58, &sp5C, &sp68);
                        var_f0 = sp5C - sp9C;
                        var_f2 = sp60 - spA0;
                        var_f12 = sp64 - spA4;
                    } else {
                        temp_v0 = var_s0->unk1 * 4;
                        var_f0 = *(&D_800E3050 + temp_v0);
                        var_f2 = *(&D_800E3210 + temp_v0);
                        var_f12 = *(&D_800E33D0 + temp_v0);
                    }
                    gCollisionState->currPos.x = sp9C + var_f0;
                    gCollisionState->currPos.y = spA0 + var_f2;
                    gCollisionState->currPos.z = spA4 + var_f12;
                    if ((func_801033A8(var_f12, var_s0, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) && (func_80103004(&spA8, &sp90, arg2, arg3) != 0)) {
                        sp88 = var_s3;
                        spAC *= spA8;
                        gCollisionState->nextPos.x = sp90.unk0;
                        gCollisionState->nextPos.y = sp90.unk4;
                        gCollisionState->nextPos.z = sp90.unk8;
                        sp84 = 1;
                    }
                }
                var_s3 += 1;
                var_s0 += 0xB8;
            } while (var_s3 < D_8012D940);
        }
        if (sp84 != 0) {
            if (arg0 != NULL) {
                *arg0 = spAC;
            }
            if (arg1 != NULL) {
                arg1->unk0 = sp90.unk0;
                arg1->unk4 = sp90.unk4;
                arg1->unk8 = sp90.unk8;
            }
            if (arg4 != NULL) {
                *arg4 = sp88;
            }
            return 1;
        }
        return 0;
    }
    sp54 = 1.1f;
    gCollisionState->unk30 = D_80129410;
    func_80103004(&sp54, arg1, arg2, arg3);
    var_s4 = 0x14;
    var_s1 = 0;
    if (D_8012D940 != 0) {
        var_s0_2 = &D_8012D948;
        do {
            if (!(var_s0_2->unk2 & 1)) {
                gCollisionState->unk30 = (bitwise struct vCollisionHeader *) var_s0_2->y;
                if ((func_801033A8((bitwise f32) var_s0_2, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) && (func_80103004(&sp54, arg1, arg2, arg3) != 0)) {
                    var_s4 = var_s1;
                }
            }
            var_s1 += 1;
            var_s0_2 += 0xB8;
        } while (var_s1 < D_8012D940);
    }
    var_v0 = 0;
    if (sp54 != 1.1f) {
        if (arg0 != NULL) {
            *arg0 = sp54;
        }
        if (arg4 != NULL) {
            *arg4 = var_s4;
        }
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103528.s")
#endif

#ifdef MIPS_TO_C

void func_80103930(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk3C = NULL;
    sp20.unk44 = func_801024E8;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.someNormal = arg2;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103930.s")
#endif

#ifdef MIPS_TO_C

void func_801039E8(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk3C = NULL;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.someNormal = arg2;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801039E8.s")
#endif

#ifdef MIPS_TO_C

void func_80103AA0(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk3C = NULL;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.someNormal = arg2;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103AA0.s")
#endif

#ifdef MIPS_TO_C

s32 func_80103B58(f32 *arg0, ? arg1, ? arg2, ? arg3, u32 *arg4) {
    f32 sp54;
    ? *var_s0;
    s32 var_v0;
    u32 var_fp;
    u32 var_s1;

    sp54 = 1.1f;
    gCollisionState->unk30 = D_80129410;
    func_80103004(&sp54);
    var_fp = 0x14;
    var_s1 = 0;
    if (D_8012D940 != 0) {
        var_s0 = &D_8012D948;
        do {
            if (!(var_s0->unk2 & 1)) {
                gCollisionState->unk30 = var_s0->unk4;
                if ((func_801033A8(var_s0, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) && (func_80103004(&sp54, arg1, arg2, arg3) != 0)) {
                    var_fp = var_s1;
                }
            }
            var_s1 += 1;
            var_s0 += 0xB8;
        } while (var_s1 < D_8012D940);
    }
    var_v0 = 0;
    if (sp54 != 1.1f) {
        if (arg0 != NULL) {
            *arg0 = sp54;
        }
        if (arg4 != NULL) {
            *arg4 = var_fp;
        }
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103B58.s")
#endif

#ifdef MIPS_TO_C

void func_80103CC8(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk3C = NULL;
    sp20.unk44 = func_801024E8;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.someNormal = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103CC8.s")
#endif

#ifdef MIPS_TO_C

s32 func_80103D80(f32 *arg0) {
    f32 sp1C;

    sp1C = 1.1f;
    gCollisionState->unk30 = D_80129410;
    if (func_80103004(&sp1C) != 0) {
        if (arg0 != NULL) {
            *arg0 = sp1C;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103D80.s")
#endif

#ifdef MIPS_TO_C

void func_80103DE4(void *arg0, void *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk3C = NULL;
    sp20.unk44 = func_801024E8;
    sp20.unk40 = func_80101920;
    sp20.unk34 = arg2;
    sp20.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103DE4.s")
#endif

#ifdef MIPS_TO_C

void func_80103EA0(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.someNormal = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103EA0.s")
#endif

#ifdef MIPS_TO_C

void func_80103F58(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101BA0;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.someNormal = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103F58.s")
#endif

#ifdef MIPS_TO_C

void func_80104010(void *arg0, void *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101920;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.someNormal = arg2;
    sp20.unk34 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104010.s")
#endif

#ifdef MIPS_TO_C

void func_801040CC(void *arg0, void *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101D50;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801040CC.s")
#endif

#ifdef MIPS_TO_C

void func_80104184(void *arg0, void *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80101E14;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104184.s")
#endif

#ifdef MIPS_TO_C

void func_8010423C(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.someNormal = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010423C.s")
#endif

#ifdef MIPS_TO_C

void func_801042F4(void *arg0, void *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_80101920;
    sp20.unk34 = NULL;
    sp20.unk3C = NULL;
    sp20.someNormal = arg2;
    sp20.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801042F4.s")
#endif

#ifdef MIPS_TO_C

void func_801043B0(void *arg0, void *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_80101E14;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801043B0.s")
#endif

#ifdef MIPS_TO_C

void func_80104468(void *arg0, void *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_80101DA8;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.unk34 = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104468.s")
#endif

#ifdef MIPS_TO_C

void func_80104520(void *arg0, void *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801024E8;
    sp20.unk40 = func_80101DA8;
    sp20.unk3C = NULL;
    sp20.unk34 = arg2;
    sp20.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104520.s")
#endif

#ifdef MIPS_TO_C

void func_801045DC(void *arg0, void *arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801024E8;
    sp20.unk40 = func_8010203C;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    sp20.unk4A = arg2;
    sp20.unk4C = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801045DC.s")
#endif

#ifdef MIPS_TO_C

void func_801046A0(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos.x = arg0->unk0;
    sp18.currPos.y = arg0->unk4;
    sp18.currPos.z = arg0->unk8;
    sp18.nextPos.x = arg1->unk0;
    sp18.nextPos.y = arg1->unk4;
    sp18.nextPos.z = arg1->unk8;
    sp18.someNormal = NULL;
    sp18.unk3C = NULL;
    sp18.unk44 = func_801023FC;
    sp18.unk40 = func_80101E5C;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    func_80103D80(arg2, arg3, arg4, arg5);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801046A0.s")
#endif

#ifdef MIPS_TO_C

void func_8010474C(void *arg0, void *arg1) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos.x = arg0->unk0;
    sp18.currPos.y = arg0->unk4;
    sp18.currPos.z = arg0->unk8;
    sp18.nextPos.x = arg1->unk0;
    sp18.nextPos.y = arg1->unk4;
    sp18.nextPos.z = arg1->unk8;
    sp18.someNormal = NULL;
    sp18.unk3C = NULL;
    sp18.unk44 = func_80102364;
    sp18.unk40 = func_80101F4C;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    func_80103D80(0, 0, 0, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010474C.s")
#endif

#ifdef MIPS_TO_C

void func_801047F0(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_8010217C;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801047F0.s")
#endif

#ifdef MIPS_TO_C

void func_801048A4(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_801023FC;
    sp20.unk40 = func_801021BC;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801048A4.s")
#endif

#ifdef MIPS_TO_C

void func_80104958(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_801021FC;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    func_80103B58(0, arg2, arg3, arg4, 0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104958.s")
#endif

#ifdef MIPS_TO_C

void func_80104A08(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos.x = arg0->unk0;
    sp18.currPos.y = arg0->unk4;
    sp18.currPos.z = arg0->unk8;
    sp18.nextPos.x = arg1->unk0;
    sp18.nextPos.y = arg1->unk4;
    sp18.nextPos.z = arg1->unk8;
    sp18.someNormal = NULL;
    sp18.unk44 = func_80102364;
    sp18.unk40 = func_801021FC;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    sp18.unk3C = NULL;
    func_80103D80(0, arg2, arg3, arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104A08.s")
#endif

#ifdef MIPS_TO_C

void func_80104AB4(void *arg0, void *arg1, u16 arg2, u16 arg3, s32 arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos.x = arg0->unk0;
    sp18.currPos.y = arg0->unk4;
    sp18.currPos.z = arg0->unk8;
    sp18.nextPos.x = arg1->unk0;
    sp18.nextPos.y = arg1->unk4;
    sp18.nextPos.z = arg1->unk8;
    sp18.someNormal = NULL;
    sp18.unk3C = NULL;
    sp18.unk44 = func_801024E8;
    sp18.unk40 = func_8010221C;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    sp18.unk48 = arg2;
    sp18.unk4A = arg3;
    func_80103D80(0, 0, 0, arg4);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104AB4.s")
#endif

#ifdef MIPS_TO_C

void func_80104B70(void *arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState sp20;

    gCollisionState = &sp20;
    sp20.currPos.x = arg0->unk0;
    sp20.currPos.y = arg0->unk4;
    sp20.currPos.z = arg0->unk8;
    sp20.nextPos.x = arg1->unk0;
    sp20.nextPos.y = arg1->unk4;
    sp20.nextPos.z = arg1->unk8;
    sp20.someNormal = NULL;
    sp20.unk44 = func_80102364;
    sp20.unk40 = func_80102324;
    sp20.unk34 = NULL;
    sp20.unk38 = NULL;
    sp20.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104B70.s")
#endif

#ifdef MIPS_TO_C

s32 func_80104C24(void *arg0, void *arg1) {
    s32 sp7C;
    s32 sp78;
    struct CollisionState sp28;
    f32 sp24;
    f32 sp20;
    f32 sp1C;

    gCollisionState = &sp28;
    sp28.currPos.x = arg0->unk0;
    sp28.currPos.y = arg0->unk4;
    sp28.currPos.z = arg0->unk8;
    sp28.nextPos.x = arg1->unk0;
    sp28.nextPos.y = arg1->unk4;
    sp28.nextPos.z = arg1->unk8;
    sp28.someNormal = NULL;
    sp28.unk3C = NULL;
    sp28.unk44 = func_801024E8;
    sp28.unk40 = func_80101D50;
    sp28.unk34 = NULL;
    sp28.unk38 = NULL;
    if (func_80103D80(0, 0, &sp7C, &sp78) != 0) {
        sp1C = arg1->unk0 - arg0->unk0;
        sp20 = arg1->unk4 - arg0->unk4;
        sp24 = arg1->unk8 - arg0->unk8;
        if (func_80101920(sp78, sp7C, &sp1C, 0) == 0) {
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104C24.s")
#endif

#ifdef MIPS_TO_C

s32 func_80104D2C(void *arg0, void *arg1, void *arg4, s32 *arg5, s32 *arg6, s32 *arg7) {
    f32 sp6C;
    s32 sp68;
    s32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp44;
    s32 sp3C;
    f32 temp_f0;
    f32 temp_f18;
    f32 temp_f4;
    f32 temp_f8;
    f32 var_f2;

    if (func_80103AA0(&sp6C, &sp68, &sp64, arg7) != 0) {
        temp_f8 = sp6C - arg0->unk0;
        sp58 = temp_f8;
        temp_f4 = sp70 - arg0->unk4;
        sp5C = temp_f4;
        temp_f18 = sp74 - arg0->unk8;
        sp60 = temp_f18;
        if (sqrtf((temp_f8 * temp_f8) + (temp_f4 * temp_f4) + (temp_f18 * temp_f18)) < 0.00001f) {
            func_80112A40(*arg7, arg0, &sp44);
            sp58 = arg1->unk0 - (arg0->unk0 + sp44);
            sp5C = arg1->unk4 - (arg0->unk4 + sp48);
            sp60 = arg1->unk8 - (arg0->unk8 + sp4C);
        }
        temp_f0 = sqrtf((sp58 * sp58) + (sp5C * sp5C) + (sp60 * sp60));
        if (temp_f0 < 0.00001f) {
            var_f2 = 0.0f;
        } else {
            var_f2 = 1.0f / temp_f0;
        }
        sp58 = (sp58 * var_f2) + sp6C;
        sp5C = (sp5C * var_f2) + sp70;
        sp60 = (sp60 * var_f2) + sp74;
        if ((func_801043B0(arg0, &sp58, sp64, 0, 0, 0, 0, 0) != 0) && (func_80104010(arg0, &sp58, 0, sp68, 0, 0, 0, &sp3C, 0) != 0) && (func_80104184(arg0, &sp58, sp3C, 0, 0, 0, 0, 0) == 0)) {
            goto block_17;
        }
        if (arg4 != NULL) {
            arg4->unk0 = sp6C.unk0;
            arg4->unk4 = sp6C.unk4;
            arg4->unk8 = sp6C.unk8;
        }
        if (arg5 != NULL) {
            *arg5 = sp68;
        }
        if (arg6 != NULL) {
            *arg6 = sp64;
        }
        return 1;
    }
block_17:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104D2C.s")
#endif

#ifdef MIPS_TO_C

void func_80104FB8(void *arg0) {
    f32 sp1C;
    f32 temp_f0;
    void *temp_v0;

    sp1C = cosf(arg0->unk24);
    temp_f0 = sinf(arg0->unk24);
    temp_v0 = arg0 + 0x10;
    D_8012BD04 = arg0->unk1C * temp_f0;
    D_8012BD08 = temp_v0->unkC * sp1C;
    D_8012BD08 = temp_v0->unk10 * temp_f0;
    D_8012BD10 = temp_v0->unk10 * sp1C;
    if (temp_v0->unkC > 0.0f) {
        D_8012BD14 = temp_f0;
        D_8012BD00.unk18 = sp1C;
    } else {
        D_8012BD14 = -temp_f0;
        D_8012BD00.unk18 = -sp1C;
    }
    D_8012BD00.unk1C = -D_8012BD00.unk14;
    D_8012BD00.unk20 = -D_8012BD00.unk18;
    D_8012BD00.unk24 = (D_8012BD00.unk14 * 0.1f) + D_8012BD00.unk4;
    D_8012BD00.unk28 = (D_8012BD00.unk18 * 0.1f) + D_8012BD00.unk8;
    D_8012BD00.unk2C = (D_8012BD00.unk1C * 0.1f) + D_8012BD00.unkC;
    D_8012BD00.unk30 = (D_8012BD00.unk20 * 0.1f) + D_8012BD00.unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104FB8.s")
#endif

#ifdef MIPS_TO_C

void func_801050E0(void *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    void *temp_v0;

    temp_f0 = arg0->unk8;
    arg0->unk28 = arg0->unk4;
    arg0->unk2C = temp_f0 + arg0->unk10;
    arg0->unk30 = arg0->unkC;
    arg0->unk44 = temp_f0 + arg0->unk14;
    arg0->unk48 = temp_f0 + arg0->unk18;
    func_80104FB8();
    temp_v0 = arg0 + 0x28;
    temp_f0_2 = temp_v0->unk0;
    temp_f2 = temp_v0->unk8;
    temp_v0->unkC = temp_f0_2 + D_8012BD00.unk4;
    temp_v0->unk10 = temp_f2 + D_8012BD00.unk8;
    temp_v0->unk14 = temp_f0_2 + D_8012BD00.unkC;
    temp_v0->unk18 = temp_f2 + D_8012BD00.unk10;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801050E0.s")
#endif

#ifdef MIPS_TO_C

void func_80105180(void *arg0) {
    arg0->unk4C = 0;
    arg0->unk54 = 0x14;
    arg0->unk50 = 0x14;
    arg0->unk51 = 0x14;
    arg0->unk53 = 0x14;
    arg0->unk52 = 0x14;
    arg0->unk58 = D_8012BD40;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105180.s")
#endif

#ifdef MIPS_TO_C

void func_801051AC(void *arg0) {
    func_801050E0();
    arg0->unk58 = D_8012BD40;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801051AC.s")
#endif

#ifdef MIPS_TO_C
void func_801051DC(void *arg0) {
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;

    temp_f14 = arg0->unk4;
    temp_f12 = arg0->unkC;
    temp_f16 = arg0->unk8 + arg0->unk10;
    arg0->unk3C = temp_f14;
    arg0->unk34 = temp_f14;
    arg0->unk28 = temp_f14;
    arg0->unk48 = temp_f16;
    arg0->unk44 = temp_f16;
    arg0->unk2C = temp_f16;
    arg0->unk40 = temp_f12;
    arg0->unk38 = temp_f12;
    arg0->unk30 = temp_f12;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801051DC.s")
#endif

#ifdef MIPS_TO_C
void func_80105218(void *arg0) {
    arg0->unk0 = 0;
    arg0->unk34 = 0x14;
    arg0->unk4 = 0x14;
    arg0->unk10 = 0x14;
    arg0->unk28 = 0x14;
    arg0->unk1C = 0x14;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105218.s")
#endif

#ifdef MIPS_TO_C

void func_80105238(void *arg0, void *arg1) {
    arg0->unk4C = arg1->unk0;
    arg0->unk52 = arg1->unk1C;
    arg0->unk53 = arg1->unk28;
    arg0->unk51 = arg1->unk10;
    arg0->unk50 = arg1->unk4;
    arg0->unk54 = arg1->unk34;
    func_801050E0();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105238.s")
#endif

#ifdef MIPS_TO_C

s32 func_80105284(void *arg0, void *arg1) {
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s32 sp50;
    f32 sp4C;
    ? sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    void *sp30;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    void *temp_t0;

    sp78 = 1.1f;
    sp54 = D_8012BD00.unk14;
    sp58 = 0.0f;
    sp5C = D_8012BD00.unk18;
    sp6C = arg0->unk34;
    sp70 = arg0->unk2C;
    sp74 = arg0->unk38;
    sp60 = arg0->unk4 + D_8012BD00.unk4;
    sp64 = arg0->unk8 + arg0->unk10;
    sp50 = 0;
    sp68 = arg0->unkC + D_8012BD00.unk8;
    var_v1 = sp50;
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp78, &D_8012BD34, arg1 + 0x24, arg1 + 0x20, arg1 + 0x1C) != 0) {
        var_v1 = 1;
    }
    temp_t0 = arg0 + 0x10;
    sp70 = arg0->unk48;
    sp64 = arg0->unk8 + temp_t0->unk8;
    sp30 = temp_t0;
    sp50 = var_v1;
    var_v1_2 = sp50;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) && ((var_v1_2 == 0) || ((sp3C != arg1->unk24) && (sp4C < sp78)))) {
        D_8012BD34.unk0 = sp40.unk0;
        var_v1_2 = 4;
        D_8012BD34.unk8 = sp40.unk8;
        D_8012BD34.unk4 = sp40.unk4;
        arg1->unk24 = sp3C;
        arg1->unk20 = sp38;
        arg1->unk1C = sp34;
        sp78 = sp4C;
    }
    sp70 = arg0->unk44;
    sp50 = var_v1_2;
    sp64 = arg0->unk8 + sp30->unk4;
    var_v1_3 = sp50;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) && ((var_v1_3 == 0) || ((sp3C != arg1->unk24) && (sp4C < sp78)))) {
        D_8012BD34.unk0 = sp40.unk0;
        var_v1_3 = 2;
        D_8012BD34.unk8 = sp40.unk8;
        D_8012BD34.unk4 = sp40.unk4;
        arg1->unk24 = sp3C;
        arg1->unk20 = sp38;
        arg1->unk1C = sp34;
    }
    var_v0 = 0;
    if (var_v1_3 != 0) {
        var_v0 = 1;
        arg1->unk0 = (((arg1->unk0 >> 0x13) | var_v1_3) * 8) | (arg1->unk0 & 7);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105284.s")
#endif

#ifdef MIPS_TO_C

s32 func_80105530(void *arg0, u32 *arg1) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    void *sp38;
    void *sp34;
    void *sp30;
    void *temp_t0;
    void *temp_t1;
    void *temp_t2;

    if (!((*arg1 >> 0x13) & 7)) {
        sp3C = D_8012BD00.unk14;
        sp40 = 0.0f;
        sp44 = D_8012BD00.unk18;
        temp_t0 = arg1 + 0x24;
        temp_t1 = arg1 + 0x20;
        sp54 = arg0->unk4 + D_8012BD00.unkC;
        temp_t2 = arg1 + 0x1C;
        sp58 = arg0->unk8 + arg0->unk10;
        sp5C = arg0->unkC + D_8012BD00.unk10;
        sp4C = sp58;
        sp48 = arg0->unk4 + D_8012BD00.unk4;
        sp30 = temp_t2;
        sp34 = temp_t1;
        sp38 = temp_t0;
        sp50 = arg0->unkC + D_8012BD00.unk8;
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, temp_t0, temp_t1, temp_t2) != 0) {
            *arg1 = (((*arg1 >> 0x13) | 1) * 8) | (*arg1 & 7);
            return 1;
        }
        sp48 = arg0->unk4 + D_8012BD00.unk24;
        sp50 = arg0->unkC + D_8012BD00.unk28;
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, sp38, sp34, sp30) != 0) {
            return 1;
        }
        goto block_5;
    }
block_5:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105530.s")
#endif

#ifdef MIPS_TO_C

s32 func_801056C8(void *arg0, u32 *arg1) {
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;

    sp48 = arg0->unk34;
    sp4C = arg0->unk2C;
    sp50 = arg0->unk38;
    sp3C = arg0->unk4 + D_8012BD00.unk4;
    sp40 = arg0->unk8 + arg0->unk10;
    sp44 = arg0->unkC + D_8012BD00.unk8;
    sp30 = D_8012BD00.unk14;
    sp34 = 0.0f;
    sp38 = D_8012BD00.unk18;
    if (func_80104D2C(&sp48, &sp3C, &sp30, 0, &D_8012BD34, arg1 + 0x24, arg1 + 0x20, arg1 + 0x1C) != 0) {
        *arg1 = (((*arg1 >> 0x13) | 1) * 8) | (*arg1 & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801056C8.s")
#endif

#ifdef MIPS_TO_C
s32 func_801057C4(void *arg0, void *arg1, void *arg2, void *arg3) {
    f32 sp20;
    f32 sp1C;
    f32 spC;
    f32 sp8;
    f32 sp4;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f6_2;

    temp_f2 = arg1->unk0;
    temp_f18 = arg1->unk8;
    temp_f14 = arg1->unk4;
    temp_f0 = arg2->unk0 - temp_f2;
    spC = arg0->unk0;
    temp_f4 = arg0->unk4;
    temp_f16 = arg2->unk8 - temp_f18;
    sp8 = temp_f4;
    temp_f12 = arg2->unk4 - temp_f14;
    sp4 = arg0->unk8;
    temp_f6 = (spC * temp_f0) + (temp_f4 * temp_f12) + (sp4 * temp_f16);
    sp1C = temp_f6;
    if (temp_f6 == 0.0f) {
        return 0;
    }
    temp_f6_2 = -(((spC * temp_f2) + (sp8 * temp_f14) + (sp4 * temp_f18) + arg0->unkC) / sp1C);
    sp20 = temp_f6_2;
    arg3->unk0 = temp_f2 + (temp_f0 * temp_f6_2);
    arg3->unk4 = arg1->unk4 + (temp_f12 * temp_f6_2);
    arg3->unk8 = arg1->unk8 + (temp_f16 * sp20);
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801057C4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801058B8(void *arg0, void *arg1, void *arg2, f32 arg3, void *arg4, f32 *arg5, void **arg6, s32 *arg7, s32 *arg8) {
    f32 sp14C;
    f32 sp148;
    f32 sp140;
    f32 sp134;
    void *sp130;
    s32 sp120;
    s32 sp11C;
    s32 sp118;
    s32 sp114;
    s32 sp110;
    f32 sp10C;
    f32 sp108;
    f32 sp104;
    f32 spF4;
    void *spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    s32 spAC;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_11;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 var_f0;
    f32 var_f28;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    s32 var_v1;
    void *var_s0;
    void *var_s1;
    void *var_s3;

    temp_f0 = arg1->unk0 - arg0->unk0;
    temp_f2 = arg1->unk4 - arg0->unk4;
    temp_f14 = arg1->unk8 - arg0->unk8;
    temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
    var_f28 = temp_f0_2;
    if (temp_f0_2 == 0.0f) {
        arg4->unk0 = arg0->unk0;
        arg4->unk4 = arg0->unk4;
        arg4->unk8 = arg0->unk8;
        return 0;
    }
    sp14C.unk0 = arg0->unk0;
    var_s0 = arg2;
    sp14C.unk4 = arg0->unk4;
    var_s3 = arg2;
    var_s1 = arg2;
    sp14C.unk8 = arg0->unk8;
    sp140.unk0 = arg1->unk0;
    sp140.unk4 = arg1->unk4;
    sp140.unk8 = arg1->unk8;
    sp110 = 0;
loop_3:
    sp104 = sp140 + D_8012BD00.unk14;
    sp108 = sp144;
    sp10C = sp148 + D_8012BD00.unk18;
    if (func_801057C4(var_s1, &sp104, &sp140, &sp134) != 0) {
        sp148 = sp13C;
        sp140 = sp134;
    }
    if (func_80104520(&sp14C, &sp140, var_s0, var_s3, 0, &sp134, &sp130, &sp120, &sp118) != 0) {
        temp_f0_3 = sp134 - sp14C;
        temp_f24 = sp138 - sp150;
        temp_f22 = sp13C - sp154;
        temp_f0_4 = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f24 * temp_f24) + (temp_f22 * temp_f22));
        spF4 = temp_f0_4;
        if (var_f28 <= temp_f0_4) {
            temp_f2_2 = var_f28 / temp_f0_4;
            arg4->unk0 = (temp_f0_3 * temp_f2_2) + sp14C;
            arg4->unk4 = (temp_f24 * temp_f2_2) + sp150;
            arg4->unk8 = (temp_f22 * temp_f2_2) + sp154;
            if (sp110 != 0) {
                *arg6 = var_s1;
                *arg7 = sp11C;
                *arg8 = sp114;
            }
            return 0;
        }
        temp_f12 = sp130->unk4;
        if (temp_f12 < 0.0f) {
            var_f2 = -temp_f12;
        } else {
            var_f2 = temp_f12;
        }
        if (!(var_f2 <= 0.5f)) {
            temp_f0_5 = sp140 - sp14C;
            temp_f24_2 = sp144 - sp150;
            temp_f22_2 = sp148 - sp154;
            temp_f0_6 = sqrtf((temp_f0_5 * temp_f0_5) + (temp_f24_2 * temp_f24_2) + (temp_f22_2 * temp_f22_2));
            spE4 = sp150;
            temp_f2_3 = 10.0f / temp_f0_6;
            temp_f12_2 = D_8012BD00.unk14 * arg3;
            temp_f14_2 = D_8012BD00.unk18 * arg3;
            spE0 = temp_f12_2 + sp14C;
            spE8 = temp_f14_2 + sp154;
            spD4 = (temp_f0_5 * temp_f2_3) + sp140 + temp_f12_2;
            spD8 = (temp_f24_2 * temp_f2_3) + sp144;
            spDC = (temp_f22_2 * temp_f2_3) + sp148 + temp_f14_2;
            if (func_80103EA0(temp_f12_2, temp_f14_2, &spE0, &spD4, 0, 0, 0, &spEC, 0, 0) != 0) {
                temp_f0_7 = (spEC->unk0 * sp134) + (spEC->unk4 * sp138) + (spEC->unk8 * sp13C) + spEC->unkC;
                if (temp_f0_7 < 0.0f) {
                    var_f2_2 = -temp_f0_7;
                } else {
                    var_f2_2 = temp_f0_7;
                }
                if (var_f2_2 < 1.0f) {
                    arg4->unk0 = sp134.unk0;
                    arg4->unk4 = sp134.unk4;
                    arg4->unk8 = sp134.unk8;
                    *arg5 = var_f28 - spF4;
                    if (sp110 != 0) {
                        *arg6 = var_s1;
                        *arg7 = sp11C;
                        *arg8 = sp114;
                    }
                    return 1;
                }
                goto block_22;
            }
block_22:
            if (arg3 > 0.0f) {
                var_f0 = 10.0f;
            } else {
                var_f0 = -10.0f;
            }
            spC0 = (D_8012BD00.unk14 * var_f0) + sp134;
            if (temp_f24_2 > 0.0f) {
                var_f2_3 = 1.0f;
            } else {
                var_f2_3 = -1.0f;
            }
            temp_f14_3 = var_f2_3 + sp138;
            spB8 = temp_f14_3;
            spC4 = temp_f14_3;
            spC8 = (D_8012BD00.unk18 * var_f0) + sp13C;
            spB4 = (D_8012BD00.unk1C * var_f0) + sp134;
            spAC = 0;
            spBC = (D_8012BD00.unk20 * var_f0) + sp13C;
            var_v1 = spAC;
            if (func_8010423C(&spC0, &spB4, 0, 0, 0, &spEC, 0, 0) != 0) {
                temp_f0_8 = (spEC->unk0 * sp134) + (spEC->unk4 * sp138) + (spEC->unk8 * sp13C) + spEC->unkC;
                if (temp_f0_8 < 0.0f) {
                    var_f2_4 = -temp_f0_8;
                } else {
                    var_f2_4 = temp_f0_8;
                }
                if (var_f2_4 < 1.0f) {
                    var_v1 = 1;
                }
            }
            if (var_v1 == 0) {
                arg4->unk0 = sp134.unk0;
                arg4->unk4 = sp134.unk4;
                arg4->unk8 = sp134.unk8;
                *arg5 = var_f28 - spF4;
                if (sp110 != 0) {
                    *arg6 = var_s1;
                    *arg7 = sp11C;
                    *arg8 = sp114;
                }
                return 2;
            }
            if ((var_s1 != var_s0) && ((temp_f0_9 = var_s0->unk0, temp_f2_4 = var_s1->unk0, (temp_f0_9 != temp_f2_4)) || (var_s0->unk4 != var_s1->unk4) || (var_s0->unk8 != var_s1->unk8) || (var_s0->unkC != var_s1->unkC)) && ((-var_s0->unkC != var_s1->unkC) || (((temp_f2_4 * temp_f0_9) + (var_s1->unk4 * var_s0->unk4) + (var_s1->unk8 * var_s0->unk8)) != -1.0f))) {
                var_s3 = var_s0;
            }
            var_s0 = sp130;
            goto loop_3;
        }
        var_s0 = sp130;
        sp14C.unk0 = sp134.unk0;
        sp14C.unk4 = sp134.unk4;
        var_s3 = var_s1;
        sp14C.unk8 = sp134.unk8;
        var_f28 -= temp_f0_4;
        sp110 = 1;
        var_s1 = var_s0;
        sp11C = sp120;
        sp114 = sp118;
        goto loop_3;
    }
    temp_f0_10 = sp140 - sp14C;
    temp_f22_3 = sp144 - sp150;
    temp_f24_3 = sp148 - sp154;
    temp_f0_11 = sqrtf((temp_f0_10 * temp_f0_10) + (temp_f22_3 * temp_f22_3) + (temp_f24_3 * temp_f24_3));
    if (var_f28 <= temp_f0_11) {
        temp_f2_5 = var_f28 / temp_f0_11;
        arg4->unk0 = (temp_f0_10 * temp_f2_5) + sp14C;
        arg4->unk4 = (temp_f22_3 * temp_f2_5) + sp150;
        arg4->unk8 = (temp_f24_3 * temp_f2_5) + sp154;
    } else {
        arg4->unk0 = sp140.unk0;
        arg4->unk4 = sp140.unk4;
        arg4->unk8 = sp140.unk8;
    }
    if (sp110 != 0) {
        *arg6 = var_s1;
        *arg7 = sp11C;
        *arg8 = sp114;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801058B8.s")
#endif

#ifdef MIPS_TO_C

void func_801060C4(void *arg0, void *arg1) {
    s32 sp9C;
    s32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    s32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    s32 temp_v0;

    sp8C = arg0->unk4 + D_8012BD00.unk4;
    sp90 = arg0->unk8 + arg0->unk10;
    sp94 = arg0->unkC + D_8012BD00.unk8;
    sp9C = arg1->unk24;
    sp98 = arg1->unk20;
    sp70 = arg1->unk1C;
    temp_v0 = func_801058B8(&D_8012BD34, &sp8C, arg1->unk24, 0xBF800000, &sp80, &sp6C, &sp9C, &sp98, &sp70);
    switch (temp_v0) {                              /* irregular */
        case 0:
            if ((((sp8C - sp80) * D_8012BD00.unk14) + ((sp94 - sp88) * D_8012BD00.unk18)) < 0.0f) {
                arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFFF8) * 8) | (arg1->unk0 & 7);
                return;
            }
            sp74.unk0 = sp80.unk0;
            sp74.unk4 = sp80.unk4;
            sp74.unk8 = sp80.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFFF8) | 1) * 8) | (arg1->unk0 & 7);
        default:
block_11:
            arg1->unk24 = sp9C;
            arg1->unk20 = sp98;
            arg1->unk1C = sp70;
            arg0->unk4 = sp74 - D_8012BD00.unk24;
            arg0->unk8 = sp78 - arg0->unk10;
            arg0->unkC = sp7C - D_8012BD00.unk28;
            return;
        case 1:
            sp74.unk0 = sp80.unk0;
            sp74.unk4 = sp80.unk4;
            sp74.unk8 = sp80.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFFF8) | 1) * 8) | (arg1->unk0 & 7);
            goto block_11;
        case 2:
            temp_f14 = sp8C - D_8012BD00.unk34;
            temp_f16 = sp90 - D_8012BD00.unk38;
            sp60 = temp_f14;
            temp_f18 = sp94 - D_8012BD00.unk3C;
            sp64 = temp_f16;
            sp68 = temp_f18;
            temp_f2 = sp6C / sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f18 * temp_f18));
            sp6C = temp_f2;
            temp_f6 = (temp_f14 * temp_f2) + sp80;
            sp74 = temp_f6;
            temp_f12 = (temp_f16 * temp_f2) + sp84;
            temp_f4 = (temp_f18 * temp_f2) + sp88;
            sp4C = temp_f12;
            sp78 = temp_f12;
            sp7C = temp_f4;
            sp48 = temp_f6 + D_8012BD00.unk14;
            sp50 = temp_f4 + D_8012BD00.unk18;
            if ((func_801057C4(temp_f12, temp_f14, sp9C, &sp74, &sp48, &sp54) != 0) && ((((sp74 - sp54) * D_8012BD00.unk14) + ((sp7C - sp5C) * D_8012BD00.unk18)) > 0.0f)) {
                sp74 = sp54;
                sp7C = sp5C;
            }
            goto block_11;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801060C4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801063F0(void *arg0, void *arg1) {
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    s32 sp50;
    f32 sp4C;
    ? sp40;
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    void *sp30;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    void *temp_t0;

    sp78 = 1.1f;
    sp54 = D_8012BD00.unk1C;
    sp58 = 0.0f;
    sp5C = D_8012BD00.unk20;
    sp6C = arg0->unk3C;
    sp70 = arg0->unk2C;
    sp74 = arg0->unk40;
    sp60 = arg0->unk4 + D_8012BD00.unkC;
    sp64 = arg0->unk8 + arg0->unk10;
    sp50 = 0;
    sp68 = arg0->unkC + D_8012BD00.unk10;
    var_v1 = sp50;
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp78, &D_8012BD34, arg1 + 0x30, arg1 + 0x2C, arg1 + 0x28) != 0) {
        var_v1 = 8;
    }
    temp_t0 = arg0 + 0x10;
    sp70 = arg0->unk48;
    sp64 = arg0->unk8 + temp_t0->unk8;
    sp30 = temp_t0;
    sp50 = var_v1;
    var_v1_2 = sp50;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) && ((var_v1_2 == 0) || ((sp3C != arg1->unk30) && (sp4C < sp78)))) {
        D_8012BD34.unk0 = sp40.unk0;
        var_v1_2 = 0x20;
        D_8012BD34.unk8 = sp40.unk8;
        D_8012BD34.unk4 = sp40.unk4;
        arg1->unk30 = sp3C;
        arg1->unk2C = sp38;
        arg1->unk28 = sp34;
        sp78 = sp4C;
    }
    sp70 = arg0->unk44;
    sp50 = var_v1_2;
    sp64 = arg0->unk8 + sp30->unk4;
    var_v1_3 = sp50;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) && ((var_v1_3 == 0) || ((sp3C != arg1->unk30) && (sp4C < sp78)))) {
        D_8012BD34.unk0 = sp40.unk0;
        var_v1_3 = 0x10;
        D_8012BD34.unk8 = sp40.unk8;
        D_8012BD34.unk4 = sp40.unk4;
        arg1->unk30 = sp3C;
        arg1->unk2C = sp38;
        arg1->unk28 = sp34;
    }
    var_v0 = 0;
    if (var_v1_3 != 0) {
        var_v0 = 1;
        arg1->unk0 = (((arg1->unk0 >> 0x13) | var_v1_3) * 8) | (arg1->unk0 & 7);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801063F0.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010669C(void *arg0, u32 *arg1) {
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    void *sp38;
    void *sp34;
    void *sp30;
    void *temp_t0;
    void *temp_t1;
    void *temp_t2;

    if (!((*arg1 >> 0x13) & 0x38)) {
        sp3C = D_8012BD00.unk1C;
        sp40 = 0.0f;
        sp44 = D_8012BD00.unk20;
        temp_t0 = arg1 + 0x30;
        temp_t1 = arg1 + 0x2C;
        sp54 = arg0->unk4 + D_8012BD00.unk4;
        temp_t2 = arg1 + 0x28;
        sp58 = arg0->unk8 + arg0->unk10;
        sp5C = arg0->unkC + D_8012BD00.unk8;
        sp4C = sp58;
        sp48 = arg0->unk4 + D_8012BD00.unkC;
        sp30 = temp_t2;
        sp34 = temp_t1;
        sp38 = temp_t0;
        sp50 = arg0->unkC + D_8012BD00.unk10;
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, temp_t0, temp_t1, temp_t2) != 0) {
            *arg1 = (((*arg1 >> 0x13) | 8) * 8) | (*arg1 & 7);
            return 1;
        }
        sp48 = arg0->unk4 + D_8012BD00.unk2C;
        sp50 = arg0->unkC + D_8012BD00.unk30;
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, sp38, sp34, sp30) != 0) {
            return 1;
        }
        goto block_5;
    }
block_5:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010669C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80106834(void *arg0, u32 *arg1) {
    ? sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    sp4C = arg0->unk3C;
    sp50 = arg0->unk2C;
    sp54 = arg0->unk40;
    sp40 = arg0->unk4 + D_8012BD00.unkC;
    sp44 = arg0->unk8 + arg0->unk10;
    sp48 = arg0->unkC + D_8012BD00.unk10;
    sp34 = D_8012BD00.unk1C;
    sp38 = 0.0f;
    sp3C = D_8012BD00.unk20;
    if (func_80104D2C(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, arg1 + 0x30, arg1 + 0x2C, arg1 + 0x28) != 0) {
        *arg1 = (((*arg1 >> 0x13) | 8) * 8) | (*arg1 & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80106834.s")
#endif

#ifdef MIPS_TO_C

void func_80106930(void *arg0, void *arg1) {
    s32 sp9C;
    s32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    s32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f2;
    f32 temp_f4;
    f32 temp_f6;
    s32 temp_v0;

    sp8C = arg0->unk4 + D_8012BD00.unkC;
    sp90 = arg0->unk8 + arg0->unk10;
    sp94 = arg0->unkC + D_8012BD00.unk10;
    sp9C = arg1->unk30;
    sp98 = arg1->unk2C;
    sp70 = arg1->unk28;
    temp_v0 = func_801058B8(&D_8012BD34, &sp8C, arg1->unk30, 0x3F800000, &sp80, &sp6C, &sp9C, &sp98, &sp70);
    switch (temp_v0) {                              /* irregular */
        case 0:
            if ((((sp8C - sp80) * D_8012BD00.unk1C) + ((sp94 - sp88) * D_8012BD00.unk20)) < 0.0f) {
                arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFFC7) * 8) | (arg1->unk0 & 7);
                return;
            }
            sp74.unk0 = sp80.unk0;
            sp74.unk4 = sp80.unk4;
            sp74.unk8 = sp80.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFFC7) | 8) * 8) | (arg1->unk0 & 7);
        default:
block_11:
            arg1->unk30 = sp9C;
            arg1->unk2C = sp98;
            arg1->unk28 = sp70;
            arg0->unk4 = sp74 - D_8012BD00.unk2C;
            arg0->unk8 = sp78 - arg0->unk10;
            arg0->unkC = sp7C - D_8012BD00.unk30;
            return;
        case 1:
            sp74.unk0 = sp80.unk0;
            sp74.unk4 = sp80.unk4;
            sp74.unk8 = sp80.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFFC7) | 8) * 8) | (arg1->unk0 & 7);
            goto block_11;
        case 2:
            temp_f14 = sp8C - D_8012BD00.unk34;
            temp_f16 = sp90 - D_8012BD00.unk38;
            sp60 = temp_f14;
            temp_f18 = sp94 - D_8012BD00.unk3C;
            sp64 = temp_f16;
            sp68 = temp_f18;
            temp_f2 = sp6C / sqrtf((temp_f14 * temp_f14) + (temp_f16 * temp_f16) + (temp_f18 * temp_f18));
            sp6C = temp_f2;
            temp_f6 = (temp_f14 * temp_f2) + sp80;
            sp74 = temp_f6;
            temp_f12 = (temp_f16 * temp_f2) + sp84;
            temp_f4 = (temp_f18 * temp_f2) + sp88;
            sp4C = temp_f12;
            sp78 = temp_f12;
            sp7C = temp_f4;
            sp48 = temp_f6 + D_8012BD00.unk1C;
            sp50 = temp_f4 + D_8012BD00.unk20;
            if ((func_801057C4(temp_f12, temp_f14, sp9C, &sp74, &sp48, &sp54) != 0) && ((((sp74 - sp54) * D_8012BD00.unk1C) + ((sp7C - sp5C) * D_8012BD00.unk20)) > 0.0f)) {
                sp74 = sp54;
                sp7C = sp5C;
            }
            goto block_11;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80106930.s")
#endif

#ifdef MIPS_TO_C

s32 func_80106C5C(void *arg0, void *arg1) {
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp5C;
    void *sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp44;
    s32 sp40;
    f32 sp3C;
    f32 temp_f10;
    s32 var_s0;
    s32 var_t0;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_v0;
    void *temp_a2;
    void *temp_a2_2;

    sp68 = 0.0f;
    sp70 = 0.0f;
    sp6C = 1.0f;
    sp80 = arg0->unk28;
    sp84 = arg0->unk44;
    sp88 = arg0->unk30;
    sp74 = arg0->unk4;
    sp78 = arg0->unk8 + arg0->unk14;
    sp4C = 0;
    sp7C = arg0->unkC;
    var_t1 = sp4C;
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &D_8012BD34, arg1 + 0x18, arg1 + 0x14, arg1 + 0x10) != 0) {
        var_t1 = 0x40;
        sp44 = D_8012BD00.unk38;
    }
    sp80 = arg0->unk34;
    sp88 = arg0->unk38;
    sp74 = arg0->unk4 + D_8012BD00.unk4;
    sp4C = var_t1;
    sp7C = arg0->unkC + D_8012BD00.unk8;
    var_t1_2 = sp4C;
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &sp5C, &sp58, &sp54, &sp50) != 0) {
        var_t0 = 0;
        if (var_t1_2 == 0) {
            var_t0 = 1;
            sp3C = -((sp58->unk0 * (sp5C - D_8012BD00.unk4)) + (sp58->unk8 * (sp64 - D_8012BD00.unk8)) + sp58->unkC) / sp58->unk4;
        } else {
            temp_a2 = arg1->unk18;
            if (sp58 != temp_a2) {
                temp_f10 = -((sp58->unk0 * (sp5C - D_8012BD00.unk4)) + (sp58->unk8 * (sp64 - D_8012BD00.unk8)) + sp58->unkC) / sp58->unk4;
                sp3C = temp_f10;
                if (temp_f10 < sp44) {
                    sp40 = 0;
                    var_t0 = sp40;
                    var_t1_2 = sp4C;
                    if (func_80108858(&D_8012BD34, &sp5C, temp_a2, 0xBF800000) != 0) {
                        var_t0 = 1;
                    }
                }
            }
        }
        if (var_t0 != 0) {
            D_8012BD34.unk0 = sp5C.unk0;
            D_8012BD34.unk4 = sp5C.unk4;
            var_t1_2 = 0x100;
            D_8012BD34.unk8 = sp5C.unk8;
            arg1->unk18 = sp58;
            arg1->unk14 = sp54;
            arg1->unk10 = sp50;
            sp44 = sp3C;
        }
    }
    sp80 = arg0->unk3C;
    sp88 = arg0->unk40;
    sp74 = arg0->unk4 + D_8012BD00.unkC;
    sp4C = var_t1_2;
    sp7C = arg0->unkC + D_8012BD00.unk10;
    var_t1_3 = sp4C;
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &sp5C, &sp58, &sp54, &sp50) != 0) {
        var_s0 = 0;
        if (var_t1_3 == 0) {
            goto block_18;
        }
        temp_a2_2 = arg1->unk18;
        if ((sp58 != temp_a2_2) && ((-((sp58->unk0 * (sp5C - D_8012BD00.unkC)) + (sp58->unk8 * (sp64 - D_8012BD00.unk10)) + sp58->unkC) / sp58->unk4) < sp44)) {
            var_t1_3 = sp4C;
            if (func_80108858(&D_8012BD34, &sp5C, temp_a2_2, 0xBF800000) != 0) {
block_18:
                var_s0 = 1;
            }
        }
        if (var_s0 != 0) {
            D_8012BD34.unk0 = sp5C.unk0;
            D_8012BD34.unk4 = sp5C.unk4;
            var_t1_3 = 0x80;
            D_8012BD34.unk8 = sp5C.unk8;
            arg1->unk18 = sp58;
            arg1->unk14 = sp54;
            arg1->unk10 = sp50;
        }
    }
    var_v0 = 0;
    if (var_t1_3 != 0) {
        var_v0 = 1;
        arg1->unk0 = (((arg1->unk0 >> 0x13) | var_t1_3) * 8) | (arg1->unk0 & 7);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80106C5C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80107074(void *arg0, void *arg1) {
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    ? sp4C;
    void *sp48;
    s32 sp44;
    s32 sp40;
    s32 sp3C;
    f32 sp38;
    s32 var_v1;
    s32 var_v1_2;

    if (!((arg1->unk0 >> 0x13) & 0x1C0)) {
        sp58 = 0.0f;
        sp60 = 0.0f;
        sp5C = 1.0f;
        sp70 = arg0->unk4 + D_8012BD00.unk4;
        sp74 = arg0->unk8 + arg0->unk18;
        sp64 = sp70;
        sp78 = arg0->unkC + D_8012BD00.unk8;
        sp3C = 0;
        sp68 = arg0->unk8 + arg0->unk14;
        sp6C = sp78;
        var_v1 = sp3C;
        if (func_80103F58(&sp70, &sp64, &sp58, 0, &D_8012BD34, &sp48, arg1 + 0x14, arg1 + 0x10) != 0) {
            var_v1 = 0x100;
            arg1->unk18 = sp48;
            sp38 = -((sp48->unk0 * arg0->unk28) + (sp48->unk8 * arg0->unk30) + sp48->unkC) / sp48->unk4;
        }
        sp70 = arg0->unk4 + D_8012BD00.unkC;
        sp3C = var_v1;
        sp78 = arg0->unkC + D_8012BD00.unk10;
        sp64 = sp70;
        sp6C = sp78;
        var_v1_2 = sp3C;
        if ((func_80103F58(&sp70, &sp64, &sp58, 0, &sp4C, &sp48, &sp44, &sp40) != 0) && ((var_v1_2 == 0) || ((-((sp48->unk0 * arg0->unk28) + (sp48->unk8 * arg0->unk30) + sp48->unkC) / sp48->unk4) < sp38))) {
            D_8012BD34.unk0 = sp4C.unk0;
            D_8012BD34.unk4 = sp4C.unk4;
            var_v1_2 = 0x80;
            D_8012BD34.unk8 = sp4C.unk8;
            arg1->unk18 = sp48;
            arg1->unk14 = sp44;
            arg1->unk10 = sp40;
        }
        if (var_v1_2 != 0) {
            arg1->unk0 = (((arg1->unk0 >> 0x13) | var_v1_2) * 8) | (arg1->unk0 & 7);
            return 1;
        }
        goto block_9;
    }
block_9:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80107074.s")
#endif

#ifdef MIPS_TO_C

s32 func_801072E0(void *arg0, u32 *arg1) {
    ? sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    sp4C = arg0->unk28;
    sp50 = arg0->unk44;
    sp54 = arg0->unk30;
    sp40 = arg0->unk4;
    sp44 = arg0->unk8 + arg0->unk14;
    sp34 = 0.0f;
    sp3C = 0.0f;
    sp38 = 1.0f;
    sp48 = arg0->unkC;
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, arg1 + 0x18, arg1 + 0x14, arg1 + 0x10) != 0) {
        *arg1 = (((*arg1 >> 0x13) | 0x40) * 8) | (*arg1 & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801072E0.s")
#endif

#ifdef MIPS_TO_C

void func_801073C4(void *arg0, void *arg1) {
    void *spB4;
    s32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp84;
    ? sp80;
    s32 sp7C;
    f32 sp78;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp3C;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f6;
    f32 temp_f8;
    f32 var_f12;
    f32 var_f14;
    s32 temp_v0;
    s32 var_v1;
    void *temp_t4;

    temp_t4 = arg1->unk18;
    spB4 = temp_t4;
    spB0 = arg1->unk14;
    sp7C = arg1->unk10;
    spA4 = arg0->unk4;
    spA8 = arg0->unk8 + arg0->unk14;
    spAC = arg0->unkC;
    sp80.unk0 = spA4.unk0;
    sp80.unk4 = spA4.unk4;
    sp80.unk8 = spA4.unk8;
    if (!((arg1->unk0 >> 0x13) & 0x40)) {
        temp_f0 = -((temp_t4->unk0 * spA4) + (temp_t4->unk8 * spAC) + temp_t4->unkC) / temp_t4->unk4;
        if (temp_f0 < spA8) {
            sp84 = temp_f0;
        }
    }
    temp_v0 = func_80108078(&D_8012BD34, &sp80, arg1->unk18, 0xBF800000, &sp98, &sp78, &spB4, &spB0, &sp7C);
    switch (temp_v0) {                              /* irregular */
        case 0:
            if (spA8 < sp9C) {
                arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFE3F) * 8) | (arg1->unk0 & 7);
                return;
            }
            sp8C.unk0 = sp98.unk0;
            sp8C.unk4 = sp98.unk4;
            sp8C.unk8 = sp98.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFE3F) | 0x40) * 8) | (arg1->unk0 & 7);
        default:
block_18:
            arg1->unk18 = spB4;
            arg1->unk14 = spB0;
            arg1->unk10 = sp7C;
            arg0->unk4 = sp8C;
            arg0->unk8 = (sp90 - arg0->unk14) - 0.1f;
            arg0->unkC = sp94;
            return;
        case 1:
            sp8C.unk0 = sp98.unk0;
            sp8C.unk4 = sp98.unk4;
            sp8C.unk8 = sp98.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFE3F) | 0x40) * 8) | (arg1->unk0 & 7);
            goto block_18;
        case 2:
            temp_f2 = spA4 - D_8012BD00.unk34;
            temp_f14 = spA8 - D_8012BD00.unk38;
            sp68 = temp_f2;
            temp_f16 = spAC - D_8012BD00.unk3C;
            sp6C = temp_f14;
            sp70 = temp_f16;
            temp_f8 = sp78 / sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
            sp38 = sp98;
            sp78 = temp_f8;
            temp_f4 = (temp_f2 * temp_f8) + sp98;
            temp_f10 = (temp_f14 * temp_f8) + sp9C;
            sp8C = temp_f4;
            sp90 = temp_f10;
            temp_f6 = (temp_f16 * temp_f8) + spA0;
            sp94 = temp_f6;
            sp3C = temp_f10;
            temp_f12 = -((spB4->unk0 * temp_f4) + (spB4->unk8 * temp_f6) + spB4->unkC) / spB4->unk4;
            if (temp_f12 <= temp_f10) {
                temp_f2_2 = temp_f6 - spA0;
                sp90 = temp_f12;
                var_v1 = 0x100;
                temp_f0_2 = temp_f4 - sp38;
                if (((temp_f0_2 * D_8012BD00.unk14) + (temp_f2_2 * D_8012BD00.unk18)) >= 0.0f) {
                    var_f12 = D_8012BD00.unk2C;
                    var_f14 = D_8012BD00.unk30;
                    var_v1 = 0x80;
                } else {
                    var_f12 = D_8012BD00.unk24;
                    var_f14 = D_8012BD00.unk28;
                }
                if (((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2)) <= ((var_f12 * var_f12) + (var_f14 * var_f14))) {
                    arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xFE3F) | var_v1) * 8) | (arg1->unk0 & 7);
                }
                goto block_18;
            }
            arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFE3F) * 8) | (arg1->unk0 & 7);
            return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801073C4.s")
#endif

#ifdef MIPS_TO_C

void func_801077D4(void *arg0, void *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    void *temp_v1;

    temp_v0 = arg1->unk0 >> 0x13;
    if (temp_v0 & 0x40) {
        arg0->unk4 = D_8012BD00.unk34;
        arg0->unk8 = (D_8012BD00.unk38 - arg0->unk14) - 0.1f;
        arg0->unkC = D_8012BD00.unk3C;
        return;
    }
    temp_v1 = arg1->unk18;
    temp_f0 = (-((temp_v1->unk0 * arg0->unk4) + (temp_v1->unk8 * arg0->unkC) + temp_v1->unkC) / temp_v1->unk4) - arg0->unk14;
    if (temp_f0 < arg0->unk8) {
        arg0->unk8 = temp_f0 - 0.1f;
        return;
    }
    arg1->unk0 = ((temp_v0 & 0xFE3F) * 8) | (arg1->unk0 & 7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801077D4.s")
#endif

#ifdef MIPS_TO_C

s32 func_801078A0(void *arg0, void *arg1) {
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp6C;
    void *sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    f32 sp54;
    s32 sp50;
    f32 sp4C;
    s32 sp48;
    f32 sp44;
    f32 temp_f10;
    f32 temp_f18;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_v0;

    sp78 = 0.0f;
    sp80 = 0.0f;
    sp7C = -1.0f;
    sp90 = arg0->unk28;
    sp94 = arg0->unk48;
    sp98 = arg0->unk30;
    sp84 = arg0->unk4;
    sp88 = arg0->unk8 + arg0->unk18;
    sp5C = 0;
    sp8C = arg0->unkC;
    var_t1 = sp5C;
    if (func_801039E8(&sp90, &sp84, &sp78, 0, &D_8012BD34, arg1 + 0xC, arg1 + 8, arg1 + 4) != 0) {
        var_t1 = 0x200;
        sp58 = 1;
        sp54 = D_8012BD00.unk38;
    } else {
        sp58 = 0;
    }
    sp90 = arg0->unk34;
    sp98 = arg0->unk38;
    sp84 = arg0->unk4 + D_8012BD00.unk4;
    sp5C = var_t1;
    sp8C = arg0->unkC + D_8012BD00.unk8;
    var_t1_2 = sp5C;
    if (func_801039E8(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
        var_t0 = 0;
        if (var_t1_2 == 0) {
            var_t0 = 1;
            sp4C = -((sp68->unk0 * (sp6C - D_8012BD00.unk4)) + (sp68->unk8 * (sp74 - D_8012BD00.unk8)) + sp68->unkC) / sp68->unk4;
        } else {
            temp_a2 = arg1->unkC;
            if (sp68 != temp_a2) {
                temp_f10 = -((sp68->unk0 * (sp6C - D_8012BD00.unk4)) + (sp68->unk8 * (sp74 - D_8012BD00.unk8)) + sp68->unkC) / sp68->unk4;
                sp4C = temp_f10;
                if (sp54 < temp_f10) {
                    sp50 = 0;
                    var_t0 = sp50;
                    var_t1_2 = sp5C;
                    if (func_80108858(&D_8012BD34, &sp6C, temp_a2, 0x3F800000) != 0) {
                        var_t0 = 1;
                    }
                }
            }
        }
        if (var_t0 != 0) {
            D_8012BD34.unk0 = sp6C.unk0;
            D_8012BD34.unk4 = sp6C.unk4;
            var_t1_2 = 0x800;
            D_8012BD34.unk8 = sp6C.unk8;
            arg1->unkC = sp68;
            arg1->unk8 = sp64;
            arg1->unk4 = sp60;
            sp54 = sp4C;
        }
    }
    sp90 = arg0->unk3C;
    sp98 = arg0->unk40;
    sp84 = arg0->unk4 + D_8012BD00.unkC;
    sp5C = var_t1_2;
    sp8C = arg0->unkC + D_8012BD00.unk10;
    var_t1_3 = sp5C;
    if (func_801039E8(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
        var_t0_2 = 0;
        if (var_t1_3 == 0) {
            var_t0_2 = 1;
            sp44 = -((sp68->unk0 * (sp6C - D_8012BD00.unkC)) + (sp68->unk8 * (sp74 - D_8012BD00.unk10)) + sp68->unkC) / sp68->unk4;
        } else {
            temp_a2_2 = arg1->unkC;
            if (sp68 != temp_a2_2) {
                temp_f18 = -((sp68->unk0 * (sp6C - D_8012BD00.unkC)) + (sp68->unk8 * (sp74 - D_8012BD00.unk10)) + sp68->unkC) / sp68->unk4;
                sp44 = temp_f18;
                if (sp54 < temp_f18) {
                    sp48 = 0;
                    var_t0_2 = sp48;
                    var_t1_3 = sp5C;
                    if (func_80108858(&D_8012BD34, &sp6C, temp_a2_2, 0x3F800000) != 0) {
                        var_t0_2 = 1;
                    }
                }
            }
        }
        if (var_t0_2 != 0) {
            D_8012BD34.unk0 = sp6C.unk0;
            D_8012BD34.unk4 = sp6C.unk4;
            var_t1_3 = 0x400;
            D_8012BD34.unk8 = sp6C.unk8;
            arg1->unkC = sp68;
            arg1->unk8 = sp64;
            arg1->unk4 = sp60;
            sp54 = sp44;
        }
    }
    if (sp58 == 0) {
        temp_v0 = arg0 + 0x10;
        sp90 = arg0->unk4 + D_8012BD00.unk4;
        sp94 = arg0->unk8 + temp_v0->unk4;
        sp84 = sp90;
        sp98 = arg0->unkC + D_8012BD00.unk8;
        sp5C = var_t1_3;
        sp88 = arg0->unk8 + temp_v0->unk8;
        sp8C = sp98;
        var_t1_4 = sp5C;
        if (func_80103F58(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
            var_v0_2 = 0;
            if (var_t1_4 == 0) {
                goto block_27;
            }
            if ((sp68 != arg1->unkC) && (sp54 < (-((sp68->unk0 * arg0->unk28) + (sp68->unk8 * arg0->unk30) + sp68->unkC) / sp68->unk4))) {
block_27:
                var_v0_2 = 1;
            }
            if (var_v0_2 != 0) {
                D_8012BD34.unk0 = sp6C.unk0;
                D_8012BD34.unk4 = sp6C.unk4;
                var_t1_4 = 0x800;
                D_8012BD34.unk8 = sp6C.unk8;
                arg1->unkC = sp68;
                arg1->unk8 = sp64;
                arg1->unk4 = sp60;
            }
        }
        sp90 = arg0->unk4 + D_8012BD00.unkC;
        sp5C = var_t1_4;
        sp98 = arg0->unkC + D_8012BD00.unk10;
        sp84 = sp90;
        sp8C = sp98;
        var_t1_3 = sp5C;
        if (func_80103F58(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
            var_v0_3 = 0;
            if (var_t1_3 == 0) {
                goto block_35;
            }
            if ((sp68 != arg1->unkC) && (sp54 < (-((sp68->unk0 * arg0->unk28) + (sp68->unk8 * arg0->unk30) + sp68->unkC) / sp68->unk4))) {
block_35:
                var_v0_3 = 1;
            }
            if (var_v0_3 != 0) {
                D_8012BD34.unk0 = sp6C.unk0;
                D_8012BD34.unk4 = sp6C.unk4;
                var_t1_3 = 0x400;
                D_8012BD34.unk8 = sp6C.unk8;
                arg1->unkC = sp68;
                arg1->unk8 = sp64;
                arg1->unk4 = sp60;
            }
        }
    }
    var_v0 = 0;
    if (var_t1_3 != 0) {
        var_v0 = 1;
        arg1->unk0 = (((arg1->unk0 >> 0x13) | var_t1_3) * 8) | (arg1->unk0 & 7);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801078A0.s")
#endif

#ifdef MIPS_TO_C

s32 func_80107F94(void *arg0, u32 *arg1) {
    ? sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    sp4C = arg0->unk28;
    sp50 = arg0->unk48;
    sp54 = arg0->unk30;
    sp40 = arg0->unk4;
    sp44 = arg0->unk8 + arg0->unk18;
    sp34 = 0.0f;
    sp3C = 0.0f;
    sp38 = -1.0f;
    sp48 = arg0->unkC;
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, arg1 + 0xC, arg1 + 8, arg1 + 4) != 0) {
        *arg1 = (((*arg1 >> 0x13) | 0x200) * 8) | (*arg1 & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80107F94.s")
#endif

#ifdef MIPS_TO_C

s32 func_80108078(void *arg0, void *arg1, void *arg2, f32 arg3, void *arg4, f32 *arg5, void **arg6, s32 *arg7, s32 *arg8) {
    f32 sp144;
    f32 sp13C;
    f32 sp138;
    f32 sp12C;
    void *sp128;
    s32 sp118;
    s32 sp114;
    s32 sp110;
    s32 sp10C;
    s32 sp108;
    f32 spF8;
    void *spF0;
    f32 spE8;
    ? spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spCC;
    f32 spC8;
    f32 spC4;
    f32 spC0;
    f32 spBC;
    f32 spB8;
    f32 temp_f0;
    f32 temp_f0_10;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f0_9;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f24_3;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 temp_f2_5;
    f32 var_f0;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    f32 var_f28;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    s32 var_s2;
    void *var_s0;
    void *var_s1;
    void *var_s3;

    temp_f0 = arg1->unk0 - arg0->unk0;
    temp_f2 = arg1->unk4 - arg0->unk4;
    temp_f14 = arg1->unk8 - arg0->unk8;
    temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
    var_f28 = temp_f0_2;
    if (temp_f0_2 == 0.0f) {
        arg4->unk0 = arg0->unk0;
        arg4->unk4 = arg0->unk4;
        arg4->unk8 = arg0->unk8;
        return 0;
    }
    sp144.unk0 = arg0->unk0;
    var_s1 = arg2;
    sp144.unk4 = arg0->unk4;
    var_s3 = arg2;
    var_s0 = arg2;
    sp144.unk8 = arg0->unk8;
    sp138.unk0 = arg1->unk0;
    sp138.unk4 = arg1->unk4;
    sp138.unk8 = arg1->unk8;
    sp108 = 0;
    var_f14 = arg2->unk4;
    var_f12 = arg2->unkC;
    var_f2 = arg2->unk8;
    var_f16 = arg2->unk0;
loop_3:
    sp13C = -((var_f16 * sp138) + (var_f2 * sp140) + var_f12) / var_f14;
    if (func_80104520(var_f12, var_f14, &sp144, &sp138, var_s1, var_s3, 0, &sp12C, &sp128, &sp118, &sp110) != 0) {
        temp_f0_3 = sp12C - sp144;
        temp_f20 = sp130 - sp148;
        temp_f24 = sp134 - sp14C;
        temp_f0_4 = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f20 * temp_f20) + (temp_f24 * temp_f24));
        spF8 = temp_f0_4;
        if (var_f28 <= temp_f0_4) {
            temp_f2_2 = var_f28 / temp_f0_4;
            arg4->unk0 = (temp_f0_3 * temp_f2_2) + sp144;
            arg4->unk4 = (temp_f20 * temp_f2_2) + sp148;
            arg4->unk8 = (temp_f24 * temp_f2_2) + sp14C;
            if (sp108 != 0) {
                *arg6 = var_s0;
                *arg7 = sp114;
                *arg8 = sp10C;
            }
            return 0;
        }
        temp_f12 = sp128->unk4;
        if (temp_f12 < 0.0f) {
            var_f2_2 = -temp_f12;
        } else {
            var_f2_2 = temp_f12;
        }
        if (var_f2_2 <= 0.5f) {
            temp_f0_5 = sp138 - sp144;
            temp_f20_2 = sp13C - sp148;
            temp_f24_2 = sp140 - sp14C;
            spE4.unk0 = sp144.unk0;
            spE4.unk8 = sp144.unk8;
            spE4.unk4 = sp144.unk4;
            temp_f2_3 = 10.0f / sqrtf((temp_f0_5 * temp_f0_5) + (temp_f20_2 * temp_f20_2) + (temp_f24_2 * temp_f24_2));
            spD8 = (temp_f0_5 * temp_f2_3) + sp138;
            temp_f12_2 = (temp_f20_2 * temp_f2_3) + sp13C + arg3;
            spE0 = (temp_f24_2 * temp_f2_3) + sp140;
            spDC = temp_f12_2;
            spE8 += arg3;
            if (func_8010423C(temp_f12_2, arg3, &spE4, &spD8, 0, 0, 0, &spF0, 0, 0) != 0) {
                temp_f0_6 = (spF0->unk0 * sp12C) + (spF0->unk4 * sp130) + (spF0->unk8 * sp134) + spF0->unkC;
                if (temp_f0_6 < 0.0f) {
                    var_f2_3 = -temp_f0_6;
                } else {
                    var_f2_3 = temp_f0_6;
                }
                if (var_f2_3 < 1.0f) {
                    arg4->unk0 = sp12C.unk0;
                    arg4->unk4 = sp12C.unk4;
                    arg4->unk8 = sp12C.unk8;
                    *arg5 = var_f28 - spF8;
                    if (sp108 != 0) {
                        *arg6 = var_s0;
                        *arg7 = sp114;
                        *arg8 = sp10C;
                    }
                    return 1;
                }
                goto block_20;
            }
block_20:
            var_s2 = 0;
            temp_f2_4 = 1.0f / sqrtf((temp_f0_5 * temp_f0_5) + (temp_f24_2 * temp_f24_2));
            if (arg3 > 0.0f) {
                var_f0 = 10.0f;
            } else {
                var_f0 = -10.0f;
            }
            spC8 = sp130 + var_f0;
            temp_f12_3 = (temp_f0_5 * temp_f2_4) + sp12C;
            temp_f14_2 = (temp_f24_2 * temp_f2_4) + sp134;
            spB8 = temp_f12_3;
            spC4 = temp_f12_3;
            spC0 = temp_f14_2;
            spCC = temp_f14_2;
            spBC = sp130 - var_f0;
            if (func_80103EA0(temp_f12_3, temp_f14_2, &spC4, &spB8, 0, 0, 0, &spF0, 0, 0) != 0) {
                temp_f0_7 = (spF0->unk0 * sp12C) + (spF0->unk4 * sp130) + (spF0->unk8 * sp134) + spF0->unkC;
                if (temp_f0_7 < 0.0f) {
                    var_f2_4 = -temp_f0_7;
                } else {
                    var_f2_4 = temp_f0_7;
                }
                if (var_f2_4 < 1.0f) {
                    var_s2 = 1;
                }
            }
            if (var_s2 == 0) {
                arg4->unk0 = sp12C.unk0;
                arg4->unk4 = sp12C.unk4;
                arg4->unk8 = sp12C.unk8;
                *arg5 = var_f28 - spF8;
                if (sp108 != 0) {
                    *arg6 = var_s0;
                    *arg7 = sp114;
                    *arg8 = sp10C;
                }
                return 2;
            }
            if ((var_s0 != var_s1) && ((temp_f0_8 = var_s1->unk0, temp_f16 = var_s0->unk0, (temp_f0_8 != temp_f16)) || (var_s1->unk4 != var_s0->unk4) || (var_s1->unk8 != var_s0->unk8) || (var_s1->unkC != var_s0->unkC)) && ((-var_s1->unkC != var_s0->unkC) || (((temp_f16 * temp_f0_8) + (var_s0->unk4 * var_s1->unk4) + (var_s0->unk8 * var_s1->unk8)) != -1.0f))) {
                var_s3 = var_s1;
            }
            var_s1 = sp128;
            var_f16 = var_s0->unk0;
            var_f2 = var_s0->unk8;
            var_f12 = var_s0->unkC;
            var_f14 = var_s0->unk4;
            goto loop_3;
        }
        var_s3 = var_s0;
        sp144.unk0 = sp12C.unk0;
        sp144.unk4 = sp12C.unk4;
        var_f28 -= temp_f0_4;
        sp144.unk8 = sp12C.unk8;
        var_s0 = sp128;
        sp108 = 1;
        sp114 = sp118;
        sp10C = sp110;
        var_s1 = var_s0;
        var_f14 = var_s0->unk4;
        var_f12 = var_s0->unkC;
        var_f2 = var_s0->unk8;
        var_f16 = var_s0->unk0;
        goto loop_3;
    }
    temp_f0_9 = sp138 - sp144;
    temp_f22 = sp13C - sp148;
    temp_f24_3 = sp140 - sp14C;
    temp_f0_10 = sqrtf((temp_f0_9 * temp_f0_9) + (temp_f22 * temp_f22) + (temp_f24_3 * temp_f24_3));
    if (var_f28 <= temp_f0_10) {
        temp_f2_5 = var_f28 / temp_f0_10;
        arg4->unk0 = (temp_f0_9 * temp_f2_5) + sp144;
        arg4->unk4 = (temp_f22 * temp_f2_5) + sp148;
        arg4->unk8 = (temp_f24_3 * temp_f2_5) + sp14C;
    } else {
        arg4->unk0 = sp138.unk0;
        arg4->unk4 = sp138.unk4;
        arg4->unk8 = sp138.unk8;
    }
    if (sp108 != 0) {
        *arg6 = var_s0;
        *arg7 = sp114;
        *arg8 = sp10C;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108078.s")
#endif

#ifdef MIPS_TO_C

s32 func_80108858(void *arg0, void *arg1, void *arg2, f32 arg3) {
    f32 sp11C;
    f32 sp114;
    f32 sp110;
    f32 sp104;
    void *sp100;
    f32 spDC;
    ? spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    void *spC4;
    f32 spBC;
    f32 spB8;
    f32 spB4;
    f32 spB0;
    f32 spAC;
    f32 spA8;
    void *sp9C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f0_5;
    f32 temp_f0_6;
    f32 temp_f0_7;
    f32 temp_f0_8;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f12_3;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f14_3;
    f32 temp_f16;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f2_3;
    f32 temp_f2_4;
    f32 var_f0;
    f32 var_f12;
    f32 var_f14;
    f32 var_f16;
    f32 var_f2;
    f32 var_f2_2;
    f32 var_f2_3;
    f32 var_f2_4;
    f32 var_f30;
    s32 var_s2;
    void *var_s0;
    void *var_s1;
    void *var_s3;

    temp_f0 = arg1->unk0 - arg0->unk0;
    temp_f2 = arg1->unk4 - arg0->unk4;
    temp_f14 = arg1->unk8 - arg0->unk8;
    temp_f0_2 = sqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
    var_f30 = temp_f0_2;
    if (temp_f0_2 == 0.0f) {
        goto block_37;
    }
    sp11C.unk0 = arg0->unk0;
    var_s1 = arg2;
    sp11C.unk4 = arg0->unk4;
    var_s3 = arg2;
    var_s0 = arg2;
    sp11C.unk8 = arg0->unk8;
    sp110.unk0 = arg1->unk0;
    sp110.unk4 = arg1->unk4;
    sp110.unk8 = arg1->unk8;
    var_f14 = arg2->unk4;
    var_f12 = arg2->unkC;
    var_f2 = arg2->unk8;
    var_f16 = arg2->unk0;
loop_3:
    sp114 = -((var_f16 * sp110) + (var_f2 * sp118) + var_f12) / var_f14;
    if (func_80104520(var_f12, var_f14, &sp11C, &sp110, var_s1, var_s3, 0, &sp104, &sp100, 0, 0) != 0) {
        temp_f0_3 = sp104 - sp11C;
        temp_f2_2 = sp108 - sp120;
        temp_f14_2 = sp10C - sp124;
        temp_f0_4 = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_2 * temp_f2_2) + (temp_f14_2 * temp_f14_2));
        if (var_f30 <= temp_f0_4) {
            goto block_37;
        }
        temp_f12 = sp100->unk4;
        if (temp_f12 < 0.0f) {
            var_f2_2 = -temp_f12;
        } else {
            var_f2_2 = temp_f12;
        }
        if (var_f2_2 <= 0.5f) {
            temp_f0_5 = sp110 - sp11C;
            temp_f24 = sp114 - sp120;
            temp_f22 = sp118 - sp124;
            spD8.unk0 = sp11C.unk0;
            spD8.unk8 = sp11C.unk8;
            spD8.unk4 = sp11C.unk4;
            temp_f2_3 = 10.0f / sqrtf((temp_f0_5 * temp_f0_5) + (temp_f24 * temp_f24) + (temp_f22 * temp_f22));
            spCC = (temp_f0_5 * temp_f2_3) + sp104;
            temp_f12_2 = (temp_f24 * temp_f2_3) + sp108 + arg3;
            spD4 = (temp_f22 * temp_f2_3) + sp10C;
            spD0 = temp_f12_2;
            spDC += arg3;
            if (func_8010423C(temp_f12_2, arg3, &spD8, &spCC, 0, 0, 0, &spC4, 0, 0) != 0) {
                temp_f0_6 = (spC4->unk0 * sp104) + (spC4->unk4 * sp108) + (spC4->unk8 * sp10C) + spC4->unkC;
                if (temp_f0_6 < 0.0f) {
                    var_f2_3 = -temp_f0_6;
                } else {
                    var_f2_3 = temp_f0_6;
                }
                if (var_f2_3 < 1.0f) {
                    return 1;
                }
                goto block_16;
            }
block_16:
            var_s2 = 0;
            temp_f2_4 = 1.0f / sqrtf((temp_f0_5 * temp_f0_5) + (temp_f22 * temp_f22));
            if (arg3 > 0.0f) {
                var_f0 = 10.0f;
            } else {
                var_f0 = -10.0f;
            }
            spB8 = sp108 + var_f0;
            temp_f12_3 = (temp_f0_5 * temp_f2_4) + sp104;
            temp_f14_3 = (temp_f22 * temp_f2_4) + sp10C;
            spA8 = temp_f12_3;
            spB4 = temp_f12_3;
            spB0 = temp_f14_3;
            spBC = temp_f14_3;
            spAC = sp108 - var_f0;
            if (func_80103EA0(temp_f12_3, temp_f14_3, &spB4, &spA8, 0, 0, 0, &sp9C, 0, 0) != 0) {
                temp_f0_7 = (sp9C->unk0 * sp104) + (sp9C->unk4 * sp108) + (sp9C->unk8 * sp10C) + sp9C->unkC;
                if (temp_f0_7 < 0.0f) {
                    var_f2_4 = -temp_f0_7;
                } else {
                    var_f2_4 = temp_f0_7;
                }
                if (var_f2_4 < 1.0f) {
                    var_s2 = 1;
                }
            }
            if (var_s2 == 0) {
                return 2;
            }
            if ((var_s0 != var_s1) && ((temp_f0_8 = var_s1->unk0, temp_f16 = var_s0->unk0, (temp_f0_8 != temp_f16)) || (var_s1->unk4 != var_s0->unk4) || (var_s1->unk8 != var_s0->unk8) || (var_s1->unkC != var_s0->unkC)) && ((-var_s1->unkC != var_s0->unkC) || (((temp_f16 * temp_f0_8) + (var_s0->unk4 * var_s1->unk4) + (var_s0->unk8 * var_s1->unk8)) != -1.0f))) {
                var_s3 = var_s1;
            }
            var_s1 = sp100;
            var_f16 = var_s0->unk0;
            var_f2 = var_s0->unk8;
            var_f12 = var_s0->unkC;
            var_f14 = var_s0->unk4;
            goto loop_3;
        }
        var_s3 = var_s0;
        sp11C.unk0 = sp104.unk0;
        sp11C.unk4 = sp104.unk4;
        var_f30 -= temp_f0_4;
        sp11C.unk8 = sp104.unk8;
        var_s0 = sp100;
        var_s1 = var_s0;
        var_f16 = var_s0->unk0;
        var_f2 = var_s0->unk8;
        var_f12 = var_s0->unkC;
        var_f14 = var_s0->unk4;
        goto loop_3;
    }
block_37:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108858.s")
#endif

#ifdef MIPS_TO_C

s32 func_80108E08(void *arg0, void *arg1) {
    void *spB4;
    s32 spB0;
    f32 spAC;
    f32 spA8;
    f32 spA4;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp84;
    ? sp80;
    s32 sp7C;
    s32 sp78;
    f32 sp74;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp3C;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f4;
    f32 temp_f8;
    f32 var_f12;
    f32 var_f14;
    s32 temp_v0;
    s32 var_t0;
    s32 var_v1;

    spB4 = arg1->unkC;
    spB0 = arg1->unk8;
    sp7C = arg1->unk4;
    spA4 = arg0->unk4;
    spA8 = arg0->unk8 + arg0->unk18;
    spAC = arg0->unkC;
    sp80.unk0 = spA4.unk0;
    sp80.unk4 = spA4.unk4;
    sp80.unk8 = spA4.unk8;
    if (!((arg1->unk0 >> 0x13) & 0x200)) {
        temp_f0 = -((spB4->unk0 * spA4) + (spB4->unk8 * spAC) + spB4->unkC) / spB4->unk4;
        if (spA8 < temp_f0) {
            sp84 = temp_f0;
        }
    }
    sp78 = 1;
    temp_v0 = func_80108078(&D_8012BD34, &sp80, arg1->unkC, 0x3F800000, &sp98, &sp74, &spB4, &spB0, &sp7C);
    var_t0 = sp78;
    switch (temp_v0) {                              /* irregular */
        case 0:
            if (sp9C < spA8) {
                arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xF1FF) * 8) | (arg1->unk0 & 7);
                return 0;
            }
            sp8C.unk0 = sp98.unk0;
            sp8C.unk4 = sp98.unk4;
            sp8C.unk8 = sp98.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xF1FF) | 0x200) * 8) | (arg1->unk0 & 7);
        default:
block_19:
            arg1->unkC = spB4;
            arg1->unk8 = spB0;
            arg1->unk4 = sp7C;
            arg0->unk4 = sp8C;
            arg0->unk8 = (sp90 - arg0->unk18) + 0.1f;
            arg0->unkC = sp94;
            return var_t0;
        case 1:
            sp8C.unk0 = sp98.unk0;
            sp8C.unk4 = sp98.unk4;
            sp8C.unk8 = sp98.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xF1FF) | 0x200) * 8) | (arg1->unk0 & 7);
            goto block_19;
        case 2:
            temp_f2 = spA4 - D_8012BD00.unk34;
            temp_f14 = spA8 - D_8012BD00.unk38;
            sp64 = temp_f2;
            temp_f16 = spAC - D_8012BD00.unk3C;
            sp68 = temp_f14;
            sp6C = temp_f16;
            temp_f10 = sp74 / sqrtf((temp_f2 * temp_f2) + (temp_f14 * temp_f14) + (temp_f16 * temp_f16));
            sp74 = temp_f10;
            temp_f4 = (temp_f2 * temp_f10) + sp98;
            temp_f8 = (temp_f14 * temp_f10) + sp9C;
            sp8C = temp_f4;
            sp90 = temp_f8;
            sp94 = (temp_f16 * temp_f10) + spA0;
            sp38 = sp98;
            sp3C = temp_f8;
            temp_f12 = -((spB4->unk0 * temp_f4) + (spB4->unk8 * sp94) + spB4->unkC) / spB4->unk4;
            if (sp3C <= temp_f12) {
                temp_f0_2 = temp_f4 - sp38;
                sp90 = temp_f12;
                temp_f2_2 = sp94 - spA0;
                var_v1 = 0x800;
                if (((temp_f0_2 * D_8012BD00.unk14) + (temp_f2_2 * D_8012BD00.unk18)) >= 0.0f) {
                    var_f12 = D_8012BD00.unk2C;
                    var_f14 = D_8012BD00.unk30;
                    var_v1 = 0x400;
                } else {
                    var_f12 = D_8012BD00.unk24;
                    var_f14 = D_8012BD00.unk28;
                }
                if (((var_f12 * var_f12) + (var_f14 * var_f14)) < ((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2))) {
                    var_t0 = 0;
                } else {
                    arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xF1FF) | var_v1) * 8) | (arg1->unk0 & 7);
                }
                goto block_19;
            }
            arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xF1FF) * 8) | (arg1->unk0 & 7);
            return 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108E08.s")
#endif

#ifdef MIPS_TO_C
void func_80109240(s32 arg0, ? arg1) {

}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109240.s")
#endif

#ifdef MIPS_TO_C

void func_8010924C(void *arg0, void *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    void *temp_v1;

    temp_v0 = arg1->unk0 >> 0x13;
    if (temp_v0 & 0x200) {
        arg0->unk4 = D_8012BD00.unk34;
        arg0->unk8 = (D_8012BD00.unk38 - arg0->unk18) + 0.1f;
        arg0->unkC = D_8012BD00.unk3C;
        return;
    }
    temp_v1 = arg1->unkC;
    temp_f0 = (-((temp_v1->unk0 * arg0->unk4) + (temp_v1->unk8 * arg0->unkC) + temp_v1->unkC) / temp_v1->unk4) - arg0->unk18;
    if (arg0->unk8 < temp_f0) {
        arg0->unk8 = temp_f0 + 0.1f;
        return;
    }
    arg1->unk0 = ((temp_v0 & 0xF1FF) * 8) | (arg1->unk0 & 7);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010924C.s")
#endif

#ifdef MIPS_TO_C

void func_80109318(void *arg0, void *arg1) {
    void *sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 temp_f0;
    s16 var_t4;
    void *temp_v0;

    temp_v0 = arg1->unk18;
    sp2C = arg0->unk4 + D_8012BD00.unk4;
    sp30 = arg0->unk8 + arg0->unk10;
    sp34 = arg0->unkC + D_8012BD00.unk8;
    sp38 = arg0->unk4 + D_8012BD00.unkC;
    sp40 = arg0->unkC + D_8012BD00.unk10;
    temp_f0 = 1.0f / temp_v0->unk4;
    sp3C = (temp_v0->unk0 * (sp2C - sp38)) + (temp_v0->unk8 * (sp34 - sp40) * temp_f0) + sp30;
    sp44 = temp_f0;
    sp4C = temp_v0;
    func_801057C4(arg1->unk24, &sp2C, &sp38, &sp20);
    if ((((sp2C - sp20) * D_8012BD00.unk14) + ((sp34 - sp28) * D_8012BD00.unk18)) < 0.0f) {
        var_t4 = (((arg1->unk0 >> 0x13) & 0xFFF8) * 8) | (arg1->unk0 & 7);
    } else {
        arg0->unk4 = sp20 - D_8012BD00.unk24;
        arg0->unkC = sp28 - D_8012BD00.unk28;
        arg0->unk8 = ((-((sp4C->unk0 * arg0->unk4) + (sp4C->unk8 * arg0->unkC) + sp4C->unkC) * sp44) - arg0->unk14) - 0.1f;
        var_t4 = ((((arg1->unk0 >> 0x13) & 0xFFF8) | 1) * 8) | (arg1->unk0 & 7);
    }
    arg1->unk0 = var_t4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109318.s")
#endif

#ifdef MIPS_TO_C

void func_80109504(void *arg0, void *arg1) {
    void *sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 temp_f0;
    s16 var_t4;
    void *temp_v0;

    temp_v0 = arg1->unk18;
    sp38 = arg0->unk4 + D_8012BD00.unkC;
    sp3C = arg0->unk8 + arg0->unk10;
    sp40 = arg0->unkC + D_8012BD00.unk10;
    sp2C = arg0->unk4 + D_8012BD00.unk4;
    sp34 = arg0->unkC + D_8012BD00.unk8;
    temp_f0 = 1.0f / temp_v0->unk4;
    sp30 = (temp_v0->unk0 * (sp38 - sp2C)) + (temp_v0->unk8 * (sp40 - sp34) * temp_f0) + sp3C;
    sp44 = temp_f0;
    sp4C = temp_v0;
    func_801057C4(arg1->unk30, &sp2C, &sp38, &sp20);
    if ((((sp38 - sp20) * D_8012BD00.unk1C) + ((sp40 - sp28) * D_8012BD00.unk20)) < 0.0f) {
        var_t4 = (((arg1->unk0 >> 0x13) & 0xFFC7) * 8) | (arg1->unk0 & 7);
    } else {
        arg0->unk4 = sp20 - D_8012BD00.unk2C;
        arg0->unkC = sp28 - D_8012BD00.unk30;
        arg0->unk8 = ((-((sp4C->unk0 * arg0->unk4) + (sp4C->unk8 * arg0->unkC) + sp4C->unkC) * sp44) - arg0->unk14) - 0.1f;
        var_t4 = ((((arg1->unk0 >> 0x13) & 0xFFC7) | 8) * 8) | (arg1->unk0 & 7);
    }
    arg1->unk0 = var_t4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109504.s")
#endif

#ifdef MIPS_TO_C

void func_801096F0(s32 arg0, u32 *arg1) {
    if ((*arg1 >> 0x13) & 0x1C0) {
        if ((func_80105284() != 0) || (func_80105530(arg0, arg1) != 0)) {
            func_80109318(arg0, arg1);
        }
        if ((func_801063F0(arg0, arg1) != 0) || (func_8010669C(arg0, arg1) != 0)) {
            func_80109504(arg0, arg1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801096F0.s")
#endif

#ifdef MIPS_TO_C

void func_80109784(void *arg0, void *arg1) {
    void *sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 temp_f0;
    s16 var_t4;
    void *temp_v0;

    temp_v0 = arg1->unkC;
    sp2C = arg0->unk4 + D_8012BD00.unk4;
    sp30 = arg0->unk8 + arg0->unk10;
    sp34 = arg0->unkC + D_8012BD00.unk8;
    sp38 = arg0->unk4 + D_8012BD00.unkC;
    sp40 = arg0->unkC + D_8012BD00.unk10;
    temp_f0 = 1.0f / temp_v0->unk4;
    sp3C = (temp_v0->unk0 * (sp2C - sp38)) + (temp_v0->unk8 * (sp34 - sp40) * temp_f0) + sp30;
    sp44 = temp_f0;
    sp4C = temp_v0;
    func_801057C4(arg1->unk24, &sp2C, &sp38, &sp20);
    if ((((sp2C - sp20) * D_8012BD00.unk14) + ((sp34 - sp28) * D_8012BD00.unk18)) < 0.0f) {
        var_t4 = (((arg1->unk0 >> 0x13) & 0xFFF8) * 8) | (arg1->unk0 & 7);
    } else {
        arg0->unk4 = sp20 - D_8012BD00.unk24;
        arg0->unkC = sp28 - D_8012BD00.unk28;
        arg0->unk8 = ((-((sp4C->unk0 * arg0->unk4) + (sp4C->unk8 * arg0->unkC) + sp4C->unkC) * sp44) - arg0->unk18) + 0.1f;
        var_t4 = ((((arg1->unk0 >> 0x13) & 0xFFF8) | 1) * 8) | (arg1->unk0 & 7);
    }
    arg1->unk0 = var_t4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109784.s")
#endif

#ifdef MIPS_TO_C

void func_80109970(void *arg0, void *arg1) {
    void *sp4C;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;
    f32 sp2C;
    f32 sp20;
    f32 temp_f0;
    s16 var_t4;
    void *temp_v0;

    temp_v0 = arg1->unkC;
    sp38 = arg0->unk4 + D_8012BD00.unkC;
    sp3C = arg0->unk8 + arg0->unk10;
    sp40 = arg0->unkC + D_8012BD00.unk10;
    sp2C = arg0->unk4 + D_8012BD00.unk4;
    sp34 = arg0->unkC + D_8012BD00.unk8;
    temp_f0 = 1.0f / temp_v0->unk4;
    sp30 = (temp_v0->unk0 * (sp38 - sp2C)) + (temp_v0->unk8 * (sp40 - sp34) * temp_f0) + sp3C;
    sp44 = temp_f0;
    sp4C = temp_v0;
    func_801057C4(arg1->unk30, &sp2C, &sp38, &sp20);
    if ((((sp38 - sp20) * D_8012BD00.unk1C) + ((sp40 - sp28) * D_8012BD00.unk20)) < 0.0f) {
        var_t4 = (((arg1->unk0 >> 0x13) & 0xFFC7) * 8) | (arg1->unk0 & 7);
    } else {
        arg0->unk4 = sp20 - D_8012BD00.unk2C;
        arg0->unkC = sp28 - D_8012BD00.unk30;
        arg0->unk8 = ((-((sp4C->unk0 * arg0->unk4) + (sp4C->unk8 * arg0->unkC) + sp4C->unkC) * sp44) - arg0->unk18) + 0.1f;
        var_t4 = ((((arg1->unk0 >> 0x13) & 0xFFC7) | 8) * 8) | (arg1->unk0 & 7);
    }
    arg1->unk0 = var_t4;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109970.s")
#endif

#ifdef MIPS_TO_C

void func_80109B5C(s32 arg0, u32 *arg1) {
    if ((*arg1 >> 0x13) & 0xE00) {
        if ((func_80105284() != 0) || (func_80105530(arg0, arg1) != 0)) {
            func_80109784(arg0, arg1);
        }
        if ((func_801063F0(arg0, arg1) != 0) || (func_8010669C(arg0, arg1) != 0)) {
            func_80109970(arg0, arg1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109B5C.s")
#endif

#ifdef MIPS_TO_C

s32 func_80109BF0(void *arg0, void *arg1, s32 arg2) {
    s32 sp24;
    u32 sp20;
    u32 var_v1;

    sp24 = 0;
    D_8012BD44 = arg0->unk58;
    func_80105218(arg1);
    func_80104FB8(arg0);
    if (func_80105284(arg0, arg1) != 0) {
        func_801060C4(arg0, arg1);
    }
    if (func_801063F0(arg0, arg1) != 0) {
        func_80106930(arg0, arg1);
    }
    if (func_80106C5C(arg0, arg1) != 0) {
        func_801073C4(arg0, arg1);
        func_801096F0(arg0, arg1);
    }
    if (func_801078A0(arg0, arg1) != 0) {
        if (arg2 & 8) {
            sp24 = func_80108E08(arg0, arg1);
        } else {
            func_80109240(arg0, arg1);
        }
        func_80109B5C(arg0, arg1);
    }
    if (func_8010669C(arg0, arg1) != 0) {
        func_80106930(arg0, arg1);
    }
    if (func_80105530(arg0, arg1) != 0) {
        func_801060C4(arg0, arg1);
    }
    if (func_80107074(arg0, arg1) != 0) {
        func_801073C4(arg0, arg1);
    }
    var_v1 = arg1->unk0 >> 0x13;
    if (var_v1 != 0) {
        if ((var_v1 & 0xE00) && (arg1->unk4 != 0x14)) {
            sp20 = var_v1;
            func_80106C5C(arg0, arg1);
        }
        if ((var_v1 & 7) && (arg1->unk1C != 0x14)) {
            sp20 = var_v1;
            func_801063F0(arg0, arg1);
        }
        if ((var_v1 & 0x38) && (arg1->unk28 != 0x14)) {
            func_80105284(arg0, arg1);
        }
    }
    arg0->unk58 = D_8012BD40;
    return sp24;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109BF0.s")
#endif

#ifdef MIPS_TO_C

void func_80109DD8(void) {
    func_80109BF0(&D_8012BCA0, 8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109DD8.s")
#endif

#ifdef MIPS_TO_C

void func_80109E00(void) {
    s32 sp1C;
    s32 temp_t6;

    temp_t6 = D_8012D940;
    D_8012D940 = 0;
    sp1C = temp_t6;
    func_80109BF0(&D_8012BCA0, 8);
    D_8012D940 = sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109E00.s")
#endif

#ifdef MIPS_TO_C

s32 func_80109E44(void) {
    s32 temp_a0;
    u32 var_v1;

    D_8012BD00 |= 0x80;
    var_v1 = D_8012BCA0.unk0 >> 0x13;
    temp_a0 = func_80109BF0(&D_8012BCA0, 8, &D_8012BD00);
    D_8012BD00 &= 0xFF7F;
    if ((var_v1 & 7) && (D_8012BCA0.unk20->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFFF8) * 8) | (D_8012BCA0.unk0 & 7);
        var_v1 = D_8012BCA0.unk0 >> 0x13;
    }
    if ((var_v1 & 0x38) && (D_8012BCA0.unk2C->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFFC7) * 8) | (D_8012BCA0.unk0 & 7);
        var_v1 = D_8012BCA0.unk0 >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCA0.unk14->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFE3F) * 8) | (D_8012BCA0.unk0 & 7);
    }
    return temp_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109E44.s")
#endif

#ifdef MIPS_TO_C

void func_80109F60(void) {
    D_8012BD00 |= 0x80;
    func_80109BF0(&D_8012BCA0, 8);
    D_8012BD00 &= 0xFF7F;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109F60.s")
#endif

#ifdef MIPS_TO_C

void func_80109FAC(void *arg0, void *arg1) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp34;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;

    if ((arg1->unk0 >> 0x13) & 1) {
        arg0->unk4 = D_8012BD00.unk34 - D_8012BD00.unk24;
        arg0->unk8 = D_8012BD00.unk38 - arg0->unk10;
        arg0->unkC = D_8012BD00.unk3C - D_8012BD00.unk28;
        return;
    }
    sp4C = arg0->unk34;
    sp50 = arg0->unk2C;
    sp54 = arg0->unk38;
    sp40 = arg0->unk4 + D_8012BD00.unk24;
    sp44 = arg0->unk8 + arg0->unk10;
    sp48 = arg0->unkC + D_8012BD00.unk28;
    if (func_801057C4(arg1->unk24, &sp4C, &sp40, &sp34) != 0) {
        temp_f12 = sp34 - sp4C;
        temp_f14 = sp3C - sp54;
        temp_f0 = sp40 - sp4C;
        temp_f2 = sp48 - sp54;
        if (((temp_f12 * temp_f12) + (temp_f14 * temp_f14)) < ((temp_f0 * temp_f0) + (temp_f2 * temp_f2))) {
            arg0->unk4 = sp34 - D_8012BD00.unk24;
            arg0->unk8 = sp38 - arg0->unk10;
            arg0->unkC = sp3C - D_8012BD00.unk28;
            return;
        }
        arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFFF8) * 8) | (arg1->unk0 & 7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109FAC.s")
#endif

#ifdef MIPS_TO_C

void func_8010A138(void *arg0, void *arg1) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp34;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;

    if ((arg1->unk0 >> 0x13) & 8) {
        arg0->unk4 = D_8012BD00.unk34 - D_8012BD00.unk2C;
        arg0->unk8 = D_8012BD00.unk38 - arg0->unk10;
        arg0->unkC = D_8012BD00.unk3C - D_8012BD00.unk30;
        return;
    }
    sp4C = arg0->unk3C;
    sp50 = arg0->unk2C;
    sp54 = arg0->unk40;
    sp40 = arg0->unk4 + D_8012BD00.unk2C;
    sp44 = arg0->unk8 + arg0->unk10;
    sp48 = arg0->unkC + D_8012BD00.unk30;
    if (func_801057C4(arg1->unk30, &sp4C, &sp40, &sp34) != 0) {
        temp_f12 = sp34 - sp4C;
        temp_f14 = sp3C - sp54;
        temp_f0 = sp40 - sp4C;
        temp_f2 = sp48 - sp54;
        if (((temp_f12 * temp_f12) + (temp_f14 * temp_f14)) < ((temp_f0 * temp_f0) + (temp_f2 * temp_f2))) {
            arg0->unk4 = sp34 - D_8012BD00.unk2C;
            arg0->unk8 = sp38 - arg0->unk10;
            arg0->unkC = sp3C - D_8012BD00.unk30;
            return;
        }
        arg1->unk0 = (((arg1->unk0 >> 0x13) & 0xFFC7) * 8) | (arg1->unk0 & 7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010A138.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010A2C4(void *arg0, void *arg1) {
    f32 spA0;
    f32 sp9C;
    f32 sp98;
    f32 sp94;
    f32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp74;
    f32 sp68;
    void *sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    f32 sp54;
    s32 sp50;
    f32 sp4C;
    s32 sp48;
    f32 sp44;
    s32 sp40;
    f32 sp3C;
    f32 temp_f10;
    f32 temp_f18;
    f32 temp_f4;
    s32 var_s1;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t1_3;
    s32 var_t1_4;
    s32 var_t1_5;
    s32 var_v0;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_v0;

    sp98 = arg0->unk28;
    sp9C = arg0->unk48;
    spA0 = arg0->unk30;
    func_80112A40(arg0->unk50, &sp98, &sp68);
    sp8C = sp98 + sp68;
    sp90 = (sp9C + sp6C) - 0.13f;
    sp94 = spA0 + sp70;
    sp58 = 0;
    sp80 = 0.0f;
    sp88 = 0.0f;
    sp84 = -1.0f;
    var_t1 = sp58;
    if (func_801039E8(&sp98, &sp8C, &sp80, 0, &D_8012BD34, arg1 + 0xC, arg1 + 8, arg1 + 4) != 0) {
        var_t1 = 0x200;
        sp54 = D_8012BD00.unk38;
    }
    sp98 = arg0->unk34;
    spA0 = arg0->unk38;
    sp8C = sp98 + sp68;
    sp94 = spA0 + sp70;
    sp58 = var_t1;
    var_t1_2 = sp58;
    if (func_801039E8(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_t0 = 0;
        if (var_t1_2 == 0) {
            var_t0 = 1;
            sp4C = -((sp64->unk0 * (sp74 - D_8012BD00.unk4)) + (sp64->unk8 * (sp7C - D_8012BD00.unk8)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2 = arg1->unkC;
            if (sp64 != temp_a2) {
                temp_f10 = -((sp64->unk0 * (sp74 - D_8012BD00.unk4)) + (sp64->unk8 * (sp7C - D_8012BD00.unk8)) + sp64->unkC) / sp64->unk4;
                sp4C = temp_f10;
                if (sp54 < temp_f10) {
                    sp50 = 0;
                    var_t0 = sp50;
                    var_t1_2 = sp58;
                    if (func_80108858(&D_8012BD34, &sp74, temp_a2, 0x3F800000) != 0) {
                        var_t0 = 1;
                    }
                }
            }
        }
        if (var_t0 != 0) {
            D_8012BD34.unk0 = sp74.unk0;
            D_8012BD34.unk4 = sp74.unk4;
            var_t1_2 = 0x800;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
            sp54 = sp4C;
        }
    }
    sp98 = arg0->unk3C;
    spA0 = arg0->unk40;
    sp8C = sp98 + sp68;
    sp94 = spA0 + sp70;
    sp58 = var_t1_2;
    var_t1_3 = sp58;
    if (func_801039E8(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_t0_2 = 0;
        if (var_t1_3 == 0) {
            var_t0_2 = 1;
            sp44 = -((sp64->unk0 * (sp74 - D_8012BD00.unkC)) + (sp64->unk8 * (sp7C - D_8012BD00.unk10)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2_2 = arg1->unkC;
            if (sp64 != temp_a2_2) {
                temp_f18 = -((sp64->unk0 * (sp74 - D_8012BD00.unkC)) + (sp64->unk8 * (sp7C - D_8012BD00.unk10)) + sp64->unkC) / sp64->unk4;
                sp44 = temp_f18;
                if (sp54 < temp_f18) {
                    sp48 = 0;
                    var_t0_2 = sp48;
                    var_t1_3 = sp58;
                    if (func_80108858(&D_8012BD34, &sp74, temp_a2_2, 0x3F800000) != 0) {
                        var_t0_2 = 1;
                    }
                }
            }
        }
        if (var_t0_2 != 0) {
            D_8012BD34.unk0 = sp74.unk0;
            D_8012BD34.unk4 = sp74.unk4;
            var_t1_3 = 0x400;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
            sp54 = sp44;
        }
    }
    temp_v0 = arg0 + 0x10;
    sp98 = arg0->unk4 + D_8012BD00.unk4;
    sp9C = arg0->unk8 + temp_v0->unk4;
    sp8C = sp98;
    spA0 = arg0->unkC + D_8012BD00.unk8;
    sp58 = var_t1_3;
    sp90 = arg0->unk8 + temp_v0->unk8;
    sp94 = spA0;
    var_t1_4 = sp58;
    if (func_80103EA0(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_t0_3 = 0;
        if (var_t1_4 == 0) {
            var_t0_3 = 1;
            sp3C = -((sp64->unk0 * (sp74 - D_8012BD00.unk4)) + (sp64->unk8 * (sp7C - D_8012BD00.unk8)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2_3 = arg1->unkC;
            if (sp64 != temp_a2_3) {
                temp_f4 = -((sp64->unk0 * (sp74 - D_8012BD00.unk4)) + (sp64->unk8 * (sp7C - D_8012BD00.unk8)) + sp64->unkC) / sp64->unk4;
                sp3C = temp_f4;
                if (sp54 < temp_f4) {
                    sp40 = 0;
                    var_t0_3 = sp40;
                    var_t1_4 = sp58;
                    if (func_80108858(&D_8012BD34, &sp74, temp_a2_3, 0x3F800000) != 0) {
                        var_t0_3 = 1;
                    }
                }
            }
        }
        if (var_t0_3 != 0) {
            D_8012BD34.unk0 = sp74.unk0;
            D_8012BD34.unk4 = sp74.unk4;
            var_t1_4 = 0x800;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
            sp54 = sp3C;
        }
    }
    sp98 = arg0->unk4 + D_8012BD00.unkC;
    sp58 = var_t1_4;
    spA0 = arg0->unkC + D_8012BD00.unk10;
    sp8C = sp98;
    sp94 = spA0;
    var_t1_5 = sp58;
    if (func_80103EA0(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_s1 = 0;
        if (var_t1_5 == 0) {
            goto block_35;
        }
        temp_a2_4 = arg1->unkC;
        if ((sp64 != temp_a2_4) && (sp54 < (-((sp64->unk0 * (sp74 - D_8012BD00.unkC)) + (sp64->unk8 * (sp7C - D_8012BD00.unk10)) + sp64->unkC) / sp64->unk4))) {
            var_t1_5 = sp58;
            if (func_80108858(&D_8012BD34, &sp74, temp_a2_4, 0x3F800000) != 0) {
block_35:
                var_s1 = 1;
            }
        }
        if (var_s1 != 0) {
            D_8012BD34.unk0 = sp74.unk0;
            D_8012BD34.unk4 = sp74.unk4;
            var_t1_5 = 0x400;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
        }
    }
    var_v0 = 0;
    if (var_t1_5 != 0) {
        var_v0 = 1;
        arg1->unk0 = (((arg1->unk0 >> 0x13) | var_t1_5) * 8) | (arg1->unk0 & 7);
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010A2C4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010AA80(void *arg0, ? arg1) {
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 sp30;

    sp30 = 0.0f;
    sp38 = 0.0f;
    sp34 = -1.0f;
    sp48 = arg0->unk4;
    sp4C = arg0->unk8 + arg0->unk18;
    sp50 = arg0->unkC;
    sp40 = sp4C - 0.13f;
    sp3C = sp48;
    sp44 = sp50;
    if (func_80103EA0(&sp48, &sp3C, &sp30, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp48 = arg0->unk4 + D_8012BD00.unk4;
    sp4C = arg0->unk8 + arg0->unk14;
    sp3C = sp48;
    sp50 = arg0->unkC + D_8012BD00.unk8;
    sp44 = sp50;
    if (func_80103EA0(&sp48, &sp3C, &sp30, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp48 = arg0->unk4 + D_8012BD00.unkC;
    sp50 = arg0->unkC + D_8012BD00.unk10;
    sp3C = sp48;
    sp44 = sp50;
    if (func_80103EA0(&sp48, &sp3C, &sp30, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010AA80.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010AC1C(void *arg0, void *arg1) {
    void *sp94;
    s32 sp90;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp78;
    f32 sp70;
    f32 sp6C;
    s32 sp68;
    s32 sp64;
    ? sp60;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f4;
    f32 var_f12;
    f32 var_f14;
    s32 temp_v0;
    s32 var_t0;
    s32 var_v1;
    void *temp_t6;

    temp_t6 = arg1->unkC;
    sp94 = temp_t6;
    sp90 = arg1->unk8;
    sp68 = arg1->unk4;
    temp_f4 = arg0->unk4;
    sp84 = temp_f4;
    sp88 = arg0->unk8 + arg0->unk18;
    sp8C = arg0->unkC;
    if (!((arg1->unk0 >> 0x13) & 0x200)) {
        temp_f0 = -((temp_t6->unk0 * temp_f4) + (temp_t6->unk8 * sp8C) + temp_t6->unkC) / temp_t6->unk4;
        if (sp88 < temp_f0) {
            sp88 = temp_f0;
        }
    }
    sp64 = 1;
    temp_v0 = func_80108078(&D_8012BD34, &sp84, arg1->unkC, 0x3F800000, &sp78, &sp60, &sp94, &sp90, &sp68);
    var_t0 = sp64;
    switch (temp_v0) {                              /* irregular */
        case 0:
        case 1:
            sp6C.unk0 = sp78.unk0;
            sp6C.unk4 = sp78.unk4;
            sp6C.unk8 = sp78.unk8;
            arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xF1FF) | 0x200) * 8) | (arg1->unk0 & 7);
            break;
        case 2:
            sp6C.unk0 = sp84.unk0;
            var_v1 = 0x800;
            sp6C.unk4 = sp84.unk4;
            sp6C.unk8 = sp84.unk8;
            temp_f0_2 = sp6C - sp78;
            temp_f2 = sp74 - sp80;
            sp70 = -((sp94->unk0 * sp6C) + (sp94->unk8 * sp74) + sp94->unkC) / sp94->unk4;
            if (((temp_f0_2 * D_8012BD00.unk14) + (temp_f2 * D_8012BD00.unk18)) >= 0.0f) {
                var_f12 = D_8012BD00.unkC;
                var_f14 = D_8012BD00.unk10;
                var_v1 = 0x400;
            } else {
                var_f12 = D_8012BD00.unk4;
                var_f14 = D_8012BD00.unk8;
            }
            if (((var_f12 * var_f12) + (var_f14 * var_f14)) < ((temp_f0_2 * temp_f0_2) + (temp_f2 * temp_f2))) {
                var_t0 = 0;
            } else {
                arg1->unk0 = ((((arg1->unk0 >> 0x13) & 0xF1FF) | var_v1) * 8) | (arg1->unk0 & 7);
            }
            break;
    }
    arg1->unkC = sp94;
    arg1->unk8 = sp90;
    arg1->unk4 = sp68;
    arg0->unk4 = sp6C;
    arg0->unk8 = (sp70 - arg0->unk18) + 0.1f;
    arg0->unkC = sp74;
    return var_t0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010AC1C.s")
#endif

#ifdef MIPS_TO_C
s32 func_8010AEE0(s32 arg0, ? arg1) {
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010AEE0.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010AEF0(void *arg0, void *arg1, s32 arg2) {
    s32 sp84;
    u32 sp24;
    s32 var_v0;

    sp84 = 0;
    D_8012BD44 = arg0->unk58;
    func_80105218(arg1);
    func_80104FB8(arg0);
    if (func_80105284(arg0, arg1) != 0) {
        func_80109FAC(arg0, arg1);
    }
    if (func_801063F0(arg0, arg1) != 0) {
        func_8010A138(arg0, arg1);
    }
    if (func_8010A2C4(arg0, arg1) != 0) {
        if (arg2 & 8) {
            var_v0 = func_8010AC1C(arg0, arg1);
        } else {
            var_v0 = func_8010AEE0(arg0, arg1);
        }
        sp84 = var_v0;
        func_80109B5C(arg0, arg1);
    }
    if (func_8010669C(arg0, arg1) != 0) {
        func_80106930(arg0, arg1);
    }
    if (func_80105530(arg0, arg1) != 0) {
        func_80109FAC(arg0, arg1);
    }
    sp24 = arg1->unk0 >> 0x13;
    if ((func_80106C5C(arg0, arg1) != 0) && !(sp24 & 0xE00)) {
        func_801073C4(arg0, arg1);
        func_801096F0(arg0, arg1);
    }
    if (sp24 != 0) {
        if ((sp24 & 0x38) && (arg1->unk28 != 0x14)) {
            func_80105284(arg0, arg1);
        }
        if ((sp24 & 7) && (arg1->unk1C != 0x14)) {
            func_801063F0(arg0, arg1);
        }
    }
    arg0->unk58 = D_8012BD40;
    return sp84;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010AEF0.s")
#endif

#ifdef MIPS_TO_C

void func_8010B0B0(void) {
    func_8010AEF0(&D_8012BCA0, 8);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B0B0.s")
#endif

#ifdef MIPS_TO_C

void func_8010B0D8(void) {
    s32 sp1C;
    s32 temp_t6;

    temp_t6 = D_8012D940;
    D_8012D940 = 0;
    sp1C = temp_t6;
    func_8010AEF0(&D_8012BCA0, 8);
    D_8012D940 = sp1C;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B0D8.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010B11C(void) {
    s32 temp_a0;
    u32 var_v1;

    D_8012BD00 |= 0x80;
    var_v1 = D_8012BCA0.unk0 >> 0x13;
    temp_a0 = func_8010AEF0(&D_8012BCA0, 8, &D_8012BD00);
    D_8012BD00 &= 0xFF7F;
    if ((var_v1 & 7) && (D_8012BCA0.unk20->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFFF8) * 8) | (D_8012BCA0.unk0 & 7);
        var_v1 = D_8012BCA0.unk0 >> 0x13;
    }
    if ((var_v1 & 0x38) && (D_8012BCA0.unk2C->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFFC7) * 8) | (D_8012BCA0.unk0 & 7);
        var_v1 = D_8012BCA0.unk0 >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCA0.unk14->unk8 & 4)) {
        D_8012BCA0.unk0 = ((var_v1 & 0xFE3F) * 8) | (D_8012BCA0.unk0 & 7);
    }
    return temp_a0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B11C.s")
#endif

#ifdef MIPS_TO_C

void func_8010B238(void) {
    D_8012BD00 |= 0x80;
    func_8010AEF0(&D_8012BCA0, 8);
    D_8012BD00 &= 0xFF7F;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B238.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010B284(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    void *sp30;
    void *temp_v1;

    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    sp34 = 0.0f;
    sp3C = 0.0f;
    sp38 = -1.0f;
    temp_v1 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + temp_v1->unk8;
    sp30 = temp_v1;
    sp54 = arg0->unkC;
    sp44 = sp50 - 0.13f;
    sp40 = sp4C;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x1000;
        return 1;
    }
    sp4C = arg0->unk4 + D_8012BD00.unk4;
    sp50 = arg0->unk8 + sp30->unk4;
    sp40 = sp4C;
    sp54 = arg0->unkC + D_8012BD00.unk8;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x4000;
        return 1;
    }
    sp4C = arg0->unk4 + D_8012BD00.unkC;
    sp54 = arg0->unkC + D_8012BD00.unk10;
    sp40 = sp4C;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x2000;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B284.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010B480(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    void *sp30;
    void *temp_v1;

    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    sp34 = 0.0f;
    sp3C = 0.0f;
    sp38 = 1.0f;
    temp_v1 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + temp_v1->unk4;
    sp30 = temp_v1;
    sp54 = arg0->unkC;
    sp44 = sp50 + 0.13f;
    sp40 = sp4C;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x200;
        return 1;
    }
    sp4C = arg0->unk4 + D_8012BD00.unk4;
    sp50 = arg0->unk8 + sp30->unk8;
    sp40 = sp4C;
    sp54 = arg0->unkC + D_8012BD00.unk8;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x800;
        return 1;
    }
    sp4C = arg0->unk4 + D_8012BD00.unkC;
    sp54 = arg0->unkC + D_8012BD00.unk10;
    sp40 = sp4C;
    sp48 = sp54;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x400;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B480.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010B67C(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 *sp30;
    f32 *temp_v0;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34 = D_8012BD00.unk14;
    sp38 = 0.0f;
    sp3C = D_8012BD00.unk18;
    temp_v0 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + *temp_v0;
    sp40 = sp4C + D_8012BD00.unk4;
    sp54 = arg0->unkC;
    sp30 = temp_v0;
    sp48 = sp54 + D_8012BD00.unk8;
    sp44 = sp50;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 8;
        return 1;
    }
    sp4C += D_8012BD00.unkC;
    sp54 += D_8012BD00.unk10;
    sp50 = arg0->unk8 + sp30->unk8;
    sp44 = sp50;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x20;
        return 1;
    }
    sp44 = arg0->unk8 + sp30->unk4;
    sp50 = sp44;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x10;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B67C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010B860(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;
    f32 *sp30;
    f32 *temp_v0;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34 = D_8012BD00.unk1C;
    sp38 = 0.0f;
    sp3C = D_8012BD00.unk20;
    temp_v0 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + *temp_v0;
    sp40 = sp4C + D_8012BD00.unkC;
    sp54 = arg0->unkC;
    sp30 = temp_v0;
    sp48 = sp54 + D_8012BD00.unk10;
    sp44 = sp50;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x40;
        return 1;
    }
    sp4C += D_8012BD00.unk4;
    sp54 += D_8012BD00.unk8;
    sp50 = arg0->unk8 + sp30->unk8;
    sp44 = sp50;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x100;
        return 1;
    }
    sp44 = arg0->unk8 + sp30->unk4;
    sp50 = sp44;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x80;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B860.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BA44(void *arg0) {
    u32 temp_v0;

    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    if (func_801072E0(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_80107F94(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    temp_v0 = D_8012BCA0 >> 0x13;
    if ((temp_v0 != 0) && (temp_v0 & 0xE00) && (D_8012BCA4 != 0x14)) {
        func_801072E0(arg0, &D_8012BCA0);
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BA44.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BB08(void *arg0) {
    u32 temp_v0;

    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80106C5C(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    temp_v0 = D_8012BCA0 >> 0x13;
    if ((temp_v0 != 0) && (temp_v0 & 0xE00) && (D_8012BCA4 != 0x14)) {
        func_80106C5C(arg0, &D_8012BCA0);
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BB08.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BBD4(void *arg0) {
    u32 var_v1;

    D_8012BD00.unk0 = D_8012BD00.unk0 | 0x80;
    D_8012BD00.unk44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80106C5C(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    var_v1 = D_8012BCA0 >> 0x13;
    if ((var_v1 != 0) && (var_v1 & 0xE00) && (D_8012BCA4 != 0x14)) {
        func_80106C5C(arg0, &D_8012BCA0);
        var_v1 = D_8012BCA0 >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCB4->unk8 & 4)) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) & 0xFE3F) * 8) | (D_8012BCA0 & 7);
    }
    D_8012BD00.unk0 = D_8012BD00.unk0 & 0xFF7F;
    arg0->unk58 = D_8012BD00.unk40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BBD4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BD0C(void *arg0) {
    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BD0C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BD84(void *arg0) {
    u32 sp20;
    u32 temp_v1;

    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_801056C8(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    if (func_80106834(arg0, &D_8012BCA0) != 0) {
        func_8010A138(arg0, &D_8012BCA0);
    }
    temp_v1 = D_8012BCA0 >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            sp20 = temp_v1;
            func_80106834(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_801056C8(arg0, &D_8012BCA0);
        }
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BD84.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BE7C(void *arg0) {
    u32 sp20;
    u32 temp_v1;

    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80105284(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    if (func_801063F0(arg0, &D_8012BCA0) != 0) {
        func_8010A138(arg0, &D_8012BCA0);
    }
    if (func_8010669C(arg0, &D_8012BCA0) != 0) {
        func_80106930(arg0, &D_8012BCA0);
    }
    if (func_80105530(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    temp_v1 = D_8012BCA0 >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            sp20 = temp_v1;
            func_801063F0(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_80105284(arg0, &D_8012BCA0);
        }
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BE7C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010BFAC(void *arg0) {
    u32 sp20;
    u32 temp_v1;
    u32 var_v0;

    D_8012BD00.unk0 = D_8012BD00.unk0 | 0x80;
    D_8012BD00.unk44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80105284(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    if (func_801063F0(arg0, &D_8012BCA0) != 0) {
        func_8010A138(arg0, &D_8012BCA0);
    }
    if (func_8010669C(arg0, &D_8012BCA0) != 0) {
        func_80106930(arg0, &D_8012BCA0);
    }
    if (func_80105530(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    temp_v1 = D_8012BCA0 >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            sp20 = temp_v1;
            func_801063F0(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_80105284(arg0, &D_8012BCA0);
        }
    }
    var_v0 = D_8012BCA0 >> 0x13;
    if ((var_v0 & 7) && (D_8012BCC0->unk8 & 4)) {
        D_8012BCA0 = ((var_v0 & 0xFFF8) * 8) | (D_8012BCA0 & 7);
        var_v0 = D_8012BCA0 >> 0x13;
    }
    if ((var_v0 & 0x38) && (D_8012BCCC->unk8 & 4)) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) & 0xFFC7) * 8) | (D_8012BCA0 & 7);
    }
    D_8012BD00.unk0 = D_8012BD00.unk0 & 0xFF7F;
    arg0->unk58 = D_8012BD00.unk40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BFAC.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010C184(void *arg0) {
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    f32 sp34;

    D_8012BD44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    sp40 = arg0->unk28;
    sp44 = arg0->unk2C;
    sp48 = arg0->unk30;
    sp34 = arg0->unk4;
    sp38 = arg0->unk8 + arg0->unk10;
    sp3C = arg0->unkC;
    if (func_80103930(&sp40, &sp34, 0, 0, arg0 + 4, &D_8012BCDC, &D_8012BCD8, &D_8012BCD4) != 0) {
        arg0->unk8 = arg0->unk8 - arg0->unk10;
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x8000;
    }
    arg0->unk58 = D_8012BD40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C184.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010C274(void *arg0) {
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp44;

    sp78 = 1.1f;
    D_8012BD00.unk44 = arg0->unk58;
    func_80105218(&D_8012BCA0);
    D_8012BCA8 = 0;
    D_8012BCB4 = 0;
    D_8012BCCC = 0;
    D_8012BCC0 = 0;
    func_80104FB8(arg0);
    sp68 = arg0->unk34;
    sp6C = arg0->unk48;
    sp70 = arg0->unk38;
    sp5C = arg0->unk4 + D_8012BD00.unk4;
    sp60 = arg0->unk8 + arg0->unk18;
    sp64 = arg0->unkC + D_8012BD00.unk8;
    if (func_80103930(&sp68, &sp5C, 0, &sp78, &sp50, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x4020;
        sp50 -= D_8012BD00.unk4;
        sp54 -= arg0->unk18;
        sp58 -= D_8012BD00.unk8;
    }
    sp68 = arg0->unk3C;
    sp70 = arg0->unk40;
    sp5C = arg0->unk4 + D_8012BD00.unkC;
    sp64 = arg0->unkC + D_8012BD00.unk10;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x2100;
        sp50 = sp44 - D_8012BD00.unkC;
        sp54 = sp48 - arg0->unk18;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.unk10;
    }
    sp6C = arg0->unk44;
    sp60 = arg0->unk8 + arg0->unk14;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x480;
        sp50 = sp44 - D_8012BD00.unkC;
        sp54 = sp48 - arg0->unk14;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.unk10;
    }
    sp68 = arg0->unk34;
    sp70 = arg0->unk38;
    sp5C = arg0->unk4 + D_8012BD00.unk4;
    sp64 = arg0->unkC + D_8012BD00.unk8;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x810;
        sp50 = sp44 - D_8012BD00.unk4;
        sp54 = sp48 - arg0->unk14;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.unk8;
    }
    if ((D_8012BCA0 >> 0x13) != 0) {
        arg0->unk4 = sp50.unk0;
        arg0->unk8 = sp50.unk4;
        arg0->unkC = sp50.unk8;
    }
    arg0->unk58 = D_8012BD00.unk40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C274.s")
#endif

#ifdef MIPS_TO_C

void func_8010C608(void *arg0) {
    f32 sp2C;
    f32 sp24;
    f32 sp20;
    void *sp1C;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f14;
    f32 var_f16;
    void *var_v1;

    var_v1 = arg0 + 0x10;
    if (arg0->unk1C < 0.0f) {
        var_v1 = arg0 + 0x10;
        var_f16 = var_v1->unkC - 0.13f;
    } else {
        var_f16 = var_v1->unkC + 0.13f;
    }
    temp_f0 = var_v1->unk10;
    if (temp_f0 < 0.0f) {
        var_f14 = temp_f0 - 0.13f;
    } else {
        var_f14 = temp_f0 + 0.13f;
    }
    sp24 = var_f16;
    sp20 = var_f14;
    sp1C = var_v1;
    sp2C = cosf(arg0->unk24);
    temp_f0_2 = sinf(arg0->unk24);
    D_8012BD00.unk4 = var_f16 * temp_f0_2;
    D_8012BD00.unk8 = var_f16 * sp2C;
    D_8012BD00.unkC = var_f14 * temp_f0_2;
    D_8012BD00.unk10 = var_f14 * sp2C;
    if (var_v1->unkC > 0.0f) {
        D_8012BD14 = temp_f0_2;
        D_8012BD00.unk18 = sp2C;
    } else {
        D_8012BD14 = -temp_f0_2;
        D_8012BD00.unk18 = -sp2C;
    }
    D_8012BD00.unk1C = -D_8012BD00.unk14;
    D_8012BD00.unk20 = -D_8012BD00.unk18;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C608.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010C734(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 var_v0;
    void *temp_s2;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    temp_s2 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + temp_s2->unk0;
    sp54 = arg0->unkC;
    sp40 = sp4C + D_8012BD00.unk4;
    sp48 = sp54 + D_8012BD00.unk8;
    sp44 = sp50;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 1) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk8;
    sp44 = sp50;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 4) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk4;
    sp44 = sp50;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 2) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk0;
    sp44 = sp50;
    sp40 = arg0->unk4 + D_8012BD00.unkC;
    sp48 = arg0->unkC + D_8012BD00.unk10;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 8) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk8;
    sp44 = sp50;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x20) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk4;
    sp44 = sp50;
    if (func_801047F0(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x10) * 8) | (D_8012BCA0 & 7);
    }
    var_v0 = 0;
    if ((D_8012BCA0 >> 0x13) & 0x3F) {
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C734.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010CABC(void *arg0) {
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    s32 var_v0;
    void *temp_s2;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    temp_s2 = arg0 + 0x10;
    sp4C = arg0->unk4;
    sp50 = arg0->unk8 + temp_s2->unk0;
    sp54 = arg0->unkC;
    sp40 = sp4C + D_8012BD00.unk4;
    sp48 = sp54 + D_8012BD00.unk8;
    sp44 = sp50;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 1) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk8;
    sp44 = sp50;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 4) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk4;
    sp44 = sp50;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCC4, &D_8012BCC0, &D_8012BCBC) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 2) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk0;
    sp44 = sp50;
    sp40 = arg0->unk4 + D_8012BD00.unkC;
    sp48 = arg0->unkC + D_8012BD00.unk10;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 8) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk8;
    sp44 = sp50;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x20) * 8) | (D_8012BCA0 & 7);
    }
    sp50 = arg0->unk8 + temp_s2->unk4;
    sp44 = sp50;
    if (func_801048A4(&sp4C, &sp40, 0, 0, &D_8012BCD0, &D_8012BCCC, &D_8012BCC8) != 0) {
        D_8012BCA0 = (((D_8012BCA0 >> 0x13) | 0x10) * 8) | (D_8012BCA0 & 7);
    }
    var_v0 = 0;
    if ((D_8012BCA0 >> 0x13) & 0x3F) {
        var_v0 = 1;
    }
    return var_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010CABC.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010CE44(void *arg0, f32 arg1) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 sp38;
    f32 temp_f8;
    s32 var_v1;

    func_80104FB8();
    sp58 = arg0->unk4 + D_8012BD00.unk4;
    sp5C = arg0->unk8 + arg0->unk10;
    temp_f8 = arg0->unkC + D_8012BD00.unk8;
    sp60 = temp_f8;
    sp4C = (D_8012BD00.unk14 * arg1) + sp58;
    sp54 = (D_8012BD00.unk18 * arg1) + temp_f8;
    sp40 = D_8012BD00.unk14;
    sp48 = D_8012BD00.unk18;
    sp50 = sp5C;
    sp44 = 0.0f;
    if (func_8010423C(arg1, &sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->unk4 = sp64 - D_8012BD00.unk24;
        arg0->unkC = sp6C - D_8012BD00.unk28;
        return 1;
    }
    sp38 = 0;
    sp5C = arg0->unk8 + arg0->unk14;
    sp50 = sp5C;
    if (func_8010423C((bitwise f32) &sp58, &sp4C, &sp40, NULL, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp5C = arg0->unk8 + arg0->unk18;
    sp50 = sp5C;
    var_v1 = sp38;
    if (func_8010423C((bitwise f32) &sp58, &sp4C, &sp40, NULL, 0, &sp3C, 0, 0) != 0) {
block_5:
        var_v1 = 1;
    }
    if (var_v1 != 0) {
        sp5C = arg0->unk8 + arg0->unk10;
        sp50 = sp5C;
        if (func_801057C4(sp3C, &sp58, &sp4C, &sp64) != 0) {
            if (sp4C < sp58) {
                if ((sp58 < sp64) || (sp64 < sp4C)) {
                    goto block_23;
                }
                goto block_15;
            }
            if ((sp64 < sp58) || (sp4C < sp64)) {
                goto block_23;
            }
block_15:
            if (sp54 < sp60) {
                if ((sp60 < sp6C) || (sp6C < sp54)) {
                    goto block_23;
                }
                goto block_22;
            }
            if ((sp6C < sp60) || (sp54 < sp6C)) {
                goto block_23;
            }
block_22:
            arg0->unk4 = sp64 - D_8012BD00.unk24;
            arg0->unkC = sp6C - D_8012BD00.unk28;
            return 1;
        }
    }
block_23:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010CE44.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010D138(void *arg0, f32 arg1) {
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    s32 sp38;
    f32 temp_f8;
    s32 var_v1;

    func_80104FB8();
    sp58 = arg0->unk4 + D_8012BD00.unkC;
    sp5C = arg0->unk8 + arg0->unk10;
    temp_f8 = arg0->unkC + D_8012BD00.unk10;
    sp60 = temp_f8;
    sp4C = (D_8012BD00.unk1C * arg1) + sp58;
    sp54 = (D_8012BD00.unk20 * arg1) + temp_f8;
    sp40 = D_8012BD00.unk1C;
    sp48 = D_8012BD00.unk20;
    sp50 = sp5C;
    sp44 = 0.0f;
    if (func_8010423C(arg1, &sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->unk4 = sp64 - D_8012BD00.unk2C;
        arg0->unkC = sp6C - D_8012BD00.unk30;
        return 1;
    }
    sp38 = 0;
    sp5C = arg0->unk8 + arg0->unk14;
    sp50 = sp5C;
    if (func_8010423C((bitwise f32) &sp58, &sp4C, &sp40, NULL, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp5C = arg0->unk8 + arg0->unk18;
    sp50 = sp5C;
    var_v1 = sp38;
    if (func_8010423C((bitwise f32) &sp58, &sp4C, &sp40, NULL, 0, &sp3C, 0, 0) != 0) {
block_5:
        var_v1 = 1;
    }
    if (var_v1 != 0) {
        sp5C = arg0->unk8 + arg0->unk10;
        sp50 = sp5C;
        if (func_801057C4(sp3C, &sp58, &sp4C, &sp64) != 0) {
            if (sp4C < sp58) {
                if ((sp58 < sp64) || (sp64 < sp4C)) {
                    goto block_23;
                }
                goto block_15;
            }
            if ((sp64 < sp58) || (sp4C < sp64)) {
                goto block_23;
            }
block_15:
            if (sp54 < sp60) {
                if ((sp60 < sp6C) || (sp6C < sp54)) {
                    goto block_23;
                }
                goto block_22;
            }
            if ((sp6C < sp60) || (sp54 < sp6C)) {
                goto block_23;
            }
block_22:
            arg0->unk4 = sp64 - D_8012BD00.unk2C;
            arg0->unkC = sp6C - D_8012BD00.unk30;
            return 1;
        }
    }
block_23:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D138.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010D42C(void *arg0, f32 arg1) {
    ? sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    void *sp3C;
    s32 sp38;
    f32 temp_f0;
    s32 var_t0;

    func_80104FB8();
    sp58 = arg0->unk4;
    sp5C = arg0->unk8 + arg0->unk14;
    sp60 = arg0->unkC;
    sp50 = sp5C + arg1;
    sp40 = 0.0f;
    sp48 = 0.0f;
    sp4C = sp58;
    sp54 = sp60;
    sp44 = 1.0f;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, &sp64, NULL, 0, 0) != 0) {
        arg0->unk8 = (sp68 - arg0->unk14) - 0.1f;
        return 1;
    }
    sp58 = arg0->unk4 + D_8012BD00.unk4;
    sp38 = 0;
    sp60 = arg0->unkC + D_8012BD00.unk8;
    sp4C = sp58;
    sp54 = sp60;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, NULL, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58 = arg0->unk4 + D_8012BD00.unkC;
    sp60 = arg0->unkC + D_8012BD00.unk10;
    sp4C = sp58;
    sp54 = sp60;
    var_t0 = sp38;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, NULL, &sp3C, 0, 0) != 0) {
block_5:
        var_t0 = 1;
    }
    if (var_t0 != 0) {
        temp_f0 = -((sp3C->unk0 * arg0->unk4) + (sp3C->unk8 * arg0->unkC) + sp3C->unkC) / sp3C->unk4;
        if ((temp_f0 <= sp50) && (sp5C <= temp_f0)) {
            arg0->unk8 = (temp_f0 - arg0->unk14) - 0.1f;
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D42C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010D668(void *arg0, f32 arg1) {
    ? sp64;
    f32 sp60;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    void *sp3C;
    s32 sp38;
    f32 temp_f0;
    s32 var_t0;

    func_80104FB8();
    sp58 = arg0->unk4;
    sp5C = arg0->unk8 + arg0->unk18;
    sp60 = arg0->unkC;
    sp50 = sp5C - arg1;
    sp40 = 0.0f;
    sp48 = 0.0f;
    sp4C = sp58;
    sp54 = sp60;
    sp44 = -1.0f;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, &sp64, NULL, 0, 0) != 0) {
        arg0->unk8 = (sp68 - arg0->unk18) + 0.1f;
        return 1;
    }
    sp58 = arg0->unk4 + D_8012BD00.unk4;
    sp38 = 0;
    sp60 = arg0->unkC + D_8012BD00.unk8;
    sp4C = sp58;
    sp54 = sp60;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, NULL, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58 = arg0->unk4 + D_8012BD00.unkC;
    sp60 = arg0->unkC + D_8012BD00.unk10;
    sp4C = sp58;
    sp54 = sp60;
    var_t0 = sp38;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, NULL, &sp3C, 0, 0) != 0) {
block_5:
        var_t0 = 1;
    }
    if (var_t0 != 0) {
        temp_f0 = -((sp3C->unk0 * arg0->unk4) + (sp3C->unk8 * arg0->unkC) + sp3C->unkC) / sp3C->unk4;
        if ((sp50 <= temp_f0) && (temp_f0 <= sp5C)) {
            arg0->unk8 = (temp_f0 - arg0->unk18) + 0.1f;
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D668.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010D8A4(void *arg0) {
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    s32 sp34;
    void *temp_v0;

    func_80104FB8();
    sp38 = 0.0f;
    sp40 = 0.0f;
    sp3C = -1.0f;
    temp_v0 = arg0 + 0x10;
    sp50 = arg0->unk4 + D_8012BD00.unk4;
    sp54 = arg0->unk8 + temp_v0->unk4;
    sp44 = sp50;
    sp58 = arg0->unkC + D_8012BD00.unk8;
    sp4C = sp58;
    sp48 = (arg0->unk8 + temp_v0->unk8) - 0.2f;
    if ((func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) && (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    sp50 = arg0->unk4 + D_8012BD00.unkC;
    sp58 = arg0->unkC + D_8012BD00.unk10;
    sp44 = sp50;
    sp4C = sp58;
    if ((func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) && (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D8A4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010DA28(void *arg0) {
    f32 sp58;
    f32 sp54;
    f32 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    void *temp_v0;

    func_80104FB8();
    sp38 = 0.0f;
    sp40 = 0.0f;
    sp3C = 1.0f;
    temp_v0 = arg0 + 0x10;
    sp50 = arg0->unk4 + D_8012BD00.unk4;
    sp54 = arg0->unk8 + temp_v0->unk8;
    sp44 = sp50;
    sp58 = arg0->unkC + D_8012BD00.unk8;
    sp48 = arg0->unk8 + temp_v0->unk4;
    sp4C = sp58;
    if (func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp50 = arg0->unk4 + D_8012BD00.unkC;
    sp58 = arg0->unkC + D_8012BD00.unk10;
    sp44 = sp50;
    sp4C = sp58;
    if (func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DA28.s")
#endif

#ifdef MIPS_TO_C

void func_8010DB64(void *arg0, s32 arg1, void *arg2) {
    void *temp_v1;
    void *var_v0;

    if (arg0 != NULL) {
        if (arg1 != 0x14) {
            var_v0 = *(&D_8012D94C + (arg1 * 0xB8));
        } else {
            var_v0 = D_80129410;
        }
        temp_v1 = var_v0->unk14 + (arg0->unk6 * 0x10);
        if (arg0->unk8 & 1) {
            arg2->unk0 = temp_v1->unk0;
            arg2->unk4 = temp_v1->unk4;
            arg2->unk8 = temp_v1->unk8;
            return;
        }
        arg2->unk0 = -temp_v1->unk0;
        arg2->unk4 = -temp_v1->unk4;
        arg2->unk8 = -temp_v1->unk8;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DB64.s")
#endif

#ifdef MIPS_TO_C

void func_8010DC00(? arg1) {
    func_8010DB64(0x14, arg1);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DC00.s")
#endif

#ifdef MIPS_TO_C

u16 func_8010DC24(void *arg0) {
    if ((arg0 != NULL) && (arg0->unk12 == 6)) {
        return *(&D_80124770 + (arg0->unkE * 4));
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DC24.s")
#endif

#ifdef MIPS_TO_C

? *func_8010DC5C(void) {
    ? *temp_v0;

    if (D_8012BD4C == NULL) {
        return NULL;
    }
    temp_v0 = D_8012BD4C;
    D_8012BD4C = *D_8012BD4C;
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DC5C.s")
#endif

#ifdef MIPS_TO_C

void func_8010DC8C(? *arg0) {
    if (arg0 != NULL) {
        *arg0 = D_8012BD4C;
        D_8012BD4C = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DC8C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010DCAC(void) {
    s32 sp1C;
    s32 temp_v0;

    temp_v0 = func_8010DC5C();
    sp1C = temp_v0;
    func_80105180(temp_v0);
    return temp_v0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DCAC.s")
#endif

#ifdef MIPS_TO_C

void func_8010DCDC(void) {
    ? **var_v1;
    ? *var_a0;
    ? *var_a1;
    ? *var_a2;
    ? *var_a3;

    D_8012BD00.unk40 = 0;
    D_8012BD00.unk0 = D_8012BD00.unk0 & 0xFF7F;
    D_8012BD4C = &D_8012BD50;
    D_8012BD50 = &D_8012BDAC;
    D_8012BDAC = &D_8012BE08;
    var_v1 = &D_8012BE64;
    var_a3 = &D_8012BFD4;
    var_a2 = &D_8012BF78;
    var_a1 = &D_8012BF1C;
    var_a0 = &D_8012BEC0;
    D_8012BE08 = &D_8012BE64;
    do {
        var_v1->unk114 = var_a3;
        var_a3 += 0x170;
        var_v1->unk5C = var_a1;
        var_v1->unkB8 = var_a2;
        var_v1->unk0 = var_a0;
        var_a0 += 0x170;
        var_a2 += 0x170;
        var_a1 += 0x170;
        var_v1 += 0x170;
    } while (var_a3 != &D_8012C9E4);
    *var_v1 = NULL;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DCDC.s")
#endif

#ifdef MIPS_TO_C

void func_8010DD8C(void) {
    D_8012BD00.unk40 = D_8012BD00.unk40 + 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DD8C.s")
#endif

#ifdef MIPS_TO_C

void func_8010DDA4(void *arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    f32 temp_f2_2;
    s32 var_a1;
    u16 temp_t1_2;
    u32 temp_a1;
    u32 temp_t0;
    u32 var_a2;
    u32 var_a3;
    u32 var_t0;
    u32 var_v1;
    void *temp_a2;
    void *temp_t1;
    void *temp_v1;
    void *var_a3_2;
    void *var_v0;

    temp_v1 = D_8012BD48->unk0;
    temp_a2 = temp_v1->unk38;
    var_v0 = temp_a2;
    if (temp_a2 != NULL) {
        temp_f0 = arg0->unk0;
        if (!(temp_f0 < temp_a2->unk8)) {
            temp_a1 = temp_v1->unk3C;
            var_v1 = 0;
            var_a3 = temp_a1;
            if ((temp_a2 + (temp_a1 * 0x18))->unk-10 <= temp_f0) {
                var_a2 = temp_a1;
            } else {
loop_4:
                temp_t0 = (var_v1 + var_a3) >> 1;
                temp_t1 = temp_a2 + (temp_t0 * 0x18);
                temp_f2 = temp_t1->unk8;
                if (!(temp_f2 <= temp_f0)) {
block_7:
                    if (temp_f0 < temp_f2) {
                        var_a3 = temp_t0;
                    } else {
                        var_v1 = temp_t0;
                    }
                    goto loop_4;
                }
                if (!(temp_f0 < temp_t1->unk20)) {
                    goto block_7;
                }
                var_a2 = temp_t0 + 1;
            }
            var_a1 = 0;
            if (var_a2 != 0) {
                do {
                    temp_f0_2 = arg0->unk0;
                    var_a1 += 1;
                    var_a3_2 = D_8012BD48->unk0->unk40 + (var_v0->unk2 * 0x10);
                    if (temp_f0_2 <= var_v0->unkC) {
                        temp_f2_2 = arg0->unk4;
                        if ((var_v0->unk10 <= temp_f2_2) && (temp_f2_2 <= var_v0->unk14)) {
                            temp_t1_2 = var_v0->unk0;
                            var_t0 = 0;
                            if (temp_t1_2 != 0) {
loop_17:
                                if (!(((var_a3_2->unk0 * temp_f0_2) + (var_a3_2->unk4 * temp_f2_2) + (var_a3_2->unk8 * arg0->unk8) + var_a3_2->unkC) > 0.0f)) {
                                    var_t0 += 1;
                                    var_a3_2 += 0x10;
                                    if (var_t0 < temp_t1_2) {
                                        goto loop_17;
                                    }
                                }
                            }
                            if (var_t0 == temp_t1_2) {
                                (&D_8012BCA0 + (D_8012BD48->unk4 * 4))->unk40 = var_v0;
                                (&D_8012BCA0 + (D_8012BD48->unk4 * 4))->unk4C = arg1;
                                D_8012BD48->unk4 = D_8012BD48->unk4 + 1;
                            }
                        }
                    }
                    var_v0 += 0x18;
                } while (var_a1 != var_a2);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DDA4.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010DF9C(s32 arg0) {
    s32 sp34;
    s32 sp30;
    ? *var_s0;
    u32 var_s1;

    sp34 = 0;
    D_8012BD48 = &sp30;
    sp30 = D_80129410;
    func_8010DDA4(0x14);
    var_s0 = &D_8012D948;
    var_s1 = 0;
    if (D_8012D940 != 0) {
        do {
            if (!(var_s0->unk2 & 1)) {
                sp30 = var_s0->unk4;
                func_8010DDA4(arg0, var_s1);
            }
            var_s1 += 1;
            var_s0 += 0xB8;
        } while (var_s1 < D_8012D940);
    }
    return sp34;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DF9C.s")
#endif

#ifdef MIPS_TO_C

s32 func_8010E048(void *arg0, s32 arg1, void *arg2, void *arg3, void **arg4, void *arg5) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    s32 var_a0;
    s32 var_v1_2;
    u16 temp_v0;
    u32 var_s1;
    u32 var_s6;
    void *temp_s7;
    void *var_s0;
    void *var_s3;
    void *var_v1;

    if (arg1 != 0x14) {
        var_v1 = *(&D_8012D94C + (arg1 * 0xB8));
    } else {
        var_v1 = D_80129410;
    }
    var_s3 = var_v1->unk40 + (arg0->unk2 * 0x10);
    temp_s7 = var_s3;
    var_s6 = 0;
    if (arg0->unk0 != 0) {
loop_5:
        temp_f0 = var_s3->unk0;
        temp_f2 = var_s3->unk4;
        temp_f12 = var_s3->unk8;
        temp_f14 = var_s3->unkC;
        var_a0 = 0;
        var_v1_2 = 0;
        var_s0 = temp_s7;
        var_s1 = 0;
        if (((temp_f0 * arg2->unk0) + (temp_f2 * arg2->unk4) + (temp_f12 * arg2->unk8) + temp_f14) > 0.0f) {
            var_a0 = 1;
        }
        if (((temp_f0 * arg3->unk0) + (temp_f2 * arg3->unk4) + (temp_f12 * arg3->unk8) + temp_f14) > 0.0f) {
            var_v1_2 = 1;
        }
        if (var_a0 != var_v1_2) {
            func_801057C4(temp_f12, temp_f14, var_s3, arg2, arg3, arg5);
            temp_v0 = arg0->unk0;
            if (temp_v0 != 0) {
loop_11:
                if ((var_s3 == var_s0) || !(((var_s0->unk0 * arg5->unk0) + (var_s0->unk4 * arg5->unk4) + (var_s0->unk8 * arg5->unk8) + var_s0->unkC) > 0.0f)) {
                    var_s1 += 1;
                    var_s0 += 0x10;
                    if (var_s1 < temp_v0) {
                        goto loop_11;
                    }
                }
            }
            if (var_s1 == temp_v0) {
                *arg4 = var_s3;
                return 1;
            }
            goto block_16;
        }
block_16:
        var_s6 += 1;
        var_s3 += 0x10;
        if (var_s6 >= arg0->unk0) {
            goto block_17;
        }
        goto loop_5;
    }
block_17:
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E048.s")
#endif

#ifdef MIPS_TO_C
void func_8010E260(void *arg0) {
    if (arg0 != NULL) {
        arg0->unk5 = 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E260.s")
#endif

#ifdef MIPS_TO_C
void func_8010E274(void *arg0) {
    if (arg0 != NULL) {
        arg0->unk5 = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E274.s")
#endif

#ifdef MIPS_TO_C
void func_8010E288(void *arg0, s32 arg1) {
    if (arg0 != NULL) {
        arg0->unk7 = arg1 & 0xFF;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E288.s")
#endif

#ifdef MIPS_TO_C
u8 func_8010E2A0(void *arg0) {
    if (arg0 != NULL) {
        return arg0->unk7;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E2A0.s")
#endif

#ifdef MIPS_TO_C
void mtx_create_translate_scale(void *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    arg0->unk30 = arg1;
    arg0->unk34 = arg2;
    arg0->unk38 = arg3;
    arg0->unk0 = arg4;
    arg0->unk14 = arg5;
    arg0->unk4 = 0.0f;
    arg0->unk8 = 0.0f;
    arg0->unkC = 0.0f;
    arg0->unk10 = 0.0f;
    arg0->unk18 = 0.0f;
    arg0->unk1C = 0.0f;
    arg0->unk20 = 0.0f;
    arg0->unk24 = 0.0f;
    arg0->unk2C = 0.0f;
    arg0->unk3C = 1.0f;
    arg0->unk28 = arg6;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/mtx_create_translate_scale.s")
#endif

#ifdef MIPS_TO_C

void func_8010E324(s32 arg0, void *arg1) {
    s32 sp7C;
    s32 sp78;
    f32 sp70;
    f32 *sp50;
    f32 *temp_t5;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f18;
    f32 temp_f2;
    s32 temp_t0;
    s32 temp_t0_2;
    void *temp_v0;
    void *temp_v0_2;
    void *temp_v1;
    void *temp_v1_2;
    void *temp_v1_3;
    void *temp_v1_4;

    temp_t0 = gDynamicBuffer1.unkC;
    gDynamicBuffer1.unkC = temp_t0 + 0x40;
    sp7C = temp_t0;
    temp_f14 = arg1->unk20;
    temp_f12 = arg1->unk1C;
    temp_f2 = arg1->unk18;
    temp_f0 = arg1->unk14;
    temp_f18 = (temp_f12 - temp_f14) / 40.0f;
    sp70 = temp_f18;
    mtx_create_translate_scale(temp_f12, temp_f14, &spC0[0], 0.0f, (temp_f0 + temp_f2) * 0.5f, (temp_f12 + temp_f14) * 0.5f, 1.0f, (temp_f0 - temp_f2) / 40.0f, temp_f18);
    func_8001BF88(&sp80[0], arg1->unk4, arg1->unk8, arg1->unkC, 0.0f, arg1->unk24, 0.0f);
    guMtxCatF(&spC0[0], &sp80[0], &sp80[0]);
    HS64_MtxF2L(&sp80[0], sp7C);
    temp_v0 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0 + 8;
    temp_v0->unk0 = 0xDA380000;
    temp_v0->unk4 = sp7C;
    temp_v0_2 = gDisplayListHeads.unk0;
    gDisplayListHeads.unk0 = temp_v0_2 + 8;
    temp_v0_2->unk4 = &D_801248B0;
    temp_v0_2->unk0 = 0xDE000000;
    temp_v1 = gDisplayListHeads.unk8;
    gDisplayListHeads.unk8 = temp_v1 + 8;
    temp_v1->unk0 = 0xDA380000;
    temp_v1->unk4 = sp7C;
    temp_v1_2 = gDisplayListHeads.unk8;
    temp_t5 = arg1 + 0x10;
    gDisplayListHeads.unk8 = temp_v1_2 + 8;
    temp_v1_2->unk4 = &D_80124908;
    temp_v1_2->unk0 = 0xDE000000;
    temp_t0_2 = D_8004A404;
    D_8004A404 = temp_t0_2 + 0x40;
    sp78 = temp_t0_2;
    sp50 = temp_t5;
    mtx_create_translate_scale((bitwise f32) &spC0[0], 0.0f, NULL, (temp_t5->unkC + temp_t5->unk10) * 0.5f, 1.0f, 1.0f, sp70);
    func_8001BF88(&sp80[0], arg1->unk4, arg1->unk8 + *sp50, arg1->unkC, 0.0f, arg1->unk24, 0.0f);
    guMtxCatF(&spC0[0], &sp80[0], &sp80[0]);
    HS64_MtxF2L(&sp80[0], sp78);
    temp_v1_3 = gDisplayListHeads.unk8;
    gDisplayListHeads.unk8 = temp_v1_3 + 8;
    temp_v1_3->unk0 = 0xDA380000;
    temp_v1_3->unk4 = sp78;
    temp_v1_4 = gDisplayListHeads.unk8;
    gDisplayListHeads.unk8 = temp_v1_4 + 8;
    temp_v1_4->unk4 = &D_80124948;
    temp_v1_4->unk0 = 0xDE000000;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010E324.s")
#endif
