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
/* D_8019715C_ovl3 now emitted by this TU */

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

/* Declarations the moved code lost when plyshot.c was split at
 * func_80163320_ovl3; each is spelled exactly as plyshot.c spells it. */

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
/* ovl3_1.c:2138 defines this (s32, s32); both arguments are really the
 * pointers spelled here (it forwards them to func_80154CFC_ovl3 and
 * func_80155C68_ovl3, which carry the same s32-for-pointer crutch). */
extern s32 func_8015550C_ovl3(f32 *, f32 *);
extern void func_800FD754(s32, f32, f32, f32);
extern s32 func_801117BC(char *, s32);
extern char D_80190B28_ovl3[];
extern char D_80190BF4_ovl3[];
extern f32 D_80196764_ovl3[][2];
extern f32 **D_801967A4_ovl3[];
void func_8015E754_ovl3(s32);
extern char D_80190D4C_ovl3[];
extern char D_80190E80_ovl3[];
extern f32 D_800EC9E4;
void func_800F98EC(s32, f32);
void func_800F8E6C(GObj *);

typedef struct Unk801967CC {
    f32 unk0;
    f32 unk4;
} Unk801967CC;

typedef struct Unk80198538 {
    s32 unk0;
    s32 unk4;
} Unk80198538;

typedef struct Unk80198830 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
} Unk80198830;

/* D_801970B4_ovl3 now emitted by this TU */
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

#include "unk_structs/D_80129114.h"
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

#ifdef PORT
/* PORT: shared helpers for the plyeff PORT arms. A verbatim copy of the block
 * at the head of plyshot.c -- the two files were one TU before the re-split at
 * func_80163320_ovl3, and both halves' PORT arms use these. They are static,
 * so the duplicate costs nothing but the text, and the N64 build never sees
 * either copy.
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

extern void func_8015488C_ovl3(s32, f32 *);
extern FUNCLIST D_801967F0_ovl3;
extern f32 D_80198540_ovl3[][8];

void func_80163320_ovl3(s32 arg0) {
    func_800AECC0(gameTicksPerDraw);
    func_800AED20(gameTicksPerDraw);
    func_8015488C_ovl3(omCurrentObj->objId, D_80198540_ovl3[omCurrentObj->objId - 60]);
    D_800E0650[omCurrentObj->objId] = 0;
    D_800E10D0[omCurrentObj->objId] = D_800E10D0[D_800E0D50[omCurrentObj->objId]];
    D_800E1290[omCurrentObj->objId] = D_800E1290[D_800E0D50[omCurrentObj->objId]];
    D_800E1450[omCurrentObj->objId] = D_800E1450[D_800E0D50[omCurrentObj->objId]];
    D_800E6A10[omCurrentObj->objId] = D_800E6A10[D_800E0D50[omCurrentObj->objId]];
    D_800E6BD0[omCurrentObj->objId] = D_800E6BD0[D_800E0D50[omCurrentObj->objId]];
    D_800E8760[omCurrentObj->objId] = 0;
    D_800E83E0[omCurrentObj->objId] = D_800E8760[omCurrentObj->objId];
    utilFuncTableJump(gEntityFuncListIDArray[omCurrentObj->objId], 0x16, D_801967F0_ovl3);
}

typedef struct Unk80196848 {
    s32 unk0;
    s32 unk4;
} Unk80196848;

extern Unk80196848 D_80196848_ovl3[];
/* D_8019714C_ovl3 now emitted by this TU */
void func_800B5094(GObj *);
void func_801636A4_ovl3(s32);

void func_801634D4_ovl3(s32 arg0) {
    f32 temp;
    s32 sp28;
    s32 sp24;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 8;
    D_800DF150[omCurrentObj->objId] = func_801636A4_ovl3;
    D_800E9720[omCurrentObj->objId] = -1;
    D_800E8AE0[omCurrentObj->objId] = D_800E8AE0[D_800E0D50[omCurrentObj->objId]];
    if (D_800E8AE0[omCurrentObj->objId] & 6) {
        arg0 = 1;
    } else {
        arg0 = 0;
    }
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp24;
    func_800A77E8(D_80196848_ovl3[arg0].unk0, &sp24, &sp28);
    arg0 = func_800A8234(1, 1, D_80196848_ovl3[arg0].unk4);
    temp = 0.2f;
    D_800EA520[omCurrentObj->objId] = arg0;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20041, 0x22, 0x10);
    func_801230E8(0x2028B, 0x2028C, 1);
    func_801230E8(0x2028D, 0x2028E, 0);
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 258/262 [was noted 4/262], whole-function callee-saved permutation (same floor
   DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 258 of 262 words differ (98%). A
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
   stand.

 * class as the rest of this cluster). Replaces the PORT arm's unresolved
 * pc_sndpair_start/pc_sndpair_release wrappers with inline equivalents
 * (myPcSndpairRelease/myPcSndpairStart, mirroring the PORT-guarded
 * static helpers earlier in this file) calling the real func_800A77E8/
 * func_800A7870; also gives PcPlyshotFx a local-scope view for the same
 * reason as func_8015D3C8_ovl3. Known residual defect: the ROM calls
 * func_800A7870 directly inline at each site (jal func_800A7870) rather
 * than through a helper -- IDO did not inline this draft's static
 * wrapper, which is a real (not just register-shaped) source of the
 * diff and a good next lever for whoever picks this back up: inline the
 * pair-unwrap by hand at each of the three call sites. Queued for the
 * permuter. */
/* PORT: per-frame service for the spit-spray cloud created by
 * func_801634D4_ovl3 (anim 0x20041), from asm/nonmatchings/ovl3/plyeff/
 * func_801636A4_ovl3.s. Ends the effect once Kirby leaves the spit action
 * (gKirbyState.unk4 == 1 or action != 0x18); otherwise it sinks 5 units a
 * frame, ramps the growth counter D_800E9720 toward 30, and on a
 * water<->air transition of the parent swaps the looping sound pair
 * (tables D_8019684C/D_80196858, stage picked from the growth counter) and
 * the attached particle effect. The effect GObj's parameter block is
 * re-seated over the parent each frame, the spray hit record is run against
 * enemies with func_80155E58_ovl3 as the break callback -- one-shot gated
 * by the byte at D_8012E860+0x11 -- and anim script D_80191044_ovl3 runs on
 * the parent. The sound pair lives at the coroutine-stack address the init
 * parked in D_800E9FE0 (as_ptr, so no truncation), accessed through the
 * pc_sndpair_* helpers. */
