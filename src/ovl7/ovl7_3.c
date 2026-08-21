#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/util.h"
#include "main/anim.h"

// ovl2 bss
extern u32 D_8012BCA0;

struct Ovl7ColRec {
    /* 0x0 */ u32 unk0;
    /* 0x4 */ s32 unk4;
};
extern struct Ovl7ColRec *D_8012BCE0[];
void func_8010C274();
void func_8010C184();
void func_8010DC24();

extern void func_8010B480(struct Sub800E1B50_Unk84 *);
extern void func_8010B284(struct Sub800E1B50_Unk84 *);
extern void func_8010B67C(struct Sub800E1B50_Unk84 *);
extern void func_8010B860(struct Sub800E1B50_Unk84 *);

extern void func_8010DC8C(struct Sub800E1B50_Unk84 *);
extern void func_80105180(struct Sub800E1B50_Unk84 *);
extern void func_801051AC(struct Sub800E1B50_Unk84 *);
extern void func_800B1BF0(s32, s32);
extern struct DObj *func_8011BABC();
extern s32 func_8011BF4C(void *, void *);
extern void func_800FD754(s32 *, f32, f32, f32);
extern void func_800A4DB8(Vector *, struct DObj *);
extern void func_800A802C(void *, s32, s32, Vector *, Vector *);
extern void func_800FD570(s32, s32, f32, f32, f32);
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern void func_800B19F4(s32, s32);
extern void func_800A9760(u32);
extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_800AA018(s32);
extern void func_800AF408(void);
extern s32 func_8010D668(struct Sub800E1B50_Unk84 *, f32);

extern u32 D_801C2E84_ovl7[];
extern u32 D_801F33FC[];
extern u32 D_801D789C[];
#ifdef PORT
/* PC-side view of the collision result block D_8012BCA0, which
 * src/pc/pc_bss_whole.c defines whole at the LP64 layout: flags word at
 * +0, five {s32 type; tri; norm} 24-byte records at +8, water annex at
 * +128 (the D_8012BCE0 alias).  The drafts' N64 word-index reads map as
 * word[2]=rec[0].tri, word[3]=rec[0].norm, word[5]=rec[1].tri,
 * word[8]=rec[2].tri, word[11]=rec[3].tri. */
struct PcOvl7ColRec { s32 type; struct CollisionTriangle *tri; void *norm; };
struct PcOvl7ColBlock {
    u32 flagsw;
    u32 pad_;
    struct PcOvl7ColRec rec[5];
    void *waterRec[3];
    u32 waterSrc[3];
};
#define PC_COL ((struct PcOvl7ColBlock *) &D_8012BCA0)
/* The annex entries point at struct WaterData; byte +4 is
 * Water_Box_Active.  The N64 asm reads it with lbu too (the Ovl7ColRec
 * ->unk4 word in the drafts is the C author's fiction), and this is the
 * same read the func_801A2558_ovl7 arm below uses. */
#define PC_WATER_ACTIVE(p) (((u8 *) (p))[4] != 0)
extern s32 func_8010DF9C(void *);
extern s32 func_8010E048(void *, s32, void *, void *, void *, void *);
extern f32 func_800F8728(s32, f32, f32);
extern s32 func_801AE73C_ovl7(s32, f32, f32, f32);
#endif

struct Ovl7TrackParams {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
};

struct Ovl7WarpStep {
    f32 unk0;
    f32 unk4;
    f32 unk8;
};

extern struct Ovl7WarpStep D_801C28B0_ovl7[];

#ifdef PORT
/* The hitbox-descriptor slot stays a u32 host-address cell so the record
 * keeps the N64's f32[8]/32-byte shape -- func_8011BF4C also receives
 * plyshot's D_80198540_ovl3[][8] records, which store the descriptor as a
 * truncated s32 at word 7. A real pointer here would move the slot to
 * LP64 offset 32 and split the two callers' layouts. */
struct UnkOvl7Track {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    u32 unk1C;
};
#else
struct UnkOvl7Track {
    f32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    void *unk1C;
};
#endif

extern struct Sub800E1B50_Unk84 D_801CE6D0_ovl7;
extern struct Ovl7TrackParams D_801CE6E0_ovl7;
extern struct UnkOvl7Track D_801CE730_ovl7;
extern struct UnkOvl7Track D_801D0450_ovl7[];

