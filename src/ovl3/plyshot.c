#include <ultra64.h>
#include <macros.h>
#include "common.h"
#include "GObj.h"

extern s32 D_8012E860;

/* NOT reconciled to the src/ovl1/ovl1_7.c:1040 definition's u16: the
 * prototype's implicit truncation reschedules func_80164914_ovl3's tail
 * (the ROM's `andi a0,v0,0xffff` sits in the jal delay slot) and grows
 * this TU's .text by 0x10. Measured, objdump A/B. */
extern void func_800B1900(s32);
extern void func_80111C4C(s32);
extern s32 func_80168408_ovl3(s32, s32, f32);
#include "Player.h"
#include "track_arrays.h"
#include "ovl1/track.h"
#include "ovl1/util.h"

/* D_80197028_ovl3[] now emitted by this TU */

extern void func_800A22D4(s32);
extern s32 func_800A8100(s32, s32, s32, struct DObj *);
/* D_80196FF0_ovl3[] now emitted by this TU */
extern f32 D_8019715C_ovl3;

extern void func_800AECC0(f32);
extern void func_800AED20(f32);
extern void func_80164130_ovl3(struct GObj *);
extern void func_800B4B9C(s32);
extern void func_800AA154(s32);
/* NOT reconciled to the src/ovl1/ovl1_3.c:2614 arm's (u32, s32, s32):
 * spelling arg0 u32 here moves a caller's register allocation and grows
 * this TU's .text by 0x10 (measured, objdump A/B). The ROM's own
 * declaration state is what the s32 reproduces. */
extern void func_800A9864(s32, s32, s32);
extern void func_801230E8(s32, s32, s32);
extern void func_801654CC_ovl3(s32);

typedef struct Unk80197BF0 {
    u16 unk0;
    u8 unk2[0x56];
} Unk80197BF0;

extern Unk80197BF0 D_80197BF0_ovl3[];
extern FUNCLIST D_801966F0_ovl3;

/* Everything the shot handlers below call. m2c emitted a private copy of
 * each of these inside every function body that used it (func_80155D50_ovl3
 * eighteen times over); a block-scope function declaration has file-scope
 * linkage in C, so none of them was ever local. One prototype apiece. */
struct PositionState;
float sinf(float);                          /* as spelled in include/libc/math.h */
float cosf(float);
float sqrtf(float);
f32 atan2f(f32, f32);
void curObjSleepForever(void);
extern s32 random_soft_s32_range(s32);
extern f32 lbvector_Angle(Vector *, Vector *);
extern Vector *lbvector_Rotate(Vector *, s32, f32);
extern Vector *vec3_normalized_cross_product(Vector *, Vector *, Vector *);
extern Vector *func_800191F8(Vector *, Vector *, f32);
extern void func_800A1F30(s32);
extern void func_800A77E8(s32, s32 *, s32 *);
extern void func_800A7870(void **, u16 *);
/* Definition: src/ovl1/ovl1_2_2.c:321,
 * Ovl1Generator *func_800A7F74(s32, s32, s32, f32, f32, f32) -- Ovl1Generator
 * is private to that TU, so the tree spells the return void. */
extern void func_800A7F74(s32, s32, s32, f32, f32, f32);
extern s32 func_800A8234(s32, s32, s32);
extern void func_800A9760(s32);
extern s32 func_800AA934(s32);
extern void func_800AF27C(void);
extern void func_800AF314(void);
extern void func_800AFBB4(s32, struct GObj *);
/* src/ovl1/ovl1_7.c:1396/1450 define these as
 * void func_800B2340(Vector *, struct DObj *, u32). This file keeps the s32
 * spelling because every call site here passes the DObj through an explicit
 * (s32)(uintptr_t) cast off D_800DFBD0[][]; kirby.c uses the real types.
 * CONFLICT, recorded rather than forced: D_800DFBD0 is already
 * `struct DObj **[]`, so the prototype is what disagrees -- but this file
 * also reaches func_800B2340 through func_80161EC0_ovl3(s32 arg0), fed from
 * D_800E1ED0[] and D_800EC2E0[].as_s32, which store DObj handles as 32-bit
 * scalars. Retyping the prototype here without retyping those arrays would
 * SIGN-extend a handle back into a pointer, which is worse than the
 * truncation. Fixing it means settling D_800EC2E0/D_800E1ED0 tree-wide (see
 * the D_800E9AA0 entry in tools/decomp/REFOUND.md), so every call site in
 * this file spells the truncation explicitly instead. */
extern void func_800B2340(Vector *, s32, s32);
extern void func_800B26D8(Vector *, s32, s32);
extern s32 func_800B3158(void);
/* src/ovl1/ovl1_8.c:389 defines void func_800B4954(GObj *). Here it is only
 * ever stored into D_800DEF90[], whose element type is void (*)(s32), so the
 * s32 spelling is what makes that assignment cast-free. */
extern void func_800B4954(s32);
extern void func_800B5064(GObj *);
extern void func_800BB468(s32, s32);
extern f32 func_800F9828(s32, s32);
extern s32 func_8010DF9C(f32 *);
extern s32 func_8010E048(void *, s32, f32 *, f32 *, void *, f32 *);   /* asm: $a0 halfword-indexed record, $a1 an index */
/* char * rather than the void * ovl3_6.c uses: func_80164914_ovl3's
 * codegen depends on it (void * grows this TU's .text, measured). */
extern s32 func_80111A04(char *, s32);
extern s32 func_8011D858(void *, s32, f32);
extern void func_80154578_ovl3(void *, s32, f32);
/* The shot collision entry points. Their N64 definitions in ovl3_1.c take
 * FEWER (or differently typed) parameters than these prototypes: the ROM
 * threads the shot's state buffer through $a0 untouched, so ovl3_1.c spells
 * func_80155424_ovl3/func_80155498_ovl3/func_80155664_ovl3 `(void)` and
 * relies on whatever the caller left in $a0. These caller-side prototypes
 * are what the call sites below require and what the ROM's argument setup
 * shows; do not "reconcile" them to the definitions without redoing that
 * whole family (see also ovl3_1.c's note on func_80154CFC_ovl3).
 * func_80155D50_ovl3 is the reverse case: ovl3_1.c:2473 defines it void,
 * but seven call sites below read its $v0 -- same class as the eight
 * void-returning ovl2_7 helpers in tools/decomp/REFOUND.md. */
extern s32 func_80155424_ovl3(struct PositionState *);
extern s32 func_80155498_ovl3(f32 *);
extern s32 func_801555B0_ovl3(f32 *, f32 *);
extern s32 func_80155664_ovl3(f32 *);
extern s32 func_80155838_ovl3(f32 *, f32, s32);
extern s32 func_80155D50_ovl3(f32 *, s32, s32, s32);
extern s32 func_80155E58_ovl3(void);
extern void func_8015B75C_ovl3(GObj *);
extern void func_8015C00C_ovl3(s32);
void func_8015CC84_ovl3(s32);
extern void func_8015D3C8_ovl3(GObj *);
extern void func_8015DBE4_ovl3(s32);
extern void func_8015ED2C_ovl3(s32);
extern void func_8015FD58_ovl3(s32);
extern void func_80160D84_ovl3(s32);
extern void func_801614D8_ovl3(GObj *);
extern s32 func_80162000_ovl3(char *, s32, f32);
extern void func_80162150_ovl3(void);
extern void func_801625B8_ovl3(f32 *);
void func_801644EC_ovl3(s32);
void func_80164890_ovl3(s32, s32, f32);
void func_80164914_ovl3(s32);
void func_80164EA8_ovl3(s32);
void func_80167578_ovl3(s32);
s32 func_8016854C_ovl3(s32, s32, f32);
extern s32 func_801693C4_ovl3(s32);
extern s32 func_8019F234_ovl7(s32);

void func_8015AC90_ovl3(s32 arg0) {
    Unk80197BF0 *p;
    GObj *obj = omCurrentObj;

    D_800E0650[obj->objId] = 0;
    p = &D_80197BF0_ovl3[obj->objId - 4];
    p->unk0 = (p->unk0 & 7) | 0x7FF8;
    D_800E10D0[obj->objId] = D_800E10D0[D_800E0D50[obj->objId]];
    D_800E1290[obj->objId] = D_800E1290[D_800E0D50[obj->objId]];
    D_800E1450[obj->objId] = D_800E1450[D_800E0D50[obj->objId]];
    D_800E8920[obj->objId] = 0;
    D_800E8760[obj->objId] = 0;
    D_800E83E0[obj->objId] = D_800E8760[obj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[obj->objId], 0xC, D_801966F0_ovl3);
}

extern void func_80161CE0_ovl3(s32);
extern void func_80161EC0_ovl3(s32, f32, f32);
extern void func_800AA018(s32);
extern void func_800B49F8(struct GObj *);
extern void func_8015B060_ovl3(s32);
extern void func_80154648_ovl3(s32, f32 *, f32 *);
extern void play_sound(s32);
extern void ohSleep(s32);
extern f32 **D_80192B5C_ovl3;
extern f32 D_80197F60_ovl3[][23];
extern f32 D_801982F8_ovl3[][8];
/* D_80197050_ovl3 now emitted by this TU */

void func_8015ADF8_ovl3(s32 arg0) {
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800EC2E0[omCurrentObj->objId].as_s32, 20.0f, 0.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B49F8;
    D_800DF150[omCurrentObj->objId] = func_8015B060_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192B5C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    play_sound(4);
    temp = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20001, 0x21, 0x10);
    func_800AA018(0x20001);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 12.0f;
    D_800E6850[omCurrentObj->objId] = 12.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 8.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
    ohSleep(2);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
    ohSleep(2);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

/* ovl3_1.c:2138 defines this (s32, s32); both arguments are really the
 * pointers spelled here (it forwards them to func_80154CFC_ovl3 and
 * func_80155C68_ovl3, which carry the same s32-for-pointer crutch). */
extern s32 func_8015550C_ovl3(f32 *, f32 *);
extern void func_800FD754(s32, f32, f32, f32);
extern s32 func_801117BC(char *, s32);
extern char D_80190B28_ovl3[];

void func_8015B060_ovl3(s32 arg0) {
    s32 temp;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (D_800E6310[omCurrentObj->objId] == 0) {
        if (D_800E83E0[omCurrentObj->objId] == 0) {
            temp = func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                      D_801982F8_ovl3[omCurrentObj->objId - 4]);
            if ((D_800E8920[omCurrentObj->objId] == 0) && (temp == 0)) {
                func_80111C4C(func_801117BC(D_80190B28_ovl3, omCurrentObj->objId));
                return;
            }
        }
        func_800FD754(5, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
    }
    func_800B1900((u16) omCurrentObj->objId);
}

#ifdef PORT
/* PORT: shared helpers for the plyshot PORT arms.
 *
 * The looping-sound state this file threads around is an N64 stack pair
 * {SoundHandle *, u16 id} whose address is parked in D_800EA360 / D_800E9FE0
 * as an s32. On the LP64 host func_800A77E8's 8-byte handle store into the
 * pair's first (4-byte) slot leaves the id bytes overlapping the pointer's
 * high half, so an 8-byte read back through the pair is never safe. All
 * game-visible allocations sit below 4 GiB (src/pc/pc_mmio.c), so the LOW
 * word alone identifies the handle: these helpers rebuild the handle from
 * the low word and a local, and store back in a {low word, id} shape that
 * round-trips. */
static void pc_sndpair_release(void *base) {
    u32 *p = base;
    void *h;
    u16 sid;

    if (p == NULL) {
        return;
    }
    h = (void *) (uintptr_t) p[0];
    sid = *(u16 *) (p + 1);
    func_800A7870(&h, &sid);
    p[0] = 0;
    *(u16 *) (p + 1) = 0;
}

static void pc_sndpair_start(s32 fgm, void *base) {
    u32 *p = base;
    void *h = NULL;
    u16 sid = 0;

    func_800A77E8(fgm, (s32 *) &h, (s32 *) &sid);
    if (p != NULL) {
        p[0] = (u32) (uintptr_t) h;
        *(u16 *) (p + 1) = sid;
    }
}

/* Effect-GObj parameter block hanging off GObj.unk4C (same shape as this
 * file's Unk80167800): a kind word and up to six floats. */
struct PcPlyshotFx {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
};
#endif
#ifdef MIPS_TO_C
/* FACTORY: 365/370 [was noted 5/370], whole-function callee-saved permutation (same floor class documented across this cluster). Replaces pc_sndpair_start with the real N64 call func_800A77E8, same pattern as func_80161058_ovl3. Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 365 of 370 words differ (98%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand. */

/* PORT: the throw/carry rock init coroutine, from asm/nonmatchings/ovl3/
 * plyshot/func_8015B190_ovl3.s. Parks the shot on effect anim 0xC and waits
 * for the release signal at D_8012E7FC[0]; then classes the rock by the
 * parent's charge (D_800E9720[parent]: <5, <10, else), seats it from the
 * parameter table, opens the looping sound pair 0x1E, and launches with the
 * class's speed/arc -- halved speed and gravity -0.4 (with a 60-frame
 * lifetime instead of 30) under water. The four-float class rows are ROM
 * constants (N64 words 42000000/42140000/... at D_80196720_ovl3); the data
 * translation emitted row 0's first word as the string "B", so the rows are
 * spelled here as literals instead of read through that emission. */
void func_8015B190_ovl3(s32 arg0) {
    static const f32 pc_rock_tbl[3][4] = {
        { 32.0f, 37.0f, 6.0f, -2.0f },
        { 30.0f, 40.0f, 8.0f, 6.0f },
        { 0.0f, 57.0f, 10.0f, 12.0f },
    };
    extern f32 **D_80192B78_ovl3;
    extern f32 D_8012E7FC[];
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    const f32 *row;
    f32 speed;
    f32 vert;
    f32 cap;
    s32 charge;

    D_800DEF90[id] = func_800B5064;
    D_800DF150[id] = func_8015B75C_ovl3;
    D_800E0F10[id] = 0xE;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002D, 0x21, 0x10);
    func_800AA018(0x2027D);
    D_800EA520[id] = func_800A8234(1, 1, 0xC);
    D_800E9AA0[id].as_u32 = 0;
    while (*(s32 *) &D_8012E7FC[0] == 0) {
        ohSleep(1);
    }
    D_800DEF90[id] = func_800B4954;
    D_800E83E0[id] = 0;
    D_800E9AA0[id].as_u32 = 1;
    charge = D_800E9720[D_800E0D50[id]];
    if (charge < 5) {
        D_800E98E0[id] = 0;
    } else if (charge < 10) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 2;
    }
    func_80161CE0_ovl3(arg0);
    row = pc_rock_tbl[D_800E98E0[id]];
    func_80161EC0_ovl3(0, row[0], row[1]);
    D_800E0490[id] = &D_80192B78_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AF314();
    func_800A9760(0x2002D);
    func_80155424_ovl3(D_80197F60_ovl3[id - 4]);
    /* Looping sound pair: as on N64, the pair lives in this sleeping
     * coroutine's frame and its address is parked in D_800EA360 for the
     * service routine to release later -- but laid out {low word, id}
     * so the LP64 handle store cannot shear it. */
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    func_800A77E8(0x1E, (s32 *) &sndpair[0], (s32 *) &sndpair[1]);
    {
        s32 wet = D_800E8AE0[id] & 4;
        f32 grav;

        if (wet) {
            D_800E9720[id] = 0x3C;
            grav = -0.4f;
        } else {
            D_800E9720[id] = 0x1E;
            grav = -0.980665f;
        }
        speed = wet ? row[2] * 0.5f : row[2];
        vert = wet ? row[3] * 0.5f : row[3];
        cap = wet ? 8.0f : 16.0f;
        D_800E64D0[id] = D_800E6A10[id] * speed;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (speed < 0.0f) ? -speed : speed;
        D_800E3210[id] = vert;
        D_800E3750[id] = grav;
        D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
    }
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the throw/carry rock init coroutine, from asm/nonmatchings/ovl3/
 * plyshot/func_8015B190_ovl3.s. Parks the shot on effect anim 0xC and waits
 * for the release signal at D_8012E7FC[0]; then classes the rock by the
 * parent's charge (D_800E9720[parent]: <5, <10, else), seats it from the
 * parameter table, opens the looping sound pair 0x1E, and launches with the
 * class's speed/arc -- halved speed and gravity -0.4 (with a 60-frame
 * lifetime instead of 30) under water. The four-float class rows are ROM
 * constants (N64 words 42000000/42140000/... at D_80196720_ovl3); the data
 * translation emitted row 0's first word as the string "B", so the rows are
 * spelled here as literals instead of read through that emission. */
