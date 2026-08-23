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
void func_8010C274(struct PositionState *);
void func_8010C184(struct PositionState *);
void func_8010DC24();

extern void func_8010B480(struct EnemyProbe *);
extern void func_8010B284(struct EnemyProbe *);
extern void func_8010B67C(struct EnemyProbe *);
extern void func_8010B860(struct EnemyProbe *);

extern void func_8010DC8C(struct EnemyProbe *);
extern void func_80105180(struct EnemyProbe *);
extern void func_801051AC(struct EnemyProbe *);
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
extern s32 func_8010D668(struct EnemyProbe *, f32);

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

/* Declared once, at file scope, with the types their DEFINITIONS use:
 *   f32 func_800F8728(s32, f32, f32)                  src/ovl2/ovl2_2.c:2194
 *   s32 func_8010E048(struct WaterData *, s32,
 *                     Vector *, Vector *, Vector *, Vector *)
 *                                                     src/ovl2/ovl2_7.c:8122
 *   s32 func_801AE73C_ovl7(s32, f32, f32, f32)        src/ovl7/ovl7_6.c:375
 * Each of these used to be re-declared inside individual function bodies,
 * two of them wrongly: func_800F8728 as returning void (it returns the
 * knock-back magnitude, which ovl1_8.c does use) and func_801AE73C_ovl7 the
 * same. A block-scope function declaration has file-scope LINKAGE, so those
 * spellings typed the symbols for the whole translation unit while looking
 * local. The PORT-only copies above stay as they are; these are the ones the
 * N64 build sees. */
struct WaterData;
f32 func_800F8728(s32, f32, f32);
s32 func_801AE73C_ovl7(s32, f32, f32, f32);

/* Hoisted out of individual function bodies. All of these are defined in
 * ovl2 (the shared enemy/probe helpers) and were re-declared identically in
 * up to three functions apiece; a block-scope function declaration has
 * file-scope linkage anyway, so the duplication bought nothing and only made
 * a disagreement possible. */
struct EnemyProbe;
s32 func_8010DF9C(void *);
void func_801A239C_ovl7(void);
struct EnemyProbe *func_8010DCAC(void);
void func_801051DC(struct EnemyProbe *);
s32 func_80109DD8(struct EnemyProbe *);
void func_8010CE44(struct EnemyProbe *, f32);
void func_8010D42C(struct EnemyProbe *, f32);
void func_8010D138(struct EnemyProbe *, f32);
s32 func_80109F60(struct EnemyProbe *);
s32 func_8010B238(struct EnemyProbe *);
void func_80105238(struct EnemyProbe *, void *);

/* Track-following movement parameters, overlaid onto EnemyProbe.unk10
 * (5-word block, see func_801A2ADC_ovl7/func_801A32EC below) and consumed
 * directly by func_801A33B8. unkC/unk10 are read only through
 * `*(f32 *) &arg0->unkNN` everywhere they appear -- confirmed f32 by this
 * function's own PORT-arm comment ("unkC/unk10 hold f32 bits; the asm
 * moves them with lwc1/swc1"). unk0/unk4/unk8 have no scalar read in this
 * file (only whole-struct-copied); left u32. */
struct Ovl7TrackParams {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    f32 unkC;
    f32 unk10;
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

extern struct EnemyProbe D_801CE6D0_ovl7;
extern struct Ovl7TrackParams D_801CE6E0_ovl7;
extern struct UnkOvl7Track D_801CE730_ovl7;
extern struct UnkOvl7Track D_801D0450_ovl7[];

/* Defined at the bottom of this file. func_801A2558_ovl7 used to carry its
 * own block-scope `(s32)` declaration, which disagreed with the definition's
 * parameter type. */
void func_801A2ADC_ovl7(struct Ovl7TrackParams *);

void func_8019F3B0_ovl7(void);
void func_801A32A8_ovl7(s32 arg0);
void func_801A3618_ovl7(struct UnkOvl7Track *arg0);
void func_801A3980_ovl7(GObj *arg0);
void func_801A3A14_ovl7(s32 arg0);
void func_801A3B40_ovl7(void);

void func_801A0D50_ovl7(void (*cb)(GObj *)) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk9C = cb;
}

