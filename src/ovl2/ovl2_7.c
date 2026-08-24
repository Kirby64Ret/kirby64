#include "common.h"
#include "new_ovl2_7.h"
#include "ovl2/ovl2_6.h"
#include "ovl2/ovl2_8.h"
#include "main/lbvector.h"

extern struct CollisionState *gCollisionState;
extern u32 D_8012BD00;

/* The collision query scratch block (D_8012BD00). Splat split it into per-word
 * symbols, so this file reaches most of it through the BD00 macro but still
 * spells three fields by their own names: D_8012BD34 is `hit` (a Vector),
 * D_8012BD40 is `tick` and D_8012BD44 is `callerTick`.
 *
 * Everything from +0x04 to +0x30 is set once per resolve by func_80104FB8 out
 * of PositionState.faceAngle -- [0] and [1] are signed body radii, [2] is the
 * yaw -- and then read by every probe in the file as its cast basis. */
struct ColQuery {
    /* Raised for the whole of a full resolve (func_8010BBD4 and its siblings
     * bracket their body with 1 ... 0) and cleared by func_8010DCDC at init.
     * Nothing in the tree ever reads it. */
    /* 0x00 */ u8 busy : 1;
    /* 0x00 */ u8 unk0_rest : 7;
    /* 0x01 */ u8 unk1;
    /* 0x02 */ u8 pad2[2];

    /* Foot-column offset from Kirby's origin: faceAngle[0] * (sin, cos) of the
     * yaw. Probes that start at PositionState.kirbyGroundPath add this pair,
     * and their hits are the *_FOOT class bits. */
    /* 0x04 */ f32 footOffX;
    /* 0x08 */ f32 footOffZ;

    /* Head-column offset: faceAngle[1] * (sin, cos). Paired with
     * kirbyHeadPath and the *_HEAD class bits. */
    /* 0x0C */ f32 headOffX;
    /* 0x10 */ f32 headOffZ;

    /* Unit forward direction in the XZ plane, signed so that it points the
     * same way as the foot offset (func_80104FB8 negates both when
     * faceAngle[0] <= 0). This is the `dir` every wall cast uses. */
    /* 0x14 */ f32 fwdX;
    /* 0x18 */ f32 fwdZ;

    /* The negation of the above, used by the back-wall casts. */
    /* 0x1C */ f32 backX;
    /* 0x20 */ f32 backZ;

    /* The two column offsets pushed a further 0.1 along their own direction,
     * so a snap lands just clear of the plane instead of exactly on it. */
    /* 0x24 */ f32 footPushX;
    /* 0x28 */ f32 footPushZ;
    /* 0x2C */ f32 headPushX;
    /* 0x30 */ f32 headPushZ;

    /* The winning contact point of the last accepted probe -- the same object
     * this file also writes as the Vector D_8012BD34. The snap resolvers read
     * it back to re-plant kirbyFootPos. */
    /* 0x34 */ f32 hitX;
    /* 0x38 */ f32 hitY;
    /* 0x3C */ f32 hitZ;

    /* Global collision tick: zeroed by func_8010DCDC, bumped once per frame by
     * func_8010DD8C. Also spelled D_8012BD40. */
    /* 0x40 */ s32 tick;

    /* The tick the PositionState being resolved was last collided on: each
     * entry point copies PositionState.VI_Timer in here and copies `tick` back
     * out on the way home. `tick != callerTick` is how the dynamic-collider
     * pass knows this object has not been walked yet this frame.
     * Also spelled D_8012BD44. */
    /* 0x44 */ s32 callerTick;
};

#ifndef PORT
struct ColQueryLayoutAssert {
    int _col_query_size : (sizeof(struct ColQuery) == 0x48) ? 1 : -1;
};
#endif

#define BD00 (*(struct ColQuery *) &D_8012BD00)

/* One resolved contact: the surface Kirby is touching in one direction, the
 * triangle that produced it and that triangle's plane. `type` is the winning
 * triangle's collisionType (COL_TYPE_*); func_80105218 parks 0x14 in it as the
 * "nothing here" value and func_80105238 copies all five out to
 * PositionState.byteArray, which is why that array reads 0x1414141414 when
 * Kirby is in open air. */
struct ColRecord {
    /* 0x0 */ s32 type;
    /* 0x4 */ struct CollisionTriangle *tri;
    /* 0x8 */ struct Normal *norm;
};

/* Slots in CollisionResult.rec[]. Each slot owns its own 3-bit group in the
 * flags field and its own family of resolvers in this file; the mapping below
 * is read off which mask each resolver clears and which class bit it sets:
 *
 *   slot 0  clears 0xF1FF, sets 0x200/0x400/0x800  (func_80107F94/8010924C/8010AC1C)
 *   slot 1  clears 0xFE3F, sets 0x040/0x080/0x100  (func_801072E0/801077D4/80107074)
 *   slot 2  clears 0xFFF8, sets 0x001/0x002/0x004  (func_80105530/801060C4/80109FAC)
 *   slot 3  clears 0xFFC7, sets 0x008/0x010/0x020  (func_8010669C/8010A138)
 *
 * Slot 0 is the FLOOR: its group bit 0x200 lands at word bit 0x10000000, the
 * value ovl2_8.h documents as PositionState.collisionFlags "grounded", and its
 * resolver casts straight down (dir 0,-1,0) and re-plants kirbyFootPos ABOVE
 * the plane (+0.1f). Slot 1 is the CEILING: same shape but it pushes Kirby
 * BELOW the plane (-0.1f). Slots 2 and 3 are the two walls; plylib.c gates a
 * turn on group-2 bit 0x2 when facing +1.0f and on the mirrored group-3 bit
 * 0x10 when facing -1.0f, so 2 is the wall Kirby faces and 3 the one behind.
 * Slot 4 is never resolved in this file -- func_80105218 clears it and
 * func_80105238 copies it out, nothing else touches it. */
#define COL_FLOOR       0
#define COL_CEILING     1
#define COL_WALL_FRONT  2
#define COL_WALL_BACK   3
#define COL_SLOT_4      4

/* Bits of CollisionResult.flags.f.hits (word bits 19-31, hence the `>> 0x13`
 * at every reader and the `* 8` at every halfword writer). Three per slot:
 * the CENTER cast, then the two body-corner casts. In the floor resolver
 * func_801078A0 the center cast runs at Kirby's own x/z, the *_FOOT cast at
 * the kirbyGroundPath column (BD00 offset unk4/unk8) and the *_HEAD cast at
 * the kirbyHeadPath column (unkC/unk10); in the wall resolver func_80105284
 * the same three bits come from casts started at kirbyHeadPos[1], then
 * kirbyHeight[1] (feet) and kirbyHeight[0] (head). */
#define COLF_WALL_F         0x001
#define COLF_WALL_F_HEAD    0x002
#define COLF_WALL_F_FOOT    0x004
#define COLF_WALL_B         0x008
#define COLF_WALL_B_HEAD    0x010
#define COLF_WALL_B_FOOT    0x020
#define COLF_CEIL           0x040
#define COLF_CEIL_HEAD      0x080
#define COLF_CEIL_FOOT      0x100
#define COLF_FLOOR          0x200
#define COLF_FLOOR_HEAD     0x400
#define COLF_FLOOR_FOOT     0x800

#define COLF_WALL_F_ANY     0x007
#define COLF_WALL_B_ANY     0x038
#define COLF_WALL_ANY       0x03F
#define COLF_CEIL_ANY       0x1C0
#define COLF_FLOOR_ANY      0xE00

/* The collision result block (D_8012BCA0), formerly spelled UnkBCA0 -- other
 * overlays' comments still use that name. One global: every resolver in this
 * file takes a pointer to it, and func_80105238 publishes it into
 * PositionState. */
struct CollisionResult {
    /* 0x00 */ union {
        u32 w;
#ifdef PORT
        /* Little-endian: the N64's flag halfword and bitfields live in the
         * TOP of the word. The anonymous struct makes .hw alias the upper
         * u16 (what every `(hw & 7)` / halfword-store site means), and the
         * reversed bitfield order puts hits at bits 19-31 and unk3 at 16-18
         * -- the bits every `w >> 0x13` reader expects. Without this, writers
         * and readers touched disjoint bits and all class checks read 0. */
        struct {
            u16 hwpad_;
            u16 hw;
        };
        struct {
            u32 rest : 16;
            u32 unk3 : 3;
            u32 hits : 13;
        } f;
#else
        u16 hw;
        struct {
            /* Word bits 19-31: the COLF_* contact bits. Twelve are used;
             * the thirteenth is never set anywhere in this overlay. */
            u32 hits : 13;
            /* Word bits 16-18. Every writer in this file preserves these
             * (`| (flags.hw & 7)`) and none of them sets one, so whatever
             * owns them lives outside ovl2_7.c. */
            u32 unk3 : 3;
            /* Word bits 0-15. Never read or written. */
            u32 rest : 16;
        } f;
#endif
    } flags;
    /* One contact per direction: rec[COL_FLOOR], rec[COL_CEILING],
     * rec[COL_WALL_FRONT], rec[COL_WALL_BACK], rec[COL_SLOT_4]. */
    /* 0x04 */ struct ColRecord rec[5];
#ifdef PORT
    /* The water annex the C never declared: the ROM stores up to 3 water-
     * volume hits after rec[] (N64 +0x40 record pointers, +0x4C source ids;
     * func_8010DDA4 writes them, the ovl3 landing scan reads them). On PC
     * the whole object lives in src/pc/pc_bss_whole.c. */
    struct WaterData *waterRec[3];
    u32 waterSrc[3];
#endif
};

#ifndef PORT
/* IDO accepts a negative array size (warning 654 only) but rejects a negative
 * BITFIELD WIDTH, so this is the form that actually locks the N64 layout. */
struct ColResultLayoutAssert {
    int _col_record_size    : (sizeof(struct ColRecord) == 0xC) ? 1 : -1;
    int _col_result_size    : (sizeof(struct CollisionResult) == 0x40) ? 1 : -1;
};
#endif

