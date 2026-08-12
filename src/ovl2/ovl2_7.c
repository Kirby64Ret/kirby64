#include "common.h"
#include "new_ovl2_7.h"
#include "ovl2/ovl2_6.h"
#include "ovl2/ovl2_8.h"
#include "main/lbvector.h"

extern struct CollisionState *gCollisionState;
extern u32 D_8012BD00;

struct UnkBD00 {
    /* 0x00 */ u8 unk0_80 : 1;
    /* 0x00 */ u8 unk0_rest : 7;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 pad2[2];
    /* 0x04 */ f32 unk4;
    /* 0x08 */ f32 unk8;
    /* 0x0C */ f32 unkC;
    /* 0x10 */ f32 unk10;
    /* 0x14 */ f32 unk14;
    /* 0x18 */ f32 unk18;
    /* 0x1C */ f32 unk1C;
    /* 0x20 */ f32 unk20;
    /* 0x24 */ f32 unk24;
    /* 0x28 */ f32 unk28;
    /* 0x2C */ f32 unk2C;
    /* 0x30 */ f32 unk30;
    /* 0x34 */ f32 unk34;
    /* 0x38 */ f32 unk38;
    /* 0x3C */ f32 unk3C;
    /* 0x40 */ s32 unk40;
    /* 0x44 */ s32 unk44;
};

#define BD00 (*(struct UnkBD00 *) &D_8012BD00)

struct ColRecord {
    /* 0x0 */ s32 type;
    /* 0x4 */ struct CollisionTriangle *tri;
    /* 0x8 */ struct Normal *norm;
};

struct UnkBCA0 {
    /* 0x00 */ union {
        u32 w;
        u16 hw;
        struct {
            u32 a : 13;
            u32 b : 3;
            u32 rest : 16;
        } f;
    } flags;
    /* 0x04 */ struct ColRecord rec[5];
};

extern struct UnkBCA0 D_8012BCA0;
extern u32 D_8012BCA4[];
extern s32 D_8012BCA8[];
extern struct CollisionTriangle *D_8012BCB4;
extern s32 D_8012BCBC;
extern struct CollisionTriangle *D_8012BCC0;
extern s32 D_8012BCC8;
extern struct CollisionTriangle *D_8012BCCC;
extern s32 D_8012BCD4;
extern struct CollisionTriangle *D_8012BCD8;
extern struct Normal *D_8012BCDC;
extern u32 D_8012D940;

struct UnkBD48 {
    /* 0x0 */ struct vCollisionHeader *unk0;
    /* 0x4 */ s32 unk4;
};

extern struct UnkBD48 *D_8012BD48;
extern struct PositionState *D_8012BD4C;
extern struct PositionState D_8012BD50[];

// TODO: either put these in ovl0_5.h, or use the ones already there
#define PVPDP(a, b) ( a->x*b->x +  a->y*b->y +  a->z*b->z)
#define NVPDP(a, b) (-a->x*b->x + -a->y*b->y + -a->z*b->z)

