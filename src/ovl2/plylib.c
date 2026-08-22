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
#include "unk_structs/D_80129114.h"
#include "ovl2/ovl2_3.h"

// ovl7_5.h
void func_801AC4EC_ovl7(GObj *);

struct UnkStruct80123004 {
    s32 unk0;
    s32 unk4;
};

struct UnkPos4C {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
};

GObj *func_800A8234(s32, s32, s32);
void func_800A22D4(u32);
extern u32 D_800D6B44;

u32 func_800F8560(void);
void func_8016BF60_ovl3(s32);
void func_801F0050_ovl10(s32);
void func_80111534(s32);
void func_800B19F4(s32 flags, s32 track);
void func_80177098_ovl3(struct GObj *);
void func_800A9F98(s32 arg0, f32 arg1);
void func_800AA0C4(s32 arg0, f32 arg1);
void func_80122CE8(void);
void func_80120AF8(Vector *arg0);
void func_8001E344(Vector *arg0, struct Unk80129114_4_4 *arg1, f32 arg2);
f32 func_800F9828(s32, s32);

struct UnkStruct8011D858 {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
};
s32 func_801BBFE4_ovl7(s32);
s32 func_801BC27C_ovl7(s32, s32);
void func_800A7F74(u32 arg0, u32 arg1, u16 arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800A8100(s32, s32, s32, struct DObj *);
extern s32 D_8012E80C;
extern u16 D_8012E8CA;
extern u32 D_8012E7DC;
extern s32 D_8012E860;
extern f32 D_8012E904;
extern f32 D_8012E908;
extern f32 D_8012E90C;
extern s32 D_8012EADC;
extern GObj *D_8012EAE0;
void func_801693C4(s32, s32 *);
extern f32 D_80128440[][7];
extern u16 D_80128444[][14];
extern u16 D_80128446[][14];
extern u16 D_80128448[][14];
extern u16 D_8012844A[][14];
extern u16 D_8012844C[][14];
extern u16 D_8012844E[][14];
extern u32 D_8012E7E8;
extern u32 D_8022947C;
extern u32 D_8016C510;
extern struct GObjProcess *gEntityGObjProcessArray[];

// ovl1 bss
extern s32 D_800E85A0[];
extern s32 D_800D6B54;
extern s32 D_800D6B58;
extern u32 D_800D7010;

// ovl2 data
extern u8 D_80126E20[];
extern s32 D_80126EF8[][0x90 / 4];

// ovl2 bss
extern u8 D_8012E7D7;
extern u32 D_801290D0;

struct UnkStruct800D6F18 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
};
extern s32 D_800D6F34;
extern s32 D_800D6F38;
extern s32 D_800BE4F8;
extern u32 D_800D7088[];
extern u16 D_800D6FB0;
extern u16 D_800D6FB2;
extern u16 D_800D6F58[];
extern s32 D_801926E8;
extern s32 D_80190358;
extern s32 D_80192F64;
extern s32 D_801923DC;

struct UnkStruct801290D8 {
    u8 filler[0x14];
    u16 unk14;
};
extern struct UnkStruct801290D8 *D_801290D8;

struct DestructAnimBank {
    union AnimCmd ***unk0;
    union AnimCmd ****unk4;
};
extern struct DestructAnimBank D_8012E7B0;

f32 func_800F951C(s32 arg0, f32 arg1, s32 arg2, f32 arg3);
void func_800FD754(s32 *arg0, f32 arg1, f32 arg2, f32 arg3);
void animSetModelAnimation(struct DObj *dobj, union AnimCmd *animList, f32 time);
void animSetTextureAnimation(struct MObj *mobj, union AnimCmd *animList, f32 time);
void func_8012307C(s32 arg0, s32 arg1, f32 arg2, s32 arg3);
void func_80122F08(u32 arg0);
#ifdef PORT
/* The anim engine invokes GObj.onAnimate through a
 * (struct DObj *, s32, f32) pointer (include/GObj.h, src/main/anim.c). On
 * MIPS o32 a u32 and an f32 third parameter arrive in the same register, so
 * the ROM declaration below is harmless there; on x86-64 the f32 travels in
 * xmm0 while a u32 parameter would read a garbage integer register. The
 * PORT definition therefore takes f32 and reinterprets the bits where the
 * N64 code treated them as a raw word. */
void func_8011D0FC(struct DObj *ln, s32 arg1, f32 arg2);
#else
void func_8011D0FC(struct DObj *ln, s32 arg1, f32 arg2);
#endif

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

struct DObj *func_8011BABC(struct CollisionTriangle *tri, u32 arg1) {
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

struct DObj *func_8011BB98(struct CollisionTriangle *tri, u32 arg1) {
    u32 i;
    struct DynGeo_List *destructGroups;
    struct DObj *temp_s0;
    struct vCollisionHeader *vColHeader;
    u16 *destrucIndex;
    u32 phi_t1;
    Vector sp44;
    Vector sp38;
    Vector sp2C;

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
    temp_s0->flags = 2;

    if (tri->collisionParameter == 0) {
        utilGetTransformSRT(&sp44, temp_s0);
        func_800FD754(NULL, sp44.x, sp44.y, sp44.z);
    } else {
        utilGetTransformSRT(&sp38, temp_s0);
        func_800A4DB8(&sp2C, temp_s0);
        func_800A802C(NULL, 3, 54, &sp38, &sp2C);
    }
    return temp_s0;
}

void func_8011BD08(struct CollisionTriangle *tri, u32 arg1) {
    func_8011BB98(tri, arg1);
    play_sound(SOUND_BGBRAKE1);
}

struct DObj *func_8011BD30(struct CollisionTriangle *tri, u32 arg1) {
    u32 i;
    struct DynGeo_List *destructGroups;
    struct vCollisionHeader *vColHeader;
    u16 *destrucIndex;
    u32 phi_a3;
    u16 idx;
    struct DObj *sp2C;
    union AnimCmd *anim;
    union AnimCmd **list;
    struct MObj *mobj;

    if (arg1 != 20) {
        vColHeader = D_8012D948[arg1].unk4;
        phi_a3 = D_8012D948[arg1].unk1;
    } else {
        vColHeader = D_8012940C.unk4;
        phi_a3 = D_801290D0;
    }

    destructGroups = &vColHeader->header.Destructable_Groups[tri->collisionIndex];

    destrucIndex = &vColHeader->header.Destructable_Indices[destructGroups->Index_To_Dynamic_Geo_Group];

    for (i = 0; i < destructGroups->Num_Dynamic_Geo_Group_Members; i++) {
        vColHeader->header.Triangles[*destrucIndex].collisionParameter = 0;
        destrucIndex++;
    }

    idx = destructGroups->Unk_Index;
    sp2C = D_800DFBD0[phi_a3][idx];
    if (D_8012E7B0.unk0 != NULL) {
        anim = (*D_8012E7B0.unk0)[idx];
        if (anim != NULL) {
            animSetModelAnimation(sp2C, anim, 0.0f);
        }
    }
    if (D_8012E7B0.unk4 != NULL) {
        list = (*D_8012E7B0.unk4)[idx];
        if ((list != NULL) && (*list != NULL)) {
            mobj = sp2C->mobjList;
            if (mobj != NULL) {
                do {
                    if (*list != NULL) {
                        animSetTextureAnimation(mobj, *list, 0.0f);
                    }
                    mobj = mobj->next;
                    list++;
                } while (mobj != NULL);
            }
        }
    }
    return sp2C;
}

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
/* FACTORY: 153/215. Types and the whole 0x100 stack map recovered from the asm, with the record and descriptor given real field names (SweepRec {curPos,nextPos,yaw,desc}; SweepDesc {u8 count, u16 filter2, u16 filter4, u8 flags at +6 -- lbu, not the u16 the PORT arm assumes; SweepEntry *entries}; SweepEntry {baseY,baseR,tipY,tipR} stride 0x10). Three findings worth keeping: the segment counter and index are UNSIGNED (the ROM carries the 0x4F800000 u32->f32 fixup on both, worth 26 words); the step increment happens AFTER the func_801045DC call, in the delay slot of the branch on its result, so it needs a named 'hit' temp (worth 36 words); and 'done' is a full word compared unsigned against the u8 count, not a u8. Residue: a v0/v1 and t6-t9 temp rotation through the three struct copies, and the draft runs 2 words long in the entry-advance tail */
/* Melee sweep-cast walker. arg0 is a track record {curPos, nextPos, yaw,
 * sweep descriptor}; the descriptor lists sweep entries, each of which is
 * cast from a yaw-rotated offset of the base point toward the record's
 * current position in segments of at most 200 units. The first hit ends the
 * entry; descriptor flag 1 restarts the scan from entry 0 until a whole pass
 * reports nothing (the filter halfwords stop the same triangle re-hitting).
 * Returns how many hits were reported. */
s32 func_8011BF4C(struct SweepRec *rec, s32 (*onHit)(struct CollisionTriangle *, u32)) {
    struct SweepEntry {
        /* 0x00 */ f32 baseY;
        /* 0x04 */ f32 baseR;
        /* 0x08 */ f32 tipY;
        /* 0x0C */ f32 tipR;
    };
    struct SweepDesc {
        /* 0x00 */ u8 count;
        /* 0x01 */ u8 unk1;
        /* 0x02 */ u16 filter2;
        /* 0x04 */ u16 filter4;
        /* 0x06 */ u8 flags;
        /* 0x07 */ u8 unk7;
        /* 0x08 */ struct SweepEntry *entries;
    };
    struct SweepRec {
        /* 0x00 */ Vector curPos;
        /* 0x0C */ Vector nextPos;
        /* 0x18 */ f32 yaw;
        /* 0x1C */ struct SweepDesc *desc;
    };
    s32 func_801045DC(Vector *from, Vector *to, u16 filter2, u16 filter4,
                      s32 arg4, s32 arg5, s32 arg6,
                      struct CollisionTriangle **triOut, u32 *idxOut);
    void func_8011BD08(struct CollisionTriangle *tri, u32 idx);
    struct SweepDesc *desc;
    s32 hits;
    struct SweepEntry *entry;
    f32 cosYaw;
    f32 sinYaw;
    struct SweepEntry *firstEntry;
    Vector base;
    f32 dx;
    Vector start;
    Vector segStart;
    Vector segEnd;
    f32 dy;
    f32 dz;
    f32 steps;
    struct CollisionTriangle *tri;
    u32 idx;
    f32 t;
    u32 nSteps;
    u32 step;
    s32 hit;
    u32 done;
    desc = rec->desc;
    hits = 0;
    if (desc != NULL) {
    entry = desc->entries;
    firstEntry = entry;
    cosYaw = cosf(rec->yaw);
    sinYaw = sinf(rec->yaw);
    done = 0;
    if (desc->flags & 2) {
        base = rec->nextPos;
    } else {
        base = rec->curPos;
    }
restart:
    while (desc->count != 0) {
        start.x = (entry->baseR * sinYaw) + base.x;
        start.y = entry->baseY + base.y;
        start.z = (entry->baseR * cosYaw) + base.z;
        dx = ((entry->tipR * sinYaw) + rec->curPos.x) - start.x;
        dy = (entry->tipY + rec->curPos.y) - start.y;
        dz = ((entry->tipR * cosYaw) + rec->curPos.z) - start.z;
        steps = sqrtf((dx * dx) + (dy * dy) + (dz * dz)) / 200.0f;
        step = 1;
        segEnd = start;
        nSteps = (s32) steps + 1;
        if (nSteps != 0) {
            do {
                segStart = segEnd;
                t = (f32) step / (f32) nSteps;
                segEnd.x = (dx * t) + start.x;
                segEnd.y = (dy * t) + start.y;
                segEnd.z = (dz * t) + start.z;
                hit = func_801045DC(&segStart, &segEnd, desc->filter2, desc->filter4,
                                    0, 0, 0, &tri, &idx);
                step++;
                if (hit != 0) {
                    if (onHit != NULL) {
                        if (onHit(tri, idx) != 0) {
                            done = desc->count;
                        }
                    } else {
                        func_8011BD08(tri, idx);
                    }
                    hits++;
                    break;
                }
            } while (step <= nSteps);
        }
        done++;
        entry++;
        if (done >= desc->count) {
            break;
        }
    }
    entry = firstEntry;
    if ((desc->flags & 1) && (done != desc->count)) {
        done = 0;
        goto restart;
    }
    }
    return hits;
}
#elif defined(PORT)
/* func_801045DC with pointer-true outs (records the already-hit filter
 * halfwords before the cast). */
static s32 pc_probe_45dc(Vector *a, Vector *b, u16 f2, u16 f4,
                         struct CollisionTriangle **triOut, u32 *idxOut) {
    extern struct CollisionState *gCollisionState;
    extern u8 func_801024E8();
    extern u8 func_8010203C();
    extern s32 func_80103B58(f32 *, Vector *, struct Normal **, struct CollisionTriangle **, u32 *);
    struct CollisionState newColState;