void func_8015B190_ovl3(s32 arg0) {
    static const f32 pc_rock_tbl[3][4] = {
        { 32.0f, 37.0f, 6.0f, -2.0f },
        { 30.0f, 40.0f, 8.0f, 6.0f },
        { 0.0f, 57.0f, 10.0f, 12.0f },
    };
    extern f32 **D_80192B78_ovl3;
    extern f32 D_8012E7FC[];
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    const f32 *row;
    f32 speed;
    f32 vert;
    f32 cap;
    s32 charge;

    D_800DEF90[id] = func_800B5064;
    D_800DF150[id] = func_8015B75C_ovl3;
    D_800E0F10[id] = 0xE;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002D, 0x21, 0x10);
    func_800AA018(0x2027D);
    D_800EA520[id] = func_800A8234(1, 1, 0xC);
    D_800E9AA0[id].as_u32 = 0;
    while (*(s32 *) &D_8012E7FC[0] == 0) {
        ohSleep(1);
    }
    D_800DEF90[id] = func_800B4954;
    D_800E83E0[id] = 0;
    D_800E9AA0[id].as_u32 = 1;
    charge = D_800E9720[D_800E0D50[id]];
    if (charge < 5) {
        D_800E98E0[id] = 0;
    } else if (charge < 10) {
        D_800E98E0[id] = 1;
    } else {
        D_800E98E0[id] = 2;
    }
    func_80161CE0_ovl3(arg0);
    row = pc_rock_tbl[D_800E98E0[id]];
    func_80161EC0_ovl3(0, row[0], row[1]);
    D_800E0490[id] = &D_80192B78_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AF314();
    func_800A9760(0x2002D);
    func_80155424_ovl3(D_80197F60_ovl3[id - 4]);
    /* Looping sound pair: as on N64, the pair lives in this sleeping
     * coroutine's frame and its address is parked in D_800EA360 for the
     * service routine to release later -- but laid out {low word, id}
     * so the LP64 handle store cannot shear it. */
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    pc_sndpair_start(0x1E, sndpair);
    {
        s32 wet = D_800E8AE0[id] & 4;
        f32 grav;

        if (wet) {
            D_800E9720[id] = 0x3C;
            grav = -0.4f;
        } else {
            D_800E9720[id] = 0x1E;
            grav = -0.980665f;
        }
        speed = wet ? row[2] * 0.5f : row[2];
        vert = wet ? row[3] * 0.5f : row[3];
        cap = wet ? 8.0f : 16.0f;
        D_800E64D0[id] = D_800E6A10[id] * speed;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (speed < 0.0f) ? -speed : speed;
        D_800E3210[id] = vert;
        D_800E3750[id] = grav;
        D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B190_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 100/290, register permutation + 8 bytes of frame (was 276/289,
   and the ROM is 290 words, not 289). The old note called this a
   "whole-function callee-saved permutation"; five real source defects were
   in front of that, all found by reading the listing:

   1. `s32 id = omCurrentObj->objId;`. The ROM holds &omCurrentObj in a
      register and re-derives the field at EVERY use. Worth 146 words, and
      it is also what turns func_800B1900's argument into the ROM's
      `lhu 0x2(obj)` instead of a lw+andi. Same fix closed
      func_8015D3C8_ovl3 two functions below.
   2. The per-class speed is NOT a literal table. The ROM reads
      D_80196728_ovl3 with `sll 4` -- a 16-byte row stride, i.e. row [2] of
      the 4-float rows at D_80196720_ovl3 -- indexed by D_800E98E0[objId].
      The draft's `static const f32 pc_rock_spd[3]` also put 12 bytes of its
      own into .rodata, which is why every float reloc in the function was
      landing 0xC late.
   3. Both wet ternaries have the ROM's polarity only when the EQUAL case is
      written first (LEVER 5): `(wet == 0) ? plain : plain * 0.5f` and
      `(wet == 0) ? 16.0f : 8.0f`.
   4. `->unk4C` is RE-READ at each of the six seat stores; the ROM holds the
      GObj* (spilled at 0x38) and reloads the field. Caching it as an `fx`
      pointer is five words short (LEVER 10).
   5. The release block was a PORT shim. The ROM does ONE load of
      D_800EA360[objId] and calls `func_800A7870(p, p + 1)` -- no null
      check, no copy-out to stack temps, no zeroing afterwards, because
      func_800A7870 (src/ovl1/ovl1_2_2.c:175) clears both words itself.
      That shim was eleven instructions and two address-taken locals.

   WHAT IS LEFT: the word count is now exact (290) and the frame is 0x58
   against the ROM's 0x50 -- two local words too many. `Vector v` is
   correctly the first declaration (it takes the top three words in both).
   Measured and REVERTED: folding the D_800E9720 countdown into
   `if (D_800E9720[objId]-- != 0)` to drop the `t` local is catastrophic
   (237/290) -- `t` is load-bearing even though the ROM keeps it in $v1 with
   no home slot. The rest is a colouring cascade ($a2/$a0 for the
   omCurrentObj pointer, $v0/$v1 for the countdown pair). */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 276 of 289 words differ (95%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand. */

/* PORT: service routine for the thrown rock installed by func_8015B190_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s. While the
 * rock is still carried (gKirbyState.unk3C==0 and the launch latch
 * D_800E9AA0 clear) it dies when the throw action ends (action 0x15 or
 * ability drop) and otherwise just re-seats the carry effect on hand DObj
 * [3]. Once flying it pops off-screen (func_800B3158), faces the walk
 * direction, counts down the D_800E9720 lifetime while running the ground
 * probe func_80155424_ovl3, and keeps per-class speed/gravity/caps live
 * (halved speed, gravity -0.4 and cap 8 under water unless surface bit 2 is
 * set); ground contact, a hit record, the timer or a wall turns it into
 * splinter track 5 with fgm 0xE, releasing the looping pair parked in
 * D_800EA360 and the carry effect. The per-class lateral speeds are row [2]
 * of the N64 table at D_80196720 (see the init's pc_rock_tbl note on the
 * garbled data emission), spelled here as literals. */
void func_8015B75C_ovl3(struct GObj *arg0) {
    struct RockFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
    extern char D_80190B6C_ovl3[];
    extern f32 D_80196728_ovl3[];
    GObj *o;
    Vector v;
    s32 n;

    if ((gKirbyState.unk3C == 0) && (D_800E9AA0[omCurrentObj->objId].as_u32 == 0)) {
        if ((gKirbyState.action == 0x15) || (gKirbyState.abilityInUse == 0)) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
            func_800B1900((u16) omCurrentObj->objId);
            return;
        }
        goto seat;
    }
    if (func_800B3158() == 0) {
        goto release;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (D_800E6310[omCurrentObj->objId] == 0) {
        s32 t = D_800E9720[omCurrentObj->objId];

        D_800E9720[omCurrentObj->objId] = t - 1;
        if (t != 0) {
            if ((D_800E83E0[omCurrentObj->objId] == 0) && (func_80155424_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]) == 0)
                && (D_800E8920[omCurrentObj->objId] == 0)) {
                s32 flags = D_800E8AE0[omCurrentObj->objId];
                s32 wet = flags & 4;
                f32 grav;
                f32 spd;
                f32 cap;

                if ((wet != 0) && !(flags & 2)) {
                    grav = -0.4f;
                } else {
                    grav = -0.980665f;
                }
                spd = (wet == 0) ? D_80196728_ovl3[D_800E98E0[omCurrentObj->objId] * 4]
                                 : D_80196728_ovl3[D_800E98E0[omCurrentObj->objId] * 4] * 0.5f;
                cap = (wet == 0) ? 16.0f : 8.0f;
                D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
                D_800E3750[omCurrentObj->objId] = grav;
                D_800E3C90[omCurrentObj->objId] = (cap < 0.0f) ? -cap : cap;
                func_80162150_ovl3();
                func_80111C4C(func_801117BC(D_80190B6C_ovl3, omCurrentObj->objId));
                goto seat;
            }
        }
    }
    play_sound(0xE);
    n = func_801693C4_ovl3(5);
    if (n != -1) {
        gEntitiesNextPosXArray[n] = gEntitiesNextPosXArray[omCurrentObj->objId];
        gEntitiesNextPosYArray[n] = gEntitiesNextPosYArray[omCurrentObj->objId];
        gEntitiesNextPosZArray[n] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_800EA6E0[n] = D_800E17D0[omCurrentObj->objId];
        D_800EC2E0[n].as_u32 = 5;
    }
release:
    /* The ROM releases the looping pair IN PLACE: one load of
     * D_800EA360[objId], then func_800A7870(p, p + 1) with no null check
     * and no zeroing afterwards -- func_800A7870 clears both words itself
     * (src/ovl1/ovl1_2_2.c:175). The PORT arm's copy-out/copy-back shim is
     * eleven instructions the ROM does not have. */
    {
        void **pair = (void **) D_800EA360[omCurrentObj->objId];

        func_800A7870(pair, (u16 *) (pair + 1));
    }
    func_800A22D4(D_800EA520[omCurrentObj->objId]);
    func_800B1900((u16) omCurrentObj->objId);
    return;

seat:
    /* Re-seat the carry effect block on hand DObj [3]'s world transform. */
    o = (GObj *) D_800EA520[omCurrentObj->objId];
    func_800B2340(&v, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    ((struct RockFx *) o->unk4C)->unk4 = v.x;
    ((struct RockFx *) o->unk4C)->unk8 = v.y;
    ((struct RockFx *) o->unk4C)->unkC = v.z;
    func_800B26D8(&v, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    ((struct RockFx *) o->unk4C)->unk10 = v.x;
    ((struct RockFx *) o->unk4C)->unk14 = v.y;
    ((struct RockFx *) o->unk4C)->unk18 = v.z;
}
#elif defined(PORT)
/* PORT: service routine for the thrown rock installed by func_8015B190_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s. While the
 * rock is still carried (gKirbyState.unk3C==0 and the launch latch
 * D_800E9AA0 clear) it dies when the throw action ends (action 0x15 or
 * ability drop) and otherwise just re-seats the carry effect on hand DObj
 * [3]. Once flying it pops off-screen (func_800B3158), faces the walk
 * direction, counts down the D_800E9720 lifetime while running the ground
 * probe func_80155424_ovl3, and keeps per-class speed/gravity/caps live
 * (halved speed, gravity -0.4 and cap 8 under water unless surface bit 2 is
 * set); ground contact, a hit record, the timer or a wall turns it into
 * splinter track 5 with fgm 0xE, releasing the looping pair parked in
 * D_800EA360 and the carry effect. The per-class lateral speeds are row [2]
 * of the N64 table at D_80196720 (see the init's pc_rock_tbl note on the
 * garbled data emission), spelled here as literals. */
void func_8015B75C_ovl3(struct GObj *arg0) {
    extern char D_80190B6C_ovl3[];
    static const f32 pc_rock_spd[3] = { 6.0f, 8.0f, 10.0f };
    s32 id = omCurrentObj->objId;
    struct PcPlyshotFx *fx;
    Vector v;
    s32 n;

    if ((gKirbyState.unk3C == 0) && (D_800E9AA0[id].as_u32 == 0)) {
        if ((gKirbyState.action == 0x15) || (gKirbyState.abilityInUse == 0)) {
            func_800A22D4(D_800EA520[id]);
            func_800B1900((u16) id);
            return;
        }
        goto seat;
    }
    if (func_800B3158() == 0) {
        goto release;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E6310[id] == 0) {
        s32 t = D_800E9720[id];

        D_800E9720[id] = t - 1;
        if (t != 0) {
            if ((D_800E83E0[id] == 0) && (func_80155424_ovl3(D_80197F60_ovl3[id - 4]) == 0)
                && (D_800E8920[id] == 0)) {
                s32 flags = D_800E8AE0[id];
                s32 wet = flags & 4;
                f32 grav;
                f32 spd;
                f32 cap;

                if ((wet != 0) && !(flags & 2)) {
                    grav = -0.4f;
                } else {
                    grav = -0.980665f;
                }
                spd = wet ? pc_rock_spd[D_800E98E0[id]] * 0.5f : pc_rock_spd[D_800E98E0[id]];
                cap = wet ? 8.0f : 16.0f;
                D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                D_800E3750[id] = grav;
                D_800E3C90[id] = (cap < 0.0f) ? -cap : cap;
                func_80162150_ovl3();
                func_80111C4C(func_801117BC(D_80190B6C_ovl3, id));
                goto seat;
            }
        }
    }
    play_sound(0xE);
    n = func_801693C4_ovl3(5);
    if (n != -1) {
        gEntitiesNextPosXArray[n] = gEntitiesNextPosXArray[id];
        gEntitiesNextPosYArray[n] = gEntitiesNextPosYArray[id];
        gEntitiesNextPosZArray[n] = gEntitiesNextPosZArray[id];
        D_800EA6E0[n] = D_800E17D0[id];
        D_800EC2E0[n].as_u32 = 5;
    }
release:
    pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    func_800A22D4(D_800EA520[id]);
    func_800B1900((u16) id);
    return;

seat:
    /* Re-seat the carry effect block on hand DObj [3]'s world transform. */
    fx = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    func_800B2340(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk4 = v.x;
    fx->unk8 = v.y;
    fx->unkC = v.z;
    func_800B26D8(&v, (s32) (uintptr_t) D_800DFBD0[id][3], 0xFFFF);
    fx->unk10 = v.x;
    fx->unk14 = v.y;
    fx->unk18 = v.z;
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015B75C_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 117/266, whole-function temp-register rotation.
   Instruction count, every opcode, every immediate, every branch target and
   the whole schedule are exact from insn 0. The frame (0x38) and both stack
   locals (sp30/sp34) are exact. From insn [21] onward the $t0-$t9 rotation is
   offset by one slot -- the ROM keeps $t0 out of the address-computation pool
   (it holds objId-4 there) and holds objId in $a3 across [40]-[59] where IDO
   uses $v0. No structural defect remains; this is pure allocation. Ideal
   permuter seed.
   Swept: (1) named local for the reused objId-4 table index (lever 11) --
   costs a stack slot, frame goes 0x38->0x40, rotation unchanged (123/266).
   Decoded against the matched family exemplar func_8015ADF8_ovl3 in this TU;
   note the ROM has NO `f32 temp` local here -- a declared f32 local takes a
   frame slot and pushes the frame to 0x40, so the three 0.2f scale stores are
   written as literals. */
void func_8015BBE4_ovl3(s32 arg0) {
    extern f32 **D_80192B94_ovl3;
    s32 sp34;
    s32 sp30;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015C00C_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192B94_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    D_800E8920[omCurrentObj->objId] = D_800E8920[D_800E0D50[omCurrentObj->objId]];
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2002E, 0x21, 0x10);
    func_800AA018(0x2027E);
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9560[omCurrentObj->objId] = 0xA;
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 6.0f;
        D_800E6850[omCurrentObj->objId] = 6.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 10.0f;
        D_800E6850[omCurrentObj->objId] = 10.0f;
    }
    D_800EA360[omCurrentObj->objId] = (s32) &sp30;
    if (D_800E8920[omCurrentObj->objId] != 0) {
        func_800A77E8(0x22D, &sp30, &sp34);
        D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x50);
        D_800EB4E0[omCurrentObj->objId] = func_800A8234(1, 1, 0x51);
    } else {
        sp30 = 0;
        D_800EB4E0[omCurrentObj->objId] = 0;
        D_800EA520[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId];
    }
    D_800E9720[omCurrentObj->objId] = 0;
    while (D_800E9720[omCurrentObj->objId] < 30) {
        if (D_800E6310[omCurrentObj->objId] != 0) {
            D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
            break;
        }
        ohSleep(1);
        D_800E9720[omCurrentObj->objId]++;
    }
    D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -0.5f;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015BBE4_ovl3.s")
#endif

/* Moved up from its old home just below func_8015ED2C_ovl3: func_8015C00C_ovl3
 * and func_801614D8_ovl3 both need it, and IDO cross-checks block-scope extern
 * declarations against each other, so a second spelling of D_80198830_ovl3
 * (`extern s32 D_80198830_ovl3[]`) is a hard "redeclaration" error rather than
 * a shadowed local view.  A typedef emits nothing. */
typedef struct Unk80198830 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} Unk80198830;

#ifdef MIPS_TO_C
/* FACTORY: 29/506, register permutation. Was 500/505 -- the old note called
   that "a whole-function callee-saved permutation", which cannot describe a
   99% score; the draft simply was not this function yet. Re-derived from the
   listing 2026-08-25, and the word count is now exact (506 including the
   trailing nop). Six defects, in the order they paid:

   1. `s32 id = omCurrentObj->objId;` used 61 times. The ROM materialises
      &omCurrentObj ONCE into $s0 and re-reads BOTH the pointer and the field
      at every use -- `lw $t0, 0($s0); lw $v1, 0($t0)` -- because the stores in
      between may alias the global. Note the tell is NOT a repeated
      %hi(omCurrentObj): this listing has ONE, and so do both of the closures
      that found this lever (func_80169C10_ovl3, func_8015D3C8_ovl3). The
      screen is the count of POINTER READS off the held base;
      tools/decomp/objid_screen.py is it written down.
   2. The frame: 0x60 against the ROM's 0x68, so diff 0 was the stack
      adjustment and no body edit could be scored through it (LEVERS 69/74).
      Two trailing 4-byte declarations fixed it exactly (LEVERS 13/54); they
      have since become the two real pointer locals in (5), so the count is
      unchanged and there is no pad left in this function.
   3. The sndpair release was a PORT shim behind two file-local static
      helpers. The ROM inlines it at all three sites: ONE `lw` of the pair,
      `if (p[0] != NULL) func_800A7870(p, p + 1)` -- no null check on the
      pair, no copy-out, no zeroing (func_800A7870 clears both words itself,
      src/ovl1/ovl1_2_2.c:175). Same defect and fix as func_8015B75C_ovl3.
   4. `D_80198830_ovl3.unk4`, not a separate `D_80198834_ovl3` symbol: the ROM
      holds the struct base (`addiu $a1, $a1, %lo(D_80198830_ovl3)`) and reads
      `0x4($a1)`, which a second symbol cannot produce. Its typedef had to move
      up the file -- IDO cross-checks BLOCK-SCOPE extern declarations against
      each other, so a local `extern s32 D_80198830_ovl3[]` view is a hard
      "redeclaration of D_80198830_ovl3" error, not a shadow.
   5. Two GObj* locals for the carry effects. The ROM holds
      D_800EA520[objId] in $a0 across its three `lw 0x4C(..)` reads and
      D_800EB4E0[objId] in $v0 across its three, and re-reads ->unk4C at each
      store (LEVERS 10/33). There is NO `if (D_800EB4E0[objId] != 0)` guard on
      the second group. 423 -> 209 with those plus (6).
   6. INTEGER ZEROS IN PAIRS, and this is the biggest single edit after the
      objId one: 209 -> 54. The two velocity-sign tests in the else arm,
      `D_800E64D0[objId] < 0` and `> 0`, must BOTH be written with the integer
      literal. Either one alone is worth nothing (`> 0` alone 210, `< 0` alone
      206); together they fork the two `mtc1 $zero` the ROM has at 8015C504
      and 8015C538 off the shared one. Exactly the pairing func_801712F8_ovl3
      records for its two zero STORES; here it is two COMPARES, so the rule is
      about the pair and not about which side of the operator the zero is on.
      (The `D_800E3750`/`D_800E6690` zero stores are integer 0 for the same
      reason and were part of the 423 -> 209 step.)

   WHAT IS LEFT: one register permutation over the whole tail from 0x8015C5F0.
   Every value the ROM keeps in $a0 there -- the CSE of D_800EA520[objId] at
   the three-way join -- this C keeps in $a1, and the cascade runs
   $a1->$a2, $a2->$a3, $v0->$a0, plus one `move $a0, $a1` in a delay slot the
   ROM fills with `nop`. Naming that value a local and passing it to the calls
   fixed the same permutation in the first two exits (45 -> 29) and does NOT
   fix it in the third, where sndpair is live in $a0/$a1 across the water
   branch. Swept and negative at 45: fa/fx declared before sndpair (60),
   fa/fx typed s32 (45), fx declared before fa (45). */
/* PORT: the boomerang-shot service routine installed by func_8015BBE4_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s. Bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x10) and pops silently on
 * catch state 1; otherwise runs the hit records, refreshes shot collision,
 * probes 20 units around the shot (func_80155838_ovl3) to keep the two
 * water-trail effects and the looping pair 0x22D alive only in water, and
 * once the shot is past its apex (velocity against facing, or already in
 * return state D_800E98E0) steers it back toward the parent at 10 (6 in
 * water). The shared bubble-throttle word (D_80198830_ovl3.unk4) re-arms
 * from this shot's timer. */
struct BoomerangFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

void func_8015C00C_ovl3(s32 arg0) {
    extern Unk80198830 D_80198830_ovl3;
    extern char D_80190BB0_ovl3[];
    extern s32 D_8019356C_ovl3[];
    void **sndpair = (void **) D_800EA360[omCurrentObj->objId];
    f32 probe[3];
    s32 inWater;
    f32 spd;
    GObj *fa;
    GObj *fx;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x10U, gEntitiesNextPosXArray[omCurrentObj->objId],
                      gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A22D4((s32) fa);
            func_800A22D4(D_800EB4E0[omCurrentObj->objId]);
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A1F30((s32) fa);
            func_800A1F30(D_800EB4E0[omCurrentObj->objId]);
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4], (s32) (uintptr_t) D_8019356C_ovl3, 0,
                       omCurrentObj->objId);
    func_80155664_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
    D_800E8920[omCurrentObj->objId] = 0;
    probe[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    probe[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    probe[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    inWater = func_80155838_ovl3(probe, 20.0f, 6);
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]]
                          - gEntitiesNextPosYArray[omCurrentObj->objId]) + 20.0f,
                         func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]));

        D_800E3210[omCurrentObj->objId] = sinf(ang) * spd;
        D_800E3750[omCurrentObj->objId] = 0;
        D_800E3C90[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[omCurrentObj->objId] = cosf(ang) * spd;
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (D_800E64D0[omCurrentObj->objId] < 0))
            || ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (D_800E64D0[omCurrentObj->objId] > 0))) {
            D_800E98E0[omCurrentObj->objId] = 1;
        }
    }
    if (D_80198830_ovl3.unk4 == 0) {
        D_800E9560[omCurrentObj->objId] -= 1;
        if (D_800E9560[omCurrentObj->objId] == 0) {
            D_80198830_ovl3.unk4 = 1;
        }
    }
    func_80111C4C(func_801117BC(D_80190BB0_ovl3, omCurrentObj->objId));
    if (inWater == 0) {
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A1F30((s32) fa);
            func_800A1F30(D_800EB4E0[omCurrentObj->objId]);
            D_800EB4E0[omCurrentObj->objId] = 0;
            D_800EA520[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId];
        }
    } else {
        if (sndpair[0] == NULL) {
            func_800A77E8(0x22D, (s32 *) sndpair, (s32 *) (sndpair + 1));
        }
        if (D_800EA520[omCurrentObj->objId] == 0) {
            D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x50);
            D_800EB4E0[omCurrentObj->objId] = func_800A8234(1, 1, 0x51);
        }
    }
    if (D_800EA520[omCurrentObj->objId] != 0) {
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        ((struct BoomerangFx *) fa->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((struct BoomerangFx *) fa->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((struct BoomerangFx *) fa->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        fx = (GObj *) D_800EB4E0[omCurrentObj->objId];
        ((struct BoomerangFx *) fx->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((struct BoomerangFx *) fx->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((struct BoomerangFx *) fx->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    }
}
#elif defined(PORT)
/* PORT: the boomerang-shot service routine installed by func_8015BBE4_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s. Bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x10) and pops silently on
 * catch state 1; otherwise runs the hit records, refreshes shot collision,
 * probes 20 units around the shot (func_80155838_ovl3) to keep the two
 * water-trail effects and the looping pair 0x22D alive only in water, and
 * once the shot is past its apex (velocity against facing, or already in
 * return state D_800E98E0) steers it back toward the parent at 10 (6 in
 * water). The shared bubble-throttle word (D_80198830_ovl3.unk4) re-arms
 * from this shot's timer. */
void func_8015C00C_ovl3(s32 arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190BB0_ovl3[];
    extern s32 D_8019356C_ovl3[];
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x10U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_8019356C_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 20.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    /* N64 D_80198830+4; the PC data emission splits that block, and this
     * build's convention (kirby.c, plylib.c PORT arms) is the splinter
     * name for each cell. */
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    func_80111C4C(func_801117BC(D_80190BB0_ovl3, id));
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            pc_sndpair_start(0x22D, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x50);
            D_800EB4E0[id] = func_800A8234(1, 1, 0x51);
        }
    }
    if (D_800EA520[id] != 0) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        if (D_800EB4E0[id] != 0) {
            struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;

            fb->unk4 = gEntitiesNextPosXArray[id];
            fb->unk8 = gEntitiesNextPosYArray[id];
            fb->unkC = gEntitiesNextPosZArray[id];
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C00C_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 286/291 [was noted 5/291], whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 286 of 291 words differ (98%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand. */

/* PORT: spread-fragment init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015C7F4_ovl3.s. Spawned at the carry target (D_800E1ED0[id-112]),
 * inherits the parent's heading, builds a launch vector {per-kind lateral
 * speed from D_80196750, 8.0 up (1.6x on a 2-in-8 roll), 0} mirrored by the
 * side flag in D_800EC660, rotates it by the parent's throw angle (sign
 * flipped when the mode word D_8012E7FC[2] is 1), scales it 0.75x under
 * water, and launches; the service routine is the already-decompiled
 * func_8015CC84_ovl3. */
void func_8015C7F4_ovl3(s32 arg0) {
    extern f32 **D_80192C3C_ovl3;
    extern f32 D_80196750_ovl3[];
    extern f32 D_8012E7FC[];
    s32 id = omCurrentObj->objId;
    s32 kind = D_800EC2E0[id].as_u32;
    Vector v;
    s32 r;

    D_800EA520[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 0.0f, 0.0f);
    D_800E17D0[id] = D_800E17D0[D_800E0D50[id]];
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8015CC84_ovl3;
    D_800E0490[id] = &D_80192C3C_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    play_sound(0xB4);
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002F, 0x21, 0x10);
    r = random_soft_s32_range(8);
    v.x = D_80196750_ovl3[kind];
    v.y = 8.0f;
    v.z = 0.0f;
    if ((r == 2) || (r == 7)) {
        v.y = 8.0f * 1.6f;
    }
    if (D_800EC660[id] == -1.0f) {
        v.x = -v.x;
    }
    if (*(s32 *) &D_8012E7FC[2] == 1) {
        lbvector_Rotate(&v, 4, -D_800EA6E0[D_800E0D50[id]]);
    } else {
        lbvector_Rotate(&v, 4, D_800EA6E0[D_800E0D50[id]]);
    }
    if (D_800E8AE0[id] & 4) {
        D_800EA6E0[id] = v.y * 0.75f;
        D_800EA8A0[id] = v.x * 0.75f;
    } else {
        D_800EA6E0[id] = v.y;
        D_800EA8A0[id] = v.x;
    }
    D_800E9720[id] = 0x14;
    D_800E64D0[id] = D_800EA8A0[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = (D_800EA8A0[id] < 0.0f) ? -D_800EA8A0[id] : D_800EA8A0[id];
    D_800E3210[id] = D_800EA6E0[id];
    D_800E3750[id] = 0.0f;
    D_800E3C90[id] = (D_800EA6E0[id] < 0.0f) ? -D_800EA6E0[id] : D_800EA6E0[id];
    D_800EA520[id] = func_800A8100(1, 1, 0x29, NULL);
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: spread-fragment init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015C7F4_ovl3.s. Spawned at the carry target (D_800E1ED0[id-112]),
 * inherits the parent's heading, builds a launch vector {per-kind lateral
 * speed from D_80196750, 8.0 up (1.6x on a 2-in-8 roll), 0} mirrored by the
 * side flag in D_800EC660, rotates it by the parent's throw angle (sign
 * flipped when the mode word D_8012E7FC[2] is 1), scales it 0.75x under
 * water, and launches; the service routine is the already-decompiled
 * func_8015CC84_ovl3. */
void func_8015C7F4_ovl3(s32 arg0) {
    extern f32 **D_80192C3C_ovl3;
    extern f32 D_80196750_ovl3[];
    extern f32 D_8012E7FC[];
    s32 id = omCurrentObj->objId;
    s32 kind = D_800EC2E0[id].as_u32;
    Vector v;
    s32 r;

    D_800EA520[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 0.0f, 0.0f);
    D_800E17D0[id] = D_800E17D0[D_800E0D50[id]];
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_8015CC84_ovl3;
    D_800E0490[id] = &D_80192C3C_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    play_sound(0xB4);
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x2002F, 0x21, 0x10);
    r = random_soft_s32_range(8);
    v.x = D_80196750_ovl3[kind];
    v.y = 8.0f;
    v.z = 0.0f;
    if ((r == 2) || (r == 7)) {
        v.y = 8.0f * 1.6f;
    }
    if (D_800EC660[id] == -1.0f) {
        v.x = -v.x;
    }
    if (*(s32 *) &D_8012E7FC[2] == 1) {
        lbvector_Rotate(&v, 4, -D_800EA6E0[D_800E0D50[id]]);
    } else {
        lbvector_Rotate(&v, 4, D_800EA6E0[D_800E0D50[id]]);
    }
    if (D_800E8AE0[id] & 4) {
        D_800EA6E0[id] = v.y * 0.75f;
        D_800EA8A0[id] = v.x * 0.75f;
    } else {
        D_800EA6E0[id] = v.y;
        D_800EA8A0[id] = v.x;
    }
    D_800E9720[id] = 0x14;
    D_800E64D0[id] = D_800EA8A0[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = (D_800EA8A0[id] < 0.0f) ? -D_800EA8A0[id] : D_800EA8A0[id];
    D_800E3210[id] = D_800EA6E0[id];
    D_800E3750[id] = 0.0f;
    D_800E3C90[id] = (D_800EA6E0[id] < 0.0f) ? -D_800EA6E0[id] : D_800EA6E0[id];
    D_800EA520[id] = func_800A8100(1, 1, 0x29, NULL);
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015C7F4_ovl3.s")
#endif

extern char D_80190BF4_ovl3[];

void func_8015CC84_ovl3(s32 arg0) {
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (D_800E9720[omCurrentObj->objId]--) {
        if ((D_800E6310[omCurrentObj->objId] == 0) && (D_800E83E0[omCurrentObj->objId] == 0)
         && (func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                D_801982F8_ovl3[omCurrentObj->objId - 4]) == 0)
         && (D_800E8920[omCurrentObj->objId] == 0)) {
            if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
                D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
            } else {
                D_800E64D0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * 0.5f;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            if (D_800EA8A0[omCurrentObj->objId] < 0) {
                D_800E6850[omCurrentObj->objId] = -D_800EA8A0[omCurrentObj->objId];
            } else {
                D_800E6850[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
            }
            if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
                D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
            } else {
                D_800E3210[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] * 0.5f;
            }
            D_800E3750[omCurrentObj->objId] = 0.0f;
            if (D_800EA6E0[omCurrentObj->objId] < 0) {
                D_800E3C90[omCurrentObj->objId] = -D_800EA6E0[omCurrentObj->objId];
            } else {
                D_800E3C90[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
            }
            func_80162150_ovl3();
            func_80111C4C(func_801117BC(D_80190BF4_ovl3, omCurrentObj->objId));
            return;
        }
    }
    func_800A22D4(D_800EA520[omCurrentObj->objId]);
    play_sound(0x228);
    func_800A7F74(1, 1, 0x2D, gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#ifdef MIPS_TO_C
/* FACTORY: 129/267, and it really is a permutation this time -- LEVER 65b's
   opcode test reports 129 ALIGNED RENAMES AND 0 GENUINELY DIFFERENT WORDS.
   Every instruction of this function is in the ROM's slot with the ROM's
   opcode; only register fields disagree, led by the omCurrentObj value, which
   the ROM keeps in $a3 and this C keeps in $v1. Word count exact (267).
   Was 262/267 [noted 5/267].

   Two defects, both read off the listing:
   1. `s32 id = omCurrentObj->objId;` -- spell the field inline. That alone
      fixed the frame (0x50 -> the ROM's 0x40) and the saved-register set.
   2. `f32 spd` IS NOT A LOCAL. It is the file's global scratch f32 at
      0x800D7238, which the ROM holds in $s2 (`lui $s2, %hi(D_800D71E8+0x50)`
      -- spimdisasm names the nearest preceding symbol; the C spelling is
      `D_800D7238`, exactly as the already-matched func_8015F950_ovl3 in this
      TU uses it) and RE-READS at each use. It is written three times and read
      four, and one of those writes is the second argument of
      func_80161EC0_ovl3: the ROM stores `40.0f - sinf(angle) * 63.6396f` into
      D_800D7238 and passes `lw $a1, 0x0($s2)`, so that argument is not an
      expression at the call site at all. Three saved registers and the whole
      body order fall out of this. 254 -> 129.

   Swept and negative at 129: every barrier placement (17,
   tools/decomp/barrier_sweep.py). Queue it for the permuter -- a pure
   caller-saved rename with the word count exact is exactly what it is for. */
/* PORT: the lobbed-throw init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015CF9C_ovl3.s. Spawns at the carry target, launches along the
 * throw angle in D_800EC660 with speed 1.5x the parent's charge clamped to
 * [8,18] under gravity -0.55, then sleeps until the service routine
 * func_8015D3C8_ovl3 signals impact through D_800E98E0; on wake it detaches
 * from the parent, plays the burst (anim 0x20047 / voice 0xB7 / fgm 0x202A0)
 * and destroys the track. */
void func_8015CF9C_ovl3(s32 arg0) {
    extern f32 **D_80192CA4_ovl3;
    extern f32 D_800D7238;
    s32 pairHandle;
    s32 pairSid;

    D_800EA520[omCurrentObj->objId] = 0;
    D_800E98E0[omCurrentObj->objId] = 0;
    func_80161CE0_ovl3(arg0);
    D_800D7238 = 40.0f - (sinf(D_800EC660[omCurrentObj->objId]) * 63.6396f);
    func_80161EC0_ovl3(D_800E1ED0[omCurrentObj->objId - 112], D_800D7238,
                       sinf(D_800EC660[omCurrentObj->objId]) * -65.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015D3C8_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192CA4_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    D_800EA520[omCurrentObj->objId] = func_800A8234(1, 1, 0x2A);
    D_800D7238 = (f32) D_800E9720[D_800E0D50[omCurrentObj->objId]] * 1.5f;
    if (D_800D7238 < 8.0f) {
        D_800D7238 = 8.0f;
    } else if (D_800D7238 > 18.0f) {
        D_800D7238 = 18.0f;
    }
    D_800E64D0[omCurrentObj->objId] =
        cosf(D_800EC660[omCurrentObj->objId]) * D_800D7238 * D_800E6A10[omCurrentObj->objId];
    D_800E6690[omCurrentObj->objId] = 0.0f;
    D_800E6850[omCurrentObj->objId] = 18.0f;
    D_800E3210[omCurrentObj->objId] = sinf(D_800EC660[omCurrentObj->objId]) * D_800D7238;
    D_800E3750[omCurrentObj->objId] = -0.55f;
    D_800E3C90[omCurrentObj->objId] = 24.0f;
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x20030, 0x21, 0x10);
    while (D_800E98E0[omCurrentObj->objId] == 0) {
        ohSleep(1);
    }
    D_800E0D50[omCurrentObj->objId] = -1;
    func_800A9760(0x20047);
    func_800A77E8(0xB7, &pairHandle, &pairSid);
    func_800AA154(0x202A0);
    func_800A7870((void **) &pairHandle, (u16 *) &pairSid);
    func_800B1900((u16) omCurrentObj->objId);
}
#elif defined(PORT)
/* PORT: the lobbed-throw init coroutine, from asm/nonmatchings/ovl3/plyshot/
 * func_8015CF9C_ovl3.s. Spawns at the carry target, launches along the
 * throw angle in D_800EC660 with speed 1.5x the parent's charge clamped to
 * [8,18] under gravity -0.55, then sleeps until the service routine
 * func_8015D3C8_ovl3 signals impact through D_800E98E0; on wake it detaches
 * from the parent, plays the burst (anim 0x20047 / voice 0xB7 / fgm 0x202A0)
 * and destroys the track. */
void func_8015CF9C_ovl3(s32 arg0) {
    extern f32 **D_80192CA4_ovl3;
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800EA520[id] = 0;
    D_800E98E0[id] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[id - 112], 40.0f - (sinf(D_800EC660[id]) * 63.6396f),
                       sinf(D_800EC660[id]) * -65.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_8015D3C8_ovl3;
    D_800E0490[id] = &D_80192CA4_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    D_800EA520[id] = func_800A8234(1, 1, 0x2A);
    spd = (f32) D_800E9720[D_800E0D50[id]] * 1.5f;
    if (spd < 8.0f) {
        spd = 8.0f;
    } else if (spd > 18.0f) {
        spd = 18.0f;
    }
    D_800E64D0[id] = cosf(D_800EC660[id]) * spd * D_800E6A10[id];
    D_800E6690[id] = 0.0f;
    D_800E6850[id] = 18.0f;
    D_800E3210[id] = sinf(D_800EC660[id]) * spd;
    D_800E3750[id] = -0.55f;
    D_800E3C90[id] = 24.0f;
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20030, 0x21, 0x10);
    while (D_800E98E0[id] == 0) {
        ohSleep(1);
    }
    D_800E0D50[id] = -1;
    func_800A9760(0x20047);
    pc_sndpair_start(0xB7, sndpair);
    func_800AA154(0x202A0);
    pc_sndpair_release(sndpair);
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015CF9C_ovl3.s")
#endif

/* MATCHED 2026-08-25, re-derived from the listing (the old draft read
 * 242/245 under a "callee-saved permutation" note). Four things did it:
 *   - omCurrentObj->objId spelled INLINE at every use instead of cached in
 *     an `s32 id`. The ROM holds &omCurrentObj in $s0 and re-reads both the
 *     pointer and the field, because the stores through o->unk4C may alias
 *     the global. Caching it changes every index computation in the
 *     function -- and it is what turned func_800B1900's `lhu 0x2(obj)`
 *     into a lw+andi.
 *   - the top-level test inverted, so the D_800E98E0 != 0 burst block sits
 *     at the TAIL where the ROM puts it (LEVER 66).
 *   - the |vy| clamp written as a TERNARY inside the atan2f argument, not
 *     as an in-place `if (h < 0) h = -h;`: the ROM keeps the loaded value
 *     in $f0 and materialises the argument separately in $f14 (LEVER 16).
 *   - `= 0` rather than `= 0.0f` for the two D_800E6690/D_800E3750 stores.
 *     That was the LAST six words: with both written as float literals IDO
 *     gives $f0 to the 65535.0f pool load and pushes the mtc1 $zero to $f2,
 *     which is the register order LEVER 20 describes; an INTEGER zero is a
 *     different operand kind and lands on the ROM's $f0/$f2 assignment.
 *     Same family as LEVER 3 (ABS vs ABSF).
 * pad0/pad1 are two dead words the ROM's frame reserves (0x28/0x2C of a
 * 0x30 frame, never written) -- LEVER 43; without them the frame is 0x28.
 *
 * The PORT arm below is kept only because this body stores GObj pointers
 * through the s32 arrays D_800EA520/D_801915B4/D_80194458, which truncate
 * under LP64. */
#ifdef PORT
/* PORT: service routine for the lobbed throw installed by func_8015CF9C_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_8015D3C8_ovl3.s. Before
 * impact (D_800E98E0==0) it pops off-screen, faces the walk direction,
 * pitches the model along its velocity (-atan2(vy,|vx|)), and while nothing
 * has been hit re-seats the trail effect block from position+angles and
 * steps the flight track; any contact (ground, hit record, shot collision
 * or off-parent flag) freezes the motion and raises D_800E98E0=1, waking
 * the sleeping init coroutine to run the burst. After impact it drives the
 * burst: scales anim D_801915B4 and ring row D_801943A8 by trail DObj [1]'s
 * scale.x and runs the impact hit record D_80194458. */
void func_8015D3C8_ovl3(struct GObj *arg0) {
    extern char D_80190C38_ovl3[];
    extern s32 D_801915B4_ovl3[];
    extern f32 D_801943A8_ovl3[][4];
    extern f32 D_80198438_ovl3[];
    extern s32 D_80194458_ovl3[];
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    s32 id = omCurrentObj->objId;

    if (D_800E98E0[id] != 0) {
        f32 s = D_800DFBD0[id][1]->scale.v.x;

        func_8016854C_ovl3((s32) (uintptr_t) D_801915B4_ovl3, 0, s);
        func_80152070_ovl3(D_801943A8_ovl3, (f32 (*)[4]) D_80198438_ovl3, 0xB, s);
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80194458_ovl3, 0, id);
        return;
    }
    if (func_800B3158() == 0) {
        func_800A22D4(D_800EA520[id]);
        func_800B1900((u16) id);
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    {
        f32 h = D_800E64D0[id];

        if (h < 0.0f) {
            h = -h;
        }
        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], h);
    }
    if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)
        && (func_8015550C_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)
        && (D_800E8920[id] == 0)) {
        struct PcPlyshotFx *fx = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;

        fx->unk4 = gEntitiesNextPosXArray[id];
        fx->unk8 = gEntitiesNextPosYArray[id];
        fx->unkC = gEntitiesNextPosZArray[id];
        fx->unk10 = gEntitiesAngleXArray[id];
        fx->unk14 = gEntitiesAngleYArray[id];
        fx->unk18 = gEntitiesAngleZArray[id];
        func_80162150_ovl3();
        func_80111C4C(func_801117BC(D_80190C38_ovl3, id));
        return;
    }
    D_800E6690[id] = 0.0f;
    D_800E64D0[id] = D_800E6690[id];
    D_800E6850[id] = 65535.0f;
    D_800E3750[id] = 0.0f;
    D_800E3210[id] = D_800E3750[id];
    D_800E3C90[id] = 65535.0f;
    D_800E98E0[id] = 1;
    func_800A22D4(D_800EA520[id]);
}
#else
void func_8015D3C8_ovl3(struct GObj *arg0) {
    struct PlyshotFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
    extern char D_80190C38_ovl3[];
    extern s32 D_801915B4_ovl3[];
    extern f32 D_801943A8_ovl3[][4];
    extern f32 D_80198438_ovl3[];
    extern s32 D_80194458_ovl3[];
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    s32 pad0;
    s32 pad1;
    f32 s;
    f32 h;
    GObj *o;

    if (D_800E98E0[omCurrentObj->objId] == 0) {
        if (func_800B3158() == 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
            func_800B1900((u16) omCurrentObj->objId);
            return;
        }
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
        h = D_800E64D0[omCurrentObj->objId];
        gEntitiesAngleXArray[omCurrentObj->objId] =
            -atan2f(D_800E3210[omCurrentObj->objId], (h < 0.0f) ? -h : h);
        if ((D_800E6310[omCurrentObj->objId] == 0) && (D_800E83E0[omCurrentObj->objId] == 0)
            && (func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                   D_801982F8_ovl3[omCurrentObj->objId - 4]) == 0)
            && (D_800E8920[omCurrentObj->objId] == 0)) {
            o = (GObj *) D_800EA520[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unk10 = gEntitiesAngleXArray[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unk14 = gEntitiesAngleYArray[omCurrentObj->objId];
            ((struct PlyshotFx *) o->unk4C)->unk18 = gEntitiesAngleZArray[omCurrentObj->objId];
            func_80162150_ovl3();
            func_80111C4C(func_801117BC(D_80190C38_ovl3, omCurrentObj->objId));
            return;
        }
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
        D_800E6850[omCurrentObj->objId] = 65535.0f;
        D_800E3750[omCurrentObj->objId] = 0;
        D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
        D_800E3C90[omCurrentObj->objId] = 65535.0f;
        D_800E98E0[omCurrentObj->objId] = 1;
        func_800A22D4(D_800EA520[omCurrentObj->objId]);
        return;
    }
    s = D_800DFBD0[omCurrentObj->objId][1]->scale.v.x;
    func_8016854C_ovl3((s32) D_801915B4_ovl3, 0, s);
    func_80152070_ovl3(D_801943A8_ovl3, (f32 (*)[4]) D_80198438_ovl3, 0xB, s);
    func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4], (s32) D_80194458_ovl3, 0,
                       omCurrentObj->objId);
}

#endif

#ifdef NON_MATCHING
/* FACTORY: 36/273 -- swept 2026-08-24, down from 43/273, and the residue is
   now a SINGLE cluster instead of three.
   Fixed: the first draft had both inner `& 4` tests written true-case-first,
   so IDO chose the opposite branch polarity from the ROM (`beqzl` for the
   ROM's `bnel`) and pre-loaded the wrong one of each constant pair
   (0x41200000 for 0x40A00000, 0xC1880000 for 0xC1080000). Writing the EQUAL
   case first (LEVERS lever 5) fixes both, 43 -> 37. The `mul.s` slot on the
   D_800E64D0 store is worth one more: with `v` a named local and
   D_800E6A10[] a direct array load, IDO emits `load, local` however the
   product is spelled, but folding the scale into an INLINE ternary flips it
   to the ROM's `local, load` (LEVERS lever 21), 37 -> 36.
   What is LEFT is one register-naming cluster with a long cascade: the ROM
   holds the `omCurrentObj->objId` temp in $v1 and the CSE'd D_800E8AE0 /
   D_800EA8A0 table bases in $v0/$a1; this draft has objId in $v0 and the
   bases in $v1, and every dependent `sll`/`addu`/`addu $at` inherits the
   swap. Swept with no effect (all exactly 36/273): caching `omCurrentObj`
   in a `GObj *obj` local, and dropping the now-unused `f32 v`.
   Good permuter seed -- one two-register exchange from byte-exact. */
void func_8015D7A0_ovl3(s32 arg0) {
    extern f32 D_800D7238;
    extern f32 D_800D723C;
    extern f32 **D_80192E9C_ovl3;
    f32 temp;

    D_800EA520[omCurrentObj->objId] = 0;
    D_800E0650[omCurrentObj->objId] = 1;
    func_80161CE0_ovl3(arg0);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 1) {
        D_800D7238 = 30.0f;
        D_800D723C = 20.0f;
    } else {
        D_800D723C = 0.0f;
        D_800D7238 = D_800D723C;
    }
    func_80161EC0_ovl3(0, D_800D7238, D_800D723C);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015DBE4_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192E9C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    D_800E8920[omCurrentObj->objId] = 0;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20032, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x46;
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    func_800AA018(0x20280);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 1) {
        gEntitiesAngleXArray[omCurrentObj->objId] = 0.0f;
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] *
            (((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 10.0f : 5.0f);
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 10.0f;
    } else {
        gEntitiesAngleXArray[omCurrentObj->objId] = 1.57079637f;
        if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
            D_800E3210[omCurrentObj->objId] = -17.0f;
        } else {
            D_800E3210[omCurrentObj->objId] = -8.5f;
        }
        D_800E3750[omCurrentObj->objId] = 0.0f;
        D_800E3C90[omCurrentObj->objId] = 17.0f;
    }
    D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x49);
    D_800EB4E0[omCurrentObj->objId] = func_800A8234(1, 1, 0x4E);
    D_800EB6A0[omCurrentObj->objId] = 0;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015D7A0_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 52/534, register permutation plus two scheduling rotations. Was
   531/533 [noted 2/533], and the ROM's .text is 534 words -- the old 533 came
   from counting the listing's three .late_rodata floats in and its own words
   out. The count is now exact.

   Re-derived from the listing 2026-08-25. Unlike its plyshot siblings this
   ROM does NOT hold &omCurrentObj in a saved register: it re-materialises
   lui/lw %hi/%lo(omCurrentObj) at all twenty uses and allocates NO
   callee-saved register at all. That is the frame constraint here, and the
   first draft of this re-derivation violated it -- see (5).

   1. `s32 id = omCurrentObj->objId;` again; spell the field inline.
   2. ONE 12-byte stack buffer serves as both the ground probe and the
      Vector handed to func_800B2340/func_800B26D8: the ROM passes
      `addiu $a0, $sp, 0x3C` to all three. The draft had a separate
      `f32 probe[3]` and `Vector sp`, which is 12 bytes of frame the ROM does
      not have.
   3. The kind dispatch is a SWITCH, not an if/else chain (LEVER 34): the ROM
      compares 0 then 1 while laying the bodies 1 then 0, which is exactly
      LEVER 34's "compares sorted by value, bodies in source order".
   4. Four chained/re-read assignments the draft wrote as independent stores:
      `D_800EA520[objId] = D_800EB4E0[objId] = D_800EB6A0[objId]` after the
      zeroing (one value, two stores, no reload);
      `D_800E64D0[objId] = D_800E6690[objId]` after setting D_800E6690 to 0
      (the ROM RELOADS it); `gEntitiesScaleXArray[objId] =
      gEntitiesScaleYArray[objId] = D_800EA6E0[objId] * 0.2f` (Y computed
      first, X takes the same register); and the timer decrement is GUARDED,
      `if (D_800E9720[objId] != 0) D_800E9720[objId] -= 1;`, even though the
      test above it already proved it non-zero.
   5. THREE GObj* effect pointers, and the third one is what unlocked the
      function. The final block re-seats D_800EA520, D_800EB4E0 and
      D_800EB6A0; each is held across six `lw 0x4C(..)` re-reads. Writing the
      third inline cost 5 extra `omCurrentObj->objId` reads, which pushed IDO
      past its threshold for hoisting `&omCurrentObj` into $s0 -- a saved
      register this ROM never allocates -- and every stack offset moved with
      it. 517/548 with the third inline, 77/534 with it named. Declaring a
      third pointer costs a fourth scalar and the frame goes 0x48 -> 0x50, so
      the third one REUSES the second's variable after its last read: 53/534.
      An inner-block `GObj *fc` is not equivalent (77) -- IDO gives it its own
      slot.
   6. `D_800E6A10[objId] * (ternary)`, not `(ternary) * D_800E6A10[objId]`
      (LEVER 21, operand KIND): worth the 53rd word.
   Both wet ternaries are also spelled with the EQUAL case first
   (`((flags & 4) == 0) ? 10.0f : 5.0f`), which is what puts the wet arm at
   the branch target the way the ROM lays it (LEVER 5).

   WHAT IS LEFT: the ROM keeps D_800EA520[objId] in $a3 and copies it to $a0
   for each call (`or $a0, $a3, $zero`); this C has it in $a0 already and
   fills the delay slot with `nop`, and the same value is $v1 rather than $a3
   in the final block. Measured and NOT the cause: naming that value a local
   and passing it (53, one word worse than inline). The rest is two one-slot
   rotations of a `lui %hi(omCurrentObj)` inside the re-seat block. */

/* PORT: service routine for func_8015D7A0_ovl3's shot above (anim 0x20032,
 * the needle/spike burst -- kind 1 travels flat, kind 0 drops straight
 * down), from asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s. Kills
 * everything (both trail effects and the water-splash effect in D_800EB6A0)
 * when the ability ends; on timeout or wall hit it releases the effects and
 * shrinks away using D_800EA6E0/D_800EA8A0 as decaying scale factors.
 * While live it re-probes 40 units around the shot per kind, applies the
 * kind's velocity profile (halved in water), runs the kind's hit record and
 * anim script against DObj [1], spawns the 0x4D splash effect when inside
 * water, and re-seats both (or all three) effect parameter blocks on the
 * shot's position and orientation. */
struct NeedleFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

void func_8015DBE4_ovl3(s32 arg0) {
    extern char D_80190CA0_ovl3[];
    extern char D_80190CE4_ovl3[];
    extern s32 D_801935A8_ovl3[];
    extern s32 D_801935E4_ovl3[];
    Vector sp;
    GObj *fa;
    GObj *fb;
    s32 splash = 0;

    if (func_800B3158() == 0) {
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
            func_800A22D4(D_800EB4E0[omCurrentObj->objId]);
            if (D_800EB6A0[omCurrentObj->objId] != 0) {
                func_800A22D4(D_800EB6A0[omCurrentObj->objId]);
            }
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    if ((D_800E9720[omCurrentObj->objId] == 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A1F30(D_800EA520[omCurrentObj->objId]);
            func_800A1F30(D_800EB4E0[omCurrentObj->objId]);
            if (D_800EB6A0[omCurrentObj->objId] != 0) {
                func_800A1F30(D_800EB6A0[omCurrentObj->objId]);
            }
            D_800EB6A0[omCurrentObj->objId] = 0;
            D_800EA520[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId] =
                D_800EB6A0[omCurrentObj->objId];
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
        }
        D_800EA6E0[omCurrentObj->objId] -= 0.125f;
        if (D_800EA6E0[omCurrentObj->objId] == 0.0f) {
            func_800B1900((u16) omCurrentObj->objId);
        }
        D_800EA8A0[omCurrentObj->objId] -= 0.07f;
        gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] =
            D_800EA6E0[omCurrentObj->objId] * 0.2f;
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId] * 0.2f;
        return;
    }
    if (D_800E9720[omCurrentObj->objId] != 0) {
        D_800E9720[omCurrentObj->objId] -= 1;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    func_80155664_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
    D_800E8920[omCurrentObj->objId] = 0;
    sp.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    sp.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    sp.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    switch (D_800EC2E0[omCurrentObj->objId].as_u32) {
        case 1:
            splash = func_80155838_ovl3(&sp.x, 40.0f, 5);
            D_800E64D0[omCurrentObj->objId] =
                D_800E6A10[omCurrentObj->objId]
                * (((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 10.0f : 5.0f);
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = 10.0f;
            func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4],
                               (s32) (uintptr_t) D_801935A8_ovl3, 0, omCurrentObj->objId);
            func_80162000_ovl3(D_80190CA0_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1], 1.0f);
            break;
        case 0:
            splash = func_80155838_ovl3(&sp.x, -40.0f, 3);
            D_800E3210[omCurrentObj->objId] =
                ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? -17.0f : -8.5f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = 17.0f;
            func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4],
                               (s32) (uintptr_t) D_801935E4_ovl3, 0, omCurrentObj->objId);
            func_80162000_ovl3(D_80190CE4_ovl3,
                               (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1], 1.0f);
            break;
    }
    if ((splash != 0) && (D_800EB6A0[omCurrentObj->objId] == 0)) {
        D_800EB6A0[omCurrentObj->objId] = func_800A8234(2, 1, 0x4D);
    }
    fa = (GObj *) D_800EA520[omCurrentObj->objId];
    if (fa != NULL) {
        fb = (GObj *) D_800EB4E0[omCurrentObj->objId];
        func_800B2340(&sp, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1], 0xFFFF);
        ((struct NeedleFx *) fb->unk4C)->unk4 = sp.x;
        ((struct NeedleFx *) fa->unk4C)->unk4 = ((struct NeedleFx *) fb->unk4C)->unk4;
        ((struct NeedleFx *) fb->unk4C)->unk8 = sp.y;
        ((struct NeedleFx *) fa->unk4C)->unk8 = ((struct NeedleFx *) fb->unk4C)->unk8;
        ((struct NeedleFx *) fb->unk4C)->unkC = sp.z;
        ((struct NeedleFx *) fa->unk4C)->unkC = ((struct NeedleFx *) fb->unk4C)->unkC;
        func_800B26D8(&sp, (s32) (uintptr_t) D_800DFBD0[omCurrentObj->objId][1], 0xFFFF);
        ((struct NeedleFx *) fb->unk4C)->unk10 = sp.x;
        ((struct NeedleFx *) fa->unk4C)->unk10 = ((struct NeedleFx *) fb->unk4C)->unk10;
        ((struct NeedleFx *) fb->unk4C)->unk14 = sp.y;
        ((struct NeedleFx *) fa->unk4C)->unk14 = ((struct NeedleFx *) fb->unk4C)->unk14;
        ((struct NeedleFx *) fb->unk4C)->unk18 = sp.z;
        ((struct NeedleFx *) fa->unk4C)->unk18 = ((struct NeedleFx *) fb->unk4C)->unk18;
        fb = (GObj *) D_800EB6A0[omCurrentObj->objId];
        if (fb != NULL) {
            ((struct NeedleFx *) fb->unk4C)->unk4 = ((struct NeedleFx *) fa->unk4C)->unk4;
            ((struct NeedleFx *) fb->unk4C)->unk8 = ((struct NeedleFx *) fa->unk4C)->unk8;
            ((struct NeedleFx *) fb->unk4C)->unkC = ((struct NeedleFx *) fa->unk4C)->unkC;
            ((struct NeedleFx *) fb->unk4C)->unk10 = ((struct NeedleFx *) fa->unk4C)->unk10;
            ((struct NeedleFx *) fb->unk4C)->unk14 = ((struct NeedleFx *) fa->unk4C)->unk14;
            ((struct NeedleFx *) fb->unk4C)->unk18 = ((struct NeedleFx *) fa->unk4C)->unk18;
        }
    }
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#elif defined(PORT)
/* PORT: service routine for func_8015D7A0_ovl3's shot above (anim 0x20032,
 * the needle/spike burst -- kind 1 travels flat, kind 0 drops straight
 * down), from asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s. Kills
 * everything (both trail effects and the water-splash effect in D_800EB6A0)
 * when the ability ends; on timeout or wall hit it releases the effects and
 * shrinks away using D_800EA6E0/D_800EA8A0 as decaying scale factors.
 * While live it re-probes 40 units around the shot per kind, applies the
 * kind's velocity profile (halved in water), runs the kind's hit record and
 * anim script against DObj [1], spawns the 0x4D splash effect when inside
 * water, and re-seats both (or all three) effect parameter blocks on the
 * shot's position and orientation. */