extern struct CollisionResult D_8012BCA0;
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
s32 func_80109BF0(struct PositionState *arg0, struct CollisionResult *arg1, s32 arg2);
s32 func_8010AEF0(struct PositionState *arg0, struct CollisionResult *arg1, s32 arg2);
void func_80104FB8(struct PositionState *arg0);
/* spelled as the definition in src/ovl2/ovl2_10.c does */
void func_80112ED4(f32 mtx[4][4], Vector *out, Vector *in);
s32 func_80104D2C(Vector *arg0, Vector *arg1, Vector *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, s32 *arg7);
s32 func_801057C4(struct Normal *arg0, Vector *arg1, Vector *arg2, Vector *arg3);
s32 func_80105530(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_801056C8(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_801063F0(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_8010669C(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80106834(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80106930(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80106C5C(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_801072E0(struct PositionState *arg0, struct CollisionResult *arg1);
void func_801077D4(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80107F94(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_801078A0(struct PositionState *arg0, struct CollisionResult *arg1);
void func_8010924C(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109318(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109504(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109784(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109970(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109FAC(struct PositionState *arg0, struct CollisionResult *arg1);
void func_8010A138(struct PositionState *arg0, struct CollisionResult *arg1);
void func_801060C4(struct PositionState *arg0, struct CollisionResult *arg1);
void func_801073C4(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80107074(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_80108E08(struct PositionState *arg0, struct CollisionResult *arg1);
void func_80109B5C(struct PositionState *arg0, struct CollisionResult *arg1);
void func_801096F0(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_8010A2C4(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_8010AC1C(struct PositionState *arg0, struct CollisionResult *arg1);
s32 func_8010AEE0(s32 arg0, s32 arg1);

extern u32 D_8012BD44;
extern Vector D_8012BD34;
extern u16 D_80124770[][2];


extern f32 D_80128A70;
extern struct vCollisionHeader *D_80129410;

#ifdef MIPS_TO_C
/* FACTORY: ~11/328, whole-function callee-saved allocation residue: draft hoists
 * -1.0f into $f26 and 0.0f into $f24 where ROM keeps only $f20 (d1) / $f22 (0.0)
 * and spills d0; integer side then avoids $s0. Structure and instruction count
 * align (328 insns both sides); probes show IDO always hoists -1.0f here, so the
 * fix is an allocation-pressure permutation, not a spelling. */
void func_80101400(u32 arg0) {
    u16 spB0[40];
    s32 var_t0;
    Vector spA0;
    Vector sp94;
    struct vCollisionHeader *var_t1;
    struct bgmaprecord *temp_t2;
    struct Normal *temp_a0;
    struct Normal *temp_v0_2;
    struct ColStateUnk4 *temp_v0_4;
    u32 var_s0;
    u16 temp_a0_2;
    u16 temp_v0;
    u16 var_a0;
    u16 var_v0_2;
    s32 var_a1_2;
    s32 var_a3_2;
    s32 var_v1_2;
    s32 var_v0;
    f32 temp_f2_2;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f20;
    f32 temp_f18;
    f32 temp_f0_3;
    f32 var_f2;
    f32 var_f0;
    f32 var_f2_2;

    spA0 = gCollisionState->currPos;
    var_s0 = arg0;
    sp94 = gCollisionState->nextPos;
    var_t0 = 0;
    var_t1 = gCollisionState->unk30;
    for (;;) {
        temp_t2 = &var_t1->header.Triangle_Norm_Cells[var_s0];
        temp_a0 = &var_t1->header.Triangle_Normals[temp_t2->index];
        if ((gCollisionState->passThruPlane == temp_a0) ||
            ((gCollisionState->passThruPlane != NULL) &&
             (((gCollisionState->passThruPlane->x == temp_a0->x) && (gCollisionState->passThruPlane->y == temp_a0->y) &&
               (gCollisionState->passThruPlane->z == temp_a0->z) &&
               (gCollisionState->passThruPlane->originOffset == temp_a0->originOffset)) ||
              ((gCollisionState->passThruPlane->originOffset == -temp_a0->originOffset) &&
               (((gCollisionState->passThruPlane->x * temp_a0->x) + (gCollisionState->passThruPlane->y * temp_a0->y) +
                 (gCollisionState->passThruPlane->z * temp_a0->z)) == -1.0f))))) {
            temp_a0_2 = temp_t2->part1;
            temp_v0 = temp_t2->part2;
            if (temp_a0_2 != 0) {
                if (temp_v0 != 0) {
                    spB0[var_t0] = temp_v0;
                    var_t0 += 1;
                }
                var_s0 = temp_a0_2;
                continue;
            }
            if (temp_v0 != 0) {
                var_s0 = temp_v0;
                continue;
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
            temp_f18 = (temp_f2_2 * spA0.x) + (temp_f12 * spA0.y) + (temp_f14 * spA0.z) + temp_f16;
            temp_f20 = (temp_f2_2 * sp94.x) + (temp_f12 * sp94.y) + (temp_f14 * sp94.z) + temp_f16;
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
                temp_v0_2 = gCollisionState->ignorePlane;
                if ((temp_v0_2 != temp_a0) &&
                    ((temp_v0_2 == NULL) ||
                     (((temp_v0_2->x != temp_f2_2) || (temp_v0_2->y != temp_f12) || (temp_v0_2->z != temp_f14) ||
                       (temp_v0_2->originOffset != temp_f16)) &&
                      ((temp_v0_2->originOffset != -temp_f16) ||
                       (((temp_v0_2->x * temp_f2_2) + (temp_v0_2->y * temp_f12) + (temp_v0_2->z * temp_f14)) != -1.0f))))) {
                    if (gCollisionState->acceptPlane(temp_a0, var_a1_2) != 0) {
                        temp_v0_4 = &gCollisionState->unk4[gCollisionState->numCells];
                        temp_f0_3 = (temp_a0->x * gCollisionState->deltaPos.x) + (temp_a0->y * gCollisionState->deltaPos.y) +
                                    (temp_a0->z * gCollisionState->deltaPos.z);
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
            if ((var_a1_2 != 0) || (var_a3_2 != 0)) {
                var_a0 = temp_t2->part1;
            } else {
                var_a0 = 0;
            }
            var_s0 = var_a0;
            if ((var_a1_2 == 0) || (var_a3_2 == 0)) {
                var_v0_2 = temp_t2->part2;
            } else {
                var_v0_2 = 0;
            }
            if (var_a0 != 0) {
                if (var_v0_2 != 0) {
                    spB0[var_t0] = var_v0_2;
                    var_t0 += 1;
                }
                continue;
            }
            var_s0 = var_v0_2;
            if (var_v0_2 != 0) {
                continue;
            }
        }
        if (var_t0 != 0) {
            var_s0 = spB0[var_t0 - 1];
            var_t0 -= 1;
            continue;
        }
        break;
    }
}
#elif defined(PORT)
/* The BSP cell walker (draft above, completed) -- the function that feeds
 * func_80103004 its candidate crossing cells, i.e. the root of ALL static
 * mesh collision. Walks the Triangle_Norm_Cells binary tree from the root
 * cell in arg0: a cell whose plane matches passThruPlane (same or
 * anti-parallel normal) is descended through both children without
 * testing; otherwise the currPos->nextPos segment is classified against
 * the plane and a sign change (or an endpoint moving onto the plane)
 * appends {projection, cell} to gCollisionState->unk4 when the plane
 * differs from ignorePlane and the acceptPlane side filter accepts. Descent visits part1 for the positive side, part2
 * for the non-positive side, both (via an explicit stack) when the segment
 * straddles. */
void func_80101400(u32 arg0) {
    struct CollisionState *cs = gCollisionState;
    struct vCollisionHeader *vh = cs->unk30;
    struct bgmaprecord *cells = vh->header.Triangle_Norm_Cells;
    struct Normal *norms = vh->header.Triangle_Normals;
    u16 stack[64];
    s32 top = 0;
    u32 cur = arg0;

    for (;;) {
        struct bgmaprecord *cell = &cells[cur];
        struct Normal *n = &norms[cell->index];
        struct Normal *skip = cs->passThruPlane;
        u16 next = 0;
        u16 other = 0;
        s32 matched;

        matched = skip == n;
        if (!matched && skip != NULL) {
            if (n->x == skip->x && n->y == skip->y && n->z == skip->z &&
                n->originOffset == skip->originOffset) {
                matched = 1;
            } else if (-n->originOffset == skip->originOffset &&
                       (skip->x * n->x) + (skip->y * n->y) + (skip->z * n->z) == -1.0f) {
                matched = 1;
            }
        }
        if (matched) {
            next = cell->part1;
            other = cell->part2;
        } else {
            f32 d0 = (n->x * cs->currPos.x) + (n->y * cs->currPos.y) + (n->z * cs->currPos.z) + n->originOffset;
            f32 d1 = (n->x * cs->nextPos.x) + (n->y * cs->nextPos.y) + (n->z * cs->nextPos.z) + n->originOffset;
            s32 pos0 = d0 > 0.0f;
            s32 pos1 = d1 > 0.0f;
            s32 nz0 = d0 != 0.0f;
            s32 nz1 = d1 != 0.0f;

            if (pos0 != pos1 || nz0 != nz1) {
                struct Normal *skip2 = cs->ignorePlane;
                s32 dup;

                dup = skip2 == n;
                if (!dup && skip2 != NULL) {
                    if (n->x == skip2->x && n->y == skip2->y && n->z == skip2->z &&
                        n->originOffset == skip2->originOffset) {
                        dup = 1;
                    } else if (-n->originOffset == skip2->originOffset &&
                               (skip2->x * n->x) + (skip2->y * n->y) + (skip2->z * n->z) == -1.0f) {
                        dup = 1;
                    }
                }
                if (!dup && cs->acceptPlane(n, pos0) != 0) {
                    struct ColStateUnk4 *slot = &cs->unk4[cs->numCells];
                    f32 dot = (n->x * cs->deltaPos.x) + (n->y * cs->deltaPos.y) + (n->z * cs->deltaPos.z);
                    f32 mag = (dot < 0.0f) ? -dot : dot;

                    if (mag < 0.00001f) {
                        f32 a0 = (d0 < 0.0f) ? -d0 : d0;
                        f32 a1 = (d1 < 0.0f) ? -d1 : d1;

                        slot->projection = (a0 < a1) ? 0.0f : 1.0f;
                    } else {
                        slot->projection = -(d0 / dot);
                    }
                    slot->cell = cur;
                    cs->numCells++;
                }
            }
            if (pos0 || pos1) {
                next = cell->part1;
            }
            if (!pos0 || !pos1) {
                other = cell->part2;
            }
        }
        if (next != 0) {
            if (other != 0 && top < 64) {
                stack[top++] = other;
            }
            cur = next;
        } else if (other != 0) {
            cur = other;
        } else if (top != 0) {
            cur = stack[--top];
        } else {
            return;
        }
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
        if (arg0->collisionType == gCollisionState->wantColType) {
            if (func_8011BED0(
                gCollisionState->wantColType,
                arg0->collisionParameter,
                gCollisionState->breakKey,
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

    if ((code & NON_SOLID) && (arg0->Halt_Movement == gCollisionState->wantHaltMovement) && (arg0->collisionType == gCollisionState->wantColType)) {
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
/* FACTORY: ~56/706, positional cascade from prologue homing: draft keeps arg3 in
 * a register where ROM homes it to 0x11C(sp) and reloads per iteration; frame is
 * 0x110 in ROM (0xA8 dead local space above the volatile sp64 slot at 0x64) vs
 * draft 0x200 (u32 pad[42] + volatile sp64 reproduce the class but not the size).
 * All three loops FP math and control flow align 1:1 modulo the f0/f2 pu/pv swap
 * and e0/e1 result-register naming. volatile-param and volatile-copy variants
 * demote uopt globally (measured worse); the residue is homing/allocation. */
s32 func_80102570(struct Normal *arg0, s32 *arg1, Vector *arg2, struct CollisionTriangle *arg3, struct CollisionTriangle **arg4) {
    u32 pad[42];
    struct CollisionTriangle *volatile sp64;
    struct vCollisionHeader *temp_s3;
    struct CollisionTriangle *temp_t6;
    struct CollisionTriangle *temp_s5;
    u16 *var_s2;
    u16 temp_t5;
    s32 var_s7;
    f32 temp_f0;
    f32 var_f2;
    f32 var_f12;
    f32 var_f14;
    f32 e0;
    f32 e1;
    f32 e2;
    f32 pu;
    f32 pv;

    temp_f0 = arg0->x;
    var_s7 = *arg1;
    if (temp_f0 < 0.0f) {
        var_f2 = -temp_f0;
    } else {
        var_f2 = temp_f0;
    }
    temp_f0 = arg0->y;
    if (temp_f0 < 0.0f) {
        var_f12 = -temp_f0;
    } else {
        var_f12 = temp_f0;
    }
    temp_f0 = arg0->z;
    if (temp_f0 < 0.0f) {
        var_f14 = -temp_f0;
    } else {
        var_f14 = temp_f0;
    }
    temp_s3 = gCollisionState->unk30;
    if (var_f12 < var_f2) {
        if (var_f14 < var_f2) {
            var_s2 = &temp_s3->header.Triangle_Cells[var_s7];
            for (;;) {
                temp_t5 = *var_s2;
                var_s2 += 1;
                temp_t6 = &temp_s3->header.Triangles[temp_t5 & 0x7FFF];
                sp64 = temp_t6;
                if (temp_t6 != arg3) {
                    pv = arg2->z;
                    pu = arg2->y;
                    if (temp_s3->usingFloatVertices != 0) {
                        f32 *va = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[0] * 3];
                        f32 u0 = va[1];
                        f32 v0 = va[2];
                        f32 *vb = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[1] * 3];
                        f32 u1 = vb[1];
                        f32 v1 = vb[2];
                        f32 *vc = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[2] * 3];
                        f32 u2 = vc[1];
                        f32 v2 = vc[2];
                        e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                        e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                        e2 = ((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2));
                    } else {
                        s16 *va = &temp_s3->header.vertices.Vertices[temp_t6->vertex[0] * 3];
                        s16 v0 = va[2];
                        s16 u0 = va[1];
                        s16 *vb = &temp_s3->header.vertices.Vertices[temp_t6->vertex[1] * 3];
                        s16 u1 = vb[1];
                        s16 v1 = vb[2];
                        s16 *vc = &temp_s3->header.vertices.Vertices[temp_t6->vertex[2] * 3];
                        s16 u2 = vc[1];
                        s16 v2 = vc[2];
                        e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                        e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                        e2 = ((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2));
                    }
                    if (((e0 <= 0.5f) && (e1 <= 0.5f) && (e2 <= 0.5f)) ||
                        ((e0 >= -0.5f) && (e1 >= -0.5f) && (e2 >= -0.5f))) {
                        *arg4 = sp64;
                        if (temp_s3->header.Triangle_Cells[var_s7] & 0x8000) {
                            return 0;
                        }
                        *arg1 = var_s7;
                        return 1;
                    }
                }
                var_s7 += 1;
                if (temp_t5 & 0x8000) {
                    *arg4 = NULL;
                    return 0;
                }
            }
        }
    }
    if (var_f14 < var_f12) {
        var_s2 = &temp_s3->header.Triangle_Cells[var_s7];
        for (;;) {
            temp_t5 = *var_s2;
            var_s2 += 1;
            temp_s5 = &temp_s3->header.Triangles[temp_t5 & 0x7FFF];
            if (temp_s5 != arg3) {
                pv = arg2->z;
                pu = arg2->x;
                if (temp_s3->usingFloatVertices != 0) {
                    f32 *va = &temp_s3->header.vertices.VerticesF[temp_s5->vertex[0] * 3];
                    f32 u0 = va[0];
                    f32 v0 = va[2];
                    f32 *vb = &temp_s3->header.vertices.VerticesF[temp_s5->vertex[1] * 3];
                    f32 u1 = vb[0];
                    f32 v1 = vb[2];
                    f32 *vc = &temp_s3->header.vertices.VerticesF[temp_s5->vertex[2] * 3];
                    f32 u2 = vc[0];
                    f32 v2 = vc[2];
                    e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                    e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                    e2 = ((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2));
                    if (((e0 <= 0.5f) && (e1 <= 0.5f) && (e2 <= 0.5f)) ||
                        ((e0 >= -0.5f) && (e1 >= -0.5f) && (e2 >= -0.5f))) {
                        *arg4 = temp_s5;
                        if (temp_s3->header.Triangle_Cells[var_s7] & 0x8000) {
                            return 0;
                        }
                        *arg1 = var_s7;
                        return 1;
                    }
                } else {
                    s16 *va = &temp_s3->header.vertices.Vertices[temp_s5->vertex[0] * 3];
                    s16 v0 = va[2];
                    s16 u0 = va[0];
                    s16 *vb = &temp_s3->header.vertices.Vertices[temp_s5->vertex[1] * 3];
                    s16 u1 = vb[0];
                    s16 v1 = vb[2];
                    s16 *vc = &temp_s3->header.vertices.Vertices[temp_s5->vertex[2] * 3];
                    s16 u2 = vc[0];
                    s16 v2 = vc[2];
                    e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                    e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                    if ((e0 <= 0.5f) && (e1 <= 0.5f)) {
                        if ((((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2))) <= 0.5f) {
                            *arg4 = temp_s5;
                            if (temp_s3->header.Triangle_Cells[var_s7] & 0x8000) {
                                return 0;
                            }
                            *arg1 = var_s7;
                            return 1;
                        }
                    } else if ((e0 >= -0.5f) && (e1 >= -0.5f) &&
                               ((((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2))) >= -0.5f)) {
                        *arg4 = temp_s5;
                        if (temp_s3->header.Triangle_Cells[var_s7] & 0x8000) {
                            return 0;
                        }
                        *arg1 = var_s7;
                        return 1;
                    }
                }
            }
            var_s7 += 1;
            if (temp_t5 & 0x8000) {
                *arg4 = NULL;
                return 0;
            }
        }
    }
    var_s2 = &temp_s3->header.Triangle_Cells[var_s7];
    for (;;) {
        temp_t5 = *var_s2;
        var_s2 += 1;
        temp_t6 = &temp_s3->header.Triangles[temp_t5 & 0x7FFF];
        sp64 = temp_t6;
        if (temp_t6 != arg3) {
            pv = arg2->y;
            pu = arg2->x;
            if (temp_s3->usingFloatVertices != 0) {
                f32 *va = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[0] * 3];
                f32 u0 = va[0];
                f32 v0 = va[1];
                f32 *vb = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[1] * 3];
                f32 u1 = vb[0];
                f32 v1 = vb[1];
                f32 *vc = &temp_s3->header.vertices.VerticesF[temp_t6->vertex[2] * 3];
                f32 u2 = vc[0];
                f32 v2 = vc[1];
                e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                e2 = ((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2));
            } else {
                s16 *va = &temp_s3->header.vertices.Vertices[temp_t6->vertex[0] * 3];
                s16 v0 = va[1];
                s16 u0 = va[0];
                s16 *vb = &temp_s3->header.vertices.Vertices[temp_t6->vertex[1] * 3];
                s16 u1 = vb[0];
                s16 v1 = vb[1];
                s16 *vc = &temp_s3->header.vertices.Vertices[temp_t6->vertex[2] * 3];
                s16 u2 = vc[0];
                s16 v2 = vc[1];
                e0 = ((u1 - u0) * (pv - v0)) - ((pu - u0) * (v1 - v0));
                e1 = ((u2 - u1) * (pv - v1)) - ((pu - u1) * (v2 - v1));
                e2 = ((u0 - u2) * (pv - v2)) - ((pu - u2) * (v0 - v2));
            }
            if (((e0 <= 0.5f) && (e1 <= 0.5f) && (e2 <= 0.5f)) ||
                ((e0 >= -0.5f) && (e1 >= -0.5f) && (e2 >= -0.5f))) {
                *arg4 = sp64;
                if (temp_s3->header.Triangle_Cells[var_s7] & 0x8000) {
                    return 0;
                }
                *arg1 = var_s7;
                return 1;
            }
        }
        var_s7 += 1;
        if (temp_t5 & 0x8000) {
            *arg4 = NULL;
            return 0;
        }
    }
}
#elif defined(PORT)
/* Point-in-triangle scan over a cell's u16 triangle list (draft above,
 * completed). The plane normal's dominant axis picks the 2D projection;
 * each candidate triangle is tested with three edge cross-products against
 * the crossing point, inside when all three agree within +/-0.5 either way.
 * List entries: low 15 bits triangle index, bit 15 ends the list. On a hit
 * *arg4 gets the triangle; return 1 with *arg1 = the hit index so the
 * caller can resume past it, or 0 when the hit closed the list. Vertices
 * and cells were byte-swapped native at level load (ovl2_2.c). */
s32 func_80102570(struct Normal *arg0, s32 *arg1, Vector *arg2, struct CollisionTriangle *arg3, struct CollisionTriangle **arg4) {
    struct vCollisionHeader *vh = gCollisionState->unk30;
    struct CollisionTriangle *tris = vh->header.Triangles;
    u16 *cells = vh->header.Triangle_Cells;
    f32 ax = (arg0->x < 0.0f) ? -arg0->x : arg0->x;
    f32 ay = (arg0->y < 0.0f) ? -arg0->y : arg0->y;
    f32 az = (arg0->z < 0.0f) ? -arg0->z : arg0->z;
    s32 axis;   /* dominant: 0 = x (project yz), 1 = y (xz), 2 = z (xy) */
    f32 pu, pv;
    s32 i;

    if (ay < ax && az < ax) {
        axis = 0;
        pu = arg2->y;
        pv = arg2->z;
    } else if (az < ay) {
        axis = 1;
        pu = arg2->x;
        pv = arg2->z;
    } else {
        axis = 2;
        pu = arg2->x;
        pv = arg2->y;
    }
    for (i = *arg1; ; i++) {
        u16 entry = cells[i];
        struct CollisionTriangle *tri = &tris[entry & 0x7FFF];

        if (tri != arg3) {
            f32 e0, e1, e2;

            if (vh->usingFloatVertices != 0) {
                f32 *vf = vh->header.vertices.VerticesF;
                f32 *v0 = &vf[tri->vertex[0] * 3];
                f32 *v1 = &vf[tri->vertex[1] * 3];
                f32 *v2 = &vf[tri->vertex[2] * 3];
                f32 u0, vv0, u1, vv1, u2, vv2;

                if (axis == 0) {
                    u0 = v0[1]; vv0 = v0[2]; u1 = v1[1]; vv1 = v1[2]; u2 = v2[1]; vv2 = v2[2];
                } else if (axis == 1) {
                    u0 = v0[0]; vv0 = v0[2]; u1 = v1[0]; vv1 = v1[2]; u2 = v2[0]; vv2 = v2[2];
                } else {
                    u0 = v0[0]; vv0 = v0[1]; u1 = v1[0]; vv1 = v1[1]; u2 = v2[0]; vv2 = v2[1];
                }
                e0 = ((u1 - u0) * (pv - vv0)) - ((pu - u0) * (vv1 - vv0));
                e1 = ((u2 - u1) * (pv - vv1)) - ((pu - u1) * (vv2 - vv1));
                e2 = ((u0 - u2) * (pv - vv2)) - ((pu - u2) * (vv0 - vv2));
            } else {
                s16 *vs = vh->header.vertices.Vertices;
                s16 *v0 = &vs[tri->vertex[0] * 3];
                s16 *v1 = &vs[tri->vertex[1] * 3];
                s16 *v2 = &vs[tri->vertex[2] * 3];
                s16 u0, vv0, u1, vv1, u2, vv2;

                if (axis == 0) {
                    u0 = v0[1]; vv0 = v0[2]; u1 = v1[1]; vv1 = v1[2]; u2 = v2[1]; vv2 = v2[2];
                } else if (axis == 1) {
                    u0 = v0[0]; vv0 = v0[2]; u1 = v1[0]; vv1 = v1[2]; u2 = v2[0]; vv2 = v2[2];
                } else {
                    u0 = v0[0]; vv0 = v0[1]; u1 = v1[0]; vv1 = v1[1]; u2 = v2[0]; vv2 = v2[1];
                }
                /* s16 differences subtract as integers before the float
                 * multiply, exactly as the N64 code did. */
                e0 = ((f32) (u1 - u0) * (pv - (f32) vv0)) - ((pu - (f32) u0) * (f32) (vv1 - vv0));
                e1 = ((f32) (u2 - u1) * (pv - (f32) vv1)) - ((pu - (f32) u1) * (f32) (vv2 - vv1));
                e2 = ((f32) (u0 - u2) * (pv - (f32) vv2)) - ((pu - (f32) u2) * (f32) (vv0 - vv2));
            }
            if ((e0 <= 0.5f && e1 <= 0.5f && e2 <= 0.5f) ||
                (e0 >= -0.5f && e1 >= -0.5f && e2 >= -0.5f)) {
                *arg4 = tri;
                if (entry & 0x8000) {
                    return 0;
                }
                *arg1 = i;
                return 1;
            }
        }
        if (entry & 0x8000) {
            *arg4 = NULL;
            return 0;
        }
    }
}
#else
extern s32 func_80102570(
    struct Normal *,
    s32 *,
    Vector *,
    struct CollisionTriangle *,
    struct CollisionTriangle **
);
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80102570.s")
#endif

u32 func_80103004(f32 *MAXLRP, Vector *arg1, struct Normal **arg2, struct CollisionTriangle **arg3) {
#ifdef PORT
    /* The N64 frame let unk4 grow past sp9C into the SP0 spacer; C gives no
     * such layout guarantee, so give the cell list a real array. */
    struct ColStateUnk4 sp9C[120];
#else
    u32 SP0[119];
    struct ColStateUnk4 sp9C;
#endif
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
                    temp_s2 = func_80102570(N, &sp88, &sp68, gCollisionState->ignoreTri, &sp78);
                    if (sp78 != 0) {
                        if (gCollisionState->acceptTri(sp78, N, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0) {
                            sp94 = cell;
                            sp90 = sp78;
                            maxlevel = LEVEL;
                        } else if (temp_s2 != 0) {
                            sp88++;
                            func_80102570(N, &sp88, &sp68, gCollisionState->ignoreTri, &sp78);
                            if (sp78 != 0) {
                                if (gCollisionState->acceptTri(sp78, N, &gCollisionState->deltaPos, gCollisionState->someNormal) != 0) {
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
/* FACTORY: 223/258, whole-function callee-saved permutation. Frame and EVERY
 * stack slot now match the ROM exactly (0xB0 frame; spAC 0xAC, spA8 0xA8,
 * sp9C/sp90 Vectors, sp88/sp84, sp68/sp5C Vectors, sp54; arg homes 0xB0/0xB4,
 * arg4 0xC0) via the pad8C/pad58 dead slots and ROM-order declarations.
 * Residue is purely which callee-saved register each value gets: ROM puts arg2 in
 * $s7 and arg3 in $fp, the draft $s6/$s7, shifting every name one slot and so
 * differing in nearly every word. Same register COUNT (9) both sides. */
s32 func_80103528(f32 *arg0, Vector *arg1, struct Normal **arg2, struct CollisionTriangle **arg3, u32 *arg4) {
    extern struct struct8011BA10_temp D_8012D948[];
    extern f32 D_800E3050[];
    extern f32 D_800E3210[];
    extern f32 D_800E33D0[];
    f32 spAC;
    f32 spA8;
    Vector sp9C;
    Vector sp90;
    s32 pad8C;
    u32 sp88;
    s32 sp84;
    Vector sp68;
    Vector sp5C;
    s32 pad58;
    f32 sp54;
    struct struct8011BA10_temp *var_s0;
    u32 var_s3;
    u32 var_s1;
    u32 var_s4;
    f32 var_f0;
    f32 var_f2;
    f32 var_f12;
    s32 temp_v0;

    if (BD00.tick != BD00.callerTick) {
        sp9C = gCollisionState->currPos;
        spAC = 1.1f;
        gCollisionState->unk30 = D_80129410;
        if (func_80103004(&spAC, &sp90, arg2, arg3) != 0) {
            gCollisionState->nextPos = sp90;
            sp84 = 1;
        } else {
            sp84 = 0;
            spAC = 1.0f;
        }
        sp88 = 0x14;
        var_s3 = 0;
        if (D_8012D940 != 0) {
            var_s0 = D_8012D948;
            do {
                if (!(var_s0->unk2 & 1)) {
                    spA8 = 1.1f;
                    gCollisionState->unk30 = var_s0->unk4;
                    if (var_s0->unk2 & 2) {
                        func_80112ED4((f32 (*)[4]) &var_s0->unk18, &sp68, &sp9C);
                        func_80112ED4((f32 (*)[4]) &var_s0->unk58, &sp5C, &sp68);
                        var_f0 = sp5C.x - sp9C.x;
                        var_f2 = sp5C.y - sp9C.y;
                        var_f12 = sp5C.z - sp9C.z;
                    } else {
                        temp_v0 = var_s0->unk1;
                        var_f0 = D_800E3050[temp_v0];
                        var_f2 = D_800E3210[temp_v0];
                        var_f12 = D_800E33D0[temp_v0];
                    }
                    gCollisionState->currPos.x = sp9C.x + var_f0;
                    gCollisionState->currPos.y = sp9C.y + var_f2;
                    gCollisionState->currPos.z = sp9C.z + var_f12;
                    if ((func_801033A8(var_s0, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) &&
                        (func_80103004(&spA8, &sp90, arg2, arg3) != 0)) {
                        sp88 = var_s3;
                        spAC = spAC * spA8;
                        gCollisionState->nextPos = sp90;
                        sp84 = 1;
                    }
                }
                var_s3 += 1;
                var_s0 += 1;
            } while (var_s3 < D_8012D940);
        }
        if (sp84 != 0) {
            if (arg0 != NULL) {
                *arg0 = spAC;
            }
            if (arg1 != NULL) {
                *arg1 = sp90;
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
        var_s0 = D_8012D948;
        do {
            if (!(var_s0->unk2 & 1)) {
                gCollisionState->unk30 = var_s0->unk4;
                if ((func_801033A8(var_s0, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) &&
                    (func_80103004(&sp54, arg1, arg2, arg3) != 0)) {
                    var_s4 = var_s1;
                }
            }
            var_s1 += 1;
            var_s0 += 1;
        } while (var_s1 < D_8012D940);
    }
    if (sp54 == 1.1f) {
        return 0;
    }
    if (arg0 != NULL) {
        *arg0 = sp54;
    }
    if (arg4 != NULL) {
        *arg4 = var_s4;
    }
    return 1;
}
#elif defined(PORT)
/* Moving-aware raycast core (draft above, completed): like func_80103B58,
 * but when the world-motion stamps differ (BD00.tick != unk44) each active
 * dynamic collider gets per-cast motion compensation -- the segment origin
 * is shifted by the collider's frame delta (its matrix pair for rotating
 * colliders, the per-slot translation deltas otherwise) and the segment
 * shortens to each successive hit, so t accumulates multiplicatively.
 * Sentinel 0x14 in *arg4 means the static mesh won the cast. */
s32 func_80103528(f32 *arg0, Vector *arg1, struct Normal **arg2, struct CollisionTriangle **arg3, u32 *arg4) {
    extern struct struct8011BA10_temp D_8012D948[];
    extern u32 D_8012D940;
    extern f32 D_800E3050[], D_800E3210[], D_800E33D0[];
    u32 i;

    if (BD00.tick != BD00.callerTick) {
        Vector cur = gCollisionState->currPos;
        Vector hit;
        f32 tAcc = 1.1f;
        u32 best = 0x14;
        s32 hadHit;

        gCollisionState->unk30 = D_80129410;
        if (func_80103004(&tAcc, &hit, arg2, arg3) != 0) {
            gCollisionState->nextPos = hit;
            hadHit = 1;
        } else {
            hadHit = 0;
            tAcc = 1.0f;
        }
        for (i = 0; i < D_8012D940; i++) {
            struct struct8011BA10_temp *rec = &D_8012D948[i];
            f32 dx, dy, dz;
            f32 tHit;

            if (rec->unk2 & 1) {
                continue;
            }
            tHit = 1.1f;
            gCollisionState->unk30 = rec->unk4;
            if (rec->unk2 & 2) {
                Vector mid, moved;

                func_80112ED4((f32 (*)[4]) &rec->unk18, &mid, &cur);
                func_80112ED4((f32 (*)[4]) &rec->unk58, &moved, &mid);
                dx = moved.x - cur.x;
                dy = moved.y - cur.y;
                dz = moved.z - cur.z;
            } else {
                dx = D_800E3050[rec->unk1];
                dy = D_800E3210[rec->unk1];
                dz = D_800E33D0[rec->unk1];
            }
            gCollisionState->currPos.x = cur.x + dx;
            gCollisionState->currPos.y = cur.y + dy;
            gCollisionState->currPos.z = cur.z + dz;
            if (func_801033A8(rec, &gCollisionState->currPos, &gCollisionState->nextPos) != 0 &&
                func_80103004(&tHit, &hit, arg2, arg3) != 0) {
                best = i;
                tAcc *= tHit;
                gCollisionState->nextPos = hit;
                hadHit = 1;
            }
        }
        if (hadHit != 0) {
            if (arg0 != NULL) {
                *arg0 = tAcc;
            }
            if (arg1 != NULL) {
                *arg1 = hit;
            }
            if (arg4 != NULL) {
                *arg4 = best;
            }
            return 1;
        }
        return 0;
    } else {
        f32 t = 1.1f;
        u32 best = 0x14;
        s32 ret = 0;

        gCollisionState->unk30 = D_80129410;
        func_80103004(&t, arg1, arg2, arg3);
        for (i = 0; i < D_8012D940; i++) {
            struct struct8011BA10_temp *rec = &D_8012D948[i];

            if (rec->unk2 & 1) {
                continue;
            }
            gCollisionState->unk30 = rec->unk4;
            if (func_801033A8(rec, &gCollisionState->currPos, &gCollisionState->nextPos) != 0 &&
                func_80103004(&t, arg1, arg2, arg3) != 0) {
                best = i;
            }
        }
        if (t != 1.1f) {
            if (arg0 != NULL) {
                *arg0 = t;
            }
            if (arg4 != NULL) {
                *arg4 = best;
            }
            ret = 1;
        }
        return ret;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80103528.s")
#endif

s32 func_80103930(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.ignoreTri = NULL;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

s32 func_801039E8(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.ignoreTri = NULL;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

void func_80103AA0(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.ignoreTri = NULL;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    func_80103528(arg3, arg4, arg5, arg6, arg7);
}

/* The collision raycast core: cast against the static level mesh, then against
 * every active dynamic collider, keeping the nearest t in sp54. Sentinel 0x14
 * in *arg4 means the static mesh won the cast; otherwise the collider index. */
s32 func_80103B58(f32 *arg0, Vector *arg1, struct Normal **arg2, struct CollisionTriangle **arg3, u32 *arg4) {
    extern struct struct8011BA10_temp D_8012D948[];
    f32 sp54;
    struct struct8011BA10_temp *var_s0;
    u32 var_fp;
    u32 var_s1;
    s32 pad;

    sp54 = 1.1f;
    gCollisionState->unk30 = D_80129410;
    func_80103004(&sp54, arg1, arg2, arg3);
    var_fp = 0x14;
    var_s1 = 0;
    if (D_8012D940 != 0) {
        var_s0 = D_8012D948;
        do {
            if (!(var_s0->unk2 & 1)) {
                gCollisionState->unk30 = var_s0->unk4;
                if ((func_801033A8(var_s0, &gCollisionState->currPos, &gCollisionState->nextPos) != 0) &&
                    (func_80103004(&sp54, arg1, arg2, arg3) != 0)) {
                    var_fp = var_s1;
                }
            }
            var_s1 += 1;
            var_s0 += 1;
        } while (var_s1 < D_8012D940);
    }
    if (sp54 != 1.1f) {
        if (arg0 != NULL) {
            *arg0 = sp54;
        }
        if (arg4 != NULL) {
            *arg4 = var_fp;
        }
        return 1;
    }
    return 0;
}

void func_80103CC8(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.ignoreTri = NULL;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
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

void func_80103DE4(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, f32 *arg4, Vector *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, u32 *arg8) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.ignoreTri = NULL;
    newColState.acceptPlane = &func_801024E8;
    newColState.acceptTri = &func_80101920;
    newColState.passThruPlane = arg2;
    newColState.ignorePlane = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}


s32 func_80103EA0(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = 0;
    newColState.ignorePlane = 0;
    newColState.ignoreTri = NULL;
    return func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80103F58(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;
    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101BA0;
    newColState.passThruPlane = 0;
    newColState.ignorePlane = 0;
    newColState.ignoreTri = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104010(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, f32 *arg4, Vector *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, u32 *arg8)
{
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.passThruPlane = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801040CC(Vector *arg0, Vector *arg1, u32 (*arg2)(), f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101D50;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104184(Vector *arg0, Vector *arg1, u32 (*arg2)(), f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101E14;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

s32 func_8010423C(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, s32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_801042F4(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, f32 *arg4, Vector *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, u32 *arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = arg2;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.ignorePlane = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801043B0(Vector *arg0, Vector *arg1, u32 (*arg2)(), f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101E14;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104468(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 *arg3, Vector *arg4, struct Normal **arg5, struct CollisionTriangle **arg6, u32 *arg7) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101DA8;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.passThruPlane = arg2;
    func_80103B58(arg3, arg4, arg5, arg6, arg7);
}

void func_80104520(Vector *arg0, Vector *arg1, struct Normal *arg2, struct Normal *arg3, f32 *arg4, Vector *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, u32 *arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_80101DA8;
    newColState.ignoreTri = NULL;
    newColState.passThruPlane = arg2;
    newColState.ignorePlane = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801045DC(Vector *arg0, Vector *arg1, u16 arg2, u16 arg3, f32 *arg4, Vector *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, u32 *arg8) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_8010203C;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.wantColType = arg2;
    newColState.breakKey = arg3;
    func_80103B58(arg4, arg5, arg6, arg7, arg8);
}

void func_801046A0(Vector *arg0, Vector *arg1, f32 *arg2, Vector *arg3, struct Normal **arg4, struct CollisionTriangle **arg5) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.ignoreTri = NULL;
    sp18.acceptPlane = func_801023FC;
    sp18.acceptTri = func_80101E5C;
    sp18.passThruPlane = NULL;
    sp18.ignorePlane = NULL;
    func_80103D80(arg2, arg3, arg4, arg5);
}

void func_8010474C(Vector *arg0, Vector *arg1) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.ignoreTri = NULL;
    sp18.acceptPlane = func_80102364;
    sp18.acceptTri = func_80101F4C;
    sp18.passThruPlane = NULL;
    sp18.ignorePlane = NULL;
    func_80103D80(0, 0, 0, 0);
}

void func_801047F0(Vector *arg0, Vector *arg1, f32 *arg2, Vector *arg3, struct Normal **arg4, struct CollisionTriangle **arg5, u32 *arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_8010217C;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}

void func_801048A4(Vector *arg0, Vector *arg1, f32 *arg2, Vector *arg3, struct Normal **arg4, struct CollisionTriangle **arg5, u32 *arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_801021BC;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    func_80103B58(arg2, arg3, arg4, arg5, arg6);
}

void func_80104958(Vector *arg0, Vector *arg1, Vector *arg2, struct Normal **arg3, struct CollisionTriangle **arg4) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_801021FC;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    func_80103B58(0, arg2, arg3, arg4, 0);
}

void func_80104A08(Vector *arg0, Vector *arg1, Vector *arg2, struct Normal **arg3, struct CollisionTriangle **arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.acceptPlane = func_80102364;
    sp18.acceptTri = func_801021FC;
    sp18.passThruPlane = NULL;
    sp18.ignorePlane = NULL;
    sp18.ignoreTri = NULL;
    func_80103D80(0, arg2, arg3, arg4);
}

void func_80104AB4(Vector *arg0, Vector *arg1, u16 arg2, u16 arg3, struct CollisionTriangle **arg4) {
    struct CollisionState sp18;

    gCollisionState = &sp18;
    sp18.currPos = *arg0;
    sp18.nextPos = *arg1;
    sp18.someNormal = NULL;
    sp18.ignoreTri = NULL;
    sp18.acceptPlane = func_801024E8;
    sp18.acceptTri = func_8010221C;
    sp18.passThruPlane = NULL;
    sp18.ignorePlane = NULL;
    sp18.wantHaltMovement = arg2;
    sp18.wantColType = arg3;
    func_80103D80(0, 0, 0, arg4);
}

void func_80104B70(Vector *arg0, Vector *arg1, f32 *arg2, Vector *arg3, struct Normal **arg4, struct CollisionTriangle **arg5, u32 *arg6) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *arg0;
    newColState.nextPos = *arg1;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80102324;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
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
    colState.ignoreTri = NULL;
    colState.acceptPlane = &func_801024E8;
    colState.acceptTri = &func_80101D50;
    colState.passThruPlane = NULL;
    colState.ignorePlane = NULL;
    if (func_80103D80(NULL, NULL, &sp7C, &sp78) != 0) {
        VECPTR_SUB(sp1C, nPos, cPos);
        if (func_80101920(sp78, sp7C, (struct Normal *) &sp1C, 0) == 0) {
            return 1;
        }
    }
    return 0;
}

#ifdef MIPS_TO_C
/* BLOCKED: needs a FILE-SCOPE prototype change, which the re-foundation rules
 * forbid. The ROM tests the return value of func_80103AA0, func_801043B0,
 * func_80104010 and func_80104184 (beqz $v0 after each jal), but all four are
 * defined `void` earlier in this TU. IDO rejects an in-body
 * `extern s32 func_80103AA0();` ("redeclaration / Incompatible function return
 * type"), and a `((s32 (*)()) f)(...)` cast-call compiles to jalr through $t9
 * instead of the ROM's jal, so neither workaround stays inside one function.
 * Unblock = retype those four to s32 at file scope, then re-baseline the whole
 * TU (check_tu_size.py + sha1) because it changes every existing call site. */

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
#elif defined(PORT)
/* Segment-cast dispatcher (draft above, completed). The three setup helpers
 * below replicate func_80103AA0 / func_801043B0 / func_80104010 /
 * func_80104184 with pointer-true signatures (the compiled originals
 * forward s32 args -- the pc_probe_f58 precedent). */
static s32 pc_probe_aa0(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                        struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.ignoreTri = NULL;
    newColState.someNormal = norm;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    return func_80103528(tOut, hitOut, nOut, triOut, idxOut);
}

static s32 pc_probe_43b0(Vector *a, Vector *b, struct CollisionTriangle *skipTri) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101E14;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = skipTri;
    return func_80103B58(NULL, NULL, NULL, NULL, NULL);
}

static s32 pc_probe_4010(Vector *a, Vector *b, struct Normal *along, struct CollisionTriangle **triOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.passThruPlane = along;
    return func_80103B58(NULL, NULL, NULL, triOut, NULL);
}

static s32 pc_probe_4184(Vector *a, Vector *b, struct CollisionTriangle *skipTri) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101E14;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = skipTri;
    return func_80103B58(NULL, NULL, NULL, NULL, NULL);
}

/* Cast arg0->arg1; on a hit, extend the segment one unit past the hit point
 * and re-verify from three angles (excluding the hit triangle, constrained
 * along the hit normal, excluding the second triangle) -- the hit is
 * rejected as a phantom when the first two extended casts connect but the
 * third finds nothing. A degenerate hit at the start point is recovered by
 * re-aiming through the winning collider's frame delta (func_80112A40). */
s32 func_80104D2C(Vector *arg0, Vector *arg1, Vector *arg2, f32 *arg3, Vector *arg4,
                  struct Normal **arg5, struct CollisionTriangle **arg6, s32 *arg7) {
    Vector hit, ext;
    struct Normal *n;
    struct CollisionTriangle *tri, *tri2;
    f32 dx, dy, dz;
    f32 len, inv;

    if (pc_probe_aa0(arg0, arg1, (struct Normal *) arg2, arg3, &hit, &n, &tri, (u32 *) arg7) != 0) {
        dx = hit.x - arg0->x;
        dy = hit.y - arg0->y;
        dz = hit.z - arg0->z;
        if (sqrtf((dx * dx) + (dy * dy) + (dz * dz)) < 0.00001f) {
            Vector delta;

            func_80112A40(*arg7, arg0, &delta);
            dx = arg1->x - (arg0->x + delta.x);
            dy = arg1->y - (arg0->y + delta.y);
            dz = arg1->z - (arg0->z + delta.z);
        }
        len = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        if (len < 0.00001f) {
            inv = 0.0f;
        } else {
            inv = 1.0f / len;
        }
        ext.x = (dx * inv) + hit.x;
        ext.y = (dy * inv) + hit.y;
        ext.z = (dz * inv) + hit.z;
        if (pc_probe_43b0(arg0, &ext, tri) != 0 &&
            pc_probe_4010(arg0, &ext, n, &tri2) != 0 &&
            pc_probe_4184(arg0, &ext, tri2) == 0) {
            return 0;
        }
        if (arg4 != NULL) {
            *arg4 = hit;
        }
        if (arg5 != NULL) {
            *arg5 = n;
        }
        if (arg6 != NULL) {
            *arg6 = tri;
        }
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80104D2C.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 57/75, frame-size + one-slot rotation. Solved here and kept: the five
 * low BD00 stores are SEPARATE globals (ROM emits %lo(D_8012BD04)($at) per field,
 * not a base+offset off &D_8012BD00), and the ROM re-bases through arg0->scale and
 * indexes PAST its end -- temp_v0[3]/temp_v0[4] are faceAngle[0]/[1]. Both are
 * reproduced. Residue: ROM frame is 0x28 with 12 dead bytes (0x18, 0x20, 0x24)
 * that no C spelling reserves -- unused pads and unused volatile pads are both
 * eliminated by IDO (probed) -- plus $v0-vs-$v1 on the reloaded arg0 and three
 * lui/mul.s one-slot rotations that follow from it. */
void func_80104FB8(struct PositionState *arg0) {
    extern f32 D_8012BD04;
    extern f32 D_8012BD08;
    extern f32 D_8012BD0C;
    extern f32 D_8012BD10;
    extern f32 D_8012BD14;
    f32 sp1C;
    f32 temp_f0;
    f32 *temp_v0;

    temp_v0 = arg0->scale;
    sp1C = cosf(arg0->faceAngle[2]);
    temp_f0 = sinf(arg0->faceAngle[2]);
    D_8012BD04 = arg0->faceAngle[0] * temp_f0;
    D_8012BD08 = temp_v0[3] * sp1C;
    D_8012BD0C = temp_v0[4] * temp_f0;
    D_8012BD10 = temp_v0[4] * sp1C;
    if (temp_v0[3] > 0.0f) {
        D_8012BD14 = temp_f0;
        BD00.fwdZ = sp1C;
    } else {
        D_8012BD14 = -temp_f0;
        BD00.fwdZ = -sp1C;
    }
    BD00.backX = -BD00.fwdX;
    BD00.backZ = -BD00.fwdZ;
    BD00.footPushX = (BD00.fwdX * 0.1f) + BD00.footOffX;
    BD00.footPushZ = (BD00.fwdZ * 0.1f) + BD00.footOffZ;
    BD00.headPushX = (BD00.backX * 0.1f) + BD00.headOffX;
    BD00.headPushZ = (BD00.backZ * 0.1f) + BD00.headOffZ;
}
#elif defined(PORT)
/* Probe-basis setup from the facing angle: the BD00 direction basis
 * (faceAngle[0..1] x sin/cos of faceAngle[2]), the facing sign pair, its
 * negation, and the four 0.1-scaled probe offsets. Decoded from the asm;
 * m2c garbled two of the four basis stores. */
void func_80104FB8(struct PositionState *arg0) {
    f32 c = cosf(arg0->faceAngle[2]);
    f32 sn = sinf(arg0->faceAngle[2]);

    BD00.footOffX = arg0->faceAngle[0] * sn;
    BD00.footOffZ = arg0->faceAngle[0] * c;
    BD00.headOffX = arg0->faceAngle[1] * sn;
    BD00.headOffZ = arg0->faceAngle[1] * c;
    if (arg0->faceAngle[0] > 0.0f) {
        BD00.fwdX = sn;
        BD00.fwdZ = c;
    } else {
        BD00.fwdX = -sn;
        BD00.fwdZ = -c;
    }
    BD00.backX = -BD00.fwdX;
    BD00.backZ = -BD00.fwdZ;
    BD00.footPushX = (BD00.fwdX * 0.1f) + BD00.footOffX;
    BD00.footPushZ = (BD00.fwdZ * 0.1f) + BD00.footOffZ;
    BD00.headPushX = (BD00.backX * 0.1f) + BD00.headOffX;
    BD00.headPushZ = (BD00.backZ * 0.1f) + BD00.headOffZ;
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
    temp_v0[3] = BD00.footOffX + temp_v0[0];
    temp_v0[4] = BD00.footOffZ + temp_v0[2];
    temp_v0[5] = BD00.headOffX + temp_v0[0];
    temp_v0[6] = BD00.headOffZ + temp_v0[2];
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

void func_80105218(struct CollisionResult *arg0) {
    arg0->flags.w = 0;
    arg0->rec[COL_SLOT_4].type = 0x14;
    arg0->rec[COL_FLOOR].type = 0x14;
    arg0->rec[COL_CEILING].type = 0x14;
    arg0->rec[COL_WALL_BACK].type = 0x14;
    arg0->rec[COL_WALL_FRONT].type = 0x14;
}

void func_80105238(struct PositionState *arg0, struct CollisionResult *arg1) {
    arg0->collisionFlags = arg1->flags.w;
    arg0->byteArray[2] = arg1->rec[COL_WALL_FRONT].type;
    arg0->byteArray[3] = arg1->rec[COL_WALL_BACK].type;
    arg0->byteArray[1] = arg1->rec[COL_CEILING].type;
    arg0->byteArray[0] = arg1->rec[COL_FLOOR].type;
    arg0->byteArray[4] = arg1->rec[COL_SLOT_4].type;
    func_801050E0(arg0);
}

#ifdef MIPS_TO_C
/* FACTORY: 6/171, one-slot temp rotation in the final flags write only. Solved and
 * kept: temp_t0 = arg0->scale held as a real pointer and indexed PAST its end
 * (temp_t0[0..2] are scale[0..2]) -- giving it three uses is what stops IDO
 * folding it back into $s0 displacements, and that one change took the score from
 * 117/171 to 10/171 because ROM $t0 holds it and every &local address then lands
 * in $t1-$t4. Also: sp50 is the flag local (not a spilled temp), and both BD00
 * adds are written BD00-first. Residue: the last 6 words rotate t2/t4/t5 -> t3/t5/t6. */
s32 func_80105284(struct PositionState *arg0, struct CollisionResult *arg1) {
    f32 *temp_t0;
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

    temp_t0 = arg0->scale;
    sp78 = 1.1f;
    sp54.x = BD00.fwdX;
    sp54.y = 0.0f;
    sp54.z = BD00.fwdZ;
    sp6C.x = arg0->kirbyGroundPath[0];
    sp6C.y = arg0->kirbyHeadPos[1];
    sp6C.z = arg0->kirbyGroundPath[1];
    sp60.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp60.y = temp_t0[0] + arg0->kirbyFootPos[1];
    sp60.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp50 = 0;
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp78, &D_8012BD34, &arg1->rec[COL_WALL_FRONT].norm,
                      &arg1->rec[COL_WALL_FRONT].tri, &arg1->rec[COL_WALL_FRONT].type) != 0) {
        sp50 = COLF_WALL_F;
    }
    sp6C.y = arg0->kirbyHeight[1];
    sp60.y = temp_t0[2] + arg0->kirbyFootPos[1];
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) {
        if ((sp50 == 0) || ((sp3C != arg1->rec[COL_WALL_FRONT].norm) && (sp4C < sp78))) {
            D_8012BD34 = sp40;
            sp50 = COLF_WALL_F_FOOT;
            arg1->rec[COL_WALL_FRONT].norm = sp3C;
            arg1->rec[COL_WALL_FRONT].tri = sp38;
            arg1->rec[COL_WALL_FRONT].type = sp34;
            sp78 = sp4C;
        }
    }
    sp6C.y = arg0->kirbyHeight[0];
    sp60.y = temp_t0[1] + arg0->kirbyFootPos[1];
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) {
        if ((sp50 == 0) || ((sp3C != arg1->rec[COL_WALL_FRONT].norm) && (sp4C < sp78))) {
            D_8012BD34 = sp40;
            sp50 = COLF_WALL_F_HEAD;
            arg1->rec[COL_WALL_FRONT].norm = sp3C;
            arg1->rec[COL_WALL_FRONT].tri = sp38;
            arg1->rec[COL_WALL_FRONT].type = sp34;
        }
    }
    if (sp50 != 0) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) | sp50;
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Forward wall probe (draft above, completed): three verified segment casts
 * (func_80104D2C) along the BD00 forward basis at ground-path, upper and
 * mid heights, keeping the best hit in rec[COL_WALL_FRONT] / D_8012BD34 and folding the
 * winning class (1 / 4 / 2) into the flags word. */
s32 func_80105284(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector start, end, hit;
    struct Normal dir;
    struct Normal *n;
    struct CollisionTriangle *tri;
    s32 type;
    f32 best = 1.1f;
    f32 t;
    s32 cls = 0;

    dir.x = BD00.fwdX;
    dir.y = 0.0f;
    dir.z = BD00.fwdZ;
    start.x = arg0->kirbyGroundPath[0];
    start.y = arg0->kirbyHeadPos[1];
    start.z = arg0->kirbyGroundPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    end.y = arg0->kirbyFootPos[1] + arg0->scale[0];
    end.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (func_80104D2C(&start, &end, (Vector *) &dir, &best, &D_8012BD34,
                      &arg1->rec[COL_WALL_FRONT].norm, &arg1->rec[COL_WALL_FRONT].tri, &arg1->rec[COL_WALL_FRONT].type) != 0) {
        cls = COLF_WALL_F;
    }
    start.y = arg0->kirbyHeight[1];
    end.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    if (func_80104D2C(&start, &end, (Vector *) &dir, &t, &hit, &n, &tri, &type) != 0 &&
        (cls == 0 || (n != arg1->rec[COL_WALL_FRONT].norm && t < best))) {
        D_8012BD34 = hit;
        cls = COLF_WALL_F_FOOT;
        arg1->rec[COL_WALL_FRONT].norm = n;
        arg1->rec[COL_WALL_FRONT].tri = tri;
        arg1->rec[COL_WALL_FRONT].type = type;
        best = t;
    }
    start.y = arg0->kirbyHeight[0];
    end.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    if (func_80104D2C(&start, &end, (Vector *) &dir, &t, &hit, &n, &tri, &type) != 0 &&
        (cls == 0 || (n != arg1->rec[COL_WALL_FRONT].norm && t < best))) {
        D_8012BD34 = hit;
        cls = COLF_WALL_F_HEAD;
        arg1->rec[COL_WALL_FRONT].norm = n;
        arg1->rec[COL_WALL_FRONT].tri = tri;
        arg1->rec[COL_WALL_FRONT].type = type;
    }
    if (cls != 0) {
        arg1->flags.hw = (((arg1->flags.w >> 0x13) | cls) * 8) | (arg1->flags.hw & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80105284.s")
#endif

s32 func_80105530(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector sp54;
    Vector sp48;
    Vector sp3C;

    if (!((arg1->flags.w >> 0x13) & COLF_WALL_F_ANY)) {
        sp3C.x = BD00.fwdX;
        sp3C.y = 0.0f;
        sp3C.z = BD00.fwdZ;
        sp54.x = BD00.headOffX + arg0->kirbyFootPos[0];
        sp54.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp54.z = BD00.headOffZ + arg0->kirbyFootPos[2];
        sp48.x = BD00.footOffX + arg0->kirbyFootPos[0];
        sp48.y = sp54.y;
        sp48.z = BD00.footOffZ + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[COL_WALL_FRONT].norm, &arg1->rec[COL_WALL_FRONT].tri, &arg1->rec[COL_WALL_FRONT].type) != 0) {
            arg1->flags.f.hits |= COLF_WALL_F;
            return 1;
        }
        sp48.x = BD00.footPushX + arg0->kirbyFootPos[0];
        sp48.z = BD00.footPushZ + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[COL_WALL_FRONT].norm, &arg1->rec[COL_WALL_FRONT].tri, &arg1->rec[COL_WALL_FRONT].type) != 0) {
            return 1;
        }
    }
    return 0;
}


s32 func_801056C8(struct PositionState *arg0, struct CollisionResult *arg1) {
    f32 sp54;
    Vector sp48;
    Vector sp3C;
    Vector sp30;

    sp48.x = arg0->kirbyGroundPath[0];
    sp48.y = arg0->kirbyHeadPos[1];
    sp48.z = arg0->kirbyGroundPath[1];
    sp3C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp3C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp3C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp30.x = BD00.fwdX;
    sp30.y = 0.0f;
    sp30.z = BD00.fwdZ;
    if (func_80104D2C(&sp48, &sp3C, &sp30, 0, &D_8012BD34, &arg1->rec[COL_WALL_FRONT].norm, &arg1->rec[COL_WALL_FRONT].tri, &arg1->rec[COL_WALL_FRONT].type) != 0) {
        arg1->flags.f.hits |= COLF_WALL_F;
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
/* BLOCKED (same class as func_80104D2C): the ROM tests func_80104520's return
 * (beqz $v0 right after the jal) but func_80104520 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_80104520 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
    sp104 = sp140 + D_8012BD00.fwdX;
    sp108 = sp144;
    sp10C = sp148 + D_8012BD00.fwdZ;
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
            temp_f12_2 = D_8012BD00.fwdX * arg3;
            temp_f14_2 = D_8012BD00.fwdZ * arg3;
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
            spC0 = (D_8012BD00.fwdX * var_f0) + sp134;
            if (temp_f24_2 > 0.0f) {
                var_f2_3 = 1.0f;
            } else {
                var_f2_3 = -1.0f;
            }
            temp_f14_3 = var_f2_3 + sp138;
            spB8 = temp_f14_3;
            spC4 = temp_f14_3;
            spC8 = (D_8012BD00.fwdZ * var_f0) + sp13C;
            spB4 = (D_8012BD00.backX * var_f0) + sp134;
            spAC = 0;
            spBC = (D_8012BD00.backZ * var_f0) + sp13C;
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
#elif defined(PORT)
static s32 pc_probe_4520(Vector *a, Vector *b, struct Normal *excl34, struct Normal *excl38,
                         f32 *tOut, Vector *hitOut, struct Normal **nOut,
                         struct CollisionTriangle **triOut, u32 *idxOut);
static s32 pc_probe_423c(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut);
static s32 pc_probe_ea0(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                        struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut);

/* Wall-march resolver (draft above, completed; the lateral sibling of
 * func_80108078). Each round re-projects the target onto the current wall
 * plane along the BD00 facing (func_801057C4), then casts. A floor-ish hit
 * (|ny| > 0.5) tries to step past it with facing-offset probes (return 1
 * on a matching far plane), then casts across the facing for a continuing
 * wall (none -> return 2); a wall hit advances the march onto that plane.
 * Return 0 clamps *arg4 to the segment end; *arg6/7/8 report the last
 * advanced wall's normal/triangle/type. */
s32 func_801058B8(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3, Vector *arg4,
                  f32 *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, s32 *arg8) {
    Vector cur, target, hitP, far;
    struct Normal *s0 = arg2;   /* exclusion A (unk34) */
    struct Normal *s1 = arg2;   /* current wall plane (projection source) */
    struct Normal *s3 = arg2;   /* exclusion B (unk38) */
    struct Normal *hitN;
    struct CollisionTriangle *hitT;
    struct CollisionTriangle *lastT = NULL;
    u32 hitTy = 0;
    s32 lastTy = 0;
    s32 advanced = 0;
    s32 ret = 0;
    f32 dx = arg1->x - arg0->x;
    f32 dy = arg1->y - arg0->y;
    f32 dz = arg1->z - arg0->z;
    f32 remaining = sqrtf((dx * dx) + (dy * dy) + (dz * dz));

    if (remaining == 0.0f) {
        *arg4 = *arg0;
        return 0;
    }
    cur = *arg0;
    target = *arg1;
    for (;;) {
        f32 d;

        far.x = target.x + BD00.fwdX;
        far.y = target.y;
        far.z = target.z + BD00.fwdZ;
        if (func_801057C4(s1, &far, &target, &hitP) != 0) {
            target.x = hitP.x;
            target.z = hitP.z;
        }
        if (pc_probe_4520(&cur, &target, s0, s3, NULL, &hitP, &hitN, &hitT, &hitTy) == 0) {
            f32 ddx = target.x - cur.x;
            f32 ddy = target.y - cur.y;
            f32 ddz = target.z - cur.z;
            f32 dd = sqrtf((ddx * ddx) + (ddy * ddy) + (ddz * ddz));

            if (remaining <= dd) {
                f32 sc = remaining / dd;

                arg4->x = (ddx * sc) + cur.x;
                arg4->y = (ddy * sc) + cur.y;
                arg4->z = (ddz * sc) + cur.z;
            } else {
                *arg4 = target;
            }
            break;
        }
        dx = hitP.x - cur.x;
        dy = hitP.y - cur.y;
        dz = hitP.z - cur.z;
        d = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        if (remaining <= d) {
            f32 sc = remaining / d;

            arg4->x = (dx * sc) + cur.x;
            arg4->y = (dy * sc) + cur.y;
            arg4->z = (dz * sc) + cur.z;
            break;
        }
        if (((hitN->y < 0.0f) ? -hitN->y : hitN->y) > 0.5f) {
            Vector probeA, probeB, front, back;
            struct Normal *n2;
            f32 ddx = target.x - cur.x;
            f32 ddy = target.y - cur.y;
            f32 ddz = target.z - cur.z;
            f32 s = 10.0f / sqrtf((ddx * ddx) + (ddy * ddy) + (ddz * ddz));
            f32 ox = BD00.fwdX * arg3;
            f32 oz = BD00.fwdZ * arg3;
            f32 lift, dyUnit;
            s32 found = 0;

            probeA.x = cur.x + ox;
            probeA.y = cur.y;
            probeA.z = cur.z + oz;
            probeB.x = (ddx * s) + target.x + ox;
            probeB.y = (ddy * s) + target.y;
            probeB.z = (ddz * s) + target.z + oz;
            if (pc_probe_ea0(&probeA, &probeB, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    *arg4 = hitP;
                    *arg5 = remaining - d;
                    ret = 1;
                    break;
                }
            }
            lift = (arg3 > 0.0f) ? 10.0f : -10.0f;
            dyUnit = (ddy > 0.0f) ? 1.0f : -1.0f;
            front.x = (BD00.fwdX * lift) + hitP.x;
            front.y = hitP.y + dyUnit;
            front.z = (BD00.fwdZ * lift) + hitP.z;
            back.x = (BD00.backX * lift) + hitP.x;
            back.y = front.y;
            back.z = (BD00.backZ * lift) + hitP.z;
            if (pc_probe_423c(&front, &back, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    found = 1;
                }
            }
            if (found == 0) {
                *arg4 = hitP;
                *arg5 = remaining - d;
                ret = 2;
                break;
            }
            if (s1 != s0 &&
                (s0->x != s1->x || s0->y != s1->y || s0->z != s1->z ||
                 s0->originOffset != s1->originOffset) &&
                (-s0->originOffset != s1->originOffset ||
                 (s1->x * s0->x) + (s1->y * s0->y) + (s1->z * s0->z) != -1.0f)) {
                s3 = s0;
            }
            s0 = hitN;
        } else {
            s0 = hitN;
            cur = hitP;
            s3 = s1;
            remaining -= d;
            advanced = 1;
            s1 = s0;
            lastT = hitT;
            lastTy = (s32) hitTy;
        }
    }
    if (advanced != 0) {
        *arg6 = s1;
        *arg7 = lastT;
        *arg8 = lastTy;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801058B8.s")
#endif

/* FACTORY: 51/203, frame + every stack offset + all control flow exact. Residue is a systematic
   $f4<->$f10 role swap from the first mul.s of the case-0 dot product onward: the ROM emits
   mul.s $f6,$f10,$f4 where IDO gives mul.s $f6,$f4,$f10. Invariant to source operand order
   (flipping both multiplies changed nothing) -- the documented mul.s parity floor. */
/* FACTORY: 51/203, frame + every stack offset + all control flow exact. Residue is a systematic
   $f4<->$f10 role swap from the first mul.s of the case-0 dot product onward: the ROM emits
   mul.s $f6,$f10,$f4 where IDO gives mul.s $f6,$f4,$f10, with identical register CONTENTS.
   Measured negative here: (a) flipping both multiplies' source operand order - no change at all;
   (b) reversing the sqrt sum's add chain (the last-evaluated-add lever) - 51 -> 55, worse.
   Every add in this function already emits the ROM's operand order, so the add lever has no
   purchase; named f32 temps are blocked because 3 of them cost +16 bytes of frame. */
#ifdef MIPS_TO_C
/* FACTORY: 51/203, FP temp rotation ($f4 <-> $f10, systematic). Structure, frame
 * (0xA0), every stack slot, the 3-arm if/else chain on func_801058B8's result and
 * all four call signatures line up 1:1. Solved and kept: -1.0f is passed in the
 * INTEGER register $a3 (o32 float-after-pointers), and every BD00 term is written
 * BD00-first while both dot products are written z-term-first -- restoring that
 * order took it from 67/203 to 51/203. Remainder is which of $f4/$f10 each load
 * and sub lands in; mul.s operand order is invariant, so no spelling reaches it. */
void func_801060C4(struct PositionState *arg0, struct CollisionResult *arg1) {
    s32 func_801058B8(Vector *, Vector *, struct Normal *, f32, Vector *, f32 *, struct Normal **,
                      struct CollisionTriangle **, s32 *);
    struct Normal *sp9C;
    struct CollisionTriangle *sp98;
    Vector sp8C;
    Vector sp80;
    Vector sp74;
    s32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    Vector sp54;
    Vector sp48;

    sp8C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp8C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp8C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp9C = arg1->rec[COL_WALL_FRONT].norm;
    sp98 = arg1->rec[COL_WALL_FRONT].tri;
    sp70 = arg1->rec[COL_WALL_FRONT].type;
    switch (func_801058B8(&D_8012BD34, &sp8C, arg1->rec[COL_WALL_FRONT].norm, -1.0f, &sp80, &sp6C, &sp9C, &sp98, &sp70)) {
    case 0:
        if ((((sp8C.z - sp80.z) * BD00.fwdZ) + ((sp8C.x - sp80.x) * BD00.fwdX)) < 0.0f) {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFF8;
            return;
        }
        sp74 = sp80;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F;
        break;
    case 1:
        sp74 = sp80;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F;
        break;
    case 2:
        sp60 = sp8C.x - BD00.hitX;
        sp64 = sp8C.y - BD00.hitY;
        sp68 = sp8C.z - BD00.hitZ;
        sp6C = sp6C / sqrtf((sp60 * sp60) + (sp64 * sp64) + (sp68 * sp68));
        sp74.x = (sp60 * sp6C) + sp80.x;
        sp74.y = (sp64 * sp6C) + sp80.y;
        sp48.y = sp74.y;
        sp74.z = (sp68 * sp6C) + sp80.z;
        sp48.x = BD00.fwdX + sp74.x;
        sp48.z = BD00.fwdZ + sp74.z;
        if ((func_801057C4(sp9C, &sp74, &sp48, &sp54) != 0) &&
            ((((sp74.z - sp54.z) * BD00.fwdZ) + ((sp74.x - sp54.x) * BD00.fwdX)) > 0.0f)) {
            sp74.x = sp54.x;
            sp74.z = sp54.z;
        }
        break;
    }
    arg1->rec[COL_WALL_FRONT].norm = sp9C;
    arg1->rec[COL_WALL_FRONT].tri = sp98;
    arg1->rec[COL_WALL_FRONT].type = sp70;
    arg0->kirbyFootPos[0] = sp74.x - BD00.footPushX;
    arg0->kirbyFootPos[1] = sp74.y - arg0->scale[0];
    arg0->kirbyFootPos[2] = sp74.z - BD00.footPushZ;
}
#elif defined(PORT)
s32 func_801058B8(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3, Vector *arg4,
                  f32 *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, s32 *arg8);

/* Forward wall snap resolver (draft above, completed): re-anchor rec[COL_WALL_FRONT]
 * through func_801058B8's wall march (-1.0 side). r=0 keeps the walked
 * point only when it lies ahead of the facing; r=2 extrapolates along the
 * BD00.hitX motion stamp and lets func_801057C4 clip the point back to
 * the wall plane. Kirby's feet are pulled to the resolved point minus the
 * forward bias. */
void func_801060C4(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *n = arg1->rec[COL_WALL_FRONT].norm;
    struct CollisionTriangle *tri = arg1->rec[COL_WALL_FRONT].tri;
    s32 type = arg1->rec[COL_WALL_FRONT].type;
    Vector probe, out, fin;
    f32 dist;
    s32 r;

    probe.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[0];
    probe.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    r = func_801058B8(&D_8012BD34, &probe, arg1->rec[COL_WALL_FRONT].norm, -1.0f, &out, &dist, &n, &tri, &type);
    fin = out;
    if (r == 0) {
        if (((probe.x - out.x) * BD00.fwdX) + ((probe.z - out.z) * BD00.fwdZ) < 0.0f) {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xFFF8) * 8) | (arg1->flags.hw & 7);
            return;
        }
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F) * 8) | (arg1->flags.hw & 7);
    } else if (r == 1) {
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F) * 8) | (arg1->flags.hw & 7);
    } else if (r == 2) {
        f32 dx = probe.x - BD00.hitX;
        f32 dy = probe.y - BD00.hitY;
        f32 dz = probe.z - BD00.hitZ;
        f32 s = dist / sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        Vector far, clip;

        fin.x = (dx * s) + out.x;
        fin.y = (dy * s) + out.y;
        fin.z = (dz * s) + out.z;
        far.x = fin.x + BD00.fwdX;
        far.y = fin.y;
        far.z = fin.z + BD00.fwdZ;
        if (func_801057C4(n, &fin, &far, &clip) != 0 &&
            ((fin.x - clip.x) * BD00.fwdX) + ((fin.z - clip.z) * BD00.fwdZ) > 0.0f) {
            fin.x = clip.x;
            fin.z = clip.z;
        }
    }
    arg1->rec[COL_WALL_FRONT].norm = n;
    arg1->rec[COL_WALL_FRONT].tri = tri;
    arg1->rec[COL_WALL_FRONT].type = type;
    arg0->kirbyFootPos[0] = fin.x - BD00.footPushX;
    arg0->kirbyFootPos[1] = fin.y - arg0->scale[0];
    arg0->kirbyFootPos[2] = fin.z - BD00.footPushZ;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801060C4.s")
#endif

#ifdef NON_MATCHING
// Near match: first 53 insns identical; target keeps `&arg0->scale[0]` in a
// pointer temp (sp30) that IDO here folds back into direct s0-relative loads.
s32 func_801063F0(struct PositionState *arg0, struct CollisionResult *arg1) {
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
#ifdef PORT
    /* The match note above: the target keeps &arg0->scale[0] in this pointer
     * temp, and this C body reads sp30->y/z without ever assigning it -- UB
     * that IDO's folding made harmless on N64 and the PC crashes on. */
    sp30 = (Vector *) &arg0->scale[0];
#endif
    sp54.x = BD00.backX;
    sp54.y = 0.0f;
    sp54.z = BD00.backZ;
    sp6C.x = arg0->kirbyHeadPath[0];
    sp6C.y = arg0->kirbyHeadPos[1];
    sp6C.z = arg0->kirbyHeadPath[1];
    sp60.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp60.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp50 = 0;
    sp60.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    if (func_80104D2C(&sp6C, &sp60, &sp54, &sp78, &D_8012BD34, &arg1->rec[COL_WALL_BACK].norm, &arg1->rec[COL_WALL_BACK].tri, &arg1->rec[COL_WALL_BACK].type) != 0) {
        sp50 = COLF_WALL_B;
    }
    sp6C.y = arg0->kirbyHeight[1];
    sp60.y = arg0->kirbyFootPos[1] + sp30->z;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) &&
            ((sp50 == 0) || ((sp3C != arg1->rec[COL_WALL_BACK].norm) && (sp4C < sp78)))) {
        D_8012BD34 = sp40;
        sp50 = COLF_WALL_B_FOOT;
        arg1->rec[COL_WALL_BACK].norm = sp3C;
        arg1->rec[COL_WALL_BACK].tri = sp38;
        arg1->rec[COL_WALL_BACK].type = sp34;
        sp78 = sp4C;
    }
    sp6C.y = arg0->kirbyHeight[0];
    sp60.y = arg0->kirbyFootPos[1] + sp30->y;
    if ((func_80104D2C(&sp6C, &sp60, &sp54, &sp4C, &sp40, &sp3C, &sp38, &sp34) != 0) &&
            ((sp50 == 0) || ((sp3C != arg1->rec[COL_WALL_BACK].norm) && (sp4C < sp78)))) {
        D_8012BD34 = sp40;
        sp50 = COLF_WALL_B_HEAD;
        arg1->rec[COL_WALL_BACK].norm = sp3C;
        arg1->rec[COL_WALL_BACK].tri = sp38;
        arg1->rec[COL_WALL_BACK].type = sp34;
    }
    if (sp50 != 0) {
        arg1->flags.f.hits |= sp50;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801063F0.s")
#endif
s32 func_8010669C(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector sp54;
    Vector sp48;
    Vector sp3C;

    if (!((arg1->flags.w >> 0x13) & COLF_WALL_B_ANY)) {
        sp3C.x = BD00.backX;
        sp3C.y = 0.0f;
        sp3C.z = BD00.backZ;
        sp54.x = BD00.footOffX + arg0->kirbyFootPos[0];
        sp54.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp54.z = BD00.footOffZ + arg0->kirbyFootPos[2];
        sp48.x = BD00.headOffX + arg0->kirbyFootPos[0];
        sp48.y = sp54.y;
        sp48.z = BD00.headOffZ + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[COL_WALL_BACK].norm, &arg1->rec[COL_WALL_BACK].tri, &arg1->rec[COL_WALL_BACK].type) != 0) {
            arg1->flags.f.hits |= COLF_WALL_B;
            return 1;
        }
        sp48.x = BD00.headPushX + arg0->kirbyFootPos[0];
        sp48.z = BD00.headPushZ + arg0->kirbyFootPos[2];
        if (func_8010423C(&sp54, &sp48, &sp3C, 0, &D_8012BD34, &arg1->rec[COL_WALL_BACK].norm, &arg1->rec[COL_WALL_BACK].tri, &arg1->rec[COL_WALL_BACK].type) != 0) {
            return 1;
        }
    }
    return 0;
}

s32 func_80106834(struct PositionState *arg0, struct CollisionResult *arg1) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    sp4C.x = arg0->kirbyHeadPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyHeadPath[1];
    sp40.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp34.x = BD00.backX;
    sp34.y = 0.0f;
    sp34.z = BD00.backZ;
    if (func_80104D2C(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[COL_WALL_BACK].norm, &arg1->rec[COL_WALL_BACK].tri, &arg1->rec[COL_WALL_BACK].type) != 0) {
        arg1->flags.f.hits |= COLF_WALL_B;
        return 1;
    }
    return 0;
}

/* FACTORY: 51/203, frame + every stack offset + all control flow exact. Residue is a systematic
   $f4<->$f10 role swap from the first mul.s of the case-0 dot product onward: the ROM emits
   mul.s $f6,$f10,$f4 where IDO gives mul.s $f6,$f4,$f10. Invariant to source operand order
   (flipping both multiplies changed nothing) -- the documented mul.s parity floor. */
#ifdef MIPS_TO_C
/* FACTORY: 51/203 -- an EXACT CLONE of func_801060C4 (the two listings differ only
 * in the substitution table: rec[COL_WALL_FRONT]->rec[COL_WALL_BACK], BD00 unk4/8/14/18/24/28 -> unkC/10/
 * 1C/20/2C/30, -1.0f -> 1.0f, mask 0xFFF8|1 -> 0xFFC7|8). Ported from that draft
 * and it reproduces the identical residue, which confirms the shape is right:
 * the same systematic $f4 <-> $f10 rotation. Swapping the mul factor order was
 * measured here and made it WORSE (51 -> 58), reconfirming LEVERS mul.s
 * invariance. Note this one is s32 at file scope but sets no $v0. */
s32 func_80106930(struct PositionState *arg0, struct CollisionResult *arg1) {
    s32 func_801058B8(Vector *, Vector *, struct Normal *, f32, Vector *, f32 *, struct Normal **,
                      struct CollisionTriangle **, s32 *);
    struct Normal *sp9C;
    struct CollisionTriangle *sp98;
    Vector sp8C;
    Vector sp80;
    Vector sp74;
    s32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    Vector sp54;
    Vector sp48;

    sp8C.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp8C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp8C.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp9C = arg1->rec[COL_WALL_BACK].norm;
    sp98 = arg1->rec[COL_WALL_BACK].tri;
    sp70 = arg1->rec[COL_WALL_BACK].type;
    switch (func_801058B8(&D_8012BD34, &sp8C, arg1->rec[COL_WALL_BACK].norm, 1.0f, &sp80, &sp6C, &sp9C, &sp98, &sp70)) {
    case 0:
        if ((((sp8C.z - sp80.z) * BD00.backZ) + ((sp8C.x - sp80.x) * BD00.backX)) < 0.0f) {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
            return;
        }
        sp74 = sp80;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
        break;
    case 1:
        sp74 = sp80;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
        break;
    case 2:
        sp60 = sp8C.x - BD00.hitX;
        sp64 = sp8C.y - BD00.hitY;
        sp68 = sp8C.z - BD00.hitZ;
        sp6C = sp6C / sqrtf((sp60 * sp60) + (sp64 * sp64) + (sp68 * sp68));
        sp74.x = (sp60 * sp6C) + sp80.x;
        sp74.y = (sp64 * sp6C) + sp80.y;
        sp48.y = sp74.y;
        sp74.z = (sp68 * sp6C) + sp80.z;
        sp48.x = BD00.backX + sp74.x;
        sp48.z = BD00.backZ + sp74.z;
        if ((func_801057C4(sp9C, &sp74, &sp48, &sp54) != 0) &&
            ((((sp74.z - sp54.z) * BD00.backZ) + ((sp74.x - sp54.x) * BD00.backX)) > 0.0f)) {
            sp74.x = sp54.x;
            sp74.z = sp54.z;
        }
        break;
    }
    arg1->rec[COL_WALL_BACK].norm = sp9C;
    arg1->rec[COL_WALL_BACK].tri = sp98;
    arg1->rec[COL_WALL_BACK].type = sp70;
    arg0->kirbyFootPos[0] = sp74.x - BD00.headPushX;
    arg0->kirbyFootPos[1] = sp74.y - arg0->scale[0];
    arg0->kirbyFootPos[2] = sp74.z - BD00.headPushZ;
}
#elif defined(PORT)
/* Back wall snap resolver -- func_801060C4's mirror on rec[COL_WALL_BACK]: the
 * BD00.headOffX/unk10 probe offsets, +1.0 march side, unk1C/unk20 facing,
 * mask 0xFFC7 / class 8, unk2C/unk30 bias. Returns the march result
 * (case 2: func_801057C4's result), as the N64 code did. */
s32 func_80106930(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *n = arg1->rec[COL_WALL_BACK].norm;
    struct CollisionTriangle *tri = arg1->rec[COL_WALL_BACK].tri;
    s32 type = arg1->rec[COL_WALL_BACK].type;
    Vector probe, out, fin;
    f32 dist;
    s32 r;

    probe.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[0];
    probe.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    r = func_801058B8(&D_8012BD34, &probe, arg1->rec[COL_WALL_BACK].norm, 1.0f, &out, &dist, &n, &tri, &type);
    fin = out;
    if (r == 0) {
        if (((probe.x - out.x) * BD00.backX) + ((probe.z - out.z) * BD00.backZ) < 0.0f) {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xFFC7) * 8) | (arg1->flags.hw & 7);
            return r;
        }
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B) * 8) | (arg1->flags.hw & 7);
    } else if (r == 1) {
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B) * 8) | (arg1->flags.hw & 7);
    } else if (r == 2) {
        f32 dx = probe.x - BD00.hitX;
        f32 dy = probe.y - BD00.hitY;
        f32 dz = probe.z - BD00.hitZ;
        f32 s = dist / sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        Vector far, clip;

        fin.x = (dx * s) + out.x;
        fin.y = (dy * s) + out.y;
        fin.z = (dz * s) + out.z;
        far.x = fin.x + BD00.backX;
        far.y = fin.y;
        far.z = fin.z + BD00.backZ;
        r = func_801057C4(n, &fin, &far, &clip);
        if (r != 0 &&
            ((fin.x - clip.x) * BD00.backX) + ((fin.z - clip.z) * BD00.backZ) > 0.0f) {
            fin.x = clip.x;
            fin.z = clip.z;
        }
    }
    arg1->rec[COL_WALL_BACK].norm = n;
    arg1->rec[COL_WALL_BACK].tri = tri;
    arg1->rec[COL_WALL_BACK].type = type;
    arg0->kirbyFootPos[0] = fin.x - BD00.headPushX;
    arg0->kirbyFootPos[1] = fin.y - arg0->scale[0];
    arg0->kirbyFootPos[2] = fin.z - BD00.headPushZ;
    return r;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80106930.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 243/273, frame/slot-position residue. Control flow, all three
 * func_801039E8 calls, both func_80108858 calls (-1.0f in the INTEGER $a3) and
 * the rec[COL_CEILING] plumbing are all correct; the four Vectors and the scalar set match
 * the ROM byte count (76B). What differs is placement: ROM lays locals 0x3C-0x88
 * in a 0x90 frame with a dead word at 0x48 and 0x8C; the draft needs 0x98 and
 * spills ~16B more, so every sp-relative word differs. Measured and rejected:
 * modelling m2c's sp4C/sp40 spill shuffles explicitly (frame 0xB0, worse),
 * dropping them entirely, and block-scoping temp_a2 (no change). This is the
 * decidable-frame class of LEVERS 9/12/13 but no declaration order tried reaches
 * base 0x3C -- pads do not help because IDO eliminates unreferenced locals. */
s32 func_80106C5C(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector sp80;
    Vector sp74;
    Vector sp68;
    Vector sp5C;
    struct Normal *sp58;
    struct CollisionTriangle *sp54;
    s32 sp50;
    s32 sp4C;
    f32 sp44;
    s32 sp40;
    f32 sp3C;
    s32 var_v0;

    sp68.x = 0.0f;
    sp68.z = 0.0f;
    sp68.y = 1.0f;
    sp80.x = arg0->kirbyHeadPos[0];
    sp80.y = arg0->kirbyHeight[0];
    sp80.z = arg0->kirbyHeadPos[2];
    sp74.x = arg0->kirbyFootPos[0];
    sp74.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    sp4C = 0;
    sp74.z = arg0->kirbyFootPos[2];
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &D_8012BD34, &arg1->rec[COL_CEILING].norm, &arg1->rec[COL_CEILING].tri,
                      &arg1->rec[COL_CEILING].type) != 0) {
        sp4C = COLF_CEIL;
        sp44 = BD00.hitY;
    }
    sp80.x = arg0->kirbyGroundPath[0];
    sp80.z = arg0->kirbyGroundPath[1];
    sp74.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    sp74.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &sp5C, &sp58, &sp54, &sp50) != 0) {
        sp40 = 0;
        if (sp4C == 0) {
            sp40 = 1;
            sp3C = -((sp58->x * (sp5C.x - BD00.footOffX)) + (sp58->z * (sp5C.z - BD00.footOffZ)) +
                     sp58->originOffset) / sp58->y;
        } else {
            struct Normal *temp_a2 = arg1->rec[COL_CEILING].norm;
            if (sp58 != temp_a2) {
                sp3C = -((sp58->x * (sp5C.x - BD00.footOffX)) + (sp58->z * (sp5C.z - BD00.footOffZ)) +
                         sp58->originOffset) / sp58->y;
                if (sp3C < sp44) {
                                    if (func_80108858(&D_8012BD34, &sp5C, temp_a2, -1.0f) != 0) {
                        sp40 = 1;
                    }
                }
            }
        }
        if (sp40 != 0) {
            D_8012BD34 = sp5C;
            sp4C = COLF_CEIL_FOOT;
            arg1->rec[COL_CEILING].norm = sp58;
            arg1->rec[COL_CEILING].tri = sp54;
            arg1->rec[COL_CEILING].type = sp50;
            sp44 = sp3C;
        }
    }
    sp80.x = arg0->kirbyHeadPath[0];
    sp80.z = arg0->kirbyHeadPath[1];
    sp74.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    sp74.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    if (func_801039E8(&sp80, &sp74, &sp68, 0, &sp5C, &sp58, &sp54, &sp50) != 0) {
        sp40 = 0;
        if (sp4C == 0) {
            sp40 = 1;
        } else {
            struct Normal *temp_a2 = arg1->rec[COL_CEILING].norm;
            if ((sp58 != temp_a2) &&
                ((-((sp58->x * (sp5C.x - BD00.headOffX)) + (sp58->z * (sp5C.z - BD00.headOffZ)) +
                    sp58->originOffset) / sp58->y) < sp44)) {
                            if (func_80108858(&D_8012BD34, &sp5C, temp_a2, -1.0f) != 0) {
                    sp40 = 1;
                }
            }
        }
        if (sp40 != 0) {
            D_8012BD34 = sp5C;
            sp4C = COLF_CEIL_HEAD;
            arg1->rec[COL_CEILING].norm = sp58;
            arg1->rec[COL_CEILING].tri = sp54;
            arg1->rec[COL_CEILING].type = sp50;
        }
    }
    var_v0 = 0;
    if (sp4C != 0) {
        var_v0 = 1;
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) | sp4C;
    }
    return var_v0;
}
#elif defined(PORT)
s32 func_80108858(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3);

/* func_801039E8 with pointer-true outs (the compiled original forwards s32
 * args). */
static s32 pc_probe_39e8(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.ignoreTri = NULL;
    newColState.someNormal = norm;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    return func_80103528(tOut, hitOut, nOut, triOut, idxOut);
}

/* Floor probe trio (draft above, completed): an upward cast under the head
 * (class 0x40), then two lateral casts along the BD00 basis at the ground
 * and head path points (0x100 / 0x80), each accepted over the incumbent
 * only when its plane sits lower at the cast point and func_80108858
 * agrees; the winner lands in rec[COL_CEILING] / D_8012BD34 and the flags word. */
s32 func_80106C5C(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector start, end, hit;
    struct Normal dir;
    struct Normal *n;
    struct CollisionTriangle *tri;
    u32 type;
    f32 bestY = 0.0f;
    f32 planeY = 0.0f;
    s32 cls = 0;

    dir.x = 0.0f;
    dir.y = 1.0f;
    dir.z = 0.0f;
    start.x = arg0->kirbyHeadPos[0];
    start.y = arg0->kirbyHeight[0];
    start.z = arg0->kirbyHeadPos[2];
    end.x = arg0->kirbyFootPos[0];
    end.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    end.z = arg0->kirbyFootPos[2];
    if (pc_probe_39e8(&start, &end, &dir, NULL, &D_8012BD34, &arg1->rec[COL_CEILING].norm,
                      &arg1->rec[COL_CEILING].tri, (u32 *) &arg1->rec[COL_CEILING].type) != 0) {
        cls = COLF_CEIL;
        bestY = BD00.hitY;
    }
    start.x = arg0->kirbyGroundPath[0];
    start.z = arg0->kirbyGroundPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    end.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (pc_probe_39e8(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_CEILING].norm) {
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
            if (planeY < bestY) {
                accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_CEILING].norm, -1.0f) != 0;
            }
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_CEIL_FOOT;
            arg1->rec[COL_CEILING].norm = n;
            arg1->rec[COL_CEILING].tri = tri;
            arg1->rec[COL_CEILING].type = type;
            bestY = planeY;
        }
    }
    start.x = arg0->kirbyHeadPath[0];
    start.z = arg0->kirbyHeadPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    end.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    if (pc_probe_39e8(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
        } else if (n != arg1->rec[COL_CEILING].norm &&
                   -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y < bestY) {
            accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_CEILING].norm, -1.0f) != 0;
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_CEIL_HEAD;
            arg1->rec[COL_CEILING].norm = n;
            arg1->rec[COL_CEILING].tri = tri;
            arg1->rec[COL_CEILING].type = type;
        }
    }
    if (cls != 0) {
        arg1->flags.hw = (((arg1->flags.w >> 0x13) | cls) * 8) | (arg1->flags.hw & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80106C5C.s")
#endif

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_80103F58's return
 * (beqz $v0 right after the jal) but func_80103F58 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_80103F58 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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

    if (!((arg1->unk0 >> 0x13) & COLF_CEIL_ANY)) {
        sp58 = 0.0f;
        sp60 = 0.0f;
        sp5C = 1.0f;
        sp70 = arg0->unk4 + D_8012BD00.footOffX;
        sp74 = arg0->unk8 + arg0->unk18;
        sp64 = sp70;
        sp78 = arg0->unkC + D_8012BD00.footOffZ;
        sp3C = 0;
        sp68 = arg0->unk8 + arg0->unk14;
        sp6C = sp78;
        var_v1 = sp3C;
        if (func_80103F58(&sp70, &sp64, &sp58, 0, &D_8012BD34, &sp48, arg1 + 0x14, arg1 + 0x10) != 0) {
            var_v1 = COLF_CEIL_FOOT;
            arg1->unk18 = sp48;
            sp38 = -((sp48->unk0 * arg0->unk28) + (sp48->unk8 * arg0->unk30) + sp48->unkC) / sp48->unk4;
        }
        sp70 = arg0->unk4 + D_8012BD00.headOffX;
        sp3C = var_v1;
        sp78 = arg0->unkC + D_8012BD00.headOffZ;
        sp64 = sp70;
        sp6C = sp78;
        var_v1_2 = sp3C;
        if ((func_80103F58(&sp70, &sp64, &sp58, 0, &sp4C, &sp48, &sp44, &sp40) != 0) && ((var_v1_2 == 0) || ((-((sp48->unk0 * arg0->unk28) + (sp48->unk8 * arg0->unk30) + sp48->unkC) / sp48->unk4) < sp38))) {
            D_8012BD34.unk0 = sp4C.unk0;
            D_8012BD34.unk4 = sp4C.unk4;
            var_v1_2 = COLF_CEIL_HEAD;
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
#elif defined(PORT)
static s32 pc_probe_f58(Vector *a, Vector *b, struct Normal *dir2,
                        f32 *tOut, Vector *hitOut, struct Normal **nOut,
                        struct CollisionTriangle **triOut, s32 *typeOut);

/* Lateral floor-plane probe (draft above, completed): when no 0x1C0-class
 * floor is recorded yet, two short vertical casts at the BD00 lateral
 * offsets (classes 0x100 / 0x80); the second replaces the first only when
 * its plane evaluates lower under the head. */
s32 func_80107074(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector start, end, hit;
    struct Normal dir;
    struct Normal *n;
    struct CollisionTriangle *tri;
    s32 type;
    f32 bestY = 0.0f;
    s32 cls = 0;

    if ((arg1->flags.w >> 0x13) & COLF_CEIL_ANY) {
        return 0;
    }
    dir.x = 0.0f;
    dir.y = 1.0f;
    dir.z = 0.0f;
    start.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    start.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    start.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    end.x = start.x;
    end.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    end.z = start.z;
    if (pc_probe_f58(&start, &end, &dir, NULL, &D_8012BD34, &n,
                     &arg1->rec[COL_CEILING].tri, &arg1->rec[COL_CEILING].type) != 0) {
        cls = COLF_CEIL_FOOT;
        arg1->rec[COL_CEILING].norm = n;
        bestY = -((n->x * arg0->kirbyHeadPos[0]) + (n->z * arg0->kirbyHeadPos[2]) + n->originOffset) / n->y;
    }
    start.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    start.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    end.x = start.x;
    end.z = start.z;
    if (pc_probe_f58(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0 &&
        (cls == 0 ||
         -((n->x * arg0->kirbyHeadPos[0]) + (n->z * arg0->kirbyHeadPos[2]) + n->originOffset) / n->y < bestY)) {
        D_8012BD34 = hit;
        cls = COLF_CEIL_HEAD;
        arg1->rec[COL_CEILING].norm = n;
        arg1->rec[COL_CEILING].tri = tri;
        arg1->rec[COL_CEILING].type = type;
    }
    if (cls != 0) {
        arg1->flags.hw = (((arg1->flags.w >> 0x13) | cls) * 8) | (arg1->flags.hw & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80107074.s")
#endif

s32 func_801072E0(struct PositionState *arg0, struct CollisionResult *arg1) {
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
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[COL_CEILING].norm, &arg1->rec[COL_CEILING].tri, &arg1->rec[COL_CEILING].type) != 0) {
        arg1->flags.f.hits |= COLF_CEIL;
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* FACTORY: 258/264, frame-position residue. The decode is complete and recorded:
 * sp80 is a COPY of the spA4 start vector whose .y alone is lowered to the plane
 * height when the 0x40 flag is clear; the switch on func_80108078 has cases 0/1/2
 * sharing one tail that writes rec[COL_CEILING] back and drops the feet by scale[1]+0.1f;
 * case 2 re-projects along the BD00.hitX motion stamp and picks the 0x80/0x100
 * class by which side of the facing basis the slide lands on. -1.0f goes in the
 * integer $a3. Residue is placement: ROM saves s0/s1/ra at 0x2C-0x34 with locals
 * 0x38-0xB4 in a 0xB8 frame; the draft needs 0xC8, keeps only one callee-saved
 * register and spills into 0x24/0x28. Measured: collapsing the 12 m2c f32 temps
 * onto the real stack locals took it 264 -> 258 and the frame 0xF0 -> 0xC8. */
void func_801073C4(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *spB4;
    struct CollisionTriangle *spB0;
    Vector spA4;
    Vector sp98;
    Vector sp8C;
    Vector sp80;
    s32 sp7C;
    f32 sp78;
    Vector sp68;
    f32 sp3C;
    f32 sp38;
    struct Normal *temp_t4;
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f12;
    f32 var_f12;
    f32 var_f14;
    s32 var_v1;

    temp_t4 = arg1->rec[COL_CEILING].norm;
    spB4 = temp_t4;
    spB0 = arg1->rec[COL_CEILING].tri;
    sp7C = arg1->rec[COL_CEILING].type;
    spA4.x = arg0->kirbyFootPos[0];
    spA4.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    spA4.z = arg0->kirbyFootPos[2];
    sp80 = spA4;
    if (!((arg1->flags.w >> 0x13) & 0x40)) {
        temp_f0 = -((temp_t4->x * spA4.x) + (temp_t4->z * spA4.z) + temp_t4->originOffset) / temp_t4->y;
        if (temp_f0 < spA4.y) {
            sp80.y = temp_f0;
        }
    }
    switch (func_80108078(&D_8012BD34, &sp80, arg1->rec[COL_CEILING].norm, -1.0f, &sp98, &sp78, &spB4, &spB0, &sp7C)) {
    case 0:
        if (spA4.y < sp98.y) {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFE3F;
            return;
        }
        sp8C = sp98;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFE3F) | COLF_CEIL;
        break;
    case 1:
        sp8C = sp98;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFE3F) | COLF_CEIL;
        break;
    case 2:
        sp68.x = spA4.x - BD00.hitX;
        sp68.y = spA4.y - BD00.hitY;
        sp68.z = spA4.z - BD00.hitZ;
        sp78 = sp78 / sqrtf((sp68.x * sp68.x) + (sp68.y * sp68.y) + (sp68.z * sp68.z));
        sp38 = sp98.x;
        sp8C.x = (sp68.x * sp78) + sp98.x;
        sp8C.y = (sp68.y * sp78) + sp98.y;
        sp8C.z = (sp68.z * sp78) + sp98.z;
        sp3C = sp8C.y;
        temp_f12 = -((spB4->x * sp8C.x) + (spB4->z * sp8C.z) + spB4->originOffset) / spB4->y;
        if (temp_f12 <= sp3C) {
            temp_f2 = sp8C.z - sp98.z;
            sp8C.y = temp_f12;
            var_v1 = COLF_CEIL_FOOT;
            temp_f0 = sp8C.x - sp38;
            if (((temp_f0 * BD00.fwdX) + (temp_f2 * BD00.fwdZ)) >= 0.0f) {
                var_f12 = BD00.headPushX;
                var_f14 = BD00.headPushZ;
                var_v1 = COLF_CEIL_HEAD;
            } else {
                var_f12 = BD00.footPushX;
                var_f14 = BD00.footPushZ;
            }
            if (((temp_f0 * temp_f0) + (temp_f2 * temp_f2)) <=
                ((var_f12 * var_f12) + (var_f14 * var_f14))) {
                arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFE3F) | var_v1;
            }
            break;
        }
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFE3F;
        return;
    }
    arg1->rec[COL_CEILING].norm = spB4;
    arg1->rec[COL_CEILING].tri = spB0;
    arg1->rec[COL_CEILING].type = sp7C;
    arg0->kirbyFootPos[0] = sp8C.x;
    arg0->kirbyFootPos[1] = (sp8C.y - arg0->scale[1]) - 0.1f;
    arg0->kirbyFootPos[2] = sp8C.z;
}
#elif defined(PORT)
s32 func_80108078(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3, Vector *arg4,
                  f32 *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, s32 *arg8);

/* Floor snap resolver (draft above, completed): re-anchor the recorded
 * floor (rec[COL_CEILING]) through func_80108078's downward walk from D_8012BD34.
 * r=0/1 keep or adopt the walked point (class 0x40); r=2 extrapolates
 * along the motion since the BD00.hitX stamp, re-plants on the plane and
 * classes the step 0x100/0x80 by facing when within the lateral bias;
 * otherwise the floor classes are cleared and Kirby's feet are left alone. */
void func_801073C4(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *n = arg1->rec[COL_CEILING].norm;
    struct CollisionTriangle *tri = arg1->rec[COL_CEILING].tri;
    s32 type = arg1->rec[COL_CEILING].type;
    Vector probe, out, fin;
    f32 dist;
    s32 r;

    probe.x = arg0->kirbyFootPos[0];
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    probe.z = arg0->kirbyFootPos[2];
    if (!((arg1->flags.w >> 0x13) & 0x40)) {
        f32 py = -((n->x * probe.x) + (n->z * probe.z) + n->originOffset) / n->y;

        if (py < probe.y) {
            probe.y = py;
        }
    }
    r = func_80108078(&D_8012BD34, &probe, arg1->rec[COL_CEILING].norm, -1.0f, &out, &dist, &n, &tri, &type);
    fin = out;
    if (r == 0) {
        if (arg0->kirbyFootPos[1] + arg0->scale[1] < out.y) {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xFE3F) * 8) | (arg1->flags.hw & 7);
            return;
        }
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFE3F) | COLF_CEIL) * 8) | (arg1->flags.hw & 7);
    } else if (r == 1) {
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFE3F) | COLF_CEIL) * 8) | (arg1->flags.hw & 7);
    } else if (r == 2) {
        f32 dx = arg0->kirbyFootPos[0] - BD00.hitX;
        f32 dy = (arg0->kirbyFootPos[1] + arg0->scale[1]) - BD00.hitY;
        f32 dz = arg0->kirbyFootPos[2] - BD00.hitZ;
        f32 s = dist / sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        f32 py;

        fin.x = (dx * s) + out.x;
        fin.y = (dy * s) + out.y;
        fin.z = (dz * s) + out.z;
        py = -((n->x * fin.x) + (n->z * fin.z) + n->originOffset) / n->y;
        if (py <= fin.y) {
            f32 sx = fin.x - out.x;
            f32 sz = fin.z - out.z;
            f32 bx, bz;
            s32 cls = COLF_CEIL_FOOT;

            fin.y = py;
            if ((sx * BD00.fwdX) + (sz * BD00.fwdZ) >= 0.0f) {
                bx = BD00.headPushX;
                bz = BD00.headPushZ;
                cls = COLF_CEIL_HEAD;
            } else {
                bx = BD00.footPushX;
                bz = BD00.footPushZ;
            }
            if ((sx * sx) + (sz * sz) <= (bx * bx) + (bz * bz)) {
                arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xFE3F) | cls) * 8) | (arg1->flags.hw & 7);
            }
        } else {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xFE3F) * 8) | (arg1->flags.hw & 7);
            return;
        }
    }
    arg1->rec[COL_CEILING].norm = n;
    arg1->rec[COL_CEILING].tri = tri;
    arg1->rec[COL_CEILING].type = type;
    arg0->kirbyFootPos[0] = fin.x;
    arg0->kirbyFootPos[1] = (fin.y - arg0->scale[1]) - 0.1f;
    arg0->kirbyFootPos[2] = fin.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801073C4.s")
#endif

void func_801077D4(struct PositionState *arg0, struct CollisionResult *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    struct Normal *temp_v1;

    temp_v0 = arg1->flags.w >> 0x13;
    if (temp_v0 & 0x40) {
        arg0->kirbyFootPos[0] = BD00.hitX;
        arg0->kirbyFootPos[1] = (BD00.hitY - arg0->scale[1]) - 0.1f;
        arg0->kirbyFootPos[2] = BD00.hitZ;
        return;
    }
    temp_v1 = arg1->rec[COL_CEILING].norm;
    temp_f0 = (-((temp_v1->x * arg0->kirbyFootPos[0]) + (temp_v1->z * arg0->kirbyFootPos[2]) + temp_v1->originOffset) / temp_v1->y) - arg0->scale[1];
    if (temp_f0 < arg0->kirbyFootPos[1]) {
        arg0->kirbyFootPos[1] = temp_f0 - 0.1f;
        return;
    }
    arg1->flags.f.hits = temp_v0 & 0xFE3F;
}

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_80103F58's return
 * (beqz $v0 right after the jal) but func_80103F58 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_80103F58 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
        var_t1 = COLF_FLOOR;
        sp58 = 1;
        sp54 = D_8012BD00.hitY;
    } else {
        sp58 = 0;
    }
    sp90 = arg0->unk34;
    sp98 = arg0->unk38;
    sp84 = arg0->unk4 + D_8012BD00.footOffX;
    sp5C = var_t1;
    sp8C = arg0->unkC + D_8012BD00.footOffZ;
    var_t1_2 = sp5C;
    if (func_801039E8(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
        var_t0 = 0;
        if (var_t1_2 == 0) {
            var_t0 = 1;
            sp4C = -((sp68->unk0 * (sp6C - D_8012BD00.footOffX)) + (sp68->unk8 * (sp74 - D_8012BD00.footOffZ)) + sp68->unkC) / sp68->unk4;
        } else {
            temp_a2 = arg1->unkC;
            if (sp68 != temp_a2) {
                temp_f10 = -((sp68->unk0 * (sp6C - D_8012BD00.footOffX)) + (sp68->unk8 * (sp74 - D_8012BD00.footOffZ)) + sp68->unkC) / sp68->unk4;
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
            var_t1_2 = COLF_FLOOR_FOOT;
            D_8012BD34.unk8 = sp6C.unk8;
            arg1->unkC = sp68;
            arg1->unk8 = sp64;
            arg1->unk4 = sp60;
            sp54 = sp4C;
        }
    }
    sp90 = arg0->unk3C;
    sp98 = arg0->unk40;
    sp84 = arg0->unk4 + D_8012BD00.headOffX;
    sp5C = var_t1_2;
    sp8C = arg0->unkC + D_8012BD00.headOffZ;
    var_t1_3 = sp5C;
    if (func_801039E8(&sp90, &sp84, &sp78, 0, &sp6C, &sp68, &sp64, &sp60) != 0) {
        var_t0_2 = 0;
        if (var_t1_3 == 0) {
            var_t0_2 = 1;
            sp44 = -((sp68->unk0 * (sp6C - D_8012BD00.headOffX)) + (sp68->unk8 * (sp74 - D_8012BD00.headOffZ)) + sp68->unkC) / sp68->unk4;
        } else {
            temp_a2_2 = arg1->unkC;
            if (sp68 != temp_a2_2) {
                temp_f18 = -((sp68->unk0 * (sp6C - D_8012BD00.headOffX)) + (sp68->unk8 * (sp74 - D_8012BD00.headOffZ)) + sp68->unkC) / sp68->unk4;
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
            var_t1_3 = COLF_FLOOR_HEAD;
            D_8012BD34.unk8 = sp6C.unk8;
            arg1->unkC = sp68;
            arg1->unk8 = sp64;
            arg1->unk4 = sp60;
            sp54 = sp44;
        }
    }
    if (sp58 == 0) {
        temp_v0 = arg0 + 0x10;
        sp90 = arg0->unk4 + D_8012BD00.footOffX;
        sp94 = arg0->unk8 + temp_v0->unk4;
        sp84 = sp90;
        sp98 = arg0->unkC + D_8012BD00.footOffZ;
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
                var_t1_4 = COLF_FLOOR_FOOT;
                D_8012BD34.unk8 = sp6C.unk8;
                arg1->unkC = sp68;
                arg1->unk8 = sp64;
                arg1->unk4 = sp60;
            }
        }
        sp90 = arg0->unk4 + D_8012BD00.headOffX;
        sp5C = var_t1_4;
        sp98 = arg0->unkC + D_8012BD00.headOffZ;
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
                var_t1_3 = COLF_FLOOR_HEAD;
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
#elif defined(PORT)
/* Ceiling/head probe pass (draft above, via m2c): four upward probes (center,
 * two lateral offsets from the BD00 direction basis, and when the center
 * missed, two short foot-height probes), keeping the nearest ceiling in
 * rec[COL_FLOOR] and D_8012BD34, then folding the hit class into the flags word. */
/* func_80103F58's C is void: the N64 return was its tail call's $v0. This
 * wrapper is its body with the func_80103B58 result kept. */
static s32 pc_probe_f58(Vector *a, Vector *b, struct Normal *dir2,
                        f32 *tOut, Vector *hitOut, struct Normal **nOut,
                        struct CollisionTriangle **triOut, s32 *typeOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101D50;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = dir2;
    return func_80103B58(tOut, hitOut, nOut, triOut, (u32 *) typeOut);
}

s32 func_801078A0(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector head, foot, dir, hit;
    struct Normal *n;
    struct CollisionTriangle *tri;
    s32 type;
    s32 cls = 0;
    s32 centerHit;
    f32 best = 0.0f;
    s32 got;

    dir.x = 0.0f;
    dir.y = -1.0f;
    dir.z = 0.0f;
    head.x = arg0->kirbyHeadPos[0];
    head.y = arg0->kirbyHeight[1];
    head.z = arg0->kirbyHeadPos[2];
    foot.x = arg0->kirbyFootPos[0];
    foot.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    foot.z = arg0->kirbyFootPos[2];
    if (pc_probe_39e8(&head, &foot, &dir, NULL, &D_8012BD34, &arg1->rec[COL_FLOOR].norm,
                      &arg1->rec[COL_FLOOR].tri, (u32 *) &arg1->rec[COL_FLOOR].type) != 0) {
        cls = COLF_FLOOR;
        centerHit = 1;
        best = BD00.hitY;
    } else {
        centerHit = 0;
    }
    head.x = arg0->kirbyGroundPath[0];
    head.z = arg0->kirbyGroundPath[1];
    foot.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    foot.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (pc_probe_39e8(&head, &foot, &dir, NULL, &hit, &n, &tri, (u32 *) &type) != 0) {
        got = 0;
        if (cls == 0) {
            got = 1;
            best = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_FLOOR].norm) {
            f32 t = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;

            if (best < t) {
                best = t;
                got = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
            }
        }
        if (got) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_FOOT;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
        }
    }
    head.x = arg0->kirbyHeadPath[0];
    head.z = arg0->kirbyHeadPath[1];
    foot.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    foot.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    if (pc_probe_39e8(&head, &foot, &dir, NULL, &hit, &n, &tri, (u32 *) &type) != 0) {
        got = 0;
        if (cls == 0) {
            got = 1;
            best = -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_FLOOR].norm) {
            f32 t = -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y;

            if (best < t) {
                best = t;
                got = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
            }
        }
        if (got) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_HEAD;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
        }
    }
    if (centerHit == 0) {
        head.x = foot.x = arg0->kirbyFootPos[0] + BD00.footOffX;
        head.y = arg0->kirbyFootPos[1] + arg0->scale[1];
        foot.y = arg0->kirbyFootPos[1] + arg0->scale[2];
        head.z = foot.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
        if (pc_probe_f58(&head, &foot, &dir, NULL, &hit, &n, &tri, &type) != 0) {
            got = cls == 0
                || (n != arg1->rec[COL_FLOOR].norm
                    && best < -((n->x * arg0->kirbyHeadPos[0]) + (n->z * arg0->kirbyHeadPos[2]) + n->originOffset) / n->y);
            if (got) {
                D_8012BD34 = hit;
                cls = COLF_FLOOR_FOOT;
                arg1->rec[COL_FLOOR].norm = n;
                arg1->rec[COL_FLOOR].tri = tri;
                arg1->rec[COL_FLOOR].type = type;
            }
        }
        head.x = foot.x = arg0->kirbyFootPos[0] + BD00.headOffX;
        head.z = foot.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
        if (pc_probe_f58(&head, &foot, &dir, NULL, &hit, &n, &tri, &type) != 0) {
            got = cls == 0
                || (n != arg1->rec[COL_FLOOR].norm
                    && best < -((n->x * arg0->kirbyHeadPos[0]) + (n->z * arg0->kirbyHeadPos[2]) + n->originOffset) / n->y);
            if (got) {
                D_8012BD34 = hit;
                cls = COLF_FLOOR_HEAD;
                arg1->rec[COL_FLOOR].norm = n;
                arg1->rec[COL_FLOOR].tri = tri;
                arg1->rec[COL_FLOOR].type = type;
            }
        }
    }
    if (cls != 0) {
        arg1->flags.hw = ((((u32) arg1->flags.w >> 0x13) | cls) * 8) | (arg1->flags.hw & 7);
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_801078A0.s")
#endif

s32 func_80107F94(struct PositionState *arg0, struct CollisionResult *arg1) {
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
    if (func_801039E8(&sp4C, &sp40, &sp34, &sp58, &D_8012BD34, &arg1->rec[COL_FLOOR].norm, &arg1->rec[COL_FLOOR].tri, &arg1->rec[COL_FLOOR].type) != 0) {
        arg1->flags.f.hits |= COLF_FLOOR;
        return 1;
    }
    return 0;
}

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_80104520's return
 * (beqz $v0 right after the jal) but func_80104520 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_80104520 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
#elif defined(PORT)
static s32 pc_probe_4520(Vector *a, Vector *b, struct Normal *excl34, struct Normal *excl38,
                         f32 *tOut, Vector *hitOut, struct Normal **nOut,
                         struct CollisionTriangle **triOut, u32 *idxOut);
static s32 pc_probe_423c(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut);
static s32 pc_probe_ea0(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                        struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut);

/* Floor-walk resolver (draft above, completed; func_80108858's sibling with
 * position/triangle outs). Marches from arg0 toward arg1 along the arg2
 * plane for the segment's length. Returns 0 with *arg4 = the clamped end
 * point when the path is clear (or the obstacle lies beyond it); 1 when a
 * steep hit can be stepped across (arg4 = the hit, *arg5 = distance left);
 * 2 at a ledge with no continuing surface. When the march advanced onto a
 * new plane, *arg6/*arg7/*arg8 report that floor's normal/triangle/type. */
s32 func_80108078(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3, Vector *arg4,
                  f32 *arg5, struct Normal **arg6, struct CollisionTriangle **arg7, s32 *arg8) {
    Vector cur, target, hitP;
    struct Normal *s0 = arg2;
    struct Normal *s1 = arg2;
    struct Normal *s3 = arg2;
    struct Normal *hitN;
    struct CollisionTriangle *hitT;
    struct CollisionTriangle *lastT = NULL;
    u32 hitTy = 0;
    s32 lastTy = 0;
    s32 advanced = 0;
    s32 ret = 0;
    f32 dx = arg1->x - arg0->x;
    f32 dy = arg1->y - arg0->y;
    f32 dz = arg1->z - arg0->z;
    f32 remaining = sqrtf((dx * dx) + (dy * dy) + (dz * dz));

    if (remaining == 0.0f) {
        *arg4 = *arg0;
        return 0;
    }
    cur = *arg0;
    target = *arg1;
    for (;;) {
        f32 d;

        target.y = -((s0->x * target.x) + (s0->z * target.z) + s0->originOffset) / s0->y;
        if (pc_probe_4520(&cur, &target, s1, s3, NULL, &hitP, &hitN, &hitT, &hitTy) == 0) {
            f32 ddx = target.x - cur.x;
            f32 ddy = target.y - cur.y;
            f32 ddz = target.z - cur.z;
            f32 dd = sqrtf((ddx * ddx) + (ddy * ddy) + (ddz * ddz));

            if (remaining <= dd) {
                f32 sc = remaining / dd;

                arg4->x = (ddx * sc) + cur.x;
                arg4->y = (ddy * sc) + cur.y;
                arg4->z = (ddz * sc) + cur.z;
            } else {
                *arg4 = target;
            }
            break;
        }
        dx = hitP.x - cur.x;
        dy = hitP.y - cur.y;
        dz = hitP.z - cur.z;
        d = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        if (remaining <= d) {
            f32 sc = remaining / d;

            arg4->x = (dx * sc) + cur.x;
            arg4->y = (dy * sc) + cur.y;
            arg4->z = (dz * sc) + cur.z;
            break;
        }
        if (((hitN->y < 0.0f) ? -hitN->y : hitN->y) <= 0.5f) {
            Vector probeA, probeB, top, bot;
            struct Normal *n2;
            f32 ddx = target.x - cur.x;
            f32 ddy = target.y - cur.y;
            f32 ddz = target.z - cur.z;
            f32 s = 10.0f / sqrtf((ddx * ddx) + (ddy * ddy) + (ddz * ddz));
            f32 s2, lift;
            s32 found = 0;

            probeA = cur;
            probeA.y += arg3;
            probeB.x = (ddx * s) + hitP.x;
            probeB.y = (ddy * s) + hitP.y + arg3;
            probeB.z = (ddz * s) + hitP.z;
            if (pc_probe_423c(&probeA, &probeB, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    *arg4 = hitP;
                    *arg5 = remaining - d;
                    ret = 1;
                    break;
                }
            }
            s2 = 1.0f / sqrtf((ddx * ddx) + (ddz * ddz));
            lift = (arg3 > 0.0f) ? 10.0f : -10.0f;
            top.x = (ddx * s2) + hitP.x;
            top.y = hitP.y + lift;
            top.z = (ddz * s2) + hitP.z;
            bot.x = top.x;
            bot.y = hitP.y - lift;
            bot.z = top.z;
            if (pc_probe_ea0(&top, &bot, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    found = 1;
                }
            }
            if (found == 0) {
                *arg4 = hitP;
                *arg5 = remaining - d;
                ret = 2;
                break;
            }
            if (s0 != s1 &&
                (s1->x != s0->x || s1->y != s0->y || s1->z != s0->z ||
                 s1->originOffset != s0->originOffset) &&
                (-s1->originOffset != s0->originOffset ||
                 (s0->x * s1->x) + (s0->y * s1->y) + (s0->z * s1->z) != -1.0f)) {
                s3 = s1;
            }
            s1 = hitN;
        } else {
            s3 = s0;
            cur = hitP;
            remaining -= d;
            s0 = hitN;
            s1 = hitN;
            advanced = 1;
            lastT = hitT;
            lastTy = (s32) hitTy;
        }
    }
    if (advanced != 0) {
        *arg6 = s0;
        *arg7 = lastT;
        *arg8 = lastTy;
    }
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108078.s")
#endif

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_80104520's return
 * (beqz $v0 right after the jal) but func_80104520 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_80104520 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
#elif defined(PORT)
/* Pointer-true setup wrappers (pc_probe_f58 precedent). */
static s32 pc_probe_4520(Vector *a, Vector *b, struct Normal *excl34, struct Normal *excl38,
                         f32 *tOut, Vector *hitOut, struct Normal **nOut,
                         struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_80101DA8;
    newColState.ignoreTri = NULL;
    newColState.passThruPlane = excl34;
    newColState.ignorePlane = excl38;
    return func_80103B58(tOut, hitOut, nOut, triOut, idxOut);
}

static s32 pc_probe_423c(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = norm;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    return func_80103B58(tOut, hitOut, nOut, triOut, idxOut);
}

static s32 pc_probe_ea0(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                        struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = norm;
    newColState.acceptPlane = func_80102364;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    return func_80103B58(tOut, hitOut, nOut, triOut, idxOut);
}

/* Floor-continuity march (draft above, completed): walk from arg0 toward
 * arg1, casting against everything but the current/previous floor planes.
 * A steep hit (|ny| <= 0.5) tries to step across it (offset probe by arg3,
 * accept when the far plane passes within 1.0 at the hit -> return 1), then
 * probes vertically for a continuing surface; a drop/ledge with none found
 * returns 2; a walkable hit advances the march onto that plane. A clear
 * corridor to the target -- or the obstacle beyond the remaining distance
 * -- returns 0. Nonzero means "the candidate floor connects". */
s32 func_80108858(Vector *arg0, Vector *arg1, struct Normal *arg2, f32 arg3) {
    Vector cur, target, hitP;
    struct Normal *s0 = arg2;   /* plane the march is standing on */
    struct Normal *s1 = arg2;   /* exclusion A (unk34) */
    struct Normal *s3 = arg2;   /* exclusion B (unk38) */
    struct Normal *hitN;
    f32 dx = arg1->x - arg0->x;
    f32 dy = arg1->y - arg0->y;
    f32 dz = arg1->z - arg0->z;
    f32 remaining = sqrtf((dx * dx) + (dy * dy) + (dz * dz));

    if (remaining == 0.0f) {
        return 0;
    }
    cur = *arg0;
    target = *arg1;
    for (;;) {
        f32 d;

        target.y = -((s0->x * target.x) + (s0->z * target.z) + s0->originOffset) / s0->y;
        if (pc_probe_4520(&cur, &target, s1, s3, NULL, &hitP, &hitN, NULL, NULL) == 0) {
            return 0;
        }
        dx = hitP.x - cur.x;
        dy = hitP.y - cur.y;
        dz = hitP.z - cur.z;
        d = sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        if (remaining <= d) {
            return 0;
        }
        if (((hitN->y < 0.0f) ? -hitN->y : hitN->y) <= 0.5f) {
            Vector probeA, probeB, top, bot;
            struct Normal *n2;
            f32 ddx = target.x - cur.x;
            f32 ddy = target.y - cur.y;
            f32 ddz = target.z - cur.z;
            f32 s = 10.0f / sqrtf((ddx * ddx) + (ddy * ddy) + (ddz * ddz));
            f32 s2, lift;
            s32 found = 0;

            probeA = cur;
            probeA.y += arg3;
            probeB.x = (ddx * s) + hitP.x;
            probeB.y = (ddy * s) + hitP.y + arg3;
            probeB.z = (ddz * s) + hitP.z;
            if (pc_probe_423c(&probeA, &probeB, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    return 1;
                }
            }
            s2 = 1.0f / sqrtf((ddx * ddx) + (ddz * ddz));
            lift = (arg3 > 0.0f) ? 10.0f : -10.0f;
            top.x = (ddx * s2) + hitP.x;
            top.y = hitP.y + lift;
            top.z = (ddz * s2) + hitP.z;
            bot.x = top.x;
            bot.y = hitP.y - lift;
            bot.z = top.z;
            if (pc_probe_ea0(&top, &bot, NULL, NULL, NULL, &n2, NULL, NULL) != 0) {
                f32 e = (n2->x * hitP.x) + (n2->y * hitP.y) + (n2->z * hitP.z) + n2->originOffset;

                if (((e < 0.0f) ? -e : e) < 1.0f) {
                    found = 1;
                }
            }
            if (found == 0) {
                return 2;
            }
            if (s0 != s1 &&
                (s1->x != s0->x || s1->y != s0->y || s1->z != s0->z ||
                 s1->originOffset != s0->originOffset) &&
                (-s1->originOffset != s0->originOffset ||
                 (s0->x * s1->x) + (s0->y * s1->y) + (s0->z * s1->z) != -1.0f)) {
                s3 = s1;
            }
            s1 = hitN;
        } else {
            s3 = s0;
            cur = hitP;
            remaining -= d;
            s0 = hitN;
            s1 = hitN;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108858.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 272/272, same frame class as func_801073C4 -- these two are the
 * ceiling/floor pair of one routine (rec[COL_FLOOR] vs rec[COL_CEILING], scale[2] vs scale[1],
 * +0.1f vs -0.1f, 1.0f vs -1.0f in the integer $a3, mask 0xF1FF|0x200|0x400|0x800
 * vs 0xFE3F|0x40|0x80|0x100; this one also returns sp78 and zeroes it when the
 * slide overshoots the step limit). The decode is complete. The blocker is shared
 * and positional: ROM holds BOTH parameters in callee-saved regs ($s1=arg0,
 * $s0=arg1) with locals at 0x38-0xB4 in a 0xB8 frame, while every draft variant
 * keeps only ONE saved register and needs 0xC8-0xD8. Measured and rejected:
 * splitting the unaddressed Vectors into m2c-style scalars (270 -> worse frame),
 * hoisting var_t0 out of the switch arms (no change). Fix both together. */
s32 func_80108E08(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *spB4;
    struct CollisionTriangle *spB0;
    Vector spA4;
    Vector sp98;
    Vector sp8C;
    Vector sp80;
    s32 sp7C;
    s32 sp78;
    f32 sp74;
    Vector sp64;
    f32 sp3C;
    f32 sp38;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f0_2;
    f32 temp_f2_2;
    f32 var_f12;
    f32 var_f14;
    s32 var_v1;
    s32 var_t0;

    spB4 = arg1->rec[COL_FLOOR].norm;
    spB0 = arg1->rec[COL_FLOOR].tri;
    sp7C = arg1->rec[COL_FLOOR].type;
    spA4.x = arg0->kirbyFootPos[0];
    spA4.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    spA4.z = arg0->kirbyFootPos[2];
    sp80 = spA4;
    if (!((arg1->flags.w >> 0x13) & 0x200)) {
        temp_f0 = -((spB4->x * spA4.x) + (spB4->z * spA4.z) + spB4->originOffset) / spB4->y;
        if (spA4.y < temp_f0) {
            sp80.y = temp_f0;
        }
    }
    sp78 = 1;
    var_t0 = sp78;
    switch (func_80108078(&D_8012BD34, &sp80, arg1->rec[COL_FLOOR].norm, 1.0f, &sp98, &sp74, &spB4, &spB0, &sp7C)) {
    case 0:
        if (sp98.y < spA4.y) {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xF1FF;
            return 0;
        }
        sp8C = sp98;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR;
        break;
    case 1:
        sp8C = sp98;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR;
        break;
    case 2:
        sp64.x = spA4.x - BD00.hitX;
        sp64.y = spA4.y - BD00.hitY;
        sp64.z = spA4.z - BD00.hitZ;
        sp74 = sp74 / sqrtf((sp64.x * sp64.x) + (sp64.y * sp64.y) + (sp64.z * sp64.z));
        sp8C.x = (sp64.x * sp74) + sp98.x;
        sp8C.y = (sp64.y * sp74) + sp98.y;
        sp8C.z = (sp64.z * sp74) + sp98.z;
        sp38 = sp98.x;
        sp3C = sp8C.y;
        temp_f12 = -((spB4->x * sp8C.x) + (spB4->z * sp8C.z) + spB4->originOffset) / spB4->y;
        if (sp3C <= temp_f12) {
            temp_f0_2 = sp8C.x - sp38;
            sp8C.y = temp_f12;
            temp_f2_2 = sp8C.z - sp98.z;
            var_v1 = COLF_FLOOR_FOOT;
            if (((temp_f0_2 * BD00.fwdX) + (temp_f2_2 * BD00.fwdZ)) >= 0.0f) {
                var_f12 = BD00.headPushX;
                var_f14 = BD00.headPushZ;
                var_v1 = COLF_FLOOR_HEAD;
            } else {
                var_f12 = BD00.footPushX;
                var_f14 = BD00.footPushZ;
            }
            if (((var_f12 * var_f12) + (var_f14 * var_f14)) <
                ((temp_f0_2 * temp_f0_2) + (temp_f2_2 * temp_f2_2))) {
                var_t0 = 0;
            } else {
                arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xF1FF) | var_v1;
            }
            break;
        }
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xF1FF;
        return 0;
    default:
        break;
    }
    arg1->rec[COL_FLOOR].norm = spB4;
    arg1->rec[COL_FLOOR].tri = spB0;
    arg1->rec[COL_FLOOR].type = sp7C;
    arg0->kirbyFootPos[0] = sp8C.x;
    arg0->kirbyFootPos[1] = (sp8C.y - arg0->scale[2]) + 0.1f;
    arg0->kirbyFootPos[2] = sp8C.z;
    return var_t0;
}
#elif defined(PORT)
/* Ceiling snap resolver -- func_801073C4's mirror on rec[COL_FLOOR]: upward walk
 * (+1.0), head height (scale[2], +0.1 bias), classes 0x200/0x400/0x800,
 * mask 0xF1FF. Returns 0 when the ceiling anchor was dropped. */
s32 func_80108E08(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *n = arg1->rec[COL_FLOOR].norm;
    struct CollisionTriangle *tri = arg1->rec[COL_FLOOR].tri;
    s32 type = arg1->rec[COL_FLOOR].type;
    Vector probe, out, fin;
    f32 dist;
    s32 ret = 1;
    s32 r;

    probe.x = arg0->kirbyFootPos[0];
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    probe.z = arg0->kirbyFootPos[2];
    if (!((arg1->flags.w >> 0x13) & 0x200)) {
        f32 py = -((n->x * probe.x) + (n->z * probe.z) + n->originOffset) / n->y;

        if (probe.y < py) {
            probe.y = py;
        }
    }
    r = func_80108078(&D_8012BD34, &probe, arg1->rec[COL_FLOOR].norm, 1.0f, &out, &dist, &n, &tri, &type);
    fin = out;
    if (r == 0) {
        if (out.y < arg0->kirbyFootPos[1] + arg0->scale[2]) {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xF1FF) * 8) | (arg1->flags.hw & 7);
            return 0;
        }
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR) * 8) | (arg1->flags.hw & 7);
    } else if (r == 1) {
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR) * 8) | (arg1->flags.hw & 7);
    } else if (r == 2) {
        f32 dx = arg0->kirbyFootPos[0] - BD00.hitX;
        f32 dy = (arg0->kirbyFootPos[1] + arg0->scale[2]) - BD00.hitY;
        f32 dz = arg0->kirbyFootPos[2] - BD00.hitZ;
        f32 s = dist / sqrtf((dx * dx) + (dy * dy) + (dz * dz));
        f32 py;

        fin.x = (dx * s) + out.x;
        fin.y = (dy * s) + out.y;
        fin.z = (dz * s) + out.z;
        py = -((n->x * fin.x) + (n->z * fin.z) + n->originOffset) / n->y;
        if (fin.y <= py) {
            f32 sx = fin.x - out.x;
            f32 sz = fin.z - out.z;
            f32 bx, bz;
            s32 cls = COLF_FLOOR_FOOT;

            fin.y = py;
            if ((sx * BD00.fwdX) + (sz * BD00.fwdZ) >= 0.0f) {
                bx = BD00.headPushX;
                bz = BD00.headPushZ;
                cls = COLF_FLOOR_HEAD;
            } else {
                bx = BD00.footPushX;
                bz = BD00.footPushZ;
            }
            if ((bx * bx) + (bz * bz) < (sx * sx) + (sz * sz)) {
                ret = 0;
            } else {
                arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xF1FF) | cls) * 8) | (arg1->flags.hw & 7);
            }
        } else {
            arg1->flags.hw = (((arg1->flags.w >> 0x13) & 0xF1FF) * 8) | (arg1->flags.hw & 7);
            return 0;
        }
    }
    arg1->rec[COL_FLOOR].norm = n;
    arg1->rec[COL_FLOOR].tri = tri;
    arg1->rec[COL_FLOOR].type = type;
    arg0->kirbyFootPos[0] = fin.x;
    arg0->kirbyFootPos[1] = (fin.y - arg0->scale[2]) + 0.1f;
    arg0->kirbyFootPos[2] = fin.z;
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80108E08.s")
#endif

void func_80109240(s32 arg0, s32 arg1) {
}

void func_8010924C(struct PositionState *arg0, struct CollisionResult *arg1) {
    f32 temp_f0;
    u32 temp_v0;
    struct Normal *temp_v1;

    temp_v0 = arg1->flags.w >> 0x13;
    if (temp_v0 & 0x200) {
        arg0->kirbyFootPos[0] = BD00.hitX;
        arg0->kirbyFootPos[1] = (BD00.hitY - arg0->scale[2]) + 0.1f;
        arg0->kirbyFootPos[2] = BD00.hitZ;
        return;
    }
    temp_v1 = arg1->rec[COL_FLOOR].norm;
    temp_f0 = (-((temp_v1->x * arg0->kirbyFootPos[0]) + (temp_v1->z * arg0->kirbyFootPos[2]) + temp_v1->originOffset) / temp_v1->y) - arg0->scale[2];
    if (arg0->kirbyFootPos[1] < temp_f0) {
        arg0->kirbyFootPos[1] = temp_f0 + 0.1f;
        return;
    }
    arg1->flags.f.hits = temp_v0 & 0xF1FF;
}

#ifdef NON_MATCHING
// 19/123: f16/f18 parity from the `(sp2C.z - sp20.z) * BD00.fwdZ` multiply on.
// Swept all 8 operand/addend orders and 7 named-temp splits; 19 is the floor.
void func_80109318(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_CEILING].norm;
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp38.y = (sp4C->x * (sp2C.x - sp38.x)) + ((sp4C->z * (sp2C.z - sp38.z)) * sp44) + sp2C.y;
    func_801057C4(arg1->rec[COL_WALL_FRONT].norm, &sp2C, &sp38, &sp20);
    if ((((sp2C.z - sp20.z) * BD00.fwdZ) + ((sp2C.x - sp20.x) * BD00.fwdX)) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFF8;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.footPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.footPushZ;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[1]) - 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F;
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
/* FACTORY: 19/123, $f16 <-> $f18 rotation only. Frame (0x50) and every stack slot
 * match. Two things solved and kept: (1) the ROM leaves a DEAD word at 0x48 --
 * declaring an unused `f32 sp48` between sp4C and sp44 reserves it (IDO keeps an
 * unused SCALAR among used locals, unlike an unused array), worth 41/123 -> 24/123;
 * (2) the facing dot product must be written z-term FIRST, 24 -> 19. Note the y
 * solve really does scale only the z term: `x*dx + z*dz*inv + sp38.y`. */
void func_80109504(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_CEILING].norm;
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + (sp4C->z * (sp38.z - sp2C.z) * sp44) + sp38.y;
    func_801057C4(arg1->rec[COL_WALL_BACK].norm, &sp2C, &sp38, &sp20);
    if ((((sp38.z - sp20.z) * BD00.backZ) + ((sp38.x - sp20.x) * BD00.backX)) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.headPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.headPushZ;
        arg0->kirbyFootPos[1] =
            ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) +
                sp4C->originOffset) * sp44) - arg0->scale[1]) - 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
    }
}
#elif defined(PORT)
/* Draft above is asm-faithful (verified against m2c); under the PORT
 * flags union the .f.hits writes land on bits 19-31 as the readers expect. */