static void myPcSndpairRelease(void *base) {
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

static void myPcSndpairStart(s32 fgm, void *base) {
    u32 *p = base;
    void *h = NULL;
    u16 sid = 0;

    func_800A77E8(fgm, (s32 *) &h, (s32 *) &sid);
    if (p != NULL) {
        p[0] = (u32) (uintptr_t) h;
        *(u16 *) (p + 1) = sid;
    }
}

void func_801636A4_ovl3(s32 arg0) {
    extern s32 D_8019684C_ovl3[];
    extern s32 D_80196858_ovl3[];
    extern s32 D_80193920_ovl3[];
    extern char D_80191044_ovl3[];
    extern f32 D_80198540_ovl3[][8];
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    void *pair = D_800E9FE0[id].as_ptr;
    struct LocalPlyshotFx2 { u32 unk0; f32 unk4, unk8, unkC, unk10, unk14, unk18; };
    struct LocalPlyshotFx2 *fx;
    Vector sp44;

    if ((gKirbyState.unk4 == 1) || (gKirbyState.action != 0x18)) {
        myPcSndpairRelease(pair);
        /* Guarded on PC: the init reads its effect id through N64 struct
         * adjacency (D_80196848_ovl3+4) that the split data emission turns
         * into padding, so D_800EA520 can legitimately be 0 here. */
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    gEntitiesNextPosYArray[id] -= 5.0f;
    if (D_800E9720[id] < 30) {
        D_800E9720[id]++;
    }
    {
        s32 parentWet = (D_800E8AE0[parent] & 6) ? 1 : 0;
        s32 selfWet = (D_800E8AE0[id] & 6) ? 1 : 0;

        D_800E8AE0[id] = D_800E8AE0[parent];
        if (parentWet != selfWet) {
            s32 wet = (D_800E8AE0[id] & 6) ? 1 : 0;
            s32 stage = 5;

            myPcSndpairRelease(pair);
            if (D_800EA520[id] != 0) {
                func_800A22D4(D_800EA520[id]);
            }
            D_800EA520[id] = func_800A8234(1, 1, D_8019684C_ovl3[wet * 2]);
            if (D_800E98E0[id] == 0) {
                s32 t = D_800E9720[id];

                if (t < 3) {
                    stage = 0;
                } else if (t < 6) {
                    stage = 1;
                } else if (t < 12) {
                    stage = 2;
                } else if (t < 18) {
                    stage = 3;
                } else {
                    stage = 4;
                }
                D_800E98E0[id] = 1;
            } else {
                D_800E98E0[id] = 0;
            }
            myPcSndpairStart(D_80196858_ovl3[stage * 2 + wet], pair);
        }
    }
    fx = NULL;
    if (D_800EA520[id] != 0) {
        fx = (struct LocalPlyshotFx2 *) ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    }
    if (fx != NULL) {
        fx->unk4 = gEntitiesNextPosXArray[parent];
        fx->unk8 = gEntitiesNextPosYArray[parent] + 25.0f;
        fx->unkC = gEntitiesNextPosZArray[parent];
        func_800B26D8(&sp44, (s32) (uintptr_t) D_800DFBD0[parent][8], parent);
        fx->unk10 = sp44.x;
        fx->unk14 = sp44.y;
        fx->unk18 = sp44.z;
    }
    if (((u8 *) &D_8012E860)[0x11] == 0) {
        if (func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80193920_ovl3,
                               (s32) (uintptr_t) func_80155E58_ovl3, parent) != 0) {
            ((u8 *) &D_8012E860)[0x11] += 1;
        }
    }
    func_80111C4C(func_80111A04(D_80191044_ovl3, D_800E0D50[id]));
}
#elif defined(PORT)
/* PORT: per-frame service for the spit-spray cloud created by
 * func_801634D4_ovl3 (anim 0x20041), from asm/nonmatchings/ovl3/plyeff/
 * func_801636A4_ovl3.s. Ends the effect once Kirby leaves the spit action
 * (gKirbyState.unk4 == 1 or action != 0x18); otherwise it sinks 5 units a
 * frame, ramps the growth counter D_800E9720 toward 30, and on a
 * water<->air transition of the parent swaps the looping sound pair
 * (tables D_8019684C/D_80196858, stage picked from the growth counter) and
 * the attached particle effect. The effect GObj's parameter block is
 * re-seated over the parent each frame, the spray hit record is run against
 * enemies with func_80155E58_ovl3 as the break callback -- one-shot gated
 * by the byte at D_8012E860+0x11 -- and anim script D_80191044_ovl3 runs on
 * the parent. The sound pair lives at the coroutine-stack address the init
 * parked in D_800E9FE0 (as_ptr, so no truncation), accessed through the
 * pc_sndpair_* helpers. */
void func_801636A4_ovl3(s32 arg0) {
    extern s32 D_8019684C_ovl3[];
    extern s32 D_80196858_ovl3[];
    extern s32 D_80193920_ovl3[];
    extern char D_80191044_ovl3[];
    extern f32 D_80198540_ovl3[][8];
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    void *pair = D_800E9FE0[id].as_ptr;
    struct PcPlyshotFx *fx;
    Vector sp44;

    if ((gKirbyState.unk4 == 1) || (gKirbyState.action != 0x18)) {
        pc_sndpair_release(pair);
        /* Guarded on PC: the init reads its effect id through N64 struct
         * adjacency (D_80196848_ovl3+4) that the split data emission turns
         * into padding, so D_800EA520 can legitimately be 0 here. */
        if (D_800EA520[id] != 0) {
            func_800A22D4(D_800EA520[id]);
        }
        func_800B1900((u16) id);
        return;
    }
    gEntitiesNextPosYArray[id] -= 5.0f;
    if (D_800E9720[id] < 30) {
        D_800E9720[id]++;
    }
    {
        s32 parentWet = (D_800E8AE0[parent] & 6) ? 1 : 0;
        s32 selfWet = (D_800E8AE0[id] & 6) ? 1 : 0;

        D_800E8AE0[id] = D_800E8AE0[parent];
        if (parentWet != selfWet) {
            s32 wet = (D_800E8AE0[id] & 6) ? 1 : 0;
            s32 stage = 5;

            pc_sndpair_release(pair);
            if (D_800EA520[id] != 0) {
                func_800A22D4(D_800EA520[id]);
            }
            D_800EA520[id] = func_800A8234(1, 1, D_8019684C_ovl3[wet * 2]);
            if (D_800E98E0[id] == 0) {
                s32 t = D_800E9720[id];

                if (t < 3) {
                    stage = 0;
                } else if (t < 6) {
                    stage = 1;
                } else if (t < 12) {
                    stage = 2;
                } else if (t < 18) {
                    stage = 3;
                } else {
                    stage = 4;
                }
                D_800E98E0[id] = 1;
            } else {
                D_800E98E0[id] = 0;
            }
            pc_sndpair_start(D_80196858_ovl3[stage * 2 + wet], pair);
        }
    }
    fx = NULL;
    if (D_800EA520[id] != 0) {
        fx = (struct PcPlyshotFx *) ((GObj *) (uintptr_t) (u32) D_800EA520[id])->unk4C;
    }
    if (fx != NULL) {
        fx->unk4 = gEntitiesNextPosXArray[parent];
        fx->unk8 = gEntitiesNextPosYArray[parent] + 25.0f;
        fx->unkC = gEntitiesNextPosZArray[parent];
        func_800B26D8(&sp44, (s32) (uintptr_t) D_800DFBD0[parent][8], parent);
        fx->unk10 = sp44.x;
        fx->unk14 = sp44.y;
        fx->unk18 = sp44.z;
    }
    if (((u8 *) &D_8012E860)[0x11] == 0) {
        if (func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80193920_ovl3,
                               (s32) (uintptr_t) func_80155E58_ovl3, parent) != 0) {
            ((u8 *) &D_8012E860)[0x11] += 1;
        }
    }
    func_80111C4C(func_80111A04(D_80191044_ovl3, D_800E0D50[id]));
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_801636A4_ovl3.s")
#endif

/* D_80197150_ovl3 now emitted by this TU */
/* D_80197158_ovl3 now emitted by this TU */
extern void func_800AA018(s32);

void func_80163AC0_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + D_800EC660[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20006, 0x1869F, 0x10);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800AA018(0x2000F);
        func_800AA154(0x2000E);
    } else {
        func_800AA018(0x2000B);
        func_800AA154(0x2000A);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

/* D_80197154_ovl3 now emitted by this TU */

void func_80163C48_ovl3(s32 arg0) {
    f32 temp;

    gEntitiesNextPosXArray[omCurrentObj->objId] = gKirbyState.unk144;
    gEntitiesNextPosYArray[omCurrentObj->objId] = gKirbyState.unk148;
    gEntitiesNextPosZArray[omCurrentObj->objId] = gKirbyState.unk14C;
    if (gKirbyState.abilityInUse != 0xF) {
        func_800A9864(0x20004, 0x1869F, 0x10);
        func_800AA018(0x20004);
        func_800AA154(0x20003);
    } else {
        temp = 0.2f;
        gEntitiesScaleXArray[omCurrentObj->objId] = temp;
        gEntitiesScaleYArray[omCurrentObj->objId] = temp;
        gEntitiesScaleZArray[omCurrentObj->objId] = temp;
        func_800A9864(0x20005, 0x1869F, 0x10);
        func_800AA018(0x20008);
        func_800AA154(0x20007);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#include "DObj.h"
extern struct GObjProcess *gEntityGObjProcessArray5[];
void func_800B491C(GObj *);
void procMainStub(GObj *);
void setProcessMain(struct GObjProcess *, void (*)(GObj *));

void func_80163D84_ovl3(GObj *arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B491C;
    setProcessMain(gEntityGObjProcessArray5[omCurrentObj->objId], procMainStub);
    func_800A9864(0x100D7, 0x1869F, 0x10);
    arg0->data.dobj->pos.v.x = gEntitiesNextPosXArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.y = gEntitiesNextPosYArray[omCurrentObj->objId];
    arg0->data.dobj->pos.v.z = gEntitiesNextPosZArray[omCurrentObj->objId];
    arg0->data.dobj->angle.v.x = 0.0f;
    arg0->data.dobj->angle.v.y = 0.0f;
    arg0->data.dobj->angle.v.z = 0.0f;
    arg0->data.dobj->scale.v.x = 1.0f;
    arg0->data.dobj->scale.v.y = 1.0f;
    arg0->data.dobj->scale.v.z = 1.0f;
    func_800AA018(0x10611);
    func_800AA154(0x10610);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80163ED0_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
    gEntitiesNextPosYArray[omCurrentObj->objId] =
        gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + D_800EC660[omCurrentObj->objId];
    gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20006, 0x1869F, 0x10);
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800AA018(0x2000D);
        func_800AA154(0x2000C);
    } else {
        func_800AA018(0x2000B);
        func_800AA154(0x2000A);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80164058_ovl3(s32 arg0) {
    s32 sp20[0x40];
    f32 temp = 0.2f;

    D_800E98E0[omCurrentObj->objId] = (s32) sp20;
    D_800DF150[omCurrentObj->objId] = func_80164130_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x20042, 0x22, 0x10);
    func_801230E8(0x20292, 0x20293, 1);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

#ifdef NON_MATCHING
/* FACTORY: 3/124, register-shaped floor -- confirmed 2026-08-23. Everything
   matches except the scratch register IDO picks for the D_800E98E0 base: the
   ROM materialises the address in $t0 then loads the value into $a1 (the
   call-argument register); IDO always computes straight into $a1 since that
   is where the value is destined for the call. Levers already applied to get
   here: `s32 kind` for the switch value (8 -> 3), the chained `p[2] = ...`
   inside the call argument (10 -> 8) and `f32 temp` declared FIRST (frame
   0x30 -> 0x28).
   Swept with no effect (all reproduce the identical 3/124, same insn count):
   a local for the loaded value, for the divide and for objId, *(p+2),
   ((s32 *) D_800E98E0)[i], s32/void return types on func_80111C4C /
   func_80152070_ovl3 / func_80155D50_ovl3, splitting `p[2] = D_800E98E0[...]`
   into its own statement ahead of the call (makes it WORSE: 10/124, extra
   scratch regs t6/t9/t1 appear), and a named `s32 val` local read once and
   reused for both the p[2] store and the call argument (still exactly
   3/124, byte-identical diff). This is the "CSE'd load landing in the
   neighbouring register" floor class from LEVERS.md's guard-on-the-second-
   variant list -- no source spelling reaches the ROM's $t0/$a1 split.
   Good permuter seed. */
extern char D_80191268_ovl3[];
extern char D_80191288_ovl3[];
extern char D_801912A8_ovl3[];
extern s32 D_80193C40_ovl3[];
extern s32 D_80193C4C_ovl3[];
extern s32 D_80193C58_ovl3[];
extern f32 D_80193B40_ovl3[][4];

void func_80164130_ovl3(struct GObj *arg0) {
    extern f32 D_80198540_ovl3[][8];
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    f32 temp;
    s32 *p;
    f32 **h;
    s32 kind;

    gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    temp = D_800DFBD0[omCurrentObj->objId][1]->scale.v.y;
    kind = D_800EC2E0[omCurrentObj->objId].as_s32;
    switch (kind) {
    case 5:
        p = D_80193C40_ovl3;
        h = (f32 **) func_80111A04(D_80191268_ovl3, omCurrentObj->objId);
        break;
    case 0x20:
        p = D_80193C4C_ovl3;
        h = (f32 **) func_80111A04(D_80191288_ovl3, omCurrentObj->objId);
        break;
    default:
        p = D_80193C58_ovl3;
        h = (f32 **) func_80111A04(D_801912A8_ovl3, omCurrentObj->objId);
        break;
    }
    h[8][6] = h[8][6] * temp;
    h[8][3] = gEntitiesNextPosXArray[omCurrentObj->objId];
    h[8][4] = gEntitiesNextPosYArray[omCurrentObj->objId];
    h[8][5] = gEntitiesNextPosZArray[omCurrentObj->objId];
    func_80111C4C((s32) h);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId];
    func_80152070_ovl3(D_80193B40_ovl3, (f32 (*)[4]) (p[2] = D_800E98E0[omCurrentObj->objId]), 0x10, temp / 3.0f);
    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) p, 0, omCurrentObj->objId);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80164130_ovl3.s")
#endif
#ifdef NON_MATCHING
/* rettype_screen.py FALSE POSITIVE, settled 2026-08-25: it flags
   `b .L801644A0_ovl3` with `lhu $v0, 0x0($s0)` in the delay slot as a value
   returned to the epilogue.  .L801644A0_ovl3 is not the epilogue -- it is the
   inner wait loop's OWN header, and the `lhu` is that loop's re-read of
   gPlayerControllers[0].buttonHeld.  The function is `for (;;)` around
   ohSleep, so the block at 801644C0 is unreachable dead code and $v0 never
   reaches it.  `void` is right; do not retype it.
   1 real diff (the rest of the 58/119 is the resulting one-instruction shift):
   the ROM materialises gPlayerControllers TWICE -- `lui $v0; lhu %lo(...)` for
   the pre-loop read and a separate `lui/addiu $s0` base for the three reads
   inside the loop.  IDO promotes the base in the preheader and uses it for the
   pre-loop read too, so we come out one instruction short.
   Swept with no effect: for-init vs separate statement, `((u16 *) gPC)[0]`,
   vu16 on the pre-loop read only, splitting the mask into its own statement,
   `0x300 & x`, swapping the if/else arms, an explicit `Controller *c` for the
   loop reads (112/118), do{}while(0) and if(1){} block splits (70), an
   intervening call (82). */
extern Controller_800D6FE8 gPlayerControllers[];

void func_80164320_ovl3(s32 arg0) {
    s32 v;

    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801644EC_ovl3;
    func_800A9864(0x20043, 0x22, 0x10);
    D_800E98E0[omCurrentObj->objId] = 1;
    func_800A9760(0x20044);
    func_800AA018(0x20298);
    while (gKirbyState.unk44 == 0) {
        ohSleep(1);
    }
    v = gPlayerControllers[0].buttonHeld & 0x300;
    for (;;) {
        if (v == 0) {
            D_800E98E0[omCurrentObj->objId] = 0;
            func_800A9760(0x20043);
            func_800AA018(0x20295);
            for (;;) {
                v = gPlayerControllers[0].buttonHeld & 0x300;
                if (v != 0) {
                    break;
                }
                ohSleep(1);
            }
        } else {
            D_800E98E0[omCurrentObj->objId] = 1;
            func_800A9760(0x20044);
            func_800AA018(0x20298);
            for (;;) {
                v = gPlayerControllers[0].buttonHeld & 0x300;
                if (v == 0) {
                    break;
                }
                ohSleep(1);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80164320_ovl3.s")
#endif
/* The declarations stay INSIDE the body on purpose: at file scope they would
   be visible to every function below, and this file declares
   func_80152070_ovl3 in-body in three other places. */
void func_801644EC_ovl3(s32 arg0) {
    extern char D_801912EC_ovl3[];
    extern f32 D_80193C64_ovl3[][4];
    extern f32 D_80198700_ovl3[][4];
    extern s32 D_80193D64_ovl3[];
    extern s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);
    f32 **h;

    if (D_8012E860 != 0) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            h = (f32 **) func_80111A04(D_801912EC_ovl3, omCurrentObj->objId);
            h[8][6] = 85.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_80193C64_ovl3, D_80198700_ovl3, 0x10, 1.25f);
        } else {
            h = (f32 **) func_80111A04(D_801912EC_ovl3, omCurrentObj->objId);
            h[8][6] = 45.0f;
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_80193C64_ovl3, D_80198700_ovl3, 0x10, 0.7f);
        }
        func_80111C4C((s32) h);
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80193D64_ovl3, 0,
                           omCurrentObj->objId);
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}
void func_801646A4_ovl3(s32 arg0) {

    D_800EA520[omCurrentObj->objId] = 0;
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_80164914_ovl3;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        func_800A9864(0x20045, 0x22, 0x10);
        func_800AA154(0x2029B);
        break;
    case 1:
        func_800A9864(0x20045, 0x22, 0x10);
        func_800AA154(0x2029D);
        break;
    case 2:
        func_800A9864(0x20046, 0x22, 0x10);
        func_800AA018(0x2029F);
        D_800DF310[omCurrentObj->objId] = func_80164890_ovl3;
        func_800AF27C();
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
        }
        break;
    }
    func_800B1900((u16) omCurrentObj->objId);
}