void func_8015DBE4_ovl3(s32 arg0) {
    extern char D_80190CA0_ovl3[];
    extern char D_80190CE4_ovl3[];
    extern s32 D_801935A8_ovl3[];
    extern s32 D_801935E4_ovl3[];
    s32 id = omCurrentObj->objId;
    f32 probe[3];
    s32 splash = 0;
    u32 kind;

    if (func_800B3158() == 0) {
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A22D4(D_800EB6A0[id]);
            }
        }
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E9720[id] == 0) || (D_800E6310[id] != 0)) {
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            if (D_800EB6A0[id] != 0) {
                func_800A1F30(D_800EB6A0[id]);
            }
            D_800EB6A0[id] = 0;
            D_800EB4E0[id] = 0;
            D_800EA520[id] = 0;
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = 0.0f;
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleXArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        return;
    }
    D_800E9720[id] -= 1;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    kind = D_800EC2E0[id].as_u32;
    if (kind == 1) {
        splash = func_80155838_ovl3(probe, 40.0f, 5);
        D_800E64D0[id] = ((D_800E8AE0[id] & 4) ? 5.0f : 10.0f) * D_800E6A10[id];
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = 10.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935A8_ovl3, 0, id);
        func_80162000_ovl3(D_80190CA0_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    } else if (kind == 0) {
        splash = func_80155838_ovl3(probe, -40.0f, 3);
        D_800E3210[id] = (D_800E8AE0[id] & 4) ? -8.5f : -17.0f;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = 17.0f;
        func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801935E4_ovl3, 0, id);
        func_80162000_ovl3(D_80190CE4_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
    }
    if ((splash != 0) && (D_800EB6A0[id] == 0)) {
        D_800EB6A0[id] = func_800A8234(2, 1, 0x4D);
    }
    if ((D_800EA520[id] != 0) && (D_800EB4E0[id] != 0)) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
        struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;
        Vector sp;

        func_800B2340(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk4 = sp.x;
        fa->unk4 = fb->unk4;
        fb->unk8 = sp.y;
        fa->unk8 = fb->unk8;
        fb->unkC = sp.z;
        fa->unkC = fb->unkC;
        func_800B26D8(&sp, (s32) (uintptr_t) D_800DFBD0[id][1], 0xFFFF);
        fb->unk10 = sp.x;
        fa->unk10 = fb->unk10;
        fb->unk14 = sp.y;
        fa->unk14 = fb->unk14;
        fb->unk18 = sp.z;
        fa->unk18 = fb->unk18;
        if (D_800EB6A0[id] != 0) {
            struct PcPlyshotFx *fc = ((GObj *) (uintptr_t) (u32) D_800EB6A0[id])->unk4C;

            fc->unk4 = fa->unk4;
            fc->unk8 = fa->unk8;
            fc->unkC = fa->unkC;
            fc->unk10 = fa->unk10;
            fc->unk14 = fa->unk14;
            fc->unk18 = fa->unk18;
        }
    }
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015DBE4_ovl3.s")
#endif

