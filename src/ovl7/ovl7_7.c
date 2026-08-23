#include "common.h"

#include "GObj.h"
#include "unk_structs/D_800E1B50.h"
#include "DObj.h"
#include "ovl1/util.h"
#include "ovl1/ovl1_6.h"
#include "ovl1/ovl1_7.h"

/* Forward declaration at FILE scope, and it is load-bearing for CC_CHECK.
 * struct Ovl7_7_AnimObj is defined further down this file, so a `struct
 * Ovl7_7_AnimObj *` appearing in a BLOCK-SCOPE prototype above that point
 * declares a brand-new incomplete type scoped to that prototype -- C's
 * usual trap. The two block-scope declarations of func_80111C4C then refer
 * to different types and gcc rejects the second as a conflict, breaking the
 * build for every lane. IDO accepts it, so the ROM was never affected.
 * A file-scope forward declaration makes both refer to the same type and
 * emits nothing. */
struct Ovl7_7_AnimObj;

struct Ovl7_7_AnimObj *func_80111A04(void *, s32);
void func_80111C4C(struct Ovl7_7_AnimObj *);
void func_8019B164_ovl7(void);
/* s32, NOT the `void` of the definition in src/ovl7/ovl7_3.c. MEASURED: with
 * `void` here, IDO frees $v0 across the discarded call in func_801B0258_ovl7
 * below and reuses it as the D_801D0AB0_ovl7 loop base, giving v0 where the
 * ROM has v1 (3 instructions, objdump A/B against the known-good build). The
 * definition's own tail call func_8011BF4C() does leave a value in $v0, so
 * the ROM's callers are right and the `void` on the definition is what needs
 * revisiting -- that file belongs to another lane. */
s32 func_801A36CC(void *);
void func_801B03FC_ovl7(void);
s32 func_80110B00(void *);
s32 func_80110FD4(void *);

/* D_801CE274_ovl7 = 0.3f : now emitted by this TU */
void func_800B6474(GObj *);
extern FUNCLIST D_801CD590_ovl7;
s32 func_800A8234(s32, s32, s32);
extern s32 D_800E9720[];
void func_800A77E8(s32, s32 *, u16 *);
extern s32 D_801CA35C_ovl7[], D_801CA380_ovl7[];
extern void *D_801CB388_ovl7;
extern f32 D_800EA6E0[];
extern s32 D_800E0D50[], D_800E98E0[], D_800E9C60[];
extern s32 D_8012E860;
void func_801A3938(void *);
void func_800A22D4(void *);
void func_800A7870(void *, void *);
void func_800BB468(s32, s32);
void func_800B19F4(s32, s32);
void func_800A7F74(s32, s32, s32, f32, f32, f32);
void func_8019D958_ovl7(u16);
void play_sound(s32);
void ohSleep(s32);
void func_801B0258_ovl7(GObj *); struct Ovl7_7_AnimObj;

void func_800B3520(void);
void func_801A0D50_ovl7(void *);
void func_801AF398_ovl7(GObj *);
void func_801AF314_ovl7(GObj *);

extern FUNCLIST D_801CD594_ovl7;
extern struct EnemyEventTable D_801CD384_ovl7;
void curObjSleepForever(void);
/* D_801CE268_ovl7 = -0.65f : now emitted by this TU */
extern struct EnemyEventTable D_801CD360_ovl7;
extern s32 D_800DDFD0[];
extern s32 D_800E8AE0[], D_800E8920[], D_800E93A0[];
extern f32 D_800E3750[], D_800E3C90[];
void func_800A9760(s32);
void func_800AA018(s32);
void func_800AECC0(f32);
void func_800AED20(f32);
extern f32 gameTicksPerDraw;
struct Ovl7_7_CD530 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
};

extern struct Ovl7_7_CD530 D_801CD530_ovl7[];

struct Ovl7AnimInfo {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 filler4[8];
    s32 unkC;
    u8 filler10[0x10];
};

void func_80111550(void *);
extern s32 D_800E83E0[];
void *func_80111C88(void *, u32);
void func_80111ECC(void *);
s32 func_80110150(void *);
/* D_801CE260_ovl7 = -0.65f : now emitted by this TU */
/* D_801CE270_ovl7 = -0.65f : now emitted by this TU */