void func_8019F3B0_ovl7(void);
void func_801A32A8_ovl7(s32 arg0);
void func_801A3618_ovl7(struct UnkOvl7Track *arg0);
void func_801A3980_ovl7(GObj *arg0);
void func_801A3A14_ovl7(s32 arg0);
void func_801A3B40_ovl7(void);

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
    oldIdx = gEntityFuncListIDArray[omCurrentObj->objId];
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
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[6];
            func_80199628_ovl7(arg0);
        }
        if ((functable->func20 == NULL) && (functable->unk0[6] == -1)) {
            func_80199688_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((ent->unk44 != 0) && ((functable->func20 != NULL) || (functable->unk0[6] != -1))) {
        if (functable->func20 != NULL) {
            functable->func20(arg0);
        }
        if (functable->unk0[6] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[6];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 2) && ((functable->funcC != NULL) || (functable->unk0[1] != -1))) {
        if (functable->funcC != NULL) {
            functable->funcC(arg0);
        }
        if (functable->unk0[1] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[1];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if (D_800E8920[omCurrentObj->objId] == 1) { // check if this is needed
        if ((D_800E8920[omCurrentObj->objId] == 0) && ((functable->func8 != NULL) || (functable->unk0[0] != -1))) {
            if (functable->func8 != NULL) {
                functable->func8(arg0);
            }
            if (functable->unk0[0] != -1) {
                gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[0];
                func_80199628_ovl7(arg0);
            }
            return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
        }
    }
    else if ((D_800E8920[omCurrentObj->objId] == 1) && ((functable->func8 != NULL) || (functable->unk0[0] != -1))) {
        if (functable->func8 != NULL) {
            functable->func8(arg0);
        }
        if (functable->unk0[0] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[0];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
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
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[2];
            func_80199628_ovl7(arg0);
            omCurrentObj->objId = omCurrentObj->objId * 4;
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
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
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[3];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    // else
    if ((D_800E8920[omCurrentObj->objId] == 0) && (((D_8012BCA0 >> 0x13) & 0x1C0) != 0) && ((functable->func18 != NULL) || (functable->unk0[4] != -1))) {
        if (functable->func18 != NULL) {
            functable->func18(arg0);
        }
        if (functable->unk0[4] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[4];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 4) && ((functable->func1C != NULL) || (functable->unk0[5] != -1))) {
        if (functable->func1C != NULL) {
            functable->func1C(arg0);
        }
        if (functable->unk0[5] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->unk0[5];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
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
    UnkStruct800E1B50 *sp2C;
    u32 sp1C;
    GObj *temp_a1;
    UnkStruct800E1B50 *var_t0;
    f32 temp_f0;
    f32 temp_f2;
    s32 (*temp_v1)(struct Sub800E1B50_Unk84 *);
    s32 (*temp_v1_2)(struct Sub800E1B50_Unk84 *);
    s32 var_v0;
    u32 temp_t6;
    u32 var_v1;

    temp_a1 = omCurrentObj;
    temp_t6 = temp_a1->objId;
    var_v0 = temp_t6 * 4;
    var_t0 = D_800E1B50[temp_t6];
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
    if ((&func_8010C274 != temp_v1) && (&func_8010C184 != temp_v1) && (func_8010B480 != temp_v1) && (func_8010B284 != temp_v1) && (func_8010B67C != temp_v1) && (func_8010B860 != temp_v1)) {
        if (D_800E8920[temp_a1->objId] == 1) {
            var_t0->unk78 = (&D_8012BCA0)[3];
            var_t0->unk7C = (&D_8012BCA0)[2];
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
    if ((&func_8010C274 != temp_v1_2) && (&func_8010C184 != temp_v1_2) && (func_8010B480 != temp_v1_2) && (func_8010B284 != temp_v1_2) && (func_8010B67C != temp_v1_2) && (func_8010B860 != temp_v1_2)) {
        var_t0->unk44 = 0;
        var_v1 = D_8012BCA0 >> 0x13;
        if (var_v1 & 0xE00) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24((&D_8012BCA0)[2], temp_a1);
            var_v1 = D_8012BCA0 >> 0x13;
        }
        if ((var_v1 & 7) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24((&D_8012BCA0)[8]);
            var_v1 = D_8012BCA0 >> 0x13;
        }
        if ((var_v1 & 0x38) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24((&D_8012BCA0)[11]);
            var_v1 = D_8012BCA0 >> 0x13;
        }
        if ((var_v1 & 0x1C0) && (var_t0->unk44 == 0)) {
            sp2C = var_t0;
            var_t0->unk44 = func_8010DC24((&D_8012BCA0)[5]);
        }
    }
}
#elif defined(PORT)
/* Post-move fixup after the slot mover ran (draft above, completed):
 * carry the entity to the slot's resolved position (routing the XZ delta
 * through the moving-platform tracker func_800F8728 unless the entity is
 * held), then -- for entities not using one of the six contact-tag movers
 * as their unk48 hook -- latch the ground normal/triangle into
 * unk78/unk7C while grounded, and re-derive the halt/conveyor code unk44
 * via func_8010DC24 from whichever contact the flags word reports
 * (ceiling 0xE00 -> rec[0], left wall 7 -> rec[2], right wall 0x38 ->
 * rec[3], floor 0x1C0 -> rec[1]).  func_8010DC24 is declared void at the
 * top of this file (N64 text), so it is called through a cast. */
void func_801A187C_ovl7(void *arg0) {
    struct PositionState *slot = arg0;
    GObj *obj = omCurrentObj;
    u32 id = obj->objId;
    UnkStruct800E1B50 *rec = D_800E1B50[id];
    void *hook = (void *) rec->unk48;
    u32 fl;

    if (D_800E8E60[id] != 1) {
        f32 dx = slot->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
        f32 dz = slot->kirbyFootPos[2] - gEntitiesNextPosZArray[id];

        if (dx != 0.0f || dz != 0.0f) {
            func_800F8728(id, dx, dz);
        }
    }
    gEntitiesNextPosXArray[obj->objId] = slot->kirbyFootPos[0];
    gEntitiesNextPosYArray[obj->objId] = slot->kirbyFootPos[1];
    gEntitiesNextPosZArray[obj->objId] = slot->kirbyFootPos[2];
    if (hook != (void *) func_8010C274 && hook != (void *) func_8010C184
     && hook != (void *) func_8010B480 && hook != (void *) func_8010B284
     && hook != (void *) func_8010B67C && hook != (void *) func_8010B860
     && D_800E8920[obj->objId] == 1) {
        rec->unk78 = (u32) (uintptr_t) PC_COL->rec[0].norm;
        rec->unk7C = (u32) (uintptr_t) PC_COL->rec[0].tri;
    } else {
        rec->unk78 = 0;
        rec->unk7C = 0;
    }
    if (hook != (void *) func_8010C274 && hook != (void *) func_8010C184
     && hook != (void *) func_8010B480 && hook != (void *) func_8010B284
     && hook != (void *) func_8010B67C && hook != (void *) func_8010B860) {
        rec->unk44 = 0;
        fl = D_8012BCA0 >> 0x13;
        if (fl & 0xE00) {
            rec->unk44 = ((u16 (*)(struct CollisionTriangle *)) func_8010DC24)(PC_COL->rec[0].tri);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 7) && rec->unk44 == 0) {
            rec->unk44 = ((u16 (*)(struct CollisionTriangle *)) func_8010DC24)(PC_COL->rec[2].tri);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 0x38) && rec->unk44 == 0) {
            rec->unk44 = ((u16 (*)(struct CollisionTriangle *)) func_8010DC24)(PC_COL->rec[3].tri);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 0x1C0) && rec->unk44 == 0) {
            rec->unk44 = ((u16 (*)(struct CollisionTriangle *)) func_8010DC24)(PC_COL->rec[1].tri);
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
    Vector sp48;
    u32 sp40;
    f32 sp3C;
    UnkStruct800E1B50 *sp38;
    struct Sub800E1B50_Unk84 *sp34;
    UnkStruct800E1B50 *temp_t0;
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
    struct Sub800E1B50_Unk84 *temp_a2;
    u32 temp_a0_2;
    u32 temp_v1;
    u32 temp_v1_4;
    u8 temp_v0;
    u8 temp_v0_9;
    void *temp_v1_2;
    void *temp_v1_3;

    temp_v1 = omCurrentObj->objId;
    temp_t0 = D_800E1B50[temp_v1];
    temp_a2 = temp_t0->unk84;
    sp60 = gEntitiesNextPosXArray[temp_v1];
    temp_v0 = temp_t0->unk42;
    switch (temp_v0) {                              /* irregular */
        case 0:
            sp64 = gEntitiesNextPosYArray[omCurrentObj->objId] + *(f32 *) &temp_a2->unk14;
            break;
        case 2:
            sp64 = gEntitiesNextPosYArray[omCurrentObj->objId] + *(f32 *) &temp_a2->unk18;
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
                    temp_v1_2 = D_8012BCE0[2];
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
            temp_v1_3 = D_8012BCE0[1];
            if (temp_v1_3->unk4 != 0) {
                sp38->unk74 = temp_v1_3;
                temp_v0_4 = &D_800E8AE0[omCurrentObj->objId];
                *temp_v0_4 |= 1;
            }
            goto block_15;
        }
block_15:
        if (D_8012BCE0[0]->unk4 != 0) {
            sp38->unk74 = D_8012BCE0[0];
            temp_v0_5 = &D_800E8AE0[omCurrentObj->objId];
            *temp_v0_5 |= 1;
        }
    } else {
block_18:
        temp_v0_6 = &D_800E8AE0[omCurrentObj->objId];
        *temp_v0_6 &= ~1;
        sp38->unk74 = 0;
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
                    sp64 = gEntitiesNextPosYArray[temp_v1_4] + *(f32 *) &sp34->unk14;
                    sp58 = gEntitiesPosYArray[omCurrentObj->objId] + *(f32 *) &sp34->unk14;
                    break;
                case 2:                             /* switch 1 */
                    sp64 = gEntitiesNextPosYArray[temp_v1_4] + *(f32 *) &sp34->unk18;
                    sp58 = gEntitiesPosYArray[omCurrentObj->objId] + *(f32 *) &sp34->unk18;
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
            if (temp_a0_2 != 0) {
                if ((func_8010E048(temp_a0_2, 0x14, &sp54, &sp60, &sp3C, &sp48) != 0) && (sp38->unk38 == 0)) {
                    func_801AE73C_ovl7(1, sp48.x, sp48.y, sp48.z);
                }
            } else if ((sp40 != 0) && (func_8010E048(sp40, 0x14, &sp54, &sp60, &sp3C, &sp48) != 0) && (sp38->unk38 == 0)) {
                func_801AE73C_ovl7(1, sp48.x, sp48.y, sp48.z);
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
#elif defined(PORT)
/* Water-state tracker (draft above, completed): probe the entity's water
 * sample point (next position, Y offset picked by unk42: 0 -> +unk14,
 * 2 -> +unk18, else raw), latch the innermost ACTIVE water volume crossed
 * into rec->unk74 and bit 0 of D_800E8AE0; bits 1/0x10 mark an enter/exit
 * transition this frame, on which the old->new segment (unk41-offset) is
 * intersected with the water surface to spawn the splash via
 * func_801AE73C_ovl7 while unk38 (splash gate, s8: -1 disabled, must hit
 * 0) allows; tick the gate and run the in-water bubble timer.  unk38 is
 * read with lb on the N64 (the header says u8), hence the s8 casts. */
void func_801A1B6C_ovl7(void) {
    u32 id = omCurrentObj->objId;
    UnkStruct800E1B50 *rec = D_800E1B50[id];
    struct PositionState *slot = (struct PositionState *) rec->unk84;
    s32 prev = D_800E8AE0[id];
    void *savedWater = (void *) (uintptr_t) rec->unk74;
    Vector newp;
    Vector oldp;
    Vector hit;
    void *normOut;
    s32 w;

    newp.x = gEntitiesNextPosXArray[id];
    switch (rec->unk42) {
    case 0:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[1];
        break;
    case 2:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[2];
        break;
    default:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        break;
    }
    newp.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    w = func_8010DF9C(&newp);
    if (w == 1 || w == 2 || w == 3) {
        if (w == 3 && PC_WATER_ACTIVE(D_8012BCE0[2])) {
            rec->unk74 = (u32) (uintptr_t) D_8012BCE0[2];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        if (w >= 2 && PC_WATER_ACTIVE(D_8012BCE0[1])) {
            rec->unk74 = (u32) (uintptr_t) D_8012BCE0[1];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        if (PC_WATER_ACTIVE(D_8012BCE0[0])) {
            rec->unk74 = (u32) (uintptr_t) D_8012BCE0[0];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
    } else {
        D_800E8AE0[omCurrentObj->objId] &= ~1;
        rec->unk74 = 0;
    }
    if ((prev & 1) != (D_800E8AE0[omCurrentObj->objId] & 1)) {
        D_800E8AE0[omCurrentObj->objId] |= 2;
        D_800E8AE0[omCurrentObj->objId] |= 0x10;
    } else {
        D_800E8AE0[omCurrentObj->objId] &= ~2;
        D_800E8AE0[omCurrentObj->objId] &= ~0x10;
    }
    if (((s8) rec->unk38 != -1) && (D_800E8AE0[omCurrentObj->objId] & 0x10)) {
        switch (rec->unk41) {
        case 0:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[1];
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + slot->scale[1];
            break;
        case 2:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[2];
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + slot->scale[2];
            break;
        default:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId];
            break;
        }
        oldp.x = gEntitiesPosXArray[omCurrentObj->objId];
        oldp.z = gEntitiesPosZArray[omCurrentObj->objId];
        if (rec->unk74 != 0) {
            if ((func_8010E048((void *) (uintptr_t) rec->unk74, 0x14, &oldp, &newp, &normOut, &hit) != 0)
             && ((s8) rec->unk38 == 0)) {
                func_801AE73C_ovl7(1, hit.x, hit.y, hit.z);
            }
        } else if ((savedWater != NULL)
                && (func_8010E048(savedWater, 0x14, &oldp, &newp, &normOut, &hit) != 0)
                && ((s8) rec->unk38 == 0)) {
            func_801AE73C_ovl7(1, hit.x, hit.y, hit.z);
        }
    }
    if (((s8) rec->unk38 != -1) && ((s8) rec->unk38 > 0)) {
        rec->unk38 = (s8) rec->unk38 - 1;
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
    struct Sub800E1B50_Unk84 *sp24;
    s32 *temp_v0_2;
    s32 temp_v0;
    s32 temp_v1_3;
    s32 var_a1;
    struct Sub800E1B50_Unk84 *temp_a1;
    u32 temp_v1;
    u32 temp_v1_2;

    temp_v1 = omCurrentObj->objId;
    temp_a1 = D_800E1B50[temp_v1]->unk84;
    if (D_800E8AE0[temp_v1] & 1) {
        sp2C = gEntitiesNextPosXArray[temp_v1];
        sp30 = gEntitiesNextPosYArray[omCurrentObj->objId] + *(f32 *) &temp_a1->unk14;
        sp34 = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else if (D_800E8920[temp_v1] == 0) {
        sp2C = gEntitiesNextPosXArray[temp_v1];
        sp30 = gEntitiesNextPosYArray[omCurrentObj->objId] + *(f32 *) &temp_a1->unk18;
        sp34 = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else {
        sp30 = gEntitiesNextPosYArray[temp_v1] + *(f32 *) &temp_a1->unk18;
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
                    if (D_8012BCE0[2]->unk4 != 0) {
                        var_a1 = 1;
                    }
                    goto block_13;
                }
            } else {
block_13:
                if (D_8012BCE0[1]->unk4 != 0) {
                    var_a1 |= 1;
                }
                goto block_15;
            }
        } else {
block_15:
            if (D_8012BCE0[0]->unk4 != 0) {
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
#elif defined(PORT)
/* Secondary water probe feeding bit 2 of D_800E8AE0 (draft above,
 * completed): pick a probe point -- head offset (+unk14) while in water,
 * foot offset (+unk18) while grounded, else ahead of the entity along its
 * facing (reach unk1C or unk20 by the D_800E6A10 facing sign) at the foot
 * offset -- test it against the water volumes, and set bit 2 exactly when
 * the probe's water state differs from the body's bit 0. */
void func_801A2068_ovl7(void) {
    u32 id = omCurrentObj->objId;
    struct PositionState *slot = (struct PositionState *) D_800E1B50[id]->unk84;
    Vector p;
    s32 probeHit = 0;
    s32 w;
    s32 flags;

    if (D_800E8AE0[id] & 1) {
        p.x = gEntitiesNextPosXArray[id];
        p.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[1];
        p.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else if (D_800E8920[id] == 0) {
        p.x = gEntitiesNextPosXArray[id];
        p.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->scale[2];
        p.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else {
        f32 reach = (D_800E6A10[omCurrentObj->objId] == 1.0f) ? slot->faceAngle[0]
                                                              : slot->faceAngle[1];

        p.y = gEntitiesNextPosYArray[id] + slot->scale[2];
        p.x = (sinf(D_800E17D0[omCurrentObj->objId]) * reach) + gEntitiesNextPosXArray[omCurrentObj->objId];
        p.z = (cosf(D_800E17D0[omCurrentObj->objId]) * reach) + gEntitiesNextPosZArray[omCurrentObj->objId];
    }
    w = func_8010DF9C(&p);
    if (w == 1 || w == 2 || w == 3) {
        if (w == 3 && PC_WATER_ACTIVE(D_8012BCE0[2])) {
            probeHit = 1;
        }
        if (w >= 2 && PC_WATER_ACTIVE(D_8012BCE0[1])) {
            probeHit = 1;
        }
        if (PC_WATER_ACTIVE(D_8012BCE0[0])) {
            probeHit = 1;
        }
    }
    flags = D_800E8AE0[omCurrentObj->objId];
    if (flags & 1) {
        D_800E8AE0[omCurrentObj->objId] = (probeHit != 0) ? (flags & ~4) : (flags | 4);
    } else {
        D_800E8AE0[omCurrentObj->objId] = (probeHit != 0) ? (flags | 4) : (flags & ~4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2068_ovl7.s")
#endif

void func_801A239C_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    u32 idx;

    if (ent->unk39 != -1) {
        ent->unk39 -= 1;
        if (ent->unk39 == 0) {
            ent->unk39 = 0x1E;
            idx = omCurrentObj->objId;
            if ((D_800E77A0[idx] >= 0x4E) && (D_800E77A0[idx] < 0x5D)) {
                func_800FD570(0, 3, 0.0f, 0.0f, 0.0f);
            } else {
                func_800A7F74(3, 2, 0x3F, gEntitiesNextPosXArray[idx], gEntitiesNextPosYArray[idx], gEntitiesNextPosZArray[idx]);
            }
        }
    }
}

void func_801A248C_ovl7(struct Sub800E1B50_Unk84 *arg0, f32 arg1) {
    if (arg0 != NULL) {
        if (func_8010D668(arg0, arg1) != 0) {
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

#ifdef MIPS_TO_C

void func_801A2558_ovl7(s32 arg0) {
    f32 sp44;
    f32 sp40;
    f32 sp3C;
    f32 sp38;
    UnkStruct800E1B50 *sp34;
    struct Sub800E1B50_Unk84 *sp30;
    GObj *var_v1;
    UnkStruct800E1B50 *temp_t7;
    f32 *temp_v0_3;
    f32 *var_at;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    s32 (*temp_v0_2)(struct Sub800E1B50_Unk84 *);
    s32 temp_v0_4;
    s32 var_v0;
    struct Sub800E1B50_Unk84 *temp_a1;
    struct Sub800E1B50_Unk84 *temp_v0;
    u32 temp_a3;
    u32 temp_a3_2;
    u8 temp_t0;

    temp_a3 = omCurrentObj->objId;
    temp_t7 = D_800E1B50[temp_a3];
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
                        if (D_8012BCE0[2]->unk4 != 0) {
                            D_800E8AE0[omCurrentObj->objId] = 1;
                        }
                        goto block_46;
                    }
                    goto block_50;
                }
block_46:
                if (D_8012BCE0[1]->unk4 != 0) {
                    D_800E8AE0[omCurrentObj->objId] = 1;
                }
                goto block_48;
            }
block_48:
            if (D_8012BCE0[0]->unk4 != 0) {
                D_800E8AE0[omCurrentObj->objId] = 1;
            }
        } else {
block_50:
            D_800E8AE0[omCurrentObj->objId] = 0;
        }
    }
}
#elif defined(PORT)
/* Per-frame enemy collision driver (draft above, completed): ensure the
 * entity has a collision slot, pick the fall probe depth by movement kind
 * (25.0 for walkers, 0 for flyers/fixed), run the mover, then when the
 * entity collides with terrain (unk88->unk1C) and isn't held: ground test
 * (custom unk48 hook or func_80109DD8), floor rescue at the probe depth
 * when airborne (with the three axis-aligned wall rescues for kind 2),
 * carry the entity to the resolved slot position, and finally flag water
 * (D_800E8AE0) from the annex records the position crossed. */
void func_801A2558_ovl7(s32 arg0) {
    u32 objId = omCurrentObj->objId;
    UnkStruct800E1B50 *rec = D_800E1B50[objId];
    struct PositionState *slot = (struct PositionState *) rec->unk84;
    f32 depth;
    s32 w;

    if (arg0 == 0) {
        return;
    }
    switch (D_800E7730[objId]) {
    case 1:
    case 2:
    case 3:
        depth = 25.0f;
        break;
    case 4:
    case 6:
        depth = 0.0f;
        break;
    default:
        depth = (D_800E0D50[objId] != 0) ? 25.0f : 0.0f;
        break;
    }
    if (slot != NULL) {
        func_80105180(slot);
    } else {
        slot = func_8010DCAC();
        rec->unk84 = (struct Sub800E1B50_Unk84 *) slot;
    }
    func_801A2ADC_ovl7(arg0);
    if (rec->unk88->unk1C != 0 && D_800E8E60[omCurrentObj->objId] == 0) {
        func_801051DC(slot);
        if (rec->unk48 != NULL) {
            D_800E8920[omCurrentObj->objId] =
                ((s32 (*)(void *)) rec->unk48)(slot);
        } else {
            D_800E8920[omCurrentObj->objId] = func_80109DD8(slot);
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            D_800E8920[omCurrentObj->objId] = func_8010D668(slot, depth);
            if (rec->unk88->unk1C == 2) {
                f32 az = gEntitiesAngleZArray[omCurrentObj->objId];

                if (az >= 6.2831855f) {
                    az -= 6.2831855f;
                    gEntitiesAngleZArray[omCurrentObj->objId] = az;
                } else if (az < 0.0f) {
                    az += 6.2831855f;
                    gEntitiesAngleZArray[omCurrentObj->objId] = az;
                }
                if (az > 1.553343f && az < 1.5882497f) {
                    func_8010CE44(slot, 25.0f);
                } else if (az > 3.1241393f && az < 3.1590462f) {
                    func_8010D42C(slot, 25.0f);
                } else if (az > 4.694936f && az < 4.7298427f) {
                    func_8010D138(slot, 25.0f);
                }
            }
        }
        {
            u32 id = omCurrentObj->objId;
            f32 dx = slot->kirbyFootPos[0] - gEntitiesNextPosXArray[id];
            f32 dz = slot->kirbyFootPos[2] - gEntitiesNextPosZArray[id];

            if (dx != 0.0f || dz != 0.0f) {
                func_800F8728(id, dx, dz);
                gEntitiesNextPosXArray[omCurrentObj->objId] = slot->kirbyFootPos[0];
                gEntitiesNextPosZArray[omCurrentObj->objId] = slot->kirbyFootPos[2];
            }
            gEntitiesNextPosYArray[omCurrentObj->objId] = slot->kirbyFootPos[1];
        }
    }
    func_801051AC(slot);
    {
        Vector pos;

        pos.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        pos.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        pos.z = gEntitiesNextPosZArray[omCurrentObj->objId];
        w = func_8010DF9C(&pos);
    }
    if (w == 1 || w == 2 || w == 3) {
        if (w == 3 && ((u8 *) D_8012BCE0[2])[4] != 0) {
            D_800E8AE0[omCurrentObj->objId] = 1;
        }
        if (w >= 2 && ((u8 *) D_8012BCE0[1])[4] != 0) {
            D_800E8AE0[omCurrentObj->objId] = 1;
        }
        if (((u8 *) D_8012BCE0[0])[4] != 0) {
            D_800E8AE0[omCurrentObj->objId] = 1;
        }
    } else {
        D_800E8AE0[omCurrentObj->objId] = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2558_ovl7.s")
#endif

#ifdef NON_MATCHING
void func_801A2ADC_ovl7(struct Ovl7TrackParams *arg0) {
    u32 idx = omCurrentObj->objId;
    struct Sub800E1B50_Unk84 *sub84 = D_800E1B50[idx]->unk84;

    if (sub84 != NULL) {
        sub84->unk4 = gEntitiesNextPosXArray[idx];
        sub84->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        sub84->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        *(struct Ovl7TrackParams *) &sub84->unk10 = *arg0;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            sub84->unk1C = ABSF(sub84->unk1C);
            sub84->unk20 = (sub84->unk20) < 0.0f ? -(-(sub84->unk20)) : -(sub84->unk20);
        } else {
            sub84->unk1C = (sub84->unk1C) < 0.0f ? -(-(sub84->unk1C)) : -(sub84->unk1C);
            sub84->unk20 = ABSF(sub84->unk20);
        }
        sub84->unk24 = D_800E17D0[omCurrentObj->objId];
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
    Vector sp44;
    f32 sp38;
    u32 sp28;
    GObj *temp_v1;
    f32 temp_f0;
    f32 temp_f2;
    s32 var_a0;
    u32 temp_a0;
    u32 temp_a3;
    u32 temp_t6;

    temp_a0 = omCurrentObj->objId;
    sp5C = gEntitiesNextPosXArray[temp_a0];
    sp60 = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
    sp64 = gEntitiesNextPosZArray[omCurrentObj->objId];
    sp50 = gEntitiesPosXArray[omCurrentObj->objId];
    sp54 = gEntitiesPosYArray[omCurrentObj->objId] + arg0;
    sp58 = gEntitiesPosZArray[omCurrentObj->objId];
    temp_t6 = D_800E1B50[temp_a0]->unk74;
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
    if ((D_800E8E60[temp_a3] != 1) && ((temp_f0 = sp44.x - gEntitiesNextPosXArray[temp_a3], temp_f2 = sp44.z - gEntitiesNextPosZArray[temp_a3], (temp_f0 != 0.0f)) || (temp_f2 != 0.0f))) {
        func_800F8728(arg0, 0, temp_a3, temp_f0, temp_f2, temp_a3);
        var_a0 = omCurrentObj->objId * 4;
    }
    *(gEntitiesNextPosXArray + var_a0) = sp44.x;
    gEntitiesNextPosYArray[temp_v1->objId] = sp44.y - arg0;
    gEntitiesNextPosZArray[temp_v1->objId] = sp44.z;
    return 1;
}
#elif defined(PORT)
/* Water-surface snap (draft above, completed): intersect the old->new
 * segment, both endpoints raised by arg0, with the entity's current water
 * volume (rec->unk74); when it crosses the surface, carry the entity
 * (through the platform tracker unless held) to the crossing point and
 * leave it arg0 below the surface.  Returns 1 on a snap.  The m2c call
 * func_800F8728(arg0, 0, ...) carried phantom leftover registers -- the
 * real call is (objId, dx, dz), see the asm's `or $a0, $a3, $zero`. */
s32 func_801A2C78_ovl7(f32 arg0) {
    u32 id = omCurrentObj->objId;
    Vector newp;
    Vector oldp;
    Vector hit;
    void *normOut;
    void *water;

    newp.x = gEntitiesNextPosXArray[id];
    newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
    newp.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    oldp.x = gEntitiesPosXArray[omCurrentObj->objId];
    oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + arg0;
    oldp.z = gEntitiesPosZArray[omCurrentObj->objId];
    water = (void *) (uintptr_t) D_800E1B50[id]->unk74;
    if (water == NULL) {
        return 0;
    }
    if (func_8010E048(water, 0x14, &oldp, &newp, &normOut, &hit) == 0) {
        return 0;
    }
    id = omCurrentObj->objId;
    if (D_800E8E60[id] != 1) {
        f32 dx = hit.x - gEntitiesNextPosXArray[id];
        f32 dz = hit.z - gEntitiesNextPosZArray[id];

        if (dx != 0.0f || dz != 0.0f) {
            func_800F8728(id, dx, dz);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = hit.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = hit.y - arg0;
    gEntitiesNextPosZArray[omCurrentObj->objId] = hit.z;
    return 1;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2C78_ovl7.s")
#endif

/* FACTORY: 50/103, whole-function temp-register rotation, and it is a TWIN of
   func_801A3000_ovl7 below (identical call skeleton, identical body, unk18 vs
   unk14 / &= ~1 vs |= 1 / += vs -= 0.1f / 0x1C0 vs 0xE00): whatever closes one
   closes the other, both at 50 diffs.  Every instruction, branch, branch-likely
   and memory reference is the ROM's; only the temp names differ -- the ROM
   takes $v0/$v1 for the D_800E1B50->unk84 chain and $a3/$a2/$t0 for the three
   held array bases, ours takes $t9/$t2 and $t0/$a3/$t1, one slot rotated, and
   ours splits objId / objId*4 across two registers where the ROM shifts in
   place.  Two variants spent on it: m2c per-use temporaries (58, and it moves
   `obj` out of $v1) and an overlay-struct cast instead of *(f32 *)& (50,
   inert).  Permuter food.
   Two REAL bugs were fixed getting here and both are worth keeping: the call
   needs an f32 prototype in scope (guarded, so the definition below does not
   supply one -- without it IDO passes the field with `lw $a0`), and repeating
   `omCurrentObj->objId` makes IDO hoist &omCurrentObj into a register, where
   the ROM caches the POINTER once per block and re-reads ->objId; caching it
   in a local took this function from 101/106 to 50/103. */
#ifdef NON_MATCHING
s32 func_801A2C78_ovl7(f32);

void func_801A2E64_ovl7(s32 arg0) {
    struct EneUnk84Float {
        u8  pad0[0x14];
        f32 unk14;
        f32 unk18;
    };
    struct GObj *obj;
    f32 *temp_a1;
    s32 *temp_a0;
    u32 temp_v0;

    if (func_801A2C78_ovl7(((struct EneUnk84Float *) D_800E1B50[omCurrentObj->objId]->unk84)->unk18) != 0) {
        obj = omCurrentObj;
        temp_a0 = &D_800E8AE0[obj->objId];
        *temp_a0 &= ~1;
        D_800E8920[obj->objId] = 0;
        temp_a1 = &gEntitiesNextPosYArray[obj->objId];
        *temp_a1 += 0.1f;
        temp_v0 = obj->objId;
        if ((gEntitiesNextPosYArray[temp_v0] < gEntitiesPosYArray[temp_v0]) && (D_800E8AE0[temp_v0] & 2) && ((D_8012BCA0 >> 0x13) & 0x1C0)) {
            D_800E5F90[temp_v0] = D_800E6150[temp_v0];
            D_800E6BD0[obj->objId] = D_800E6D90[obj->objId];
            gEntitiesNextPosXArray[obj->objId] = gEntitiesPosXArray[obj->objId];
            gEntitiesNextPosYArray[obj->objId] = gEntitiesPosYArray[obj->objId];
            gEntitiesNextPosZArray[obj->objId] = gEntitiesPosZArray[obj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2E64_ovl7.s")
#endif
/* FACTORY: 50/102.  Twin of func_801A2E64_ovl7 above -- same residue, same
   fix; see that note. */
#ifdef NON_MATCHING
s32 func_801A2C78_ovl7(f32);

void func_801A3000_ovl7(s32 arg0) {
    struct EneUnk84Float {
        u8  pad0[0x14];
        f32 unk14;
        f32 unk18;
    };
    struct GObj *obj;
    f32 *temp_a1;
    s32 *temp_a0;
    u32 temp_v0;

    if (func_801A2C78_ovl7(((struct EneUnk84Float *) D_800E1B50[omCurrentObj->objId]->unk84)->unk14) != 0) {
        obj = omCurrentObj;
        temp_a0 = &D_800E8AE0[obj->objId];
        *temp_a0 |= 1;
        D_800E8920[obj->objId] = 0;
        temp_a1 = &gEntitiesNextPosYArray[obj->objId];
        *temp_a1 -= 0.1f;
        temp_v0 = obj->objId;
        if ((gEntitiesPosYArray[temp_v0] < gEntitiesNextPosYArray[temp_v0]) && (D_800E8AE0[temp_v0] & 2) && ((D_8012BCA0 >> 0x13) & 0xE00)) {
            D_800E5F90[temp_v0] = D_800E6150[temp_v0];
            D_800E6BD0[obj->objId] = D_800E6D90[obj->objId];
            gEntitiesNextPosXArray[obj->objId] = gEntitiesPosXArray[obj->objId];
            gEntitiesNextPosYArray[obj->objId] = gEntitiesPosYArray[obj->objId];
            gEntitiesNextPosZArray[obj->objId] = gEntitiesPosZArray[obj->objId];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A3000_ovl7.s")
#endif
#ifdef NON_MATCHING
void func_801A3198_ovl7(void) {
    struct UnkStruct800E1B50 *temp_v0;
    struct CollisionTriangle *temp_a1;
    f32 *temp_v0_2;
    f32 var_f6;
    u16 temp_a2;
    u32 temp_t7;
    u32 temp_a0;

    temp_a0 = omCurrentObj->objId;
    temp_v0 = D_800E1B50[temp_a0];
    if ((D_800E8920[temp_a0] == 1) && (temp_a1 = (struct CollisionTriangle *) temp_v0->unk7C, (temp_a1 != NULL)) && ((temp_a2 = temp_a1->collisionType, (temp_a2 == 0x13)) || (temp_a2 == 0x12))) {
        temp_t7 = temp_a1->collisionParameter;
        var_f6 = temp_t7;
        D_800E5510[temp_a0] = var_f6 * 0.1f;
        if (((struct CollisionTriangle *) temp_v0->unk7C)->collisionType == 0x12) {
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
void func_801A3280_ovl7(void) {
    func_801A32A8_ovl7(omCurrentObj->objId);
}

void func_801A32A8_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[arg0];

    if (ent->unk84 != NULL) {
        func_8010DC8C(ent->unk84);
        ent->unk84 = NULL;
    }
}

void func_801A32EC(struct Ovl7TrackParams *arg0) {
    D_801CE6D0_ovl7.unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_801CE6E0_ovl7 = *arg0;
    D_801CE6D0_ovl7.unk24 = D_800E17D0[omCurrentObj->objId];
    func_80105180(&D_801CE6D0_ovl7);
    func_801051AC(&D_801CE6D0_ovl7);
}

#ifdef MIPS_TO_C

void func_801A33B8(void *arg0) {
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
#elif defined(PORT)
/* Facing-aware variant of func_801A32EC above: prime the shared probe
 * record with the entity's position and the caller's five params, mirror
 * the near/far reach pair (unkC/unk10 hold f32 bits; the asm moves them
 * with lwc1/swc1, so these are bit copies) by the D_800E6A10 facing sign,
 * cast floor (airborne, func_80109F60) or ground-march (func_8010B238),
 * carry the resolved XZ delta through func_800F8728, and publish the
 * contact flags. */
void func_801A33B8(struct Ovl7TrackParams *arg0) {
    u32 id = omCurrentObj->objId;
    f32 dx;
    f32 dz;

    D_801CE6D0_ovl7.unk4 = gEntitiesNextPosXArray[id];
    D_801CE6D0_ovl7.unk8 = gEntitiesNextPosYArray[id];
    D_801CE6D0_ovl7.unkC = gEntitiesNextPosZArray[id];
    D_801CE6E0_ovl7 = *arg0;
    if (D_800E6A10[id] == 1.0f) {
        D_801CE6D0_ovl7.unk1C = *(f32 *) &arg0->unkC;
    } else {
        D_801CE6D0_ovl7.unk1C = *(f32 *) &arg0->unk10;
    }
    if (D_800E6A10[id] == 1.0f) {
        D_801CE6D0_ovl7.unk20 = *(f32 *) &arg0->unk10;
    } else {
        D_801CE6D0_ovl7.unk20 = *(f32 *) &arg0->unkC;
    }
    D_801CE6D0_ovl7.unk24 = D_800E17D0[id];
    if (D_800E8920[id] == 0) {
        D_800E8920[id] = func_80109F60(&D_801CE6D0_ovl7);
    } else {
        D_800E8920[id] = func_8010B238(&D_801CE6D0_ovl7);
    }
    dx = D_801CE6D0_ovl7.unk4 - gEntitiesNextPosXArray[id];
    dz = D_801CE6D0_ovl7.unkC - gEntitiesNextPosZArray[id];
    if (dx != 0.0f || dz != 0.0f) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = D_801CE6D0_ovl7.unk4;
        gEntitiesNextPosZArray[id] = D_801CE6D0_ovl7.unkC;
    }
    gEntitiesNextPosYArray[id] = D_801CE6D0_ovl7.unk8;
    func_80105238(&D_801CE6D0_ovl7, &D_8012BCA0);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A33B8.s")
#endif

void func_801A3618_ovl7(struct UnkOvl7Track *arg0) {
    arg0->unk0 = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->unk4 = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->unk8 = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->unkC = gEntitiesPosXArray[omCurrentObj->objId];
    arg0->unk10 = gEntitiesPosYArray[omCurrentObj->objId];
    arg0->unk14 = gEntitiesPosZArray[omCurrentObj->objId];
}

void func_801A36CC(void *arg0) {
    struct UnkOvl7Track *track = &D_801D0450_ovl7[omCurrentObj->objId - 14];

    if (omCurrentObj->objId == 0) {
        track = &D_801CE730_ovl7;
    }
    func_801A3618_ovl7(track);
    track->unk18 = D_800E17D0[omCurrentObj->objId];
    func_8011BF4C(track, arg0);
}

void func_801A374C_ovl7(void *arg0) {
    struct UnkOvl7Track *track = &D_801D0450_ovl7[omCurrentObj->objId - 14];

    if (omCurrentObj->objId == 0) {
        track = &D_801CE730_ovl7;
    }
    func_801A3618_ovl7(track);
    track->unk18 = D_800E17D0[0];
    func_8011BF4C(track, arg0);
}

void func_801A37B8_ovl7(void *arg0, struct DObj *arg1) {
    struct UnkOvl7Track *var_a2;
    Vector sp20;
    u32 temp_v0;

    temp_v0 = omCurrentObj->objId;
    var_a2 = &D_801D0450_ovl7[temp_v0 - 14];
    if (temp_v0 == 0) {
        var_a2 = &D_801CE730_ovl7;
    }
    func_801A3618_ovl7(var_a2);
    utilGetTransformSRT(&sp20, arg1);
    *(Vector *)var_a2 = sp20;
    var_a2->unk18 = D_800E17D0[omCurrentObj->objId];
    func_8011BF4C(var_a2, arg0);
}

s32 func_801A3864_ovl7(void) {
    struct DObj *dobj;
    Vector sp18;

    dobj = func_8011BABC();
    dobj->flags = 2;
    play_sound(0xA);
    utilGetTransformSRT(&sp18, dobj);
    func_800FD754(0, sp18.x, sp18.y, sp18.z);
    return 0;
}

s32 func_801A38BC_ovl7(struct CollisionTriangle *arg0) {
    struct DObj *dobj;
    Vector sp38;
    Vector sp2C;
    Vector sp20;

    dobj = func_8011BABC();
    dobj->flags = 2;
    if (arg0->collisionParameter == 0) {
        play_sound(0xA);
        utilGetTransformSRT(&sp2C, dobj);
        func_800A4DB8(&sp20, dobj);
        func_800A802C(NULL, 3, 0x36, &sp2C, &sp20);
    }
    return 0;
}

void func_801A3938(void *arg0) {
    struct UnkOvl7Track *track = &D_801D0450_ovl7[omCurrentObj->objId - 14];

    if (omCurrentObj->objId == 0) {
        track = &D_801CE730_ovl7;
    }
    if (arg0 != NULL) {
        track->unk1C = arg0;
    } else {
        track->unk1C = NULL;
    }
}

void func_801A3980_ovl7(GObj *arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_800B1BF0(0, omCurrentObj->objId);
    gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk4C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk50;
    gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk54;
}

void func_801A3A14_ovl7(s32 arg0) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7WarpStep *step;
    s32 idx = (0xF - ent->unk3D) & 0xFF;

    step = &D_801C28B0_ovl7[idx];
    ent->unk58 = step[1].unk0;
    ent->unk5C = step[1].unk4;
    ent->unk60 = step[1].unk8;
    gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk58 + ent->unk4C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk5C + ent->unk50;
    gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk60 + ent->unk54;
}

void func_801A3AE0_ovl7(GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk3D -= 1;
    if (ent->unk3D == 0) {
        func_801A3980_ovl7(gobj);
    } else {
        func_801A3A14_ovl7((s32) gobj);
    }
}

void func_801A3B40_ovl7(void) {
    if ((D_800E7730[omCurrentObj->objId] == 0)
        && ((D_800E77A0[omCurrentObj->objId] < 0x4E) || (D_800E77A0[omCurrentObj->objId] >= 0x5D))) {
        play_sound(0x157);
    }
}

void func_801A3BA4_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    if (D_800E83E0[omCurrentObj->objId] == 2) {
        ent->unk3D = 0xF;
    } else {
        ent->unk3D = 0xF;
    }
    ent->unk6C = D_800E83E0[omCurrentObj->objId];
    ent->unk30 = D_800E83E0[omCurrentObj->objId];
    ent->unk4C = gEntitiesNextPosXArray[omCurrentObj->objId];
    ent->unk50 = gEntitiesNextPosYArray[omCurrentObj->objId];
    ent->unk54 = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_801A3B40_ovl7();
    func_800B19F4(0x3E, omCurrentObj->objId);
}

void func_801A3CA8_ovl7(void) {
    u32 idx = omCurrentObj->objId;
    u32 snd;

    switch (D_800E7730[idx]) {
        case 0:
            snd = D_801C2E84_ovl7[D_800E77A0[idx]];
            break;
        case 1:
            snd = D_801F33FC[D_800E77A0[idx]];
            break;
        case 2:
            snd = D_801D789C[D_800E77A0[idx]];
            break;
        default:
            snd = 0;
            break;
    }
    if (snd != 0) {
        func_800A9760(snd);
    }
}

void func_801A3D6C_ovl7(void) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    func_801A3CA8_ovl7();
    if (ent->unk94->unk0 != -1) {
        func_800AECC0(ent->unk94->unk8);
        func_800AED20(ent->unk94->unk8);
        func_800AA018(ent->unk94->unk0);
        if (ent->unk94->unk4 != -1) {
            func_800AA018(ent->unk94->unk4);
        }
    } else {
        func_800AF408();
    }
}

void func_801A3E0C_ovl7(GObj *gobj) {
    struct UnkStruct800E1B50 *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk3D -= 1;
    if (ent->unk3D == 0) {
        func_801A3980_ovl7(gobj);
    } else {
        animUpdateModelTreeAnimation(gobj);
        func_8019F3B0_ovl7();
    }
}