extern f32 D_80196764_ovl3[][2];
extern f32 **D_801967A4_ovl3[];
void func_8015E754_ovl3(s32);
#ifdef NON_MATCHING
/* 65/197. */
void func_8015E43C_ovl3(s32 arg0) {
    f32 s;
    f32 *p;
    u32 idx;
    f32 c;

    idx = D_800EC2E0[omCurrentObj->objId].as_u32;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015E754_ovl3;
    D_800E9720[omCurrentObj->objId] = 0xA;
    if (idx >= 5) {
        D_800E6A10[omCurrentObj->objId] = -1.0f;
    } else {
        D_800E6A10[omCurrentObj->objId] = 1.0f;
    }
    D_800E0490[omCurrentObj->objId] = D_801967A4_ovl3[idx];
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2003C, 0x21, 0x10);
    p = D_80196764_ovl3[idx];
    s = sinf(p[0]) * 18.0f;
    c = cosf(p[0]) * 18.0f;
    D_800E64D0[omCurrentObj->objId] = s;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    if (s < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -s;
    } else {
        D_800E6850[omCurrentObj->objId] = s;
    }
    D_800E3210[omCurrentObj->objId] = c;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (c < 0.0f) {
        D_800E3C90[omCurrentObj->objId] = -c;
    } else {
        D_800E3C90[omCurrentObj->objId] = c;
    }
    *(f32 *) ((u8 *) D_800DFBD0[omCurrentObj->objId][1] + 0x30) = p[1];
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015E43C_ovl3.s")
#endif

extern char D_80190D4C_ovl3[];