void func_80109504(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_CEILING].norm;
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + ((sp4C->z * (sp38.z - sp2C.z)) * sp44) + sp38.y;
    func_801057C4(arg1->rec[COL_WALL_BACK].norm, &sp2C, &sp38, &sp20);
    if (((((sp38.z - sp20.z) * BD00.backZ) + ((sp38.x - sp20.x) * BD00.backX))) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.headPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.headPushZ;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[1]) - 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109504.s")
#endif

void func_801096F0(struct PositionState *arg0, struct CollisionResult *arg1) {
    if ((arg1->flags.w >> 0x13) & COLF_CEIL_ANY) {
#ifdef PORT
        /* N64 called func_80105284 with $a0/$a1 still holding this
         * function's args; pass them explicitly. */
        if ((func_80105284(arg0, arg1) != 0) || (func_80105530(arg0, arg1) != 0)) {
#else
        if ((func_80105284(arg0, arg1) != 0) || (func_80105530(arg0, arg1) != 0)) {
#endif
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
/* FACTORY: 19/123, $f16 <-> $f18 rotation only -- IDENTICAL residue to func_80109504
 * and func_80109970, which confirms the shape. This is the mirror of func_80109504:
 * sp4C is rec[COL_FLOOR].norm, the clip plane is rec[COL_WALL_FRONT].norm, scale[2] at the end, mask
 * 0xFFF8|1, and BD00 unk4/8 <-> unkC/10, unk1C/20 -> unk14/18, unk2C/30 -> unk24/28.
 * NOTE the trap: the two probe vectors trade STACK SLOTS (the scale[0] head probe
 * moves to 0x2C and the .y-solved one to 0x38) but func_801057C4 is still called
 * a1=0x2C, a2=0x38 -- so the argument order does NOT swap with them. */
void func_80109784(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_FLOOR].norm;
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp38.y = (sp4C->x * (sp2C.x - sp38.x)) + (sp4C->z * (sp2C.z - sp38.z) * sp44) + sp2C.y;
    func_801057C4(arg1->rec[COL_WALL_FRONT].norm, &sp2C, &sp38, &sp20);
    if ((((sp2C.z - sp20.z) * BD00.fwdZ) + ((sp2C.x - sp20.x) * BD00.fwdX)) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFF8;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.footPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.footPushZ;
        arg0->kirbyFootPos[1] =
            ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) +
                sp4C->originOffset) * sp44) - arg0->scale[2]) - 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F;
    }
}
#elif defined(PORT)
/* Draft above is asm-faithful (verified against m2c); under the PORT
 * flags union the .f.hits writes land on bits 19-31 as the readers expect. */