/* FACTORY: 145/249, D_800E6A10 base-hoist colouring.  The first 114
   instructions are exact (the hook/timer stores, the D_801CD530_ovl7
   12-byte-stride lookups, both func_800AA018 guards).  Two levers landed
   here: the scale triple must be CHAINED
   (gEntitiesScaleXArray[..] = gEntitiesScaleYArray[..] = gEntitiesScaleZArray[..])
   -- separate statements re-read the Z element twice where the ROM loads it
   once (128 -> 117) -- and the D_800E6A10 element address must be taken into
   a pointer local BEFORE the D_800E8AE0 test, because the ROM computes
   `addu $t4,$a1,$v0` in the branch delay slot for the else arm (117 -> 104).
   Residue: with the pointer local our IDO then CSEs it into the TAKEN arm as
   well ($a1 reused, plus a `move a2,a1`), while the ROM re-materialises the
   base with a fresh lui/addiu inside that arm; from there the temp names are
   shifted one slot.
   N64 spelling: D_800E9AA0[objId] is a pointer slot used directly as the
   D_801CD530_ovl7 subscript -- a plain (s32) cast, re-read INLINE at each of
   its four uses (the ROM never caches it), and NOT the PORT arm's
   (uintptr_t) + cached `kind`. */
#ifdef MIPS_TO_C
void func_801AEA20_ovl7(GObj *arg0) {
    void func_800B8630(GObj *);
    void func_801AEE04_ovl7(GObj *);
    extern struct EnemyEventTable D_801CD33C_ovl7;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    f32 *fac;

    D_800DEF90[omCurrentObj->objId] = func_800B8630;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801AEE04_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk98 = &D_801CD33C_ovl7;
    D_800E93A0[omCurrentObj->objId] = (s32) D_800E9AA0[omCurrentObj->objId];
    D_800E9560[omCurrentObj->objId] = 0xA;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800A9864(D_801CD530_ovl7[(s32) D_800E9AA0[omCurrentObj->objId]].unk0, 0x23, 0x10);
    if (D_801CD530_ovl7[(s32) D_800E9AA0[omCurrentObj->objId]].unk4 != 0) {
        func_800AA018(D_801CD530_ovl7[(s32) D_800E9AA0[omCurrentObj->objId]].unk4);
    }
    if (D_801CD530_ovl7[(s32) D_800E9AA0[omCurrentObj->objId]].unk8 != 0) {
        func_800AA018(D_801CD530_ovl7[(s32) D_800E9AA0[omCurrentObj->objId]].unk8);
    }
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    fac = &D_800E6A10[omCurrentObj->objId];
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 3.8999999f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.0f;
        D_800E6850[omCurrentObj->objId] = 3.8999999f;
        if (D_800E98E0[omCurrentObj->objId] == 2) {
            D_800E3210[omCurrentObj->objId] = 6.5f;
        } else if (D_800E98E0[omCurrentObj->objId] == 1) {
            D_800E3210[omCurrentObj->objId] = 4.5499997f;
        } else {
            D_800E3210[omCurrentObj->objId] = 2.6f;
        }
        D_800E3750[omCurrentObj->objId] = -0.2925f;
    } else {
        D_800E64D0[omCurrentObj->objId] = *fac * 6.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 6.0f;
        if (D_800E98E0[omCurrentObj->objId] == 2) {
            D_800E3210[omCurrentObj->objId] = 10.0f;
        } else if (D_800E98E0[omCurrentObj->objId] == 1) {
            D_800E3210[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3210[omCurrentObj->objId] = 4.0f;
        }
        D_800E3750[omCurrentObj->objId] = -0.45f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    curObjSleepForever();
}
#elif defined(PORT)
/* Popped-star / dropped-pickup launch (ported from m2c): install the
 * bounce driver func_801AEE04_ovl7 and knockback func_800B8630, stash
 * the pickup kind (D_800E9AA0 carries a small integer here, not a
 * pointer) into D_800E93A0, play its D_801CD530_ovl7 entry (the m2c
 * `*4-p)*4` mush is index*12 into that 3-word table; func_800A9864
 * takes 3 args), scale to 0.2 and launch -- softer in water (3.9 speed,
 * kind-based 6.5/4.55/2.6 pop, -0.2925 gravity) than in air (6.0,
 * 10/7/4, -0.45) -- then sleep forever. */
void func_801AEA20_ovl7(GObj *arg0) {
    void func_801AEE04_ovl7(void);
    void func_800B8630(GObj *);
    /* func_800A9864(s32,s32,s32) is left implicit: plain code later in
     * this file calls it without a prototype, and a typed declaration
     * here would conflict with that implicit int() under gcc. */
    extern struct EnemyEventTable D_801CD33C_ovl7;
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    s32 kind;
    s32 tone;

    D_800DEF90[id] = func_800B8630;
    D_800DF150[omCurrentObj->objId] = (void (*)(GObj *)) func_801AEE04_ovl7;
    D_800DDA90[omCurrentObj->objId] = 0x23;
    ent->unk98 = &D_801CD33C_ovl7;
    kind = (s32) (uintptr_t) D_800E9AA0[omCurrentObj->objId];
    D_800E93A0[omCurrentObj->objId] = kind;
    D_800E9560[omCurrentObj->objId] = 0xA;
    D_800E9C60[omCurrentObj->objId] = 0;
    func_800A9864(D_801CD530_ovl7[kind].unk0, 0x23, 0x10);
    kind = (s32) (uintptr_t) D_800E9AA0[omCurrentObj->objId];
    tone = D_801CD530_ovl7[kind].unk4;
    if (tone != 0) {
        func_800AA018(tone);
        kind = (s32) (uintptr_t) D_800E9AA0[omCurrentObj->objId];
    }
    tone = D_801CD530_ovl7[kind].unk8;
    if (tone != 0) {
        func_800AA018(tone);
    }
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    id = omCurrentObj->objId;
    if (D_800E8AE0[id] & 1) {
        D_800E64D0[id] = D_800E6A10[id] * 3.8999999f;
        D_800E6690[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 0.0f;
        D_800E6850[omCurrentObj->objId] = 3.8999999f;
        id = omCurrentObj->objId;
        if (D_800E98E0[id] == 2) {
            D_800E3210[id] = 6.5f;
        } else {
            D_800E3210[id] = (D_800E98E0[id] == 1) ? 4.5499997f : 2.6f;
        }
        D_800E3750[omCurrentObj->objId] = -0.2925f;
    } else {
        D_800E64D0[id] = D_800E6A10[id] * 6.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 6.0f;
        id = omCurrentObj->objId;
        if (D_800E98E0[id] == 2) {
            D_800E3210[id] = 10.0f;
        } else {
            D_800E3210[id] = (D_800E98E0[id] == 1) ? 7.0f : 4.0f;
        }
        D_800E3750[omCurrentObj->objId] = -0.45f;
    }
    D_800E8920[omCurrentObj->objId] = 0;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEA20_ovl7.s")
#endif

#ifdef NON_MATCHING
/* FACTORY: 5/111, call-argument EVALUATION-ORDER floor -- re-confirmed
   2026-08-23. Only the first `assign_new_process_entry(gEntityGObjProcess
   Array[objId], func_801ACF84_ovl7)` call site: the ROM evaluates the
   second argument (the func_801ACF84_ovl7 function-symbol address, into
   $a1) BEFORE the first (the gEntityGObjProcessArray[objId] load, into
   $a0); IDO here evaluates left-to-right, matching source order. Swept:
   hoisting the function pointer into a named `void (*fn)(struct GObj *)`
   local assigned before the call reproduces the identical 5/111 -- the
   call site still computes $a0 first regardless. The other two textually
   identical calls in this function (D_800E9720 branch, D_800E8760 branch)
   already match, so this is scheduling context at THIS call site, not the
   expression itself. Good permuter seed. */
void func_801AEE04_ovl7(void) {
    s32 func_801A0880_ovl7(void);
    struct Ovl7_7_AnimObj *func_801117BC(void *, u32);
    void func_80111C4C(struct Ovl7_7_AnimObj *);
    void func_801ACF84_ovl7(GObj *);
    extern s32 D_801CA910_ovl7[];
    extern s32 D_800E83E0[], D_800E9560[];
    extern struct GObjProcess *gEntityGObjProcessArray[];
    void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
    s32 pad;
    s32 ret;

    ret = 0;
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
        return;
    }
    if (D_800E9C60[omCurrentObj->objId] == 0) {
        func_801A0D74_ovl7();
    }
    if (D_800E9560[omCurrentObj->objId] <= 0) {
        ret = func_801A0880_ovl7();
    } else {
        D_800E9560[omCurrentObj->objId] -= 1;
    }
    if (ret == 0) {
        func_80111C4C(func_801117BC(&D_801CA910_ovl7, omCurrentObj->objId));
    }
    if (ret == 0) {
        if ((D_800E8920[omCurrentObj->objId] == 1) || (D_800E9C60[omCurrentObj->objId] != 0)) {
            if (D_800E9720[omCurrentObj->objId] <= 0) {
                assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
            } else {
                D_800E9720[omCurrentObj->objId] -= 1;
            }
        }
    }
    gEntitiesAngleYArray[omCurrentObj->objId] -= 0.104719758f;
    if (D_800E8760[0] == 1) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AEE04_ovl7.s")
#endif

void func_801AEFC0_ovl7(GObj *arg0) {
    func_800B3520();
    D_800E9C60[omCurrentObj->objId] = 1;
}

s32 func_801AEFFC_ovl7(void) {
    s32 ret = 0;

    func_800A9760(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk0);
    if (D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk4 != 0) {
        func_800AA018(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk4);
        func_800AECC0(gameTicksPerDraw);
        ret = 1;
    }
    if (D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk8 != 0) {
        func_800AA018(D_801CD530_ovl7[D_800E93A0[omCurrentObj->objId]].unk8);
        func_800AED20(gameTicksPerDraw);
    }
    return ret;
}

void func_801AF104_ovl7(GObj *arg0) {
    s32 sp2C;
    u16 sp2A;


    D_800DEF90[omCurrentObj->objId] = func_800B6474;
    func_800A9864(0x20031, 0x23, 0x10);
    D_800DDA90[omCurrentObj->objId] = 0x23;
    gEntitiesScaleZArray[omCurrentObj->objId] = 0.2f;
    gEntitiesScaleXArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] = gEntitiesScaleZArray[omCurrentObj->objId];
    D_800EA6E0[omCurrentObj->objId] = 1.0f;
    D_800E9720[omCurrentObj->objId] = 4;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800A77E8(0x1F, &sp2C, &sp2A);
    *(s32 *) &D_800E9AA0[omCurrentObj->objId] = sp2C;
    D_800E9C60[omCurrentObj->objId] = sp2A;
    D_800E98E0[omCurrentObj->objId] = func_800A8234(1, 1, 0xC);
    utilFuncTableJump(D_800E7880[omCurrentObj->objId], 1, &D_801CD590_ovl7);
}

void func_801AF2A4_ovl7(GObj *arg0) {
    D_800DF150[omCurrentObj->objId] = func_801AF398_ovl7;
    func_801A0D50_ovl7(func_801AF314_ovl7);
    gEntityFuncListIDArray[omCurrentObj->objId] = 0;
    func_801AF314_ovl7(arg0);
}

void func_801AF314_ovl7(GObj *arg0) {
    while (1) {
        utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 4, D_801CD594_ovl7);
    }
}

/* FACTORY: 203/286, one missing instruction in the respawn arm plus the
   colouring it drags.  Everything up to index 196 is exact -- the
   func_800B3234 despawn path, both func_800A7870 handle pairs, the
   func_801A0D74_ovl7 / eneTurnCommon / tick-rate fork, the funclist jump,
   the D_800EA6E0 fade and the two emitter Vector copies.  Levers that
   landed: the local order handle/handleIdx/moved/v then ent/gen reproduces
   the ROM stack exactly (handle 0x4C, idx 0x4A, moved 0x44, v 0x38, ent
   0x34, gen 0x30) -- 105 -> 84; func_8019B7D8_ovl7 TAKES arg0 (the ROM
   passes sp+0x50 in its delay slot), and func_8019D8A0 takes the (u16)
   halfword of objId (lhu obj+2) -- 84 -> 83.
   Residue: in the `D_800E83E0[objId] == 1` respawn arm the ROM keeps the
   element ADDRESS in $a1 (an extra `or $a1,$v0,$zero`) and shares the
   literal 1 in $a3 between that compare and the gEntityFuncListIDArray
   store; our IDO recomputes both.  Hoisting the address into an `s32 *`
   local does emit the copy but costs 8 bytes of frame (0x58 vs 0x50), so
   it trades one defect for another -- the permuter should try it as a
   register-allocation hint rather than a source change.
   N64 spellings: the emitter pointer inside the D_800E98E0 block is at
   0x4C (the PORT struct's 0x58 is the widened PC layout), its two Vectors
   at 0x4 and 0x10 are written COMPONENT BY COMPONENT (the ROM reloads the
   pointer before each of the six stores), and D_800E98E0/D_800E9AA0 are
   plain word slots -- no (uintptr_t). */
#ifdef MIPS_TO_C
void func_801AF398_ovl7(GObj *arg0) {
    void eneTurnCommon(s32);
    struct Ovl7_7_AnimObj *func_801117BC(void *, u32);
    void func_80111C4C(struct Ovl7_7_AnimObj *);
    void func_8019B7D8_ovl7(GObj *);
    void func_8019D8A0(s32);
    s32 func_801A0D74_ovl7(GObj *);
    void func_801AFFFC_ovl7(void);
    void func_801B00BC_ovl7(GObj *);
    void func_801ACF84_ovl7(GObj *);
    s32 func_800B3234(f32, f32, f32);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
    extern FUNCLIST D_801CD5A4_ovl7;
    extern f32 gameTicksPerDraw;
    extern s32 D_800E8760[], D_800E83E0[], D_800E8AE0[];
    /* N64 view of the emitter block D_800E98E0 points at: the xf pointer
     * sits at 0x4C (the PC struct's 0x58 is the widened LP64 layout). */
    struct Ovl7_7_Emitter {
        u8 pad0[4];
        Vector unk4;
        Vector unk10;
    };
    struct Ovl7_7_Generator {
        u8 pad0[0x4C];
        struct Ovl7_7_Emitter *xf;
    };
    void *handle;
    u16 handleIdx;
    s32 moved;
    Vector v;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_7_Generator *gen = (struct Ovl7_7_Generator *) D_800E98E0[omCurrentObj->objId];

    if (func_800B3234(gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]) != 0) {
        handle = D_800E9AA0[omCurrentObj->objId];
        handleIdx = D_800E9C60[omCurrentObj->objId];
        func_800A7870(&handle, &handleIdx);
        D_8012E860 = 0;
        arg0->onAnimate = NULL;
        func_800A22D4((void *) D_800E98E0[omCurrentObj->objId]);
        func_8019B7D8_ovl7(arg0);
        func_8019D8A0((u16) omCurrentObj->objId);
        return;
    }
    moved = func_801A0D74_ovl7(arg0);
    eneTurnCommon(1);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    if (moved == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, D_801CD5A4_ovl7);
    }
    D_800DFBD0[omCurrentObj->objId][2]->scale.v.y = D_800EA6E0[omCurrentObj->objId];
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    D_800EA6E0[omCurrentObj->objId] -= 0.0055555557f;
    if (D_800EA6E0[omCurrentObj->objId] <= 0.0f) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B00BC_ovl7);
        return;
    }
    func_800B2340(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    gen->xf->unk4.x = v.x;
    gen->xf->unk4.y = v.y;
    gen->xf->unk4.z = v.z;
    func_800B26D8(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    gen->xf->unk10.x = v.x;
    gen->xf->unk10.y = v.y;
    gen->xf->unk10.z = v.z;
    if (D_800E9720[omCurrentObj->objId] == 0) {
        func_801AFFFC_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E7B20[omCurrentObj->objId] = 1.0f;
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AF314_ovl7);
            return;
        }
        func_80111C4C(func_801117BC(ent->unk90, omCurrentObj->objId));
    } else {
        D_800E9720[omCurrentObj->objId] -= 1;
    }
    if (D_800E8760[0] == 1) {
        handle = D_800E9AA0[omCurrentObj->objId];
        handleIdx = D_800E9C60[omCurrentObj->objId];
        func_800A7870(&handle, &handleIdx);
        D_8012E860 = 0;
        func_800A22D4((void *) D_800E98E0[omCurrentObj->objId]);
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}
#elif defined(PORT)
/* Per-frame driver for the carried pickup/item star (ported from m2c).
 * Off-screen: hand the sound handle back (func_800A7870), clear the
 * handoff latch, free the sparkle generator and the track.  Otherwise run
 * the collision pump, face the walk direction, slow the anim to realtime
 * in water, and when idle dispatch the state FUNCLIST D_801CD5A4_ovl7;
 * mirror the fade D_800EA6E0 onto sparkle DObj [2]'s scale.y, count it
 * down (0.0055... = 1/180), die into func_801B00BC_ovl7 at zero; feed the
 * generator's emitter with DObj [3]'s world position/rotation
 * (func_800B2340/func_800B26D8 with the 0xFFFF pseudo-track); when the
 * grab timer runs out fire func_801AFFFC_ovl7 and either re-enter state 1
 * (grabbed) or step the idle script; a global grab (D_800E8760[0])
 * releases the handle and dies into func_801ACF84_ovl7.  The generator
 * node uses the LP64 layout from ovl1_2_2.c (emitter chain at +0x58). */