void func_80164890_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    if (arg1 == 0) {
        if (arg2 != 0.0f) {
            D_800EA520[omCurrentObj->objId] = func_800A8100(1, 1, 0x28, D_800DFBD0[omCurrentObj->objId][1]);
        }
    }
}

void func_80164914_ovl3(s32 arg0) {
    if (gKirbyState.action != 0x1A) {
        if (D_800EA520[omCurrentObj->objId] != 0) {
            func_800A22D4(D_800EA520[omCurrentObj->objId]);
        }
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 327/329 [was noted 2/329], whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 327 of 329 words differ (99%). A
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

/* PORT: the ability-star init coroutine (dropped-ability star), from
 * asm/nonmatchings/ovl3/plyeff/func_80164980_ovl3.s. Parks a 16x4-float
 * bg-break line buffer from this sleeping frame in D_800E9AA0 for
 * func_80164EA8_ovl3 (the decompiled service routine above), inherits the
 * parent's height/heading/level-slot/water state and velocities with a
 * decay toward zero (halved decay in water), and starts the per-kind
 * anim/fgm triple from the D_80196888 table (stride 3 words). */
void func_80164980_ovl3(s32 arg0) {
    extern s32 D_80196888_ovl3[];
    extern s32 D_8019688C_ovl3[];
    extern s32 D_80196890_ovl3[];
    extern f32 D_80197160_ovl3;
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 kind;
    f32 v;
    f32 lines[16][4];

    D_800E98E0[id] = 0;
    D_800EA6E0[id] = 0.0f;
    D_800E9AA0[id].as_ptr = lines;
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_80164EA8_ovl3;
    func_800AECC0(D_800E09D0[parent]);
    func_800AED20(D_800E09D0[parent]);
    gEntitiesScaleXArray[id] = D_80197160_ovl3;
    gEntitiesScaleYArray[id] = D_80197160_ovl3;
    gEntitiesScaleZArray[id] = D_80197160_ovl3;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[parent];
    gEntitiesAngleYArray[id] = gEntitiesAngleYArray[parent];
    D_800E5F90[id] = D_800E5F90[parent];
    D_800E8AE0[id] = D_800E8AE0[parent];
    D_800E64D0[id] = D_800E64D0[parent];
    v = D_800E64D0[parent];
    D_800E6850[id] = (v < 0.0f) ? -v : v;
    if (D_800E64D0[id] > 0.0f) {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? -0.125f : -0.25f;
    } else {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? 0.125f : 0.25f;
    }
    D_800E3210[id] = D_800E3210[parent];
    v = D_800E3210[parent];
    D_800E3C90[id] = (v < 0.0f) ? -v : v;
    if (D_800E3210[id] > 0.0f) {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? -0.5f : -1.0f;
    } else {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? 0.5f : 1.0f;
    }
    play_sound(0x17);
    kind = D_800EC2E0[id].as_u32;
    func_800A9864(D_80196888_ovl3[kind * 3], 0x22, 0x10);
    func_800AA018(D_80196890_ovl3[kind * 3]);
    func_800AA154(D_8019688C_ovl3[kind * 3]);
    D_800E98E0[id] += 1;
    curObjSleepForever();
}
#elif defined(PORT)
/* PORT: the ability-star init coroutine (dropped-ability star), from
 * asm/nonmatchings/ovl3/plyeff/func_80164980_ovl3.s. Parks a 16x4-float
 * bg-break line buffer from this sleeping frame in D_800E9AA0 for
 * func_80164EA8_ovl3 (the decompiled service routine above), inherits the
 * parent's height/heading/level-slot/water state and velocities with a
 * decay toward zero (halved decay in water), and starts the per-kind
 * anim/fgm triple from the D_80196888 table (stride 3 words). */
void func_80164980_ovl3(s32 arg0) {
    extern s32 D_80196888_ovl3[];
    extern s32 D_8019688C_ovl3[];
    extern s32 D_80196890_ovl3[];
    extern f32 D_80197160_ovl3;
    s32 id = omCurrentObj->objId;
    s32 parent = D_800E0D50[id];
    s32 kind;
    f32 v;
    f32 lines[16][4];

    D_800E98E0[id] = 0;
    D_800EA6E0[id] = 0.0f;
    D_800E9AA0[id].as_ptr = lines;
    D_800DEF90[id] = func_800B4954;
    D_800DF150[id] = (void (*)(struct GObj *)) func_80164EA8_ovl3;
    func_800AECC0(D_800E09D0[parent]);
    func_800AED20(D_800E09D0[parent]);
    gEntitiesScaleXArray[id] = D_80197160_ovl3;
    gEntitiesScaleYArray[id] = D_80197160_ovl3;
    gEntitiesScaleZArray[id] = D_80197160_ovl3;
    gEntitiesNextPosYArray[id] = gEntitiesNextPosYArray[parent];
    gEntitiesAngleYArray[id] = gEntitiesAngleYArray[parent];
    D_800E5F90[id] = D_800E5F90[parent];
    D_800E8AE0[id] = D_800E8AE0[parent];
    D_800E64D0[id] = D_800E64D0[parent];
    v = D_800E64D0[parent];
    D_800E6850[id] = (v < 0.0f) ? -v : v;
    if (D_800E64D0[id] > 0.0f) {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? -0.125f : -0.25f;
    } else {
        D_800E6690[id] = (D_800E8AE0[id] & 6) ? 0.125f : 0.25f;
    }
    D_800E3210[id] = D_800E3210[parent];
    v = D_800E3210[parent];
    D_800E3C90[id] = (v < 0.0f) ? -v : v;
    if (D_800E3210[id] > 0.0f) {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? -0.5f : -1.0f;
    } else {
        D_800E3750[id] = (D_800E8AE0[id] & 6) ? 0.5f : 1.0f;
    }
    play_sound(0x17);
    kind = D_800EC2E0[id].as_u32;
    func_800A9864(D_80196888_ovl3[kind * 3], 0x22, 0x10);
    func_800AA018(D_80196890_ovl3[kind * 3]);
    func_800AA154(D_8019688C_ovl3[kind * 3]);
    D_800E98E0[id] += 1;
    curObjSleepForever();
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80164980_ovl3.s")
#endif

#ifdef NON_MATCHING
extern char D_801915F8_ovl3[];
extern s32 *D_80194788_ovl3[];
extern f32 D_80197164_ovl3;
extern f32 D_80197168_ovl3;
extern f32 D_8019716C_ovl3;
extern f32 D_80197170_ovl3;
extern f32 D_801968B8_ovl3[];
extern f32 (*D_801968C8_ovl3[])[4];

void func_80164EA8_ovl3(s32 arg0) {
    f32 **h;
    s32 *p;
    f32 step;
    s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);

    if (D_800E98E0[omCurrentObj->objId] != 0) {
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    h = (f32 **) func_80111A04(D_801915F8_ovl3, omCurrentObj->objId);
    h[8][6] = D_800EA6E0[omCurrentObj->objId] * D_801968B8_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32];
    func_80111C4C((s32) h);
    p = D_80194788_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32];
    func_80152070_ovl3(D_801968C8_ovl3[D_800EC2E0[omCurrentObj->objId].as_s32],
                       (f32 (*)[4]) (p[2] = D_800E9AA0[omCurrentObj->objId].as_s32), 0x10,
                       D_800EA6E0[omCurrentObj->objId]);
    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) p, 0, omCurrentObj->objId);
    if (D_800EA6E0[omCurrentObj->objId] != 1.0f) {
        if (D_800E8AE0[omCurrentObj->objId] & 6) {
            step = D_80197164_ovl3;
        } else {
            step = D_80197168_ovl3;
        }
        D_800EA6E0[omCurrentObj->objId] = D_800EA6E0[omCurrentObj->objId] + step;
        if (D_800EA6E0[omCurrentObj->objId] > 1.0f) {
            D_800EA6E0[omCurrentObj->objId] = 1.0f;
        }
    }
    if (D_800E64D0[omCurrentObj->objId] != 0.0f) {
        if (((D_800E6690[omCurrentObj->objId] > 0.0f) && (D_800E64D0[omCurrentObj->objId] >= 0.0f)) ||
            ((D_800E6690[omCurrentObj->objId] < 0.0f) && (D_800E64D0[omCurrentObj->objId] <= 0.0f))) {
            D_800E6690[omCurrentObj->objId] = 0.0f;
            D_800E64D0[omCurrentObj->objId] = D_800E6690[omCurrentObj->objId];
            D_800E6850[omCurrentObj->objId] = D_8019716C_ovl3;
        }
    }
    if (D_800E3210[omCurrentObj->objId] != 0.0f) {
        if (((D_800E3750[omCurrentObj->objId] > 0.0f) && (D_800E3210[omCurrentObj->objId] >= 0.0f)) ||
            ((D_800E3750[omCurrentObj->objId] < 0.0f) && (D_800E3210[omCurrentObj->objId] <= 0.0f))) {
            D_800E3750[omCurrentObj->objId] = 0.0f;
            D_800E3210[omCurrentObj->objId] = D_800E3750[omCurrentObj->objId];
            D_800E3C90[omCurrentObj->objId] = D_80197170_ovl3;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80164EA8_ovl3.s")
#endif

extern Controller_800D6FE8 gPlayerControllers[];
/* D_80197174_ovl3 now emitted by this TU */
void func_800B5094(GObj *);
void func_801653AC_ovl3(s32);

void func_801651FC_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    D_800E0650[omCurrentObj->objId] = 1;
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800DF150[omCurrentObj->objId] = func_801653AC_ovl3;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x2004B, 0x22, 0x10);
    play_sound(0x23);
    func_800AA154(0x202AA);
    while (gPlayerControllers[0].buttonHeld & 0x400) {
        ohSleep(1);
    }
    func_800AA018(0x202AB);
    func_800AA154(0x202AC);
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801653AC_ovl3(s32 arg0) {
    if ((gKirbyState.unk30 != 0) || (gKirbyState.action != 0xE)) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

void func_801653F4_ovl3(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_801654CC_ovl3;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        func_800A9864(0x20050, 0x22, 0x10);
        func_800AA154(0x202B5);
    } else {
        func_800A9864(0x20051, 0x22, 0x10);
        func_801230E8(0x202B7, 0x202B8, 1);
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_801654CC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

extern f32 D_80197178_ovl3;
void func_801657BC_ovl3(s32);

#ifdef NON_MATCHING
void func_80165504_ovl3(s32 arg0) {
    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800DF150[omCurrentObj->objId] = func_801657BC_ovl3;
    D_800E0F10[omCurrentObj->objId] = 1;
    gEntitiesScaleXArray[omCurrentObj->objId] = D_80197178_ovl3;
    gEntitiesScaleYArray[omCurrentObj->objId] = D_80197178_ovl3;
    gEntitiesScaleZArray[omCurrentObj->objId] = D_80197178_ovl3;
    D_800E98E0[omCurrentObj->objId] = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
    func_800A9864(0x20055, 0x22, 0x10);
    while (1) {
        if (D_800E98E0[omCurrentObj->objId] == 0) {
            func_800AA018(0x202C1);
        } else if (D_800E98E0[omCurrentObj->objId] == 1) {
            func_800A9760(0x20056);
            func_800AA018(0x202C2);
        } else if (D_800E98E0[omCurrentObj->objId] == 2) {
            func_800A9760(0x20057);
            func_800AA018(0x202C3);
        } else if (D_800E98E0[omCurrentObj->objId] == 3) {
            ohSleep(2);
            D_800E98E0[omCurrentObj->objId] = 4;
            ohSleep(5);
            break;
        }
        while (D_800E98E0[omCurrentObj->objId] == D_800E98E0[D_800E0D50[omCurrentObj->objId]]) {
            ohSleep(1);
        }
        D_800E98E0[omCurrentObj->objId] = D_800E98E0[D_800E0D50[omCurrentObj->objId]];
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80165504_ovl3.s")
#endif

extern f32 D_801968D8_ovl3[];
extern s32 D_80191C00_ovl3[];
extern s32 D_801954F4_ovl3[];
extern f32 D_801953F4_ovl3[][4];
extern f32 D_80198700_ovl3[][4];
extern s32 D_80197DDC_ovl3[][8];
extern f32 D_80198540_ovl3[][8];
s32 func_80152070_ovl3(f32 (*)[4], f32 (*)[4], u8, f32);

void func_801657BC_ovl3(s32 arg0) {
    f32 val;

    if (D_8012E860 != 0) {
        val = D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]];
        if (val != 0.0f) {
            gEntitiesAngleYArray[omCurrentObj->objId] = 0.0;
            func_8016854C_ovl3((s32) D_80191C00_ovl3, 0, D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]]);
            gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
            func_80152070_ovl3(D_801953F4_ovl3, D_80198700_ovl3, 0x10,
                               D_801968D8_ovl3[D_800E98E0[omCurrentObj->objId]]);
            func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_801954F4_ovl3, 0,
                               omCurrentObj->objId);
        } else {
            D_80197DDC_ovl3[omCurrentObj->objId][0] = 0;
        }
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

/* D_8019717C_ovl3 now emitted by this TU */
/* D_80197180_ovl3 now emitted by this TU */
extern f32 D_80198800_ovl3[];
void func_80165CD8_ovl3(struct GObj *);

void func_8016593C_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    D_800DF150[omCurrentObj->objId] = func_80165CD8_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            D_800E0650[omCurrentObj->objId] = 1;
            D_800DEF90[omCurrentObj->objId] = func_800B5094;
            D_800E0F10[omCurrentObj->objId] = 0xE;
            func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
            func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
            func_800A9864(0x2004C, 0x22, 0x10);
            func_800AA154(0x202AD);
            func_800B1900((u16) omCurrentObj->objId);
        case 1:
            D_800EA6E0[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]] + 40.0f;
            D_800EA8A0[omCurrentObj->objId] = 25.0f;
            D_800EAA60[omCurrentObj->objId] = -2.0f;
            D_800EAC20[omCurrentObj->objId] = 0.35f;
            D_800EADE0[omCurrentObj->objId] = D_800EAC20[omCurrentObj->objId] / 15.0f;
            D_800E9720[omCurrentObj->objId] = 0x17;
            D_800E9560[omCurrentObj->objId] = 7;
            D_800EAFA0[omCurrentObj->objId] = 0.0f;
            func_8015488C_ovl3(omCurrentObj->objId, D_80198800_ovl3);
            gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosXArray[omCurrentObj->objId] = gEntitiesNextPosXArray[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosYArray[omCurrentObj->objId] = gEntitiesNextPosYArray[D_800E0D50[omCurrentObj->objId]];
            gEntitiesNextPosZArray[omCurrentObj->objId] = gEntitiesNextPosZArray[D_800E0D50[omCurrentObj->objId]];
            play_sound(0x1C);
            func_800A9864(0x2004D, 0x22, 0x10);
            func_801230E8(0x202AF, 0x202B0, 0);
            curObjSleepForever();
            break;
    }
}

