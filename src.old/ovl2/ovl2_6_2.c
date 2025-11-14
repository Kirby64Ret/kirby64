#include "types.h"
#include <macros.h>
#include <ultra64.h>
#include <PR/gs2dex.h>
#include "ovl2_6.h"
#include "ovl18/ovl18_1.h"
#include "ovl18/ovl18_3.h"
#include "ovl18/ovl18_5.h"

extern struct CollisionState *gCollisionState;
extern f32 D_80128A50;
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80101400.s")

#include "ovl0/ovl0_5.h"
extern u32 D_8012BD00;

// TODO: either put these in ovl0_5.h, or use the ones already there
#define PVPDP(a, b) ( a->x*b->x +  a->y*b->y +  a->z*b->z)
#define NVPDP(a, b) (-a->x*b->x + -a->y*b->y + -a->z*b->z)

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

u32 func_8011BED0(u16, u16, u16, struct Normal *);

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010203C.s")

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

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010221C.s")

u8 func_80102324(struct CollisionTriangle *arg0, struct Normal *arg1, struct Normal *arg2, struct Normal *arg3) {
    if (arg0->collisionType == COL_TYPE_SEMI_SOLID) {
        if ((arg0->normalType & DOUBLE_SIDED_NORMAL) != 0) {
            return 1;
        }
    }
    return 0;
}

// unk44 in CollisionState (or at least one of them)
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80102364.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801023FC.s")

u8 func_801024E8(Vector *arg0, s32 arg1);
#ifdef NON_MATCHING // control flow meme
u8 func_801024E8(Vector *arg0, s32 arg1) {
    // struct Normal *temp_v0;

    // temp_v0 = gCollisionState->someNormal;
    if (gCollisionState->someNormal) {
        // return 1;
        if (0.0f < VEC_DOT(gCollisionState->someNormal, arg0)) {
            if (arg1 == 0) {
                return 1;
            }
        } else if (arg1 != 0) {
            return 1;
        }
        else return 1;
    }
    else
    return 0;
}
#else
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801024E8.s")
#endif

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80102570.s")

#define BSP_RIGHT 2
// #define BSP_LEFT 1
// #define BSP_NODE 0

void func_80101400(u32 numFloorNorms);

extern s32
func_80102570(
struct Normal *,
s32 *,
Vector *,
u32 (*)(void),
struct CollisionTriangle **
);

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
        for (i = 0; i < (unsigned)gCollisionState->numCells; i++) {
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

#include "ovl2_8.h"

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

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80103528.s")


void func_80103930(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5,
                        s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_801024E8;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

extern u32 func_80102364(struct Normal *a0, s32 arg1);
void func_801039E8(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5,
                        s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_80102364;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

extern void func_801023FC(struct Normal *, s32);
void func_80103AA0(Vector *arg0, Vector *arg1, struct Normal *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_801023FC;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80103B58.s")

void func_80103CC8(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
        s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.unk3C = NULL;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_801024E8;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

extern f32 D_80128A70;
extern struct vCollisionHeader *D_80129410;
u32 func_80103D80(f32 *arg0, Vector *arg1, struct Normal *arg2, Vector *arg3) {
    f32 sp1C = D_80128A70;

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

void func_80103EA0(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_80102364;
    newColState.unk40 = &func_80101920;
    newColState.unk34 = 0;
    newColState.unk38 = 0;
    newColState.unk3C = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}


void func_80103F58(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, s32 arg4,
    s32 arg5, s32 arg6, s32 arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.unk44 = &func_80102364;
    newColState.unk40 = &func_80101BA0;
    newColState.unk34 = 0;
    newColState.unk38 = 0;
    newColState.unk3C = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104010.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801040CC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104184.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010423C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801042F4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801043B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104468.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104520.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801045DC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801046A0.s")

u32 func_8010474C(Vector *v0, Vector *v1) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *v0;
    newColState.nextPos = *v1;
    newColState.someNormal = NULL;
    newColState.unk3C = NULL;
    newColState.unk44 = func_80102364;
    newColState.unk40 = func_80101F4C;
    newColState.unk34 = NULL;
    newColState.unk38 = NULL;
    return func_80103D80(0, 0, 0, 0);
}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801047F0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801048A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104958.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104A08.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104AB4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104B70.s")

// functions that actually check stuff

// possibly fake match as types are way off
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

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104D2C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80104FB8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801050E0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80105180.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801051AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801051DC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80105218.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80105238.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80105284.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80105530.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801056C8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801057C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801058B8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801060C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801063F0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010669C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80106834.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80106930.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80106C5C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80107074.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801072E0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801073C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801077D4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801078A0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80107F94.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80108078.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80108858.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80108E08.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109240.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010924C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109318.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109504.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801096F0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109784.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109970.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109B5C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109BF0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109DD8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109E00.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109E44.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109F60.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80109FAC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010A138.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010A2C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010AA80.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010AC1C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010AEE0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010AEF0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B0B0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B0D8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B11C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B238.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B284.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B480.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B67C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010B860.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BA44.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BB08.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BBD4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BD0C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BD84.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BE7C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010BFAC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010C184.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010C274.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010C608.s")


// arg0 might be a normal
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010C734.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010CABC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010CE44.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010D138.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010D42C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010D668.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010D8A4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DA28.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DB64.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DC00.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DC24.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DC5C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DC8C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DCAC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DCDC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DD8C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DDA4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010DF9C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E048.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E260.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E274.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E288.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E2A0.s")

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

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E324.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E5B0.s")

s32 func_8010E6F0(Vector *arg0, s32 arg1) {
    arg0->x += gEntitiesNextPosXArray[arg1];
    arg0->y += gEntitiesNextPosYArray[arg1];
    arg0->z += gEntitiesNextPosZArray[arg1];
}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E740.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010E8F0.s")

struct Unk_Ovl_2_6 {
    f32 x;
    f32 unk4;
    f32 unk8;
    Vector unkC;
    f32 unk18;
};

void func_8010E8F0(Vector *, f32, Vector *, f32, s32 *);
// TODO: get types
void func_8010EA20(struct Unk_Ovl_2_6 *arg0, struct Unk_Ovl_2_6 *arg1, Vector *arg2) {
    func_8010E8F0(((Vector *)arg0) + 1, arg0->unk18, ((Vector *)arg1) + 1, arg1->unk18, arg2);
}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010EA68.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010EE24.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010EEE8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010EFA8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010F140.s")


// some sort of midpoint?
// hopefully arg1 is a CollisionState
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010F964.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010F9AC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8010FC30.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110014.s")

void func_80110130(void) {

}

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110138.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110150.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801103C4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110438.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801105E8.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110B00.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110CCC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110E94.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80110FD4.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111184.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_8011145C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801114E0.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111534.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111550.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111574.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_801117BC.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111A04.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111C4C.s")

GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111C88.s")

// Calls a stub function. Awesome!
GLOBAL_ASM("asm/non_matchings/ovl2_6/func_80111ECC.s")
 