void func_801AF398_ovl7(GObj *arg0) {
    void eneTurnCommon(s32);
    struct Ovl7_7_AnimObj *func_801117BC(void *, u32);
    void func_80111C4C(struct Ovl7_7_AnimObj *);
    void func_8019B7D8_ovl7(void);
    void func_8019D8A0(s32);
    s32 func_801A0D74_ovl7();
    void func_801AFFFC_ovl7(void);
    void func_801B00BC_ovl7(GObj *);
    void func_801ACF84_ovl7(GObj *);
    extern struct GObjProcess *gEntityGObjProcessArray[];
    void assign_new_process_entry(struct GObjProcess *, void (*)(struct GObj *));
    extern FUNCLIST D_801CD5A4_ovl7;
    struct PcOvl7Emitter {
        struct PcOvl7Emitter *next;
        Vector unk4;
        Vector unk10;
    };
    struct PcOvl7Generator {
        u8 pad0[0x18];
        Vector pos;
        u8 pad24[0x58 - 0x24];
        struct PcOvl7Emitter *xf;
    };
    u32 id = omCurrentObj->objId;
    struct EnemyRecord *ent = D_800E1B50[id];
    struct PcOvl7Generator *gen = (struct PcOvl7Generator *) (uintptr_t) D_800E98E0[id];
    void *handle;
    u16 handleIdx;
    Vector v;
    s32 moved;

    if (func_800B3234(gEntitiesNextPosXArray[id], gEntitiesNextPosYArray[id], gEntitiesNextPosZArray[id]) != 0) {
        handle = D_800E9AA0[omCurrentObj->objId];
        handleIdx = (u16) D_800E9C60[omCurrentObj->objId];
        func_800A7870(&handle, &handleIdx);
        D_8012E860 = 0;
        arg0->onAnimate = NULL;
        func_800A22D4((void *) (uintptr_t) D_800E98E0[omCurrentObj->objId]);
        func_8019B7D8_ovl7();
        func_8019D8A0((u16) omCurrentObj->objId);
        return;
    }
    moved = func_801A0D74_ovl7(arg0);
    eneTurnCommon(1);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        func_800AECC0(1.0f);
        func_800AED20(1.0f);
    } else {
        func_800AECC0(gameTicksPerDraw);
        func_800AED20(gameTicksPerDraw);
    }
    if (moved == 0) {
        utilFuncTableJump(D_800DDFD0[omCurrentObj->objId], 4, D_801CD5A4_ovl7);
    }
    D_800DFBD0[omCurrentObj->objId][2]->scale.v.y = D_800EA6E0[omCurrentObj->objId];
    if (D_800E83E0[omCurrentObj->objId] != 0) {
        D_800EA6E0[omCurrentObj->objId] = 0.0f;
    }
    D_800EA6E0[omCurrentObj->objId] -= 0.0055555557f;
    if (D_800EA6E0[omCurrentObj->objId] <= 0.0f) {
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801B00BC_ovl7);
        return;
    }
    func_800B2340(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    gen->xf->unk4 = v;
    func_800B26D8(&v, D_800DFBD0[omCurrentObj->objId][3], 0xFFFF);
    gen->xf->unk10 = v;
    if (D_800E9720[omCurrentObj->objId] == 0) {
        func_801AFFFC_ovl7();
        if (D_800E83E0[omCurrentObj->objId] == 1) {
            D_800E83E0[omCurrentObj->objId] = 0;
            D_800E7B20[omCurrentObj->objId] = 1.0f;
            gEntityFuncListIDArray[omCurrentObj->objId] = 1;
            assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801AF314_ovl7);
            return;
        }
        func_80111C4C(func_801117BC((void *) (uintptr_t) ent->unk90, omCurrentObj->objId));
    } else {
        D_800E9720[omCurrentObj->objId] -= 1;
    }
    if (D_800E8760[0] == 1) {
        handle = D_800E9AA0[omCurrentObj->objId];
        handleIdx = (u16) D_800E9C60[omCurrentObj->objId];
        func_800A7870(&handle, &handleIdx);
        D_8012E860 = 0;
        func_800A22D4((void *) (uintptr_t) D_800E98E0[omCurrentObj->objId]);
        assign_new_process_entry(gEntityGObjProcessArray[omCurrentObj->objId], func_801ACF84_ovl7);
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl7/ovl7_7/func_801AF398_ovl7.s")
#endif

void func_801AF814_ovl7(GObj *arg0) {
/* D_801CE248_ovl7 = -0.65f : now emitted by this TU */
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 0;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_800AA018(0x2027F);
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 2.0f;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
        D_800E3210[omCurrentObj->objId] = 10.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    curObjSleepForever();
}

void func_801AF9F8_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFAB0_ovl7(GObj *arg0) {
/* D_801CE258_ovl7 = -0.65f : now emitted by this TU */
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 1;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    func_8019B164_ovl7();
    play_sound(0x22);
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * -1.0f;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 2.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 2.0f;
        D_800E3210[omCurrentObj->objId] = 8.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 8.0f;
    } else {
        D_800E64D0[omCurrentObj->objId] = D_800E6A10[omCurrentObj->objId] * 4.0f;
        D_800E6690[omCurrentObj->objId] = 0.0f;
        D_800E6850[omCurrentObj->objId] = 4.0f;
        D_800E3210[omCurrentObj->objId] = 10.0f;
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 10.0f;
    }
    if (gEntitiesNextPosYArray[omCurrentObj->objId] < gEntitiesNextPosYArray[0]) {
        D_800E3210[omCurrentObj->objId] = -D_800E3210[omCurrentObj->objId] * 0.5f;
        D_800E3750[omCurrentObj->objId] = -D_800E3750[omCurrentObj->objId];
    }
    curObjSleepForever();
}