extern char D_801918A4_ovl3[];
extern char D_801918E8_ovl3[];
extern f32 D_80194C34_ovl3[][4];
extern f32 D_80194D34_ovl3[];
extern f32 D_80194D40_ovl3[][4];
extern s32 D_80194E40_ovl3[];
/* D_80197184_ovl3 now emitted by this TU */
extern void func_8011BF4C(f32 *, s32);
extern s32 func_80152124_ovl3(f32 (*)[4], f32 (*)[4], u8, f32, f32, f32);

void func_80165CD8_ovl3(struct GObj *arg0) {
    f32 **h;

    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        if (D_8012E860 == 0) {
            func_800B1900((u16) omCurrentObj->objId);
        }
        return;
    }
    if (D_800E9720[omCurrentObj->objId]-- == 0) {
        func_800B1900((u16) omCurrentObj->objId);
    } else {
        D_800EA6E0[omCurrentObj->objId] =
            (D_800EA8A0[omCurrentObj->objId] = D_800EAA60[omCurrentObj->objId] + D_800EA8A0[omCurrentObj->objId]) +
            D_800EA6E0[omCurrentObj->objId];
        if (D_800EAC20[omCurrentObj->objId] != 1.0f) {
            D_800EAC20[omCurrentObj->objId] = D_800EADE0[omCurrentObj->objId] + D_800EAC20[omCurrentObj->objId];
            if (D_800EAC20[omCurrentObj->objId] >= 1.0f) {
                D_800EAC20[omCurrentObj->objId] = 1.0f;
            }
        }
        h = (f32 **) func_80111A04(D_801918A4_ovl3, omCurrentObj->objId);
        h[8][3] = gEntitiesNextPosXArray[omCurrentObj->objId];
        h[8][4] = D_800EA6E0[omCurrentObj->objId];
        h[8][5] = gEntitiesNextPosZArray[omCurrentObj->objId];
        h[8][6] = D_800EAC20[omCurrentObj->objId] * 120.0f;
        func_80111C4C((s32) h);
        func_80152070_ovl3(D_80194C34_ovl3, D_80198700_ovl3, 0x10, D_800EAC20[omCurrentObj->objId]);
        D_80198540_ovl3[omCurrentObj->objId - 60][3] = D_80198540_ovl3[omCurrentObj->objId - 60][0];
        D_80198540_ovl3[omCurrentObj->objId - 60][4] = D_80198540_ovl3[omCurrentObj->objId - 60][1];
        D_80198540_ovl3[omCurrentObj->objId - 60][5] = D_80198540_ovl3[omCurrentObj->objId - 60][2];
        D_80198540_ovl3[omCurrentObj->objId - 60][0] = gEntitiesNextPosXArray[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][1] = D_800EA6E0[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][2] = gEntitiesNextPosZArray[omCurrentObj->objId];
        D_80198540_ovl3[omCurrentObj->objId - 60][6] = gEntitiesAngleYArray[omCurrentObj->objId];
        *(s32 *) &D_80198540_ovl3[omCurrentObj->objId - 60][7] = (s32) D_80194D34_ovl3;
        func_8011BF4C(D_80198540_ovl3[omCurrentObj->objId - 60], 0);
    }
    if (D_800E9560[omCurrentObj->objId] != 0) {
        D_800EAFA0[omCurrentObj->objId] = D_800EAFA0[omCurrentObj->objId] + 0.15f;
        func_80111C4C(func_80168408_ovl3((s32) D_801918E8_ovl3, 0, D_800EAFA0[omCurrentObj->objId]));
        func_80152124_ovl3(D_80194D40_ovl3, D_80198700_ovl3, 0x10, D_800EAFA0[omCurrentObj->objId], 50.0f, 0.0f);
        func_80155D50_ovl3(D_80198800_ovl3, (s32) D_80194E40_ovl3, 0, omCurrentObj->objId);
        D_800E9560[omCurrentObj->objId]--;
    }
}