void func_8015E754_ovl3(s32 arg0) {
    s32 temp;
    s32 cnt;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if ((D_800E6310[omCurrentObj->objId] == 0) && (D_800E83E0[omCurrentObj->objId] == 0)) {
        cnt = D_800E9720[omCurrentObj->objId]--;
        if (cnt != 0) {
            temp = func_8015550C_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4],
                                      D_801982F8_ovl3[omCurrentObj->objId - 4]);
            func_80162150_ovl3();
            if ((temp == 0) && (D_800E8920[omCurrentObj->objId] == 0)) {
                func_80162000_ovl3(D_80190D4C_ovl3, (s32) D_800DFBD0[omCurrentObj->objId][1], 1.0f);
                return;
            }
        }
    }
    play_sound(0x225);
    func_800A7F74(2, 1, 0x43, gEntitiesNextPosXArray[omCurrentObj->objId],
                  gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

/* The mul.s operand slot here is decided by the OPERAND KINDS, not by the
 * source order: with one operand a named local and the other a direct array
 * load, IDO emits `load, local` whichever way the source spells the product
 * (measured both ways, both 1/275). Writing the scale factor as an INLINE
 * ternary instead of through `v` flips it to the ROM's `local, load` slot --
 * that is the knob, and it is a different one from LEVERS entry 84. */
void func_8015E8E0_ovl3(s32 arg0) {
    extern f32 **D_80192EB8_ovl3;
    extern u8 D_8012E7C5[];
    s32 i;
    s32 sp50;
    s32 sp4C;
    f32 v;
    s32 pad[1];

    D_800EA6E0[omCurrentObj->objId] = 0.0f;
    D_800E9FE0[omCurrentObj->objId].as_s32 = 0;
    D_800E98E0[omCurrentObj->objId] = D_800E9AA0[omCurrentObj->objId].as_s32 =
        D_800E9C60[omCurrentObj->objId] = D_800E9FE0[omCurrentObj->objId].as_s32;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015ED2C_ovl3;
    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    D_800E8760[omCurrentObj->objId] = 0;
    D_800E0490[omCurrentObj->objId] = &D_80192EB8_ovl3;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    D_800E9E20[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId] =
        D_800E8920[D_800E0D50[omCurrentObj->objId]];
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    D_800E8060[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_8012E7C5[0x11] = 0x20;
    } else {
        D_8012E7C5[0x11] = 0x10;
    }
    gEntitiesScaleXArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    func_800A9864(0x2003B, 0x21, 0x10);
    D_800EA360[omCurrentObj->objId] = (s32) &sp4C;
    func_800A77E8(0x58, &sp4C, &sp50);
    D_800EA8A0[omCurrentObj->objId] = 0.0f;
    D_800E64D0[omCurrentObj->objId] =
        D_800E6A10[omCurrentObj->objId] * (((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f);
    v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
    if (v < 0) {
        v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
        D_800E6850[omCurrentObj->objId] = -v;
    } else {
        v = ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) ? 16.0f : 8.0f;
        D_800E6850[omCurrentObj->objId] = v;
    }
    func_801230E8(0x20283, 0x20284, 0);
    for (i = 0; i < 15; i++) {
        if (D_800E9AA0[omCurrentObj->objId].as_s32 != 0) {
            break;
        }
        ohSleep(1);
    }
    D_800E98E0[omCurrentObj->objId] = 1;
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 789/804 positional, and READ THE NEXT PARAGRAPH BEFORE COMPARING
   THAT TO THE 770/776 IT REPLACES.

   THE FRAME IS NOW EXACT (0xA8) AND IT WAS NOT BEFORE. Diff 0 used to be the
   stack adjustment, which by LEVERS 69/74 means no body edit could be scored
   at all; the first diff is now a register NAME at word 1. The positional
   number went UP because the draft is 27 words LONGER than the ROM and every
   word after the first insertion counts as wrong (LEVER 48). The 27 are one
   identified cause -- see WHAT IS LEFT -- not 27 separate defects.

   Fixed, re-derived from the listing 2026-08-25:
   1. `s32 id = omCurrentObj->objId;` (81 uses) and `s32 parent =
      D_800E0D50[id];` (6 uses), both spelled inline. The ROM reads
      D_800E0D50 exactly three times off objId, which is what CSE gives the
      six inline uses -- caching it is not the ROM's shape.
   2. The sound-pair release in the detonate tail has NO null check and no
      copy-out: `func_800A7870(p, p + 1)` on one load of D_800EA360[objId].
      That shim was 8 words and 2 address-taken locals, and taking their
      addresses is also what stopped IDO materialising `&omCurrentObj` into
      a register the way the ROM does at 0x8015ED30.
   3. Both `hAbs` locals are `ABSF()`. The listing shows the macro plainly
      (LEVER 73's tell): `c.lt.s $f0, $f6` against a materialised zero, a
      `bc1fl`, and THREE copies of the operand expression, one of them
      unreachable. `dyAbs` is `ABSF(Y[objId] - Y[parent])` -- the same shape
      with the subtraction folded into the compare, so the difference must
      NOT be named (LEVER 73 again); the two-step
      `d = a - b; if (d < 0) d = -d;` is 4 words short.
   4. Four declarations the ROM does not have, found by reading its slots:
      `t` (write `D_800E9560[objId]-- != 0`), `k` and its
      `for (k = 0; k < 4; k++)` (the ROM writes the four multiplies out), and
      `lim` -- the ROM holds `&D_801967C4_ovl3[close]` in $s4 and RE-READS the
      element at each of the four uses (LEVERS 10/11). Those four are exactly
      the 0xB8 -> 0xA8 the frame needed.
   Slot map read off the listing, for whoever finishes this: 0xA4 hits,
   0xA0 hdist, 0x9C dyAbs, 0x98 dz, 0x94 hy, 0x90 dx, 0x80 sn, 0x78 close,
   0x64-0x6F vb, 0x58-0x63 va, 0x4C-0x57 vc (so the declaration order of the
   three Vectors is vb, va, vc), and 0x38/0x3C are compiler temps for the two
   squares spilled across sqrtf.

   WHAT IS LEFT, and it is ONE cause worth about 27 words: every `goto
   detonate` gets the detonate block's head DUPLICATED into it -- ten words of
   `lui/lw omCurrentObj`, the D_800E9C60 base, the gKirbyState base and the
   index, then a `b` into the middle of the block -- where the ROM branches
   straight to .L8015F840 with a `nop` and re-materialises `&omCurrentObj`
   there. Three goto sites, three copies. An empty `do { } while (0);` at the
   label is NOT the fix (measured, no change). This is LEVER 46/59's family
   (IDO duplicating a shared head or tail into every predecessor) and the
   source shape that stops it is not yet known. Everything else in the aligned
   diff is a register name or a one-slot rotation. */

/* PORT: the guided-missile service routine installed by func_8015E8E0_ovl3
 * above (anim 0x2003B), from asm/nonmatchings/ovl3/plyshot/
 * func_8015ED2C_ovl3.s. Death phase: 8 frames of burst anim (D_80191A84 /
 * record D_80195270) then destroy. Live: grows the model on DObj [2] by
 * +0.15/frame, reads the cancel inputs (B press, or unk17/queued cancel in
 * D_800E8060), and while the ability holds runs its hit record
 * (D_801936F0), the shot collision pass and a wall bounce (reversing on
 * wall-class bits of the live collision flags with fgm 0x11F). It then
 * draws the guide reticle: aims DObj [1] at the parent, scales the
 * distance leg into D_80198438 with a pitch rotation of its last two
 * floats, and runs anim D_80191AC8 plus the reticle record D_8019370C.
 * With homing armed (D_800E98E0) and line-of-sight clear (func_8011D858;
 * on block: rumble 9/0x1E and detonate) it steers up to D_801967C4[close]
 * degrees per frame toward the parent at 16 (8 in water), bouncing off
 * floors once (D_800E9E20 latch) and ceilings once (D_800E9FE0 latch).
 * Detonation: mark the death phase, drop the ability, release the looping
 * pair parked in D_800EA360, clear the draw hook, camera-shake and spawn
 * particle 2/1/0x30 with fgm 0x59. */
void func_8015ED2C_ovl3(s32 arg0) {
    extern u8 D_8012BCA0[];
    extern char D_80191A84_ovl3[];
    extern char D_80190DD4_ovl3[];
    extern char D_80191AC8_ovl3[];
    extern s32 D_80192358_ovl3[];
    extern s32 D_801936F0_ovl3[];
    extern s32 D_8019370C_ovl3[];
    extern s32 D_80195270_ovl3[];
    extern f32 D_801936FC_ovl3[];
    extern f32 D_801967C4_ovl3[];
    extern f32 D_80198438_ovl3[];
    extern Controller_800D6FE8 gPlayerControllers[];
    s32 hits;
    f32 dyAbs;
    f32 hdist;
    f32 hy;

    if (D_800E9C60[omCurrentObj->objId] != 0) {
        if (D_800E9560[omCurrentObj->objId]-- != 0) {
            func_80111C4C(func_801117BC(D_80191A84_ovl3, omCurrentObj->objId));
            func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4], (s32) (uintptr_t) D_80195270_ovl3, 0, omCurrentObj->objId);
            return;
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    if (D_800EA6E0[omCurrentObj->objId] != 1.0f) {
        D_800EA6E0[omCurrentObj->objId] += 0.15f;
        if (D_800EA6E0[omCurrentObj->objId] >= 1.0f) {
            D_800EA6E0[omCurrentObj->objId] = 1.0f;
        }
        D_800DFBD0[omCurrentObj->objId][2]->scale.v.x = D_800EA6E0[omCurrentObj->objId];
        D_800DFBD0[omCurrentObj->objId][2]->scale.v.y = D_800EA6E0[omCurrentObj->objId];
        D_800DFBD0[omCurrentObj->objId][2]->scale.v.z = D_800EA6E0[omCurrentObj->objId];
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.abilityInUse = 0;
    } else if (gKirbyState.unk16 == 0) {
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            gKirbyState.abilityInUse = 0;
        } else if (D_800E8060[omCurrentObj->objId] != 0) {
            gKirbyState.abilityInUse = 0;
        }
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        D_800E8060[omCurrentObj->objId] = 1;
    }
    if ((gKirbyState.abilityInUse != 0) && (D_800E8760[omCurrentObj->objId] == 0)) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
        hits = func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4], (s32) (uintptr_t) D_801936F0_ovl3, 0, omCurrentObj->objId);
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
        D_800E8920[omCurrentObj->objId] = 0;
        func_80155498_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
        if ((((u32) hits | ((*(u32 *) D_8012BCA0 >> 0x13) & 0x3F)) != 0) || (D_800E6310[omCurrentObj->objId] != 0)) {
            D_800E9AA0[omCurrentObj->objId].as_u32 = 1;
            D_800E64D0[omCurrentObj->objId] = -D_800E64D0[omCurrentObj->objId];
            play_sound(0x11F);
        }
        func_80111C4C(func_801117BC(D_80190DD4_ovl3, omCurrentObj->objId));
        dyAbs = ABSF(gEntitiesNextPosYArray[omCurrentObj->objId]
                     - gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]]);
        hdist = func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]);
        if (hdist == 9999.0f) {
            goto detonate;
        }
        if (!((ABSF(hdist) < 600.0f) && (dyAbs < 480.0f))) {
            goto detonate;
        }
        {
            struct DObj *dobj = D_800DFBD0[omCurrentObj->objId][1];
            f32 dx = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]] - gEntitiesNextPosXArray[omCurrentObj->objId];
            f32 dz = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]] - gEntitiesNextPosZArray[omCurrentObj->objId];
            f32 sn;
            f32 cs;
            f32 v2;
            f32 v3;

            hy = (gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 20.0f) - gEntitiesNextPosYArray[omCurrentObj->objId];
            dobj->angle.v.y = atan2f(dx, dz) + 3.1415927f;
            dobj->angle.v.x = atan2f(hy, sqrtf((dx * dx) + (dz * dz)));
            dobj->angle.v.z = 0.0f;
            dobj->scale.v.z = (sqrtf((dx * dx) + (hy * hy) + (dz * dz)) - 18.0f) / 120.0f;
            func_8016854C_ovl3((s32) (uintptr_t) D_80191AC8_ovl3, (s32) (uintptr_t) dobj, 1.0f);
            sn = sinf(dobj->angle.v.x);
            cs = cosf(dobj->angle.v.x);
            D_80198438_ovl3[0] = D_801936FC_ovl3[0] * dobj->scale.v.z;
            D_80198438_ovl3[1] = D_801936FC_ovl3[1] * dobj->scale.v.z;
            D_80198438_ovl3[2] = D_801936FC_ovl3[2] * dobj->scale.v.z;
            D_80198438_ovl3[3] = D_801936FC_ovl3[3] * dobj->scale.v.z;
            v2 = D_80198438_ovl3[2];
            v3 = D_80198438_ovl3[3];
            D_80198438_ovl3[2] = (v2 * cs) - (v3 * sn);
            D_80198438_ovl3[3] = (v3 * cs) + (v2 * sn);
            func_80154578_ovl3(D_8019370C_ovl3, 0, dobj->angle.v.y);
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            Vector va;
            Vector vb;
            Vector vc;
            f32 ang;
            f32 dir;
            f32 spd;
            s32 close;

            if (func_8011D858(D_80192358_ovl3, D_800E0D50[omCurrentObj->objId], 1.0f) != 0) {
                func_800BB468(9, 0x1E);
                goto detonate;
            }
            close = (ABSF(hdist) < 160.0f) ? 1 : 0;
            va.x = D_800E64D0[omCurrentObj->objId];
            va.y = D_800E3210[omCurrentObj->objId];
            va.z = 0.0f;
            vb.x = hdist;
            vb.y = hy;
            vb.z = 0.0f;
            ang = lbvector_Angle(&va, &vb);
            if (ang == 3.1415927f) {
                if (D_800E64D0[omCurrentObj->objId] > 0.0f) {
                    dir = (D_801967C4_ovl3[close] * 3.1415927f) / 180.0f;
                } else {
                    dir = 3.1415927f - ((D_801967C4_ovl3[close] * 3.1415927f) / 180.0f);
                }
            } else {
                if (ang < ((D_801967C4_ovl3[close] * 3.1415927f) / 180.0f)) {
                    va = vb;
                } else {
                    vec3_normalized_cross_product(&va, &vb, &vc);
                    func_800191F8(&va, &vc, (D_801967C4_ovl3[close] * 3.1415927f) / 180.0f);
                }
                dir = atan2f(va.y, va.x);
            }
            spd = (D_800E8AE0[omCurrentObj->objId] & 4) ? 8.0f : 16.0f;
            D_800E64D0[omCurrentObj->objId] = cosf(dir) * spd;
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
            D_800E3210[omCurrentObj->objId] = sinf(dir) * spd;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3C90[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
            if (D_800E8920[omCurrentObj->objId] != 0) {
                if (D_800E9E20[omCurrentObj->objId] == 0) {
                    D_800E9E20[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId];
                    if (D_800E3210[omCurrentObj->objId] != 0.0f) {
                        if (D_800E3210[omCurrentObj->objId] < 0.0f) {
                            D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
                        } else {
                            D_800E3210[omCurrentObj->objId] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E8920[omCurrentObj->objId] = 0;
                    }
                }
            } else {
                if ((*(u32 *) D_8012BCA0 >> 0x13) & 0x1C0) {
                    if (D_800E9FE0[omCurrentObj->objId].as_u32 == 0) {
                        D_800E9FE0[omCurrentObj->objId].as_u32 = 1;
                        if (D_800E3210[omCurrentObj->objId] > 0.0f) {
                            D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId];
                        } else {
                            D_800E3210[omCurrentObj->objId] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E9E20[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId];
                    }
                } else {
                    D_800E9FE0[omCurrentObj->objId].as_u32 = 0;
                    D_800E9E20[omCurrentObj->objId] = D_800E8920[omCurrentObj->objId];
                }
            }
        }
        return;
    }
detonate:
    D_800E9C60[omCurrentObj->objId] = 1;
    D_800E9560[omCurrentObj->objId] = 8;
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    gKirbyState.abilityInUse = 0;
    {
        void **pair = (void **) D_800EA360[omCurrentObj->objId];

        func_800A7870(pair, (u16 *) (pair + 1));
    }
    D_800DEF90[omCurrentObj->objId] = NULL;
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x59);
    func_800A7F74(2U, 1U, 0x30U, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId],
                  gEntitiesNextPosZArray[omCurrentObj->objId]);
}
#elif defined(PORT)
/* PORT: the guided-missile service routine installed by func_8015E8E0_ovl3
 * above (anim 0x2003B), from asm/nonmatchings/ovl3/plyshot/
 * func_8015ED2C_ovl3.s. Death phase: 8 frames of burst anim (D_80191A84 /
 * record D_80195270) then destroy. Live: grows the model on DObj [2] by
 * +0.15/frame, reads the cancel inputs (B press, or unk17/queued cancel in
 * D_800E8060), and while the ability holds runs its hit record
 * (D_801936F0), the shot collision pass and a wall bounce (reversing on
 * wall-class bits of the live collision flags with fgm 0x11F). It then
 * draws the guide reticle: aims DObj [1] at the parent, scales the
 * distance leg into D_80198438 with a pitch rotation of its last two
 * floats, and runs anim D_80191AC8 plus the reticle record D_8019370C.
 * With homing armed (D_800E98E0) and line-of-sight clear (func_8011D858;
 * on block: rumble 9/0x1E and detonate) it steers up to D_801967C4[close]
 * degrees per frame toward the parent at 16 (8 in water), bouncing off
 * floors once (D_800E9E20 latch) and ceilings once (D_800E9FE0 latch).
 * Detonation: mark the death phase, drop the ability, release the looping
 * pair parked in D_800EA360, clear the draw hook, camera-shake and spawn
 * particle 2/1/0x30 with fgm 0x59. */