void func_801AFD28_ovl7(GObj *arg0) {
    if (D_800E3210[omCurrentObj->objId] < 0.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 1) {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 7.0f;
        } else {
            D_800E3750[omCurrentObj->objId] = -0.65f;
            D_800E3C90[omCurrentObj->objId] = 14.0f;
        }
    }
}

void func_801AFDE0_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 2;
    ent->unk98 = &D_801CD384_ovl7;
    D_800E8920[omCurrentObj->objId] = 1;
    func_800B3520();
    curObjSleepForever();
}

void func_801AFE60_ovl7(GObj *arg0) {
}

void func_801AFE68_ovl7(GObj *arg0) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];

    D_800DDFD0[omCurrentObj->objId] = 3;
    ent->unk98 = &D_801CD360_ovl7;
    D_800E8920[omCurrentObj->objId] = 0;
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
    curObjSleepForever();
}

void func_801AFF64_ovl7(GObj *arg0) {
    if (D_800E8AE0[omCurrentObj->objId] & 1) {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 7.0f;
    } else {
        D_800E3750[omCurrentObj->objId] = -0.65f;
        D_800E3C90[omCurrentObj->objId] = 14.0f;
    }
}

void func_801AFFFC_ovl7(void) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    s32 pad0;
    struct Ovl7AnimInfo sp28;

    if (ent->unk8C != NULL) {
        func_80111550((void *) omCurrentObj->objId);
        func_80111ECC(func_80111C88(ent->unk8C, omCurrentObj->objId));
        if (func_80110150(&sp28) != 0) {
            D_800E83E0[omCurrentObj->objId] = sp28.unk2;
            ent->unk43 = 0;
        } else {
            D_800E83E0[omCurrentObj->objId] = 0;
            ent->unk43 = 0;
        }
    }
}
void func_801B00BC_ovl7(GObj *arg0) {
    s32 sp34;
    s16 sp32;
    struct EnemyRecord *temp = D_800E1B50[omCurrentObj->objId];

    temp->unk8C = &D_801CA35C_ovl7;
    temp->unk90 = (u32) &D_801CA380_ovl7;
    func_801A3938(&D_801CB388_ovl7);
    func_800A22D4((void *) D_800E98E0[omCurrentObj->objId]);
    sp34 = (s32) D_800E9AA0[omCurrentObj->objId];
    sp32 = D_800E9C60[omCurrentObj->objId];
    func_800A7870(&sp34, &sp32);
    func_800BB468(6, 0x10);
    play_sound(0x20);
    D_800EA6E0[omCurrentObj->objId] = 0.3f;
    func_800A7F74(1, 1, 0x44, gEntitiesNextPosXArray[omCurrentObj->objId], gEntitiesNextPosYArray[omCurrentObj->objId], gEntitiesNextPosZArray[omCurrentObj->objId]);
    D_800E0D50[omCurrentObj->objId] = -1;
    D_800DF150[omCurrentObj->objId] = func_801B0258_ovl7;
    func_800B19F4(0x74, omCurrentObj->objId);
    ohSleep(0xE);
    D_8012E860 = 0;
    func_8019D958_ovl7(((u16 *) omCurrentObj)[1]);
}