extern f32 D_8012E7FC[];
/* D_80197188_ovl3 now emitted by this TU */
extern void func_80166210_ovl3(struct GObj *);

void func_801660F4_ovl3(s32 arg0) {
    D_800E0650[omCurrentObj->objId] = 1;
    D_800DF150[omCurrentObj->objId] = func_80166210_ovl3;
    gEntitiesScaleZArray[omCurrentObj->objId] = gEntitiesScaleYArray[omCurrentObj->objId] =
        gEntitiesScaleXArray[omCurrentObj->objId] = D_8012E7FC[1] * 0.2f;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x2004E, 0x22, 0x10);
    curObjSleepForever();
}

/* D_8019718C_ovl3 now emitted by this TU */
/* D_80197190_ovl3 now emitted by this TU */
extern char D_8019181C_ovl3[];
extern f32 D_80194E4C_ovl3[][4];
extern f32 D_80194F4C_ovl3[];

void func_80166210_ovl3(struct GObj *arg0) {
    Vector sp44;
    s32 parent;
    f32 **h;
    struct DObj *d;

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) omCurrentObj->objId);
        return;
    }
    parent = D_800E0D50[omCurrentObj->objId];
    func_800B2340(&sp44, (s32) (uintptr_t) D_800DFBD0[parent][1], parent);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp44.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp44.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp44.z;
    d = D_800DFBD0[parent][2];
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.x = d->angle.v.x;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.y = d->angle.v.y;
    D_800DFBD0[omCurrentObj->objId][2]->angle.v.z = d->angle.v.z;
    gEntitiesAngleXArray[omCurrentObj->objId] = gEntitiesAngleXArray[parent];
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[parent];
    gEntitiesAngleZArray[omCurrentObj->objId] = gEntitiesAngleZArray[parent];
    if (gKirbyState.unk40 != 1.0f) {
        gEntitiesScaleXArray[omCurrentObj->objId] = gKirbyState.unk40 * 0.2f;
        gEntitiesScaleYArray[omCurrentObj->objId] = gKirbyState.unk40 * 0.2f;
        gEntitiesScaleZArray[omCurrentObj->objId] = gKirbyState.unk40 * 0.2f;
        /* ROM word 3CF5C290, which is one ULP ABOVE the nearest float to
         * 0.03: IDO turns the literal `0.03f` into 3CF5C28F (measured), so
         * the constant is spelled at full precision to reproduce the pool
         * entry. The original source most likely folded it from a product
         * (0.2f * 0.15f and 0.1f * 0.3f both yield 3CF5C290), but nothing
         * in the ROM says which, so it is written as the value itself. */
        gKirbyState.unk40 = gKirbyState.unk40 + 0.030000001f;
        if (gKirbyState.unk40 >= 1.0f) {
            gKirbyState.unk40 = 1.0f;
        }
    }
    h = (f32 **) func_80111A04(D_8019181C_ovl3, omCurrentObj->objId);
    h[8][6] = 44.0f * gKirbyState.unk40;
    h[8][4] = 37.5f * gKirbyState.unk40;
    func_80111C4C((s32) h);
    gEntitiesAngleYArray[omCurrentObj->objId] = D_800E17D0[parent];
    func_80152070_ovl3(D_80194E4C_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40);
    if (func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80194F4C_ovl3, 0, omCurrentObj->objId) != 0) {
        D_800E83E0[D_800E0D50[omCurrentObj->objId]] = 1;
    }
    gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[parent];
}

/* D_80197194_ovl3 now emitted by this TU */
extern s32 D_801968EC_ovl3[];
void func_800B5094(GObj *);
void func_80166768_ovl3(s32);

void func_80166588_ovl3(s32 arg0) {
    s32 val;
    s32 sentinel = -1;
    f32 temp = 0.2f;

    D_800E0650[omCurrentObj->objId] = 1;
    D_800E98E0[omCurrentObj->objId] = sentinel;
    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 8;
    D_800DF150[omCurrentObj->objId] = func_80166768_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2004F, 0x22, 0x10);
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    for (;;) {
        val = gKirbyState.unk44;
        if (sentinel == val) {
            break;
        }
        if (val != D_800E98E0[omCurrentObj->objId]) {
            D_800E98E0[omCurrentObj->objId] = val;
            func_800AA018(D_801968EC_ovl3[val]);
        }
        ohSleep(1);
    }
    curObjSleepForever();
}

#ifdef MIPS_TO_C
/* FACTORY: 271/275 [was noted 4/275], whole-function callee-saved permutation (same floor class documented across this cluster). Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 271 of 275 words differ (98%). A
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

/* PORT: service routine for func_80166588_ovl3's charge-shot above, from
 * asm/nonmatchings/ovl3/plyeff/func_80166768_ovl3.s. Idles until the
 * charge state gKirbyState.unk44 reaches -1 (release); then scans enemy
 * tracks 14..59 for live kinds 0x17/0x18/0x1A that pass the ovl7 filter
 * func_8019F234_ovl7, insertion-sorts the three nearest by |horizontal
 * distance to Kirby| (func_800F9828(0, i); the 9999 sentinel means no
 * distance), back-fills missing slots with the nearest, and spawns
 * D_800E98E0[id]+1 (the reached charge stage) type-7 shots, giving each its
 * slot index, the parent, its target track in D_800E1ED0[t-112] and its
 * spread angle from D_801968F8 (mirrored against pi when facing left). */