void func_8015ED2C_ovl3(s32 arg0) {
    extern u8 D_8012BCA0[];
    extern char D_80191A84_ovl3[];
    extern char D_80190DD4_ovl3[];
    extern char D_80191AC8_ovl3[];
    extern s32 D_80192358_ovl3[];
    extern s32 D_801936F0_ovl3[];
    extern s32 D_8019370C_ovl3[];
    extern s32 D_80195270_ovl3[];
    extern f32 D_801936FC_ovl3[];
    extern f32 D_801967C4_ovl3[];
    extern f32 D_80198438_ovl3[];
    extern Controller_800D6FE8 gPlayerControllers[];
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 hits;
    f32 dyAbs;
    f32 hdist;
    f32 hy;

    if (D_800E9C60[id] != 0) {
        s32 t = D_800E9560[id];

        D_800E9560[id] = t - 1;
        if (t != 0) {
            func_80111C4C(func_801117BC(D_80191A84_ovl3, id));
            func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80195270_ovl3, 0, id);
            return;
        }
        func_800B1900((u16) id);
        return;
    }
    if (D_800EA6E0[id] != 1.0f) {
        D_800EA6E0[id] += 0.15f;
        if (D_800EA6E0[id] >= 1.0f) {
            D_800EA6E0[id] = 1.0f;
        }
        D_800DFBD0[id][2]->scale.v.x = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.y = D_800EA6E0[id];
        D_800DFBD0[id][2]->scale.v.z = D_800EA6E0[id];
    }
    if (gKirbyState.unk17 != 0) {
        gKirbyState.abilityInUse = 0;
    } else if (gKirbyState.unk16 == 0) {
        if (gPlayerControllers[0].buttonPressed & 0x4000) {
            gKirbyState.abilityInUse = 0;
        } else if (D_800E8060[id] != 0) {
            gKirbyState.abilityInUse = 0;
        }
    } else if (gPlayerControllers[0].buttonPressed & 0x4000) {
        D_800E8060[id] = 1;
    }
    if ((gKirbyState.abilityInUse != 0) && (D_800E8760[id] == 0)) {
        gEntitiesAngleYArray[id] = D_800E17D0[id];
        hits = func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_801936F0_ovl3, 0, id);
        gEntitiesAngleYArray[id] = 0.0f;
        D_800E8920[id] = 0;
        func_80155498_ovl3(D_80197F60_ovl3[id - 4]);
        if ((((u32) hits | ((*(u32 *) D_8012BCA0 >> 0x13) & 0x3F)) != 0) || (D_800E6310[id] != 0)) {
            D_800E9AA0[id].as_u32 = 1;
            D_800E64D0[id] = -D_800E64D0[id];
            play_sound(0x11F);
        }
        func_80111C4C(func_801117BC(D_80190DD4_ovl3, id));
        dyAbs = gEntitiesNextPosYArray[id] - gEntitiesNextPosYArray[parent];
        if (dyAbs < 0.0f) {
            dyAbs = -dyAbs;
        }
        hdist = func_800F9828(id, parent);
        if (hdist == 9999.0f) {
            goto detonate;
        }
        {
            f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

            if (!((hAbs < 600.0f) && (dyAbs < 480.0f))) {
                goto detonate;
            }
        }
        {
            struct DObj *dobj = D_800DFBD0[id][1];
            f32 dx = gEntitiesNextPosXArray[parent] - gEntitiesNextPosXArray[id];
            f32 dz = gEntitiesNextPosZArray[parent] - gEntitiesNextPosZArray[id];
            f32 sn;
            f32 cs;
            f32 v2;
            f32 v3;
            s32 k;

            hy = (gEntitiesNextPosYArray[parent] + 20.0f) - gEntitiesNextPosYArray[id];
            dobj->angle.v.y = atan2f(dx, dz) + 3.1415927f;
            dobj->angle.v.x = atan2f(hy, sqrtf((dx * dx) + (dz * dz)));
            dobj->angle.v.z = 0.0f;
            dobj->scale.v.z = (sqrtf((dx * dx) + (hy * hy) + (dz * dz)) - 18.0f) / 120.0f;
            func_8016854C_ovl3((s32) (uintptr_t) D_80191AC8_ovl3, (s32) (uintptr_t) dobj, 1.0f);
            sn = sinf(dobj->angle.v.x);
            cs = cosf(dobj->angle.v.x);
            for (k = 0; k < 4; k++) {
                D_80198438_ovl3[k] = D_801936FC_ovl3[k] * dobj->scale.v.z;
            }
            v2 = D_80198438_ovl3[2];
            v3 = D_80198438_ovl3[3];
            D_80198438_ovl3[2] = (v2 * cs) - (v3 * sn);
            D_80198438_ovl3[3] = (v3 * cs) + (v2 * sn);
            func_80154578_ovl3(D_8019370C_ovl3, 0, dobj->angle.v.y);
        }
        if (D_800E98E0[id] != 0) {
            Vector va;
            Vector vb;
            Vector vc;
            f32 ang;
            f32 dir;
            f32 lim;
            f32 spd;
            s32 close;

            if (func_8011D858(D_80192358_ovl3, parent, 1.0f) != 0) {
                func_800BB468(9, 0x1E);
                goto detonate;
            }
            {
                f32 hAbs = (hdist < 0.0f) ? -hdist : hdist;

                close = (hAbs < 160.0f) ? 1 : 0;
            }
            va.x = D_800E64D0[id];
            va.y = D_800E3210[id];
            va.z = 0.0f;
            vb.x = hdist;
            vb.y = hy;
            vb.z = 0.0f;
            ang = lbvector_Angle(&va, &vb);
            lim = D_801967C4_ovl3[close];
            if (ang == 3.1415927f) {
                if (D_800E64D0[id] > 0.0f) {
                    dir = (lim * 3.1415927f) / 180.0f;
                } else {
                    dir = 3.1415927f - ((lim * 3.1415927f) / 180.0f);
                }
            } else {
                if (ang < ((lim * 3.1415927f) / 180.0f)) {
                    va = vb;
                } else {
                    vec3_normalized_cross_product(&va, &vb, &vc);
                    func_800191F8(&va, &vc, (lim * 3.1415927f) / 180.0f);
                }
                dir = atan2f(va.y, va.x);
            }
            spd = (D_800E8AE0[id] & 4) ? 8.0f : 16.0f;
            D_800E64D0[id] = cosf(dir) * spd;
            D_800E6690[id] = 0.0f;
            D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
            D_800E3210[id] = sinf(dir) * spd;
            D_800E3750[id] = 0.0f;
            D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
            if (D_800E8920[id] != 0) {
                if (D_800E9E20[id] == 0) {
                    D_800E9E20[id] = D_800E8920[id];
                    if (D_800E3210[id] != 0.0f) {
                        if (D_800E3210[id] < 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E8920[id] = 0;
                    }
                }
            } else {
                if ((*(u32 *) D_8012BCA0 >> 0x13) & 0x1C0) {
                    if (D_800E9FE0[id].as_u32 == 0) {
                        D_800E9FE0[id].as_u32 = 1;
                        if (D_800E3210[id] > 0.0f) {
                            D_800E3210[id] = -D_800E3210[id];
                        } else {
                            D_800E3210[id] = 0.0f;
                        }
                        play_sound(0x11F);
                        D_800E9E20[id] = D_800E8920[id];
                    }
                } else {
                    D_800E9FE0[id].as_u32 = 0;
                    D_800E9E20[id] = D_800E8920[id];
                }
            }
        }
        return;
    }