    gCollisionState = &newColState;
    newColState.currPos = *a;
    newColState.nextPos = *b;
    newColState.someNormal = NULL;
    newColState.acceptPlane = func_801024E8;
    newColState.acceptTri = func_8010203C;
    newColState.passThruPlane = NULL;
    newColState.ignorePlane = NULL;
    newColState.ignoreTri = NULL;
    newColState.wantColType = f2;
    newColState.breakKey = f4;
    return func_80103B58(NULL, NULL, NULL, triOut, idxOut);
}

/* Melee sweep-cast walker (draft above, completed): arg0 is an f32[8]
 * track record {curPos, nextPos, yaw, descriptor-address-as-u32} (both the
 * ovl7 UnkOvl7Track PORT shape and plyshot's D_80198540_ovl3 rows). The
 * descriptor is widened asset data: cell 0 packs {count : 8, pad : 8,
 * filter2 : 16}, cell 1 {filter4 : 16, flags : 16}, cell 2 is the native
 * pointer to the 4-f32 sweep entries. Each entry sweeps from the flagged
 * base point (yaw-rotated offsets) toward the record's current position,
 * cast in <=200-unit segments; the first hit is reported (callback or
 * func_8011BD08) and the pass ends -- flag 1 restarts the scan from entry
 * 0 until a full pass finds nothing (the filter halfwords stop re-hits).
 * A callback returning nonzero also stops the flag-1 rescan. Returns the
 * number of hits reported. */
s32 func_8011BF4C(void *arg0, s32 (*arg1)(struct CollisionTriangle *, u32)) {
    f32 *rec = arg0;
    void **desc = (void **) (uintptr_t) *(u32 *) &rec[7];
    struct CollisionTriangle *tri;
    u32 idx;
    f32 *list;
    f32 cy, sy;
    f32 base[3];
    u32 w0, w1;
    u16 f2, f4, flags;
    u32 count, fp;
    s32 hits = 0;

    if (desc == NULL) {
        return 0;
    }
    w0 = (u32) (uintptr_t) desc[0];
    w1 = (u32) (uintptr_t) desc[1];
    count = w0 >> 24;
    f2 = (u16) (w0 & 0xFFFF);
    f4 = (u16) (w1 >> 16);
    flags = (u16) (w1 & 0xFFFF);
    list = (f32 *) desc[2];
    cy = cosf(rec[6]);
    sy = sinf(rec[6]);
    if (flags & 2) {
        base[0] = rec[3];
        base[1] = rec[4];
        base[2] = rec[5];
    } else {
        base[0] = rec[0];
        base[1] = rec[1];
        base[2] = rec[2];
    }
restart:
    for (fp = 0; fp < count; fp++) {
        f32 *e = &list[fp * 4];
        Vector cur, nxt;
        f32 sx, sy2, sz, dx, dy, dz;
        s32 steps, s0;

        sx = (e[1] * sy) + base[0];
        sy2 = e[0] + base[1];
        sz = (e[1] * cy) + base[2];
        dx = ((e[3] * sy) + rec[0]) - sx;
        dy = (e[2] + rec[1]) - sy2;
        dz = ((e[3] * cy) + rec[2]) - sz;
        steps = (s32) (sqrtf((dx * dx) + (dy * dy) + (dz * dz)) / 200.0f) + 1;
        if (steps == 0) {
            continue;
        }
        cur.x = sx;
        cur.y = sy2;
        cur.z = sz;
        for (s0 = 1; s0 <= steps; s0++) {
            f32 t = (f32) s0 / (f32) steps;

            nxt.x = (dx * t) + sx;
            nxt.y = (dy * t) + sy2;
            nxt.z = (dz * t) + sz;
            if (pc_probe_45dc(&cur, &nxt, f2, f4, &tri, &idx) != 0) {
                if (arg1 != NULL) {
                    if (arg1(tri, idx) != 0) {
                        fp = count;
                    }
                } else {
                    func_8011BD08(tri, idx);
                }
                hits += 1;
                goto wrap_check;
            }
            cur = nxt;
        }
    }
wrap_check:
    if ((flags & 1) && fp != count) {
        goto restart;
    }
    return hits;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011BF4C.s")
#endif

void func_8011C2A0(void *arg0) {
    play_sound(SOUND_BGBRAKE2);
    func_8011BA10(*(struct CollisionTriangle **)((u32)arg0 + 0x84), 20);
}

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

void func_8011C720(s32 arg0) {
    D_800D6FB2 = 0;
    D_800D6FB0 = 0;
    D_8012E7E8 = 0;
    switch (func_800F8560()) {
        case 0:
        case 1:
        case 2:
        case 10:
            func_8016BF60_ovl3(arg0);
            break;
        case 3:
            func_801F0050_ovl10(arg0);
            break;
        case 4:
            play_sound(SOUND_TAKI1);
            D_800D6FB0 = 0x102;
            func_8016BF60_ovl3(arg0);
            break;
        case 5:
            D_800D6FB0 = 0x101;
            func_8016BF60_ovl3(arg0);
            break;
        case 6:
            D_800D6FB0 = 0x100;
            func_8016BF60_ovl3(arg0);
            break;
        case 8:
            D_800D6FB0 = 0x200;
            func_8016BF60_ovl3(arg0);
            break;
        case 9:
            D_8012E7E8 = 1;
            func_8016BF60_ovl3(arg0);
            break;
    }
    curObjSleepForever();
}

void func_8011C838(void) {
    u32 track = request_track_general(0x12, 0, 1);
    GObj *g = D_800DE350[track];

    g->onAnimate = func_8011D0FC;
}

#ifdef NON_MATCHING
// 16 diffs, register naming only: the ROM keeps gKirbyState in $a1 and the
// D_800D6F10+8 pointer in $a0; IDO starts one register lower ($a0/$v1).
// Loop form, index type, pointer-walk form and declaration order were swept.
void func_8011C87C(void) {
    u32 i;
    struct UnkStruct800D6F18 *p = (struct UnkStruct800D6F18 *)(&D_800D6F10 + 2);

    gKirbyState.unk4 = 0;
    gKirbyState.isHoldingEntity = 0;
    gKirbyState.inhaledEntityData = 0;
    gKirbyState.secondInhale = 0;
    gKirbyState.firstInhale = 0;
    gKirbyState.currentInhale = 0;
    for (i = 0; i < 2; i++) {
        p[i].unk4 = 0;
        p[i].unk8 = 0;
        p[i].unkC = 0;
        p[i].unk0 = 0;
    }
    D_800D6F10 = 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011C87C.s")
#endif
void func_8011C8D0(void) {
    func_80105180(&gPositionState);
    D_800D6F34 = 0;
}

#ifdef MIPS_TO_C
/* FACTORY: 97/240, and the first 74 words are exact. The decisive correction to m2c: func_800F88C8 takes THREE arguments here, not four -- m2c reads the leftover objId*4 byte index in a3 as a fourth argument, and dropping it moved 49 words. The reset value the ROM widens with 'andi $zero, 0xFF' into isTurning/unk30/turnDirection is a real u8 local, not m2c's '0 & 0xFF' noise, so it is kept as a named u8 chained off the first store. Residue: from the actionChange = -1 store onward IDO puts the -1 in t7 where the ROM uses t2 and schedules the gGameState arm's D_800D6E54 address materialisation two words later, a one-slot temp rotation that then costs every store in this 240-word straight-line initialiser */
/* Reset Kirby's whole state for a new life/level entry: rebind the per-frame
 * handlers, reset scale and physics arrays, clear the action, ability, damage
 * and inhale state, and seed the facing/heading. */
void func_8011C8F8(void) {
    void func_800B531C(s32 arg0);
    void func_800F88C8(GObj *obj, s32 arg1, s32 arg2);
    void func_80112A0C(void);
    void func_8011CFF4(GObj *gobj);
    extern f32 gKirbyHp;
    extern s32 D_800BE50C;
    extern s32 D_800BE510;
    extern u32 D_800D6E54;
    extern struct { u8 pad0[8]; s32 unk8; u8 padC[4]; s32 unk10; } D_80198830_ovl3;
    /* the ROM holds the reset value in a u8, so each store into a wider
     * field masks it (andi 0xFF) rather than using $zero directly */
    u8 cleared;
    u32 mode;
    u32 objId;

    D_800DEF90[omCurrentObj->objId] = func_800B531C;
    D_800DEDD0[omCurrentObj->objId] = func_8011CFF4;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_80112A0C();
    func_80111534(omCurrentObj->objId);
    D_800D6F10 = 0;
    D_8012EADC = 0;
    D_8012EAE0 = NULL;
    D_800E7B20[omCurrentObj->objId] = gKirbyHp;
    D_800E8920[omCurrentObj->objId] = 1;
    D_800E8AE0[omCurrentObj->objId] = 0;
    D_800E7CE0[omCurrentObj->objId] = 0;
    D_800E7EA0[omCurrentObj->objId] = 0;
    D_800E8060[omCurrentObj->objId] = 0;
    D_800E8760[omCurrentObj->objId] = 0;
    gKirbyState.actionChange = -1;
    gKirbyState.action = 0;
    gKirbyState.previousAction = 0;
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
    gKirbyState.isTurning = cleared = 0;
    gKirbyState.unk30 = cleared;
    gKirbyState.unkA = 0;
    gKirbyState.turnDirection = cleared;
    gKirbyState.unk8 = cleared;
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
    gKirbyState.unk18 = cleared;
    gKirbyState.unk17 = cleared;
    gKirbyState.unkB = 0;
    gKirbyState.unk15C = 0;
    gKirbyState.unk154 = 0;
    gKirbyState.isInhaling = 0;
    gKirbyState.unkB8 = 0;
    gKirbyState.unkBA = 0;
    gKirbyState.unk158 = 1.0f;
    mode = func_800F8560();
    if ((mode != 0) && (mode != 0xA)) {
        gKirbyState.unk4 = 0;
        gKirbyState.numberInhaled = 0;
    }
    gKirbyState.vel[0] = D_800E3050[omCurrentObj->objId];
    gKirbyState.vel[1] = D_800E3210[omCurrentObj->objId];
    gKirbyState.unk168 = 0.0f;
    gKirbyState.unk160 = 0;
    gKirbyState.unk162 = 0x14;
    gKirbyState.unk16C = 0;
    D_80198830_ovl3.unk8 = 3;
    D_80198830_ovl3.unk10 = -1;
    gKirbyState.vel[2] = D_800E33D0[omCurrentObj->objId];
    gKirbyState.unk164 = gKirbyState.unk168;
    D_800EC820[omCurrentObj->objId] = 0.0f;
    objId = omCurrentObj->objId;
    D_800EC660[objId] = D_800EC820[objId];
    func_800F88C8(D_800DE350[omCurrentObj->objId], D_800BE50C, D_800BE510);
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E17D0[omCurrentObj->objId] = 1.5707964f;
}
#elif defined(PORT)
/* PORT: plyInit, transcribed from asm/nonmatchings/ovl2/plylib/
 * func_8011C8F8.s. The m2c sketch above misreads two stores the asm names
 * directly: the word zeroed right after the func_80111534 call is
 * D_800D6F10 (not "&D_800D6ED0 + 0x40"), and the second cleared per-track
 * slot is D_800E7EA0 (the 0x70-entry array after D_800E7CE0, which the
 * sketch spells as a cross-symbol byte offset). gKirbyState goes through
 * struct Player -- the same layout every compiled reader on this build
 * uses. The two D_80198830 stores are spelled against the split ovl3 bss
 * symbols the PC data file emits (N64 +0x8 -> D_80198838_ovl3, +0x10 ->
 * D_80198840_ovl3); ovl2_8.h's whole-struct view would overflow the 4-byte
 * D_80198830_ovl3 placeholder and clobber its neighbours. On this build the
 * function is reached through src/pc/pc_player_lite.c's stand-in for the
 * un-ported ovl3 player init (func_8016BF60_ovl3), whose real body is what
 * calls plyInit on the N64. */
extern f32 gKirbyHp;
extern s32 D_800BE50C;
extern f32 D_800BE510;
extern s32 D_800D6E54;
extern s32 D_800D6F10;
extern u8 D_80198838_ovl3[];
extern u8 D_80198840_ovl3[];
void func_80112A0C(void);
void func_800F88C8(GObj *, s32, f32);
void func_800B531C(s32);
void func_8011CFF4(GObj *);

void func_8011C8F8(void) {
    u32 objId = omCurrentObj->objId;
    u32 kind;

    D_800DEF90[objId] = func_800B531C;
    D_800DEDD0[objId] = func_8011CFF4;
    gEntitiesScaleXArray[objId] = 0.2f;
    gEntitiesScaleYArray[objId] = 0.2f;
    gEntitiesScaleZArray[objId] = 0.2f;
    func_80112A0C();
    func_80111534(omCurrentObj->objId);
    D_800D6F10 = 0;
    D_8012EADC = 0;
    D_8012EAE0 = NULL;
    objId = omCurrentObj->objId;
    D_800E7B20[objId] = gKirbyHp;
    D_800E8920[objId] = 1;
    D_800E8AE0[objId] = 0;
    D_800E7CE0[objId] = 0;
    D_800E7EA0[objId] = 0;
    D_800E8060[objId] = 0;
    D_800E8760[objId] = 0;
    gKirbyState.actionChange = -1;
    gKirbyState.action = 0;
    gKirbyState.previousAction = 0;
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
    gKirbyState.isTurning = 0;
    gKirbyState.unk30 = 0;
    gKirbyState.unkA = 0;
    gKirbyState.turnDirection = 0;
    gKirbyState.unk8 = 0;
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
    gKirbyState.unk18 = 0;
    gKirbyState.unk17 = 0;
    gKirbyState.unkB = 0;
    gKirbyState.unk15C = 0;
    gKirbyState.unk154 = 0;
    gKirbyState.isInhaling = 0;
    gKirbyState.unkB8 = 0;
    gKirbyState.unkBA = 0;
    gKirbyState.unk158 = 1.0f;
    kind = func_800F8560();
    if ((kind != 0) && (kind != 0xA)) {
        gKirbyState.unk4 = 0;
        gKirbyState.numberInhaled = 0;
    }
    objId = omCurrentObj->objId;
    gKirbyState.vel[0] = D_800E3050[objId];
    gKirbyState.vel[1] = D_800E3210[objId];
    gKirbyState.vel[2] = D_800E33D0[objId];
    gKirbyState.unk168 = 0.0f;
    gKirbyState.unk164 = gKirbyState.unk168;
    gKirbyState.unk160 = 0;
    gKirbyState.unk162 = 0x14;
    gKirbyState.unk16C = 0;
    *(s16 *)D_80198838_ovl3 = 3;
    *(s32 *)D_80198840_ovl3 = -1;
    D_800EC820[objId] = 0.0f;
    D_800EC660[objId] = D_800EC820[objId];
    func_800F88C8(D_800DE350[objId], D_800BE50C, D_800BE510);
    D_800E6A10[objId] = 1.0f;
    D_800E17D0[objId] = 1.5707964f;
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
                        track = request_track_general(0x17, 0xE, 0x1E);
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
            utilPrintf("plyInitCatchOver: No DisType Number=%x\n", gKirbyState.inhaledEntityData);
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
            utilPrintf("plyInitCatchOver: New Catch Number=%x\n", gKirbyState.isHoldingEntity);
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

void func_8011CFF4(GObj *gobj) {
    s32 temp2;

    if (D_800E7CE0[omCurrentObj->objId] != 0) {
        if (D_800E7CE0[omCurrentObj->objId]-- <= 0) {
            D_800E7CE0[omCurrentObj->objId] = 0;
        }
    }
    if (omCurrentObj->objId == PLAYERTRACK) {
        func_80111534(omCurrentObj->objId);
    }
    temp2 = gKirbyState.actionChange;
    if (temp2 != -1) {
        gEntityFuncListIDArray[omCurrentObj->objId] = temp2;
        gKirbyState.actionChange = -1;
#ifdef PORT
        /* D_8022947C / D_8016C510 are the N64 ADDRESSES of the two action
         * dispatchers, spelled as data because plylib cannot reference the
         * overlays' symbols directly. On this build those data stubs are
         * not code (jumping into them was the measured crash the moment the
         * first action change fired), so bind the real functions. */
        {
            void func_8022947C_ovl19(s32);
            void func_8016C510_ovl3(GObj *);

            if (D_800D6FB2 == 2) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         (void (*)(struct GObj *)) func_8022947C_ovl19);
            } else {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId],
                                         func_8016C510_ovl3);
            }
        }
#else
        if (D_800D6FB2 == 2) {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], (void (*)(struct GObj *))&D_8022947C);
        } else {
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], (void (*)(struct GObj *))&D_8016C510);
        }
#endif
    }
}

// plyWalk
#ifdef PORT
/* PORT: Kirby's onAnimate grab-argument handler, from
 * asm/nonmatchings/ovl2/plylib/func_8011D0FC.s, modeled on the compiled
 * generic handler func_800B0F28 (src/ovl1/ovl1_7.c) which shares every
 * branch shape. arg2 arrives as f32 (see the declaration at the top of the
 * file); cases 12/13 reinterpret its bits like the ROM did.
 *
 * Case 12's ability-voice table is the 0x1C-stride record block at
 * D_80128440: on PC the emitted objects D_80128444/D_80128446 hold only
 * row 0's u16, and every later row lives inside the native-u16 blob
 * D_8012844E (build/pc/data/ovl2_after_spawn.data.c). Row r's D_80128444
 * column is blob cell r*14-5 and its D_80128446 column is r*14-4 (blob
 * base 0x8012844E vs columns 0x80128444/6 + r*0x1C); the blob is a
 * halfword-for-halfword image of the ROM, so u16 reads are exact.
 *
 * Case 13's generator objects come from func_800A19EC (ported in
 * src/ovl1/ovl1.c). On the N64 their +0x48/+0x4C fields coincide with
 * GObj's onAnimate/unk4C, which is why the ROM (and func_800B0F28's
 * compiled PC code, which handles real GObjs) share the spelling; on LP64
 * they do NOT -- the node's two pointers sit at +0x50/+0x58 (struct
 * PcGenNode / Pc2550Obj in ovl1.c), so PcGenNodeRef mirrors just those two
 * slots. PcOMMtxFloat3 is a local mirror of OMMtxFloat3 (include/DObj.h,
 * not included by this TU): pointer then Vector, so the Vector sits at +8
 * on LP64 -- the same shape as UnkEmitter's next pointer followed by its
 * +4/+8/+C position floats, which is what the node's unk4C really is. */
void func_8011D0FC(struct DObj *arg0, s32 arg1, f32 arg2) {
    void *func_800A19EC(s32, s32);
    void func_800BB468(u32, s32);
    struct PcOMMtxFloat3 {
        void *mtx;
        Vector v;
    };
    struct PcGenNodeRef { /* generator node: N64 +0x48/+0x4C on LP64 */
        u8 pad[80];
        struct DObj *unk48;
        void *unk4C;
    };
    union {
        f32 f;
        s32 w;
    } bits;
    Vector sp20;
    struct PcGenNodeRef *gen;
    s32 snd;
    s32 idx;

    switch (arg1) {
    case 9:
        func_800BB468((u32) arg2, 0);
        return;
    case 12:
        bits.f = arg2;
        snd = bits.w;
        if (snd < 0) {
            return;
        }
        if ((snd == 5) || (snd == 6) || (snd == 0x267)) {
            s32 flags = D_800E8AE0[omCurrentObj->objId];

            if (flags & 7) {
                if (flags & 2) {
                    play_sound(0x10C);
                } else {
                    play_sound(9);
                }
                return;
            }
            if (D_800D6FB2 == 2) {
                if (gKirbyState.unk7 != 0) {
                    play_sound(7);
                } else {
                    play_sound(8);
                }
                return;
            }
            {
                u32 row = gKirbyState.unk10A;
                const u16 *blob = (const u16 *) D_8012844E;
                u16 voice;

                if (gKirbyState.unk7 == 0) {
                    voice = (row == 0) ? D_80128444[0][0] : blob[row * 14 - 5];
                } else {
                    voice = (row == 0) ? D_80128446[0][0] : blob[row * 14 - 4];
                }
                play_sound(voice);
            }
            return;
        }
        play_sound(snd);
        return;
    case 13:
        bits.f = arg2;
        idx = bits.w & 0xFFFF;
        if (idx >= 0) {
            gen = func_800A19EC(bits.w >> 0x10, idx);
            if (gen != NULL) {
                if (gen->unk4C != NULL) {
                    func_800B2340(&sp20, arg0, 0xFFFF);
                    ((struct PcOMMtxFloat3 *) gen->unk4C)->v.x = sp20.x;
                    ((struct PcOMMtxFloat3 *) gen->unk4C)->v.y = sp20.y;
                    ((struct PcOMMtxFloat3 *) gen->unk4C)->v.z = sp20.z;
                    return;
                }
                gen->unk48 = arg0;
                return;
            }
        }
        break;
    case -1:
        D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
        return;
    case -2:
        D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
        return;
    default:
        if (D_800DF310[omCurrentObj->objId] != NULL) {
            D_800DF310[omCurrentObj->objId]((s32) (uintptr_t) arg0, arg1, arg2);
        }
        break;
    }
}
#else
/* Kirby's onAnimate handler: dispatches one animation command. arg1 is the
 * opcode and arg2 its payload, which the ROM passes as an f32 (mtc1 $a2,$f12
 * in the prologue) and then reinterprets as a raw word for the opcodes that
 * carry packed integers. */
void func_8011D0FC(struct DObj *ln, s32 arg1, f32 arg2) {
    struct GenNodeXfm {
        /* 0x00 */ u32 flags;
        /* 0x04 */ Vector pos;
    };
    struct GenNode {
        /* 0x00 */ u8 unk0[0x48];
        /* 0x48 */ struct DObj *owner;
        /* 0x4C */ struct GenNodeXfm *xfm;
    };
    struct GenNode *func_800A19EC(s32 group, s32 id);
    void func_800BB468(u32 arg0, s32 arg1);
    f32 soundPayload;
    s32 soundId;
    struct GenNode *gen;
    f32 genPayload;
    void (*handler)(s32 ln, s32 cmd, f32 payload);
    s32 genArg;
    /* stack shape: the ROM leaves 0x2C..0x2F unused above the position
     * vector */
    s32 pad2[1];
    Vector pos;
    switch (arg1) {
    case 9:
        func_800BB468((u32) arg2, 0);
        return;
    case 12:
        soundPayload = arg2;
        soundId = *(s32 *) &soundPayload;
        if (soundId >= 0) {
            if ((soundId == 5) || (soundId == 6) || (soundId == 0x267)) {
                if (D_800E8AE0[omCurrentObj->objId] & 7) {
                    if (D_800E8AE0[omCurrentObj->objId] & 2) {
                        play_sound(0x10C);
                        return;
                    }
                    play_sound(9);
                    return;
                }
                if (D_800D6FB2 == 2) {
                    if (gKirbyState.unk7 != 0) {
                        play_sound(7);
                        return;
                    }
                    play_sound(8);
                    return;
                }
                if (gKirbyState.unk7 == 0) {
                    play_sound(D_80128444[gKirbyState.unk10A][0]);
                    return;
                }
                play_sound(D_80128446[gKirbyState.unk10A][0]);
                return;
            }
            play_sound(soundId);
            return;
        }
        return;
    case 13:
        genPayload = arg2;
        genArg = *(s32 *) &genPayload;
        if ((genArg & 0xFFFF) >= 0) {
            gen = func_800A19EC(genArg >> 16, genArg & 0xFFFF);
            if (gen != NULL) {
                if (gen->xfm != NULL) {
                    func_800B2340(&pos, ln, 0xFFFF);
                    gen->xfm->pos.x = pos.x;
                    gen->xfm->pos.y = pos.y;
                    gen->xfm->pos.z = pos.z;
                    return;
                }
                gen->owner = ln;
                return;
            }
        }
        break;
    case -1:
        D_800DD8D0[omCurrentObj->objId] |= 0x40000000;
        return;
    case -2:
        D_800DD8D0[omCurrentObj->objId] |= 0x80000000;
        return;
    default:
        handler = D_800DF310[omCurrentObj->objId];
        if (handler != NULL) {
            handler((s32) ln, arg1, arg2);
        }
        break;
    }
}
#endif

void func_8011D40C(void) {
    if (D_800D6B54 == 0) {
        D_8012E7D7 = 1;
        change_kirby_hp(-6.0f);
        D_800D6B54 = 1;
        D_800D6B58 = 0x96;
        D_800BE4F8 = 6;
        func_800FA414(6);
        D_800D7088[1] = D_801290D8->unk14;
        auSetBGMVolume(0, 0x7800);
        play_music(0, 5);
    }
}

#ifdef PORT
/* PORT: (re)register Kirby's body shapes -- func_80111574 (ovl2_9.c) copies
 * the PlyEntry blob gKirbyState.unk15C points at into the global Shape28
 * arena and hands back the slot; this walks the slot's shape list, scales
 * the geometry by arg0 (Kirby's size factor, gKirbyState.unk158) unless it
 * is exactly 1.0f -- a sphere (type 1) scales only its radius at 0x18, a
 * capsule (type 2) scales all seven floats 0xC..0x24 -- and, when a shape's
 * joint word is 0 and gKirbyState.unk154 names an override joint, binds the
 * shape to DObj D_800DFBD0[objId][unk154]. Ends with the func_80111C4C
 * debug hook (a no-op: func_80110138 is empty) and returns the slot.
 *
 * Provenance, verified: the blob this walks is NATIVE PC memory, not
 * big-endian asset bytes. The shape list lives in the D_8012D198 arena
 * (ovl2_9.c BSS), populated word-by-word by the compiled func_80111574 from
 * the generated tables in build/pc/data/*.data.c (e.g. D_80190358_ovl3 /
 * D_80190334_ovl3 for normal Kirby), which are emitted as native u32 words
 * holding the N64 word VALUES. Float words and the joint word therefore
 * read correctly through native types; the one N64-byte-order residue is
 * the shape type, an N64 byte-0 read that sits in bits 24-31 of the head
 * word (0x01000000 = sphere) -- decoded here with >> 24, the same
 * convention as the func_8010F9AC/func_8010E740 PORT arms in ovl2_8.c and
 * the word-shift rule of func_800F90C0's PORT arm. The joint store
 * truncates a DObj* into the 32-bit unk8 slot; that is the file's
 * established pointer-in-u32 idiom (gKirbyState.unk15C itself) and is
 * lossless under -no-pie (src/pc/pc_mmio.c). The m2c draft above garbles
 * only the func_80111C4C call (one argument, the slot) and the slot walk
 * offsets, which on LP64 sit at 32/40/48 (see the host-slot views in
 * ovl2_8.c). Return is the slot pointer (the N64 tail returns it in $v0);
 * both external callers declare the function void and ignore it. */
struct PcD4A4Shape {                /* Shape28 arena entry, 40 bytes */
    u8 unk0;                        /* computed-this-frame flag (native) */
    u8 pad1[3];
    u32 unk4;                       /* N64 head word: type in bits 24-31 */
    s32 unk8;                       /* joint: 0/-1/-2/-3 or truncated DObj* */
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
};
struct PcD4A4Slot {                 /* host PlySlot (ovl2_9.c) on LP64 */
    void *unk0;
    s32 unk4[5];
    struct PcD4A4Shape *unk18;
    s32 unk1C;
    struct PcD4A4Shape *unk20;
};
_Static_assert(sizeof(struct PcD4A4Shape) == 0x28, "shape stride");
_Static_assert(sizeof(struct PcD4A4Slot) == 56, "host PlySlot size");
_Static_assert(__builtin_offsetof(struct PcD4A4Slot, unk20) == 48, "shape list");