void func_80166768_ovl3(s32 arg0) {
    extern f32 D_80197198_ovl3;
    extern f32 D_8019719C_ovl3;
    extern f32 D_801968F8_ovl3[];
    s32 id = omCurrentObj->objId;
    s32 targets[3];
    s32 i;
    s32 k;

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 != -1) {
        return;
    }
    targets[0] = 0;
    targets[1] = 0;
    targets[2] = 0;
    for (i = 0xE; i != 0x3C; i++) {
        s32 kindv = D_800DD710[i];
        f32 b;

        if (kindv == -1) {
            continue;
        }
        if ((kindv != 0x17) && (kindv != 0x1A) && (kindv != 0x18)) {
            continue;
        }
        if (func_8019F234_ovl7(i) != 0) {
            continue;
        }
        if (func_800F9828(0, i) == D_80197198_ovl3) {
            continue;
        }
        if (targets[0] == 0) {
            targets[0] = i;
            continue;
        }
        b = func_800F9828(0, i);
        b = (b < 0.0f) ? -b : b;
        {
            f32 a = func_800F9828(0, targets[0]);

            a = (a < 0.0f) ? -a : a;
            if (b < a) {
                targets[2] = targets[1];
                targets[1] = targets[0];
                targets[0] = i;
            } else if (targets[1] == 0) {
                targets[1] = i;
            } else {
                a = func_800F9828(0, targets[1]);
                a = (a < 0.0f) ? -a : a;
                if (b < a) {
                    targets[2] = targets[1];
                    targets[1] = i;
                } else if (targets[2] == 0) {
                    targets[2] = i;
                } else {
                    a = func_800F9828(0, targets[2]);
                    a = (a < 0.0f) ? -a : a;
                    if (b < a) {
                        targets[2] = i;
                    }
                }
            }
        }
    }
    if (((targets[0] == 0) || (targets[1] == 0) || (targets[2] == 0)) && (targets[0] != 0)) {
        if (targets[1] == 0) {
            targets[2] = targets[0];
            targets[1] = targets[0];
        } else if (targets[2] == 0) {
            targets[2] = targets[0];
        }
    }
    D_800E98E0[id] += 1;
    for (k = 0; (k < D_800E98E0[id]) && (k < 3); k++) {
        s32 t = func_801632B8_ovl3(7);

        if (t != -1) {
            D_800EC2E0[t].as_u32 = k;
            D_800E0D50[t] = D_800E0D50[id];
            D_800E1ED0[t - 112] = targets[k];
            if (D_800E6A10[id] == 1.0f) {
                D_800EC660[t] = D_801968F8_ovl3[k];
            } else {
                D_800EC660[t] = D_8019719C_ovl3 - D_801968F8_ovl3[k];
            }
        }
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_80166588_ovl3's charge-shot above, from
 * asm/nonmatchings/ovl3/plyeff/func_80166768_ovl3.s. Idles until the
 * charge state gKirbyState.unk44 reaches -1 (release); then scans enemy
 * tracks 14..59 for live kinds 0x17/0x18/0x1A that pass the ovl7 filter
 * func_8019F234_ovl7, insertion-sorts the three nearest by |horizontal
 * distance to Kirby| (func_800F9828(0, i); the 9999 sentinel means no
 * distance), back-fills missing slots with the nearest, and spawns
 * D_800E98E0[id]+1 (the reached charge stage) type-7 shots, giving each its
 * slot index, the parent, its target track in D_800E1ED0[t-112] and its
 * spread angle from D_801968F8 (mirrored against pi when facing left). */
void func_80166768_ovl3(s32 arg0) {
    extern f32 D_80197198_ovl3;
    extern f32 D_8019719C_ovl3;
    extern f32 D_801968F8_ovl3[];
    s32 id = omCurrentObj->objId;
    s32 targets[3];
    s32 i;
    s32 k;

    if (gKirbyState.abilityInUse == 0) {
        func_800B1900((u16) id);
        return;
    }
    if (gKirbyState.unk44 != -1) {
        return;
    }
    targets[0] = 0;
    targets[1] = 0;
    targets[2] = 0;
    for (i = 0xE; i != 0x3C; i++) {
        s32 kindv = D_800DD710[i];
        f32 b;

        if (kindv == -1) {
            continue;
        }
        if ((kindv != 0x17) && (kindv != 0x1A) && (kindv != 0x18)) {
            continue;
        }
        if (func_8019F234_ovl7(i) != 0) {
            continue;
        }
        if (func_800F9828(0, i) == D_80197198_ovl3) {
            continue;
        }
        if (targets[0] == 0) {
            targets[0] = i;
            continue;
        }
        b = func_800F9828(0, i);
        b = (b < 0.0f) ? -b : b;
        {
            f32 a = func_800F9828(0, targets[0]);

            a = (a < 0.0f) ? -a : a;
            if (b < a) {
                targets[2] = targets[1];
                targets[1] = targets[0];
                targets[0] = i;
            } else if (targets[1] == 0) {
                targets[1] = i;
            } else {
                a = func_800F9828(0, targets[1]);
                a = (a < 0.0f) ? -a : a;
                if (b < a) {
                    targets[2] = targets[1];
                    targets[1] = i;
                } else if (targets[2] == 0) {
                    targets[2] = i;
                } else {
                    a = func_800F9828(0, targets[2]);
                    a = (a < 0.0f) ? -a : a;
                    if (b < a) {
                        targets[2] = i;
                    }
                }
            }
        }
    }
    if (((targets[0] == 0) || (targets[1] == 0) || (targets[2] == 0)) && (targets[0] != 0)) {
        if (targets[1] == 0) {
            targets[2] = targets[0];
            targets[1] = targets[0];
        } else if (targets[2] == 0) {
            targets[2] = targets[0];
        }
    }
    D_800E98E0[id] += 1;
    for (k = 0; (k < D_800E98E0[id]) && (k < 3); k++) {
        s32 t = func_801632B8_ovl3(7);

        if (t != -1) {
            D_800EC2E0[t].as_u32 = k;
            D_800E0D50[t] = D_800E0D50[id];
            D_800E1ED0[t - 112] = targets[k];
            if (D_800E6A10[id] == 1.0f) {
                D_800EC660[t] = D_801968F8_ovl3[k];
            } else {
                D_800EC660[t] = D_8019719C_ovl3 - D_801968F8_ovl3[k];
            }
        }
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80166768_ovl3.s")
#endif

/* D_801971A0_ovl3 now emitted by this TU */
void func_80166E2C_ovl3(s32);

void func_80166BB4_ovl3(s32 arg0) {
    f32 temp;

    temp = 0.2f;
    D_800EA520[omCurrentObj->objId] = 0;
    D_800DF150[omCurrentObj->objId] = func_80166E2C_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        D_800E0650[omCurrentObj->objId] = 1;
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        D_800E0F10[omCurrentObj->objId] = 2;
        func_800A9864(0x20052, 0x22, 0x10);
        func_800AA154(0x202B9);
        D_800EA520[omCurrentObj->objId] =
            func_800A8100(1, 1, 0x24, D_800DFBD0[D_800E0D50[omCurrentObj->objId]][2]);
        func_800AA018(0x202BA);
        while (gKirbyState.unk44 == 0) {
            ohSleep(1);
        }
        func_800A22D4(D_800EA520[omCurrentObj->objId]);
        D_800EA520[omCurrentObj->objId] = 0;
        if (gKirbyState.unk44 == 5) {
            func_800AA154(0x202BB);
        }
        func_800B1900(((u16 *) omCurrentObj)[1]);
    } else {
        D_800E0F10[omCurrentObj->objId] = 8;
        func_800A9864(0x20053, 0x22, 0x10);
        curObjSleepForever();
    }
}

extern char D_801919D8_ovl3[];
extern s32 D_80195164_ovl3[];

void func_80166E2C_ovl3(s32 arg0) {
    Vector sp34;
    Vector sp28;

    func_800B2340(&sp34, (s32) (uintptr_t) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                  D_800E0D50[omCurrentObj->objId]);
    gEntitiesNextPosXArray[omCurrentObj->objId] = sp34.x;
    gEntitiesNextPosYArray[omCurrentObj->objId] = sp34.y;
    gEntitiesNextPosZArray[omCurrentObj->objId] = sp34.z;
    func_800B26D8(&sp28, (s32) (uintptr_t) D_800DFBD0[D_800E0D50[omCurrentObj->objId]][D_800E0F10[omCurrentObj->objId]],
                  D_800E0D50[omCurrentObj->objId]);
    gEntitiesAngleXArray[omCurrentObj->objId] = sp28.x;
    gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
    gEntitiesAngleZArray[omCurrentObj->objId] = sp28.z;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
        case 0:
            if (gKirbyState.unk44 != 0) {
                return;
            }
            if (gKirbyState.action == 0x1A) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_80111C4C(func_80111A04(D_801919D8_ovl3, omCurrentObj->objId));
                    gEntitiesAngleYArray[omCurrentObj->objId] =
                        gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
                    func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80195164_ovl3, 0,
                                       omCurrentObj->objId);
                    gEntitiesAngleYArray[omCurrentObj->objId] = sp28.y;
                } else {
                    D_80197DDC_ovl3[omCurrentObj->objId][0] = 0;
                }
                return;
            }
            if (D_800EA520[omCurrentObj->objId] != 0) {
                func_800A22D4(D_800EA520[omCurrentObj->objId]);
            }
            func_800B1900((u16) omCurrentObj->objId);
            return;
        case 5:
            if (gKirbyState.unk30 != 0) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_800A22D4(D_800EA520[omCurrentObj->objId]);
                }
                func_800B1900((u16) omCurrentObj->objId);
            }
            return;
        default:
            if (gKirbyState.abilityInUse == 0) {
                if (D_800EA520[omCurrentObj->objId] != 0) {
                    func_800A22D4(D_800EA520[omCurrentObj->objId]);
                }
                func_800B1900((u16) omCurrentObj->objId);
            }
            return;
    }
}

/* D_801971A4_ovl3 now emitted by this TU */
void func_800B5094(GObj *);
void func_80167290_ovl3(s32);

void func_8016714C_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 2;
    D_800DF150[omCurrentObj->objId] = func_80167290_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800A9864(0x20054, 0x22, 0x10);
    func_801230E8(0x202BF, 0x202C0, 1);
    curObjSleepForever();
}

void func_80167290_ovl3(s32 arg0) {
    if (D_8012E860 != 0) {
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    } else {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

void func_80167330_ovl3(s32 arg0) {
    s32 sp2C;
    s32 sp28;

    D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
    D_800DF150[omCurrentObj->objId] = func_80167578_ovl3;
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp28;
    sp28 = 0;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        D_800E0650[omCurrentObj->objId] = 1;
        func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
        func_800A9864(0x2005A, 0x22, 0x10);
        func_800AA154(0x202C9);
        break;
    case 1:
        func_800A9864(0x2005B, 0x22, 0x10);
        func_800AECC0(D_800E09D0[D_800EBBE0[D_800E0D50[omCurrentObj->objId]]]);
        func_800AED20(D_800E09D0[D_800EBBE0[D_800E0D50[omCurrentObj->objId]]]);
        func_800A77E8(0x3F, &sp28, &sp2C);
        func_801230E8(0x202CB, 0x202CC, 1);
        func_800A7870((void **) &sp28, (u16 *) &sp2C);
        D_800EA520[D_800E0D50[omCurrentObj->objId]]++;
        break;
    }
    func_800B1900((u16) omCurrentObj->objId);
}

typedef struct Unk800E9FE0 {
    void *unk0;
    u16 unk4;
} Unk800E9FE0;

extern char D_80192170_ovl3[];
extern s32 D_80196154_ovl3[];
extern f32 D_80198540_ovl3[][8];

void func_80167578_ovl3(s32 arg0) {
    Unk800E9FE0 *sound;

    if (D_8012E860 == 0) {
        sound = D_800E9FE0[omCurrentObj->objId].as_ptr;
        if (sound->unk0 != NULL) {
            func_800A7870(&sound->unk0, &sound->unk4);
        }
        func_800B1900(omCurrentObj->objId & 0xFFFF);
    } else if (D_800EC2E0[omCurrentObj->objId].as_s32 == 0) {
        gEntitiesAngleYArray[omCurrentObj->objId] = 0.0f;
        func_80111C4C(func_80111A04(D_80192170_ovl3, omCurrentObj->objId));
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_80196154_ovl3, 0, omCurrentObj->objId);
    }
}

/* D_801971A8_ovl3 now emitted by this TU */
void func_80167800_ovl3(s32);

void func_8016769C_ovl3(s32 arg0) {
    f32 temp = 0.2f;

    D_800DEF90[omCurrentObj->objId] = func_800B5064;
    D_800E0F10[omCurrentObj->objId] = 2;
    D_800DF150[omCurrentObj->objId] = func_80167800_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2005C, 0x22, 0x10);
    D_800EA520[omCurrentObj->objId] = func_800A8234(2, 1, 0x15);
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AA018(0x202CD);
    curObjSleepForever();
}

typedef struct Unk80167800 {
    u32 unk0;
    f32 unk4;
    f32 unk8;
    f32 unkC;
} Unk80167800;

extern char D_80191EE4_ovl3[];
extern s32 D_801962D8_ovl3[];