void func_80109784(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_FLOOR].norm;
    sp2C.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp2C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp2C.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp38.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp38.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp38.y = (sp4C->x * (sp2C.x - sp38.x)) + ((sp4C->z * (sp2C.z - sp38.z)) * sp44) + sp2C.y;
    func_801057C4(arg1->rec[COL_WALL_FRONT].norm, &sp2C, &sp38, &sp20);
    if (((((sp2C.z - sp20.z) * BD00.fwdZ) + ((sp2C.x - sp20.x) * BD00.fwdX))) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFF8;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.footPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.footPushZ;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[2]) + 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFF8) | COLF_WALL_F;
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
/* FACTORY: 19/123, $f16 <-> $f18 rotation only -- IDENTICAL residue to func_80109504.
 * Cheapest clone of the three: func_80109504 with exactly two substitutions, sp4C
 * taken from rec[COL_FLOOR].norm instead of rec[COL_CEILING].norm and scale[2] instead of scale[1].
 * Everything else -- stack layout, BD00 fields, mask 0xFFC7|8 -- is unchanged. */
void func_80109970(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_FLOOR].norm;
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + (sp4C->z * (sp38.z - sp2C.z) * sp44) + sp38.y;
    func_801057C4(arg1->rec[COL_WALL_BACK].norm, &sp2C, &sp38, &sp20);
    if ((((sp38.z - sp20.z) * BD00.backZ) + ((sp38.x - sp20.x) * BD00.backX)) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.headPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.headPushZ;
        arg0->kirbyFootPos[1] =
            ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) +
                sp4C->originOffset) * sp44) - arg0->scale[2]) - 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
    }
}
#elif defined(PORT)
/* Draft above is asm-faithful (verified against m2c); under the PORT
 * flags union the .f.hits writes land on bits 19-31 as the readers expect. */