void *func_8011D4A4(f32 arg0) {
    void *func_80111574(void *, void *);
    void func_80111C4C(s32 *);
    struct PcD4A4Slot *slot;
    struct PcD4A4Shape *sh;
    s32 i;

    slot = func_80111574((void *) (uintptr_t) gKirbyState.unk15C,
                         (void *) (uintptr_t) omCurrentObj->objId);
    for (i = 0, sh = slot->unk20; i < slot->unk1C; i++, sh++) {
        if (arg0 != 1.0f) {
            switch (sh->unk4 >> 24) {
            case 1:
                sh->unk18 *= arg0;
                break;
            case 2:
                sh->unkC *= arg0;
                sh->unk10 *= arg0;
                sh->unk14 *= arg0;
                sh->unk18 *= arg0;
                sh->unk1C *= arg0;
                sh->unk20 *= arg0;
                sh->unk24 *= arg0;
                break;
            }
        }
        if ((sh->unk8 == 0) && (gKirbyState.unk154 != 0)) {
            sh->unk8 = (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][gKirbyState.unk154];
        }
    }
    func_80111C4C((s32 *) slot);
    return slot;
}
#else
void *func_8011D4A4(f32 arg0) {
    struct N64Shape28 {
        /* 0x00 */ u8 unk0;
        /* 0x01 */ u8 pad1[3];
        /* 0x04 */ u8 unk4;
        /* 0x05 */ u8 pad5[3];
        /* 0x08 */ s32 unk8;
        /* 0x0C */ f32 unkC;
        /* 0x10 */ f32 unk10;
        /* 0x14 */ f32 unk14;
        /* 0x18 */ f32 unk18;
        /* 0x1C */ f32 unk1C;
        /* 0x20 */ f32 unk20;
        /* 0x24 */ f32 unk24;
    };
    struct N64PlySlot {
        /* 0x00 */ s32 unk0[7];
        /* 0x1C */ s32 unk1C;
        /* 0x20 */ struct N64Shape28 *unk20;
    };
    struct N64PlySlot *func_80111574(s32, s32);
    void func_80111C4C(struct N64PlySlot *);
    s32 pad;
    struct N64PlySlot *slot;
    struct N64Shape28 *sh;
    s32 i;

    slot = func_80111574(gKirbyState.unk15C, omCurrentObj->objId);
    for (i = 0, sh = slot->unk20; i < slot->unk1C; i++, sh++) {
        if (arg0 != 1.0f) {
            switch (sh->unk4) {
            case 1:
                sh->unk18 = sh->unk18 * arg0;
                break;
            case 2:
                sh->unkC = sh->unkC * arg0;
                sh->unk10 = sh->unk10 * arg0;
                sh->unk14 = sh->unk14 * arg0;
                sh->unk18 = sh->unk18 * arg0;
                sh->unk1C = sh->unk1C * arg0;
                sh->unk20 = sh->unk20 * arg0;
                sh->unk24 = sh->unk24 * arg0;
                break;
            }
        }
        if ((sh->unk8 == 0) && (gKirbyState.unk154 != 0)) {
            sh->unk8 = (s32) D_800DFBD0[omCurrentObj->objId][gKirbyState.unk154];
        }
    }
    func_80111C4C(slot);
    return slot;
}
#endif

void func_8011D614(void) {
    func_8011CF58();
    func_800A9760(0x20007);
    D_800E0490[omCurrentObj->objId] = (f32 **)&D_801926E8;
    gKirbyState.unk15C = (u32)&D_80190358;
    gKirbyState.unk154 = 2;
}

void func_8011D67C(void) {
    if (D_800D6FB2 == 2) {
        func_8011CF58();
        D_800E0490[omCurrentObj->objId] = (f32 **)&D_80192F64;
        gKirbyState.unk15C = (u32)&D_801923DC;
        gKirbyState.unk154 = 2;
        goto post;
    }
    if (func_800AA888(0x20007) == 0) {
        func_8011CF58();
        func_80122F08(0x20007);
        D_800E0490[omCurrentObj->objId] = (f32 **)&D_801926E8;
        gKirbyState.unk15C = (u32)&D_80190358;
        gKirbyState.unk154 = 2;
    }
post:
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

s32 func_8011D858(struct UnkStruct8011D858 *arg0, s32 arg1, f32 arg2) {
    f32 sp1C;
    f32 temp_fX;
    f32 temp_fY;
    f32 temp_d1;
    f32 temp_d2;
    f32 temp_d3;
    u32 objId;

    if (D_800DD710[arg1] == -1) {
        return 0;
    }
    objId = omCurrentObj->objId;
    temp_fX = gEntitiesNextPosXArray[objId] + arg0->unk0;
    temp_fY = gEntitiesNextPosYArray[objId] + arg0->unk4;
    sp1C = gEntitiesNextPosZArray[objId] + arg0->unk8;
    temp_d1 = temp_fX - gEntitiesNextPosXArray[arg1];
    if (((arg0->unkC * arg2) < temp_d1) || (temp_d1 < ((-arg0->unkC) * arg2))) {
        return 0;
    }
    temp_d2 = temp_fY - gEntitiesNextPosYArray[arg1];
    if (((arg0->unk10 * arg2) < temp_d2) || (temp_d2 < ((-arg0->unk10) * arg2))) {
        return 0;
    }
    temp_d3 = sp1C - gEntitiesNextPosZArray[arg1];
    if (((arg0->unkC * arg2) < temp_d3) || (temp_d3 < ((-arg0->unkC) * arg2))) {
        return 0;
    }
    if (func_800F9828(objId, arg1) == 9999.0f) {
        return 0;
    }
    return 1;
}


f32 func_8011D9E0(s32 arg0, f32 arg1, s32 arg2, f32 arg3) {
    f32 temp_f0;

    temp_f0 = func_800F951C(arg0, arg1, arg2, arg3);
    if (temp_f0 == 9999.0f) {
        return 9999.0;
    }
    return temp_f0;
}

void func_8011DA34(void) {
    s32 i;

    for (i = 4; i != 0x4A; i++) {
        if ((D_800DD710[i] != -1) && (D_800DD710[i] != 0x23)) {
            if (D_800DD8D0[i] & 0x40) {
                func_800B19F4(0x7F, i);
            } else {
                func_800B19F4(0x3F, i);
            }
        }
    }
}

void func_8011DAF8(void) {
    if ((gKirbyState.action != 0x17) && !(gKirbyState.isTurning & 1)) {
        if ((gKirbyState.action == 0x16) || (gKirbyState.action == 0x18)) {
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
            return;
        }
        if (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (D_800E64D0[omCurrentObj->objId] >= 0.0f))
            || ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (D_800E64D0[omCurrentObj->objId] <= 0.0f))) {
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
        }
    }
}

void func_8011DC04(u32 arg0) {
    func_800A77E8(arg0, &D_8012E818, &D_8012E81C);
}

void func_8011DC30(u32 arg0) {
    func_800A77E8(arg0, &D_8012E820, &D_8012E824);
}

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

void func_8011DCD0(void) {
    if (gKirbyState.unk60 != 0) {
        func_800A7870(&D_8012E820, &D_8012E824);
    }
    gKirbyState.unk60 = 0;
    gKirbyState.unk64 = 0;
}

void func_8011DD18(u32 arg0) {
    if ((gGameState != 0x21) && (arg0 != gKirbyState.ability)) {
        gKirbyState.ability = arg0;
        func_8012310C(arg0);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 59/229. The decisive finding is a TYPE one: gKirbyState.unk130/134/138/13C are declared u32 in include/Player.h but the ROM reads and writes all four as f32 (swc1/lwc1 throughout, and one shared f32 zero register feeds every reset), and the second out-parameter is an f32 * as well, not the u32 * m2c infers -- accessing them through *(f32 *)& took this from 7/229 to 53/229. Retyping the four Player.h fields is the real fix but that header is shared with every other TU, so it is left for a lane that can run the whole-tree protocol. Also corrected against m2c: func_800BB468 takes TWO arguments here (a0=0xB, a1=0x3C); the 5-argument float-first form m2c prints is register noise, and it contradicts the same function's call in func_8011D0FC in this file. Residue: frame 0x28 vs 0x20 and the draft runs 3 words long in the early-out chain */
/* Conveyor / moving-floor drive. Produces the two components of the surface
 * velocity Kirby is carried by this frame: magnitude gKirbyState.unk134
 * scaled by 0.1 and split by the surface angle gKirbyState.unk130. Every
 * state that suspends the carry (a bump, no carrying surface, an ability or
 * action that ignores it) zeroes both outputs. Floor types 0x12/0x13 are the
 * fixed-rate belts, which drive straight from the surface record's rate. */
void func_8011DD5C(f32 *outSin, f32 *outCos) {
    void func_800BB468(u32 arg0, s32 arg1);
    f32 sinComp;
    f32 cosComp;
    f32 magnitude;
    s32 inWater;

    if (gKirbyState.unkB != 0) {
        *outCos = 0.0f;
        *outSin = 0.0f;
        *(f32 *) &gKirbyState.unk13C = 0.0f;
        *(f32 *) &gKirbyState.unk138 = *(f32 *) &gKirbyState.unk13C;
        return;
    }
    if (gKirbyState.unk152 == 0) {
        *(f32 *) &gKirbyState.unk13C = 0.0f;
        gKirbyState.unk153 = 0;
        *(f32 *) &gKirbyState.unk138 = *(f32 *) &gKirbyState.unk13C;
        if (gKirbyState.abilityInUse == 0x1B) {
            *outCos = 0.0f;
            *outSin = 0.0f;
            return;
        }
        if (((gKirbyState.floorType == 0x12) || (gKirbyState.floorType == 0x13)) &&
            !(gKirbyState.isTurning & 0x4000)) {
            *outCos = 0.0f;
            if (gKirbyState.floorType == 0x13) {
                *outSin = (f32) (u32) gKirbyState.unk114->unk10 * 0.1f;
                return;
            }
            *outSin = -((f32) (u32) gKirbyState.unk114->unk10 * 0.1f);
            return;
        }
        *outCos = 0.0f;
        *outSin = 0.0f;
        return;
    }
    if ((gKirbyState.abilityInUse == 2) || (gKirbyState.abilityInUse == 0xF) ||
        (gKirbyState.abilityInUse == 0x14) || (gKirbyState.abilityInUse == 0x1B)) {
        *outCos = 0.0f;
        *outSin = 0.0f;
        *(f32 *) &gKirbyState.unk13C = 0.0f;
        *(f32 *) &gKirbyState.unk138 = *(f32 *) &gKirbyState.unk13C;
        return;
    }
    if ((gKirbyState.isTurning & 0x4000) || (gKirbyState.action == 0xA) ||
        (gKirbyState.action == 0xB)) {
        *outCos = 0.0f;
        *outSin = 0.0f;
        *(f32 *) &gKirbyState.unk13C = 0.0f;
        *(f32 *) &gKirbyState.unk138 = *(f32 *) &gKirbyState.unk13C;
        return;
    }
    inWater = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        inWater = 1;
    }
    sinComp = sinf(*(f32 *) &gKirbyState.unk130);
    if (((sinComp < 0.0f) ? -sinComp : sinComp) < 0.00001f) {
        sinComp = 0.0f;
    }
    cosComp = cosf(*(f32 *) &gKirbyState.unk130);
    if (((cosComp < 0.0f) ? -cosComp : cosComp) < 0.00001f) {
        cosComp = 0.0f;
    }
    magnitude = *(f32 *) &gKirbyState.unk134 * 0.1f;
    *(f32 *) &gKirbyState.unk138 = magnitude * sinComp;
    *(f32 *) &gKirbyState.unk13C = magnitude * cosComp;
    *outSin = *(f32 *) &gKirbyState.unk138;
    *outCos = *(f32 *) &gKirbyState.unk13C;
    if (D_800E5C10[omCurrentObj->objId] > 0.0f) {
        D_800E8920[omCurrentObj->objId] = 0;
    } else if (((cosComp < 0.0f) ? -cosComp : cosComp) >= 0.85f) {
        D_800E8920[omCurrentObj->objId] = 0;
    }
    if ((inWater == 0) && (gKirbyState.unk153 == 0)) {
        gKirbyState.unk153 = 1;
        func_800BB468(0xB, 0x3C);
    }
}
#elif defined(PORT)
/* PORT: conveyor/current push for Kirby's movement tick, from
 * asm/nonmatchings/ovl2/plylib/func_8011DD5C.s (the m2c sketch above
 * garbles the func_800BB468 call and drops the f32 nature of the second
 * out-param, which ovl1_8's func_800B531C adds straight into the Y
 * velocity). unk130/unk134/unk138/unk13C hold float bits in u32 fields, so
 * they go through bit-punning locals. */
void func_800BB468(u32, s32);

void func_8011DD5C(f32 *arg0, f32 *arg1) {
    union {
        u32 w;
        f32 f;
    } bits;
    f32 sinv;
    f32 cosv;
    f32 rate;
    f32 a;
    s32 pushed;
    s32 objId;

    if (gKirbyState.unkB != 0) {
        *arg1 = 0.0f;
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
            *arg1 = 0.0f;
            *arg0 = 0.0f;
            return;
        }
        if (((gKirbyState.floorType == 0x12) || (gKirbyState.floorType == 0x13)) &&
            !(gKirbyState.isTurning & 0x4000)) {
            *arg1 = 0.0f;
            if (gKirbyState.floorType == 0x13) {
                *arg0 = (f32) gKirbyState.unk114->unk10 * 0.1f;
                return;
            }
            *arg0 = -((f32) gKirbyState.unk114->unk10 * 0.1f);
            return;
        }
        *arg1 = 0.0f;
        *arg0 = 0.0f;
        return;
    }
    if ((gKirbyState.abilityInUse == 2) || (gKirbyState.abilityInUse == 0xF) ||
        (gKirbyState.abilityInUse == 0x14) || (gKirbyState.abilityInUse == 0x1B)) {
        *arg1 = 0.0f;
        *arg0 = 0.0f;
        gKirbyState.unk13C = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        return;
    }
    if ((gKirbyState.isTurning & 0x4000) || (gKirbyState.action == 0xA) ||
        (gKirbyState.action == 0xB)) {
        *arg1 = 0.0f;
        *arg0 = 0.0f;
        gKirbyState.unk13C = 0;
        gKirbyState.unk138 = gKirbyState.unk13C;
        return;
    }
    pushed = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        pushed = 1;
    }
    bits.w = gKirbyState.unk130;
    sinv = sinf(bits.f);
    a = (sinv < 0.0f) ? -sinv : sinv;
    if (a < 0.00001f) {
        sinv = 0.0f;
    }
    bits.w = gKirbyState.unk130;
    cosv = cosf(bits.f);
    a = (cosv < 0.0f) ? -cosv : cosv;
    if (a < 0.00001f) {
        cosv = 0.0f;
    }
    bits.w = gKirbyState.unk134;
    rate = bits.f * 0.1f;
    bits.f = rate * sinv;
    gKirbyState.unk138 = bits.w;
    bits.f = rate * cosv;
    gKirbyState.unk13C = bits.w;
    bits.w = gKirbyState.unk138;
    *arg0 = bits.f;
    bits.w = gKirbyState.unk13C;
    *arg1 = bits.f;
    objId = omCurrentObj->objId;
    a = (cosv < 0.0f) ? -cosv : cosv;
    if ((D_800E5C10[objId] > 0.0f) || (a >= 0.85f)) {
        D_800E8920[objId] = 0;
    }
    if ((pushed == 0) && (gKirbyState.unk153 == 0)) {
        gKirbyState.unk153 = 1;
        func_800BB468(0xB, 0x3C);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011DD5C.s")
#endif

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
    }
    return 0x14;
}

u8 func_8011E270(void) {
    if (D_8012E8C2 == 0x12 || D_8012E8C2 == 0x13) {
        return 1;
    }
    return 0;
}

f32 func_8011E2A0(void) {
    f32 temp_f2;

    if ((gKirbyState.isTurning & 0x4000) == 0) {
        temp_f2 = (f32)gKirbyState.unk114->unk10 * 0.1f;
        if (temp_f2 != 0.0f) {
            return temp_f2 * 0.1f;
        }
    }
    return 0.0f;
}

void func_8011E31C(Vector *v) {
    v->x = gPositionState.kirbyHeadPos[0];
    v->y = gPositionState.kirbyHeight[1];
    v->z = gPositionState.kirbyHeadPos[2];
}

struct KirbyState_114 *func_8011E340(void) {
    if (gKirbyState.floorCollisionNext != 0) {
        return gKirbyState.unk114;
    }
    return NULL;
}

s32 func_8011E368(void) {
    return D_800D6F10;
}

f32 func_8011E374(void) {
    struct Unk80129114_4_4 *p;
    f32 angle;
    Vector sp2C;
    Vector sp20;

    p = D_80129114->unk4[D_800E5F90[omCurrentObj->objId]].unk4;
    sp2C.y = 0.0f;
    sp20.x = 0.0f;
    sp20.y = 0.0f;
    sp20.z = D_800E6A10[omCurrentObj->objId];
    ((f32 *)&sp20)[4] = 0.0;
    func_8001E344(&sp2C, p, D_800E6BD0[omCurrentObj->objId]);
    angle = vec3_abs_angle_diff(&sp20, &sp2C);
    if (angle < 0.0f) {
        angle += 6.2831855f;
    }
    return angle;
}

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
/* FACTORY: 91/267. Sibling of func_8011E978 in this file and shares its two findings: the 0x54 word is *(s32 *)&D_800D6F58[0x2A] (splat spells it D_800D6F58+0x54; there is no D_800D6FAC on the N64 side), and omCurrentObj must be cached into a named GObj * ONCE for the whole function -- mixing cached and inline reads makes IDO hold &omCurrentObj instead of the pointer, which alone was worth 86 words here. Frame 0x48 is exact once isTurning is read inline rather than cached. Residue: the ROM parks the gKirbyState base in a3 for the whole body where IDO picks t0, and the draft runs 5 words short in the track-hop arm */
/* Kirby's own turn-around easing (the generic form is func_8011E978 below).
 * While the turn flag is set and the turn is not suspended: pick the step
 * rate for the current surface, latch a queued B re-press, on the first tick
 * flip the facing and aim at heading+pi -- or, if a track hop happened this
 * frame, at the new track tangent -- then walk the visual yaw toward the aim
 * by one step per tick until the remaining angle is under one step, which
 * snaps and clears the turn flag. */