void func_80167800_ovl3(s32 arg0) {
    GObj *obj;

    if ((gKirbyState.abilityInUse == 0) || ((gKirbyState.unk44 != 4) && (gKirbyState.unk44 != 5))) {
        func_800A22D4(D_800EA520[omCurrentObj->objId]);
        func_800B1900(((u16 *) omCurrentObj)[1]);
    } else {
        obj = (GObj *) D_800EA520[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unk4 = gEntitiesNextPosXArray[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unk8 = gEntitiesNextPosYArray[omCurrentObj->objId];
        ((Unk80167800 *) obj->unk4C)->unkC = gEntitiesNextPosZArray[omCurrentObj->objId];
        gEntitiesAngleYArray[omCurrentObj->objId] = gEntitiesAngleYArray[D_800E0D50[omCurrentObj->objId]];
        func_80111C4C(func_80111A04(D_80191EE4_ovl3, omCurrentObj->objId));
        func_80155D50_ovl3(D_80198540_ovl3[omCurrentObj->objId - 60], (s32) D_801962D8_ovl3, 0, omCurrentObj->objId);
    }
}

/* D_801971AC_ovl3 now emitted by this TU */
void func_80167B48_ovl3(s32);

void func_80167974_ovl3(s32 arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    temp = 0.2f;
    D_800DF150[omCurrentObj->objId] = func_80167B48_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    if (2.0f == D_800E09D0[omCurrentObj->objId]) {
        func_800A9864(0x2005D, 0x22, 0x10);
        play_sound(0x11);
        func_801230E8(0x202CF, 0x202D0, 1);
    } else {
        func_800A9864(0x2005E, 0x22, 0x10);
        func_801230E8(0x202D2, 0x202D3, 0);
        ohSleep(5);
        play_sound(0x11);
        func_800AF27C();
    }
    func_800B1900(((u16 *) omCurrentObj)[1]);
}

void func_80167B48_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

/* D_801971B0_ovl3 now emitted by this TU */
void func_80167CCC_ovl3(s32);

void func_80167B80_ovl3(s32 arg0) {
    f32 temp;

    D_800DEF90[omCurrentObj->objId] = func_800B5094;
    D_800E0F10[omCurrentObj->objId] = 0xE;
    func_800AECC0(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    func_800AED20(D_800E09D0[D_800E0D50[omCurrentObj->objId]]);
    temp = 0.2f;
    D_800DF150[omCurrentObj->objId] = func_80167CCC_ovl3;
    gEntitiesScaleXArray[omCurrentObj->objId] = temp;
    gEntitiesScaleYArray[omCurrentObj->objId] = temp;
    gEntitiesScaleZArray[omCurrentObj->objId] = temp;
    func_800A9864(0x2005F, 0x22, 0x10);
    func_800AA154(0x202D5);
    func_800AA018(0x202D4);
    curObjSleepForever();
}

void func_80167CCC_ovl3(s32 arg0) {
    if (D_8012E860 == 0) {
        func_800B1900(((u16 *) omCurrentObj)[1]);
    }
}

/* D_801971B4_ovl3 now emitted by this TU */
/* D_801971B8_ovl3 now emitted by this TU */
extern f32 D_800D7238;
void func_80167F54_ovl3(s32);

void func_80167D04_ovl3(s32 arg0) {
    s32 sp2C;
    s32 sp28;

    D_800DF150[omCurrentObj->objId] = func_80167F54_ovl3;
    D_800E98E0[omCurrentObj->objId] = 0;
    D_800E9FE0[omCurrentObj->objId].as_ptr = &sp28;
    sp28 = 0;
    switch (D_800EC2E0[omCurrentObj->objId].as_s32) {
    case 0:
        D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
        func_800A9864(0x20043, 0x22, 0x10);
        func_800AA018(0x20295);
        curObjSleepForever();
    case 1:
        D_800DEF90[omCurrentObj->objId] = func_800B4B9C;
        func_800A77E8(0x4E, &sp28, &sp2C);
        func_800A9864(0x20058, 0x22, 0x10);
        func_800AA018(0x202C5);
        curObjSleepForever();
    case 2:
        D_800EA6E0[omCurrentObj->objId] = 65535.0f;
        D_800DEF90[omCurrentObj->objId] = func_800B5064;
        D_800E0F10[omCurrentObj->objId] = 2;
        D_800D7238 = D_800EC660[omCurrentObj->objId] * 0.2f;
        gEntitiesScaleXArray[omCurrentObj->objId] = D_800D7238;
        gEntitiesScaleYArray[omCurrentObj->objId] = D_800D7238;
        gEntitiesScaleZArray[omCurrentObj->objId] = D_800D7238;
        func_800BB468(6, 0x10);
        play_sound(0x4F);
        func_800A9864(0x20059, 0x22, 0x10);
        func_801230E8(0x202C7, 0x202C8, 1);
        func_800B1900(((u16 *) omCurrentObj)[1]);
        break;
    }
}

#ifdef MIPS_TO_C
/* FACTORY: 290/300 [was noted 10/300], whole-function callee-saved permutation (same floor class documented across this cluster). Two real fixes over the PORT arm: (1) the kind-1 prim-color write is a raw offset chain (D_800DFBD0[id][k]+0xC -> +0x80 -> +0x58, ONE u32 sw) matched straight off the asm rather than the PORT arm's ColorPack/MObj field-path guess, since struct DObj's own field at 0xC is ->prev, not this chain -- flagged unverified rather than given wrong names; (2) inlines the real N64 sound-pair release (func_800A7870) instead of the PC-only pc_sndpair_release wrapper. Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 290 of 300 words differ (96%). A
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

/* PORT: service routine for func_80167D04_ovl3's shot above, from
 * asm/nonmatchings/ovl3/plyeff/func_80167F54_ovl3.s. Three kinds: kind 0
 * tracks the parent and runs hit record D_8019570C while the charge state
 * is idle; kind 1 blinks the prim color of DObjs [3]/[5]/[7] between the
 * two words at D_80196904/D_80196908 each frame (bytes stored r,g,b,a to
 * match the PORT ColorPack layout), scales DObj [1] by the charge scale
 * gKirbyState.unk40 and runs record D_80195600 with break lines
 * D_80195500; kind 2 aims the model once at the carry target in
 * D_800E1ED0[id-112] and replays anim script D_80191C68 scaled by DObj
 * [2]'s Y scale. Any other kind, or the ability ending, releases the
 * looping sound pair parked in D_800E9FE0 and destroys the track. */
void func_80167F54_ovl3(s32 arg0) {
    extern char D_80191CAC_ovl3[];
    extern char D_80191C68_ovl3[];
    extern s32 D_8019570C_ovl3[];
    extern s32 D_80195600_ovl3[];
    extern f32 D_80195500_ovl3[][4];
    extern s32 D_80196904_ovl3[];
    extern s32 D_80196908_ovl3[];
    extern f32 D_80198540_ovl3[][8];
    extern f32 D_80198700_ovl3[][4];
    s32 id = omCurrentObj->objId;
    u32 *pair = (u32 *) D_800E9FE0[id].as_ptr;

    if (gKirbyState.abilityInUse != 0) {
        switch (D_800EC2E0[id].as_u32) {
            case 0:
                if (gKirbyState.unk44 == 0) {
                    gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                    func_80111C4C(func_80111A04(D_80191CAC_ovl3, id));
                    func_80155D50_ovl3(D_80198540_ovl3[id - 60],
                                       (s32) (uintptr_t) D_8019570C_ovl3, 0, id);
                    return;
                }
                break;
            case 1: {
                /* Raw offset chain read straight off the asm (0xC, 0x80,
                 * 0x58) -- NOT struct DObj's own field at 0xC (that's
                 * ->prev), so D_800DFBD0[id][k] here is not a plain DObj*
                 * the way it is elsewhere in this file. Left as an
                 * unverified byte-offset walk rather than guessing wrong
                 * field names; the ROM stores the packed u32 in one `sw`,
                 * not four `sb`s like the PORT arm's ColorPack view. */
                u32 col;
                s32 k;

                D_800E98E0[id] ^= 1;
                col = (u32) ((D_800E98E0[id] == 0) ? D_80196904_ovl3[0] : D_80196908_ovl3[0]);
                for (k = 3; k <= 7; k += 2) {
                    u8 *p1 = *(u8 **) ((u8 *) D_800DFBD0[id][k] + 0xC);
                    u8 *p2 = *(u8 **) (p1 + 0x80);

                    *(u32 *) (p2 + 0x58) = col;
                }
                D_800DFBD0[id][1]->scale.v.x = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.y = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.z = gKirbyState.unk40;
                gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                func_80152124_ovl3(D_80195500_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40,
                                   20.0f, 0.0f);
                func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80195600_ovl3,
                                   0, id);
                gEntitiesAngleYArray[id] = 0.0f;
                return;
            }
            case 2: {
                struct DObj *d2;

                if (D_800E98E0[id] == 0) {
                    s32 target = D_800E1ED0[id - 112];
                    f32 dx = gEntitiesNextPosXArray[target] - gEntitiesNextPosXArray[id];
                    f32 dy = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                    f32 dz = gEntitiesNextPosZArray[target] - gEntitiesNextPosZArray[id];

                    gEntitiesAngleYArray[id] = atan2f(dx, dz);
                    gEntitiesAngleXArray[id] = -atan2f(dy, sqrtf((dx * dx) + (dz * dz)));
                    gEntitiesAngleZArray[id] = 0.0f;
                    D_800E98E0[id] += 1;
                }
                d2 = D_800DFBD0[id][2];
                func_8016854C_ovl3((s32) (uintptr_t) D_80191C68_ovl3, (s32) (uintptr_t) d2,
                                   d2->scale.v.y);
                return;
            }
            default:
                break;
        }
    }
    if (pair != NULL && pair[0] != 0) {
        void *handle = (void *) pair[0];
        u16 sid = *(u16 *) (pair + 1);

        func_800A7870(&handle, &sid);
        pair[0] = 0;
        *(u16 *) (pair + 1) = 0;
    }
    func_800B1900((u16) id);
}
#elif defined(PORT)
/* PORT: service routine for func_80167D04_ovl3's shot above, from
 * asm/nonmatchings/ovl3/plyeff/func_80167F54_ovl3.s. Three kinds: kind 0
 * tracks the parent and runs hit record D_8019570C while the charge state
 * is idle; kind 1 blinks the prim color of DObjs [3]/[5]/[7] between the
 * two words at D_80196904/D_80196908 each frame (bytes stored r,g,b,a to
 * match the PORT ColorPack layout), scales DObj [1] by the charge scale
 * gKirbyState.unk40 and runs record D_80195600 with break lines
 * D_80195500; kind 2 aims the model once at the carry target in
 * D_800E1ED0[id-112] and replays anim script D_80191C68 scaled by DObj
 * [2]'s Y scale. Any other kind, or the ability ending, releases the
 * looping sound pair parked in D_800E9FE0 and destroys the track. */
void func_80167F54_ovl3(s32 arg0) {
    extern char D_80191CAC_ovl3[];
    extern char D_80191C68_ovl3[];
    extern s32 D_8019570C_ovl3[];
    extern s32 D_80195600_ovl3[];
    extern f32 D_80195500_ovl3[][4];
    extern s32 D_80196904_ovl3[];
    extern s32 D_80196908_ovl3[];
    extern f32 D_80198540_ovl3[][8];
    extern f32 D_80198700_ovl3[][4];
    s32 id = omCurrentObj->objId;
    void *pair = D_800E9FE0[id].as_ptr;

    if (gKirbyState.abilityInUse != 0) {
        switch (D_800EC2E0[id].as_u32) {
            case 0:
                if (gKirbyState.unk44 == 0) {
                    gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                    func_80111C4C(func_80111A04(D_80191CAC_ovl3, id));
                    func_80155D50_ovl3(D_80198540_ovl3[id - 60],
                                       (s32) (uintptr_t) D_8019570C_ovl3, 0, id);
                    return;
                }
                break;
            case 1: {
                u32 col;
                s32 k;

                D_800E98E0[id] ^= 1;
                col = (u32) ((D_800E98E0[id] == 0) ? D_80196904_ovl3[0] : D_80196908_ovl3[0]);
                for (k = 3; k <= 7; k += 2) {
                    struct MObj *m = D_800DFBD0[id][k]->mobjList;

                    m->texture.primColor.color.r = (u8) (col >> 24);
                    m->texture.primColor.color.g = (u8) (col >> 16);
                    m->texture.primColor.color.b = (u8) (col >> 8);
                    m->texture.primColor.color.a = (u8) col;
                }
                D_800DFBD0[id][1]->scale.v.x = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.y = gKirbyState.unk40;
                D_800DFBD0[id][1]->scale.v.z = gKirbyState.unk40;
                gEntitiesAngleYArray[id] = D_800E17D0[D_800E0D50[id]];
                func_80152124_ovl3(D_80195500_ovl3, D_80198700_ovl3, 0x10, gKirbyState.unk40,
                                   20.0f, 0.0f);
                func_80155D50_ovl3(D_80198540_ovl3[id - 60], (s32) (uintptr_t) D_80195600_ovl3,
                                   0, id);
                gEntitiesAngleYArray[id] = 0.0f;
                return;
            }
            case 2: {
                struct DObj *d2;

                if (D_800E98E0[id] == 0) {
                    s32 target = D_800E1ED0[id - 112];
                    f32 dx = gEntitiesNextPosXArray[target] - gEntitiesNextPosXArray[id];
                    f32 dy = gEntitiesNextPosYArray[target] - gEntitiesNextPosYArray[id];
                    f32 dz = gEntitiesNextPosZArray[target] - gEntitiesNextPosZArray[id];

                    gEntitiesAngleYArray[id] = atan2f(dx, dz);
                    gEntitiesAngleXArray[id] = -atan2f(dy, sqrtf((dx * dx) + (dz * dz)));
                    gEntitiesAngleZArray[id] = 0.0f;
                    D_800E98E0[id] += 1;
                }
                d2 = D_800DFBD0[id][2];
                func_8016854C_ovl3((s32) (uintptr_t) D_80191C68_ovl3, (s32) (uintptr_t) d2,
                                   d2->scale.v.y);
                return;
            }
            default:
                break;
        }
    }
    if (pair != NULL && *(u32 *) pair != 0) {
        pc_sndpair_release(pair);
    }
    func_800B1900((u16) id);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_80167F54_ovl3.s")
#endif

typedef struct Unk80168408 {
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
} Unk80168408;

typedef struct Unk80168408Hdr {
    u8 pad0[0x1C];
    s32 unk1C;
    Unk80168408 *unk20;
} Unk80168408Hdr;

s32 func_80168408_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    Unk80168408Hdr *hdr;
    Unk80168408 *p;
    s32 i;

    if (arg2 == 0.0f) {
        return 0;
    }
    hdr = (Unk80168408Hdr *) func_80111A04(arg0, omCurrentObj->objId);
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
    return (s32) hdr;
}

s32 func_8016854C_ovl3(s32 arg0, s32 arg1, f32 arg2) {
    s32 temp = func_80168408_ovl3(arg0, arg1, arg2);

    if (temp != 0) {
        func_80111C4C(temp);
    }
    return temp;
}

#ifdef MIPS_TO_C
/* FACTORY: 908/910 [was noted 2/910], whole-function callee-saved permutation plus a real structural gap: the ROM's frame (-0x168) is far larger than this draft's (-0x20), meaning the ROM inlines the light pre/post setup at each of the 8 switch cases rather than calling shared helpers -- pc_shot_draw_lights_pre/post would need to be inlined by hand at each case for a tighter match. Queued for the permuter. */
/* DIAGNOSIS CONTRADICTED BY THE MEASUREMENT, 2026-08-25. The line above calls
   this a register/permutation floor; 908 of 910 words differ (99%). A
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

/* PORT: the second shot render dispatcher, from asm/nonmatchings/ovl3/
 * plyshot/func_8016858C_ovl3.s (jump table jtbl_801971BC_ovl3). Identical in
 * shape to func_8016264C_ovl3 above -- same render-kind cases 19..30, same
 * segment-4 setup and dynamic-light block per display list head -- with one
 * difference: when the object's level slot D_800E5F90 is -1 the dynamic
 * light color is sampled from the PARENT track (D_800E0D50) instead of the
 * object itself. */
static void pc_shot_draw_lights_pre(GObj *g, s32 heads) {
    s32 id = g->objId;

    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    if (heads > 1) {
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
    }
    if (D_800E0650[id] != 0) {
        if (D_800E5F90[id] == -1) {
            func_800F90C0(D_800E0D50[id], gDynamicBuffer1.top);
        } else {
            func_800F90C0(id, gDynamicBuffer1.top);
        }
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
        if (heads > 1) {
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
        }
        gDynamicBuffer1.top += 0x18;
    }
}

static void pc_shot_draw_lights_post(s32 heads) {
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
    if (heads > 1) {
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
    }
}

void func_8016858C_ovl3(GObj *g) {
    if (!(D_800DD8D0[g->objId] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB120(g);
                pc_shot_draw_lights_post(1);
                break;
            case 21:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB1F0(g);
                pc_shot_draw_lights_post(1);
                break;
            case 23:
            case 25:
                pc_shot_draw_lights_pre(g, 1);
                renderDrawDObjFromGObj(g);
                pc_shot_draw_lights_post(1);
                break;
            case 27:
            case 29:
                pc_shot_draw_lights_pre(g, 1);
                func_8001585C(g);
                pc_shot_draw_lights_post(1);
                break;
            case 20:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB174(g);
                pc_shot_draw_lights_post(2);
                break;
            case 22:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB244(g);
                pc_shot_draw_lights_post(2);
                break;
            case 24:
            case 26:
                pc_shot_draw_lights_pre(g, 2);
                renderDrawObject_TypeD(g);
                pc_shot_draw_lights_post(2);
                break;
            case 28:
            case 30:
                pc_shot_draw_lights_pre(g, 2);
                func_80015BCC(g);
                pc_shot_draw_lights_post(2);
                break;
        }
    }
}
#elif defined(PORT)
/* PORT: the second shot render dispatcher, from asm/nonmatchings/ovl3/
 * plyshot/func_8016858C_ovl3.s (jump table jtbl_801971BC_ovl3). Identical in
 * shape to func_8016264C_ovl3 above -- same render-kind cases 19..30, same
 * segment-4 setup and dynamic-light block per display list head -- with one
 * difference: when the object's level slot D_800E5F90 is -1 the dynamic
 * light color is sampled from the PARENT track (D_800E0D50) instead of the
 * object itself. */
static void pc_shot_draw_lights_pre(GObj *g, s32 heads) {
    s32 id = g->objId;

    gSPSegment(gDisplayListHeads[0]++, 4, gSegment4StartArray[id]);
    if (heads > 1) {
        gSPSegment(gDisplayListHeads[1]++, 4, gSegment4StartArray[id]);
    }
    if (D_800E0650[id] != 0) {
        if (D_800E5F90[id] == -1) {
            func_800F90C0(D_800E0D50[id], gDynamicBuffer1.top);
        } else {
            func_800F90C0(id, gDynamicBuffer1.top);
        }
        gSPNumLights(gDisplayListHeads[0]++, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top + 8, 1);
        gSPLight(gDisplayListHeads[0]++, gDynamicBuffer1.top, 2);
        if (heads > 1) {
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top + 8, 1);
            gSPLight(gDisplayListHeads[1]++, gDynamicBuffer1.top, 2);
        }
        gDynamicBuffer1.top += 0x18;
    }
}

static void pc_shot_draw_lights_post(s32 heads) {
    gSPNumLights(gDisplayListHeads[0]++, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE550, 1);
    gSPLight(gDisplayListHeads[0]++, &D_800BE548, 2);
    if (heads > 1) {
        gSPNumLights(gDisplayListHeads[1]++, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE550, 1);
        gSPLight(gDisplayListHeads[1]++, &D_800BE548, 2);
    }
}

void func_8016858C_ovl3(GObj *g) {
    if (!(D_800DD8D0[g->objId] & 0x40)) {
        switch (func_800AB0F4(g)) {
            case 19:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB120(g);
                pc_shot_draw_lights_post(1);
                break;
            case 21:
                pc_shot_draw_lights_pre(g, 1);
                func_800AB1F0(g);
                pc_shot_draw_lights_post(1);
                break;
            case 23:
            case 25:
                pc_shot_draw_lights_pre(g, 1);
                renderDrawDObjFromGObj(g);
                pc_shot_draw_lights_post(1);
                break;
            case 27:
            case 29:
                pc_shot_draw_lights_pre(g, 1);
                func_8001585C(g);
                pc_shot_draw_lights_post(1);
                break;
            case 20:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB174(g);
                pc_shot_draw_lights_post(2);
                break;
            case 22:
                pc_shot_draw_lights_pre(g, 2);
                func_800AB244(g);
                pc_shot_draw_lights_post(2);
                break;
            case 24:
            case 26:
                pc_shot_draw_lights_pre(g, 2);
                renderDrawObject_TypeD(g);
                pc_shot_draw_lights_post(2);
                break;
            case 28:
            case 30:
                pc_shot_draw_lights_pre(g, 2);
                func_80015BCC(g);
                pc_shot_draw_lights_post(2);
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/ovl3/plyeff/func_8016858C_ovl3.s")
#endif

/* D_80197120_ovl3 now emitted by this TU */

s32 func_801693C4_ovl3(s32 arg0) {
    s32 temp = request_track_general(0x15, 0x3C, 0x50);

    if (temp != -1) {
        gEntityFuncListIDArray[temp] = arg0;
    } else {
        utilPrintf("Player Effect Request Error![plyeff.cc]\n");
    }
    return temp;
}