struct Ovl7_7_AnimSub {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl7_7_AnimObj {
    u8 filler0[0x20];
    struct Ovl7_7_AnimSub *unk20;
};

void func_801B0258_ovl7(GObj *arg0) {
    extern u8 D_8012E7C5;
    extern f32 D_801CB208_ovl7[][4], D_801D0AB0_ovl7[][4];
/* D_801CE278_ovl7 = 0.1f : now emitted by this TU */
    struct Ovl7_7_AnimObj *p;
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    u8 i;

    if (D_8012E7C5 != 0xE) {
        func_801B03FC_ovl7();
    }
    p = func_80111A04(ent->unk90, omCurrentObj->objId);
    p->unk20->unk18 *= D_800EA6E0[omCurrentObj->objId];
    func_80111C4C(p);
    for (i = 0; i < 0x18; i++) {
        D_801D0AB0_ovl7[i][0] = D_801CB208_ovl7[i][0] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][1] = D_801CB208_ovl7[i][1] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][2] = D_801CB208_ovl7[i][2] * D_800EA6E0[omCurrentObj->objId];
        D_801D0AB0_ovl7[i][3] = D_801CB208_ovl7[i][3] * D_800EA6E0[omCurrentObj->objId];
    }
    func_801A36CC(0);
    if (D_800EA6E0[omCurrentObj->objId] < 1.0f) {
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + 0.1f;
    }
}

struct Ovl7_7_AnimSub2 {
    u8 filler0[0x18];
    f32 unk18;
};

struct Ovl7_7_AnimObj2 {
    u8 filler0[0x24];
    struct Ovl7_7_AnimSub2 *unk24;
};

void func_801B03FC_ovl7(void) {
    struct EnemyRecord *ent = D_800E1B50[omCurrentObj->objId];
    struct Ovl7_7_AnimObj2 *p;
    struct Ovl7AnimInfo sp28;

    func_80111550((void *) omCurrentObj->objId);
    p = (struct Ovl7_7_AnimObj2 *) func_80111C88(ent->unk8C, omCurrentObj->objId);
    p->unk24->unk18 *= D_800EA6E0[omCurrentObj->objId];
    func_80111ECC(p);
    if (func_80110B00(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else if (func_80110FD4(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else if (func_80110150(&sp28) != 0) {
        D_800E83E0[omCurrentObj->objId] = sp28.unk2;
        ent->unk43 = sp28.unk3;
    } else {
        D_800E83E0[omCurrentObj->objId] = 0;
        ent->unk43 = 0;
    }
}