void func_8011E548(void) {
    void func_8001E344(Vector *out, struct Unk80129114_4_4 *footer, f32 t);
    u32 func_80121194(void);
    GObj *obj;
    f32 step;
    Vector tangent;
    Vector ref;
    f32 *facing;
    f32 remaining;

    if (!(gKirbyState.isTurning & 0x8000) && (gKirbyState.isTurning & 1)) {
        obj = omCurrentObj;
        if (D_800E8AE0[obj->objId] & 6) {
            step = 0.3925f;
        } else {
            step = 0.5233333f;
        }
        if ((*(s32 *) &D_800D6F58[0x2A] == 0) && (gKirbyState.abilityInUse == 0) &&
            (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
        if (gKirbyState.turnDirection == 0) {
            facing = &D_800E6A10[obj->objId];
            *facing = -*facing;
            gKirbyState.turnDirection = (s32) D_800E6A10[obj->objId];
            gKirbyState.unk7C = D_800E17D0[obj->objId] + 3.1415927f;
            if (gKirbyState.unk7C >= 6.2831855f) {
                gKirbyState.unk7C -= 6.2831855f;
            }
        } else if ((func_80121194() != 0) && (*(s32 *) &D_800D6F58[0x2A] == 0)) {
            facing = &D_800E6A10[obj->objId];
            *facing = -*facing;
            gKirbyState.turnDirection = (s32) D_800E6A10[obj->objId];
            func_8001E344(&tangent,
                          D_80129114->unk4[D_800E5F90[obj->objId]].unk4,
                          D_800E6BD0[obj->objId]);
            tangent.y = 0.0f;
            ref.y = 0.0f;
            ref.x = 0.0f;
            ref.z = D_800E6A10[obj->objId];
            gKirbyState.unk7C = vec3_abs_angle_diff(&ref, &tangent);
            if (gKirbyState.unk7C < 0.0f) {
                gKirbyState.unk7C += 6.2831855f;
            }
        } else {
            gKirbyState.unk7C = D_800E17D0[obj->objId];
        }
        gKirbyState.unk80 = gEntitiesAngleYArray[obj->objId];
        if ((f32) gKirbyState.turnDirection == -1.0f) {
            if (gKirbyState.unk80 < gKirbyState.unk7C) {
                remaining = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
            } else {
                remaining = gKirbyState.unk80 - gKirbyState.unk7C;
            }
            if ((remaining - step) < step) {
                gKirbyState.unk80 = gKirbyState.unk7C;
                goto snap;
            }
            gKirbyState.unk80 -= step;
            if (gKirbyState.unk80 < 0.0f) {
                gKirbyState.unk80 += 6.2831855f;
            }
            goto store;
        }
        if (gKirbyState.unk7C < gKirbyState.unk80) {
            remaining = (gKirbyState.unk7C + 6.2831855f) - gKirbyState.unk80;
        } else {
            remaining = gKirbyState.unk7C - gKirbyState.unk80;
        }
        if ((remaining - step) < step) {
            gKirbyState.unk80 = gKirbyState.unk7C;
        snap:
            gKirbyState.turnDirection = 0;
            D_800E17D0[obj->objId] = gKirbyState.unk7C;
            gEntitiesAngleYArray[obj->objId] = D_800E17D0[obj->objId];
            gKirbyState.isTurning &= ~1;
        } else {
            gKirbyState.unk80 += step;
            if (gKirbyState.unk80 >= 6.2831855f) {
                gKirbyState.unk80 -= 6.2831855f;
            }
        store:
            gEntitiesAngleYArray[obj->objId] = gKirbyState.unk80;
        }
    }
}
#elif defined(PORT)
/* PORT: Kirby's walking turn-around step, from
 * asm/nonmatchings/ovl2/plylib/func_8011E548.s. Two respellings against the
 * sketch above: the word it writes as `*(&D_800D6F58 + 0x54)` is the lw the
 * ROM does at D_800D6FAC, the symbol the compiled readers (src/ovl2/ovl2.c,
 * src/ovl3/kirby.c) already use on this build; and the track-tangent fetch
 * goes through the NATIVE Unk80129114_4 records (ovl2_2.c's func_800F78E4
 * arm), the same spelling as the matched sibling func_8011E374 above. The
 * ROM zeroes the tangent's y AFTER func_8001E344 returns and compares it
 * against {0, 0, facing}. */
void func_8011E548(void) {
    extern s32 D_800D6FAC;
    u32 func_80121194(void);
    Vector ref;
    Vector tang;
    f32 step;
    f32 diff;
    u32 objId;

    if (gKirbyState.isTurning & 0x8000) {
        return;
    }
    if (!(gKirbyState.isTurning & 1)) {
        return;
    }
    objId = omCurrentObj->objId;
    if (D_800E8AE0[objId] & 6) {
        step = 0.3925f;
    } else {
        step = 0.5233333f;
    }
    if ((D_800D6FAC == 0) && (gKirbyState.abilityInUse == 0) && (gKirbyController.buttonPressed & 0x4000)) {
        gKirbyState.unkA = 1;
    }
    if (gKirbyState.turnDirection == 0) {
        D_800E6A10[objId] = -D_800E6A10[objId];
        gKirbyState.turnDirection = (s32) D_800E6A10[objId];
        gKirbyState.unk7C = D_800E17D0[objId] + 3.1415927f;
        if (gKirbyState.unk7C >= 6.2831855f) {
            gKirbyState.unk7C -= 6.2831855f;
        }
    } else if ((func_80121194() != 0) && (D_800D6FAC == 0)) {
        D_800E6A10[objId] = -D_800E6A10[objId];
        gKirbyState.turnDirection = (s32) D_800E6A10[objId];
        func_8001E344(&tang, D_80129114->unk4[D_800E5F90[objId]].unk4, D_800E6BD0[objId]);
        tang.y = 0.0f;
        ref.x = 0.0f;
        ref.y = 0.0f;
        ref.z = D_800E6A10[objId];
        gKirbyState.unk7C = vec3_abs_angle_diff(&ref, &tang);
        if (gKirbyState.unk7C < 0.0f) {
            gKirbyState.unk7C += 6.2831855f;
        }
    } else {
        gKirbyState.unk7C = D_800E17D0[objId];
    }
    gKirbyState.unk80 = gEntitiesAngleYArray[objId];
    if ((f32) gKirbyState.turnDirection == -1.0f) {
        if (gKirbyState.unk80 < gKirbyState.unk7C) {
            diff = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
        } else {
            diff = gKirbyState.unk80 - gKirbyState.unk7C;
        }
        if ((diff - step) < step) {
            goto snap;
        }
        gKirbyState.unk80 -= step;
        if (gKirbyState.unk80 < 0.0f) {
            gKirbyState.unk80 += 6.2831855f;
        }
        gEntitiesAngleYArray[objId] = gKirbyState.unk80;
        return;
    }
    if (gKirbyState.unk7C < gKirbyState.unk80) {
        diff = (gKirbyState.unk7C + 6.2831855f) - gKirbyState.unk80;
    } else {
        diff = gKirbyState.unk7C - gKirbyState.unk80;
    }
    if ((diff - step) < step) {
        goto snap;
    }
    gKirbyState.unk80 += step;
    if (gKirbyState.unk80 >= 6.2831855f) {
        gKirbyState.unk80 -= 6.2831855f;
    }
    gEntitiesAngleYArray[objId] = gKirbyState.unk80;
    return;
snap:
    gKirbyState.unk80 = gKirbyState.unk7C;
    gKirbyState.turnDirection = 0;
    D_800E17D0[objId] = gKirbyState.unk7C;
    gEntitiesAngleYArray[objId] = D_800E17D0[objId];
    gKirbyState.isTurning &= ~1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E548.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 15/153. Every read decoded and the whole prologue (6 words) exact once gKirbyState.isTurning is cached in a local; the 0x54 word is *(s32 *)&D_800D6F58[0x2A] -- there is no D_800D6FAC symbol on the N64 side, splat spells it D_800D6F58+0x54, and IDO folds the +0x54 into the relocated lo16 either way. Also needed: an explicit 'GObj *obj = omCurrentObj' per basic block (the ROM loads the POINTER once per block and re-reads ->objId off it 3x, where plain inlining makes IDO hoist &omCurrentObj into a held register instead) -- that was worth 6 words. Residue: both builds emit exactly two 'lui omCurrentObj', but the ROM hoists the SECOND block's into the prologue and IDO hoists the FIRST block's, which shifts the branch displacements and rotates a0/a2/a3 vs v0/v1/a0 for the three array bases */
void func_8011E978(f32 arg0, f32 arg1) {
    s32 flags;
    f32 *temp_a0;
    f32 var_f12;
    u32 temp_a0_2;
    GObj *obj;

    flags = gKirbyState.isTurning;
    if (flags & 1) {
        if (((*(s32 *) &D_800D6F58[0x2A]) == 0) && (gKirbyState.abilityInUse == 0) && (gKirbyController.buttonPressed & 0x4000)) {
            gKirbyState.unkA = 1;
        }
        if (gKirbyState.turnDirection == 0) {
            obj = omCurrentObj;
            temp_a0 = &D_800E6A10[obj->objId];
            *temp_a0 = -*temp_a0;
            gKirbyState.turnDirection = (s32) D_800E6A10[obj->objId];
            gKirbyState.unk7C = D_800E17D0[obj->objId] + 3.1415927f;
            if (gKirbyState.unk7C >= 6.2831855f) {
                gKirbyState.unk7C -= 6.2831855f;
            }
        } else {
            gKirbyState.unk7C = D_800E17D0[omCurrentObj->objId];
        }
        obj = omCurrentObj;
        gKirbyState.unk80 = gEntitiesAngleYArray[obj->objId];
        if (gKirbyState.unk80 < gKirbyState.unk7C) {
            var_f12 = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
        } else {
            var_f12 = gKirbyState.unk80 - gKirbyState.unk7C;
        }
        if ((var_f12 - arg0) < arg0) {
            gKirbyState.unk80 = gKirbyState.unk7C;
            gKirbyState.turnDirection = 0;
            D_800E17D0[obj->objId] = gKirbyState.unk7C;
            temp_a0_2 = obj->objId;
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
            gEntitiesAngleYArray[obj->objId] = gKirbyState.unk80;
        }
    }
}
#elif defined(PORT)
/* Generic turn-around easing service (draft above; same family as
 * func_8011E548's arm — the `*(&D_800D6F58 + 0x54)` word is D_800D6FAC).
 * While the turn flag is set: latch a queued B re-press, on the first tick
 * flip the facing and aim heading+pi, then walk the visual yaw by arg0 per
 * tick (direction picked by arg1==1.0) until the remaining angle after one
 * step is smaller than the step, which snaps heading/yaw and clears the
 * turn flag. Callers pass per-ability turn rates (ovl3_6's ride handlers). */
void func_8011E978(f32 arg0, f32 arg1) {
    extern s32 D_800D6FAC;
    u32 objId = omCurrentObj->objId;
    f32 remaining;

    if (!(gKirbyState.isTurning & 1)) {
        return;
    }
    if (D_800D6FAC == 0 && gKirbyState.abilityInUse == 0 &&
        (gKirbyController.buttonPressed & 0x4000)) {
        gKirbyState.unkA = 1;
    }
    if (gKirbyState.turnDirection == 0) {
        D_800E6A10[objId] = -D_800E6A10[objId];
        gKirbyState.turnDirection = D_800E6A10[objId];
        gKirbyState.unk7C = D_800E17D0[objId] + 3.1415927f;
        if (gKirbyState.unk7C >= 6.2831855f) {
            gKirbyState.unk7C -= 6.2831855f;
        }
    } else {
        gKirbyState.unk7C = D_800E17D0[objId];
    }
    gKirbyState.unk80 = gEntitiesAngleYArray[objId];
    if (gKirbyState.unk80 < gKirbyState.unk7C) {
        remaining = (gKirbyState.unk80 + 6.2831855f) - gKirbyState.unk7C;
    } else {
        remaining = gKirbyState.unk80 - gKirbyState.unk7C;
    }
    if ((remaining - arg0) < arg0) {
        gKirbyState.unk80 = gKirbyState.unk7C;
        gKirbyState.turnDirection = 0;
        D_800E17D0[objId] = gKirbyState.unk7C;
        gEntitiesAngleYArray[objId] = D_800E17D0[objId];
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
        gEntitiesAngleYArray[objId] = gKirbyState.unk80;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011E978.s")
#endif

void func_8011EBD4(void) {
    f32 *temp_v0;
    f32 *temp_v0_2;
    f32 temp_f0;

    if (gKirbyState.isFullJump == 0) {
        if ((gKirbyController.buttonHeld & 0x8000) && (gKirbyState.unk17 == 0)) {
            gKirbyState.jumpHeight = (s16) gKirbyState.jumpHeight + 1;
            return;
        }
        if ((s16) gKirbyState.jumpHeight < 0x11) {
            gKirbyState.isFullJump += 1;
            temp_f0 = 0x12 - (s16) gKirbyState.jumpHeight;
            if (gKirbyState.unkCC == 8.0f) {
                temp_v0 = &D_800E3210[omCurrentObj->objId];
                *temp_v0 += ((-0.980665f * temp_f0) + gKirbyState.unkCC) - 2.0f;
                return;
            }
            temp_v0_2 = &D_800E3210[omCurrentObj->objId];
            *temp_v0_2 += (-0.4f * temp_f0) + gKirbyState.unkCC;
        }
    } else {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            D_800E3750[omCurrentObj->objId] = -0.4f;
            D_800E3C90[omCurrentObj->objId] = 1.0f;
            return;
        }
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 271/585. Rewritten as a real nested switch instead of m2c's twelve-label goto ladder: every ability arm just picks a target speed and an acceleration off the stick vector, halves both when D_800E8AE0 & 6 says water, and falls into ONE shared tail that signs the speed by the 0x100 button and stores the pair. Named the 8-byte D_80128338 rows as struct MoveRate {f32 speed; f32 accel;} indexed by gKirbyState.unk7 -- that is the default arm's table. The one genuinely load-bearing goto is ability 20 state 3, whose jump-table entry lands in the no-input tail rather than in the shared apply. Residue: frame 0x48 vs 0x40 and the stick vector 8 bytes high, which shifts every lwc1 off sp in the arms; the arm bodies themselves and the whole apply tail already line up */
/* Horizontal drive from the stick. func_80120AF8 returns the stick vector;
 * each ability picks a target speed and an acceleration from it, halved while
 * in water (D_800E8AE0 & 6), and the shared tail signs the speed by which way
 * the stick is pushed and stores the pair into D_800E6690/D_800E6850. With no
 * stick input (or while the player has no control) the drive decays along the
 * current facing instead. */
void func_8011ED68(void) {
    struct MoveRate {
        /* 0x00 */ f32 speed;
        /* 0x04 */ f32 accel;
    };
    extern struct MoveRate D_80128338[];
    void func_80120AF8(Vector *out);
    f32 speed;
    f32 accel;
    Vector stick;
    struct MoveRate *rate;
    s32 objId;


    func_80120AF8(&stick);
    if ((gKirbyController.buttonHeld & 0x300) && (gKirbyState.unk17 == 0) &&
        (*(s32 *) &D_800D6F58[0x2A] == 0)) {
        switch (gKirbyState.abilityInUse) {
        case 2:
        case 3:
        case 6:
        case 11:
        case 33:
            objId = omCurrentObj->objId;
            if ((D_800E8AE0[objId] & 6) == 0) {
                speed = 0.25f * stick.y;
            } else {
                speed = 0.25f * stick.y * 0.5f;
            }
            if ((D_800E8AE0[objId] & 6) == 0) {
                accel = 2.0f;
            } else {
                accel = 1.0f;
            }
            break;
        case 20:
            objId = omCurrentObj->objId;
            switch (D_800E98E0[objId]) {
            default:
            case 2:
            case 5:
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 0.25f * stick.y;
                } else {
                    speed = 0.25f * stick.y * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 2.0f;
                } else {
                    accel = 1.0f;
                }
                break;
            case 4:
            case 6:
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 0.25f;
                } else {
                    speed = 0.125f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 2.0f;
                } else {
                    accel = 1.0f;
                }
                break;
            case 7:
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 1.6f;
                } else {
                    speed = 0.8f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 6.0f;
                } else {
                    accel = 3.0f;
                }
                break;
            case 3:
                goto noDrive;
            }
            break;
        case 15:
            if (gKirbyState.unk38 == 1.0f) {
                objId = omCurrentObj->objId;
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 0.25f * stick.y;
                } else {
                    speed = 0.25f * stick.y * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 2.0f;
                } else {
                    accel = 1.0f;
                }
            } else {
                objId = omCurrentObj->objId;
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 0.625f * stick.y;
                } else {
                    speed = 0.625f * stick.y * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 5.0f;
                } else {
                    accel = 2.5f;
                }
            }
            break;
        case 32:
            objId = omCurrentObj->objId;
            if ((D_800E8AE0[objId] & 6) == 0) {
                speed = 0.25f * stick.y;
            } else {
                speed = 0.25f * stick.y * 0.5f;
            }
            if ((D_800E8AE0[objId] & 6) == 0) {
                accel = 2.0f * stick.x;
            } else {
                accel = 2.0f * stick.x * 0.5f;
            }
            break;
        case 23:
        case 34:
            objId = omCurrentObj->objId;
            if ((D_800E8AE0[objId] & 6) == 0) {
                speed = 0.8f * stick.y;
            } else {
                speed = 0.8f * stick.y * 0.5f;
            }
            if ((D_800E8AE0[objId] & 6) == 0) {
                accel = 6.0f * stick.x;
            } else {
                accel = 6.0f * stick.x * 0.5f;
            }
            break;
        case 7:
        case 31:
            objId = omCurrentObj->objId;
            if ((D_800E8AE0[objId] & 6) == 0) {
                speed = 0.625f * stick.y;
            } else {
                speed = 0.625f * stick.y * 0.5f;
            }
            if ((D_800E8AE0[objId] & 6) == 0) {
                accel = 5.0f * stick.x;
            } else {
                accel = 5.0f * stick.x * 0.5f;
            }
            break;
        case 0:
            if (gKirbyState.action == 0x18) {
                objId = omCurrentObj->objId;
                if ((D_800E8AE0[objId] & 6) == 0) {
                    speed = 0.25f * stick.y;
                } else {
                    speed = 0.25f * stick.y * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = 2.0f * stick.x;
                } else {
                    accel = 2.0f * stick.x * 0.5f;
                }
                break;
            }
            /* fallthrough */
        default:
            objId = omCurrentObj->objId;
            if (D_800E8920[objId] != 0) {
                if ((D_800E8AE0[objId] & 6) == 0) {
                    rate = &D_80128338[gKirbyState.unk7];
                    speed = rate->speed * stick.y;
                } else {
                    rate = &D_80128338[gKirbyState.unk7];
                    speed = rate->speed * stick.y * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = rate->accel * stick.x;
                } else {
                    accel = rate->accel * stick.x * 0.5f;
                }
            } else {
                if ((D_800E8AE0[objId] & 6) == 0) {
                    rate = &D_80128338[gKirbyState.unk7];
                    speed = rate->speed;
                } else {
                    rate = &D_80128338[gKirbyState.unk7];
                    speed = rate->speed * 0.5f;
                }
                if ((D_800E8AE0[objId] & 6) == 0) {
                    accel = rate->accel;
                } else {
                    accel = rate->accel * 0.5f;
                }
            }
            break;
        }
        if (gKirbyController.buttonHeld & 0x100) {
            D_800E6690[objId] = speed;
            if (accel < 0.0f) {
                D_800E6850[omCurrentObj->objId] = -accel;
                return;
            }
            D_800E6850[omCurrentObj->objId] = accel;
            return;
        }
        D_800E6690[objId] = -speed;
        if (accel < 0.0f) {
            D_800E6850[omCurrentObj->objId] = -accel;
            return;
        }
        D_800E6850[omCurrentObj->objId] = accel;
        return;
    }
noDrive:
    objId = omCurrentObj->objId;
    if (D_800E8920[objId] != 0) {
        if (D_800E8AE0[objId] & 6) {
            D_800E6690[objId] = D_800E6A10[objId] * stick.z;
            D_800E6850[omCurrentObj->objId] = 0.0f;
            return;
        }
        D_800E6690[objId] = D_800E6A10[objId] * (stick.z * 1.6f);
        D_800E6850[omCurrentObj->objId] = 0.0f;
        return;
    }
    D_800E6690[objId] = D_800E6A10[objId] * stick.z;
    D_800E6850[omCurrentObj->objId] = 0.0f;
}
#elif defined(PORT)
/* PORT: Kirby's horizontal walk-speed selector, from
 * asm/nonmatchings/ovl2/plylib/func_8011ED68.s. func_80120AF8 fills a
 * Vector of speed scalars (the sketch's sp2C/sp30/sp34 are v.x/v.y/v.z).
 * `*(&D_800D6F58 + 0x54)` is D_800D6FAC as in the func_8011E548 arm.
 * D_80128338 is the native f32 pair table {accel, speed} indexed by
 * gKirbyState.unk7 (build/pc/data/ovl2_after_spawn.data.c). The inner
 * D_800E98E0 switch (ability 20): case 3 returns, cases out of 2..7 share
 * the 2/5 body (jtbl_80128FEC). */
void func_8011ED68(void) {
    extern s32 D_800D6FAC;
    extern f32 D_80128338[];
    Vector v;
    f32 f2;
    f32 f0;
    s32 grounded;
    u32 objId;

    func_80120AF8(&v);
    if ((gKirbyController.buttonHeld & 0x300) && (gKirbyState.unk17 == 0) && (D_800D6FAC == 0)) {
        objId = omCurrentObj->objId;
        grounded = D_800E8AE0[objId] & 6;
        switch (gKirbyState.abilityInUse) {
        case 2:
        case 3:
        case 6:
        case 11:
        case 33:
            f2 = grounded ? 0.25f * v.y * 0.5f : 0.25f * v.y;
            f0 = grounded ? 1.0f : 2.0f;
            break;
        case 20:
            switch (D_800E98E0[objId]) {
            case 3:
                return;
            case 4:
            case 6:
                f2 = grounded ? 0.125f : 0.25f;
                f0 = grounded ? 1.0f : 2.0f;
                break;
            case 7:
                f2 = grounded ? 0.8f : 1.6f;
                f0 = grounded ? 3.0f : 6.0f;
                break;
            case 2:
            case 5:
            default:
                f2 = grounded ? 0.25f * v.y * 0.5f : 0.25f * v.y;
                f0 = grounded ? 1.0f : 2.0f;
                break;
            }
            break;
        case 15:
            if (gKirbyState.unk38 == 1.0f) {
                f2 = grounded ? 0.25f * v.y * 0.5f : 0.25f * v.y;
                f0 = grounded ? 1.0f : 2.0f;
            } else {
                f2 = grounded ? 0.625f * v.y * 0.5f : 0.625f * v.y;
                f0 = grounded ? 2.5f : 5.0f;
            }
            break;
        case 32:
            f2 = grounded ? 0.25f * v.y * 0.5f : 0.25f * v.y;
            f0 = grounded ? 2.0f * v.x * 0.5f : 2.0f * v.x;
            break;
        case 23:
        case 34:
            f2 = grounded ? 0.8f * v.y * 0.5f : 0.8f * v.y;
            f0 = grounded ? 6.0f * v.x * 0.5f : 6.0f * v.x;
            break;
        case 7:
        case 31:
            f2 = grounded ? 0.625f * v.y * 0.5f : 0.625f * v.y;
            f0 = grounded ? 5.0f * v.x * 0.5f : 5.0f * v.x;
            break;
        case 0:
            if (gKirbyState.action == 0x18) {
                f2 = grounded ? 0.25f * v.y * 0.5f : 0.25f * v.y;
                f0 = grounded ? 2.0f * v.x * 0.5f : 2.0f * v.x;
                break;
            }
            /* fallthrough */
        default:
            if (D_800E8920[objId] != 0) {
                if (grounded) {
                    f2 = D_80128338[gKirbyState.unk7 * 2] * v.y * 0.5f;
                    f0 = D_80128338[gKirbyState.unk7 * 2 + 1] * v.x * 0.5f;
                } else {
                    f2 = D_80128338[gKirbyState.unk7 * 2] * v.y;
                    f0 = D_80128338[gKirbyState.unk7 * 2 + 1] * v.x;
                }
            } else {
                if (grounded) {
                    f2 = D_80128338[gKirbyState.unk7 * 2] * 0.5f;
                    f0 = D_80128338[gKirbyState.unk7 * 2 + 1] * 0.5f;
                } else {
                    f2 = D_80128338[gKirbyState.unk7 * 2];
                    f0 = D_80128338[gKirbyState.unk7 * 2 + 1];
                }
            }
            break;
        }
        if (gKirbyController.buttonHeld & 0x100) {
            D_800E6690[objId] = f2;
        } else {
            D_800E6690[objId] = -f2;
        }
        if (f0 < 0.0f) {
            f0 = -f0;
        }
        D_800E6850[omCurrentObj->objId] = f0;
        return;
    }
    objId = omCurrentObj->objId;
    if ((D_800E8920[objId] != 0) && !(D_800E8AE0[objId] & 6)) {
        D_800E6690[objId] = D_800E6A10[objId] * (v.z * 1.6f);
    } else {
        D_800E6690[objId] = D_800E6A10[objId] * v.z;
    }
    D_800E6850[omCurrentObj->objId] = 0.0f;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011ED68.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 13/537 -- the weakest of my lane, and honestly so: this is a 537-word switch whose gKirbyState base register differs from the ROM's at instruction 0 (t2 vs t0), and every one of the six state arms then rides that rotation. What IS solid and worth keeping is the reading: the six states of D_800E98E0 (1 idle, 2 rising, 3 sinking, 4 diving, 5 surfacing, 6 exiting), D_800E9720 as the button-hold debounce timer, the C-up/C-down masks 0x800/0x400, and the fact that every arm only chooses the next state before falling into one shared tail that applies the vertical velocity -- written here as a real switch plus one goto for the case-3-into-case-4 dive check, not m2c's twelve-label ladder. Also confirmed by asm: func_8010C734 takes ONE argument (a2 holds a leftover objId*4 byte index, the same m2c trap as func_800F88C8 in func_8011C8F8), which agrees with the MATCHED func_80122558 in this file */
/* Swim/float state machine. D_800E98E0 holds the state (1 idle, 2 rising,
 * 3 sinking, 4 diving, 5 surfacing, 6 exiting); D_800E9720 is the hold timer
 * that debounces the up/down buttons. The switch only decides the NEXT state;
 * every path then falls into applyState, which drives the vertical velocity
 * and gravity for that state. Returns the new state when it changed. */
s32 func_8011F690(void) {
    s32 func_8010C734(struct PositionState *state);
    u32 func_80121194(void);
    void func_8011CF58(void);
    void func_8011D67C(void);
    void func_800AECC0(f32 rate);
    void func_800AED20(f32 rate);
    /* the collision result block; only its leading flag word is read here */
    extern u8 D_8012BCA0[];
    GObj *obj;
    s32 objId;
    s32 state;
    f32 speed;
    f32 sink;
    f32 rise;

    if (gKirbyState.unk17 != 0) {
        return 0;
    }
    objId = omCurrentObj->objId;
    D_800E9AA0[objId] = (struct EntityThing800E9AA0 *) D_800E98E0[objId];
    func_8010C734(&gPositionState);
    obj = omCurrentObj;
    objId = obj->objId;
    state = D_800E98E0[objId];
    switch (state) {
    case 1:
        if ((D_800E8920[objId] != 0) && (func_80121194() != 0)) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            set_kirby_action_1(0, 1);
            return 0;
        }
        objId = omCurrentObj->objId;
        if (*(s32 *) &D_800D6F58[0x2A] == 0) {
            if (gKirbyController.buttonHeld & 0x800) {
                D_800E98E0[objId] = 2;
                objId = omCurrentObj->objId;
            } else if ((D_800E8920[objId] == 0) && (gKirbyController.buttonHeld & 0x400)) {
                D_800E98E0[objId] = 3;
                objId = omCurrentObj->objId;
            }
        }
        state = D_800E98E0[objId];
        break;
    case 2:
        if ((gKirbyState.ceilingCollisionNext == 0) &&
            (((D_800E6A10[objId] == 1.0f) && !((*(u32 *) D_8012BCA0 >> 19) & 2)) ||
             ((D_800E6A10[objId] == -1.0f) && !((*(u32 *) D_8012BCA0 >> 19) & 0x10)))) {
            if (func_80121194() != 0) {
                set_kirby_action_1(3, 5);
                return 0;
            }
            D_800E98E0[omCurrentObj->objId] = 5;
            objId = omCurrentObj->objId;
            state = D_800E98E0[objId];
            break;
        }
        if (*(s32 *) &D_800D6F58[0x2A] != 0) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
            break;
        }
        if (!(gKirbyController.buttonHeld & 0x800) && (D_800E9720[objId] >= 7)) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if ((D_800E8920[objId] == 0) && (gKirbyController.buttonHeld & 0x400)) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 3;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if (gKirbyController.buttonHeld & 0x800) {
            if ((D_800E9720[objId] > 0) && (D_800E9720[objId] < 7)) {
                D_800E9720[objId] = 4;
                objId = obj->objId;
                state = D_800E98E0[objId];
            }
        } else {
            D_800E9720[objId] = D_800E9720[objId] + 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        }
        break;
    case 3:
        if (*(s32 *) &D_800D6F58[0x2A] == 0) {
                if (gKirbyController.buttonHeld & 0x800) {
                D_800E9720[objId] = 0;
                D_800E98E0[obj->objId] = 2;
                objId = obj->objId;
            } else if ((D_800E8920[objId] != 0) || !(D_800E9720[objId] < 7)) {
                D_800E9720[objId] = 0;
                D_800E98E0[obj->objId] = 1;
                objId = obj->objId;
            } else if (gKirbyController.buttonHeld & 0x400) {
                if ((D_800E9720[objId] > 0) && (D_800E9720[objId] < 7)) {
                    D_800E9720[objId] = 0;
                    D_800E98E0[obj->objId] = 4;
                    objId = obj->objId;
                }
            } else {
                D_800E9720[objId] = D_800E9720[objId] + 1;
                objId = obj->objId;
            }
        }
        goto diveCheck;
    case 4:
        if (*(s32 *) &D_800D6F58[0x2A] != 0) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
            break;
        }
        if (!(gKirbyController.buttonHeld & 0x400) || (D_800E8920[objId] != 0)) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
            break;
        }
    diveCheck:
        if ((gKirbyState.floorCollisionNext == 0) &&
            (((D_800E6A10[objId] == 1.0f) && !((*(u32 *) D_8012BCA0 >> 19) & 4)) ||
             ((D_800E6A10[objId] == -1.0f) && !((*(u32 *) D_8012BCA0 >> 19) & 0x20)))) {
            set_kirby_action_1(6, 6);
            return 0;
        }
        state = D_800E98E0[objId];
        break;
    case 6:
        func_8011D67C();
        return 0;
    }
    if ((state == 1) || (state == 5)) {
        func_8011CF58();
    } else if (state != 4) {
        if (gKirbyController.buttonHeld & 0xC00) {
            if (gKirbyController.buttonHeld & 0x800) {
                if (!(D_800E8AE0[objId] & 6)) {
                    speed = 5.0f;
                } else {
                    speed = 2.5f;
                }
            } else if (!(D_800E8AE0[objId] & 6)) {
                speed = -5.0f;
            } else {
                speed = -2.5f;
            }
            D_800E3210[objId] = speed;
            D_800E3750[obj->objId] = 0.0f;
            if (speed < 0.0f) {
                D_800E3C90[obj->objId] = -speed;
            } else {
                D_800E3C90[obj->objId] = speed;
            }
        } else {
            if (D_800E3210[objId] > 0.0f) {
                D_800E3750[objId] = -0.75f;
            } else {
                D_800E3750[objId] = 0.75f;
            }
            D_800E3C90[obj->objId] = 0.0f;
        }
        func_8011CF58();
    } else {
        if ((D_800E8AE0[objId] & 6) == 0) {
            sink = 3.0f;
            rise = 9.0f;
        } else {
            sink = 1.5f;
            rise = 4.5f;
        }
        func_800AECC0(sink);
        func_800AED20(sink);
        D_800E3210[omCurrentObj->objId] = -rise;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        if (rise < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -rise;
        } else {
            D_800E3C90[omCurrentObj->objId] = rise;
        }
    }
    objId = omCurrentObj->objId;
    if (D_800E98E0[objId] != (s32) D_800E9AA0[objId]) {
        return D_800E98E0[objId];
    }
    return 0;
}
#elif defined(PORT)
/* Swim vertical-control state machine (draft above, completed). States in
 * D_800E98E0: 1 neutral stroke, 2 ascending (C-up held), 3 descend-tap
 * timer, 4 diving (C-down held), 5 surface pop, 6 handoff. Runs the water
 * sweep (func_8010C734), transitions on the C buttons with the 7-frame tap
 * window in D_800E9720, exits to land/dive-out actions when the matching
 * collision class opens up, then applies the state's vertical velocity /
 * gravity / cap. Returns the new state when it changed, else 0. */