detonate:
    D_800E9C60[id] = 1;
    D_800E9560[id] = 8;
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    gKirbyState.abilityInUse = 0;
    pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    D_800DEF90[id] = NULL;
    func_800AFBB4(0, omCurrentObj);
    play_sound(0x59);
    func_800A7F74(2U, 1U, 0x30U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                  gEntitiesNextPosZArray[id]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015ED2C_ovl3.s")
#endif

typedef struct Unk801967CC {
    f32 unk0;
    f32 unk4;
} Unk801967CC;

typedef struct Unk80198538 {
    s32 unk0;
    s32 unk4;
} Unk80198538;

/* D_801970B4_ovl3 now emitted by this TU */

void func_8015F950_ovl3(s32 arg0) {
    extern Unk801967CC D_801967CC_ovl3[];
    extern Unk80198538 D_80198538_ovl3;
    extern Unk80198830 D_80198830_ovl3;
    extern f32 **D_80192E80_ovl3;
    extern f32 D_800D7238;
    Unk80198538 sp30;
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, D_801967CC_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32].unk0,
                       D_801967CC_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32].unk4);
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_8015FD58_ovl3;
    D_800E6A10[omCurrentObj->objId] = 1.0f;
    D_800E0490[omCurrentObj->objId] = &D_80192E80_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    D_800E83E0[omCurrentObj->objId] = 0;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003D, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x1E;
    D_800E9560[omCurrentObj->objId] = 0;
    if ((D_800E8AE0[omCurrentObj->objId] & 4) == 0) {
        D_800D7238 = 15.0f;
    } else {
        D_800D7238 = 7.5f;
    }
    D_800E64D0[omCurrentObj->objId] = cosf(D_800EC660[omCurrentObj->objId]) * D_800D7238;
    D_800E6690[omCurrentObj->objId] = 0.0f;
    if (D_800D7238 < 0) {
        D_800E6850[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E6850[omCurrentObj->objId] = D_800D7238;
    }
    D_800E3210[omCurrentObj->objId] = sinf(D_800EC660[omCurrentObj->objId]) * D_800D7238;
    D_800E3750[omCurrentObj->objId] = 0.0f;
    if (D_800D7238 < 0) {
        D_800E3C90[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E3C90[omCurrentObj->objId] = D_800D7238;
    }
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 2;
    } else {
        D_800E9AA0[omCurrentObj->objId].as_s32 = 0;
    }
    if (D_80198830_ovl3.unkC++ == 0) {
        func_800A77E8(0x1E, &D_80198538_ovl3.unk0, &D_80198538_ovl3.unk4);
    }
    D_800EA360[omCurrentObj->objId] = (s32) &sp30;
    sp30 = D_80198538_ovl3;
    func_800AA018(0x20285);
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 388/391 [was noted 3/391], whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 388 of 391 words differ (99%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand. */

/* PORT: service routine for func_8015F950_ovl3's shot above (anim 0x2003D),
 * from asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s. Kind 0 first
 * runs its own hit record (D_80193728) and detonates on contact, then arms
 * itself (kind := -1). While armed it drains the trail-puff counter in
 * D_800E9AA0 (re-aiming anim script D_80190D90 at DObj [1] each time),
 * flies until wall hit / catch / fuse-out, and each frame runs the contact
 * sweep plus the water tracker; once the launch grace in D_800E9560 runs
 * out it steers up to 5 degrees a frame toward the carry target in
 * D_800E1ED0[id-112] at 15 (7.5 in water), pitching the model along its
 * velocity. On burst it plays fgm 0xE with hit-spark 0, and the last shot
 * out (shared counter D_80198830_ovl3.unkC) releases the shared looping
 * sound pair copied into the init's frame. */
void func_8015FD58_ovl3(s32 arg0) {
    extern char D_80190D90_ovl3[];
    extern s32 D_80193728_ovl3[];
    extern Unk80198830 D_80198830_ovl3;
    struct PcShotAnimCmd {
        u8 pad0[4];
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
    };
    struct PcShotAnimHdr {
        u8 pad0[0x1C];
        s32 unk1C;
        struct PcShotAnimCmd *unk20;
    };
    s32 id = omCurrentObj->objId;
    s32 impact = 0;

    if (func_800B3158() != 0) {
        u32 kind = D_800EC2E0[id].as_u32;

        if (kind != 0xFFFFFFFFU) {
            s32 hit = 0;

            if (kind == 0) {
                /* The PC func_80155D50_ovl3 is declared void at its
                 * definition but ends in the func_8011BF4C call, so its
                 * hit count comes back exactly as the N64 tail call did
                 * (verified against the generated code). */
                hit = func_80155D50_ovl3(D_801982F8_ovl3[id - 4],
                                         (s32) (uintptr_t) D_80193728_ovl3, 0, id);
            }
            if ((kind == 0) && (hit != 0)) {
                impact = 1;
            } else {
                D_800EC2E0[id].as_u32 = 0xFFFFFFFFU;
            }
        }
        if (impact == 0) {
            if (D_800E9AA0[id].as_u32 != 0) {
                struct PcShotAnimHdr *hdr =
                    (struct PcShotAnimHdr *) (uintptr_t) (u32) func_801117BC(D_80190D90_ovl3, id);

                hdr->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[id][1];
                func_80111C4C((s32) (uintptr_t) hdr);
                D_800E9AA0[id].as_u32 -= 1;
            }
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            impact = 1;
            if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)) {
                s32 fuse = D_800E9720[id];

                D_800E9720[id] = fuse - 1;
                if ((fuse != 0)
                    && (func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)) {
                    func_80162150_ovl3();
                    if (D_800E8920[id] == 0) {
                        if (D_800E9560[id] != 0) {
                            D_800E9560[id] -= 1;
                        } else {
                            s32 target = D_800E1ED0[id - 112];

                            if (target != 0) {
                                if (D_800DD710[target] != -1) {
                                    Vector va;
                                    Vector vb;
                                    f32 ang;
                                    f32 dir;
                                    f32 spd;

                                    vb.x = func_800F9828(id, target);
                                    vb.y = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                                    vb.z = 0.0f;
                                    va.x = D_800E64D0[id];
                                    va.y = D_800E3210[id];
                                    va.z = 0.0f;
                                    ang = lbvector_Angle(&va, &vb);
                                    if (ang == 3.1415927f) {
                                        dir = (D_800E64D0[id] > 0.0f) ? 0.08726647f : 2.6790805f;
                                    } else {
                                        if (ang < 0.08726647f) {
                                            va = vb;
                                        } else {
                                            Vector vc;

                                            vec3_normalized_cross_product(&va, &vb, &vc);
                                            func_800191F8(&va, &vc, 0.08726647f);
                                        }
                                        dir = atan2f(va.y, va.x);
                                    }
                                    D_800E9560[id] = 0;
                                    spd = (D_800E8AE0[id] & 4) ? 7.5f : 15.0f;
                                    D_800E64D0[id] = cosf(dir) * spd;
                                    D_800E6690[id] = 0.0f;
                                    D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                                    D_800E3210[id] = sinf(dir) * spd;
                                    D_800E3750[id] = 0.0f;
                                    D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
                                } else {
                                    D_800E1ED0[id - 112] = 0;
                                }
                            }
                        }
                        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], D_800E64D0[id]);
                        func_80111C4C(func_801117BC(D_80190D90_ovl3, id));
                        return;
                    }
                }
            }
        }
        play_sound(0xE);
        func_800FD754(0, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    D_80198830_ovl3.unkC -= 1;
    if (D_80198830_ovl3.unkC == 0) {
        pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_8015F950_ovl3's shot above (anim 0x2003D),
 * from asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s. Kind 0 first
 * runs its own hit record (D_80193728) and detonates on contact, then arms
 * itself (kind := -1). While armed it drains the trail-puff counter in
 * D_800E9AA0 (re-aiming anim script D_80190D90 at DObj [1] each time),
 * flies until wall hit / catch / fuse-out, and each frame runs the contact
 * sweep plus the water tracker; once the launch grace in D_800E9560 runs
 * out it steers up to 5 degrees a frame toward the carry target in
 * D_800E1ED0[id-112] at 15 (7.5 in water), pitching the model along its
 * velocity. On burst it plays fgm 0xE with hit-spark 0, and the last shot
 * out (shared counter D_80198830_ovl3.unkC) releases the shared looping
 * sound pair copied into the init's frame. */
void func_8015FD58_ovl3(s32 arg0) {
    extern char D_80190D90_ovl3[];
    extern s32 D_80193728_ovl3[];
    extern Unk80198830 D_80198830_ovl3;
    struct PcShotAnimCmd {
        u8 pad0[4];
        u8 unk4;
        u8 pad5[3];
        s32 unk8;
    };
    struct PcShotAnimHdr {
        u8 pad0[0x1C];
        s32 unk1C;
        struct PcShotAnimCmd *unk20;
    };
    s32 id = omCurrentObj->objId;
    s32 impact = 0;

    if (func_800B3158() != 0) {
        u32 kind = D_800EC2E0[id].as_u32;

        if (kind != 0xFFFFFFFFU) {
            s32 hit = 0;

            if (kind == 0) {
                /* The PC func_80155D50_ovl3 is declared void at its
                 * definition but ends in the func_8011BF4C call, so its
                 * hit count comes back exactly as the N64 tail call did
                 * (verified against the generated code). */
                hit = func_80155D50_ovl3(D_801982F8_ovl3[id - 4],
                                         (s32) (uintptr_t) D_80193728_ovl3, 0, id);
            }
            if ((kind == 0) && (hit != 0)) {
                impact = 1;
            } else {
                D_800EC2E0[id].as_u32 = 0xFFFFFFFFU;
            }
        }
        if (impact == 0) {
            if (D_800E9AA0[id].as_u32 != 0) {
                struct PcShotAnimHdr *hdr =
                    (struct PcShotAnimHdr *) (uintptr_t) (u32) func_801117BC(D_80190D90_ovl3, id);

                hdr->unk20->unk8 = (s32) (uintptr_t) D_800DFBD0[id][1];
                func_80111C4C((s32) (uintptr_t) hdr);
                D_800E9AA0[id].as_u32 -= 1;
            }
            gEntitiesAngleYArray[id] = D_800E17D0[id];
            impact = 1;
            if ((D_800E6310[id] == 0) && (D_800E83E0[id] == 0)) {
                s32 fuse = D_800E9720[id];

                D_800E9720[id] = fuse - 1;
                if ((fuse != 0)
                    && (func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]) == 0)) {
                    func_80162150_ovl3();
                    if (D_800E8920[id] == 0) {
                        if (D_800E9560[id] != 0) {
                            D_800E9560[id] -= 1;
                        } else {
                            s32 target = D_800E1ED0[id - 112];

                            if (target != 0) {
                                if (D_800DD710[target] != -1) {
                                    Vector va;
                                    Vector vb;
                                    f32 ang;
                                    f32 dir;
                                    f32 spd;

                                    vb.x = func_800F9828(id, target);
                                    vb.y = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                                    vb.z = 0.0f;
                                    va.x = D_800E64D0[id];
                                    va.y = D_800E3210[id];
                                    va.z = 0.0f;
                                    ang = lbvector_Angle(&va, &vb);
                                    if (ang == 3.1415927f) {
                                        dir = (D_800E64D0[id] > 0.0f) ? 0.08726647f : 2.6790805f;
                                    } else {
                                        if (ang < 0.08726647f) {
                                            va = vb;
                                        } else {
                                            Vector vc;

                                            vec3_normalized_cross_product(&va, &vb, &vc);
                                            func_800191F8(&va, &vc, 0.08726647f);
                                        }
                                        dir = atan2f(va.y, va.x);
                                    }
                                    D_800E9560[id] = 0;
                                    spd = (D_800E8AE0[id] & 4) ? 7.5f : 15.0f;
                                    D_800E64D0[id] = cosf(dir) * spd;
                                    D_800E6690[id] = 0.0f;
                                    D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
                                    D_800E3210[id] = sinf(dir) * spd;
                                    D_800E3750[id] = 0.0f;
                                    D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
                                } else {
                                    D_800E1ED0[id - 112] = 0;
                                }
                            }
                        }
                        gEntitiesAngleXArray[id] = -atan2f(D_800E3210[id], D_800E64D0[id]);
                        func_80111C4C(func_801117BC(D_80190D90_ovl3, id));
                        return;
                    }
                }
            }
        }
        play_sound(0xE);
        func_800FD754(0, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
    }
    D_80198830_ovl3.unkC -= 1;
    if (D_80198830_ovl3.unkC == 0) {
        pc_sndpair_release((void *) (uintptr_t) (u32) D_800EA360[id]);
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_8015FD58_ovl3.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 87/202, one-slot temp rotation.
   Structure, opcodes, constants and scheduling are all exact from insn 0; the
   whole temp file is shifted one slot down from insn [18] onward ($t0->$t1,
   $t2->$t3, ...) and objId lands in $a3 rather than $v0 at [37]. No opcode,
   no immediate and no branch differs. Seeded from the matched family exemplar
   func_8015ADF8_ovl3 in this TU.
   Swept: block-scope vs file-scope externs for D_80192F10_ovl3 / D_800D7238 /
   func_801606A0_ovl3 (identical residue both ways). */
extern f32 **D_80192F10_ovl3;
extern f32 D_800D7238;
void func_801606A0_ovl3(struct GObj *);

void func_80160378_ovl3(s32 arg0) {
    f32 temp;

    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(D_800E1ED0[omCurrentObj->objId - 112], 20.0f, 0.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B4954;
    D_800DF150[omCurrentObj->objId] = func_801606A0_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192F10_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    gEntitiesAngleXArray[omCurrentObj->objId] = 3.14159274f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003E, 0x21, 0x10);
    D_800EA520[omCurrentObj->objId] = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][1]);
    D_800EB4E0[omCurrentObj->objId] = func_800A8100(1, 1, 0x14, D_800DFBD0[omCurrentObj->objId][2]);
    D_800EA8A0[omCurrentObj->objId] = 1.0f;
    D_800EA6E0[omCurrentObj->objId] = D_800EA8A0[omCurrentObj->objId];
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800E9720[omCurrentObj->objId] = 0x14;
    } else {
        D_800E9720[omCurrentObj->objId] = 0x1E;
    }
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        D_800D7238 = 6.0f;
    } else {
        D_800D7238 = 12.0f;
    }
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * D_800D7238;
    if (D_800D7238 < 0.0f) {
        D_800E6850[omCurrentObj->objId] = -D_800D7238;
    } else {
        D_800E6850[omCurrentObj->objId] = D_800D7238;
    }
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80160378_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 233/235, RE-MEASURED -- the prior "2/235" note was stale/wrong;
 * verify.py shows total mismatch from insn [0]. Same id-caching floor
 * confirmed across this whole cluster (func_80152348_ovl3/
 * func_801530BC_ovl3/func_80153B98_ovl3 in ovl3_1.c, func_80161058_ovl3/
 * func_80162150_ovl3 above in this file): the ROM holds `&omCurrentObj`
 * itself (not the pointer, not objId) in a saved reg ($s0) across long
 * call-free stretches and re-derives `lw v0,0(s0); lw t,0(v0); sll 2` at
 * every field access, then REPURPOSES s0 mid-function to a different base
 * (&D_800EA6E0) once the objId-indexed section ends, falling back to a
 * fresh `lui/lw omCurrentObj` for the tail. This draft's `s32 id =
 * omCurrentObj->objId` hoist bakes id into one register for the whole
 * function instead. Frame -0x48 (ROM, s0 saved) vs -0x38 (draft, no saved
 * regs). Not attempted here -- reproducing IDO's specific choice of what
 * to hold in s0 and when to drop it is a floor per LEVERS.md, not a
 * source-level nudge. Leaving guarded. */
/* PORT: service routine for func_80160378_ovl3's dropped bomb above (anim
 * 0x2003E), from asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s. On
 * ability end it releases the looping sound (handle parked in D_800E98E0
 * with its id in D_800E9AA0) and both attached effects and dies; on wall
 * hit or timeout it does the same release then shrinks away on the
 * D_800EA6E0/D_800EA8A0 scale decay; while live it counts the fuse down,
 * runs the contact sweep, freezes the fuse on a floor hit, and otherwise
 * plays anim script D_80190E3C_ovl3 on DObj [1]. */
void func_801606A0_ovl3(struct GObj *arg0) {
    extern char D_80190E3C_ovl3[];
    s32 id = omCurrentObj->objId;
    void *h;
    u16 sid;

    if (func_800B3158() == 0) {
        h = (void *) (uintptr_t) (u32) D_800E98E0[id];
        sid = (u16) D_800E9AA0[id].as_u32;
        func_800A7870(&h, &sid);
        func_800A1F30(D_800EA520[id]);
        func_800A1F30(D_800EB4E0[id]);
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E6310[id] != 0) || (D_800E9720[id] == 0)) {
        if (D_800EA520[id] != 0) {
            h = (void *) (uintptr_t) (u32) D_800E98E0[id];
            sid = (u16) D_800E9AA0[id].as_u32;
            func_800A7870(&h, &sid);
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        gEntitiesScaleXArray[id] = gEntitiesScaleZArray[id];
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E9720[id] != 0) {
        D_800E9720[id] -= 1;
    }
    func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    if (D_800E8920[id] != 0) {
        D_800E9720[id] = 0;
        return;
    }
    func_80162000_ovl3(D_80190E3C_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
}
#elif defined(PORT)
/* PORT: service routine for func_80160378_ovl3's dropped bomb above (anim
 * 0x2003E), from asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s. On
 * ability end it releases the looping sound (handle parked in D_800E98E0
 * with its id in D_800E9AA0) and both attached effects and dies; on wall
 * hit or timeout it does the same release then shrinks away on the
 * D_800EA6E0/D_800EA8A0 scale decay; while live it counts the fuse down,
 * runs the contact sweep, freezes the fuse on a floor hit, and otherwise
 * plays anim script D_80190E3C_ovl3 on DObj [1]. */
void func_801606A0_ovl3(struct GObj *arg0) {
    extern char D_80190E3C_ovl3[];
    s32 id = omCurrentObj->objId;
    void *h;
    u16 sid;

    if (func_800B3158() == 0) {
        h = (void *) (uintptr_t) (u32) D_800E98E0[id];
        sid = (u16) D_800E9AA0[id].as_u32;
        func_800A7870(&h, &sid);
        func_800A1F30(D_800EA520[id]);
        func_800A1F30(D_800EB4E0[id]);
        func_800B1900((u16) id);
        return;
    }
    if ((D_800E6310[id] != 0) || (D_800E9720[id] == 0)) {
        if (D_800EA520[id] != 0) {
            h = (void *) (uintptr_t) (u32) D_800E98E0[id];
            sid = (u16) D_800E9AA0[id].as_u32;
            func_800A7870(&h, &sid);
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
            D_800E6690[id] = 0.0f;
            D_800E64D0[id] = D_800E6690[id];
            D_800E6850[id] = 65535.0f;
        }
        D_800EA6E0[id] -= 0.125f;
        if (D_800EA6E0[id] == 0.0f) {
            func_800B1900((u16) id);
        }
        D_800EA8A0[id] -= 0.07f;
        gEntitiesScaleYArray[id] = D_800EA6E0[id] * 0.2f;
        gEntitiesScaleZArray[id] = D_800EA8A0[id] * 0.2f;
        gEntitiesScaleXArray[id] = gEntitiesScaleZArray[id];
        return;
    }
    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (D_800E9720[id] != 0) {
        D_800E9720[id] -= 1;
    }
    func_801555B0_ovl3(D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    if (D_800E8920[id] != 0) {
        D_800E9720[id] = 0;
        return;
    }
    func_80162000_ovl3(D_80190E3C_ovl3, (s32) (uintptr_t) D_800DFBD0[id][1], 1.0f);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801606A0_ovl3.s")
#endif

void func_80160A50_ovl3(s32 arg0) {
    extern f32 **D_80192F2C_ovl3;
    f32 temp;

    D_800E98E0[omCurrentObj->objId] = 0;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[omCurrentObj->objId] = func_800B49F8;
    D_800DF150[omCurrentObj->objId] = func_80160D84_ovl3;
    D_800E0490[omCurrentObj->objId] = &D_80192F2C_ovl3;
    func_80154648_ovl3(D_800E0D50[omCurrentObj->objId], D_80197F60_ovl3[omCurrentObj->objId - 4],
                       D_801982F8_ovl3[omCurrentObj->objId - 4]);
    temp = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2003F, 0x21, 0x10);
    D_800E9720[omCurrentObj->objId] = 0x1E;
    func_800AFBB4(0, omCurrentObj);
    func_800AA018(0x20287);
    D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 20.0f;
    D_800E6850[omCurrentObj->objId] = 20.0f;
    while (1) {
        if (D_800E83E0[omCurrentObj->objId] != 0) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E98E0[omCurrentObj->objId] = 1;
            play_sound(0x12);
            break;
        }
        if (D_800E98E0[omCurrentObj->objId] != 0) {
            break;
        }
        ohSleep(1);
    }
    func_800AFBB4(1, omCurrentObj);
    if (D_800E98E0[omCurrentObj->objId] == 1) {
        if ((D_800E83E0[omCurrentObj->objId] & 0xFFFF) == 2) {
            ohSleep(0xA);
        } else {
            ohSleep(2);
        }
    } else {
        ohSleep(0xA);
    }
    D_800E98E0[omCurrentObj->objId] = 3;
    curObjSleepForever();
}

extern char D_80190E80_ovl3[];
extern f32 D_800EC9E4;

void func_80160D84_ovl3(s32 arg0) {
    s32 id;

    if (D_800E98E0[omCurrentObj->objId] == 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
        if (D_800E9720[omCurrentObj->objId]--) {
            if (D_800E83E0[omCurrentObj->objId] == 0) {
                func_80155424_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
                if ((D_800E8920[omCurrentObj->objId] == 0) && (D_800E6310[omCurrentObj->objId] == 0)) {
                    func_80111C4C(func_801117BC(D_80190E80_ovl3, omCurrentObj->objId));
                    return;
                }
                play_sound(0x12);
                D_800E98E0[omCurrentObj->objId] = 2;
            }
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = 65535.0f;
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = 65535.0f;
            return;
        }
    } else if (D_800E98E0[omCurrentObj->objId] == 3) {
        play_sound(0x14);
        id = func_801693C4_ovl3(5);
        if (id != -1) {
            gEntitiesNextPosXArray[id] = gEntitiesNextPosXArray[omCurrentObj->objId];
            gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[omCurrentObj->objId];
            gEntitiesNextPosZArray[id] = gEntitiesNextPosZArray[omCurrentObj->objId];
            D_800EA6E0[id] = D_800E17D0[omCurrentObj->objId];
            D_800EC2E0[id].as_s32 = 0x20;
        }
    } else {
        gEntitiesNextPosYArray[omCurrentObj->objId] -= D_800EC9E4;
        return;
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#ifdef MIPS_TO_C
/* FACTORY: 288/288, RE-MEASURED -- the prior "0/288" note was stale/wrong;
 * verify.py shows total mismatch from insn [0]. The ROM's prologue is
 * -0x38 with s0/s1/s2 saved (s2 = &omCurrentObj, held and re-dereferenced
 * via `lw $v1,0($s2)` at every field access -- never caches ->objId in a
 * register the way this draft's `s32 id = omCurrentObj->objId` local does),
 * where this draft produces -0x50 with a different callee-saved set and an
 * `id` local baked into every displacement instead. A rewrite needs the
 * struct-pointer-in-s2, id-recomputed-from-*s2-each-time shape; not
 * attempted here. Leaving guarded. */
/* PORT: forward-shot init coroutine (anim 0x20040), from asm/nonmatchings/
 * ovl3/plyshot/func_80161058_ovl3.s -- same family as the decompiled
 * func_8015BBE4_ovl3 above. Seats the shot 20 units above the parent,
 * inherits ground/water state, opens sound pair 0x34 plus two type-0x11/
 * 0x12 effects when launched from the ground, launches at 10 (6 in water),
 * and for up to 30 frames watches for a wall hit that reverses it; then
 * hands off to func_801614D8_ovl3 with a slow upward drift. */
void func_80161058_ovl3(s32 arg0) {
    extern f32 **D_80192F48_ovl3;
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800E0650[id] = (s32 *) 1;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_801614D8_ovl3;
    D_800E0490[id] = &D_80192F48_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AECC0(D_800E09D0[D_800E0D50[id]]);
    func_800AED20(D_800E09D0[D_800E0D50[id]]);
    D_800E8920[id] = D_800E8920[D_800E0D50[id]];
    D_800E8AE0[id] = D_800E8AE0[D_800E0D50[id]];
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20040, 0x21, 0x10);
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    if (D_800E8920[id] != 0) {
        func_800A77E8(0x34, (s32 *) &sndpair[0], (s32 *) &sndpair[1]);
        D_800EA520[id] = func_800A8234(2, 1, 0x11);
        D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
    } else {
        sndpair[0] = 0;
        D_800EB4E0[id] = 0;
        D_800EA520[id] = D_800EB4E0[id];
    }
    func_800AA018(0x20288);
    D_800E98E0[id] = 0;
    D_800E9560[id] = 0xA;
    spd = (D_800E8AE0[id] & 4) ? 6.0f : 10.0f;
    D_800E64D0[id] = D_800E6A10[id] * spd;
    D_800E6850[id] = spd;
    D_800E9720[id] = 0;
    while (D_800E9720[id] < 0x1E) {
        if (D_800E6310[id] != 0) {
            D_800E64D0[id] = -D_800E64D0[id];
            break;
        }
        ohSleep(1);
        D_800E9720[id]++;
    }
    D_800E6690[id] = D_800E6A10[id] * -0.5f;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: forward-shot init coroutine (anim 0x20040), from asm/nonmatchings/
 * ovl3/plyshot/func_80161058_ovl3.s -- same family as the decompiled
 * func_8015BBE4_ovl3 above. Seats the shot 20 units above the parent,
 * inherits ground/water state, opens sound pair 0x34 plus two type-0x11/
 * 0x12 effects when launched from the ground, launches at 10 (6 in water),
 * and for up to 30 frames watches for a wall hit that reverses it; then
 * hands off to func_801614D8_ovl3 with a slow upward drift. */
void func_80161058_ovl3(s32 arg0) {
    extern f32 **D_80192F48_ovl3;
    s32 id = omCurrentObj->objId;
    u32 sndpair[2];
    f32 spd;

    D_800E0650[id] = (s32 *) 1;
    func_80161CE0_ovl3(arg0);
    func_80161EC0_ovl3(0, 0.0f, 20.0f);
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = func_801614D8_ovl3;
    D_800E0490[id] = &D_80192F48_ovl3;
    func_80154648_ovl3(D_800E0D50[id], D_80197F60_ovl3[id - 4], D_801982F8_ovl3[id - 4]);
    func_800AECC0(D_800E09D0[D_800E0D50[id]]);
    func_800AED20(D_800E09D0[D_800E0D50[id]]);
    D_800E8920[id] = D_800E8920[D_800E0D50[id]];
    D_800E8AE0[id] = D_800E8AE0[D_800E0D50[id]];
    gEntitiesScaleXArray[id] = 0.2f;
    gEntitiesScaleYArray[id] = 0.2f;
    gEntitiesScaleZArray[id] = 0.2f;
    func_800A9864(0x20040, 0x21, 0x10);
    D_800EA360[id] = (s32) (uintptr_t) sndpair;
    if (D_800E8920[id] != 0) {
        pc_sndpair_start(0x34, sndpair);
        D_800EA520[id] = func_800A8234(2, 1, 0x11);
        D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
    } else {
        sndpair[0] = 0;
        D_800EB4E0[id] = 0;
        D_800EA520[id] = D_800EB4E0[id];
    }
    func_800AA018(0x20288);
    D_800E98E0[id] = 0;
    D_800E9560[id] = 0xA;
    spd = (D_800E8AE0[id] & 4) ? 6.0f : 10.0f;
    D_800E64D0[id] = D_800E6A10[id] * spd;
    D_800E6850[id] = spd;
    D_800E9720[id] = 0;
    while (D_800E9720[id] < 0x1E) {
        if (D_800E6310[id] != 0) {
            D_800E64D0[id] = -D_800E64D0[id];
            break;
        }
        ohSleep(1);
        D_800E9720[id]++;
    }
    D_800E6690[id] = D_800E6A10[id] * -0.5f;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80161058_ovl3.s")
#endif

#ifdef MIPS_TO_C
/* FACTORY: 69/514, register permutation. Was 509/513 [noted 4/513], and the
   ROM is 514 words, not 513; the count is now exact.

   This is a CLONE of func_8015C00C_ovl3 (LEVER 1) and was re-derived by
   porting that function's spelling verbatim and changing only what the
   listing says differs: particle 0x58 for 0x10, probe radius 25.0f for 20.0f,
   the hit record D_80193834_ovl3, func_800A22D4 in BOTH early exits where the
   boomerang uses func_800A1F30 in the second, pair fgm 0x34, effect types
   0x11/0x12, the extra `if (func_800AA934(0x20288)) func_800AA018(0x20289)`
   after the bubble throttle, and func_80111C4C at the END rather than before
   the water block. Every defect listed in func_8015C00C_ovl3's note above is
   present here too and fixed the same way -- the objId re-reads, the frame
   (0x60 -> 0x68 on two extra declarations), the PORT sndpair shim,
   D_80198830_ovl3.unk4 rather than a D_80198834_ovl3 symbol, the two held
   GObj* effect pointers with no `if (D_800EB4E0[objId] != 0)` guard, and the
   integer zeros in pairs. Ported in one edit, 509 -> 69.

   WHAT IS LEFT is the same residue as the sibling and no more: from
   0x80161ABC the ROM's $a0 (the CSE of D_800EA520[objId] at the three-way
   join) is this C's $a1, cascading $a1->$a2, $a2->$a3, with one `move` in a
   delay slot the ROM fills with `nop`; and at 0x80161BEC the
   %hi(D_80190EC4_ovl3) for the final func_801117BC call is hoisted into the
   branch delay slot one word early, which shifts the last sixty words by one
   without changing any of them. Do not re-sweep the declaration order --
   see the sibling's note for the three that were measured. */

/* PORT: service routine for the forward shot installed by func_80161058_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s. Same shape
 * as the decompiled boomerang service func_8015C00C_ovl3 in this TU: bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x58) and pops on catch
 * state gKirbyState.unk44==1 (both via func_800A22D4 here), otherwise runs
 * the hit record D_80193834 and the shot collision pass, probes 25 units
 * around the shot to keep the two type-0x11/0x12 water-trail effects and
 * looping pair 0x34 alive only in water, steers back toward the parent at
 * 10 (6 in water) once past the apex, re-arms the shared bubble throttle
 * (D_80198830_ovl3.unk4), chains anim 0x20288 into 0x20289 when it
 * finishes, and re-seats both effect blocks on the shot's position. */
struct SpreadFx { u32 kind; f32 unk4, unk8, unkC, unk10, unk14, unk18; };

void func_801614D8_ovl3(struct GObj *arg0) {
    extern Unk80198830 D_80198830_ovl3;
    extern char D_80190EC4_ovl3[];
    extern s32 D_80193834_ovl3[];
    void **sndpair = (void **) D_800EA360[omCurrentObj->objId];
    f32 probe[3];
    s32 inWater;
    f32 spd;
    GObj *fa;
    GObj *fx;

    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[omCurrentObj->objId];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x58U, gEntitiesNextPosXArray[omCurrentObj->objId],
                      gEntitiesNextPosYArray[omCurrentObj->objId],
                      gEntitiesNextPosZArray[omCurrentObj->objId]);
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A22D4((s32) fa);
            func_800A22D4(D_800EB4E0[omCurrentObj->objId]);
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A22D4((s32) fa);
            func_800A22D4(D_800EB4E0[omCurrentObj->objId]);
        }
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[omCurrentObj->objId - 4], (s32) (uintptr_t) D_80193834_ovl3, 0,
                       omCurrentObj->objId);
    func_80155664_ovl3(D_80197F60_ovl3[omCurrentObj->objId - 4]);
    D_800E8920[omCurrentObj->objId] = 0;
    probe[0] = gEntitiesNextPosXArray[omCurrentObj->objId];
    probe[1] = gEntitiesNextPosYArray[omCurrentObj->objId];
    probe[2] = gEntitiesNextPosZArray[omCurrentObj->objId];
    inWater = func_80155838_ovl3(probe, 25.0f, 6);
    if (D_800E8AE0[omCurrentObj->objId] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[omCurrentObj->objId] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]]
                          - gEntitiesNextPosYArray[omCurrentObj->objId]) + 20.0f,
                         func_800F9828(omCurrentObj->objId, D_800E0D50[omCurrentObj->objId]));

        D_800E3210[omCurrentObj->objId] = sinf(ang) * spd;
        D_800E3750[omCurrentObj->objId] = 0;
        D_800E3C90[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[omCurrentObj->objId] = cosf(ang) * spd;
        D_800E6690[omCurrentObj->objId] = 0;
        D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[omCurrentObj->objId] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[omCurrentObj->objId] == 1.0f) && (D_800E64D0[omCurrentObj->objId] < 0))
            || ((D_800E6A10[omCurrentObj->objId] == -1.0f) && (D_800E64D0[omCurrentObj->objId] > 0))) {
            D_800E98E0[omCurrentObj->objId] = 1;
        }
    }
    if (D_80198830_ovl3.unk4 == 0) {
        D_800E9560[omCurrentObj->objId] -= 1;
        if (D_800E9560[omCurrentObj->objId] == 0) {
            D_80198830_ovl3.unk4 = 1;
        }
    }
    if (func_800AA934(0x20288) != 0) {
        func_800AA018(0x20289);
    }
    if (inWater == 0) {
        if (sndpair[0] != NULL) {
            func_800A7870(sndpair, (u16 *) (sndpair + 1));
        }
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        if (fa != NULL) {
            func_800A1F30((s32) fa);
            func_800A1F30(D_800EB4E0[omCurrentObj->objId]);
            D_800EB4E0[omCurrentObj->objId] = 0;
            D_800EA520[omCurrentObj->objId] = D_800EB4E0[omCurrentObj->objId];
        }
    } else {
        if (sndpair[0] == NULL) {
            func_800A77E8(0x34, (s32 *) sndpair, (s32 *) (sndpair + 1));
        }
        if (D_800EA520[omCurrentObj->objId] == 0) {
            D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x11);
            D_800EB4E0[omCurrentObj->objId] = func_800A8234(2, 1, 0x12);
        }
    }
    if (D_800EA520[omCurrentObj->objId] != 0) {
        fa = (GObj *) D_800EA520[omCurrentObj->objId];
        ((struct SpreadFx *) fa->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((struct SpreadFx *) fa->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((struct SpreadFx *) fa->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        fx = (GObj *) D_800EB4E0[omCurrentObj->objId];
        ((struct SpreadFx *) fx->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((struct SpreadFx *) fx->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((struct SpreadFx *) fx->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
    }
    func_80111C4C(func_801117BC(D_80190EC4_ovl3, omCurrentObj->objId));
}
#elif defined(PORT)
/* PORT: service routine for the forward shot installed by func_80161058_ovl3
 * above, from asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s. Same shape
 * as the decompiled boomerang service func_8015C00C_ovl3 in this TU: bursts
 * when the ability ends (fgm 0x159, particle 2/1/0x58) and pops on catch
 * state gKirbyState.unk44==1 (both via func_800A22D4 here), otherwise runs
 * the hit record D_80193834 and the shot collision pass, probes 25 units
 * around the shot to keep the two type-0x11/0x12 water-trail effects and
 * looping pair 0x34 alive only in water, steers back toward the parent at
 * 10 (6 in water) once past the apex, re-arms the shared bubble throttle
 * (D_80198830+4, spelled through the splinter cell D_80198834 per this
 * build's data-emission convention), chains anim 0x20288 into 0x20289 when
 * it finishes, and re-seats both effect blocks on the shot's position. */
void func_801614D8_ovl3(struct GObj *arg0) {
    extern u8 D_80198834_ovl3[];
    extern char D_80190EC4_ovl3[];
    extern s32 D_80193834_ovl3[];
    s32 id = omCurrentObj->objId;
    u32 *sndpair = (u32 *) (uintptr_t) (u32) D_800EA360[id];
    f32 probe[3];
    s32 inWater;
    f32 spd;

    gEntitiesAngleYArray[id] = D_800E17D0[id];
    if (gKirbyState.abilityInUse == 0) {
        play_sound(0x159);
        func_800A7F74(2U, 1U, 0x58U, gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id],
                      gEntitiesNextPosZArray[id]);
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 == 1) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
            func_800A22D4(D_800EB4E0[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    func_80155D50_ovl3(D_801982F8_ovl3[id - 4], (s32) (uintptr_t) D_80193834_ovl3, 0, id);
    func_80155664_ovl3(D_80197F60_ovl3[id - 4]);
    D_800E8920[id] = 0;
    probe[0] = gEntitiesNextPosXArray[id];
    probe[1] = gEntitiesNextPosYArray[id];
    probe[2] = gEntitiesNextPosZArray[id];
    inWater = func_80155838_ovl3(probe, 25.0f, 6);
    if (D_800E8AE0[id] & 4) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
        spd = 6.0f;
    } else {
        func_800AECC0(2.0f);
        func_800AED20(2.0f);
        spd = 10.0f;
    }
    if (D_800E98E0[id] != 0) {
        f32 ang = atan2f((gEntitiesNextPosYArray[D_800E0D50[id]] - gEntitiesNextPosYArray[id]) + 20.0f,
                         func_800F9828(id, D_800E0D50[id]));

        D_800E3210[id] = sinf(ang) * spd;
        D_800E3750[id] = 0.0f;
        D_800E3C90[id] = (spd < 0.0f) ? -spd : spd;
        D_800E64D0[id] = cosf(ang) * spd;
        D_800E6690[id] = 0.0f;
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
    } else {
        D_800E6850[id] = (spd < 0.0f) ? -spd : spd;
        if (((D_800E6A10[id] == 1.0f) && (D_800E64D0[id] < 0.0f))
            || ((D_800E6A10[id] == -1.0f) && (D_800E64D0[id] > 0.0f))) {
            D_800E98E0[id] = 1;
        }
    }
    if (*(s32 *) D_80198834_ovl3 == 0) {
        D_800E9560[id] -= 1;
        if (D_800E9560[id] == 0) {
            *(s32 *) D_80198834_ovl3 = 1;
        }
    }
    if (func_800AA934(0x20288) != 0) {
        func_800AA018(0x20289);
    }
    if (inWater == 0) {
        if (sndpair != NULL && sndpair[0] != 0) {
            pc_sndpair_release(sndpair);
        }
        if (D_800EA520[id] != 0) {
            func_800A1F30(D_800EA520[id]);
            func_800A1F30(D_800EB4E0[id]);
            D_800EB4E0[id] = 0;
            D_800EA520[id] = D_800EB4E0[id];
        }
    } else {
        if (sndpair != NULL && sndpair[0] == 0) {
            pc_sndpair_start(0x34, sndpair);
        }
        if (D_800EA520[id] == 0) {
            D_800EA520[id] = func_800A8234(2, 1, 0x11);
            D_800EB4E0[id] = func_800A8234(2, 1, 0x12);
        }
    }
    if (D_800EA520[id] != 0) {
        struct PcPlyshotFx *fa = ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
        struct PcPlyshotFx *fb = ((GObj *) (uintptr_t) (u32) D_800EB4E0[id])->unk4C;

        fa->unk4 = gEntitiesNextPosXArray[id];
        fa->unk8 = gEntitiesNextPosYArray[id];
        fa->unkC = gEntitiesNextPosZArray[id];
        fb->unk4 = gEntitiesNextPosXArray[id];
        fb->unk8 = gEntitiesNextPosYArray[id];
        fb->unkC = gEntitiesNextPosZArray[id];
    }
    func_80111C4C(func_801117BC(D_80190EC4_ovl3, id));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_801614D8_ovl3.s")
#endif

void func_80161CE0_ovl3(s32 arg0) {
    s32 id = D_800E0D50[omCurrentObj->objId];

    D_800E5F90[omCurrentObj->objId] = D_800E5F90[id];
    D_800E6D90[omCurrentObj->objId] = D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[id];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[id];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[id];
}

#include "unk_structs/D_80129114.h"

void func_80161D94_ovl3(void) {
    GObj *obj = omCurrentObj;
    f32 *p;
    f32 v;

    D_800E6310[obj->objId] = 0;
    if (D_80129114->unk4[D_800E5F90[obj->objId]].loop != 0) {
        p = &D_800E6BD0[obj->objId];
        v = *p;
        if (1.0f < v) {
            *p = v - 1.0f;
            return;
        }
        if (v < 0.0f) {
            *p = v + 1.0f;
        }
        return;
    }
    p = &D_800E6BD0[obj->objId];
    v = *p;
    if (1.0f < v) {
        *p = 1.0f;
        D_800E6310[obj->objId]++;
        return;
    }
    if (v < 0.0f) {
        *p = 0.0f;
        D_800E6310[obj->objId]++;
    }
}

void func_800F98EC(s32, f32);
void func_800F8E6C(GObj *);

void func_80161EC0_ovl3(s32 arg0, f32 arg1, f32 arg2) {
    Vector sp24;

    if (arg0 != 0) {
        func_800B2340(&sp24, arg0, D_800E0D50[omCurrentObj->objId]);
    } else {
        sp24.y = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
    }
    gEntitiesNextPosXArray[omCurrentObj->objId] = 0.0;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp24.y + arg2;
    gEntitiesNextPosZArray[omCurrentObj->objId] = 0.0;
    if (D_800E6A10[omCurrentObj->objId] == -1.0f) {
        arg1 = -arg1;
    }
    if (arg1 != 0.0f) {
        func_800F98EC(omCurrentObj->objId, arg1);
    }
    func_800F8E6C(omCurrentObj);
}

typedef struct Unk80162000 {
    u8 pad0[4];
    u8 unk4;
    u8 pad5[3];
    s32 unk8;
    f32 unkC;
    f32 unk10;
    f32 unk14;
    f32 unk18;
    f32 unk1C;
    f32 unk20;
    f32 unk24;
} Unk80162000;

typedef struct Unk80162000Hdr {
    u8 pad0[0x1C];
    s32 unk1C;
    Unk80162000 *unk20;
} Unk80162000Hdr;

s32 func_80162000_ovl3(char *arg0, s32 arg1, f32 arg2) {
    Unk80162000 *p;
    Unk80162000Hdr *hdr;
    s32 i;

    if (arg2 == 0.0f) {
        return 0;
    }
    hdr = (Unk80162000Hdr *) func_801117BC(arg0, omCurrentObj->objId);
    i = 0;
    p = hdr->unk20;
    for (; i < hdr->unk1C; i++) {
        if (arg2 != 1.0f) {
            switch (p->unk4) {
            case 1:
                p->unk18 = p->unk18 * arg2;
                break;
            case 2:
                p->unkC = p->unkC * arg2;
                p->unk10 = p->unk10 * arg2;
                p->unk14 = p->unk14 * arg2;
                p->unk18 = p->unk18 * arg2;
                p->unk1C = p->unk1C * arg2;
                p->unk20 = p->unk20 * arg2;
                p->unk24 = p->unk24 * arg2;
                break;
            }
        }
        if (p->unk8 == 0) {
            if (arg1 != 0) {
                p->unk8 = arg1;
            }
        }
        p++;
    }
    func_80111C4C((s32) hdr);
    return (s32) hdr;
}

#ifdef MIPS_TO_C
/* FACTORY: 280/281 [was noted 1/281] (280/281 diff; note the near-matching TOTAL count -- target has 281 insns, this draft 281 too but only 1 word agrees), whole-function callee-saved permutation plus a real defect: the ROM strength-reduces a multiply by 0x58 (id*3, *4, *8 via shift/subtract) to index D_80197BF0_ovl3, meaning each cell is 0x58 bytes -- this draft's struct PcShotColSnap is only 32 bytes (the PORT arm's reduced snapshot, not the full memcpy'd N64 cell the header comment describes). Residual work for whoever continues: widen the cell to 0x58 bytes and memcpy the whole D_8012BCA0 block per the comment. Adds an ANSI prototype for func_801625B8_ovl3 (defined later in this TU) to avoid an implicit-int redeclaration conflict. Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 280 of 281 words differ (99%). A
   permutation RENAMES registers -- it does not change what the function
   computes -- so if the claim really is a permutation it cannot account for
   this, the draft is simply not this function yet, and it should be
   re-derived from the listing rather than swept for register spellings.

   BUT CHECK THE CLAIM FIRST, and this qualification was added on the same
   day by a lane that found the counter-example. Ask: DOES THE STATED CAUSE
   CHANGE THE INSTRUCTION COUNT OR THE FRAME? A permutation does not. An
   INSERTION does -- func_801DF768_ovl17 has one extra `sw $s0` at diff [2]
   and every diff after it is the same instruction one slot late, so a note
   reading 3/213 from an ALIGNING differ and a positional score of 210/213
   are both true and both useful. Where the cause shifts the stream,
   near-total positional disagreement is EXPECTED and the note should be
   believed. Only where the claim is a pure rename does this annotation
   stand. */

/* PORT: the shot water-surface tracker, from asm/nonmatchings/ovl3/plyshot/
 * func_80162150_ovl3.s. On N64 this memcpy's the whole 0x58-byte collision
 * result block D_8012BCA0 into the shot's cell of D_80197BF0_ovl3 each call
 * and, when the shot's water state changed, probes the water volumes at the
 * shot (entering: fresh annex; leaving: LAST frame's stored annex), finds
 * the surface crossing between the previous and next positions with
 * func_8010E048, and spawns a ripple there. The LP64 block (168 bytes,
 * struct UnkBCA0 in ovl2_7.c, water annex at +128 -- locked by asserts in
 * src/pc/pc_bss_whole.c) does not fit the 0x58-byte cells, and the only
 * readers of the copy are this function and func_8015AC90_ovl3's marker
 * bits in the leading u16, so the cell stores a reduced snapshot instead:
 * the flags halfword at +0 (where the marker lives) and the water annex.
 * When the marker (unk0 >> 3 == 0xFFF, set by func_8015AC90_ovl3) is
 * present the ripple scan is skipped, exactly as on N64. */
struct PcShotColSnap {
    u16 flagsHw;    /* aliases Unk80197BF0.unk0 -- the marker halfword */
    u16 pad0;
    u32 pad4;
    void *waterRec[3];
    u32 waterSrc[3];
};

void func_80162150_ovl3(void) {
    extern u8 D_8012BCA0[];
    s32 id = omCurrentObj->objId;
    struct PcShotColSnap *snap = (struct PcShotColSnap *) &D_80197BF0_ovl3[id - 4];
    s32 k;

    if ((u32) (snap->flagsHw >> 3) != 0xFFF) {
        s32 flags = D_800E8AE0[id];

        if ((flags != 0) && ((flags & 6) != 6)) {
            f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
            f32 probe[3];
            f32 posA[3];
            f32 posB[3];
            s32 hits;

            if (flags & 4) {
                /* In water: probe the next position, walk the fresh annex. */
                probe[0] = gEntitiesNextPosXArray[id];
                probe[1] = gEntitiesNextPosYArray[id] + fr[0];
                probe[2] = gEntitiesNextPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = *(u8 **) (D_8012BCA0 + 128 + k * 8);

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, *(s32 *) (D_8012BCA0 + 152 + k * 4), posA, posB,
                                      D_8012BCA0 + 24 /* &rec[0].norm */, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            } else {
                /* Just left the water: probe the previous position, walk
                 * the annex captured in last frame's snapshot. */
                void *dummyNorm;

                probe[0] = gEntitiesPosXArray[id];
                probe[1] = gEntitiesPosYArray[id] + fr[0];
                probe[2] = gEntitiesPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = snap->waterRec[k];

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, snap->waterSrc[k], posA, posB, &dummyNorm, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            }
        }
    }
    /* Refresh the snapshot from the live block (the N64 0x58-byte copy). */
    snap->flagsHw = ((u16 *) D_8012BCA0)[1]; /* PORT flags union: hw is the upper u16 */
    for (k = 0; k < 3; k++) {
        snap->waterRec[k] = *(void **) (D_8012BCA0 + 128 + k * 8);
        snap->waterSrc[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
    }
}
#elif defined(PORT)
/* PORT: the shot water-surface tracker, from asm/nonmatchings/ovl3/plyshot/
 * func_80162150_ovl3.s. On N64 this memcpy's the whole 0x58-byte collision
 * result block D_8012BCA0 into the shot's cell of D_80197BF0_ovl3 each call
 * and, when the shot's water state changed, probes the water volumes at the
 * shot (entering: fresh annex; leaving: LAST frame's stored annex), finds
 * the surface crossing between the previous and next positions with
 * func_8010E048, and spawns a ripple there. The LP64 block (168 bytes,
 * struct UnkBCA0 in ovl2_7.c, water annex at +128 -- locked by asserts in
 * src/pc/pc_bss_whole.c) does not fit the 0x58-byte cells, and the only
 * readers of the copy are this function and func_8015AC90_ovl3's marker
 * bits in the leading u16, so the cell stores a reduced snapshot instead:
 * the flags halfword at +0 (where the marker lives) and the water annex.
 * When the marker (unk0 >> 3 == 0xFFF, set by func_8015AC90_ovl3) is
 * present the ripple scan is skipped, exactly as on N64. */
struct PcShotColSnap {
    u16 flagsHw;    /* aliases Unk80197BF0.unk0 -- the marker halfword */
    u16 pad0;
    u32 pad4;
    void *waterRec[3];
    u32 waterSrc[3];
};

void func_80162150_ovl3(void) {
    extern u8 D_8012BCA0[];
    s32 id = omCurrentObj->objId;
    struct PcShotColSnap *snap = (struct PcShotColSnap *) &D_80197BF0_ovl3[id - 4];
    s32 k;

    if ((u32) (snap->flagsHw >> 3) != 0xFFF) {
        s32 flags = D_800E8AE0[id];

        if ((flags != 0) && ((flags & 6) != 6)) {
            f32 *fr = (f32 *) (uintptr_t) D_800E0490[id][1];
            f32 probe[3];
            f32 posA[3];
            f32 posB[3];
            s32 hits;

            if (flags & 4) {
                /* In water: probe the next position, walk the fresh annex. */
                probe[0] = gEntitiesNextPosXArray[id];
                probe[1] = gEntitiesNextPosYArray[id] + fr[0];
                probe[2] = gEntitiesNextPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = *(u8 **) (D_8012BCA0 + 128 + k * 8);

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, *(s32 *) (D_8012BCA0 + 152 + k * 4), posA, posB,
                                      D_8012BCA0 + 24 /* &rec[0].norm */, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            } else {
                /* Just left the water: probe the previous position, walk
                 * the annex captured in last frame's snapshot. */
                void *dummyNorm;

                probe[0] = gEntitiesPosXArray[id];
                probe[1] = gEntitiesPosYArray[id] + fr[0];
                probe[2] = gEntitiesPosZArray[id];
                hits = func_8010DF9C(probe);
                for (k = 0; k < hits && k < 3; k++) {
                    u8 *w = snap->waterRec[k];

                    if (w != NULL && w[4] == 1) {
                        posA[0] = gEntitiesPosXArray[id];
                        posA[1] = gEntitiesPosYArray[id] + fr[0] + fr[1];
                        posA[2] = gEntitiesPosZArray[id];
                        posB[0] = gEntitiesNextPosXArray[id];
                        posB[1] = gEntitiesNextPosYArray[id];
                        posB[2] = gEntitiesNextPosZArray[id];
                        func_8010E048(w, snap->waterSrc[k], posA, posB, &dummyNorm, probe);
                        func_801625B8_ovl3(probe);
                        break;
                    }
                }
            }
        }
    }
    /* Refresh the snapshot from the live block (the N64 0x58-byte copy). */
    snap->flagsHw = ((u16 *) D_8012BCA0)[1]; /* PORT flags union: hw is the upper u16 */
    for (k = 0; k < 3; k++) {
        snap->waterRec[k] = *(void **) (D_8012BCA0 + 128 + k * 8);
        snap->waterSrc[k] = *(u32 *) (D_8012BCA0 + 152 + k * 4);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyshot/func_80162150_ovl3.s")
#endif

void func_801625B8_ovl3(f32 *arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp == -1) {
        utilPrintf("Player Shot Water Ripple Request Error![plyshot.cc]\n");
        return;
    }
    gEntitiesNextPosXArray[temp] = arg0[0];
    gEntitiesNextPosYArray[temp] = arg0[1];
    gEntitiesNextPosZArray[temp] = arg0[2];
    gEntityFuncListIDArray[temp] = 3;
}

#include "main/gtl.h"
#include "main/object_manager.h"

extern Lights1 D_800BE548;
extern Lights1 D_800BE550;

s32 func_800AB0F4(GObj *);
void func_800AB120(GObj *);
void func_800AB174(GObj *);
void func_800AB1F0(GObj *);
void func_800AB244(GObj *);
void renderDrawDObjFromGObj(GObj *);
void renderDrawObject_TypeD(GObj *);
void func_8001585C(GObj *);
void func_80015BCC(GObj *);
void func_800F90C0(s32, u8 *);

void func_8016264C_ovl3(GObj *g) {
    s32 id = g->objId;

    if (!(D_800DD8D0[id] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB120(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 21:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB1F0(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 23:
            case 25:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                renderDrawDObjFromGObj(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 27:
            case 29:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_8001585C(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                break;
            case 20:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB174(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 22:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_800AB244(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 24:
            case 26:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                renderDrawObject_TypeD(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
            case 28:
            case 30:
                gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
                gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
                if (D_800E0650[id] != 0) {
                    func_800F90C0(id, gDynamicBuffer1.top);
                    gSPNumLights(gDisplayListHeads[0]++, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
                    gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
                    gDynamicBuffer1.top += 0x18;
                }
                func_80015BCC(g);
                gSPNumLights(gDisplayListHeads[0]++, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
                gSPNumLights(gDisplayListHeads[1]++, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
                gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
                break;
        }
    }
}

s32 func_801632B8_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x14, 4, 0xE);

    if (temp == -1) {
        utilPrintf("Player Shot Request Error![plyshot.cc]\n");
    } else {
        gEntityFuncListIDArray[temp] = arg0;
    }
    return temp;
}