u32 func_8011BED0(u16, u16, u16, struct Normal *);
void func_80101400(u32 numFloorNorms);
void func_8010DB64(struct CollisionTriangle *arg0, s32 arg1, Vector *arg2);
void func_8010DDA4(void *arg0, s32 arg1);
s32 func_80109BF0(struct PositionState *arg0, struct UnkBCA0 *arg1, s32 arg2);
s32 func_8010AEF0(struct PositionState *arg0, struct UnkBCA0 *arg1, s32 arg2);
void func_80104FB8(struct PositionState *arg0);
s32 func_80104D2C(Vector *arg0, Vector *arg1, Vector *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, s32 *arg7);
s32 func_801057C4(struct Normal *arg0, Vector *arg1, Vector *arg2, Vector *arg3);
s32 func_80105530(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_801056C8(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_801063F0(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_8010669C(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80106834(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80106930(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80106C5C(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_801072E0(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_801077D4(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80107F94(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_801078A0(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_8010924C(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109318(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109504(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109784(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109970(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109FAC(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_8010A138(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_801060C4(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_801073C4(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80107074(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_80108E08(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_80109B5C(struct PositionState *arg0, struct UnkBCA0 *arg1);
void func_801096F0(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_8010A2C4(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_8010AC1C(struct PositionState *arg0, struct UnkBCA0 *arg1);
s32 func_8010AEE0(s32 arg0, s32 arg1);

extern u32 D_8012BD44;
extern Vector D_8012BD34;
extern u16 D_80124770[][2];


extern f32 D_80128A70;
extern struct vCollisionHeader *D_80129410;

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
    struct Normal *n;
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

// TODO: column limit of 104
u32 func_80101920(struct CollisionTriangle *triangle, struct Normal *normal, Vector *vec, struct Normal *n2) {
    u32 code = triangle->normalType;

    if (!(code & NON_SOLID)) {
        if ((code & NO_SHADOW) && (D_8012BD00 >> 31) == 0) {
            return 0;
        }
        code &= 3;
        if (code != 0) {
            if (code == DOUBLE_SIDED_NORMAL) {
                if (n2 && vec) {
                    if ((0.0f < VEC_DOT(normal, n2))) {
                        if (0.0f < VEC_DOT_FIRST_ARG_NEGATE(normal, vec)) {
                            return 0;
                        } else {
                            goto match_label;
                        }
                    }
                    else if (0.0f < VEC_DOT(normal, vec)) {
                        return 0;
                    }
                }
                match_label:
                return 1;
            }
            else if (code & FORWARD_NORMAL) {
                if (vec && (0.0f < VEC_DOT(normal, vec)) || n2 && (0.0f < VEC_DOT(normal, n2))) {
                    return 0;
                }
            } else {
                if (vec && (0.0f < VEC_DOT_FIRST_ARG_NEGATE(normal, vec)) || (n2 && 0.0f < VEC_DOT_FIRST_ARG_NEGATE(normal, n2))) {
                    return 0;
                }
            }
            return 1;
        }
    }
    return 0;
}

u32 func_80101BA0(struct CollisionTriangle *triangle, struct Normal *normal, Vector *va, Vector *vb) {
    u32 code = triangle->normalType;
    if (!(code & NON_SOLID)) {
        if ((code & NO_SHADOW) && D_8012BD00 >> 31 == 0) {
            return 0;
        }
        else {
            code &= DOUBLE_SIDED_NORMAL;
            if (code != 0) {
                if (code == DOUBLE_SIDED_NORMAL) {
                    return 0;
                }
                if (code & FORWARD_NORMAL) {
                    if ((va != NULL && PVPDP(normal, va) > 0.0F) || (vb != NULL && PVPDP(normal, vb) > 0.0F)) {
                        return 0;
                    }
                } else {
                    if ((va != NULL && NVPDP(normal, va) > 0.0F) || (vb != NULL && NVPDP(normal, vb) > 0.0F)) {
                        return 0;
                    }
                }
                return 1;
            }
        }
    }
    return 0;
}

u8 func_80101D50(struct CollisionTriangle *arg0, u32 arg1, u32 arg2, u32 arg3) {
    if (!(arg0->normalType & NON_SOLID)) {
        if ((arg0->normalType & (DOUBLE_SIDED_NORMAL))) {
            if ((arg0->normalType & NO_SHADOW)) {
                if ((D_8012BD00 >> 0x1F) == 0) {
                    return 0;
                }
            }
            return 1;
        }
    }
    return 0;
}

u8 func_80101DA8(struct CollisionTriangle *arg0, u32 arg1, u32 arg2, u32 arg3) {
    if (!(arg0->normalType & NON_SOLID)) {
        if (arg0->normalType & DOUBLE_SIDED_NORMAL) {
            if (arg0->normalType & NO_SHADOW) {
                if ((D_8012BD00 >> 0x1F) == 0) {
                    return 0;
                }
            }
            return 1;
        }
    } else {
        if (arg0->collisionType == COL_TYPE_DEFAULT) {
            return 1;
        }
    }
    return 0;
}

// calls func_80101920 but with a negated arg1 Normal
void func_80101E14(struct CollisionTriangle *arg0, struct Normal *arg1, Vector *arg2, struct Normal *arg3) {
    struct Normal sp18;

    sp18.x = -arg1->x;
    sp18.y = -arg1->y;
    sp18.z = -arg1->z;
    func_80101920(arg0, &sp18, arg2, arg3);
}

// these two functions seem to handle non-solid triangles

// TODO: check the prototypes to get the correct types and returns.
u8 func_80101E5C(struct CollisionTriangle *arg0, struct Normal *arg1,
    struct Normal *arg2, u32 arg3) {

    if ((arg0->normalType & NON_SOLID)) {
        if (arg0->collisionType == 0xC) {
            if ((arg0->normalType & FORWARD_NORMAL)) {
                if (arg2 && 0.0f < VEC_DOT(arg1, arg2)) {
                    return 0;
                }
            } else {
                if (arg2 && 0.0f < VEC_DOT_FIRST_ARG_NEGATE(arg1, arg2)) {
                    return 0;
                }
            }
            return 1;
        }
    }
    return 0;
}

u8 func_80101F4C(struct CollisionTriangle *arg0, struct Normal *arg1,
    struct Normal *arg2, u32 arg3) {

    if (arg0->normalType & NON_SOLID) {
        if (arg0->collisionType == COL_TYPE_DEATH_FLOOR) {
            if ((arg0->normalType & FORWARD_NORMAL)) {
                if (arg2) {
                    if (0.0f < VEC_DOT(arg1, arg2)) {
                        return 0;
                    }
                }
            } else {
                if (arg2) {
                    if (0.0f < VEC_DOT_FIRST_ARG_NEGATE(arg1, arg2)) {
                        return 0;
                    }
                }
            }
            return 1;
        }
    }
    return 0;
}

u8 func_8010203C(struct CollisionTriangle *arg0, struct Normal *arg1,
    struct Normal *arg2, u32 arg3) {
    u32 code = arg0->normalType;

    if (code & DOUBLE_SIDED_NORMAL) {
        if (arg0->collisionType == gCollisionState->unk4A) {
            if (func_8011BED0(
                gCollisionState->unk4A,
                arg0->collisionParameter,
                gCollisionState->unk4C,
                arg2
            ) != 0) {
                if (code & FORWARD_NORMAL) {
                    if (arg2) {
                        if (0.0f < VEC_DOT(arg1, arg2)) {
                            return 0;
                        }
                    }
                } else {
                    if (arg2) {
                        if (0.0f < VEC_DOT_FIRST_ARG_NEGATE(arg1, arg2)) {
                            return 0;
                        }
                    }
                }
                return 1;
            }
        }
    }
    return 0;
}

u8 func_8010217C(struct CollisionTriangle *arg0, struct Normal *arg1, struct Normal *arg2, struct Normal *arg3) {
    if (arg0->collisionType == COL_TYPE_WALL_LADDER) {
        if (arg0->normalType & DOUBLE_SIDED_NORMAL) {
            return 1;
        }
    }
    return 0;
}

u8 func_801021BC(struct CollisionTriangle *arg0, struct Normal *arg1, struct Normal *arg2, struct Normal *arg3) {
    if (arg0->collisionType == COL_TYPE_ROPE) {
        if (arg0->normalType & DOUBLE_SIDED_NORMAL) {
            return 1;
        }
    }
    return 0;
}

void func_801021FC(struct CollisionTriangle *arg0, u32 arg1, u32 arg2, u32 arg3) {
    func_80101D50(arg0, arg1, arg2, arg3);
}

u8 func_8010221C(struct CollisionTriangle *arg0, struct Normal *arg1, struct Normal *arg2, u32 arg3) {
    u32 code = arg0->normalType;

    if ((code & NON_SOLID) && (arg0->Halt_Movement == gCollisionState->unk48) && (arg0->collisionType == gCollisionState->unk4A)) {
        if (code & FORWARD_NORMAL) {
            if (arg2) {
                if (0.0f < VEC_DOT(arg1, arg2)) {
                    return 0;
                }
            }
        } else {
            if (arg2) {
                if (0.0f < VEC_DOT_FIRST_ARG_NEGATE(arg1, arg2)) {
                    return 0;
                }
            }
        }
        return 1;
    }
    return 0;
}

u8 func_80102324(struct CollisionTriangle *arg0, struct Normal *arg1, struct Normal *arg2, struct Normal *arg3) {
    if (arg0->collisionType == COL_TYPE_SEMI_SOLID) {
        if ((arg0->normalType & DOUBLE_SIDED_NORMAL) != 0) {
            return 1;
        }
    }
    return 0;
}

u8 func_80102364(struct Normal *arg0, s32 arg1) {
    f32 temp_f0;
    f32 var_f2;
    struct Normal *temp_v0;

    temp_f0 = arg0->y;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 <= 0.5f) {
        goto ret0;
    }
    temp_v0 = gCollisionState->someNormal;
    if (temp_v0 != NULL) {
        if (0.0f < (temp_v0->y * temp_f0)) {
            if (arg1 != 0) {
                goto ret0;
            }
            return 1;
        }
        if (arg1 == 0) {
            goto ret0;
        }
        return 1;
    }
    return 1;
ret0:
    return 0;
}

u8 func_801023FC(struct Normal *arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f2;
    f32 var_f2_2;
    struct Normal *temp_v0;

    temp_f0 = arg0->y;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    if (var_f2 <= 0.5f) {
        temp_v0 = gCollisionState->someNormal;
        if (temp_v0 != NULL) {
            temp_f0_2 = (temp_v0->x * arg0->x) + (temp_v0->z * arg0->z);
            if (temp_f0_2 < 0.0f) {
                var_f2_2 = -temp_f0_2;
            } else {
                var_f2_2 = temp_f0_2;
            }
            if (var_f2_2 < 0.3f) {
                return 0;
            }
            if (0.0f < temp_f0_2) {
                if (arg1 != 0) {
                    goto ret0;
                }
                return 1;
            }
            if (arg1 == 0) {
                goto ret0;
            }
            return 1;
        }
        return 1;
    }
ret0:
    return 0;
}

u8 func_801024E8(Vector *arg0, s32 arg1) {
    struct Normal *temp_v0;

    temp_v0 = gCollisionState->someNormal;
    if (temp_v0 != NULL) {
        if (0.0f < ((temp_v0->x * arg0->x) + (temp_v0->y * arg0->y) + (temp_v0->z * arg0->z))) {
            if (arg1 != 0) {
                goto ret0;
            }
            return 1;
        }
        if (arg1 == 0) {
            goto ret0;
        }
        return 1;
    }
    return 1;
ret0:
    return 0;
}

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
    struct Normal *n;
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
extern s32 func_80102570(
    struct Normal *,
    s32 *,
    Vector *,
    u32 (*)(void),
    struct CollisionTriangle **
);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80102570.s")
#endif

u32 func_80103004(f32 *MAXLRP, Vector *arg1, struct Normal **arg2, struct CollisionTriangle **arg3) {
    u32 SP0[119];
    struct ColStateUnk4 sp9C;
    f32 maxlevel = *MAXLRP;
    gCollisionState->numCells = 0;
    gCollisionState->unk4 = &sp9C;
    VEC_SUB(gCollisionState->deltaPos, gCollisionState->nextPos, gCollisionState->currPos)
    if (IS_ZERO_VECTOR(gCollisionState->deltaPos)) {
        return 0;
    }
    func_80101400(gCollisionState->unk30->header.Num_Floor_Norms);
    if (gCollisionState->numCells != 0) {
        u32 sp94;
        struct CollisionTriangle *sp90;
        struct bgmaprecord *sp8C = gCollisionState->unk30->header.Triangle_Norm_Cells;
        s32 sp88;
        u16 cell;
        f32 LEVEL;
        struct Normal *N;
        struct CollisionTriangle *sp78;
        s32 temp_s2;
        Vector sp68;
        u32 i;
        for (i = 0; i < (u32)gCollisionState->numCells; i++) {
            cell = gCollisionState->unk4[i].cell;
            sp88 = sp8C[cell].code;
            if (sp88 != 0) {
                LEVEL = gCollisionState->unk4[i].projection;
                if (LEVEL < maxlevel) {
                    N = &gCollisionState->unk30->header.Triangle_Normals[sp8C[cell].index];
                    sp68.x = (gCollisionState->deltaPos.x * LEVEL) + gCollisionState->currPos.x;
                    sp68.y = (gCollisionState->deltaPos.y * LEVEL) + gCollisionState->currPos.y;
                    sp68.z = (gCollisionState->deltaPos.z * LEVEL) + gCollisionState->currPos.z;
                    temp_s2 = func_80102570(N, &sp88, &sp68, gCollisionState->unk3C, &sp78);
                    if (sp78 != 0) {
                        if (gCollisionState->unk40(sp78, N, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0) {
                            sp94 = cell;
                            sp90 = sp78;
                            maxlevel = LEVEL;
                        } else if (temp_s2 != 0) {
                            sp88++;
                            func_80102570(N, &sp88, &sp68, gCollisionState->unk3C, &sp78);
                            if (sp78 != 0) {
                                if (gCollisionState->unk40(sp78, N, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0) {
                                    sp94 = cell;
                                    sp90 = sp78;
                                    maxlevel = LEVEL;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (*MAXLRP != maxlevel) {
            if (arg2 != 0) {
                *arg2 = &gCollisionState->unk30->header.Triangle_Normals[sp8C[sp94].index];
            }
            if (arg3 != 0) {
                *arg3 = sp90;
            }
            *MAXLRP = maxlevel;
            if (arg1 != 0) {
                arg1->x = (gCollisionState->deltaPos.x * maxlevel) + gCollisionState->currPos.x;
                arg1->y = (gCollisionState->deltaPos.y * maxlevel) + gCollisionState->currPos.y;
                arg1->z = (gCollisionState->deltaPos.z * maxlevel) + gCollisionState->currPos.z;
            }
            return 1;
        }
    }
    return 0;
}

u32 func_801033A8(struct struct8011BA10_temp *arg0, Vector *arg1, Vector *arg2) {
    Vector sp14;
    Vector sp8;

    sp14 = *arg1;
    sp8 = *arg2;
    if ((sp14.x < arg0->unkA0) && (sp8.x < arg0->unkA0)) {
        return 0;
    }
    if ((arg0->unkAC < sp14.x) && (arg0->unkAC < sp8.x)) {
        return 0;
    }
    if ((sp14.y < arg0->unkA4) && (sp8.y < arg0->unkA4)) {
        return 0;
    }
    if ((arg0->unkB0 < sp14.y) && (arg0->unkB0 < sp8.y)) {
        return 0;
    }
    if ((sp14.z < arg0->unkA8) && (sp8.z < arg0->unkA8)) {
        return 0;
    }
    if (arg0->unkB4 < sp14.z && arg0->unkB4 < sp8.z) {
        return 0;
    }
    return 1;
}

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
void func_80103528(s32, s32, s32, s32, s32);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103528.s")
#endif

s32 func_80103930(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5,
                        s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = func_801024E8;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

s32 func_801039E8(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5,
                        s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

void func_80103AA0(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

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

void func_80103CC8(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
        s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = func_801024E8;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

u32 func_80103D80(f32 *arg0, Vector *arg1, struct Normal *arg2, Vector *arg3) {
    f32 sp1C = 1.1f;

    gCollisionState -> unk30 = D_80129410;
    if (func_80103004(&sp1C, arg1, arg2, arg3) != 0) {
        if (arg0 != NULL) {
            *arg0 = sp1C;
        }
        return 1;
    }
    return 0;
}

void func_80103DE4(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk3C = NULL;
    newColState.unk44 = &func_801024E8;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = arg2;
    newColState.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}


s32 func_80103EA0(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101920;
    newColState.unk34 = 0;
    newColState.unk38 = 0;
    newColState.unk3C = NULL;
    return func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80103F58(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101BA0;
    newColState.unk34 = 0;
    newColState.unk38 = 0;
    newColState.unk3C = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104010(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7, s32 arg8)
{
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101920;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    newColState.unk34 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801040CC(Vector *arg0, Vector *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101D50;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104184(Vector *arg0, Vector *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101E14;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

s32 func_8010423C(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, s32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_801042F4(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_80101920;
    newColState.unk34 = NULL;
    newColState.unk3C = NULL;
    newColState.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801043B0(Vector *arg0, Vector *arg1, u32 (*arg2)(), s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_80101E14;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104468(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_80101DA8;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    newColState.unk34 = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104520(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801024E8;
    newColState.unk40 = func_80101DA8;
    newColState.unk3C = NULL;
    newColState.unk34 = arg2;
    newColState.unk38 = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801045DC(Vector *arg0, Vector *arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801024E8;
    newColState.unk40 = func_8010203C;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    newColState.unk4A = arg2;
    newColState.unk4C = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801046A0(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.unk3C = NULL;
    sp18.unk44 = func_801023FC;
    sp18.unk40 = func_80101E5C;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    func_80103D80(arg2, arg3, arg4, arg5);
}

void func_8010474C(Vector *arg0, Vector *arg1) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.unk3C = NULL;
    sp18.unk44 = func_80102364;
    sp18.unk40 = func_80101F4C;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    func_80103D80(0, 0, 0, 0);
}

void func_801047F0(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_8010217C;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}

void func_801048A4(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_801023FC;
    newColState.unk40 = func_801021BC;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}

void func_80104958(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_801021FC;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    func_80103B58(0, arg2, arg3, arg4, 0);
}

void func_80104A08(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.unk44 = func_80102364;
    sp18.unk40 = func_801021FC;
    sp18.unk34 = NULL;
    sp18.unk38 = NULL;
    sp18.unk3C = NULL;
    func_80103D80(0, arg2, arg3, arg4);
}

void func_80104AB4(Vector *arg0, Vector *arg1, u16 arg2, u16 arg3, s32 arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
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

void func_80104B70(Vector *arg0, Vector *arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80102324;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    newColState.unk3C = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}

u8 func_80104C24(Vector *cPos, Vector *nPos) {
    struct Normal *sp7C;
    struct CollisionTriangle *sp78;
    struct CollisionState colState;
    Vector sp1C;

    gCollisionState = &colState;
    colState.currPos = *cPos;
    colState.nextPos = *nPos;
    colState.someNormal = NULL;
    colState.unk3C = NULL;
    colState.unk44 = &func_801024E8;
    colState.unk40 = &func_80101D50;
    colState.unk34 = NULL;
    colState.unk38 = NULL;
    if (func_80103D80(NULL, NULL, &sp7C, &sp78) != 0) {
        VECPTR_SUB(sp1C, nPos, cPos);
        if (func_80101920(sp78, sp7C, (struct Normal *) &sp1C, 0) == 0) {
            return 1;
        }
    }
    return 0;
}

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

void func_801050E0(struct PositionState *arg0) {
    f32 *temp_v0 = arg0->kirbyHeadPos;

    arg0->kirbyHeadPos[0] = arg0->kirbyFootPos[0];
    arg0->kirbyHeadPos[1] = arg0->scale[0] + arg0->kirbyFootPos[1];
    arg0->kirbyHeadPos[2] = arg0->kirbyFootPos[2];
    arg0->kirbyHeight[0] = arg0->scale[1] + arg0->kirbyFootPos[1];
    arg0->kirbyHeight[1] = arg0->scale[2] + arg0->kirbyFootPos[1];
    func_80104FB8(arg0);
    temp_v0[3] = BD00.unk4 + temp_v0[0];
    temp_v0[4] = BD00.unk8 + temp_v0[2];
    temp_v0[5] = BD00.unkC + temp_v0[0];
    temp_v0[6] = BD00.unk10 + temp_v0[2];
}

void func_80105180(struct PositionState *arg0) {
    arg0->collisionFlags = 0;
    arg0->byteArray[2] =
    arg0->byteArray[3] =
    arg0->byteArray[1] =
    arg0->byteArray[0] =
    arg0->byteArray[4] = 0x14;
    arg0->VI_Timer = D_8012BD40;
}

void func_801051AC(struct PositionState *arg0) {
    func_801050E0(arg0);
    arg0->VI_Timer = D_8012BD40;
}

void func_801051DC(struct PositionState *arg0) {
    arg0->kirbyHeadPos[0] = arg0->kirbyGroundPath[0] = arg0->kirbyHeadPath[0] = arg0->kirbyFootPos[0];
    arg0->kirbyHeadPos[1] = arg0->kirbyHeight[0] = arg0->kirbyHeight[1] = arg0->scale[0] + arg0->kirbyFootPos[1];
    arg0->kirbyHeadPos[2] = arg0->kirbyGroundPath[1] = arg0->kirbyHeadPath[1] = arg0->kirbyFootPos[2];
}

void func_80105218(struct UnkBCA0 *arg0) {
    arg0->flags.w = 0;
    arg0->rec[4].type = 0x14;
    arg0->rec[0].type = 0x14;
    arg0->rec[1].type = 0x14;
    arg0->rec[3].type = 0x14;
    arg0->rec[2].type = 0x14;
}

void func_80105238(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    arg0->collisionFlags = arg1->flags.w;
    arg0->byteArray[2] = arg1->rec[2].type;
    arg0->byteArray[3] = arg1->rec[3].type;
    arg0->byteArray[1] = arg1->rec[1].type;
    arg0->byteArray[0] = arg1->rec[0].type;
    arg0->byteArray[4] = arg1->rec[4].type;
    func_801050E0(arg0);
}

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

s32 func_80105530(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    Vector sp54;
    Vector sp48;
    Vector sp3C;

    if (!((arg1->flags.w >> 0x13) & 7)) {
        sp3C.x = BD00.unk14;
        sp3C.y = 0.0f;
        sp3C.z = BD00.unk18;
        sp54.x = BD00.unkC + arg0->kirbyFootPos[0];
        sp54.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp54.z = BD00.unk10 + arg0->kirbyFootPos[2];
        sp48.x = BD00.unk4 + arg0->kirbyFootPos[0];
        sp48.y = sp54.y;
        sp48.z = BD00.unk8 + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[2].norm, &arg1->rec[2].tri, &arg1->rec[2].type) != 0) {
            arg1->flags.f.a |= 1;
            return 1;
        }
        sp48.x = BD00.unk24 + arg0->kirbyFootPos[0];
        sp48.z = BD00.unk28 + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[2].norm, &arg1->rec[2].tri, &arg1->rec[2].type) != 0) {
            return 1;
        }
    }
    return 0;
}


s32 func_801056C8(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 sp54;
    Vector sp48;
    Vector sp3C;
    Vector sp30;

    sp48.x = arg0->kirbyGroundPath[0];
    sp48.y = arg0->kirbyHeadPos[1];
    sp48.z = arg0->kirbyGroundPath[1];
    sp3C.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp3C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp3C.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp30.x = BD00.unk14;
    sp30.y = 0.0f;
    sp30.z = BD00.unk18;
    if (func_80104D2C(&sp48, &sp3C, &sp30, 0, &D_8012BD34, &arg1->rec[2].norm, &arg1->rec[2].tri, &arg1->rec[2].type) != 0) {
        arg1->flags.f.a |= 1;
        return 1;
    }
    return 0;
}

#ifdef NON_MATCHING
s32 func_801057C4(struct Normal *arg0, Vector *arg1, Vector *arg2, Vector *arg3) {
    Vector sp24;
    f32 sp20;
    f32 sp1C;
    Vector sp10;
    f32 sp4[3];
    f32 dx;
    f32 dy;
    f32 dz;

    sp4[2] = arg0->x;
    sp4[1] = arg0->y;
    sp4[0] = arg0->z;
    dx = arg2->x - arg1->x;
    dy = arg2->y - arg1->y;
    dz = arg2->z - arg1->z;
    sp1C = (sp4[2] * dx) + (sp4[1] * dy) + (sp4[0] * dz);
    if (sp1C == 0.0f) {
        return 0;
    }
    sp20 = -(((sp4[2] * arg1->x) + (sp4[1] * arg1->y) + (sp4[0] * arg1->z) + arg0->originOffset) / sp1C);
    arg3->x = arg1->x + (dx * sp20);
    arg3->y = arg1->y + (dy * sp20);
    arg3->z = arg1->z + (dz * sp20);
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
    struct Normal *n;
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
    struct Normal *n;
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

#ifdef NON_MATCHING
// Near match: first 53 insns identical; target keeps `&arg0->scale[0]` in a
// pointer temp (sp30) that IDO here folds back into direct s0-relative loads.
s32 func_801063F0(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 sp7C;
    f32 sp78;
    Vector sp6C;
    Vector sp60;
    Vector sp54;
    s32 sp50;
    f32 sp4C;
    Vector sp40;
    struct Normal *sp3C;
    struct CollisionTriangle *sp38;
    s32 sp34;
    Vector *sp30;

    sp78 = 1.1f;
    sp54.x = BD00.unk1C;
    sp54.y = 0.0f;
    sp54.z = BD00.unk20;
    sp6C.x = arg0->kirbyHeadPath[0];
    sp6C.y = arg0->kirbyHeadPos[1];
    sp6C.z = arg0->kirbyHeadPath[1];
    sp60.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp60.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp50 = 0;
    sp60.z = BD00.unk10 + arg0->kirbyFootPos[2];
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp78, &D_8012BD34, &arg1->rec[3].norm, &arg1->rec[3].tri, &arg1->rec[3].type) != 0) {
        sp50 = 8;
    }
    sp6C.y = arg0->kirbyHeight[1];
    sp60.y = arg0->kirbyFootPos[1] + sp30->z;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) &&
            ((sp50 == 0) || ((sp3C != arg1->rec[3].norm) && (sp4C < sp78)))) {
        D_8012BD34 = sp40;
        sp50 = 0x20;
        arg1->rec[3].norm = sp3C;
        arg1->rec[3].tri = sp38;
        arg1->rec[3].type = sp34;
        sp78 = sp4C;
    }
    sp6C.y = arg0->kirbyHeight[0];
    sp60.y = arg0->kirbyFootPos[1] + sp30->y;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) &&
            ((sp50 == 0) || ((sp3C != arg1->rec[3].norm) && (sp4C < sp78)))) {
        D_8012BD34 = sp40;
        sp50 = 0x10;
        arg1->rec[3].norm = sp3C;
        arg1->rec[3].tri = sp38;
        arg1->rec[3].type = sp34;
    }
    if (sp50 != 0) {
        arg1->flags.f.a |= sp50;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801063F0.s")
#endif
s32 func_8010669C(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    Vector sp54;
    Vector sp48;
    Vector sp3C;

    if (!((arg1->flags.w >> 0x13) & 0x38)) {
        sp3C.x = BD00.unk1C;
        sp3C.y = 0.0f;
        sp3C.z = BD00.unk20;
        sp54.x = BD00.unk4 + arg0->kirbyFootPos[0];
        sp54.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp54.z = BD00.unk8 + arg0->kirbyFootPos[2];
        sp48.x = BD00.unkC + arg0->kirbyFootPos[0];
        sp48.y = sp54.y;
        sp48.z = BD00.unk10 + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[3].norm, &arg1->rec[3].tri, &arg1->rec[3].type) != 0) {
            arg1->flags.f.a |= 8;
            return 1;
        }
        sp48.x = BD00.unk2C + arg0->kirbyFootPos[0];
        sp48.z = BD00.unk30 + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[3].norm, &arg1->rec[3].tri, &arg1->rec[3].type) != 0) {
            return 1;
        }
    }
    return 0;
}

s32 func_80106834(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    sp4C.x = arg0->kirbyHeadPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyHeadPath[1];
    sp40.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp34.x = BD00.unk1C;
    sp34.y = 0.0f;
    sp34.z = BD00.unk20;
    if (func_80104D2C(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[3].norm, &arg1->rec[3].tri, &arg1->rec[3].type) != 0) {
        arg1->flags.f.a |= 8;
        return 1;
    }
    return 0;
}

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
    struct Normal *n;
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

s32 func_801072E0(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    f32 sp30;

    sp4C.x = arg0->kirbyHeadPos[0];
    sp4C.y = arg0->kirbyHeight[0];
    sp4C.z = arg0->kirbyHeadPos[2];
    sp40.x = arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp40.z = arg0->kirbyFootPos[2];
    sp34.x = 0.0f;
    sp34.z = 0.0f;
    sp34.y = 1.0f;
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[1].norm, &arg1->rec[1].tri, &arg1->rec[1].type) != 0) {
        arg1->flags.f.a |= 0x40;
        return 1;
    }
    return 0;
}

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
    struct Normal *n;
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

void func_801077D4(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    struct Normal *temp_v1;

    temp_v0 = arg1->flags.w >> 0x13;
    if (temp_v0 & 0x40) {
        arg0->kirbyFootPos[0] = BD00.unk34;
        arg0->kirbyFootPos[1] = (BD00.unk38 - arg0->scale[1]) - 0.1f;
        arg0->kirbyFootPos[2] = BD00.unk3C;
        return;
    }
    temp_v1 = arg1->rec[1].norm;
    temp_f0 = (-((temp_v1->x * arg0->kirbyFootPos[0]) + (temp_v1->z * arg0->kirbyFootPos[2]) + temp_v1->originOffset) / temp_v1->y) - arg0->scale[1];
    if (temp_f0 < arg0->kirbyFootPos[1]) {
        arg0->kirbyFootPos[1] = temp_f0 - 0.1f;
        return;
    }
    arg1->flags.f.a = temp_v0 & 0xFE3F;
}

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

s32 func_80107F94(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    f32 sp30;

    sp4C.x = arg0->kirbyHeadPos[0];
    sp4C.y = arg0->kirbyHeight[1];
    sp4C.z = arg0->kirbyHeadPos[2];
    sp40.x = arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[2] + arg0->kirbyFootPos[1];
    sp40.z = arg0->kirbyFootPos[2];
    sp34.x = 0.0f;
    sp34.z = 0.0f;
    sp34.y = -1.0f;
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[0].norm, &arg1->rec[0].tri, &arg1->rec[0].type) != 0) {
        arg1->flags.f.a |= 0x200;
        return 1;
    }
    return 0;
}

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
    struct Normal *n;
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
    struct Normal *n;
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
    struct Normal *n;
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

void func_80109240(s32 arg0, s32 arg1) {
}

void func_8010924C(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    struct Normal *temp_v1;

    temp_v0 = arg1->flags.w >> 0x13;
    if (temp_v0 & 0x200) {
        arg0->kirbyFootPos[0] = BD00.unk34;
        arg0->kirbyFootPos[1] = (BD00.unk38 - arg0->scale[2]) + 0.1f;
        arg0->kirbyFootPos[2] = BD00.unk3C;
        return;
    }
    temp_v1 = arg1->rec[0].norm;
    temp_f0 = (-((temp_v1->x * arg0->kirbyFootPos[0]) + (temp_v1->z * arg0->kirbyFootPos[2]) + temp_v1->originOffset) / temp_v1->y) - arg0->scale[2];
    if (arg0->kirbyFootPos[1] < temp_f0) {
        arg0->kirbyFootPos[1] = temp_f0 + 0.1f;
        return;
    }
    arg1->flags.f.a = temp_v0 & 0xF1FF;
}

#ifdef NON_MATCHING
// 19/123: f16/f18 parity from the `(sp2C.z - sp20.z) * BD00.unk18` multiply on.
// Swept all 8 operand/addend orders and 7 named-temp splits; 19 is the floor.
void func_80109318(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[1].norm;
    sp2C.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp2C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp2C.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp38.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp38.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp38.y = (sp4C->x * (sp2C.x - sp38.x)) + ((sp4C->z * (sp2C.z - sp38.z)) * sp44) + sp2C.y;
    func_801057C4(arg1->rec[2].norm, &sp2C, &sp38, &sp20);
    if ((((sp2C.z - sp20.z) * BD00.unk18) + ((sp2C.x - sp20.x) * BD00.unk14)) < 0.0f) {
        arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFF8;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.unk24;
        arg0->kirbyFootPos[2] = sp20.z - BD00.unk28;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[1]) - 0.1f;
        arg1->flags.f.a = ((arg1->flags.w >> 0x13) & 0xFFF8) | 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109318.s")
#endif
/* FACTORY: 44/123, ported from donor func_80109318 (19/123). Substitution map vs 318 is exact:
   rec index for sp4C and for the 801057C4 call, BD00 offset pair, 0xFFF8/0xFFC7 mask,
   |1 vs |8, scale[1]/scale[2], -0.1f/+0.1f. Residue is the donor f16/f18 mul parity plus
   compare-block shape not yet tuned to the donor. */
#ifdef MIPS_TO_C

void func_80109504(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[1].norm;
    sp38.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp2C.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp2C.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + ((sp4C->z * (sp38.z - sp2C.z)) * sp44) + sp38.y;
    func_801057C4(arg1->rec[3].norm, &sp2C, &sp38, &sp20);
    if (((((sp38.z - sp20.z) * BD00.unk20) + ((sp38.x - sp20.x) * BD00.unk1C))) < 0.0f) {
        arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.unk2C;
        arg0->kirbyFootPos[2] = sp20.z - BD00.unk30;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[1]) - 0.1f;
        arg1->flags.f.a = ((arg1->flags.w >> 0x13) & 0xFFC7) | 8;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109504.s")
#endif

void func_801096F0(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    if ((arg1->flags.w >> 0x13) & 0x1C0) {
        if ((func_80105284() != 0) || (func_80105530(arg0, arg1) != 0)) {
            func_80109318(arg0, arg1);
        }
        if ((func_801063F0(arg0, arg1) != 0) || (func_8010669C(arg0, arg1) != 0)) {
            func_80109504(arg0, arg1);
        }
    }
}

/* FACTORY: 48/123, ported from donor func_80109318 (19/123). Substitution map vs 318 is exact:
   rec index for sp4C and for the 801057C4 call, BD00 offset pair, 0xFFF8/0xFFC7 mask,
   |1 vs |8, scale[1]/scale[2], -0.1f/+0.1f. Residue is the donor f16/f18 mul parity plus
   compare-block shape not yet tuned to the donor. */
#ifdef MIPS_TO_C

void func_80109784(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[0].norm;
    sp2C.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp2C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp2C.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp38.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp38.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp38.y = (sp4C->x * (sp2C.x - sp38.x)) + ((sp4C->z * (sp2C.z - sp38.z)) * sp44) + sp2C.y;
    func_801057C4(arg1->rec[2].norm, &sp2C, &sp38, &sp20);
    if (((((sp2C.z - sp20.z) * BD00.unk18) + ((sp2C.x - sp20.x) * BD00.unk14))) < 0.0f) {
        arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFF8;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.unk24;
        arg0->kirbyFootPos[2] = sp20.z - BD00.unk28;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[2]) + 0.1f;
        arg1->flags.f.a = ((arg1->flags.w >> 0x13) & 0xFFF8) | 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109784.s")
#endif

/* FACTORY: 44/123, ported from donor func_80109318 (19/123). Substitution map vs 318 is exact:
   rec index for sp4C and for the 801057C4 call, BD00 offset pair, 0xFFF8/0xFFC7 mask,
   |1 vs |8, scale[1]/scale[2], -0.1f/+0.1f. Residue is the donor f16/f18 mul parity plus
   compare-block shape not yet tuned to the donor. */
#ifdef MIPS_TO_C

void func_80109970(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[0].norm;
    sp38.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp2C.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp2C.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + ((sp4C->z * (sp38.z - sp2C.z)) * sp44) + sp38.y;
    func_801057C4(arg1->rec[3].norm, &sp2C, &sp38, &sp20);
    if (((((sp38.z - sp20.z) * BD00.unk20) + ((sp38.x - sp20.x) * BD00.unk1C))) < 0.0f) {
        arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.unk2C;
        arg0->kirbyFootPos[2] = sp20.z - BD00.unk30;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[2]) + 0.1f;
        arg1->flags.f.a = ((arg1->flags.w >> 0x13) & 0xFFC7) | 8;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109970.s")
#endif

void func_80109B5C(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    if ((arg1->flags.w >> 0x13) & 0xE00) {
        if ((func_80105284() != 0) || (func_80105530(arg0, arg1) != 0)) {
            func_80109784(arg0, arg1);
        }
        if ((func_801063F0(arg0, arg1) != 0) || (func_8010669C(arg0, arg1) != 0)) {
            func_80109970(arg0, arg1);
        }
    }
}

s32 func_80109BF0(struct PositionState *arg0, struct UnkBCA0 *arg1, s32 arg2) {
    s32 sp24;
    u32 var_v1;

    sp24 = 0;
    D_8012BD44 = arg0->VI_Timer;
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
    var_v1 = arg1->flags.w >> 0x13;
    if (var_v1 != 0) {
        if ((var_v1 & 0xE00) && (arg1->rec[0].type != 0x14)) {
            func_80106C5C(arg0, arg1);
        }
        if ((var_v1 & 7) && (arg1->rec[2].type != 0x14)) {
            func_801063F0(arg0, arg1);
        }
        if ((var_v1 & 0x38) && (arg1->rec[3].type != 0x14)) {
            func_80105284(arg0, arg1);
        }
    }
    arg0->VI_Timer = D_8012BD40;
    return sp24;
}

s32 func_80109DD8(struct PositionState *arg0) {
    return func_80109BF0(arg0, &D_8012BCA0, 8);
}

s32 func_80109E00(struct PositionState *arg0) {
    s32 sp1C;
    s32 ret;

    sp1C = D_8012D940;
    D_8012D940 = 0;
    ret = func_80109BF0(arg0, &D_8012BCA0, 8);
    D_8012D940 = sp1C;
    return ret;
}

s32 func_80109E44(struct PositionState *arg0) {
    s32 temp_a0;
    u32 var_v1;

    BD00.unk0_80 = 1;
    temp_a0 = func_80109BF0(arg0, &D_8012BCA0, 8);
    BD00.unk0_80 = 0;
    var_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((var_v1 & 7) && (D_8012BCA0.rec[2].tri->normalType & 4)) {
        var_v1 &= 0xFFF8;
        D_8012BCA0.flags.f.a = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & 0x38) && (D_8012BCA0.rec[3].tri->normalType & 4)) {
        var_v1 &= 0xFFC7;
        D_8012BCA0.flags.f.a = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCA0.rec[1].tri->normalType & 4)) {
        var_v1 &= 0xFE3F;
        D_8012BCA0.flags.f.a = var_v1;
    }
    return temp_a0;
}

s32 func_80109F60(struct PositionState *arg0) {
    s32 ret;

    BD00.unk0_80 = 1;
    ret = func_80109BF0(arg0, &D_8012BCA0, 8);
    BD00.unk0_80 = 0;
    return ret;
}

void func_80109FAC(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    struct Normal *n;
    f32 dax;
    f32 daz;
    f32 dbx;
    f32 dbz;

    if ((arg1->flags.w >> 0x13) & 1) {
        arg0->kirbyFootPos[0] = BD00.unk34 - BD00.unk24;
        arg0->kirbyFootPos[1] = BD00.unk38 - arg0->scale[0];
        arg0->kirbyFootPos[2] = BD00.unk3C - BD00.unk28;
        return;
    }
    n = arg1->rec[2].norm;
    sp4C.x = arg0->kirbyGroundPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyGroundPath[1];
    sp40.x = BD00.unk24 + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.unk28 + arg0->kirbyFootPos[2];
    if (func_801057C4(n, &sp4C, &sp40, &sp34) != 0) {
        dbx = sp40.x - sp4C.x;
        dbz = sp40.z - sp4C.z;
        dax = sp34.x - sp4C.x;
        daz = sp34.z - sp4C.z;
        if (((dax * dax) + (daz * daz)) < ((dbx * dbx) + (dbz * dbz))) {
            arg0->kirbyFootPos[0] = sp34.x - BD00.unk24;
            arg0->kirbyFootPos[1] = sp34.y - arg0->scale[0];
            arg0->kirbyFootPos[2] = sp34.z - BD00.unk28;
        } else {
            arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFF8;
        }
    }
}





void func_8010A138(struct PositionState *arg0, struct UnkBCA0 *arg1) {
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    struct Normal *n;
    f32 dax;
    f32 daz;
    f32 dbx;
    f32 dbz;

    if ((arg1->flags.w >> 0x13) & 8) {
        arg0->kirbyFootPos[0] = BD00.unk34 - BD00.unk2C;
        arg0->kirbyFootPos[1] = BD00.unk38 - arg0->scale[0];
        arg0->kirbyFootPos[2] = BD00.unk3C - BD00.unk30;
        return;
    }
    sp4C.x = arg0->kirbyHeadPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyHeadPath[1];
    sp40.x = BD00.unk2C + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.unk30 + arg0->kirbyFootPos[2];
    n = arg1->rec[3].norm;
    if (func_801057C4(n, &sp4C, &sp40, &sp34) != 0) {
        dbx = sp40.x - sp4C.x;
        dbz = sp40.z - sp4C.z;
        dax = sp34.x - sp4C.x;
        daz = sp34.z - sp4C.z;
        if (((dax * dax) + (daz * daz)) < ((dbx * dbx) + (dbz * dbz))) {
            arg0->kirbyFootPos[0] = sp34.x - BD00.unk2C;
            arg0->kirbyFootPos[1] = sp34.y - arg0->scale[0];
            arg0->kirbyFootPos[2] = sp34.z - BD00.unk30;
        } else {
            arg1->flags.f.a = (arg1->flags.w >> 0x13) & 0xFFC7;
        }
    }
}



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
    struct Normal *n;
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

s32 func_8010AEE0(s32 arg0, s32 arg1) {
    return 0;
}

s32 func_8010AEF0(struct PositionState *arg0, struct UnkBCA0 *arg1, s32 arg2) {
    s32 sp84;
    struct PositionState sp28;
    u32 sp24;

    sp84 = 0;
    D_8012BD44 = arg0->VI_Timer;
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
            sp84 = func_8010AC1C(arg0, arg1);
        } else {
            sp84 = func_8010AEE0(arg0, arg1);
        }
        func_80109B5C(arg0, arg1);
    }
    if (func_8010669C(arg0, arg1) != 0) {
        func_80106930(arg0, arg1);
    }
    if (func_80105530(arg0, arg1) != 0) {
        func_80109FAC(arg0, arg1);
    }
    sp24 = arg1->flags.w >> 0x13;
    if ((func_80106C5C(arg0, arg1) != 0) && !(sp24 & 0xE00)) {
        func_801073C4(arg0, arg1);
        func_801096F0(arg0, arg1);
    }
    if (sp24 != 0) {
        if ((sp24 & 0x38) && (arg1->rec[3].type != 0x14)) {
            func_80105284(arg0, arg1);
        }
        if ((sp24 & 7) && (arg1->rec[2].type != 0x14)) {
            func_801063F0(arg0, arg1);
        }
    }
    arg0->VI_Timer = D_8012BD40;
    return sp84;
}

s32 func_8010B0B0(struct PositionState *arg0) {
    return func_8010AEF0(arg0, &D_8012BCA0, 8);
}

s32 func_8010B0D8(struct PositionState *arg0) {
    s32 sp1C;
    s32 ret;

    sp1C = D_8012D940;
    D_8012D940 = 0;
    ret = func_8010AEF0(arg0, &D_8012BCA0, 8);
    D_8012D940 = sp1C;
    return ret;
}

s32 func_8010B11C(struct PositionState *arg0) {
    s32 temp_a0;
    u32 var_v1;

    BD00.unk0_80 = 1;
    temp_a0 = func_8010AEF0(arg0, &D_8012BCA0, 8);
    BD00.unk0_80 = 0;
    var_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((var_v1 & 7) && (D_8012BCA0.rec[2].tri->normalType & 4)) {
        var_v1 &= 0xFFF8;
        D_8012BCA0.flags.f.a = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & 0x38) && (D_8012BCA0.rec[3].tri->normalType & 4)) {
        var_v1 &= 0xFFC7;
        D_8012BCA0.flags.f.a = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCA0.rec[1].tri->normalType & 4)) {
        var_v1 &= 0xFE3F;
        D_8012BCA0.flags.f.a = var_v1;
    }
    return temp_a0;
}

s32 func_8010B238(struct PositionState *arg0) {
    s32 ret;

    BD00.unk0_80 = 1;
    ret = func_8010AEF0(arg0, &D_8012BCA0, 8);
    BD00.unk0_80 = 0;
    return ret;
}

/* FACTORY: 103/126, frame+all stack offsets exact; residue is IDO folding arg0+0x10 into lw offsets
   where the ROM CSEs it into a register spilled at 0x30. Same residue in B480/B67C/B860/105284/1063F0. */
#ifdef MIPS_TO_C

s32 func_8010B284(struct PositionState *arg0) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    sp34.x = 0.0f;
    sp34.z = 0.0f;
    sp34.y = -1.0f;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = arg0->scale[2] + arg0->kirbyFootPos[1];
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.y = sp4C.y - 0.13f;
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x1000;
        return 1;
    }
    sp4C.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp4C.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x;
    sp4C.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x4000;
        return 1;
    }
    sp4C.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp4C.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x2000;
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


/* FACTORY: 92/120, ROM CSEs $v0 = arg0+0x10 and spills it at 0x30; IDO folds it into lw offsets. Frame/offsets already exact. */
#ifdef MIPS_TO_C

s32 func_8010B67C(struct PositionState *arg0) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34.x = BD00.unk14;
    sp34.y = 0.0f;
    sp34.z = BD00.unk18;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x + BD00.unk4;
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.z = sp4C.z + BD00.unk8;
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 8;
        return 1;
    }
    sp4C.x = sp4C.x + BD00.unkC;
    sp4C.z = sp4C.z + BD00.unk10;
    sp4C.y = arg0->scale[2] + arg0->kirbyFootPos[1];
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x20;
        return 1;
    }
    sp40.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp40.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x10;
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
    Vector *sp30;
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

s32 func_8010BA44(struct PositionState *arg0) {
    u32 temp_v0;

    D_8012BD44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    if (func_801072E0(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_80107F94(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    temp_v0 = D_8012BCA4[-1] >> 0x13;
    if ((temp_v0 != 0) && (temp_v0 & 0xE00) && (D_8012BCA8[-1] != 0x14)) {
        func_801072E0(arg0, &D_8012BCA0);
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

s32 func_8010BB08(struct PositionState *arg0) {
    u32 temp_v0;

    D_8012BD44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80106C5C(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    temp_v0 = D_8012BCA4[-1] >> 0x13;
    if ((temp_v0 != 0) && (temp_v0 & 0xE00) && (D_8012BCA8[-1] != 0x14)) {
        func_80106C5C(arg0, &D_8012BCA0);
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

#ifdef NON_MATCHING
// Near match: only regalloc differs (s0/s1 swapped; target has arg0 in s0
// and &D_8012BCA0 in s1 while keeping the flags loads folded through s1).
s32 func_8010BBD4(struct PositionState *arg0) {
    u32 var_v1;

    BD00.unk0_80 = 1;
    BD00.unk44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_80106C5C(arg0, &D_8012BCA0) != 0) {
        func_801077D4(arg0, &D_8012BCA0);
    }
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    var_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((var_v1 != 0) && (var_v1 & 0xE00) && (D_8012BCA8[-1] != 0x14)) {
        func_80106C5C(arg0, &D_8012BCA0);
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & 0x1C0) && (D_8012BCB4->normalType & 4)) {
        D_8012BCA0.flags.f.a = (D_8012BCA4[-1] >> 0x13) & 0xFE3F;
    }
    BD00.unk0_80 = 0;
    arg0->VI_Timer = BD00.unk40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BBD4.s")
#endif
s32 func_8010BD0C(struct PositionState *arg0) {
    D_8012BD44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_801078A0(arg0, &D_8012BCA0) != 0) {
        func_8010924C(arg0, &D_8012BCA0);
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

s32 func_8010BD84(struct PositionState *arg0) {
    u32 pad;
    u32 temp_v1;

    D_8012BD44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    if (func_801056C8(arg0, &D_8012BCA0) != 0) {
        func_80109FAC(arg0, &D_8012BCA0);
    }
    if (func_80106834(arg0, &D_8012BCA0) != 0) {
        func_8010A138(arg0, &D_8012BCA0);
    }
    temp_v1 = D_8012BCA4[-1] >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            func_80106834(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_801056C8(arg0, &D_8012BCA0);
        }
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

s32 func_8010BE7C(struct PositionState *arg0) {
    u32 pad;
    u32 temp_v1;

    D_8012BD44 = arg0->VI_Timer;
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
    temp_v1 = D_8012BCA4[-1] >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            func_801063F0(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_80105284(arg0, &D_8012BCA0);
        }
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

#ifdef NON_MATCHING
// Near match: differs only in scheduling around the second flags test
// (target hoists the D_8012BD00 address into $v1 before the beqz, avoiding
// a move; temp registers shift by one as a result).
s32 func_8010BFAC(struct PositionState *arg0) {
    u32 pad;
    u32 temp_v1;

    BD00.unk0_80 = 1;
    BD00.unk44 = arg0->VI_Timer;
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
    temp_v1 = D_8012BCA0.flags.w >> 0x13;
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) && (D_8012BCBC != 0x14)) {
            func_801063F0(arg0, &D_8012BCA0);
        }
        if ((temp_v1 & 0x38) && (D_8012BCC8 != 0x14)) {
            func_80105284(arg0, &D_8012BCA0);
        }
    }
    temp_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((temp_v1 & 7) && (D_8012BCC0->normalType & 4)) {
        D_8012BCA0.flags.f.a = temp_v1 & 0xFFF8;
        temp_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((temp_v1 & 0x38) && (D_8012BCCC->normalType & 4)) {
        D_8012BCA0.flags.f.a = (D_8012BCA0.flags.w >> 0x13) & 0xFFC7;
    }
    BD00.unk0_80 = 0;
    arg0->VI_Timer = BD00.unk40;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010BFAC.s")
#endif
s32 func_8010C184(struct PositionState *arg0) {
    f32 sp4C;
    Vector sp40;
    Vector sp34;

    D_8012BD44 = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    sp40.x = arg0->kirbyHeadPos[0];
    sp40.y = arg0->kirbyHeadPos[1];
    sp40.z = arg0->kirbyHeadPos[2];
    sp34.x = arg0->kirbyFootPos[0];
    sp34.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp34.z = arg0->kirbyFootPos[2];
    if (func_80103930(&sp40, &sp34, NULL, 0, arg0->kirbyFootPos, &D_8012BCDC, &D_8012BCD8, &D_8012BCD4) != 0) {
        arg0->kirbyFootPos[1] -= arg0->scale[0];
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x8000;
    }
    arg0->VI_Timer = D_8012BD40;
    return 0;
}

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

/* FACTORY: 69/142, frame+stack offsets exact; residue is IDO CSEing &sp3C into $v1 and spilling it
   at 0x30 where the ROM recomputes `addiu $tN,$sp,0x3C` per block, which rotates $v1/$t0 and the top-block
   f4/f6/f18 loads. goto form (not if/else) is required: it took this from 89 to 69. */
#ifdef MIPS_TO_C

s32 func_8010D42C(struct PositionState *arg0, f32 arg1) {
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    struct Normal *sp3C;
    s32 sp38;
    f32 temp_f0;

    func_80104FB8(arg0);
    sp58.x = arg0->kirbyFootPos[0];
    sp58.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp58.z = arg0->kirbyFootPos[2];
    sp4C.y = sp58.y + arg1;
    sp40.x = 0.0f;
    sp40.z = 0.0f;
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    sp40.y = 1.0f;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->kirbyFootPos[1] = (sp64.y - arg0->scale[1]) - 0.1f;
        return 1;
    }
    sp58.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp38 = 0;
    sp58.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp58.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
block_5:
        sp38 = 1;
    }
    if (sp38 != 0) {
        temp_f0 = -((sp3C->x * arg0->kirbyFootPos[0]) + (sp3C->z * arg0->kirbyFootPos[2]) + sp3C->originOffset) / sp3C->y;
        if ((temp_f0 <= sp4C.y) && (sp58.y <= temp_f0)) {
            arg0->kirbyFootPos[1] = (temp_f0 - arg0->scale[1]) - 0.1f;
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D42C.s")
#endif

/* FACTORY: 69/142, frame+stack offsets exact; residue is IDO CSEing &sp3C into $v1 and spilling it
   at 0x30 where the ROM recomputes `addiu $tN,$sp,0x3C` per block, which rotates $v1/$t0 and the top-block
   f4/f6/f18 loads. goto form (not if/else) is required: it took this from 89 to 69. */
#ifdef MIPS_TO_C

s32 func_8010D668(struct PositionState *arg0, f32 arg1) {
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    struct Normal *sp3C;
    s32 sp38;
    f32 temp_f0;

    func_80104FB8(arg0);
    sp58.x = arg0->kirbyFootPos[0];
    sp58.y = arg0->scale[2] + arg0->kirbyFootPos[1];
    sp58.z = arg0->kirbyFootPos[2];
    sp4C.y = sp58.y - arg1;
    sp40.x = 0.0f;
    sp40.z = 0.0f;
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    sp40.y = -1.0f;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->kirbyFootPos[1] = (sp64.y - arg0->scale[2]) + 0.1f;
        return 1;
    }
    sp58.x = BD00.unk4 + arg0->kirbyFootPos[0];
    sp38 = 0;
    sp58.z = BD00.unk8 + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58.x = BD00.unkC + arg0->kirbyFootPos[0];
    sp58.z = BD00.unk10 + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
block_5:
        sp38 = 1;
    }
    if (sp38 != 0) {
        temp_f0 = -((sp3C->x * arg0->kirbyFootPos[0]) + (sp3C->z * arg0->kirbyFootPos[2]) + sp3C->originOffset) / sp3C->y;
        if ((sp4C.y <= temp_f0) && (temp_f0 <= sp58.y)) {
            arg0->kirbyFootPos[1] = (temp_f0 - arg0->scale[2]) + 0.1f;
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
    if ((func_80103EA0((Vector *) sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) && (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    sp50 = arg0->unk4 + D_8012BD00.unkC;
    sp58 = arg0->unkC + D_8012BD00.unk10;
    sp44 = sp50;
    sp4C = sp58;
    if ((func_80103EA0((Vector *) sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) && (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D8A4.s")
#endif

#ifdef NON_MATCHING
s32 func_8010DA28(struct PositionState *arg0) {
    Vector sp50;
    Vector sp44;
    Vector sp38;

    func_80104FB8(arg0);
    sp38.x = 0.0f;
    sp38.z = 0.0f;
    sp38.y = 1.0f;
    sp50.x = arg0->kirbyFootPos[0] + BD00.unk4;
    sp50.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    sp44.x = sp50.x;
    sp50.z = arg0->kirbyFootPos[2] + BD00.unk8;
    sp44.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    sp44.z = sp50.z;
    if (func_80103EA0(&sp50, &sp44, (struct Normal *) &sp38, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp50.x = arg0->kirbyFootPos[0] + BD00.unkC;
    sp50.z = arg0->kirbyFootPos[2] + BD00.unk10;
    sp44.x = sp50.x;
    sp44.z = sp50.z;
    if (func_80103EA0(&sp50, &sp44, (struct Normal *) &sp38, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010DA28.s")
#endif

void func_8010DB64(struct CollisionTriangle *arg0, s32 arg1, Vector *arg2) {
    struct Normal *temp_v1;
    struct vCollisionHeader *var_v0;

    if (arg0 != NULL) {
        if (arg1 != 0x14) {
            var_v0 = D_8012D948[arg1].unk4;
        } else {
            var_v0 = D_80129410;
        }
        temp_v1 = &var_v0->header.Triangle_Normals[arg0->polyCount];
        if (arg0->normalType & 1) {
            arg2->x = temp_v1->x;
            arg2->y = temp_v1->y;
            arg2->z = temp_v1->z;
            return;
        }
        arg2->x = -temp_v1->x;
        arg2->y = -temp_v1->y;
        arg2->z = -temp_v1->z;
    }
}

void func_8010DC00(void *arg0, void *arg1) {
    func_8010DB64(arg0, 0x14, arg1);
}

u16 func_8010DC24(struct CollisionTriangle *arg0) {
    if ((arg0 != NULL) && (arg0->collisionType == 6)) {
        return D_80124770[arg0->Halt_Movement][0];
    }
    return 0;
}

struct PositionState *func_8010DC5C(void) {
    struct PositionState *temp_v0;

    temp_v0 = D_8012BD4C;
    if (temp_v0 == NULL) {
        return NULL;
    }
    D_8012BD4C = (struct PositionState *) temp_v0->unk0;
    return temp_v0;
}

void func_8010DC8C(struct PositionState *arg0) {
    if (arg0 != NULL) {
        arg0->unk0 = (u32) D_8012BD4C;
        D_8012BD4C = arg0;
    }
}

struct PositionState *func_8010DCAC(void) {
    struct PositionState *temp_v0;

    temp_v0 = func_8010DC5C();
    func_80105180(temp_v0);
    return temp_v0;
}

void func_8010DCDC(void) {
    s32 i;

    BD00.unk40 = 0;
    BD00.unk0_80 = 0;
    D_8012BD4C = D_8012BD50;
    for (i = 0; i < 31; i++) {
        D_8012BD50[i].unk0 = (u32) &D_8012BD50[i + 1];
    }
    D_8012BD50[i].unk0 = 0;
}

void func_8010DD8C(void) {
    BD00.unk40++;
}

#ifdef MIPS_TO_C

void func_8010DDA4(void *arg0, s32 arg1) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f2;
    struct Normal *n;
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

// Declaration order is load-bearing: var_s0/var_s1 live in saved registers but
// still reserve stack words because sp30's address is taken, so declaring sp30
// LAST is what puts it at sp+0x30 instead of sp+0x38.
s32 func_8010DF9C(void *arg0) {
    struct struct8011BA10_temp *var_s0;
    u32 var_s1;
    struct UnkBD48 sp30;

    sp30.unk0 = D_80129410;
    sp30.unk4 = 0;
    D_8012BD48 = &sp30;
    func_8010DDA4(arg0, 0x14);
    var_s0 = D_8012D948;
    var_s1 = 0;
    if (D_8012D940 != 0) {
        do {
            if (!(var_s0->unk2 & 1)) {
                sp30.unk0 = var_s0->unk4;
                func_8010DDA4(arg0, var_s1);
            }
            var_s1 += 1;
            var_s0 += 1;
        } while (var_s1 < D_8012D940);
    }
    return sp30.unk4;
}

#ifdef MIPS_TO_C

s32 func_8010E048(void *arg0, s32 arg1, void *arg2, void *arg3, void **arg4, void *arg5) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    struct Normal *n;
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

void func_8010E260(struct WaterData *arg0) {
    if (arg0 != NULL) {
        arg0->Activate_Water_Flow = 1;
    }
}

void func_8010E274(struct WaterData *arg0) {
    if (arg0 != NULL) {
        arg0->Activate_Water_Flow = 0;
    }
}

void func_8010E288(struct WaterData *arg0, u8 arg1) {
    if (arg0 != NULL) {
        arg0->Water_Flow_Speed = arg1;
    }
}

u8 func_8010E2A0(struct WaterData *arg0) {
    if (arg0 != NULL) {
        return arg0->Water_Flow_Speed;
    }
    return 0;
}

// Creates matrix with format:
// {   sx  , 0.0f, 0.0f, 0.0f,
//     0.0f, sy  , 0.0f, 0.0f,
//     0.0f, 0.0f, sz  , 0.0f,
//     tx  , ty  , tz  , 1.0f }
void mtx_create_translate_scale(f32 arg0[4][4], f32 tx, f32 ty, f32 tz, f32 sx, f32 sy, f32 sz) {
    arg0[3][0] = tx;
    arg0[3][1] = ty;
    arg0[3][2] = tz;
    arg0[0][0] = sx;
    arg0[1][1] = sy;
    arg0[2][2] = sz;

    arg0[0][1] = 0.0f;
    arg0[0][2] = 0.0f;
    arg0[0][3] = 0.0f;
    arg0[1][0] = 0.0f;
    arg0[1][2] = 0.0f;
    arg0[1][3] = 0.0f;
    arg0[2][0] = 0.0f;
    arg0[2][1] = 0.0f;
    arg0[2][3] = 0.0f;
    arg0[3][3] = 1.0f;
}

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
    struct Normal *n;
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