// https://decomp.me/scratch/wJPj6
#ifdef NON_MATCHING
s32 func_801A0D74_ovl7(GObj *arg0) {
    s32 oldIdx;
    Vector sp18;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct EnemyEventTable *functable = ent->unk98;
    struct EnemyProbe *ent_sub84 = ent->unk84;

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
        if (functable->onHalt != NULL) {
            functable->onHalt(arg0);
        }
        if (functable->actionIds[6] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[6];
            func_80199628_ovl7(arg0);
        }
        if ((functable->onHalt == NULL) && (functable->actionIds[6] == -1)) {
            func_80199688_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((ent->unk44 != 0) && ((functable->onHalt != NULL) || (functable->actionIds[6] != -1))) {
        if (functable->onHalt != NULL) {
            functable->onHalt(arg0);
        }
        if (functable->actionIds[6] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[6];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 2) && ((functable->onBit1Change != NULL) || (functable->actionIds[1] != -1))) {
        if (functable->onBit1Change != NULL) {
            functable->onBit1Change(arg0);
        }
        if (functable->actionIds[1] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[1];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if (D_800E8920[omCurrentObj->objId] == 1) { // check if this is needed
        if ((D_800E8920[omCurrentObj->objId] == 0) && ((functable->onGroundChange != NULL) || (functable->actionIds[0] != -1))) {
            if (functable->onGroundChange != NULL) {
                functable->onGroundChange(arg0);
            }
            if (functable->actionIds[0] != -1) {
                gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[0];
                func_80199628_ovl7(arg0);
            }
            return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
        }
    }
    else if ((D_800E8920[omCurrentObj->objId] == 1) && ((functable->onGroundChange != NULL) || (functable->actionIds[0] != -1))) {
        if (functable->onGroundChange != NULL) {
            functable->onGroundChange(arg0);
        }
        if (functable->actionIds[0] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[0];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if (((D_8012BCA0 >> 0x13) & 0x3F) ||
        ((D_800E6310[omCurrentObj->objId] != 0)
      && (D_800E64D0[omCurrentObj->objId] != 0.0f)
      && ((functable->onWallOrCarry != NULL) || (functable->actionIds[2] != -1)))
    ) {
        if (functable->onWallOrCarry != NULL) {
            functable->onWallOrCarry(arg0);
        }
        if (functable->actionIds[2] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[2];
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
        && ((functable->onTurnBlocked != NULL) || (functable->actionIds[3] != -1))
    ) {
        if (functable->onTurnBlocked != NULL) {
            functable->onTurnBlocked(arg0);
        }
        if (functable->actionIds[3] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[3];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    // else
    if ((D_800E8920[omCurrentObj->objId] == 0) && (((D_8012BCA0 >> 0x13) & 0x1C0) != 0) && ((functable->onFloorRescue != NULL) || (functable->actionIds[4] != -1))) {
        if (functable->onFloorRescue != NULL) {
            functable->onFloorRescue(arg0);
        }
        if (functable->actionIds[4] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[4];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    if ((D_800E8AE0[omCurrentObj->objId] & 4) && ((functable->onWaterChange != NULL) || (functable->actionIds[5] != -1))) {
        if (functable->onWaterChange != NULL) {
            functable->onWaterChange(arg0);
        }
        if (functable->actionIds[5] != -1) {
            gEntityFuncListIDArray[omCurrentObj->objId] = functable->actionIds[5];
            func_80199628_ovl7(arg0);
        }
        return oldIdx != gEntityFuncListIDArray[omCurrentObj->objId];
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A0D74_ovl7.s")
#endif

void func_801A1724_ovl7(struct EnemyProbe *sub84) {
    sub84->posX = gEntitiesNextPosXArray[omCurrentObj->objId];
    sub84->posY = gEntitiesNextPosYArray[omCurrentObj->objId];
    sub84->posZ = gEntitiesNextPosZArray[omCurrentObj->objId];
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        sub84->forwardReachPos = ABSF(sub84->forwardReachPos);
        sub84->forwardReachNeg = (sub84->forwardReachNeg) < 0.0f ? -(-(sub84->forwardReachNeg)) : -(sub84->forwardReachNeg);
    } else {
        sub84->forwardReachPos = (sub84->forwardReachPos) < 0.0f ? -(-(sub84->forwardReachPos)) : -(sub84->forwardReachPos);
        sub84->forwardReachNeg = ABSF(sub84->forwardReachNeg);
    }
    sub84->facingAngle = D_800E17D0[omCurrentObj->objId];
}

/* FACTORY: 69/187, frame-size + spill-placement residue.  All control flow is
   the ROM's: the D_800E8E60 guard, the dx/dz tracker call, the three position
   stores re-reading omCurrentObj->objId inline, both six-way unk48 hook
   chains, the D_800E8920 latch and the four func_8010DC24 contact probes in
   ceiling/left/right/floor order.  Residue: our frame is 0x20 where the ROM's
   is 0x30 -- the ROM leaves 0x20-0x28 unused and puts the rec spill at 0x2C
   (ours at 0x18) and the arg0 home at 0x30 (ours 0x20); every later diff is
   that shift plus the temp-register rotation it drags in ($v1/$v0 for the
   hook load, $v0/$a1 for the D_8012BCA0 base).  Measured: `u32 id` as a real
   local is worth 61 diffs (it reproduces the ROM's `sw $t6,0x1C($sp)` /
   `lw $a0,0x1C($sp)` spill exactly); unused pad locals do NOT move the frame
   (IDO drops them); flipping the hook compare operand order is inert here
   (IDO canonicalises a load-vs-constant compare, unlike LEVERS 14's case).
   N64 spellings carried here: D_8012BCA0 is read as a WORD ARRAY through
   (&D_8012BCA0)[n] -- [3]/[2] into unk78/unk7C, and [2]/[8]/[11]/[5] as the
   func_8010DC24 arguments -- with NO file-scope retype of D_8012BCA0, and
   func_8010DC24 is called through a (u32 (*)(u32)) cast because its
   file-scope declaration is `void func_8010DC24()` and must not be changed. */
#ifdef MIPS_TO_C
void func_801A187C_ovl7(struct EnemyProbe *arg0) {
    extern u32 D_800E8E60[];
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *rec = D_800E1B50[id];
    u32 fl;

    if (D_800E8E60[id] != 1) {
        f32 dx = arg0->posX - gEntitiesNextPosXArray[id];
        f32 dz = arg0->posZ - gEntitiesNextPosZArray[id];

        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(id, dx, dz);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = arg0->posX;
    gEntitiesNextPosYArray[omCurrentObj->objId] = arg0->posY;
    gEntitiesNextPosZArray[omCurrentObj->objId] = arg0->posZ;
    if (((void *) rec->unk48 != (void *) func_8010C274) && ((void *) rec->unk48 != (void *) func_8010C184) &&
        ((void *) rec->unk48 != (void *) func_8010B480) && ((void *) rec->unk48 != (void *) func_8010B284) &&
        ((void *) rec->unk48 != (void *) func_8010B67C) && ((void *) rec->unk48 != (void *) func_8010B860) &&
        (D_800E8920[omCurrentObj->objId] == 1)) {
        rec->unk78 = (void *) (uintptr_t) (&D_8012BCA0)[3];
        rec->unk7C = (struct CollisionTriangle *) (uintptr_t) (&D_8012BCA0)[2];
    } else {
        rec->unk78 = 0;
        rec->unk7C = 0;
    }
    if (((void *) rec->unk48 != (void *) func_8010C274) && ((void *) rec->unk48 != (void *) func_8010C184) &&
        ((void *) rec->unk48 != (void *) func_8010B480) && ((void *) rec->unk48 != (void *) func_8010B284) &&
        ((void *) rec->unk48 != (void *) func_8010B67C) && ((void *) rec->unk48 != (void *) func_8010B860)) {
        rec->unk44 = 0;
        fl = D_8012BCA0 >> 0x13;
        if (fl & 0xE00) {
            rec->unk44 = ((u32 (*)(u32)) func_8010DC24)((&D_8012BCA0)[2]);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 7) && (rec->unk44 == 0)) {
            rec->unk44 = ((u32 (*)(u32)) func_8010DC24)((&D_8012BCA0)[8]);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 0x38) && (rec->unk44 == 0)) {
            rec->unk44 = ((u32 (*)(u32)) func_8010DC24)((&D_8012BCA0)[11]);
            fl = D_8012BCA0 >> 0x13;
        }
        if ((fl & 0x1C0) && (rec->unk44 == 0)) {
            rec->unk44 = ((u32 (*)(u32)) func_8010DC24)((&D_8012BCA0)[5]);
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
    EnemyRecord *rec = D_800E1B50[id];
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
        rec->unk78 = PC_COL->rec[0].norm;
        rec->unk7C = PC_COL->rec[0].tri;
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

/* FACTORY: 13/318, whole-function index-register permutation.  The shape is
   settled -- both unk42/unk41 Y-offset switches, the fallthrough
   3/2/1 water-slot chain with its unk74 latch, the flag0-vs-flag1 edge test
   driving bits 2 and 0x10, the two func_8010E048 probes (rec->unk74 first,
   then the pre-call `water` copy) and the unk38 countdown are all the ROM's,
   and the frame is 0x70 with the ROM's local layout (flags0 0x6C, newp 0x60,
   oldp 0x54, hit 0x48, water 0x40, norm 0x3C, rec spill 0x38, slot spill
   0x34) -- reached by declaring TWO trailing pads after the register-only
   locals; without them the frame is 0x68 and every slot is 8 low.
   Residue: our IDO puts objId*4 in $v0 where the ROM uses $v1, and
   rematerialises the D_800E8AE0 base at each subscript where the ROM keeps
   it in $t1 for the whole body.  That pair colours nearly every remaining
   instruction, which is why the raw count is high for a function whose
   structure is right -- it is one permutation, not 305 defects.  Swept:
   reading flags0 before the unk42 switch (305 -> 314) and hoisting the
   D_800E8AE0 base into an `s32 *` local (305 -> 315) are both NEGATIVE.
   N64 spellings carried here: D_8012BCE0 slots are 4-byte pointers, active
   flag read as ((u8 *) D_8012BCE0[i])[4], latched into unk74 as a plain
   (u32) cast; unk14/unk18 need *(f32 *) &slot->unkNN; unk38 is compared and
   decremented through (s8); func_8010DF9C takes ONE argument. */
#ifdef MIPS_TO_C
void func_801A1B6C_ovl7(void) {
    extern s32 D_800E8AE0[];
    s32 flags0;
    Vector newp;
    Vector oldp;
    Vector hit;
    struct WaterData *water;
    f32 norm;
    struct EnemyRecord *rec;
    struct EnemyProbe *slot;
    s32 pad0;
    s32 pad1;

    rec = D_800E1B50[omCurrentObj->objId];
    slot = rec->unk84;
    newp.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    switch (rec->unk42) {
    case 0:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->headOffsetY;
        break;
    case 2:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->footOffsetY;
        break;
    default:
        newp.y = gEntitiesNextPosYArray[omCurrentObj->objId];
        break;
    }
    newp.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    flags0 = D_800E8AE0[omCurrentObj->objId];
    water = rec->unk74;
    switch (func_8010DF9C(&newp)) {
    case 3:
        if (((u8 *) D_8012BCE0[2])[4] != 0) {
            rec->unk74 = (struct WaterData *) D_8012BCE0[2];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        /* fallthrough */
    case 2:
        if (((u8 *) D_8012BCE0[1])[4] != 0) {
            rec->unk74 = (struct WaterData *) D_8012BCE0[1];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        /* fallthrough */
    case 1:
        if (((u8 *) D_8012BCE0[0])[4] != 0) {
            rec->unk74 = (struct WaterData *) D_8012BCE0[0];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        break;
    default:
        D_800E8AE0[omCurrentObj->objId] &= ~1;
        rec->unk74 = NULL;
        break;
    }
    if (((flags0 & 1) == 0) ? ((D_800E8AE0[omCurrentObj->objId] & 1) != 0)
                            : ((D_800E8AE0[omCurrentObj->objId] & 1) == 0)) {
        D_800E8AE0[omCurrentObj->objId] |= 2;
        D_800E8AE0[omCurrentObj->objId] |= 0x10;
    } else {
        D_800E8AE0[omCurrentObj->objId] &= ~2;
        D_800E8AE0[omCurrentObj->objId] &= ~0x10;
    }
    if (((s8) rec->unk38 != -1) && (D_800E8AE0[omCurrentObj->objId] & 0x10)) {
        switch (rec->unk41) {
        case 0:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->headOffsetY;
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + slot->headOffsetY;
            break;
        case 2:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->footOffsetY;
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + slot->footOffsetY;
            break;
        default:
            newp.y = gEntitiesNextPosYArray[omCurrentObj->objId];
            oldp.y = gEntitiesPosYArray[omCurrentObj->objId];
            break;
        }
        oldp.x = gEntitiesPosXArray[omCurrentObj->objId];
        oldp.z = gEntitiesPosZArray[omCurrentObj->objId];
        if (rec->unk74 != NULL) {
            if ((func_8010E048(rec->unk74, 0x14, &oldp, &newp, (Vector *) &norm, &hit) != 0) &&
                ((s8) rec->unk38 == 0)) {
                func_801AE73C_ovl7(1, hit.x, hit.y, hit.z);
            }
        } else if (water != NULL) {
            if ((func_8010E048(water, 0x14, &oldp, &newp, (Vector *) &norm, &hit) != 0) &&
                ((s8) rec->unk38 == 0)) {
                func_801AE73C_ovl7(1, hit.x, hit.y, hit.z);
            }
        }
    }
    if (((s8) rec->unk38 != -1) && ((s8) rec->unk38 > 0)) {
        rec->unk38 = (s8) rec->unk38 - 1;
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
    EnemyRecord *rec = D_800E1B50[id];
    struct PositionState *slot = (struct PositionState *) rec->unk84;
    s32 prev = D_800E8AE0[id];
    void *savedWater = (void *) rec->unk74;
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
            rec->unk74 = (struct WaterData *) D_8012BCE0[2];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        if (w >= 2 && PC_WATER_ACTIVE(D_8012BCE0[1])) {
            rec->unk74 = (struct WaterData *) D_8012BCE0[1];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
        if (PC_WATER_ACTIVE(D_8012BCE0[0])) {
            rec->unk74 = (struct WaterData *) D_8012BCE0[0];
            D_800E8AE0[omCurrentObj->objId] |= 1;
        }
    } else {
        D_800E8AE0[omCurrentObj->objId] &= ~1;
        rec->unk74 = NULL;
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

/* FACTORY: 60/204, stack-base +4 anomaly plus the temp-register rotation it
   drags along.  Control flow, the three probe-point arms, the sinf/cosf
   schedule, the fallthrough switch and the four-way flag store are all the
   ROM's.  Residues: (a) our locals block sits 4 bytes high -- p at 0x30 and
   the slot spill at 0x2C where the ROM has 0x2C and 0x24, frame 0x40 on both
   sides, so the ROM leaves a 4-byte hole ABOVE its locals that no arrangement
   here reproduces (leading pad -> frame 0x48, trailing pad -> frame 0x48,
   both measured); (b) $t6/$t7 and $a0/$a1 are transposed from the entry
   block onward because the ROM reads D_800E8AE0[objId] before the
   D_800E1B50 lookup -- forcing that order with a comma-expression is
   NEGATIVE (144 -> 179).
   N64 spellings confirmed against the listing and carried here: D_8012BCE0
   slots are 4-byte pointers read `lw` then `lbu 0x4`, spelled
   ((u8 *) D_8012BCE0[i])[4] with NO change to the file-scope
   struct Ovl7ColRec; unk14/unk18 are read with lwc1 so they need
   *(f32 *) &slot->unkNN; func_8010DF9C takes ONE argument (m2c's second
   was the live $a1 slot pointer); the probe point must be a single Vector
   local, not three f32s (three separate floats cost 54 diffs). */
#ifdef MIPS_TO_C
void func_801A2068_ovl7(void) {
    extern s32 D_800E8AE0[];
    s32 probeHit;
    Vector p;
    struct EnemyProbe *slot = D_800E1B50[omCurrentObj->objId]->unk84;
    s32 *flags;

    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        p.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        p.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->headOffsetY;
        p.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else if (D_800E8920[omCurrentObj->objId] == 0) {
        p.x = gEntitiesNextPosXArray[omCurrentObj->objId];
        p.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->footOffsetY;
        p.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    } else {
        p.y = gEntitiesNextPosYArray[omCurrentObj->objId] + slot->footOffsetY;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            p.x = (sinf(D_800E17D0[omCurrentObj->objId]) * slot->forwardReachPos) + gEntitiesNextPosXArray[omCurrentObj->objId];
            p.z = (cosf(D_800E17D0[omCurrentObj->objId]) * slot->forwardReachPos) + gEntitiesNextPosZArray[omCurrentObj->objId];
        } else {
            p.x = (sinf(D_800E17D0[omCurrentObj->objId]) * slot->forwardReachNeg) + gEntitiesNextPosXArray[omCurrentObj->objId];
            p.z = (cosf(D_800E17D0[omCurrentObj->objId]) * slot->forwardReachNeg) + gEntitiesNextPosZArray[omCurrentObj->objId];
        }
    }
    probeHit = 0;
    switch (func_8010DF9C(&p)) {
    case 3:
        if (((u8 *) D_8012BCE0[2])[4] != 0) {
            probeHit = 1;
        }
        /* fallthrough */
    case 2:
        if (((u8 *) D_8012BCE0[1])[4] != 0) {
            probeHit |= 1;
        }
        /* fallthrough */
    case 1:
        if (((u8 *) D_8012BCE0[0])[4] != 0) {
            probeHit |= 1;
        }
        break;
    }
    flags = &D_800E8AE0[omCurrentObj->objId];
    if (*flags & 1) {
        if (probeHit != 0) {
            *flags = *flags & ~4;
        } else {
            *flags = *flags | 4;
        }
    } else {
        if (probeHit != 0) {
            *flags = *flags | 4;
        } else {
            *flags = *flags & ~4;
        }
    }
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
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

void func_801A248C_ovl7(struct EnemyProbe *arg0, f32 arg1) {
    if (arg0 != NULL) {
        if (func_8010D668(arg0, arg1) != 0) {
            gEntitiesNextPosXArray[omCurrentObj->objId] = arg0->posX;
            gEntitiesNextPosYArray[omCurrentObj->objId] = arg0->posY;
            gEntitiesNextPosZArray[omCurrentObj->objId] = arg0->posZ;
            D_800E8920[omCurrentObj->objId] = 1;
        } else {
            D_800E8920[omCurrentObj->objId] = 0;
        }
        func_80105180(arg0);
        func_801051AC(arg0);
    }
}

/* MATCHED (353 insns).  N64 arm only -- the PORT arm below stays because this
   spelling is not LP64-clean: it reads the terrain-kind byte as
   ((u8 *) rec->unk88)[0x1C] (the ROM uses lbu there while the shared header
   declares unk1C as u32, which must not be retyped at file scope) and it
   names the slot position through EnemyProbe unk4/unk8/unkC, which the
   PC build lays out differently.  Three edits carried it from 345/353 to
   MATCH: (1) the D_800E7730 switch needs explicit `case 0:` and `case 5:` so
   the jump table is unbiased (IDO otherwise emits addiu -1 / sltiu 6);
   (2) dx/dz must be named locals or IDO compares the two loads directly
   instead of forming the difference; (3) the water chain is a nested-if
   ladder with a forward `goto clear`, not a fallthrough switch -- the ROM
   tests zero FIRST and shares one clear-store tail. */
#ifndef PORT
void func_801A2558_ovl7(s32 arg0) {
    extern s32 D_800E8AE0[];
    extern u8 D_800E7730[];
    f32 reach;
    Vector p;
    struct EnemyRecord *rec;
    struct EnemyProbe *slot;
    f32 dx;
    f32 dz;
    s32 w;

    rec = D_800E1B50[omCurrentObj->objId];
    slot = rec->unk84;
    if (arg0 == 0) {
        return;
    }
    switch (D_800E7730[omCurrentObj->objId]) {
    case 1:
        reach = 25.0f;
        break;
    case 2:
        reach = 25.0f;
        break;
    case 4:
        reach = 0.0f;
        break;
    case 3:
        reach = 25.0f;
        break;
    case 6:
        reach = 0.0f;
        break;
    case 0:
    case 5:
    default:
        if (D_800E0D50[omCurrentObj->objId] != 0) {
            reach = 25.0f;
        } else {
            reach = 0.0f;
        }
        break;
    }
    if (slot != NULL) {
        func_80105180(slot);
    } else {
        slot = func_8010DCAC();
        rec->unk84 = slot;
    }
    func_801A2ADC_ovl7(arg0);
    if ((((u8 *) rec->unk88)[0x1C] != 0) && (D_800E8E60[omCurrentObj->objId] == 0)) {
        func_801051DC(slot);
        if (rec->unk48 != NULL) {
            D_800E8920[omCurrentObj->objId] = rec->unk48(slot);
        } else {
            D_800E8920[omCurrentObj->objId] = func_80109DD8(slot);
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            D_800E8920[omCurrentObj->objId] = func_8010D668(slot, reach);
            if (((u8 *) rec->unk88)[0x1C] == 2) {
                if (gEntitiesAngleZArray[omCurrentObj->objId] >= 6.2831855f) {
                    gEntitiesAngleZArray[omCurrentObj->objId] -= 6.2831855f;
                } else if (gEntitiesAngleZArray[omCurrentObj->objId] < 0.0f) {
                    gEntitiesAngleZArray[omCurrentObj->objId] += 6.2831855f;
                }
                if ((gEntitiesAngleZArray[omCurrentObj->objId] > 1.553343f) &&
                    (gEntitiesAngleZArray[omCurrentObj->objId] < 1.5882497f)) {
                    func_8010CE44(slot, 25.0f);
                } else if ((gEntitiesAngleZArray[omCurrentObj->objId] > 3.1241393f) &&
                           (gEntitiesAngleZArray[omCurrentObj->objId] < 3.1590462f)) {
                    func_8010D42C(slot, 25.0f);
                } else if ((gEntitiesAngleZArray[omCurrentObj->objId] > 4.694936f) &&
                           (gEntitiesAngleZArray[omCurrentObj->objId] < 4.7298427f)) {
                    func_8010D138(slot, 25.0f);
                }
            }
        }
        dx = slot->posX - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = slot->posZ - gEntitiesNextPosZArray[omCurrentObj->objId];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(omCurrentObj->objId, dx, dz);
            gEntitiesNextPosXArray[omCurrentObj->objId] = slot->posX;
            gEntitiesNextPosZArray[omCurrentObj->objId] = slot->posZ;
        }
        gEntitiesNextPosYArray[omCurrentObj->objId] = slot->posY;
    }
    func_801051AC(slot);
    p.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    p.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    p.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    w = func_8010DF9C(&p);
    if (w != 0) {
        if (w != 1) {
            if (w != 2) {
                if (w != 3) {
                    goto clear;
                }
                if (((u8 *) D_8012BCE0[2])[4] != 0) {
                    D_800E8AE0[omCurrentObj->objId] = 1;
                }
            }
            if (((u8 *) D_8012BCE0[1])[4] != 0) {
                D_800E8AE0[omCurrentObj->objId] = 1;
            }
        }
        if (((u8 *) D_8012BCE0[0])[4] != 0) {
            D_800E8AE0[omCurrentObj->objId] = 1;
        }
        return;
    }
clear:
    D_800E8AE0[omCurrentObj->objId] = 0;
}
#else
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
    EnemyRecord *rec = D_800E1B50[objId];
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
        rec->unk84 = (struct EnemyProbe *) slot;
    }
    func_801A2ADC_ovl7(arg0);
    if (rec->unk88->terrainKind != 0 && D_800E8E60[omCurrentObj->objId] == 0) {
        func_801051DC(slot);
        if (rec->unk48 != NULL) {
            D_800E8920[omCurrentObj->objId] =
                ((s32 (*)(void *)) rec->unk48)(slot);
        } else {
            D_800E8920[omCurrentObj->objId] = func_80109DD8(slot);
        }
        if (D_800E8920[omCurrentObj->objId] == 0) {
            D_800E8920[omCurrentObj->objId] = func_8010D668(slot, depth);
            if (rec->unk88->terrainKind == 2) {
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
#endif

#ifdef NON_MATCHING
void func_801A2ADC_ovl7(struct Ovl7TrackParams *arg0) {
    u32 idx = omCurrentObj->objId;
    struct EnemyProbe *sub84 = D_800E1B50[idx]->unk84;

    if (sub84 != NULL) {
        sub84->posX = gEntitiesNextPosXArray[idx];
        sub84->posY = gEntitiesNextPosYArray[omCurrentObj->objId];
        sub84->posZ = gEntitiesNextPosZArray[omCurrentObj->objId];
        *(struct Ovl7TrackParams *) &sub84->unk10 = *arg0;
        if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
            sub84->forwardReachPos = ABSF(sub84->forwardReachPos);
            sub84->forwardReachNeg = (sub84->forwardReachNeg) < 0.0f ? -(-(sub84->forwardReachNeg)) : -(sub84->forwardReachNeg);
        } else {
            sub84->forwardReachPos = (sub84->forwardReachPos) < 0.0f ? -(-(sub84->forwardReachPos)) : -(sub84->forwardReachPos);
            sub84->forwardReachNeg = ABSF(sub84->forwardReachNeg);
        }
        sub84->facingAngle = D_800E17D0[omCurrentObj->objId];
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_3/func_801A2ADC_ovl7.s")
#endif
/* FACTORY: 96/123, whole-frame +0x10 base residue.  Every instruction,
   register and RELATIVE stack slot matches the ROM except: (a) our IDO
   places the locals block 0x10 higher (frame 0x78 vs 0x68; every sp offset
   is ROM+0x10; relative layout newp/oldp/hit/norm/rec/pads/water/dx/dz is
   exact), and (b) objId colours to $v0 where the ROM uses $a3 after the
   func_8010E048 call.  Swept: pad counts 0/1/2 between rec and water
   (base wobbles 0x34-0x38, never 0x28), dx/dz inner vs outer (identical),
   scalar-side split per LEVERS entry 12 not applicable (Vectors sit on top
   in the ROM).  In-guard prototypes for func_8010E048/func_800F8728 are
   REQUIRED (the file-scope ones are PORT-guarded; without them K&R double
   promotion appears). */
#ifdef MIPS_TO_C
s32 func_801A2C78_ovl7(f32 arg0) {
    Vector newp;
    Vector oldp;
    Vector hit;
    Vector norm;
    struct EnemyRecord *rec;
    s32 pad0;
    s32 pad1;
    u32 water;
    f32 dx;
    f32 dz;
    s32 w;

    rec = D_800E1B50[omCurrentObj->objId];
    newp.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    newp.y = gEntitiesNextPosYArray[omCurrentObj->objId] + arg0;
    newp.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    oldp.x = gEntitiesPosXArray[omCurrentObj->objId];
    oldp.y = gEntitiesPosYArray[omCurrentObj->objId] + arg0;
    oldp.z = gEntitiesPosZArray[omCurrentObj->objId];
    water = rec->unk74;
    if (water == 0) {
        return 0;
    }
    if (func_8010E048((void *) water, 0x14, &oldp, &newp, &norm, &hit) == 0) {
        return 0;
    }
    if (D_800E8E60[omCurrentObj->objId] != 1) {
        dx = hit.x - gEntitiesNextPosXArray[omCurrentObj->objId];
        dz = hit.z - gEntitiesNextPosZArray[omCurrentObj->objId];
        if ((dx != 0.0f) || (dz != 0.0f)) {
            func_800F8728(omCurrentObj->objId, dx, dz);
        }
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = hit.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = hit.y - arg0;
    gEntitiesNextPosZArray[omCurrentObj->objId] = hit.z;
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
    struct EnemyRecord *temp_v0;
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
    struct EnemyRecord *ent = D_800E1B50[arg0];

    if (ent->unk84 != NULL) {
        func_8010DC8C(ent->unk84);
        ent->unk84 = NULL;
    }
}

void func_801A32EC(struct Ovl7TrackParams *arg0) {
    D_801CE6D0_ovl7.posX = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.posY = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.posZ = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_801CE6E0_ovl7 = *arg0;
    D_801CE6D0_ovl7.facingAngle = D_800E17D0[omCurrentObj->objId];
    func_80105180(&D_801CE6D0_ovl7);
    func_801051AC(&D_801CE6D0_ovl7);
}

/* FACTORY: 3/152 words differ, and all three are one register choice in the
 * tail block. The ROM loads omCurrentObj->objId straight into a0 and leaves
 * the jal's delay slot empty; IDO here loads it into a3, indexes with a3, and
 * spends the delay slot on `move a0,a3`. Everything else is byte-exact.
 *
 * Structure is confirmed correct, not assumed: caching the index in a local
 * (`s32 id = omCurrentObj->objId;` over the tail block) costs 90 words, so
 * the ROM really does re-load it at each use, as written below. Swapping the
 * two f32 declarations and moving the block-scope prototypes around are both
 * neutral; reversing the `||` operands costs 50 (it is a short-circuit, and
 * the ROM tests dx first). The callee prototype cannot be varied from here --
 * func_800F8728 is already declared at file scope.
 *
 * This is a register-allocation floor, not a structural one. Handed to the
 * permuter rather than ground on by hand.
 *
 * NOTE: this draft was previously left un-guarded as `#ifndef PORT`, so the
 * ROM build took it INSTEAD of the pragma below and shipped those three wrong
 * words in the linked image. tools/decomp/check_live_pragmas.py now fails the
 * build for that. */
#ifdef MIPS_TO_C
void func_801A33B8(struct Ovl7TrackParams *arg0) {
    f32 dx;
    f32 dz;

    D_801CE6D0_ovl7.posX = gEntitiesNextPosXArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.posY = gEntitiesNextPosYArray[omCurrentObj->objId];
    D_801CE6D0_ovl7.posZ = gEntitiesNextPosZArray[omCurrentObj->objId];
    D_801CE6E0_ovl7 = *arg0;
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        D_801CE6D0_ovl7.forwardReachPos = arg0->unkC;
    } else {
        D_801CE6D0_ovl7.forwardReachPos = arg0->unk10;
    }
    if (D_800E6A10[omCurrentObj->objId] == 1.0f) {
        D_801CE6D0_ovl7.forwardReachNeg = arg0->unk10;
    } else {
        D_801CE6D0_ovl7.forwardReachNeg = arg0->unkC;
    }
    D_801CE6D0_ovl7.facingAngle = D_800E17D0[omCurrentObj->objId];
    if (D_800E8920[omCurrentObj->objId] == 0) {
        D_800E8920[omCurrentObj->objId] = func_80109F60(&D_801CE6D0_ovl7);
    } else {
        D_800E8920[omCurrentObj->objId] = func_8010B238(&D_801CE6D0_ovl7);
    }
    dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[omCurrentObj->objId];
    dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[omCurrentObj->objId];
    if ((dx != 0.0f) || (dz != 0.0f)) {
        func_800F8728(omCurrentObj->objId, dx, dz);
        gEntitiesNextPosXArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posX;
        gEntitiesNextPosZArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posZ;
    }
    gEntitiesNextPosYArray[omCurrentObj->objId] = D_801CE6D0_ovl7.posY;
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

    D_801CE6D0_ovl7.posX = gEntitiesNextPosXArray[id];
    D_801CE6D0_ovl7.posY = gEntitiesNextPosYArray[id];
    D_801CE6D0_ovl7.posZ = gEntitiesNextPosZArray[id];
    D_801CE6E0_ovl7 = *arg0;
    if (D_800E6A10[id] == 1.0f) {
        D_801CE6D0_ovl7.forwardReachPos = arg0->unkC;
    } else {
        D_801CE6D0_ovl7.forwardReachPos = arg0->unk10;
    }
    if (D_800E6A10[id] == 1.0f) {
        D_801CE6D0_ovl7.forwardReachNeg = arg0->unk10;
    } else {
        D_801CE6D0_ovl7.forwardReachNeg = arg0->unkC;
    }
    D_801CE6D0_ovl7.facingAngle = D_800E17D0[id];
    if (D_800E8920[id] == 0) {
        D_800E8920[id] = func_80109F60(&D_801CE6D0_ovl7);
    } else {
        D_800E8920[id] = func_8010B238(&D_801CE6D0_ovl7);
    }
    dx = D_801CE6D0_ovl7.posX - gEntitiesNextPosXArray[id];
    dz = D_801CE6D0_ovl7.posZ - gEntitiesNextPosZArray[id];
    if (dx != 0.0f || dz != 0.0f) {
        func_800F8728(id, dx, dz);
        gEntitiesNextPosXArray[id] = D_801CE6D0_ovl7.posX;
        gEntitiesNextPosZArray[id] = D_801CE6D0_ovl7.posZ;
    }
    gEntitiesNextPosYArray[id] = D_801CE6D0_ovl7.posY;
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    func_800B1BF0(0, omCurrentObj->objId);
    gEntitiesNextPosXArray[omCurrentObj->objId] = ent->unk4C;
    gEntitiesNextPosYArray[omCurrentObj->objId] = ent->unk50;
    gEntitiesNextPosZArray[omCurrentObj->objId] = ent->unk54;
}

void func_801A3A14_ovl7(s32 arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

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
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    ent->unk3D -= 1;
    if (ent->unk3D == 0) {
        func_801A3980_ovl7(gobj);
    } else {
        animUpdateModelTreeAnimation(gobj);
        func_8019F3B0_ovl7();
    }
}