s32 func_8011F690(void) {
    s32 func_8010C734(void *);
    u32 func_80121194(void);
    extern u8 D_8012BCA0[168];  /* whole PC block: src/pc/pc_bss_whole.c */
    u32 id;
    s32 st;
    s32 locked;

    if (gKirbyState.unk17 != 0) {
        return 0;
    }
    id = omCurrentObj->objId;
    D_800E9AA0[id] = (void *)(uintptr_t) D_800E98E0[id];
    func_8010C734(&gPositionState);
    id = omCurrentObj->objId;
    st = D_800E98E0[id];
    locked = *(u32 *) ((u8 *) D_800D6F58 + 0x54) != 0;
    switch (st) {
    case 1:
        if (D_800E8920[id] != 0 && func_80121194() != 0) {
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
            set_kirby_action_1(0, 1);
            return 0;
        }
        if (!locked) {
            if (gKirbyController.buttonHeld & 0x800) {
                D_800E98E0[id] = 2;
            } else if (D_800E8920[id] == 0 && (gKirbyController.buttonHeld & 0x400)) {
                D_800E98E0[id] = 3;
            }
        }
        break;
    case 2:
        if (gKirbyState.ceilingCollisionNext == 0 &&
            ((D_800E6A10[id] == 1.0f && !((*(u32 *) D_8012BCA0 >> 0x13) & 2)) ||
             (D_800E6A10[id] == -1.0f && !((*(u32 *) D_8012BCA0 >> 0x13) & 0x10)))) {
            if (func_80121194() != 0) {
                set_kirby_action_1(3, 5);
                return 0;
            }
            D_800E98E0[id] = 5;
            break;
        }
        if (!locked) {
            s32 up = gKirbyController.buttonHeld & 0x800;

            if (up == 0 && D_800E9720[id] >= 7) {
                D_800E9720[id] = 0;
                D_800E98E0[id] = 1;
            } else if (D_800E8920[id] == 0 && (gKirbyController.buttonHeld & 0x400)) {
                D_800E9720[id] = 0;
                D_800E98E0[id] = 3;
            } else if (up != 0) {
                if (D_800E9720[id] > 0 && D_800E9720[id] < 7) {
                    D_800E9720[id] = 4;
                }
            } else {
                D_800E9720[id] += 1;
            }
        } else {
            D_800E98E0[id] = 1;
        }
        break;
    case 3:
        if (!locked) {
            if (gKirbyController.buttonHeld & 0x800) {
                D_800E9720[id] = 0;
                D_800E98E0[id] = 2;
            } else if (D_800E8920[id] != 0 || D_800E9720[id] >= 7) {
                D_800E9720[id] = 0;
                D_800E98E0[id] = 1;
            } else if (gKirbyController.buttonHeld & 0x400) {
                if (D_800E9720[id] > 0 && D_800E9720[id] < 7) {
                    D_800E9720[id] = 0;
                    D_800E98E0[id] = 4;
                }
            } else {
                D_800E9720[id] += 1;
            }
        }
        goto dive_exit_check;
    case 4:
        if (!locked) {
            if (!(gKirbyController.buttonHeld & 0x400) || D_800E8920[id] != 0) {
                D_800E98E0[id] = 1;
                break;
            }
dive_exit_check:
            if (gKirbyState.floorCollisionNext == 0 &&
                ((D_800E6A10[id] == 1.0f && !((*(u32 *) D_8012BCA0 >> 0x13) & 4)) ||
                 (D_800E6A10[id] == -1.0f && !((*(u32 *) D_8012BCA0 >> 0x13) & 0x20)))) {
                set_kirby_action_1(6, 6);
                return 0;
            }
        } else {
            D_800E98E0[id] = 1;
        }
        break;
    case 6:
        func_8011D67C();
        return 0;
    default:
        break;
    }
    st = D_800E98E0[id];
    if (st == 1 || st == 5) {
        func_8011CF58();
    } else if (st != 4) {
        if (gKirbyController.buttonHeld & 0xC00) {
            f32 v;

            if (gKirbyController.buttonHeld & 0x800) {
                v = (D_800E8AE0[id] & 6) ? 2.5f : 5.0f;
            } else {
                v = (D_800E8AE0[id] & 6) ? -2.5f : -5.0f;
            }
            D_800E3210[id] = v;
            D_800E3750[id] = 0.0f;
            D_800E3C90[id] = (v < 0.0f) ? -v : v;
        } else {
            D_800E3750[id] = (D_800E3210[id] > 0.0f) ? -0.75f : 0.75f;
            D_800E3C90[id] = 0.0f;
        }
        func_8011CF58();
    } else {
        f32 stroke = (D_800E8AE0[id] & 6) ? 1.5f : 3.0f;
        f32 speed = (D_800E8AE0[id] & 6) ? 4.5f : 9.0f;

        func_800AECC0(stroke);
        func_800AED20(stroke);
        D_800E3210[id] = -speed;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (speed < 0.0f) ? -speed : speed;
    }
    if (D_800E98E0[id] != (s32) (uintptr_t) D_800E9AA0[id]) {
        return D_800E98E0[id];
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011F690.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 13/715, the same floor as its sibling func_8011F690: the gKirbyState base lands in t3 where the ROM uses t1 at instruction 0, and a 715-word function rides that rotation to the end. The value here is the reading, not the score. It is func_8011F690's state machine plus the mid-air spin: once gKirbyState.unk3C is nonzero the whole state machine is skipped (that is what the leading goto is for, and it IS load-bearing -- the spin tail is a real shared exit), each frame turns the body DObj's yaw by 0.3927 (halved in water) for 8 frames (16 in water), and on the last frame the facing D_800E6A10, the heading D_800E17D0 and the track parameter D_800E6BD0 are all flipped to the far side and the stashed ability in D_800EA360 is restored. Written as a real switch with named states rather than m2c's twenty-four-temp ladder; func_8010CABC genuinely takes &omCurrentObj (it can move it), which is why the object pointer is re-read after that call and not before */
/* Swim state machine with the mid-air spin. Same six D_800E98E0 states and
 * D_800E9720 hold timer as func_8011F690 above, plus the spin: once
 * gKirbyState.unk3C is nonzero the state machine is skipped entirely and each
 * frame advances the body's yaw by one step until the spin completes, at
 * which point Kirby's facing and track parameter are flipped to the other
 * side. Returns the new state when it changed this frame. */
s32 func_8011FEF8(void) {
    s32 func_8010CABC(struct PositionState *state, GObj **objOut);
    s32 func_800F8570(s32 objId, struct Unk80129114_4_4 *footer, GObj *obj, f32 *angles);
    u32 func_80121194(void);
    u32 func_801210FC(void);
    void func_8011CF58(void);
    f32 accel;
    f32 sink;
    Vector pos;
    GObj *obj;
    struct Unk80129114_4_4 *footer;
    s32 objId;
    s32 state;
    s32 spin;
    s32 spinLimit;
    f32 speed;
    f32 step;

    spin = gKirbyState.unk3C;
    if ((spin != 0) || (gKirbyState.unk17 != 0)) {
        goto spinStep;
    }
    obj = omCurrentObj;
    objId = obj->objId;
    D_800E9AA0[objId] = (struct EntityThing800E9AA0 *) D_800E98E0[objId];
    func_8010CABC(&gPositionState, &omCurrentObj);
    obj = omCurrentObj;
    objId = obj->objId;
    state = D_800E98E0[objId];
    switch (state) {
    case 1:
        if ((D_800E8920[objId] != 0) && (gKirbyState.unk3C == 0) && (func_80121194() != 0)) {
            D_800E98E0[omCurrentObj->objId] = 5;
            objId = omCurrentObj->objId;
            state = D_800E98E0[objId];
        } else {
            if ((gKirbyState.unk3C == 0) && !(gKirbyController.buttonHeld & 0x300)) {
                gKirbyState.unk7 = 0;
            }
            objId = omCurrentObj->objId;
            if (*(s32 *) &D_800D6F58[0x2A] == 0) {
                if (gKirbyController.buttonHeld & 0x800) {
                    D_800E98E0[objId] = 2;
                    objId = omCurrentObj->objId;
                } else if ((D_800E8920[objId] == 0) &&
                           (gKirbyController.buttonHeld & 0x400)) {
                    D_800E98E0[objId] = 3;
                    objId = omCurrentObj->objId;
                }
            }
            state = D_800E98E0[objId];
        }
        break;
    case 2:
        if (*(s32 *) &D_800D6F58[0x2A] != 0) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
            break;
        }
        if (!(gKirbyController.buttonHeld & 0x800) && (D_800E9720[objId] >= 7)) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if ((D_800E8920[objId] == 0) && (gKirbyController.buttonHeld & 0x400)) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 3;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if (gKirbyController.buttonHeld & 0x800) {
            if ((D_800E9720[objId] > 0) && (D_800E9720[objId] < 7)) {
                D_800E9720[objId] = 4;
                objId = obj->objId;
                state = D_800E98E0[objId];
            }
        } else {
            D_800E9720[objId] = D_800E9720[objId] + 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        }
        break;
    case 3:
        if (*(s32 *) &D_800D6F58[0x2A] != 0) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
            break;
        }
        if (gKirbyController.buttonHeld & 0x800) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 2;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if ((D_800E8920[objId] != 0) || !(D_800E9720[objId] < 7)) {
            D_800E9720[objId] = 0;
            D_800E98E0[obj->objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if (gKirbyController.buttonHeld & 0x400) {
            if ((D_800E9720[objId] > 0) && (D_800E9720[objId] < 7)) {
                D_800E9720[objId] = 0;
                D_800E98E0[obj->objId] = 4;
                objId = obj->objId;
                state = D_800E98E0[objId];
            }
        } else {
            D_800E9720[objId] = D_800E9720[objId] + 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        }
        break;
    case 4:
        if (*(s32 *) &D_800D6F58[0x2A] != 0) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        } else if (!(gKirbyController.buttonHeld & 0x400) || (D_800E8920[objId] != 0)) {
            D_800E98E0[objId] = 1;
            objId = obj->objId;
            state = D_800E98E0[objId];
        }
        break;
    case 6:
        if (gKirbyState.unk7 == 1) {
            gKirbyState.unk44 = 0;
            gKirbyState.isTurning |= 1;
            gKirbyState.unk38 = 0.0f;
            set_kirby_action_1(2, 4);
            return 0;
        }
        set_kirby_action_1(0, 1);
        return 0;
    case 5:
        return 0;
    }
    if ((state == 1) || (state == 5)) {
        func_8011CF58();
    } else if (state != 4) {
        if (gKirbyController.buttonHeld & 0xC00) {
            if (gKirbyController.buttonHeld & 0x800) {
                if (!(D_800E8AE0[objId] & 6)) {
                    speed = 5.0f;
                } else {
                    speed = 2.5f;
                }
            } else if (!(D_800E8AE0[objId] & 6)) {
                speed = -5.0f;
            } else {
                speed = -2.5f;
            }
            D_800E3210[objId] = speed;
            D_800E3750[obj->objId] = 0.0f;
            if (speed < 0.0f) {
                D_800E3C90[obj->objId] = -speed;
            } else {
                D_800E3C90[obj->objId] = speed;
            }
        } else if (D_800E3210[objId] > 0.0f) {
            D_800E3750[objId] = -0.75f;
            D_800E3C90[obj->objId] = 0.0f;
        } else {
            D_800E3750[objId] = 0.75f;
            D_800E3C90[obj->objId] = 0.0f;
        }
        func_8011CF58();
    } else {
        if ((D_800E8AE0[objId] & 6) == 0) {
            sink = 3.0f;
            accel = 9.0f;
        } else {
            sink = 1.5f;
            accel = 4.5f;
        }
        func_800AECC0(sink);
        func_800AED20(sink);
        D_800E3210[omCurrentObj->objId] = -accel;
        D_800E3750[omCurrentObj->objId] = 0.0f;
        if (accel < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -accel;
        } else {
            D_800E3C90[omCurrentObj->objId] = accel;
        }
    }
    spin = gKirbyState.unk3C;
spinStep:
    if (spin == 0) {
        objId = omCurrentObj->objId;
        if ((D_800E98E0[objId] == (s32) D_800E9AA0[objId]) && (func_801210FC() != 0)) {
            D_800EA360[omCurrentObj->objId] = gKirbyState.unk15C;
            gKirbyState.unk15C = 0;
            gKirbyState.unk3C += 1;
        }
        objId = omCurrentObj->objId;
    } else {
        if ((D_800E8AE0[omCurrentObj->objId] & 6) == 0) {
            step = 0.3927f;
        } else {
            step = 0.19635f;
        }
        if ((D_800E8AE0[omCurrentObj->objId] & 6) != 0) {
            spinLimit = 0x10;
        } else {
            spinLimit = 8;
        }
        if (spin < spinLimit) {
            omCurrentObj->data.dobj->firstChild->angle.v.y -= step;
            gKirbyState.unk3C += 1;
            objId = omCurrentObj->objId;
        } else {
            if ((*D_800D7088 & 0x8000FFFF) != 3) {
                func_800FBE1C();
                func_800FA414(3);
            }
            omCurrentObj->data.dobj->firstChild->angle.v.y = 0.0f;
            D_800E6A10[omCurrentObj->objId] = -D_800E6A10[omCurrentObj->objId];
            D_800E17D0[omCurrentObj->objId] -= 3.1415927f;
            objId = omCurrentObj->objId;
            gEntitiesAngleYArray[objId] = D_800E17D0[objId];
            if (D_800D6FB2 == 2) {
                objId = omCurrentObj->objId;
                if (D_800E6A10[objId] == 1.0f) {
                    speed = -7.6f;
                } else {
                    speed = 7.6f;
                }
            } else {
                objId = omCurrentObj->objId;
                if (D_800E6A10[objId] == 1.0f) {
                    speed = -4.12f;
                } else {
                    speed = 4.12f;
                }
            }
            footer = D_80129114->unk4[D_800E5F90[objId]].unk4;
            D_800E6BD0[objId] += (1.0f / footer->unkC) * speed;
            func_800F8570(omCurrentObj->objId, footer, omCurrentObj, D_800E17D0);
            objId = omCurrentObj->objId;
            mtxGetInterpolatedPosition(&pos, D_80129114->unk4[D_800E5F90[objId]].unk4,
                                       D_800E6BD0[objId]);
            gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
            gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
            gKirbyState.unk3C = 0;
            gKirbyState.unk15C = D_800EA360[omCurrentObj->objId];
            objId = omCurrentObj->objId;
        }
    }
    if (D_800E98E0[objId] != (s32) D_800E9AA0[objId]) {
        return D_800E98E0[objId];
    }
    return 0;
}
#elif defined(PORT)
/* Swim control with the underwater turn (draft above, completed;
 * func_8011F690's sibling). Same C-up/C-down state machine and vertical
 * velocity application, but when the facing flips (func_801210FC) the
 * PlyEntry handle parks in D_800EA360 and unk3C counts an 8-frame (16 in
 * heavy water) yaw spin of the body DObj, after which facing, heading and
 * the track offset flip (push scaled by the track segment's 1/unkC), the
 * position re-interpolates onto the track, and the handle is restored. */
s32 func_8011FEF8(void) {
    s32 func_8010CABC(void *);
    u32 func_80121194(void);
    u32 func_801210FC(void);
    extern u8 D_8012BCA0[168];
    u32 id = omCurrentObj->objId;
    s32 turn = gKirbyState.unk3C;
    s32 st;
    s32 locked;

    if (turn == 0 && gKirbyState.unk17 == 0) {
        D_800E9AA0[id] = (void *)(uintptr_t) D_800E98E0[id];
        func_8010CABC(&gPositionState);
        id = omCurrentObj->objId;
        st = D_800E98E0[id];
        locked = *(u32 *) ((u8 *) D_800D6F58 + 0x54) != 0;
        switch (st) {
        case 1:
            if (D_800E8920[id] != 0 && gKirbyState.unk3C == 0 && func_80121194() != 0) {
                D_800E98E0[id] = 5;
            } else {
                if (gKirbyState.unk3C == 0 && !(gKirbyController.buttonHeld & 0x300)) {
                    gKirbyState.unk7 = 0;
                }
                if (!locked) {
                    if (gKirbyController.buttonHeld & 0x800) {
                        D_800E98E0[id] = 2;
                    } else if (D_800E8920[id] == 0 && (gKirbyController.buttonHeld & 0x400)) {
                        D_800E98E0[id] = 3;
                    }
                }
            }
            break;
        case 2:
            if (!locked) {
                s32 up = gKirbyController.buttonHeld & 0x800;

                if (up == 0 && D_800E9720[id] >= 7) {
                    D_800E9720[id] = 0;
                    D_800E98E0[id] = 1;
                } else if (D_800E8920[id] == 0 && (gKirbyController.buttonHeld & 0x400)) {
                    D_800E9720[id] = 0;
                    D_800E98E0[id] = 3;
                } else if (up != 0) {
                    if (D_800E9720[id] > 0 && D_800E9720[id] < 7) {
                        D_800E9720[id] = 4;
                    }
                } else {
                    D_800E9720[id] += 1;
                }
            } else {
                D_800E98E0[id] = 1;
            }
            break;
        case 4:
            if (!locked) {
                if (!(gKirbyController.buttonHeld & 0x400) || D_800E8920[id] != 0) {
                    D_800E98E0[id] = 1;
                }
            } else {
                D_800E98E0[id] = 1;
            }
            break;
        case 3:
            if (!locked) {
                if (gKirbyController.buttonHeld & 0x800) {
                    D_800E9720[id] = 0;
                    D_800E98E0[id] = 2;
                } else if (D_800E8920[id] != 0 || D_800E9720[id] >= 7) {
                    D_800E9720[id] = 0;
                    D_800E98E0[id] = 1;
                } else if (gKirbyController.buttonHeld & 0x400) {
                    if (D_800E9720[id] > 0 && D_800E9720[id] < 7) {
                        D_800E9720[id] = 0;
                        D_800E98E0[id] = 4;
                    }
                } else {
                    D_800E9720[id] += 1;
                }
            } else {
                D_800E98E0[id] = 1;
            }
            break;
        case 6:
            if (gKirbyState.unk7 == 1) {
                gKirbyState.unk44 = 0;
                gKirbyState.isTurning |= 1;
                gKirbyState.unk38 = 0.0f;
                set_kirby_action_1(2, 4);
                return 0;
            }
            set_kirby_action_1(0, 1);
            return 0;
        case 5:
            return 0;
        default:
            break;
        }
        st = D_800E98E0[id];
        if (st == 1 || st == 5) {
            func_8011CF58();
        } else if (st != 4) {
            if (gKirbyController.buttonHeld & 0xC00) {
                f32 v;

                if (gKirbyController.buttonHeld & 0x800) {
                    v = (D_800E8AE0[id] & 6) ? 2.5f : 5.0f;
                } else {
                    v = (D_800E8AE0[id] & 6) ? -2.5f : -5.0f;
                }
                D_800E3210[id] = v;
                D_800E3750[id] = 0.0f;
                D_800E3C90[id] = (v < 0.0f) ? -v : v;
            } else {
                D_800E3750[id] = (D_800E3210[id] > 0.0f) ? -0.75f : 0.75f;
                D_800E3C90[id] = 0.0f;
            }
            func_8011CF58();
        } else {
            f32 stroke = (D_800E8AE0[id] & 6) ? 1.5f : 3.0f;
            f32 speed = (D_800E8AE0[id] & 6) ? 4.5f : 9.0f;

            func_800AECC0(stroke);
            func_800AED20(stroke);
            D_800E3210[id] = -speed;
            D_800E3750[id] = 0.0f;
            D_800E3C90[id] = (speed < 0.0f) ? -speed : speed;
        }
        turn = gKirbyState.unk3C;
    }
    if (turn == 0) {
        id = omCurrentObj->objId;
        if (D_800E98E0[id] == (s32) (uintptr_t) D_800E9AA0[id] && func_801210FC() != 0) {
            D_800EA360[id] = (s32) gKirbyState.unk15C;
            gKirbyState.unk15C = 0;
            gKirbyState.unk3C += 1;
        }
    } else {
        u32 oid = omCurrentObj->objId;
        f32 step = (D_800E8AE0[oid] & 6) ? 0.19635f : 0.3927f;
        s32 frames = (D_800E8AE0[oid] & 6) ? 0x10 : 8;

        if (turn < frames) {
            omCurrentObj->data.dobj->firstChild->angle.v.y -= step;
            gKirbyState.unk3C += 1;
        } else {
            struct Unk80129114_4_4 *tp;
            Vector p;
            f32 push;

            if ((D_800D7088[0] & 0x8000FFFF) != 3) {
                func_800FBE1C();
                func_800FA414(3);
            }
            omCurrentObj->data.dobj->firstChild->angle.v.y = 0.0f;
            D_800E6A10[oid] = -D_800E6A10[oid];
            D_800E17D0[oid] -= 3.1415927f;
            gEntitiesAngleYArray[oid] = D_800E17D0[oid];
            if (D_800D6FB2 == 2) {
                push = (D_800E6A10[oid] == 1.0f) ? -7.6f : 7.6f;
            } else {
                push = (D_800E6A10[oid] == 1.0f) ? -4.12f : 4.12f;
            }
            tp = D_80129114->unk4[D_800E5F90[oid]].unk4;
            D_800E6BD0[oid] += (1.0f / tp->unkC) * push;
            func_800F8570(oid);
            mtxGetInterpolatedPosition(&p, (s32 *) D_80129114->unk4[D_800E5F90[oid]].unk4,
                                       D_800E6BD0[oid]);
            gEntitiesNextPosXArray[oid] = p.x;
            gEntitiesNextPosZArray[oid] = p.z;
            gKirbyState.unk3C = 0;
            gKirbyState.unk15C = (u32) D_800EA360[oid];
        }
    }
    id = omCurrentObj->objId;
    if (D_800E98E0[id] != (s32) (uintptr_t) D_800E9AA0[id]) {
        return D_800E98E0[id];
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8011FEF8.s")
#endif

void func_80120A28(void) {
    Vector sp24;

    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.35f;
        D_800E6850[omCurrentObj->objId] = 0.0f;
        return;
    }
    func_80120AF8(&sp24);
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * sp24.z;
    D_800E6850[omCurrentObj->objId] = 0.0f;
}

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
extern f32 gKirbyHp;
extern u32 D_80128348[];
s32 func_80120BCC(void) {
    s32 ability = gKirbyState.ability;
    s32 ret = 0;

    if ((ability != 0) && (gKirbyState.abilityInUse == 0)) {
        gKirbyState.hpAfterDamage = gKirbyHp;
        if ((s16)gKirbyState.abilityDropTimer == 0) {
            gKirbyState.abilityDropTimer = D_80128348[(s16)gKirbyState.hpAfterDamage] + 0x2D;
        } else {
            gKirbyState.droppedAbility = ability;
            gKirbyState.abilityDropTimer = 0;
            gKirbyState.isTakingDamage = 1;
            gKirbyState.ability = 0;
            ret = 1;
        }
    }
    return ret;
}

#ifdef NON_MATCHING
s32 func_80120CCC(f32 arg0, f32 arg1) {
    f32 temp_f2;

    if (gKirbyState.unk78 != 0) {
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
                    gKirbyState.unk78 = gKirbyState.unk80;
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
                gKirbyState.unk78 = gKirbyState.unk80;
            }
        }
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + gKirbyState.unk80;
        return 1;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId] + gKirbyState.unk7C;
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120CCC.s")
#endif
#ifdef MIPS_TO_C
/* FACTORY: 31/143. Structure and every N64 spelling recovered: D_801283E8 is a 0xC-stride row {struct DmgPal *unk0, s32 unk4 count, s32 unk8 flash} and D_801283F0 is just that row's +8 member symbol (same masked lo16, so the row-array spelling is correct); the palette records are 0x10-stride with the hold time at +0xC; and CRUCIALLY damageFlashTimer/damagePaletteTimer are declared u16 in Player.h but the ROM reads them with lh and materialises their -1/-2 constants with addiu, so every read and store must go through *(s16 *)&field -- the plain (s16) cast emits lhu+sll+sra and the plain store emits ori 0xfffe (that one change was worth 14 words). timer must be s32, not s16, or the compare gets a redundant sign-extend. Confirmed the reset tests the PRE-decrement value (sltiu in the bne delay slot), as the PORT arm notes and m2c gets wrong. Residue: the ROM hoists &D_800D7010 into a0 before the D_800E7CE0 test so both arms share it; IDO here re-materialises it per arm, leaving the block 3 words short and rotating the temp registers after it. An explicit held u32 *dst local did not move it */
void func_80120E74(UNUSED s32 arg0) {
    struct DmgPal {
        /* 0x00 */ u32 flags;
        /* 0x04 */ u32 unk4;
        /* 0x08 */ u32 unk8;
        /* 0x0C */ s32 unkC;
    };
    struct DmgRow {
        /* 0x00 */ struct DmgPal *unk0;
        /* 0x04 */ s32 unk4;
        /* 0x08 */ s32 unk8;
    };
    void func_800F90C0(s32, u32 *);
    void func_800A7BF4(u32 *, u32 *);
    void func_800A5404(u32 *, struct DmgPal *);
    void func_800A5468(u32 *, u32 *);
    extern u32 D_800D7B80;
    extern s32 D_800BE4EC;
    extern u32 D_80128370;
    extern struct DmgRow D_801283E8[];
    struct DmgRow *row;
    struct DmgPal *pal;
    s32 count;
    s32 sel;
    s32 objId;
    s32 idx;
    s32 timer;
    u32 *dst;

    func_800F90C0(omCurrentObj->objId, &D_800D7010 + 0x12);
    func_800A7BF4(&D_800D7B80 + 6, &D_800D7010 + 0x12);
    if (*(s16 *) &gKirbyState.damageFlashTimer == -1) {
        if (gKirbyState.damageType != 0) {
            *(s16 *) &gKirbyState.damageFlashTimer = -2;
            goto block10;
        }
        {
            dst = &D_800D7010;
            objId = omCurrentObj->objId;
            if (D_800E7CE0[objId] == 0) {
                if (gKirbyState.unk10 == 0) {
                    func_800F90C0(objId, dst);
                    return;
                }
                func_800A5404(dst, (struct DmgPal *) gKirbyState.unk10);
                return;
            }
            sel = 1;
            if (D_800BE4EC & 2) {
                sel = 0;
            }
            func_800A5468(dst, (sel * 0xC) + &D_80128370);
            return;
        }
    }
block10:
    timer = *(s16 *) &gKirbyState.damageFlashTimer;
    if (timer == -2) {
        gKirbyState.damagePaletteIndex = 0xFFFF;
        D_800E7CE0[omCurrentObj->objId] = 0;
        gKirbyState.damagePaletteTimer = 1;
        *(s16 *) &gKirbyState.damageFlashTimer = D_801283E8[gKirbyState.damageType].unk8;
    } else {
        *(s16 *) &gKirbyState.damageFlashTimer = timer - 1;
        if (timer == 0) {
            gKirbyState.damageType = 0;
            *(s16 *) &gKirbyState.damageFlashTimer = -1;
            return;
        }
    }
    row = &D_801283E8[gKirbyState.damageType];
    count = row->unk4;
    if (count == -1) {
        func_800F90C0(omCurrentObj->objId, &D_800D7010);
        return;
    }
    pal = row->unk0;
    gKirbyState.damagePaletteTimer = *(s16 *) &gKirbyState.damagePaletteTimer - 1;
    if (*(s16 *) &gKirbyState.damagePaletteTimer == 0) {
        gKirbyState.damagePaletteIndex = gKirbyState.damagePaletteIndex + 1;
        idx = gKirbyState.damagePaletteIndex & 0xFFFF;
        if (idx == count) {
            gKirbyState.damagePaletteIndex = 0;
            idx = 0;
        }
        gKirbyState.damagePaletteTimer = pal[idx].unkC;
    }
    func_800A5404(&D_800D7010, &pal[gKirbyState.damagePaletteIndex]);
}
#elif defined(PORT)
/* PORT: Kirby's damage-flash palette driver, from
 * asm/nonmatchings/ovl2/plylib/func_80120E74.s.
 *
 * - The two addresses the ROM spells D_800D7010+0x48 / D_800D7B80+0x18 are
 *   byte offsets inside the u8 color blocks the PC build keeps whole
 *   (build/pc/data/ovl1_ovl1.bss.c), same N64 canonical byte order the
 *   func_800F78E4 arm in ovl2_2.c establishes for this family.
 * - The 0xC-stride damage table at D_801283E8 spans THREE emitted objects
 *   on PC: D_801283E8 (2 native words), the WIDENED pointer block
 *   D_801283F0 (12 cells, one 8-byte cell per N64 word, pointer cells
 *   already host pointers), and D_80128420 (native words -- row 4's flash
 *   length lands there). pc_dmg_row() re-derives each row from those
 *   pieces; N64 row d = {pal @ 0x801283E8+d*12, count @ +4, flash @ +8}.
 * - The palette records (D_80128388-family, 0x10 stride) and the
 *   D_80128370 overlay records (0xC stride) are native u32 words holding
 *   N64 word VALUES; func_800A5404/func_800A5468 read r,g,b BYTES, so the
 *   words are decoded to canonical byte order into a scratch record first
 *   (pc_be_words). The per-record hold time at +0xC is a word read and
 *   comes straight from the native array.
 * - The ROM resets when the PRE-decrement flash timer is 0 (sltiu in the
 *   bne delay slot), not when the decremented value reaches 0 -- the m2c
 *   sketch above is off by one there.
 * - gKirbyState.unk10, when nonzero, holds an N64-address palette pointer
 *   in a u32 field; valid to widen on this -no-pie build. */
static void pc_be_words(u8 *dst, const u32 *src, s32 nwords) {
    s32 i;

    for (i = 0; i < nwords; i++) {
        dst[4 * i + 0] = src[i] >> 24;
        dst[4 * i + 1] = src[i] >> 16;
        dst[4 * i + 2] = src[i] >> 8;
        dst[4 * i + 3] = src[i];
    }
}

static void pc_dmg_row(s32 d, u32 **pal, s32 *count, u32 *flash) {
    extern u32 D_801283E8[];
    extern void *D_801283F0[];
    extern s32 D_80128420[];  /* s32 to match this file's later declaration */
    uintptr_t *cells = (uintptr_t *) D_801283F0;

    if (d == 0) {
        *pal = (u32 *) (uintptr_t) D_801283E8[0];
        *count = (s32) D_801283E8[1];
        *flash = (u32) cells[0];
    } else {
        *pal = (u32 *) cells[3 * d - 2];
        *count = (s32) (u32) cells[3 * d - 1];
        *flash = (3 * d < 12) ? (u32) cells[3 * d] : (u32) D_80128420[3 * d - 12];
    }
}

void func_80120E74(s32 arg0) {
    void func_800F90C0(s32, u8 *);
    void func_800A7BF4(s16 *, u8 *);
    void func_800A5404(u8 *, u8 *);
    void func_800A5468(u8 *, u8 *);
    extern u8 D_800D7B80[];
    extern s32 D_800BE4EC;
    extern u32 D_80128370[];
    u8 rec[12];
    u32 *pal;
    s32 count;
    u32 flash;
    s32 d;
    s16 prev;

    func_800F90C0(omCurrentObj->objId, (u8 *) &D_800D7010 + 0x48);
    func_800A7BF4((s16 *) (D_800D7B80 + 0x18), (u8 *) &D_800D7010 + 0x48);
    if ((s16) gKirbyState.damageFlashTimer == -1) {
        if (gKirbyState.damageType == 0) {
            u32 objId = omCurrentObj->objId;

            if (D_800E7CE0[objId] == 0) {
                if (gKirbyState.unk10 == 0) {
                    func_800F90C0(objId, (u8 *) &D_800D7010);
                } else {
                    func_800A5404((u8 *) &D_800D7010, (u8 *) (uintptr_t) gKirbyState.unk10);
                }
            } else {
                s32 sel = (D_800BE4EC & 2) ? 0 : 1;

                pc_be_words(rec, &D_80128370[sel * 3], 3);
                func_800A5468((u8 *) &D_800D7010, rec);
            }
            return;
        }
        gKirbyState.damageFlashTimer = -2;
    }
    if ((s16) gKirbyState.damageFlashTimer == -2) {
        gKirbyState.damagePaletteIndex = 0xFFFF;
        D_800E7CE0[omCurrentObj->objId] = 0;
        gKirbyState.damagePaletteTimer = 1;
        d = gKirbyState.damageType;
        pc_dmg_row(d, &pal, &count, &flash);
        gKirbyState.damageFlashTimer = flash;
    } else {
        prev = (s16) gKirbyState.damageFlashTimer;
        gKirbyState.damageFlashTimer = prev - 1;
        if (prev == 0) {
            gKirbyState.damageType = 0;
            gKirbyState.damageFlashTimer = -1;
            return;
        }
    }
    d = gKirbyState.damageType;
    pc_dmg_row(d, &pal, &count, &flash);
    if (count == -1) {
        func_800F90C0(omCurrentObj->objId, (u8 *) &D_800D7010);
        return;
    }
    gKirbyState.damagePaletteTimer = (s16) gKirbyState.damagePaletteTimer - 1;
    if ((s16) gKirbyState.damagePaletteTimer == 0) {
        s32 idx;

        gKirbyState.damagePaletteIndex = gKirbyState.damagePaletteIndex + 1;
        idx = gKirbyState.damagePaletteIndex;
        if (idx == count) {
            gKirbyState.damagePaletteIndex = 0;
            idx = 0;
        }
        gKirbyState.damagePaletteTimer = pal[idx * 4 + 3];
    }
    pc_be_words(rec, pal + gKirbyState.damagePaletteIndex * 4, 3);
    func_800A5404((u8 *) &D_800D7010, rec);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80120E74.s")
#endif

s32 func_801210B4(void) {
    if ((D_800D6B54 == 0) && (gKirbyController.buttonHeld & 0x300)) {
        if (gKirbyController.buttonHeld & 0x100) {
            return 1;
        }
        return -1;
    }
    return 0;
}

u32 func_801210FC(void) {
    if (D_8012E7D7 == 0
        && ((D_800E6A10[omCurrentObj->objId] == 1.0f && gKirbyController.buttonHeld & R_JPAD)
        ||  (D_800E6A10[omCurrentObj->objId] == -1.0f && gKirbyController.buttonHeld & L_JPAD))
        ) {
        return 1;
    }
    return 0;
}

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

void func_80121284(u32 arg0) {
    if (gKirbyState.abilityState == 0) {
        gKirbyState.unk17 = arg0;
    }
}

// Matched previously, needs correct function prototypes
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

s32 func_801215DC(void) {
    if (gKirbyState.isTurning & 1) {
        return 1;
    }
    if ((gKirbyState.unk17 == 0) && (gKirbyController.buttonHeld & 0x300)) {
        if (func_80121194() != 0) {
            return 2;
        }
        return 1;
    } else {
        return 0;
    }
}

s32 func_80121658(void) {
    if (D_800E8920[omCurrentObj->objId] != 0) {
        if (D_800E3210[omCurrentObj->objId] == 0.0f) {
            goto ret0;
        }
        D_800E3750[omCurrentObj->objId] = 0.0;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        return 1;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (D_800E3C90[omCurrentObj->objId] == 1.0f) {
            goto ret0;
        }
        if (1) {
            D_800E3750[omCurrentObj->objId] = -0.4f;
        }
        D_800E3C90[omCurrentObj->objId] = 1.0f;
    } else if (D_800E3C90[omCurrentObj->objId] != 16.0f) {
        D_800E3750[omCurrentObj->objId] = -0.9806650281f;
        D_800E3C90[omCurrentObj->objId] = 16.0f;
    }
ret0:
    return 0;
}

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

s32 func_80121828(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    if (D_800E8920[omCurrentObj->objId] != 0) {
        if (D_800E3210[omCurrentObj->objId] != 0.0f) {
            D_800E3750[omCurrentObj->objId] = 0.0;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            return 1;
        }
    } else if (D_800E8AE0[omCurrentObj->objId] & 6) {
        if (arg3 != D_800E3C90[omCurrentObj->objId]) {
            D_800E3750[omCurrentObj->objId] = -0.4f;
            if (arg3 < 0.0f) {
                D_800E3C90[omCurrentObj->objId] = -arg3;
            } else {
                D_800E3C90[omCurrentObj->objId] = arg3;
            }
        }
    } else if (arg1 != D_800E3C90[omCurrentObj->objId]) {
        D_800E3750[omCurrentObj->objId] = -0.980665f;
        if (arg1 < 0.0f) {
            D_800E3C90[omCurrentObj->objId] = -arg1;
        } else {
            D_800E3C90[omCurrentObj->objId] = arg1;
        }
    }
    return 0;
}

void func_801219C8(void) {
    if (func_801215DC() == 2) {
        gKirbyState.isTurning |= 1;
    }
}

#ifdef NON_MATCHING
void func_80121A04(void) {
    GObj *var_a0;

    if (!(D_800E8AE0[omCurrentObj->objId] & 4) && (D_800E8AE0[omCurrentObj->objId] != 0)) {
        if (D_8012EADC == 0) {
            if (!(D_800DE350[omCurrentObj->objId]->flags & 1)) {
                func_801693C4(2, &D_8012EADC);
            }
            D_8012EADC = 8;
        } else {
            D_8012EADC -= 1;
        }
        if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
            var_a0 = D_8012EAE0;
            if (var_a0 == NULL) {
                if (D_8012E860 != 0xF) {
                    var_a0 = D_8012EAE0 = func_800A8234(5, 1, 0x2C);
                } else {
                    var_a0 = D_8012EAE0 = func_800A8234(2, 1, 0xA);
                }
            }
        } else {
            var_a0 = D_8012EAE0;
            if (var_a0 != NULL) {
                func_800A22D4(var_a0);
                D_8012EAE0 = NULL;
                var_a0 = NULL;
            }
        }
        if (var_a0 != NULL) {
            ((struct UnkPos4C *) var_a0->unk4C)->unk4 = D_8012E904;
            ((struct UnkPos4C *) D_8012EAE0->unk4C)->unk8 = D_8012E908;
            ((struct UnkPos4C *) D_8012EAE0->unk4C)->unkC = D_8012E90C;
        }
    } else {
        D_8012EADC = 0;
        if (D_8012EAE0 != NULL) {
            func_800A22D4(D_8012EAE0);
            D_8012EAE0 = NULL;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121A04.s")
#endif
void func_80121BCC(s32 arg0) {
    if ((D_800E8AE0[omCurrentObj->objId] & 0x80) && (D_800E8AE0[omCurrentObj->objId] & 6)
        && ((gEntitiesNextPosYArray[omCurrentObj->objId] - gEntitiesPosYArray[omCurrentObj->objId]) < -2.45f)) {
        D_8012E7DC = 0xF0;
        play_sound(arg0);
        func_800A8100(5, 1, 0x16, 0);
        func_800A8100(5, 1, 0x1A, 0);
        func_800A8100(5, 1, 0x1D, 0);
    }
}

s32 func_80121C90(void) {
    if (!(gKirbyState.isTurning & 1)) {
        if (func_80121194() != 0) {
            gKirbyState.unk2C = 0xE;
            gKirbyState.isTurning |= 1;
        }
        else if (gKirbyController.buttonHeld & 0x300) {
            return 1;
        }
    }
    else if (gKirbyState.unk2C != 0) {
        gKirbyState.unk2C -= 1;
    } else if (gKirbyController.buttonHeld & 0x300) {
        return 1;
    }

    return 0;
}


#ifdef NON_MATCHING
void func_80121D3C(void) {
    GObj *temp_v0;
    s32 var_v1;

    if (gKirbyState.unk9 & 1) {
        var_v1 = (s16)gKirbyState.unk6A;
        if (var_v1 != 0) {
            gKirbyState.unk6A = var_v1 - 1;
            if ((s16)gKirbyState.unk6A == 0) {
                gKirbyState.unk68 = 0;
                gKirbyState.unk9 &= 0xFFFE;
                func_800A22D4(gKirbyState.unk6C);
                if ((gKirbyState.unk54 != 0x80000000) && (D_800D6B54 == 0)) {
                    play_music(0, gKirbyState.unk54);
                    gKirbyState.unk54 = 0x80000000;
                }
            } else {
                gKirbyState.unk68 = 2;
                temp_v0 = (GObj *)gKirbyState.unk6C;
                ((struct UnkPos4C *)temp_v0->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
                ((struct UnkPos4C *)temp_v0->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
                ((struct UnkPos4C *)temp_v0->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
            }
        } else {
            gKirbyState.unk68 = 2;
            gKirbyState.unk6A = 0x258;
            gKirbyState.unk54 = D_800D6B44;
            func_800BB468(4, 0x28);
            play_music(0, 0x1F);
            temp_v0 = func_800A8234(1, 1, 7);
            gKirbyState.unk6C = (u32)temp_v0;
            ((struct UnkPos4C *)temp_v0->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
            ((struct UnkPos4C *)temp_v0->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId] + 20.0f;
            ((struct UnkPos4C *)temp_v0->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80121D3C.s")
#endif
void func_80121F14(void) {
    if (!(gKirbyState.unk9 & 1)) {
        gKirbyState.unk9 |= 1;
    } else {
        gKirbyState.unk6A = 0x258;
    }
    gKirbyState.unk8C &= ~1;
}

void func_80121F50(void) {
    s32 var_v0;

    if (gKirbyState.isTakingDamage != 0) {
        if (gKirbyState.droppedAbility < 8) {
            var_v0 = func_801BBFE4_ovl7(gKirbyState.droppedAbility);
        } else {
            var_v0 = func_801BC27C_ovl7(gKirbyState.droppedAbility, 0);
        }
        if (var_v0 != -1) {
            if (gKirbyState.isTakingDamage == 1) {
                D_800E9C60[var_v0] = (s16)gKirbyState.hpAfterDamage;
                D_800E6A10[var_v0] = -D_800E85A0[omCurrentObj->objId];
            } else {
                D_800E9C60[var_v0] = 5;
                D_800E6A10[var_v0] = -D_800E6A10[omCurrentObj->objId];
            }
            play_sound(0x118);
        }
        gKirbyState.isTakingDamage = 0;
        func_800BC298(gKirbyState.ability);
        return;
    }
    gKirbyState.abilityDropTimer = (s16)gKirbyState.abilityDropTimer - 1;
    if ((s16)gKirbyState.abilityDropTimer <= 0) {
        gKirbyState.abilityDropTimer = 0;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 41/240. Semantics named from the asm (segment cast of Kirby's body against the plane set: a vertical face -- normal.y == 0 -- while the track parameter is advancing sets turn state 3/4 and starts the turn unless ability 6/0x1B/0x21 suppresses it; a horizontal face -- normal.x == normal.z == 0 -- while world Y is changing sets 1/2). Frame 0x68 and every stack slot now exact: the from/to/normal Vectors and the plane index sit where the ROM puts them once the two filler words are declared LAST (declared before the Vectors they do nothing, per LEVERS 13), and the 'unkB already set' path must branch to the shared 'return 1' rather than return inline. Residue: IDO hoists the shared 0.0f compare constant into the prologue while the ROM hoists the two constant arguments (1 and 8) that both func_80104AB4 calls share, and that one swap rotates the integer temps for the whole body */
/* Wall/ceiling bump test for the auto-turn state. Casts Kirby's body segment
 * for this frame against the collision plane set; a vertical face reached
 * while moving along the track sets the turn-around state (3/4) and, unless
 * the current ability suppresses it, starts the turn animation. A horizontal
 * face reached while moving vertically sets the ceiling/floor state (1/2).
 * Returns whether any state was set. */
s32 func_8012209C(void) {
    s32 func_800F9438(s32 node);
    s32 func_80104AB4(Vector *from, Vector *to, s32 arg2, s32 arg3, s32 *planeOut);
    void func_8010DC00(s32 plane, Vector *normalOut);
    f32 worldDelta;
    f32 trackDelta;
    Vector normal;
    Vector from;
    Vector to;
    s32 plane;
    f32 *bodyHeight;
    s32 objId;
    s32 pad[2];

    if (gKirbyState.unkB == 0) {
    if (func_800F9438(D_800E5F90[omCurrentObj->objId]) == 0) {
        return 0;
    }
    objId = omCurrentObj->objId;
    bodyHeight = D_800E0490[objId][1];
    from.x = gEntitiesPosXArray[objId];
    from.y = gEntitiesPosYArray[omCurrentObj->objId] + *bodyHeight;
    from.z = gEntitiesPosZArray[omCurrentObj->objId];
    to.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    to.y = gEntitiesNextPosYArray[omCurrentObj->objId] + *bodyHeight;
    to.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    objId = omCurrentObj->objId;
    trackDelta = D_800E6BD0[objId] - D_800E6D90[objId];
    if (trackDelta != 0.0f) {
        if (func_80104AB4(&from, &to, 1, 8, &plane) != 0) {
            func_8010DC00(plane, &normal);
            if (normal.y == 0.0f) {
                if (trackDelta > 0.0f) {
                    if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) &&
                        (gKirbyState.abilityInUse != 0x21)) {
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
                    if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) &&
                        (gKirbyState.abilityInUse != 0x21)) {
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
                goto bumped;
            }
        }
    }
    objId = omCurrentObj->objId;
    worldDelta = gEntitiesNextPosYArray[objId] - gEntitiesPosYArray[objId];
    if (worldDelta != 0.0f) {
        if (func_80104AB4(&from, &to, 1, 8, &plane) != 0) {
            func_8010DC00(plane, &normal);
            if ((normal.x == 0.0f) && (normal.z == 0.0f)) {
                if (worldDelta > 0.0f) {
                    gKirbyState.unkB = 1;
                } else {
                    gKirbyState.unkB = 2;
                }
                goto bumped;
            }
        }
    }
    return 0;
    }
bumped:
    return 1;
}
#elif defined(PORT)
/* PORT: track-motion blocked-by-wall/floor probe, from
 * asm/nonmatchings/ovl2/plylib/func_8012209C.s; the compiled ovl3 twin
 * func_8016B74C_ovl3 (src/ovl3/ovl3_4.c) fixes the idioms: D_800E0490's
 * per-track entry is a native pointer array (element [1] points at the f32
 * body y-offset), and func_80104AB4's fifth argument receives the hit
 * CollisionTriangle pointer (pointer-sized on PC; func_80104AB4 is declared
 * void in ovl2_7.c but returns func_80103D80's result, the convention every
 * compiled caller already relies on). Sets gKirbyState.unkB to the blocked
 * direction: 4/3 = track forward/backward against a vertical wall, 1/2 =
 * up/down against a horizontal face. */
s32 func_8012209C(void) {
    s32 func_800F9438(s32);
    s32 func_80104AB4(Vector *, Vector *, u16, u16, void *);
    void func_8010DC00(void *, void *);
    Vector cur;
    Vector next;
    Vector nrm;
    void *tri;
    f32 yOff;
    f32 diff;
    u32 objId;

    if (gKirbyState.unkB != 0) {
        return 1;
    }
    if (func_800F9438(D_800E5F90[omCurrentObj->objId]) == 0) {
        return 0;
    }
    objId = omCurrentObj->objId;
    yOff = *D_800E0490[objId][1];
    cur.x = gEntitiesPosXArray[objId];
    cur.y = gEntitiesPosYArray[objId] + yOff;
    cur.z = gEntitiesPosZArray[objId];
    next.x = gEntitiesNextPosXArray[objId];
    next.y = gEntitiesNextPosYArray[objId] + yOff;
    next.z = gEntitiesNextPosZArray[objId];
    diff = D_800E6BD0[objId] - D_800E6D90[objId];
    tri = NULL;
    if (diff != 0.0f) {
        if (func_80104AB4(&cur, &next, 1, 8, &tri) != 0) {
            func_8010DC00(tri, &nrm);
            if (nrm.y == 0.0f) {
                if (diff > 0.0f) {
                    if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) &&
                        (gKirbyState.abilityInUse != 0x21)) {
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
                    if ((gKirbyState.abilityInUse != 6) && (gKirbyState.abilityInUse != 0x1B) &&
                        (gKirbyState.abilityInUse != 0x21)) {
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
                return 1;
            }
        }
    }
    objId = omCurrentObj->objId;
    diff = gEntitiesNextPosYArray[objId] - gEntitiesPosYArray[objId];
    if (diff != 0.0f) {
        if (func_80104AB4(&cur, &next, 1, 8, &tri) != 0) {
            func_8010DC00(tri, &nrm);
            if ((nrm.x == 0.0f) && (nrm.z == 0.0f)) {
                if (diff > 0.0f) {
                    gKirbyState.unkB = 1;
                } else {
                    gKirbyState.unkB = 2;
                }
                return 1;
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_8012209C.s")
#endif

s32 func_80122460(void) {
    if ((gKirbyState.ceilingCollisionNext != 0) && (D_800E3210[omCurrentObj->objId] > 0.0f)) {
        if (((gKirbyState.ceilingType == 4) || (gKirbyState.ceilingType == 5)) && (func_8010D8A4(&gPositionState) != 0)) {
            return 1;
        }
    }
    else if ((gKirbyState.floorCollisionNext != 0) && (D_800E3210[omCurrentObj->objId] <= 0.0f) && (gKirbyState.floorType == 4) && (func_8010D8A4(&gPositionState) != 0)) {
        return 1;
    }

    return 0;
}

#ifdef PORT
/* PORT: wall-grab probe (action 0xD), from
 * asm/nonmatchings/ovl2/plylib/func_80122558.s. The ROM saves the whole
 * 0x58-byte collision result block D_8012BCA0 around the probe and
 * restores it afterwards; on PC that block is one 168-byte LP64 object
 * (src/pc/pc_bss_whole.c), so the save/restore copies all of it.
 * func_8010C734 takes only &gPositionState (the sketch's extra arguments
 * are jump-table noise); its result flags live in the block's leading
 * native u32. */
s32 func_80122558(void) {
    s32 func_8010C734(void *);
    extern u8 D_8012BCA0[168];  /* whole PC block: src/pc/pc_bss_whole.c */
    u8 saved[168];
    s32 grab = 0;
    f32 dir;

    if (gKirbyState.unk15 != 0) {
        return 0;
    }
    if (gKirbyState.unk4 != 0) {
        return 0;
    }
    if (gKirbyState.isTurning & 5) {
        return 0;
    }
    __builtin_memcpy(saved, D_8012BCA0, sizeof(saved));
    dir = D_800E6A10[omCurrentObj->objId];
    if (((dir == 1.0f) && (gKirbyState.rightCollisionNext != 0)) ||
        ((dir == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
        if (func_8010C734(&gPositionState) != 0) {
            u32 flags = *(u32 *) D_8012BCA0 >> 0x13;

            if (((flags & 7) == 7) || ((flags & 0x38) == 0x38)) {
                grab = 1;
            }
        }
    }
    __builtin_memcpy(D_8012BCA0, saved, sizeof(saved));
    if (grab) {
        gKirbyState.unk30 = 0;
        gKirbyState.unk168 = 0.0f;
        gKirbyState.unk164 = gKirbyState.unk168;
        set_kirby_action_1(0xD, 0xA);
        return 1;
    }
    return 0;
}
#else
s32 func_80122558(void) {
    /* Whole-block view of the collision result D_8012BCA0 (struct
     * CollisionResult in ovl2_7.c) so the probe below can be run and undone.
     * `flags >> 19` is that record's hits field; == 7 / == 0x38 means all
     * three front-wall or all three back-wall contact bits are set, i.e. a
     * full-height wall in front of / behind Kirby. */
    struct ColResultSave {
        /* 0x00 */ u32 flags;
        /* 0x04 */ u8 pad4[0x54];
    };
    s32 func_8010C734(struct PositionState *);
    extern u8 D_8012BCA0[];
    s32 grab;
    struct ColResultSave saved;

    if ((gKirbyState.unk15 == 0) && (gKirbyState.unk4 == 0)) {
        if (!(gKirbyState.isTurning & 5)) {
            grab = 0;
            saved = *(struct ColResultSave *) D_8012BCA0;
            if (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (gKirbyState.rightCollisionNext != 0)) ||
            ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
                if (func_8010C734(&gPositionState) != 0) {
                    if ((((((struct ColResultSave *) D_8012BCA0)->flags >> 19) & 7) == 7) ||
                    (((((struct ColResultSave *) D_8012BCA0)->flags >> 19) & 0x38) == 0x38)) {
                        grab = 1;
                    }
                }
            }
            *(struct ColResultSave *) D_8012BCA0 = saved;
            if (grab != 0) {
                gKirbyState.unk30 = 0;
                gKirbyState.unk168 = 0.0f;
                gKirbyState.unk164 = gKirbyState.unk168;
                set_kirby_action_1(0xD, 0xA);
                return 1;
            }
        }
    }
    return 0;
}
#endif

#ifdef MIPS_TO_C
/* FACTORY: 38/180. Written as a CLONE of func_80122558 in this file (now MATCHED), which is the same wall-probe skeleton -- the 0x58 save/restore of D_8012BCA0 through 'extern u8 D_8012BCA0[]' plus a local struct cast, the same >>19 &7/&0x38 flag test, and the same 'grab = 0 inside the isTurning arm' placement all reproduce exactly. Tail block decoded: the ROM does div.s 1.0f/nodeLength then mul.s by the +/-0.25f step, and the node stride is the plain 0x10 struct index. Residue: the ROM materialises 1.0f THREE separate times (0x80122790, 0x80122868, 0x801228C4) and IDO here CSEs the first two into one register hoisted ABOVE the struct copy, adding 2 words at the top and shifting every branch displacement after it. Lever 7's double-literal fork is not usable on 1.0f -- it would turn the compare/divide into double ops */
s32 func_801226FC(void) {
    /* Whole-block view of the collision result D_8012BCA0 (struct
     * CollisionResult in ovl2_7.c) so the probe below can be run and undone.
     * `flags >> 19` is that record's hits field; == 7 / == 0x38 means all
     * three front-wall or all three back-wall contact bits are set, i.e. a
     * full-height wall in front of / behind Kirby. */
    struct ColResultSave {
        /* 0x00 */ u32 flags;
        /* 0x04 */ u8 pad4[0x54];
    };
    s32 func_8010CABC(struct PositionState *, u8 *);
    void func_800F8570(s32, f32 *);
    void func_801229D0(void);
    extern u8 D_8012BCA0[];
    s32 grab;
    struct ColResultSave saved;
    s32 objId;
    f32 *prog;
    f32 step;
    Vector pos;

    if ((gKirbyState.unk15 == 0) && (gKirbyState.unk4 == 0)) {
        if (!(gKirbyState.isTurning & 5)) {
            grab = 0;
            saved = *(struct ColResultSave *) D_8012BCA0;
            if (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (gKirbyState.rightCollisionNext != 0)) ||
                ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
                if (func_8010CABC(&gPositionState, D_8012BCA0) != 0) {
                    if (((((struct ColResultSave *) D_8012BCA0)->flags >> 19) & 7) == 7 ||
                        ((((struct ColResultSave *) D_8012BCA0)->flags >> 19) & 0x38) == 0x38) {
                        grab = 1;
                    }
                }
            }
            *(struct ColResultSave *) D_8012BCA0 = saved;
            if (grab != 0) {
                objId = omCurrentObj->objId;
                if (D_800E6A10[objId] == 1.0f) {
                    step = -0.25f;
                } else {
                    step = 0.25f;
                }
                prog = &D_800E6BD0[objId];
                *prog += (1.0f / D_80129114->unk4[D_800E5F90[objId]].unk4->unkC) * step;
                func_800F8570(omCurrentObj->objId, prog);
                objId = omCurrentObj->objId;
                mtxGetInterpolatedPosition(&pos, D_80129114->unk4[D_800E5F90[objId]].unk4, D_800E6BD0[objId]);
                gEntitiesNextPosXArray[omCurrentObj->objId] = pos.x;
                gEntitiesNextPosZArray[omCurrentObj->objId] = pos.z;
                gKirbyState.unk168 = 0.0f;
                gKirbyState.unk30 = 0;
                gKirbyState.unk164 = gKirbyState.unk168;
                set_kirby_action_1(0xE, 0xB);
                func_801229D0();
                return 1;
            }
        }
    }
    return 0;
}
#elif defined(PORT)
/* PORT: ledge/step climb probe (action 0xE), from
 * asm/nonmatchings/ovl2/plylib/func_801226FC.s. Same D_8012BCA0
 * save/restore and flag test as the func_80122558 arm (func_8010CABC also
 * takes only &gPositionState). On a hit it nudges track progress by a
 * quarter-unit over the node length, re-clamps via func_800F8570 (one
 * argument -- see the compiled func_800F8728 arm in ovl2_2.c; it can move
 * Kirby to a NEIGHBORING node, so the footer is re-fetched afterwards like
 * the ROM does), and snaps next-position X/Z onto the track. The footer
 * records are the native Unk80129114_4 array (ovl2_2.c's func_800F78E4
 * arm). */
s32 func_801226FC(void) {
    s32 func_8010CABC(void *);
    void func_800F8570(s32);
    void func_801229D0(void);
    extern u8 D_8012BCA0[168];  /* whole PC block: src/pc/pc_bss_whole.c */
    u8 saved[168];
    struct Unk80129114_4_4 *footer;
    Vector pos;
    s32 climb = 0;
    f32 dir;
    f32 delta;
    u32 objId;

    if (gKirbyState.unk15 != 0) {
        return 0;
    }
    if (gKirbyState.unk4 != 0) {
        return 0;
    }
    if (gKirbyState.isTurning & 5) {
        return 0;
    }
    __builtin_memcpy(saved, D_8012BCA0, sizeof(saved));
    dir = D_800E6A10[omCurrentObj->objId];
    if (((dir == 1.0f) && (gKirbyState.rightCollisionNext != 0)) ||
        ((dir == -1.0f) && (gKirbyState.leftCollisionNext != 0))) {
        if (func_8010CABC(&gPositionState) != 0) {
            u32 flags = *(u32 *) D_8012BCA0 >> 0x13;

            if (((flags & 7) == 7) || ((flags & 0x38) == 0x38)) {
                climb = 1;
            }
        }
    }
    __builtin_memcpy(D_8012BCA0, saved, sizeof(saved));
    if (climb) {
        objId = omCurrentObj->objId;
        delta = (D_800E6A10[objId] == 1.0f) ? -0.25f : 0.25f;
        footer = D_80129114->unk4[D_800E5F90[objId]].unk4;
        D_800E6BD0[objId] += (1.0f / footer->unkC) * delta;
        func_800F8570(objId);
        objId = omCurrentObj->objId;
        footer = D_80129114->unk4[D_800E5F90[objId]].unk4;
        mtxGetInterpolatedPosition(&pos, (s32 *) footer, D_800E6BD0[objId]);
        gEntitiesNextPosXArray[objId] = pos.x;
        gEntitiesNextPosZArray[objId] = pos.z;
        gKirbyState.unk168 = 0.0f;
        gKirbyState.unk30 = 0;
        gKirbyState.unk164 = gKirbyState.unk168;
        set_kirby_action_1(0xE, 0xB);
        func_801229D0();
        return 1;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_801226FC.s")
#endif

void func_801229D0(void) {
    if (gPositionState.byteArray[2] != 0x14) {
        D_8012E922 = gPositionState.byteArray[2];
        return;
    }
    if (gPositionState.byteArray[3] != 0x14) {
        D_8012E922 = gPositionState.byteArray[3];
    }
}

extern s32 D_80128420[];
extern s16 D_8012E894;
void func_80122A10(s32 arg0) {
    s32 temp;

    temp = D_8012E894;
    if ((temp > 0) && (temp < 5)) {
        func_800A8100(0, 1, D_80128420[temp], arg0);
        return;
    }
    utilPrintf("plydmg ptcl kind over![plylib.cc] max: %x, kind: %x\n", 5, temp);
}

void func_80122A80(void) {
    s32 temp_v1;
    u16 var_a2;

    temp_v1 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v1 != 0) {
        if ((temp_v1 & 7) == 1) {
            var_a2 = 6;
            goto block_4;
        }
    } else {
        play_sound(0x45);
        var_a2 = D_80128448[D_8012E8CA][0];
block_4:
        func_800A7F74(5, 1, var_a2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
}

void func_80122B40(void) {
    s32 temp_v1;
    u16 var_a2;

    temp_v1 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v1 & 7) {
        if (temp_v1 & 6) {
            var_a2 = 0x13;
        } else {
            var_a2 = 0xE;
        }
    } else if (gKirbyState.vel[1] < -12.5f) {
        var_a2 = D_8012844E[gKirbyState.unk10A][0];
    } else {
        var_a2 = D_8012844C[gKirbyState.unk10A][0];
    }
    func_800A7F74(5, 1, var_a2, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
}

void func_80122C30(void) {
    play_sound(0x102);
    D_8012E80C = func_800A8100(5, 1, D_8012844A[D_8012E8CA][0], D_800DFBD0[omCurrentObj->objId][1]);
}

void func_80122CA0(s32 arg0, s32 arg1, f32 arg2) {
    if ((arg1 == 2) && (arg2 != 0.0f)) {
        func_80122CE8();
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 7/139 positional, but structurally solved: frame 0x90 exact, and the N64 record view recovered -- D_8012BCA0 is NOT a flat byte block here, it is parallel arrays (record pointers at +0x40, source ids at +0x4C, both stride 4) that IDO walks with ONE induction pointer, which is why both displacements ride the same register. Record flag is a u8 at +4 tested against a hoisted constant 1. Note D_8012BCA0 must be declared 'extern u8 D_8012BCA0[]' and cast at each use: IDO rejects two block-scope externs of one object under block-scope struct types even when the definitions are textually identical (verified), and func_80122558 in this TU also declares it. Residue: the ROM holds &raised in s5 (6 callee-saved regs) where IDO here uses 5 and re-materialises the address, shifting every save slot by one. Tried an explicit held f32 *rp in two declaration positions; both grew the frame instead */
void func_80122CE8(void) {
    struct WaterRec {
        /* 0x00 */ s32 unk0;
        /* 0x04 */ u8 unk4;
    };
    struct ColResultWater {
        /* 0x00 */ u8 pad0[0x40];
        /* 0x40 */ struct WaterRec *waterRec[3];
        /* 0x4C */ s32 waterSrc[3];
    };
    extern u8 D_8012BCA0[];
    s32 func_8010DF9C(f32 *);
    s32 func_8010E048(struct WaterRec *, s32, f32 *, f32 *, void **, f32 *);
    struct WaterRec *rec;
    u32 id;
    s32 cnt;
    s32 cnt2;
    s32 i;
    s32 j;
    u16 kind;
    f32 dy;
    f32 pos[3];
    f32 raised[3];
    void *n;
    f32 pt[3];

    id = omCurrentObj->objId;
    pos[0] = gEntitiesNextPosXArray[id];
    pos[1] = *D_800E0490[id][1] + gEntitiesNextPosYArray[id];
    pos[2] = gEntitiesNextPosZArray[id];
    cnt = func_8010DF9C(pos);
    if (cnt == 0) {
        return;
    }
    for (i = 0; i < cnt; i++) {
        rec = ((struct ColResultWater *) D_8012BCA0)->waterRec[i];
        if (rec->unk4 == 1) {
            raised[0] = pos[0];
            raised[2] = pos[2];
            raised[1] = pos[1] + 120.0f;
            cnt2 = func_8010DF9C(raised);
            if (cnt2 != 0) {
                for (j = 0; j < cnt2; j++) {
                    if (((struct ColResultWater *) D_8012BCA0)->waterRec[j]->unk4 == 1) {
                        func_800A7F74(5, 1, 0x1E, pos[0], pos[1], pos[2]);
                        return;
                    }
                }
                continue;
            }
            if (func_8010E048(rec, ((struct ColResultWater *) D_8012BCA0)->waterSrc[i], pos, raised, &n, pt) != 0) {
                dy = pt[1] - pos[1];
                if (dy < 40.0f) {
                    return;
                }
                if (dy < 80.0f) {
                    kind = 0x3B;
                } else {
                    kind = 0x3A;
                }
            } else {
                kind = 0x1E;
            }
            func_800A7F74(5, 1, kind, pos[0], pos[1], pos[2]);
            return;
        }
    }
}
#elif defined(PORT)
/* Water splash/ripple generator select (draft above, completed): at body
 * height, find the first active water record the point is inside; if the
 * point 120 above is also in an active volume the body is deep (splash
 * 0x1E); otherwise the crossing height against this volume's surface picks
 * ripple 0x3B (under 80) or 0x3A, with 0x1E when no surface plane is found
 * and nothing at all within 40. Annex records read at the LP64 offsets
 * (base+128 pointers, base+152 source ids). */
void func_80122CE8(void) {
    s32 func_8010DF9C(f32 *);
    s32 func_8010E048(void *, s32, f32 *, f32 *, void *, f32 *);
    extern u8 D_8012BCA0[168];
    u32 id = omCurrentObj->objId;
    f32 pos[3], raised[3], pt[3];
    void *n;
    s32 cnt, i;

    pos[0] = gEntitiesNextPosXArray[id];
    pos[1] = *D_800E0490[id][1] + gEntitiesNextPosYArray[id];
    pos[2] = gEntitiesNextPosZArray[id];
    cnt = func_8010DF9C(pos);
    for (i = 0; i < cnt; i++) {
        u8 *rec = *(u8 **) (D_8012BCA0 + 128 + (i * 8));

        if (rec[4] == 1) {
            s32 cnt2, j;

            raised[0] = pos[0];
            raised[1] = pos[1] + 120.0f;
            raised[2] = pos[2];
            cnt2 = func_8010DF9C(raised);
            if (cnt2 != 0) {
                for (j = 0; j < cnt2; j++) {
                    u8 *r2 = *(u8 **) (D_8012BCA0 + 128 + (j * 8));

                    if (r2[4] == 1) {
                        func_800A7F74(5, 1, 0x1E, pos[0], pos[1], pos[2]);
                        return;
                    }
                }
                continue;
            }
            if (func_8010E048(rec, *(s32 *) (D_8012BCA0 + 152 + (i * 4)),
                              pos, raised, &n, pt) != 0) {
                f32 dy = pt[1] - pos[1];

                if (!(dy < 40.0f)) {
                    func_800A7F74(5, 1, (dy < 80.0f) ? 0x3B : 0x3A, pos[0], pos[1], pos[2]);
                }
            } else {
                func_800A7F74(5, 1, 0x1E, pos[0], pos[1], pos[2]);
            }
            return;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl2/plylib/func_80122CE8.s")
#endif

void func_80122F08(u32 arg0) {
    if ((arg0 == 0x20007) || (arg0 == 0x20008) || (arg0 == 0x20009)) {
        func_800A9760(arg0);
    } else {
        func_800A8EC0(arg0);
    }
    func_800AFA88(omCurrentObj);
}

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

void func_80122FB0(s32 arg0) {
    D_800DDE10[omCurrentObj->objId] = arg0;
    assign_new_process_entry(gEntityGObjProcessArray3[omCurrentObj->objId], func_80177098_ovl3);
}

void func_80123004(struct UnkStruct80123004 *arg0, f32 arg1, s32 arg2) {
    s32 temp_a3;

    temp_a3 = arg0->unk4;
    if (temp_a3 != -1) {
        func_800A9F98(temp_a3, arg1);
    }
    if (arg2 == 0) {
        func_800A9F98(arg0->unk0, arg1);
        return;
    }
    func_800AA0C4(arg0->unk0, arg1);
}

void func_8012307C(s32 arg0, s32 arg1, f32 arg2, s32 arg3) {
    func_800A9F98(arg1, arg2);
    if (arg3 == 0) {
        func_800A9F98(arg0, arg2);
        return;
    }
    func_800AA0C4(arg0, arg2);
}

void func_801230E8(s32 arg0, s32 arg1, s32 arg2) {
    func_8012307C(arg0, arg1, 0.0f, arg2);
}

void func_8012310C(s32 currentInhale) {
    if (currentInhale != 0) {
        play_sound(0x104);
    }
    func_800BC298(currentInhale);
}

f32 func_80123144(f32 arg0) {
    return D_80128440[D_8012E8CA][0] * arg0;
}

s32 func_80123170(void) {
    s32 temp_v0;
    u16 var_a2;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 & 7) {
        if (temp_v0 & 6) {
            var_a2 = 0x13;
        } else {
            var_a2 = 0xE;
        }
    } else {
        var_a2 = D_8012844C[D_8012E8CA][0];
    }
    return var_a2;
}

s32 func_801231D8(void) {
    s32 temp_v0;
    u16 var_a2;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 & 7) {
        if (temp_v0 & 6) {
            var_a2 = 0x13;
        } else {
            var_a2 = 0xE;
        }
    } else {
        var_a2 = D_8012844E[D_8012E8CA][0];
    }
    return var_a2;
}

s32 func_80123240(void) {
    s32 temp_v0;
    s32 var_a2;

    temp_v0 = D_800E8AE0[omCurrentObj->objId];
    if (temp_v0 != 0) {
        if ((temp_v0 & 7) == 1) {
            var_a2 = 6;
        } else {
            var_a2 = -1;
        }
    } else {
        var_a2 = D_80128448[D_8012E8CA][0];
    }
    return var_a2;
}

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