void func_80109970(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *sp4C;
    f32 sp48;
    f32 sp44;
    Vector sp38;
    Vector pad;
    Vector sp2C;
    Vector sp20;

    sp4C = arg1->rec[COL_FLOOR].norm;
    sp38.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp38.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp38.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp2C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp2C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp44 = 1.0f / sp4C->y;
    sp2C.y = (sp4C->x * (sp38.x - sp2C.x)) + ((sp4C->z * (sp38.z - sp2C.z)) * sp44) + sp38.y;
    func_801057C4(arg1->rec[COL_WALL_BACK].norm, &sp2C, &sp38, &sp20);
    if (((((sp38.z - sp20.z) * BD00.backZ) + ((sp38.x - sp20.x) * BD00.backX))) < 0.0f) {
        arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
    } else {
        arg0->kirbyFootPos[0] = sp20.x - BD00.headPushX;
        arg0->kirbyFootPos[2] = sp20.z - BD00.headPushZ;
        arg0->kirbyFootPos[1] = ((-((sp4C->x * arg0->kirbyFootPos[0]) + (sp4C->z * arg0->kirbyFootPos[2]) + sp4C->originOffset) * sp44) - arg0->scale[2]) + 0.1f;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xFFC7) | COLF_WALL_B;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_80109970.s")
#endif

void func_80109B5C(struct PositionState *arg0, struct CollisionResult *arg1) {
    if ((arg1->flags.w >> 0x13) & COLF_FLOOR_ANY) {
#ifdef PORT
        /* N64 register-passthrough call, as above. */
        if ((func_80105284(arg0, arg1) != 0) || (func_80105530(arg0, arg1) != 0)) {
#else
        if ((func_80105284(arg0, arg1) != 0) || (func_80105530(arg0, arg1) != 0)) {
#endif
            func_80109784(arg0, arg1);
        }
        if ((func_801063F0(arg0, arg1) != 0) || (func_8010669C(arg0, arg1) != 0)) {
            func_80109970(arg0, arg1);
        }
    }
}

s32 func_80109BF0(struct PositionState *arg0, struct CollisionResult *arg1, s32 arg2) {
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
        if ((var_v1 & COLF_FLOOR_ANY) && (arg1->rec[COL_FLOOR].type != 0x14)) {
            func_80106C5C(arg0, arg1);
        }
        if ((var_v1 & COLF_WALL_F_ANY) && (arg1->rec[COL_WALL_FRONT].type != 0x14)) {
            func_801063F0(arg0, arg1);
        }
        if ((var_v1 & COLF_WALL_B_ANY) && (arg1->rec[COL_WALL_BACK].type != 0x14)) {
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

    BD00.busy = 1;
    temp_a0 = func_80109BF0(arg0, &D_8012BCA0, 8);
    BD00.busy = 0;
    var_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((var_v1 & COLF_WALL_F_ANY) && (D_8012BCA0.rec[COL_WALL_FRONT].tri->normalType & 4)) {
        var_v1 &= 0xFFF8;
        D_8012BCA0.flags.f.hits = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & COLF_WALL_B_ANY) && (D_8012BCA0.rec[COL_WALL_BACK].tri->normalType & 4)) {
        var_v1 &= 0xFFC7;
        D_8012BCA0.flags.f.hits = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & COLF_CEIL_ANY) && (D_8012BCA0.rec[COL_CEILING].tri->normalType & 4)) {
        var_v1 &= 0xFE3F;
        D_8012BCA0.flags.f.hits = var_v1;
    }
    return temp_a0;
}

s32 func_80109F60(struct PositionState *arg0) {
    s32 ret;

    BD00.busy = 1;
    ret = func_80109BF0(arg0, &D_8012BCA0, 8);
    BD00.busy = 0;
    return ret;
}

void func_80109FAC(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    struct Normal *n;
    f32 dax;
    f32 daz;
    f32 dbx;
    f32 dbz;

    if ((arg1->flags.w >> 0x13) & 1) {
        arg0->kirbyFootPos[0] = BD00.hitX - BD00.footPushX;
        arg0->kirbyFootPos[1] = BD00.hitY - arg0->scale[0];
        arg0->kirbyFootPos[2] = BD00.hitZ - BD00.footPushZ;
        return;
    }
    n = arg1->rec[COL_WALL_FRONT].norm;
    sp4C.x = arg0->kirbyGroundPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyGroundPath[1];
    sp40.x = BD00.footPushX + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.footPushZ + arg0->kirbyFootPos[2];
    if (func_801057C4(n, &sp4C, &sp40, &sp34) != 0) {
        dbx = sp40.x - sp4C.x;
        dbz = sp40.z - sp4C.z;
        dax = sp34.x - sp4C.x;
        daz = sp34.z - sp4C.z;
        if (((dax * dax) + (daz * daz)) < ((dbx * dbx) + (dbz * dbz))) {
            arg0->kirbyFootPos[0] = sp34.x - BD00.footPushX;
            arg0->kirbyFootPos[1] = sp34.y - arg0->scale[0];
            arg0->kirbyFootPos[2] = sp34.z - BD00.footPushZ;
        } else {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFF8;
        }
    }
}





void func_8010A138(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector sp4C;
    Vector sp40;
    Vector sp34;
    struct Normal *n;
    f32 dax;
    f32 daz;
    f32 dbx;
    f32 dbz;

    if ((arg1->flags.w >> 0x13) & 8) {
        arg0->kirbyFootPos[0] = BD00.hitX - BD00.headPushX;
        arg0->kirbyFootPos[1] = BD00.hitY - arg0->scale[0];
        arg0->kirbyFootPos[2] = BD00.hitZ - BD00.headPushZ;
        return;
    }
    sp4C.x = arg0->kirbyHeadPath[0];
    sp4C.y = arg0->kirbyHeadPos[1];
    sp4C.z = arg0->kirbyHeadPath[1];
    sp40.x = BD00.headPushX + arg0->kirbyFootPos[0];
    sp40.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.z = BD00.headPushZ + arg0->kirbyFootPos[2];
    n = arg1->rec[COL_WALL_BACK].norm;
    if (func_801057C4(n, &sp4C, &sp40, &sp34) != 0) {
        dbx = sp40.x - sp4C.x;
        dbz = sp40.z - sp4C.z;
        dax = sp34.x - sp4C.x;
        daz = sp34.z - sp4C.z;
        if (((dax * dax) + (daz * daz)) < ((dbx * dbx) + (dbz * dbz))) {
            arg0->kirbyFootPos[0] = sp34.x - BD00.headPushX;
            arg0->kirbyFootPos[1] = sp34.y - arg0->scale[0];
            arg0->kirbyFootPos[2] = sp34.z - BD00.headPushZ;
        } else {
            arg1->flags.f.hits = (arg1->flags.w >> 0x13) & 0xFFC7;
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
        var_t1 = COLF_FLOOR;
        sp54 = D_8012BD00.hitY;
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
            sp4C = -((sp64->unk0 * (sp74 - D_8012BD00.footOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.footOffZ)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2 = arg1->unkC;
            if (sp64 != temp_a2) {
                temp_f10 = -((sp64->unk0 * (sp74 - D_8012BD00.footOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.footOffZ)) + sp64->unkC) / sp64->unk4;
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
            var_t1_2 = COLF_FLOOR_FOOT;
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
            sp44 = -((sp64->unk0 * (sp74 - D_8012BD00.headOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.headOffZ)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2_2 = arg1->unkC;
            if (sp64 != temp_a2_2) {
                temp_f18 = -((sp64->unk0 * (sp74 - D_8012BD00.headOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.headOffZ)) + sp64->unkC) / sp64->unk4;
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
            var_t1_3 = COLF_FLOOR_HEAD;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
            sp54 = sp44;
        }
    }
    temp_v0 = arg0 + 0x10;
    sp98 = arg0->unk4 + D_8012BD00.footOffX;
    sp9C = arg0->unk8 + temp_v0->unk4;
    sp8C = sp98;
    spA0 = arg0->unkC + D_8012BD00.footOffZ;
    sp58 = var_t1_3;
    sp90 = arg0->unk8 + temp_v0->unk8;
    sp94 = spA0;
    var_t1_4 = sp58;
    if (func_80103EA0(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_t0_3 = 0;
        if (var_t1_4 == 0) {
            var_t0_3 = 1;
            sp3C = -((sp64->unk0 * (sp74 - D_8012BD00.footOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.footOffZ)) + sp64->unkC) / sp64->unk4;
        } else {
            temp_a2_3 = arg1->unkC;
            if (sp64 != temp_a2_3) {
                temp_f4 = -((sp64->unk0 * (sp74 - D_8012BD00.footOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.footOffZ)) + sp64->unkC) / sp64->unk4;
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
            var_t1_4 = COLF_FLOOR_FOOT;
            D_8012BD34.unk8 = sp74.unk8;
            arg1->unkC = sp64;
            arg1->unk8 = sp60;
            arg1->unk4 = sp5C;
            sp54 = sp3C;
        }
    }
    sp98 = arg0->unk4 + D_8012BD00.headOffX;
    sp58 = var_t1_4;
    spA0 = arg0->unkC + D_8012BD00.headOffZ;
    sp8C = sp98;
    sp94 = spA0;
    var_t1_5 = sp58;
    if (func_80103EA0(&sp98, &sp8C, &sp80, 0, &sp74, &sp64, &sp60, &sp5C) != 0) {
        var_s1 = 0;
        if (var_t1_5 == 0) {
            goto block_35;
        }
        temp_a2_4 = arg1->unkC;
        if ((sp64 != temp_a2_4) && (sp54 < (-((sp64->unk0 * (sp74 - D_8012BD00.headOffX)) + (sp64->unk8 * (sp7C - D_8012BD00.headOffZ)) + sp64->unkC) / sp64->unk4))) {
            var_t1_5 = sp58;
            if (func_80108858(&D_8012BD34, &sp74, temp_a2_4, 0x3F800000) != 0) {
block_35:
                var_s1 = 1;
            }
        }
        if (var_s1 != 0) {
            D_8012BD34.unk0 = sp74.unk0;
            D_8012BD34.unk4 = sp74.unk4;
            var_t1_5 = COLF_FLOOR_HEAD;
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
#elif defined(PORT)
/* Moving-platform ceiling sweep (draft above, completed): endpoints are
 * shifted by the tracked collider's frame delta (func_80112A40 on
 * byteArray[0]); three downward-normal casts at head/ground-path/head-path
 * plus two vertical foot probes update rec[COL_FLOOR], each accepted over the
 * incumbent only when its plane sits higher and func_80108858 (+1.0)
 * agrees. Classes 0x200/0x800/0x400 OR into the flags word unmasked. */
s32 func_8010A2C4(struct PositionState *arg0, struct CollisionResult *arg1) {
    Vector start, end, hit, delta;
    struct Normal dir;
    struct Normal *n;
    struct CollisionTriangle *tri;
    u32 type;
    f32 best = 0.0f;
    f32 planeY;
    s32 cls = 0;

    start.x = arg0->kirbyHeadPos[0];
    start.y = arg0->kirbyHeight[1];
    start.z = arg0->kirbyHeadPos[2];
    func_80112A40(arg0->byteArray[0], &start, &delta);
    end.x = start.x + delta.x;
    end.y = (start.y + delta.y) - 0.13f;
    end.z = start.z + delta.z;
    dir.x = 0.0f;
    dir.y = -1.0f;
    dir.z = 0.0f;
    if (pc_probe_39e8(&start, &end, &dir, NULL, &D_8012BD34, &arg1->rec[COL_FLOOR].norm,
                      &arg1->rec[COL_FLOOR].tri, (u32 *) &arg1->rec[COL_FLOOR].type) != 0) {
        cls = COLF_FLOOR;
        best = BD00.hitY;
    }
    start.x = arg0->kirbyGroundPath[0];
    start.z = arg0->kirbyGroundPath[1];
    end.x = start.x + delta.x;
    end.z = start.z + delta.z;
    if (pc_probe_39e8(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_FLOOR].norm) {
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
            if (best < planeY) {
                accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
            }
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_FOOT;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
            best = planeY;
        }
    }
    start.x = arg0->kirbyHeadPath[0];
    start.z = arg0->kirbyHeadPath[1];
    end.x = start.x + delta.x;
    end.z = start.z + delta.z;
    if (pc_probe_39e8(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
            planeY = -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_FLOOR].norm) {
            planeY = -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y;
            if (best < planeY) {
                accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
            }
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_HEAD;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
            best = planeY;
        }
    }
    start.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    start.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    start.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    end.x = start.x;
    end.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    end.z = start.z;
    if (pc_probe_ea0(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
        } else if (n != arg1->rec[COL_FLOOR].norm) {
            planeY = -((n->x * (hit.x - BD00.footOffX)) + (n->z * (hit.z - BD00.footOffZ)) + n->originOffset) / n->y;
            if (best < planeY) {
                accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
            }
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_FOOT;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
            best = planeY;
        }
    }
    start.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    start.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    end.x = start.x;
    end.z = start.z;
    if (pc_probe_ea0(&start, &end, &dir, NULL, &hit, &n, &tri, &type) != 0) {
        s32 accept = 0;

        if (cls == 0) {
            accept = 1;
        } else if (n != arg1->rec[COL_FLOOR].norm &&
                   best < -((n->x * (hit.x - BD00.headOffX)) + (n->z * (hit.z - BD00.headOffZ)) + n->originOffset) / n->y) {
            accept = func_80108858(&D_8012BD34, &hit, arg1->rec[COL_FLOOR].norm, 1.0f) != 0;
        }
        if (accept) {
            D_8012BD34 = hit;
            cls = COLF_FLOOR_HEAD;
            arg1->rec[COL_FLOOR].norm = n;
            arg1->rec[COL_FLOOR].tri = tri;
            arg1->rec[COL_FLOOR].type = type;
        }
    }
    if (cls != 0) {
        arg1->flags.hw = (((arg1->flags.w >> 0x13) | cls) * 8) | (arg1->flags.hw & 7);
        return 1;
    }
    return 0;
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
    sp48 = arg0->unk4 + D_8012BD00.footOffX;
    sp4C = arg0->unk8 + arg0->unk14;
    sp3C = sp48;
    sp50 = arg0->unkC + D_8012BD00.footOffZ;
    sp44 = sp50;
    if (func_80103EA0(&sp48, &sp3C, &sp30, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp48 = arg0->unk4 + D_8012BD00.headOffX;
    sp50 = arg0->unkC + D_8012BD00.headOffZ;
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
/* FACTORY: 177/177, the SAME shared frame class as func_801073C4 and func_80108E08
 * -- ROM keeps both parameters in callee-saved registers (s0/s1) with a 0x98 frame,
 * every draft variant keeps only one and needs 0xA0, and that offsets every
 * sp-relative word. Fix all three together; this one is the smallest of the set and
 * so the best place to find the lever. Written to the quality bar: named locals
 * (probe/walked/result/hitNorm/hitTri/hitType/slideX/limitX/cls) and a real switch
 * with 0 and 1 sharing an arm, instead of m2c's void* + sp94/sp8C names and its
 * "irregular" switch comment. Semantics: the platform-sweep counterpart of
 * func_80108E08 -- r 0/1 adopt the walked point (class 0x200); r 2 keeps the probe
 * point and re-plants only its y on the walked plane, classing 0x800/0x400 by facing
 * and returning 0 when the slide exceeds the raw BD00 probe offsets. */
/* Moving-platform ceiling snap: the platform-sweep counterpart of func_80108E08.
 * A walk from D_8012BD34 up through rec[COL_FLOOR]'s plane either lands cleanly (r 0 or 1,
 * class 0x200) or clips (r 2), in which case the probe point is kept and only its
 * y is re-planted on the walked plane; the 0x800/0x400 class then says which side
 * of the facing basis the slide went, and a slide longer than the raw BD00 probe
 * offsets reports failure. */
s32 func_8010AC1C(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *hitNorm;
    struct CollisionTriangle *hitTri;
    Vector probe;
    Vector walked;
    Vector result;
    s32 hitType;
    s32 ret;
    f32 dist;
    f32 slideX;
    f32 slideZ;
    f32 limitX;
    f32 limitZ;
    s32 cls;

    hitNorm = arg1->rec[COL_FLOOR].norm;
    hitTri = arg1->rec[COL_FLOOR].tri;
    hitType = arg1->rec[COL_FLOOR].type;
    probe.x = arg0->kirbyFootPos[0];
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    probe.z = arg0->kirbyFootPos[2];
    if (!((arg1->flags.w >> 0x13) & 0x200)) {
        f32 planeY = -((hitNorm->x * probe.x) + (hitNorm->z * probe.z) +
                       hitNorm->originOffset) / hitNorm->y;

        if (probe.y < planeY) {
            probe.y = planeY;
        }
    }
    ret = 1;
    switch (func_80108078(&D_8012BD34, &probe, arg1->rec[COL_FLOOR].norm, 1.0f, &walked, &dist, &hitNorm,
                          &hitTri, &hitType)) {
    case 0:
    case 1:
        result = walked;
        arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR;
        break;
    case 2:
        result.x = probe.x;
        cls = COLF_FLOOR_FOOT;
        result.y = probe.y;
        result.z = probe.z;
        slideX = result.x - walked.x;
        slideZ = result.z - walked.z;
        result.y = -((hitNorm->x * result.x) + (hitNorm->z * result.z) + hitNorm->originOffset) /
                   hitNorm->y;
        if (((slideX * BD00.fwdX) + (slideZ * BD00.fwdZ)) >= 0.0f) {
            limitX = BD00.headOffX;
            limitZ = BD00.headOffZ;
            cls = COLF_FLOOR_HEAD;
        } else {
            limitX = BD00.footOffX;
            limitZ = BD00.footOffZ;
        }
        if (((limitX * limitX) + (limitZ * limitZ)) < ((slideX * slideX) + (slideZ * slideZ))) {
            ret = 0;
        } else {
            arg1->flags.f.hits = ((arg1->flags.w >> 0x13) & 0xF1FF) | cls;
        }
        break;
    }
    arg1->rec[COL_FLOOR].norm = hitNorm;
    arg1->rec[COL_FLOOR].tri = hitTri;
    arg1->rec[COL_FLOOR].type = hitType;
    arg0->kirbyFootPos[0] = result.x;
    arg0->kirbyFootPos[1] = (result.y - arg0->scale[2]) + 0.1f;
    arg0->kirbyFootPos[2] = result.z;
    return ret;
}
#elif defined(PORT)
/* Moving-platform ceiling snap (draft above, completed): like
 * func_80108E08 but for the platform sweep -- r=0 and r=1 both adopt the
 * walked point (class 0x200); r=2 keeps the probe point, re-planting its y
 * on the walked plane, classing 0x800/0x400 by facing against the raw
 * BD00.footOffX/unkC offsets, and reporting 0 when the step exceeded them. */
s32 func_8010AC1C(struct PositionState *arg0, struct CollisionResult *arg1) {
    struct Normal *n = arg1->rec[COL_FLOOR].norm;
    struct CollisionTriangle *tri = arg1->rec[COL_FLOOR].tri;
    s32 type = arg1->rec[COL_FLOOR].type;
    Vector probe, out, fin;
    f32 dist;
    f32 py = 0.0f;
    s32 ret = 1;
    s32 r;

    probe.x = arg0->kirbyFootPos[0];
    probe.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    probe.z = arg0->kirbyFootPos[2];
    if (!((arg1->flags.w >> 0x13) & 0x200)) {
        f32 e = -((n->x * probe.x) + (n->z * probe.z) + n->originOffset) / n->y;

        if (probe.y < e) {
            probe.y = e;
        }
    }
    r = func_80108078(&D_8012BD34, &probe, arg1->rec[COL_FLOOR].norm, 1.0f, &out, &dist, &n, &tri, &type);
    fin = out;
    py = out.y;
    if (r == 0 || r == 1) {
        arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xF1FF) | COLF_FLOOR) * 8) | (arg1->flags.hw & 7);
    } else if (r == 2) {
        f32 sx, sz, bx, bz;
        s32 cls = COLF_FLOOR_FOOT;

        fin = probe;
        sx = fin.x - out.x;
        sz = fin.z - out.z;
        py = -((n->x * fin.x) + (n->z * fin.z) + n->originOffset) / n->y;
        if ((sx * BD00.fwdX) + (sz * BD00.fwdZ) >= 0.0f) {
            bx = BD00.headOffX;
            bz = BD00.headOffZ;
            cls = COLF_FLOOR_HEAD;
        } else {
            bx = BD00.footOffX;
            bz = BD00.footOffZ;
        }
        if ((bx * bx) + (bz * bz) < (sx * sx) + (sz * sz)) {
            ret = 0;
        } else {
            arg1->flags.hw = ((((arg1->flags.w >> 0x13) & 0xF1FF) | cls) * 8) | (arg1->flags.hw & 7);
        }
    }
    arg1->rec[COL_FLOOR].norm = n;
    arg1->rec[COL_FLOOR].tri = tri;
    arg1->rec[COL_FLOOR].type = type;
    arg0->kirbyFootPos[0] = fin.x;
    arg0->kirbyFootPos[1] = (py - arg0->scale[2]) + 0.1f;
    arg0->kirbyFootPos[2] = fin.z;
    return ret;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010AC1C.s")
#endif

s32 func_8010AEE0(s32 arg0, s32 arg1) {
    return 0;
}

s32 func_8010AEF0(struct PositionState *arg0, struct CollisionResult *arg1, s32 arg2) {
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
    if ((func_80106C5C(arg0, arg1) != 0) && !(sp24 & COLF_FLOOR_ANY)) {
        func_801073C4(arg0, arg1);
        func_801096F0(arg0, arg1);
    }
    if (sp24 != 0) {
        if ((sp24 & COLF_WALL_B_ANY) && (arg1->rec[COL_WALL_BACK].type != 0x14)) {
            func_80105284(arg0, arg1);
        }
        if ((sp24 & COLF_WALL_F_ANY) && (arg1->rec[COL_WALL_FRONT].type != 0x14)) {
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

    BD00.busy = 1;
    temp_a0 = func_8010AEF0(arg0, &D_8012BCA0, 8);
    BD00.busy = 0;
    var_v1 = D_8012BCA0.flags.w >> 0x13;
    if ((var_v1 & COLF_WALL_F_ANY) && (D_8012BCA0.rec[COL_WALL_FRONT].tri->normalType & 4)) {
        var_v1 &= 0xFFF8;
        D_8012BCA0.flags.f.hits = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & COLF_WALL_B_ANY) && (D_8012BCA0.rec[COL_WALL_BACK].tri->normalType & 4)) {
        var_v1 &= 0xFFC7;
        D_8012BCA0.flags.f.hits = var_v1;
        var_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((var_v1 & COLF_CEIL_ANY) && (D_8012BCA0.rec[COL_CEILING].tri->normalType & 4)) {
        var_v1 &= 0xFE3F;
        D_8012BCA0.flags.f.hits = var_v1;
    }
    return temp_a0;
}

s32 func_8010B238(struct PositionState *arg0) {
    s32 ret;

    BD00.busy = 1;
    ret = func_8010AEF0(arg0, &D_8012BCA0, 8);
    BD00.busy = 0;
    return ret;
}

/* FACTORY: 103/126, frame+all stack offsets exact; residue is IDO folding arg0+0x10 into lw offsets
   where the ROM CSEs it into a register spilled at 0x30. Same residue in B480/B67C/B860/105284/1063F0. */
#ifdef MIPS_TO_C
/* FACTORY: 23/127, FP load scheduling + $f4/$f6/$f8/$f10 rotation. Frame (0x60) and
 * every stack slot match on the first compile -- the func_8010B67C recipe transferred
 * directly: hold temp_v0 = arg0->scale and index it (temp_v0[1]/[2] are scale[1]/[2]),
 * declare it FIRST, and keep exactly one dead scalar (sp58). Residue: the ROM hoists
 * `lwc1 0x8($t0)` and the 0.13f load a few slots earlier than IDO schedules them here;
 * the sub is non-commutative so the LEVERS-2 operand swap does not apply. */
s32 func_8010B284(struct PositionState *arg0) {
    f32 *temp_v0;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    temp_v0 = arg0->scale;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    sp34.x = 0.0f;
    sp34.z = 0.0f;
    sp34.y = -1.0f;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[2] + arg0->kirbyFootPos[1];
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.y = sp4C.y - 0.13f;
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x1000;
        return 1;
    }
    sp4C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[1] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x;
    sp4C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x4000;
        return 1;
    }
    sp4C.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp4C.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x2000;
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Draft above is asm-faithful; forwarded cast outs are all NULL, so the
 * s32-arg setup functions are safe here. */
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
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x1000;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x1000;
#endif
        return 1;
    }
    sp4C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp4C.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x;
    sp4C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x4000;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x4000;
#endif
        return 1;
    }
    sp4C.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp4C.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x2000;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x2000;
#endif
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B284.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 23/127 -- EXACT CLONE of func_8010B284, identical residue. Substitution
 * table: the probe direction flips (-1.0f -> 1.0f and the 0.13f offset subtracts ->
 * adds, i.e. floor probe vs ceiling probe), scale[2] <-> scale[1] swap on the two
 * height picks, and the three result bits 0x1000/0x4000/0x2000 -> 0x200/0x800/0x400. */
s32 func_8010B480(struct PositionState *arg0) {
    f32 *temp_v0;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    temp_v0 = arg0->scale;
    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    sp34.x = 0.0f;
    sp34.z = 0.0f;
    sp34.y = 1.0f;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[1] + arg0->kirbyFootPos[1];
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.y = sp4C.y + 0.13f;
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x200;
        return 1;
    }
    sp4C.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[2] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x;
    sp4C.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x800;
        return 1;
    }
    sp4C.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp4C.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp40.x = sp4C.x;
    sp40.z = sp4C.z;
    if (func_80103EA0(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x400;
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Upward contact tag (draft above, completed): three short upward probes
 * (center at mid height, the two lateral offsets at head height, all ending
 * 0.13 above the first start) tag the flags halfword 0x200/0x800/0x400. */
s32 func_8010B480(struct PositionState *arg0) {
    Vector a, b;
    struct Normal dir;

    func_80105218(&D_8012BCA0);
    func_80104FB8(arg0);
    dir.x = 0.0f;
    dir.y = 1.0f;
    dir.z = 0.0f;
    a.x = arg0->kirbyFootPos[0];
    a.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    a.z = arg0->kirbyFootPos[2];
    b.x = a.x;
    b.y = a.y + 0.13f;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x200;
        return 1;
    }
    a.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    a.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    a.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    b.x = a.x;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x800;
        return 1;
    }
    a.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    a.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    b.x = a.x;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x400;
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B480.s")
#endif


/* FACTORY: 92/120, ROM CSEs $v0 = arg0+0x10 and spills it at 0x30; IDO folds it into lw offsets. Frame/offsets already exact. */
#ifdef MIPS_TO_C
/* FACTORY: 53/121, register-name residue ($v0 vs $t0 on the scale base) plus the
 * load scheduling that follows it. Frame (0x60) and every stack slot -- including
 * the 0x30 spill of the scale base and the two DEAD words at 0x58/0x5C -- match.
 * Solved and kept: temp_v0 = arg0->scale held as a pointer (temp_v0[0..2] are
 * scale[0..2]); adding it took 92/120 -> 69, and then declaring it FIRST while
 * dropping the spurious second dead scalar took 69 -> 53. Measured neutral:
 * swapping the BD00 add operand order. */
s32 func_8010B67C(struct PositionState *arg0) {
    f32 *temp_v0;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    temp_v0 = arg0->scale;
    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34.x = BD00.fwdX;
    sp34.y = 0.0f;
    sp34.z = BD00.fwdZ;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[0] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x + BD00.footOffX;
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.z = sp4C.z + BD00.footOffZ;
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 8;
        return 1;
    }
    sp4C.x = sp4C.x + BD00.headOffX;
    sp4C.z = sp4C.z + BD00.headOffZ;
    sp4C.y = temp_v0[2] + arg0->kirbyFootPos[1];
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x20;
        return 1;
    }
    sp40.y = temp_v0[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp40.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x10;
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Draft above is asm-faithful; forwarded cast outs are all NULL, so the
 * s32-arg setup functions are safe here. */
s32 func_8010B67C(struct PositionState *arg0) {
    f32 sp5C;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34.x = BD00.fwdX;
    sp34.y = 0.0f;
    sp34.z = BD00.fwdZ;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x + BD00.footOffX;
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.z = sp4C.z + BD00.footOffZ;
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 8;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 8;
#endif
        return 1;
    }
    sp4C.x = sp4C.x + BD00.headOffX;
    sp4C.z = sp4C.z + BD00.headOffZ;
    sp4C.y = arg0->scale[2] + arg0->kirbyFootPos[1];
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x20;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x20;
#endif
        return 1;
    }
    sp40.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp40.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x10;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x10;
#endif
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010B67C.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 53/121 -- EXACT CLONE of func_8010B67C, identical residue, which confirms
 * the shape. Substitution table: BD00 unk14/18 -> unk1C/20 (facing basis), unk4/8
 * <-> unkC/10 (the two probe offsets swap), and the three result bits 8/0x20/0x10
 * -> 0x40/0x100/0x80. Everything else, including the frame, is unchanged. */
s32 func_8010B860(struct PositionState *arg0) {
    f32 *temp_v0;
    f32 sp58;
    Vector sp4C;
    Vector sp40;
    Vector sp34;

    temp_v0 = arg0->scale;
    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    sp34.x = BD00.backX;
    sp34.y = 0.0f;
    sp34.z = BD00.backZ;
    sp4C.x = arg0->kirbyFootPos[0];
    sp4C.y = temp_v0[0] + arg0->kirbyFootPos[1];
    sp40.x = sp4C.x + BD00.headOffX;
    sp4C.z = arg0->kirbyFootPos[2];
    sp40.z = sp4C.z + BD00.headOffZ;
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x40;
        return 1;
    }
    sp4C.x = sp4C.x + BD00.footOffX;
    sp4C.z = sp4C.z + BD00.footOffZ;
    sp4C.y = temp_v0[2] + arg0->kirbyFootPos[1];
    sp40.y = sp4C.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x100;
        return 1;
    }
    sp40.y = temp_v0[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp40.y;
    if (func_8010423C(&sp4C, &sp40, &sp34, 0, 0, 0, 0, 0) != 0) {
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x80;
        return 1;
    }
    return 0;
}
#elif defined(PORT)
/* Backward contact tag (draft above, completed; func_8010B67C's mirror
 * along the reverse facing): the first probe runs from the raw foot point
 * toward the unkC offset, the second and third from the unk4-shifted point
 * with the end left where the first probe put it, at head then mid height.
 * Tags 0x40/0x100/0x80. */
s32 func_8010B860(struct PositionState *arg0) {
    Vector a, b;
    struct Normal dir;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    dir.x = BD00.backX;
    dir.y = 0.0f;
    dir.z = BD00.backZ;
    a.x = arg0->kirbyFootPos[0];
    a.y = arg0->kirbyFootPos[1] + arg0->scale[0];
    a.z = arg0->kirbyFootPos[2];
    b.x = a.x + BD00.headOffX;
    b.y = a.y;
    b.z = a.z + BD00.headOffZ;
    if (func_8010423C(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x40;
        return 1;
    }
    a.x += BD00.footOffX;
    a.z += BD00.footOffZ;
    a.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    b.y = a.y;
    if (func_8010423C(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x100;
        return 1;
    }
    b.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    a.y = b.y;
    if (func_8010423C(&a, &b, &dir, NULL, NULL, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x80;
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

    BD00.busy = 1;
    BD00.callerTick = arg0->VI_Timer;
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
        D_8012BCA0.flags.f.hits = (D_8012BCA4[-1] >> 0x13) & 0xFE3F;
    }
    BD00.busy = 0;
    arg0->VI_Timer = BD00.tick;
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

    BD00.busy = 1;
    BD00.callerTick = arg0->VI_Timer;
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
        D_8012BCA0.flags.f.hits = temp_v1 & 0xFFF8;
        temp_v1 = D_8012BCA0.flags.w >> 0x13;
    }
    if ((temp_v1 & 0x38) && (D_8012BCCC->normalType & 4)) {
        D_8012BCA0.flags.f.hits = (D_8012BCA0.flags.w >> 0x13) & 0xFFC7;
    }
    BD00.busy = 0;
    arg0->VI_Timer = BD00.tick;
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
#ifdef PORT
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x8000;
#else
        D_8012BCA0.flags.hw = (*(u16 *) &D_8012BCA4[-1] & 7) | 0x8000;
#endif
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
    D_8012BD00.callerTick = arg0->unk58;
    func_80105218(&D_8012BCA0);
    D_8012BCA8 = 0;
    D_8012BCB4 = 0;
    D_8012BCCC = 0;
    D_8012BCC0 = 0;
    func_80104FB8(arg0);
    sp68 = arg0->unk34;
    sp6C = arg0->unk48;
    sp70 = arg0->unk38;
    sp5C = arg0->unk4 + D_8012BD00.footOffX;
    sp60 = arg0->unk8 + arg0->unk18;
    sp64 = arg0->unkC + D_8012BD00.footOffZ;
    if (func_80103930(&sp68, &sp5C, 0, &sp78, &sp50, 0, 0, 0) != 0) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x4020;
        sp50 -= D_8012BD00.footOffX;
        sp54 -= arg0->unk18;
        sp58 -= D_8012BD00.footOffZ;
    }
    sp68 = arg0->unk3C;
    sp70 = arg0->unk40;
    sp5C = arg0->unk4 + D_8012BD00.headOffX;
    sp64 = arg0->unkC + D_8012BD00.headOffZ;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x2100;
        sp50 = sp44 - D_8012BD00.headOffX;
        sp54 = sp48 - arg0->unk18;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.headOffZ;
    }
    sp6C = arg0->unk44;
    sp60 = arg0->unk8 + arg0->unk14;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x480;
        sp50 = sp44 - D_8012BD00.headOffX;
        sp54 = sp48 - arg0->unk14;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.headOffZ;
    }
    sp68 = arg0->unk34;
    sp70 = arg0->unk38;
    sp5C = arg0->unk4 + D_8012BD00.footOffX;
    sp64 = arg0->unkC + D_8012BD00.footOffZ;
    if ((func_80103930(&sp68, &sp5C, 0, &sp74, &sp44, 0, 0, 0) != 0) && (sp74 < sp78)) {
        D_8012BCA0 = (D_8012BCA0 & 7) | 0x810;
        sp50 = sp44 - D_8012BD00.footOffX;
        sp54 = sp48 - arg0->unk14;
        sp78 = sp74;
        sp58 = sp4C - D_8012BD00.footOffZ;
    }
    if ((D_8012BCA0 >> 0x13) != 0) {
        arg0->unk4 = sp50.unk0;
        arg0->unk8 = sp50.unk4;
        arg0->unkC = sp50.unk8;
    }
    arg0->unk58 = D_8012BD00.tick;
    return 0;
}
#elif defined(PORT)
/* func_80103930 with pointer-true outs (tails the moving-aware core). */
static s32 pc_probe_3930(Vector *a, Vector *b, struct Normal *norm, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut, u32 *idxOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.ignoreTri = NULL;
    newColState.someNormal = norm;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_80101920;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    return func_80103528(tOut, hitOut, nOut, triOut, idxOut);
}

/* Contact sweep for the moving pass (draft above, completed): stamps the
 * motion window (unk44 = VI timer in, unk40 = VI timer out), clears the
 * result block, then casts path->biased-foot segments in four
 * arrangements, keeping the nearest t; each hit tags a composite class
 * pair in the flags halfword and moves Kirby's feet to the un-biased hit. */
s32 func_8010C274(struct PositionState *arg0) {
    Vector start, end, hit, best;
    f32 bestT = 1.1f;
    f32 t;

    BD00.callerTick = arg0->VI_Timer;
    func_80105218(&D_8012BCA0);
    D_8012BCA0.rec[COL_FLOOR].tri = NULL;
    D_8012BCA0.rec[COL_CEILING].tri = NULL;
    D_8012BCA0.rec[COL_WALL_BACK].tri = NULL;
    D_8012BCA0.rec[COL_WALL_FRONT].tri = NULL;
    func_80104FB8(arg0);
    start.x = arg0->kirbyGroundPath[0];
    start.y = arg0->kirbyHeight[1];
    start.z = arg0->kirbyGroundPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    end.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    end.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (pc_probe_3930(&start, &end, NULL, &bestT, &hit, NULL, NULL, NULL) != 0) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x4020;
        best.x = hit.x - BD00.footOffX;
        best.y = hit.y - arg0->scale[2];
        best.z = hit.z - BD00.footOffZ;
    }
    start.x = arg0->kirbyHeadPath[0];
    start.z = arg0->kirbyHeadPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    end.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    if (pc_probe_3930(&start, &end, NULL, &t, &hit, NULL, NULL, NULL) != 0 && t < bestT) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x2100;
        best.x = hit.x - BD00.headOffX;
        best.y = hit.y - arg0->scale[2];
        best.z = hit.z - BD00.headOffZ;
        bestT = t;
    }
    start.y = arg0->kirbyHeight[0];
    end.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    if (pc_probe_3930(&start, &end, NULL, &t, &hit, NULL, NULL, NULL) != 0 && t < bestT) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x480;
        best.x = hit.x - BD00.headOffX;
        best.y = hit.y - arg0->scale[1];
        best.z = hit.z - BD00.headOffZ;
        bestT = t;
    }
    start.x = arg0->kirbyGroundPath[0];
    start.z = arg0->kirbyGroundPath[1];
    end.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    end.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    if (pc_probe_3930(&start, &end, NULL, &t, &hit, NULL, NULL, NULL) != 0 && t < bestT) {
        D_8012BCA0.flags.hw = (D_8012BCA0.flags.hw & 7) | 0x810;
        best.x = hit.x - BD00.footOffX;
        best.y = hit.y - arg0->scale[1];
        best.z = hit.z - BD00.footOffZ;
        bestT = t;
    }
    if ((D_8012BCA0.flags.w >> 0x13) != 0) {
        arg0->kirbyFootPos[0] = best.x;
        arg0->kirbyFootPos[1] = best.y;
        arg0->kirbyFootPos[2] = best.z;
    }
    arg0->VI_Timer = BD00.tick;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C274.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 66/75, load-CSE residue. Frame is exactly right (0x38) once the m2c
 * "locals" sp2C/sp24/sp20/sp1C are DELETED -- they are IDO's own spill slots for
 * var_f16/var_f14/var_v1 across cosf/sinf, and declaring them too cost 16 bytes
 * and four extra stores. Unlike func_80104FB8, this function stores the four
 * column offsets (+0x04..+0x10) through the &D_8012BD00 base, so the BD00 macro
 * is right here and only the fwdX (+0x14) WRITE needs the separate D_8012BD14
 * extern. Residue: the ROM loads the same
 * word twice -- 0x1C($a0) for the sign test and 0xC($v1) for the value after
 * rebasing to arg0->scale -- and IDO CSEs them into one. Measured and rejected:
 * a distinct struct view over arg0->scale, and assigning var_v1 in both arms;
 * IDO's CSE is address-based, so no source spelling separates them. */
void func_8010C608(struct PositionState *arg0) {
    extern f32 D_8012BD14;
    f32 sp2C;
    f32 *var_v1;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 var_f14;
    f32 var_f16;

    if (arg0->faceAngle[0] < 0.0f) {
        var_v1 = arg0->scale;
        var_f16 = var_v1[3] - 0.13f;
    } else {
        var_v1 = arg0->scale;
        var_f16 = var_v1[3] + 0.13f;
    }
    temp_f0 = var_v1[4];
    if (temp_f0 < 0.0f) {
        var_f14 = temp_f0 - 0.13f;
    } else {
        var_f14 = temp_f0 + 0.13f;
    }
    sp2C = cosf(arg0->faceAngle[2]);
    temp_f0_2 = sinf(arg0->faceAngle[2]);
    BD00.footOffX = var_f16 * temp_f0_2;
    BD00.footOffZ = var_f16 * sp2C;
    BD00.headOffX = var_f14 * temp_f0_2;
    BD00.headOffZ = var_f14 * sp2C;
    if (var_v1[3] > 0.0f) {
        D_8012BD14 = temp_f0_2;
        BD00.fwdZ = sp2C;
    } else {
        D_8012BD14 = -temp_f0_2;
        BD00.fwdZ = -sp2C;
    }
    BD00.backX = -BD00.fwdX;
    BD00.backZ = -BD00.fwdZ;
}
#elif defined(PORT)
/* Lateral probe basis with the 0.13 widening bias (draft above, named
 * fields): feeds the BD00 offsets the wall-grab and ledge probes read. */
void func_8010C608(struct PositionState *arg0) {
    f32 c = cosf(arg0->faceAngle[2]);
    f32 sn = sinf(arg0->faceAngle[2]);
    f32 f0 = arg0->faceAngle[0] + (arg0->faceAngle[0] < 0.0f ? -0.13f : 0.13f);
    f32 f1 = arg0->faceAngle[1] + (arg0->faceAngle[1] < 0.0f ? -0.13f : 0.13f);

    BD00.footOffX = f0 * sn;
    BD00.footOffZ = f0 * c;
    BD00.headOffX = f1 * sn;
    BD00.headOffZ = f1 * c;
    if (arg0->faceAngle[0] > 0.0f) {
        BD00.fwdX = sn;
        BD00.fwdZ = c;
    } else {
        BD00.fwdX = -sn;
        BD00.fwdZ = -c;
    }
    BD00.backX = -BD00.fwdX;
    BD00.backZ = -BD00.fwdZ;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C608.s")
#endif

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_801047F0's return
 * (beqz $v0 right after the jal) but func_801047F0 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_801047F0 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
    sp40 = sp4C + D_8012BD00.footOffX;
    sp48 = sp54 + D_8012BD00.footOffZ;
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
    sp40 = arg0->unk4 + D_8012BD00.headOffX;
    sp48 = arg0->unkC + D_8012BD00.headOffZ;
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
    if ((D_8012BCA0 >> 0x13) & COLF_WALL_ANY) {
        var_v0 = 1;
    }
    return var_v0;
}
#elif defined(PORT)
/* PORT: six lateral wall probes from the entity position (draft above,
 * verified against asm/nonmatchings/ovl2/ovl2_7/func_8010C734.s): after
 * func_8010C608 refreshes the BD00 direction basis, probe from the foot
 * X/Z at three heights (scale[0], scale[2], scale[1] -- ROM order) toward
 * the primary offset (BD00 +4/+8, bits 1/4/2) and the secondary offset
 * (BD00 +C/+10, bits 8/0x20/0x10), recording each hit in rec[COL_WALL_FRONT] resp.
 * rec[COL_WALL_BACK] of D_8012BCA0 and folding the bit into the flags word with the
 * ROM's halfword store (sh keeps flags.f.rest). Returns 1 when any of the
 * six bits landed. */
/* func_801047F0's C is void: the N64 return was its tail call's $v0. This
 * wrapper is its body with the func_80103B58 result kept (same pattern as
 * pc_probe_f58 above). */
static s32 pc_probe_47f0(Vector *a, Vector *b, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut,
                         s32 *typeOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_8010217C;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    return func_80103B58(tOut, hitOut, nOut, triOut, (u32 *) typeOut);
}

s32 func_8010C734(struct PositionState *arg0) {
    static const u8 heightIdx[3] = { 0, 2, 1 };
    static const u16 hitBit[2][3] = { { 1, 4, 2 }, { 8, 0x20, 0x10 } };
    Vector a, b;
    s32 pass, k;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    for (pass = 0; pass < 2; pass++) {
        struct ColRecord *rec = &D_8012BCA0.rec[pass == 0 ? 2 : 3];

        a.x = arg0->kirbyFootPos[0];
        a.z = arg0->kirbyFootPos[2];
        b.x = a.x + (pass == 0 ? BD00.footOffX : BD00.headOffX);
        b.z = a.z + (pass == 0 ? BD00.footOffZ : BD00.headOffZ);
        for (k = 0; k < 3; k++) {
            a.y = arg0->kirbyFootPos[1] + arg0->scale[heightIdx[k]];
            b.y = a.y;
            if (pc_probe_47f0(&a, &b, NULL, NULL, &rec->norm, &rec->tri, &rec->type) != 0) {
                D_8012BCA0.flags.hw = ((((u32) D_8012BCA0.flags.w >> 0x13) | hitBit[pass][k]) * 8)
                                    | (D_8012BCA0.flags.hw & 7);
            }
        }
    }
    return ((D_8012BCA0.flags.w >> 0x13) & COLF_WALL_ANY) ? 1 : 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010C734.s")
#endif

#ifdef MIPS_TO_C
/* BLOCKED (same class as func_80104D2C): the ROM tests func_801048A4's return
 * (beqz $v0 right after the jal) but func_801048A4 is defined `void` earlier in
 * this TU. IDO rejects an in-body redeclaration and a cast-call emits jalr,
 * not jal, so there is no fix inside one function body. Unblock = retype
 * func_801048A4 to s32 at FILE SCOPE, then re-baseline the TU (check_tu_size.py
 * + sha1) since it changes every existing call site. */

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
    sp40 = sp4C + D_8012BD00.footOffX;
    sp48 = sp54 + D_8012BD00.footOffZ;
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
    sp40 = arg0->unk4 + D_8012BD00.headOffX;
    sp48 = arg0->unkC + D_8012BD00.headOffZ;
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
    if ((D_8012BCA0 >> 0x13) & COLF_WALL_ANY) {
        var_v0 = 1;
    }
    return var_v0;
}
#elif defined(PORT)
/* PORT: identical to func_8010C734's arm above (verified against
 * asm/nonmatchings/ovl2/ovl2_7/func_8010CABC.s), except the probes run
 * through func_801048A4's collision predicates (func_801021BC) instead of
 * func_801047F0's. */
/* func_801048A4's C is void: the N64 return was its tail call's $v0. This
 * wrapper is its body with the func_80103B58 result kept. */
static s32 pc_probe_48a4(Vector *a, Vector *b, f32 *tOut, Vector *hitOut,
                         struct Normal **nOut, struct CollisionTriangle **triOut,
                         s32 *typeOut) {
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801023FC;
    newColState.acceptTri = func_801021BC;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    return func_80103B58(tOut, hitOut, nOut, triOut, (u32 *) typeOut);
}

s32 func_8010CABC(struct PositionState *arg0) {
    static const u8 heightIdx[3] = { 0, 2, 1 };
    static const u16 hitBit[2][3] = { { 1, 4, 2 }, { 8, 0x20, 0x10 } };
    Vector a, b;
    s32 pass, k;

    func_80105218(&D_8012BCA0);
    func_8010C608(arg0);
    for (pass = 0; pass < 2; pass++) {
        struct ColRecord *rec = &D_8012BCA0.rec[pass == 0 ? 2 : 3];

        a.x = arg0->kirbyFootPos[0];
        a.z = arg0->kirbyFootPos[2];
        b.x = a.x + (pass == 0 ? BD00.footOffX : BD00.headOffX);
        b.z = a.z + (pass == 0 ? BD00.footOffZ : BD00.headOffZ);
        for (k = 0; k < 3; k++) {
            a.y = arg0->kirbyFootPos[1] + arg0->scale[heightIdx[k]];
            b.y = a.y;
            if (pc_probe_48a4(&a, &b, NULL, NULL, &rec->norm, &rec->tri, &rec->type) != 0) {
                D_8012BCA0.flags.hw = ((((u32) D_8012BCA0.flags.w >> 0x13) | hitBit[pass][k]) * 8)
                                    | (D_8012BCA0.flags.hw & 7);
            }
        }
    }
    return ((D_8012BCA0.flags.w >> 0x13) & COLF_WALL_ANY) ? 1 : 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010CABC.s")
#endif

s32 func_8010CE44(struct PositionState *arg0, f32 arg1) {
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    struct Normal *sp3C;
    s32 sp38;

    func_80104FB8(arg0);
    sp58.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp58.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp58.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp4C.x = (BD00.fwdX * arg1) + sp58.x;
    sp4C.y = sp58.y;
    sp4C.z = (BD00.fwdZ * arg1) + sp58.z;
    sp40.x = BD00.fwdX;
    sp40.z = BD00.fwdZ;
    sp40.y = 0.0f;
    if (func_8010423C(&sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->kirbyFootPos[0] = sp64.x - BD00.footPushX;
        arg0->kirbyFootPos[2] = sp64.z - BD00.footPushZ;
        return 1;
    }
    sp38 = 0;
    sp58.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp58.y;
    if (func_8010423C(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        sp38 = 1;
    } else {
        sp58.y = arg0->scale[2] + arg0->kirbyFootPos[1];
        sp4C.y = sp58.y;
        if (func_8010423C(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
            sp38 = 1;
        }
    }
    if (sp38 != 0) {
        sp58.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp4C.y = sp58.y;
        if (func_801057C4(sp3C, &sp58, &sp4C, &sp64) != 0) {
            if (sp4C.x < sp58.x) {
                if ((sp58.x < sp64.x) || (sp64.x < sp4C.x)) {
                    return 0;
                }
            } else if ((sp64.x < sp58.x) || (sp4C.x < sp64.x)) {
                return 0;
            }
            if (sp4C.z < sp58.z) {
                if ((sp58.z < sp64.z) || (sp64.z < sp4C.z)) {
                    return 0;
                }
            } else if ((sp64.z < sp58.z) || (sp4C.z < sp64.z)) {
                return 0;
            }
            arg0->kirbyFootPos[0] = sp64.x - BD00.footPushX;
            arg0->kirbyFootPos[2] = sp64.z - BD00.footPushZ;
            return 1;
        }
    }
    return 0;
}

s32 func_8010D138(struct PositionState *arg0, f32 arg1) {
    Vector sp64;
    Vector sp58;
    Vector sp4C;
    Vector sp40;
    struct Normal *sp3C;
    s32 sp38;

    func_80104FB8(arg0);
    sp58.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp58.y = arg0->scale[0] + arg0->kirbyFootPos[1];
    sp58.z = BD00.headOffZ + arg0->kirbyFootPos[2];
    sp4C.x = (BD00.backX * arg1) + sp58.x;
    sp4C.y = sp58.y;
    sp4C.z = (BD00.backZ * arg1) + sp58.z;
    sp40.x = BD00.backX;
    sp40.z = BD00.backZ;
    sp40.y = 0.0f;
    if (func_8010423C(&sp58, &sp4C, &sp40, 0, &sp64, 0, 0, 0) != 0) {
        arg0->kirbyFootPos[0] = sp64.x - BD00.headPushX;
        arg0->kirbyFootPos[2] = sp64.z - BD00.headPushZ;
        return 1;
    }
    sp38 = 0;
    sp58.y = arg0->scale[1] + arg0->kirbyFootPos[1];
    sp4C.y = sp58.y;
    if (func_8010423C(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        sp38 = 1;
    } else {
        sp58.y = arg0->scale[2] + arg0->kirbyFootPos[1];
        sp4C.y = sp58.y;
        if (func_8010423C(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
            sp38 = 1;
        }
    }
    if (sp38 != 0) {
        sp58.y = arg0->scale[0] + arg0->kirbyFootPos[1];
        sp4C.y = sp58.y;
        if (func_801057C4(sp3C, &sp58, &sp4C, &sp64) != 0) {
            if (sp4C.x < sp58.x) {
                if ((sp58.x < sp64.x) || (sp64.x < sp4C.x)) {
                    return 0;
                }
            } else if ((sp64.x < sp58.x) || (sp4C.x < sp64.x)) {
                return 0;
            }
            if (sp4C.z < sp58.z) {
                if ((sp58.z < sp64.z) || (sp64.z < sp4C.z)) {
                    return 0;
                }
            } else if ((sp64.z < sp58.z) || (sp4C.z < sp64.z)) {
                return 0;
            }
            arg0->kirbyFootPos[0] = sp64.x - BD00.headPushX;
            arg0->kirbyFootPos[2] = sp64.z - BD00.headPushZ;
            return 1;
        }
    }
    return 0;
}

/* FACTORY: 69/142, frame+stack offsets exact; residue is IDO CSEing &sp3C into $v1 and spilling it
   at 0x30 where the ROM recomputes `addiu $tN,$sp,0x3C` per block, which rotates $v1/$t0 and the top-block
   f4/f6/f18 loads. goto form (not if/else) is required: it took this from 89 to 69. */
#ifdef MIPS_TO_C
/* FACTORY: 69/142, register-name + scheduling residue. Frame (0x78) and every stack
 * slot match, including arg1's home at 0x74 -- note arg1 is an f32 SECOND parameter
 * behind a pointer, so o32 passes it in an integer register, not $f14. Residue: ROM
 * keeps &D_8012BD00 in $v1 and rematerialises `addiu $t7, $sp, 0x3C` before each of
 * the two calls, while IDO here picks $t0/$v1 and spills the address to 0x30.
 * Measured and rejected: swapping the `sp58.y + arg1` operands (69 -> 70) and hoisting
 * `sp4C.x = sp58.x` above it (69 -> 104). */
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
    sp58.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp38 = 0;
    sp58.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp58.z = BD00.headOffZ + arg0->kirbyFootPos[2];
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
#elif defined(PORT)
/* Snap-down within a margin (draft above, completed): a center upward cast
 * from mid height to mid+arg1 snaps the feet to the hit; otherwise the two
 * lateral probes may supply a plane whose height at the raw foot point
 * lies inside [mid, mid+arg1]. */
s32 func_8010D42C(struct PositionState *arg0, f32 arg1) {
    Vector a, b, hit;
    struct Normal dir;
    struct Normal *n;
    f32 lo, hi, py;
    s32 got;

    func_80104FB8(arg0);
    dir.x = 0.0f;
    dir.y = 1.0f;
    dir.z = 0.0f;
    a.x = arg0->kirbyFootPos[0];
    a.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    a.z = arg0->kirbyFootPos[2];
    lo = a.y;
    hi = a.y + arg1;
    b.x = a.x;
    b.y = hi;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, &hit, NULL, NULL, NULL) != 0) {
        arg0->kirbyFootPos[1] = (hit.y - arg0->scale[1]) - 0.1f;
        return 1;
    }
    got = 0;
    a.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    a.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    b.x = a.x;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, &n, NULL, NULL) != 0) {
        got = 1;
    } else {
        a.x = arg0->kirbyFootPos[0] + BD00.headOffX;
        a.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
        b.x = a.x;
        b.z = a.z;
        if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, &n, NULL, NULL) != 0) {
            got = 1;
        }
    }
    if (got != 0) {
        py = -((n->x * arg0->kirbyFootPos[0]) + (n->z * arg0->kirbyFootPos[2]) + n->originOffset) / n->y;
        if (py <= hi && lo <= py) {
            arg0->kirbyFootPos[1] = (py - arg0->scale[1]) - 0.1f;
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
/* FACTORY: 69/142 -- EXACT CLONE of func_8010D42C, identical residue. Substitution
 * table: probe direction 1.0f -> -1.0f, scale[1] -> scale[2], `sp58.y + arg1` ->
 * `- arg1`, the two `- 0.1f` -> `+ 0.1f`, and the acceptance window compares reverse
 * (sp4C.y <= t <= sp58.y). The goto form is load-bearing here as on the twin.
 * NOTE: this site's PORT arm was RECONSTRUCTED from func_8010D42C's PORT arm through
 * the same table after an edit-script accident deleted the original -- worth a human
 * eye on the PC side even though it compiles. */
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
    sp58.x = BD00.footOffX + arg0->kirbyFootPos[0];
    sp38 = 0;
    sp58.z = BD00.footOffZ + arg0->kirbyFootPos[2];
    sp4C.x = sp58.x;
    sp4C.z = sp58.z;
    if (func_80103EA0(&sp58, &sp4C, &sp40, 0, 0, &sp3C, 0, 0) != 0) {
        goto block_5;
    }
    sp58.x = BD00.headOffX + arg0->kirbyFootPos[0];
    sp58.z = BD00.headOffZ + arg0->kirbyFootPos[2];
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
#elif defined(PORT)
/* Snap-UP within a margin: the ceiling-side mirror of func_8010D42C -- the
 * cast runs downward (dir.y = -1) from head height to head-arg1, the feet
 * are pushed to hit + 0.1f, and the acceptance window is [mid-arg1, mid].
 * RECONSTRUCTED from func_8010D42C's PORT arm via the clone substitution
 * table after an edit-script accident dropped the original; semantics are
 * the twin's, so re-check against the PC build before relying on it. */
s32 func_8010D668(struct PositionState *arg0, f32 arg1) {
    Vector a, b, hit;
    struct Normal dir;
    struct Normal *n;
    f32 lo, hi, py;
    s32 got;

    func_80104FB8(arg0);
    dir.x = 0.0f;
    dir.y = -1.0f;
    dir.z = 0.0f;
    a.x = arg0->kirbyFootPos[0];
    a.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    a.z = arg0->kirbyFootPos[2];
    lo = a.y;
    hi = a.y - arg1;
    b.x = a.x;
    b.y = hi;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, &hit, NULL, NULL, NULL) != 0) {
        arg0->kirbyFootPos[1] = (hit.y - arg0->scale[2]) + 0.1f;
        return 1;
    }
    got = 0;
    a.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    a.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    b.x = a.x;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, &n, NULL, NULL) != 0) {
        got = 1;
    } else {
        a.x = arg0->kirbyFootPos[0] + BD00.headOffX;
        a.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
        b.x = a.x;
        b.z = a.z;
        if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, &n, NULL, NULL) != 0) {
            got = 1;
        }
    }
    if (got != 0) {
        py = -((n->x * arg0->kirbyFootPos[0]) + (n->z * arg0->kirbyFootPos[2]) + n->originOffset) / n->y;
        if (hi <= py && py <= lo) {
            arg0->kirbyFootPos[1] = (py - arg0->scale[2]) + 0.1f;
            return 1;
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/ovl2_7/func_8010D668.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 37/97, $v0 rebase + FP register rotation. Frame (0x60) and every stack slot
 * match. The lever that got it there is LEVERS 12, and it is worth recording precisely:
 * declaring the lone scalar sp34 BEFORE the three Vectors (not after) moved the whole
 * block from 0x38-0x60 down to the ROM's 0x34-0x5C -- 52/97 -> 37/97. Adding pads
 * instead only grew the frame 0x60 -> 0x68 in either position. Residue: the ROM holds
 * $v0 = arg0 + 0x10 for its TWO scale reads, while IDO folds them into $s0
 * displacements and spends $v0 on &sp5C; two uses is apparently below IDO's threshold
 * here (three were enough in func_80105284), and moving the assignment next to either
 * use changes nothing. */
s32 func_8010D8A4(struct PositionState *arg0) {
    s32 sp34;
    Vector sp50;
    Vector sp44;
    Vector sp38;
    f32 *temp_v0;

    func_80104FB8(arg0);
    sp38.x = 0.0f;
    sp38.z = 0.0f;
    sp38.y = -1.0f;
    temp_v0 = arg0->scale;
    sp50.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    sp50.y = arg0->kirbyFootPos[1] + temp_v0[1];
    sp44.x = sp50.x;
    sp50.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    sp44.z = sp50.z;
    sp44.y = (arg0->kirbyFootPos[1] + temp_v0[2]) - 0.2f;
    if ((func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) &&
        (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    sp50.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    sp50.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    sp44.x = sp50.x;
    sp44.z = sp50.z;
    if ((func_80103EA0(&sp50, &sp44, &sp38, 0, 0, 0, &sp34, 0) != 0) &&
        (func_80102324(sp34, 0, 0, 0) == 0)) {
        return 0;
    }
    return 1;
}
#elif defined(PORT)
/* Ledge headroom check (draft above, completed): after refreshing the BD00
 * basis, drop two short casts between mid and head height at the two
 * lateral offsets; a hit whose triangle fails the func_80102324 filter
 * means blocked (0), clear otherwise (1). */
s32 func_8010D8A4(struct PositionState *arg0) {
    Vector a, b;
    struct Normal dir;
    struct CollisionTriangle *tri;

    func_80104FB8(arg0);
    dir.x = 0.0f;
    dir.y = -1.0f;
    dir.z = 0.0f;
    a.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    a.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    a.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    b.x = a.x;
    b.y = (arg0->kirbyFootPos[1] + arg0->scale[2]) - 0.2f;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, NULL, &tri, NULL) != 0 &&
        func_80102324(tri, NULL, NULL, NULL) == 0) {
        return 0;
    }
    a.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    a.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
    b.x = a.x;
    b.z = a.z;
    if (pc_probe_ea0(&a, &b, &dir, NULL, NULL, NULL, &tri, NULL) != 0 &&
        func_80102324(tri, NULL, NULL, NULL) == 0) {
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
    sp50.x = arg0->kirbyFootPos[0] + BD00.footOffX;
    sp50.y = arg0->kirbyFootPos[1] + arg0->scale[2];
    sp44.x = sp50.x;
    sp50.z = arg0->kirbyFootPos[2] + BD00.footOffZ;
    sp44.y = arg0->kirbyFootPos[1] + arg0->scale[1];
    sp44.z = sp50.z;
    if (func_80103EA0(&sp50, &sp44, (struct Normal *) &sp38, 0, 0, 0, 0, 0) != 0) {
        return 1;
    }
    sp50.x = arg0->kirbyFootPos[0] + BD00.headOffX;
    sp50.z = arg0->kirbyFootPos[2] + BD00.headOffZ;
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

    BD00.tick = 0;
    BD00.busy = 0;
    D_8012BD4C = D_8012BD50;
    for (i = 0; i < 31; i++) {
        D_8012BD50[i].unk0 = (u32) &D_8012BD50[i + 1];
    }
    D_8012BD50[i].unk0 = 0;
}

void func_8010DD8C(void) {
    BD00.tick++;
}

#ifdef MIPS_TO_C
/* FACTORY: 98/126, whole-function register permutation ($a2<->$v1, $v0<->$v1,
 * $t0<->$a1, $t3<->$t1). The instruction SEQUENCE is 1:1 with the ROM and the
 * count matches exactly; only the register names differ, so every word reads as
 * a diff. Written to the quality bar rather than from m2c: this is the water-volume
 * lookup -- an upper-bound binary search over WaterData (sorted by Pos1 = x start),
 * then per candidate an x-max / y-range box test and an all-planes-inside test
 * against Water_Normals, appending the record and its source id (0x14 = static mesh,
 * otherwise the dynamic collider index) to the result block's water annex. That annex
 * is the three record pointers at &D_8012BCA0+0x40 and three ids at +0x4C, just past
 * rec[5]; struct CollisionResult does not declare them on the N64 side and adding them would
 * be a file-scope change, so the draft views them through a local WaterAnnex struct
 * instead of doing pointer arithmetic at each store. arg0 likewise stays `void *`
 * because the file-scope declaration says so; it is bound once to a typed `pos`. */
/* arg0 stays `void *` because the file-scope declaration above says so and
 * re-typing it would be a file-scope change; bind it once and use `pos`. */
void func_8010DDA4(void *arg0, s32 sourceId) {
    Vector *pos = arg0;
    /* The result block's water annex: the ROM writes three record pointers at
     * +0x40 and their three source ids at +0x4C, just past struct CollisionResult's
     * rec[5]. Viewed through a local struct so the two arrays stay typed. */
    struct WaterAnnex {
        struct WaterData *rec[COL_WALL_BACK];
        s32 src[3];
    };
    struct WaterAnnex *annex = (struct WaterAnnex *) ((u8 *) &D_8012BCA0 + 0x40);
    struct vCollisionHeader *header = D_8012BD48->unk0;
    struct WaterData *water = header->header.WaterData;
    struct WaterData *rec;
    struct Normal *plane;
    u32 waterCount;
    u32 searchEnd;
    u32 lo;
    u32 hi;
    u32 mid;
    u32 index;
    u32 planeCount;
    u32 inside;

    if (water == NULL) {
        return;
    }
    if (pos->x < water[0].Pos1) {
        return;
    }
    waterCount = header->header.Len_WaterData;
    lo = 0;
    hi = waterCount;
    if (water[waterCount - 1].Pos1 <= pos->x) {
        searchEnd = waterCount;
    } else {
        for (;;) {
            mid = (lo + hi) >> 1;
            if (water[mid].Pos1 <= pos->x) {
                if (pos->x < water[mid + 1].Pos1) {
                    searchEnd = mid + 1;
                    break;
                }
                lo = mid;
            } else {
                hi = mid;
            }
        }
    }
    if (searchEnd == 0) {
        return;
    }
    rec = water;
    for (index = 0; index != searchEnd; index++, rec++) {
        if (pos->x <= rec->Pos2 && rec->Pos3 <= pos->y && pos->y <= rec->Pos4) {
            plane = &D_8012BD48->unk0->header.Water_Normals[rec->Norm_Array_Index];
            planeCount = rec->Num_Normals;
            inside = 0;
            while (inside < planeCount) {
                if (0.0f < (plane->x * pos->x) + (plane->y * pos->y) + (plane->z * pos->z) +
                           plane->originOffset) {
                    break;
                }
                inside++;
                plane++;
            }
            if (inside == planeCount) {
                annex->rec[D_8012BD48->unk4] = rec;
                annex->src[D_8012BD48->unk4] = sourceId;
                D_8012BD48->unk4++;
            }
        }
    }
}
#elif defined(PORT)
/* Water-volume lookup (draft above). Upper-bound binary search over the
 * WaterData records (sorted by X start), then per candidate an X-max and
 * Y-range check and an all-planes inside test against Water_Normals; a hit
 * appends the record and its source id (0x14 = static mesh, else dynamic
 * collider index) to the result block's water annex, 3 slots. All data is
 * the loaded collision asset at native struct layout. */
void func_8010DDA4(void *arg0, s32 arg1) {
    f32 *pos = arg0;
    struct vCollisionHeader *hdr = D_8012BD48->unk0;
    struct WaterData *water = hdr->header.WaterData;
    u32 count = hdr->header.Len_WaterData;
    u32 n, i;

    if (water == NULL || count == 0 || pos[0] < water[0].Pos1) {
        return;
    }
    if (water[count - 1].Pos1 <= pos[0]) {
        n = count;
    } else {
        u32 lo = 0, hi = count;

        for (;;) {
            u32 mid = (lo + hi) >> 1;

            if (water[mid].Pos1 <= pos[0]) {
                if (pos[0] < water[mid + 1].Pos1) {
                    n = mid + 1;
                    break;
                }
                lo = mid;
            } else {
                hi = mid;
            }
        }
    }
    for (i = 0; i < n; i++) {
        struct WaterData *rec = &water[i];

        if (pos[0] <= rec->Pos2 && rec->Pos3 <= pos[1] && pos[1] <= rec->Pos4) {
            struct Normal *pl = &hdr->header.Water_Normals[rec->Norm_Array_Index];
            u32 nplanes = rec->Num_Normals;
            u32 inside = 0;

            while (inside < nplanes) {
                if (pl->x * pos[0] + pl->y * pos[1] + pl->z * pos[2] + pl->originOffset > 0.0f) {
                    break;
                }
                inside++;
                pl++;
            }
            if (inside == nplanes && D_8012BD48->unk4 < 3) {
                D_8012BCA0.waterRec[D_8012BD48->unk4] = rec;
                D_8012BCA0.waterSrc[D_8012BD48->unk4] = arg1;
                D_8012BD48->unk4++;
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
/* FACTORY: 68/134, register permutation ($s3<->$s7, $v0<->$v1) plus one mul.s
 * operand order (invariant). Instruction sequence otherwise tracks the ROM 1:1.
 * Written to the quality bar: real parameter names (volume/meshId/from/to/
 * planeOut/pointOut) and typed locals rather than m2c's void*/temp_fN forms.
 * One deliberate divergence from the listing, kept for readability: the ROM
 * reaches the collider's header as a single relocation `%lo(D_8012D94C)($v1)`
 * after scaling meshId by 0xB8, i.e. the +4 is baked into the symbol. The draft
 * writes the same address as `D_8012D948[meshId].unk4`, which IDO emits as
 * `lw $v0, 4($v0)` -- one load either way, and the array-and-field spelling is
 * the one a reader wants. Only the permuter needs the other form. */
/* Water surface crossing test: for the water volume `volume` (belonging to mesh
 * `meshId` -- 0x14 means the static level mesh, otherwise a dynamic collider),
 * find the volume plane that the from->to segment crosses whose intersection
 * point lies inside every other plane of the volume. Outputs that plane and the
 * point. */
s32 func_8010E048(struct WaterData *volume, s32 meshId, Vector *from, Vector *to,
                  struct Normal **planeOut, Vector *pointOut) {
    extern struct struct8011BA10_temp D_8012D948[];
    struct vCollisionHeader *header;
    struct Normal *planes;
    struct Normal *plane;
    struct Normal *other;
    u32 planeIndex;
    u32 insideCount;
    u16 planeCount;
    f32 nx;
    f32 ny;
    f32 nz;
    f32 offset;
    s32 fromSide;
    s32 toSide;

    if (meshId != 0x14) {
        header = D_8012D948[meshId].unk4;
    } else {
        header = D_80129410;
    }
    planes = &header->header.Water_Normals[volume->Norm_Array_Index];
    plane = planes;
    planeIndex = 0;
    if (volume->Num_Normals != 0) {
        do {
            nx = plane->x;
            ny = plane->y;
            nz = plane->z;
            offset = plane->originOffset;
            fromSide = 0;
            toSide = 0;
            other = planes;
            insideCount = 0;
            if (((nx * from->x) + (ny * from->y) + (nz * from->z) + offset) > 0.0f) {
                fromSide = 1;
            }
            if (((nx * to->x) + (ny * to->y) + (nz * to->z) + offset) > 0.0f) {
                toSide = 1;
            }
            if (fromSide != toSide) {
                func_801057C4(plane, from, to, pointOut);
                planeCount = volume->Num_Normals;
                if (planeCount != 0) {
                    do {
                        if (plane != other &&
                            ((other->x * pointOut->x) + (other->y * pointOut->y) +
                             (other->z * pointOut->z) + other->originOffset) > 0.0f) {
                            break;
                        }
                        insideCount++;
                        other++;
                    } while (insideCount < planeCount);
                }
                if (insideCount == planeCount) {
                    *planeOut = plane;
                    return 1;
                }
            }
            planeIndex++;
            plane++;
        } while (planeIndex < volume->Num_Normals);
    }
    return 0;
}
#elif defined(PORT)
/* Water surface crossing test (draft above, completed): for the water
 * volume arg0 (from mesh arg1 -- 0x14 static, else the dynamic collider),
 * find the water plane the arg2->arg3 segment crosses whose intersection
 * point lies inside every other plane of the volume; out the plane and the
 * point. */
s32 func_8010E048(struct WaterData *arg0, s32 arg1, Vector *arg2, Vector *arg3,
                  struct Normal **arg4, Vector *arg5) {
    extern struct struct8011BA10_temp D_8012D948[];
    struct vCollisionHeader *vh;
    struct Normal *norms;
    u32 i, j;

    if (arg1 != 0x14) {
        vh = D_8012D948[arg1].unk4;
    } else {
        vh = D_80129410;
    }
    norms = &vh->header.Water_Normals[arg0->Norm_Array_Index];
    for (i = 0; i < arg0->Num_Normals; i++) {
        struct Normal *n = &norms[i];
        s32 side0 = ((n->x * arg2->x) + (n->y * arg2->y) + (n->z * arg2->z) + n->originOffset) > 0.0f;
        s32 side1 = ((n->x * arg3->x) + (n->y * arg3->y) + (n->z * arg3->z) + n->originOffset) > 0.0f;

        if (side0 != side1) {
            func_801057C4(n, arg2, arg3, arg5);
            for (j = 0; j < arg0->Num_Normals; j++) {
                struct Normal *o = &norms[j];

                if (o != n &&
                    ((o->x * arg5->x) + (o->y * arg5->y) + (o->z * arg5->z) + o->originOffset) > 0.0f) {
                    break;
                }
            }
            if (j == arg0->Num_Normals) {
                *arg4 = n;
                return 1;
            }
        }
    }
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
